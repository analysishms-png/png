
Public Sub Proc_260_0_F04FC8(arg_C, arg_10) 'F04FC8
  'Data Table: 43FECC
  Dim unk_43FED1 As Connection15
  Dim var_90 As Recordset15
  Dim var_11C As Fields15
  Dim var_8C As Double
  loc_F04F29: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F04F48: unk_43FED1.Execute CStr(var_118 & var_B4 & " Order by Appdate Desc"), -1, var_11C
  loc_F04F53: Set var_90 = var_11C
  loc_F04F81: If (var_90.RecordCount > 0) Then
  loc_F04FAF:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F04FBF: Else
  loc_F04FC2:   var_8C = CDbl(0)
  loc_F04FC5: End If
  loc_F04FC5: Result var_8C End Sub 'Double
End Sub

Public Sub Proc_260_1_10A4640(arg_C, arg_10, arg_14) '10A4640
  'Data Table: 43FECC
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10A439B: var_88 = vbNullString
  loc_10A43B2: arg_C = CStr(Trim(arg_C))
  loc_10A43BE: var_8A = CInt(Len(arg_C))
  loc_10A43C4: var_C0 = arg_10
  loc_10A43CF: If (var_C0 = "A") Then
  loc_10A43EE:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10A43F2:   var_9C = arg_C 'Variant
  loc_10A4448:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10A445C:   var_110 = (0 + Chr(&H1B))
  loc_10A4465:   var_120 = (var_110 + "G")
  loc_10A4479:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10A4483:   var_150 = (var_140 + CVar(arg_C))
  loc_10A4497:   var_170 = (var_150 + Chr(&H1B))
  loc_10A44A0:   var_190 = (var_170 + "H")
  loc_10A44A5:   var_88 = CStr(var_190)
  loc_10A44C6: Else
  loc_10A44CE:   If (var_C0 = "D") Then
  loc_10A44DC:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10A44ED:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10A44F1:     var_9C = "G" 'Variant
  loc_10A4547:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10A455B:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10A4565:     var_120 = (var_110 + CVar(arg_C))
  loc_10A456A:     var_88 = CStr(var_120)
  loc_10A457F:   Else
  loc_10A4587:     If (var_C0 = "E") Then
  loc_10A4598:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10A459C:       var_9C = CVar(arg_C) 'Variant
  loc_10A45F2:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10A4606:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10A4610:       var_120 = (var_110 + CVar(arg_C))
  loc_10A4624:       var_140 = (var_120 + Chr(&H12))
  loc_10A4629:       var_88 = CStr(var_140)
  loc_10A463F:     End If
  loc_10A463F:   End If
  loc_10A463F: End If
  loc_10A463F: Exit Sub
End Sub

Public Sub Proc_260_2_136F49C(arg_C, arg_10, arg_14) '136F49C
  'Data Table: 43FECC
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_43FED1 As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_136EC8D: var_90 = vbNullString
  loc_136EC93: var_94 = vbNullString
  loc_136EC99: var_98 = vbNullString
  loc_136EC9F: var_9C = vbNullString
  loc_136ECA5: var_A0 = vbNullString
  loc_136ECAB: var_A4 = vbNullString
  loc_136ECB6: If (MemVar_1F953C4 = "Y") Then
  loc_136ECC0:   var_F0 = vbNullString & "DATE "
  loc_136ECF1:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_136ED04: End If
  loc_136ED0C: If (MemVar_1F953C8 = "Y") Then
  loc_136ED1E:   var_DC = "dd/MM/yy"
  loc_136ED70:   var_174 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_DC)))), 0))
  loc_136ED97:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_136ED9F:   var_1E4 = (var_174 - Len(var_1C4))
  loc_136EDB0:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_136EDB9:   var_234 = (var_214 + " PAGE NO ")
  loc_136EDDB:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_136EDE0:   var_8C = CStr(var_274)
  loc_136EE0D: End If
  loc_136EE1D: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R  Where R.CODE='" & Me(8) & "'"
  loc_136EE39: unk_43FED1.Execute var_AC, var_DC, -1
  loc_136EE44: Set var_A8 = var_278
  loc_136EE5B: If (MemVar_1F953CC = "K") Then
  loc_136EE70:   var_278 = var_A8.Fields
  loc_136EE9A:   If (var_278.Item("COMPANYTITLE").Value = "Y") Then
  loc_136EEA7:     If (Len(MemVar_1F95130) <= &H23) Then
  loc_136EED3:       var_90 = 1 & Proc_260_1_10A4640(MemVar_1F95130, "D", CInt(Val(CStr(arg_14))), var_90, var_278)
  loc_136EEE2:     Else
  loc_136EEF8:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_136EF0C:       var_144 = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_136EF20:       var_174 = (0 + Chr(&HF))
  loc_136EF2A:       var_194 = (var_174 + CVar(MemVar_1F95130))
  loc_136EF3E:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_136EF43:       var_90 = CStr(var_1C4)
  loc_136EF5B:     End If
  loc_136EF5B:   End If
  loc_136EF97:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_136EFDA:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_136F032:       var_94 = 1 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(Val(CStr(arg_14))), var_94)
  loc_136F04D:     Else
  loc_136F063:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_136F077:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_136F08B:       var_174 = (0 + Chr(&HF))
  loc_136F0B9:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_136F0CD:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_136F0D2:       var_94 = CStr(Len(Chr(&H12)))
  loc_136F0F3:     End If
  loc_136F0F3:   End If
  loc_136F107:   If (var_A8.RecordCount > 0) Then
  loc_136F143:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header1")), 1) <> vbNullString) Then
  loc_136F19B:       var_98 = var_98 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136F1B3:     End If
  loc_136F1EC:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header2"))) <> vbNullString) Then
  loc_136F244:       var_9C = var_9C & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136F25C:     End If
  loc_136F295:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header3"))) <> vbNullString) Then
  loc_136F2ED:       var_A0 = var_A0 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header3").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136F305:     End If
  loc_136F33E:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header4"))) <> vbNullString) Then
  loc_136F396:       var_A4 = var_A4 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header4").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136F3AE:     End If
  loc_136F3AE:   End If
  loc_136F3AE: End If
  loc_136F3B8: If (Len(var_8C) > 0) Then
  loc_136F3C0:   Print 1, var_8C
  loc_136F3CC:   arg_10 = (arg_10 + 1)
  loc_136F3CF: End If
  loc_136F3D9: If (Len(var_90) > 0) Then
  loc_136F3E1:   Print 1, var_90
  loc_136F3ED:   arg_10 = (arg_10 + 1)
  loc_136F3F0: End If
  loc_136F3FA: If (Len(var_94) > 0) Then
  loc_136F402:   Print 1, var_94
  loc_136F40E:   arg_10 = (arg_10 + 1)
  loc_136F411: End If
  loc_136F41B: If (Len(var_98) > 0) Then
  loc_136F423:   Print 1, var_98
  loc_136F42F:   arg_10 = (arg_10 + 1)
  loc_136F432: End If
  loc_136F43C: If (Len(var_9C) > 0) Then
  loc_136F444:   Print 1, var_9C
  loc_136F450:   arg_10 = (arg_10 + 1)
  loc_136F453: End If
  loc_136F45D: If (Len(var_A0) > 0) Then
  loc_136F465:   Print 1, var_A0
  loc_136F471:   arg_10 = (arg_10 + 1)
  loc_136F474: End If
  loc_136F47E: If (Len(var_A4) > 0) Then
  loc_136F486:   Print 1, var_A4
  loc_136F492:   arg_10 = (arg_10 + 1)
  loc_136F495: End If
  loc_136F49B: Result arg_10 End Sub 'Integer
End Sub

Public Sub Proc_260_3_136E304(arg_C, arg_10, arg_14, arg_18) '136E304
  'Data Table: 43FECC
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_43FED1 As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_136DAF5: var_90 = vbNullString
  loc_136DAFB: var_94 = vbNullString
  loc_136DB01: var_98 = vbNullString
  loc_136DB07: var_9C = vbNullString
  loc_136DB0D: var_A0 = vbNullString
  loc_136DB13: var_A4 = vbNullString
  loc_136DB1E: If (MemVar_1F953C4 = "Y") Then
  loc_136DB28:   var_F0 = vbNullString & "DATE "
  loc_136DB59:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_136DB6C: End If
  loc_136DB74: If (MemVar_1F953C8 = "Y") Then
  loc_136DB86:   var_DC = "dd/MM/yy"
  loc_136DBD8:   var_174 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_DC)))), 0))
  loc_136DBFF:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_136DC07:   var_1E4 = (var_174 - Len(var_1C4))
  loc_136DC18:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_136DC21:   var_234 = (var_214 + " PAGE NO ")
  loc_136DC43:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_136DC48:   var_8C = CStr(var_274)
  loc_136DC75: End If
  loc_136DC83: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R  Where R.CODE='" & arg_18 & "'"
  loc_136DC9F: unk_43FED1.Execute var_AC, var_DC, -1
  loc_136DCAA: Set var_A8 = var_278
  loc_136DCC1: If (MemVar_1F953CC = "K") Then
  loc_136DCD6:   var_278 = var_A8.Fields
  loc_136DD00:   If (var_278.Item("COMPANYTITLE").Value = "Y") Then
  loc_136DD0D:     If (Len(MemVar_1F95130) <= &H23) Then
  loc_136DD39:       var_90 = 1 & Proc_260_1_10A4640(MemVar_1F95130, "D", CInt(Val(CStr(arg_14))), var_90, var_278)
  loc_136DD48:     Else
  loc_136DD5E:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_136DD72:       var_144 = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_136DD86:       var_174 = (0 + Chr(&HF))
  loc_136DD90:       var_194 = (var_174 + CVar(MemVar_1F95130))
  loc_136DDA4:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_136DDA9:       var_90 = CStr(var_1C4)
  loc_136DDC1:     End If
  loc_136DDC1:   End If
  loc_136DDFD:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_136DE40:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_136DE98:       var_94 = 1 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(Val(CStr(arg_14))), var_94)
  loc_136DEB3:     Else
  loc_136DEC9:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_136DEDD:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_136DEF1:       var_174 = (0 + Chr(&HF))
  loc_136DF1F:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_136DF33:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_136DF38:       var_94 = CStr(Len(Chr(&H12)))
  loc_136DF59:     End If
  loc_136DF59:   End If
  loc_136DF6D:   If (var_A8.RecordCount > 0) Then
  loc_136DFA9:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header1")), 1) <> vbNullString) Then
  loc_136E001:       var_98 = var_98 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136E019:     End If
  loc_136E052:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header2"))) <> vbNullString) Then
  loc_136E0AA:       var_9C = var_9C & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136E0C2:     End If
  loc_136E0FB:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header3"))) <> vbNullString) Then
  loc_136E153:       var_A0 = var_A0 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header3").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136E16B:     End If
  loc_136E1A4:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header4"))) <> vbNullString) Then
  loc_136E1FC:       var_A4 = var_A4 & Proc_260_1_10A4640(CStr(var_A8.Fields.Item("Header4").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136E214:     End If
  loc_136E214:   End If
  loc_136E214: End If
  loc_136E21E: If (Len(var_8C) > 0) Then
  loc_136E226:   Print 1, var_8C
  loc_136E232:   arg_10 = (arg_10 + 1)
  loc_136E235: End If
  loc_136E23F: If (Len(var_90) > 0) Then
  loc_136E247:   Print 1, var_90
  loc_136E253:   arg_10 = (arg_10 + 1)
  loc_136E256: End If
  loc_136E260: If (Len(var_94) > 0) Then
  loc_136E268:   Print 1, var_94
  loc_136E274:   arg_10 = (arg_10 + 1)
  loc_136E277: End If
  loc_136E281: If (Len(var_98) > 0) Then
  loc_136E289:   Print 1, var_98
  loc_136E295:   arg_10 = (arg_10 + 1)
  loc_136E298: End If
  loc_136E2A2: If (Len(var_9C) > 0) Then
  loc_136E2AA:   Print 1, var_9C
  loc_136E2B6:   arg_10 = (arg_10 + 1)
  loc_136E2B9: End If
  loc_136E2C3: If (Len(var_A0) > 0) Then
  loc_136E2CB:   Print 1, var_A0
  loc_136E2D7:   arg_10 = (arg_10 + 1)
  loc_136E2DA: End If
  loc_136E2E4: If (Len(var_A4) > 0) Then
  loc_136E2EC:   Print 1, var_A4
  loc_136E2F8:   arg_10 = (arg_10 + 1)
  loc_136E2FB: End If
  loc_136E301: Result arg_10 End Sub 'Integer
End Sub

Public Sub Proc_260_4_18335A4
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_108 As String
  Dim var_10C As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_120 As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_184 As Variant
  Dim var_164 As String
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_220 As Variant
  Dim var_2B0 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_194 As Variant
  Dim var_128 As Variant
  Dim var_318 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_258 As Variant
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_4DC As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_338 As Variant
  loc_183123C: On Error Goto loc_183359C
  loc_183124A: MemVar_629D24.Filter = "ModType='POS'"
  loc_1831265: If (MemVar_629D24.RecordCount > 0) Then
  loc_183126B:   MemVar_1F953C4 = "N"
  loc_1831272:   MemVar_1F953C8 = "N"
  loc_1831279:   MemVar_1F953CC = "K"
  loc_18312A3:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_18312AE:   Set var_EC = var_120
  loc_18312C7:   var_108 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_18312CE:   var_8C = var_108 & "'"
  loc_18312DB:   var_108 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_18312EB:   var_90 = var_108 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_183130C:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_183131D:   var_108 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_183132D:   var_98 = var_108 & Me(12) & "' ORDER BY I.Kitchen"
  loc_183133F:   If (var_8C = vbNullString) Then
  loc_1831342:     Exit Sub
  loc_1831343:   End If
  loc_183134B:   If (var_90 = vbNullString) Then
  loc_183134E:     Exit Sub
  loc_183134F:   End If
  loc_1831357:   If (var_94 = vbNullString) Then
  loc_183135A:     Exit Sub
  loc_183135B:   End If
  loc_1831371:   unk_43FED1.Execute var_8C, var_11C, -1
  loc_183137C:   Set var_C0 = var_120
  loc_183139B:   unk_43FED1.Execute var_90, var_11C, -1
  loc_18313A6:   Set var_CC = var_120
  loc_18313C5:   unk_43FED1.Execute var_94, var_11C, -1
  loc_18313D0:   Set var_D0 = var_120
  loc_18313EF:   unk_43FED1.Execute var_98, var_11C, -1
  loc_18313FA:   Set var_C4 = var_120
  loc_1831405:   Close 1
  loc_183140E:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1831412:   ' Referenced from: 1833490
  loc_1831421:   If Not(var_C0.EOF) Then
  loc_1831452:     var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_183145D:     var_9E = 0
  loc_1831474:     var_120 = var_EC.Fields
  loc_18314BD:     var_10C = Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_120.Item("RestType")), 1, var_9E, var_120) = "Restaurant"), var_120)
  loc_18314DB:     If (var_120 Or (var_10C = "Hall")) Then
  loc_18314EC:       var_9C = "** " & "BILL" & " **"
  loc_18314F5:     Else
  loc_1831504:       var_120 = var_EC.Fields
  loc_183151D:       var_9C = Proc_6_38_E69628(CVar(var_120.Item("Name")), var_120)
  loc_1831526:     End If
  loc_183152C:     If (var_9E = 0) Then
  loc_183155D:       var_DC = Replace(CStr(Space(&H32)), " ", "-", 1, -1, 0)
  loc_1831594:       var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_18315FB:       Proc_6_39_E7D3A0(var_194, CVar(var_C0.Fields.Item("VNo")))
  loc_1831631:       var_2E0 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType"))) & "/" & MemVar_1F95168 & "/") & var_194), &H10)
  loc_18316C7:       var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_18316D1:       var_1D8 = (CVar(var_EC.Fields.Item("RestType")) + CVar(var_2E0))
  loc_18316DA:       var_1F8 = (var_1D8 + "Dt : ")
  loc_18316E4:       var_248 = (var_1F8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate"))), &HB)))
  loc_18316EB:       var_268 = (var_248 + Space(1))
  loc_18316F4:       var_288 = (var_268 + "Time : ")
  loc_18316FE:       var_2D8 = (var_288 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_1831704:       Print 1, var_2D8
  loc_183175F:       var_9E = (var_9E + 1)
  loc_183179B:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_18317F2:         var_150 = (Chr(&HF) + "Table No. : ")
  loc_18317FC:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_1831802:         Print 1, var_194
  loc_1831827:         var_9E = (var_9E + 1)
  loc_183182A:       End If
  loc_1831863:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_18318BA:         var_150 = (Chr(&HF) + "Room No.  : ")
  loc_18318C4:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_18318CA:         Print 1, var_194
  loc_18318EF:         var_9E = (var_9E + 1)
  loc_18318F2:       End If
  loc_183192B:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_1831982:         var_150 = (Chr(&HF) + "Hall  No. : ")
  loc_183198C:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_1831992:         Print 1, var_194
  loc_18319B7:         var_9E = (var_9E + 1)
  loc_18319BA:       End If
  loc_1831A3A:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_1831A91:         var_150 = (Chr(&HF) + "KOT No.   : ")
  loc_1831A9B:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H34)))
  loc_1831AA1:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_1831AC6:         var_9E = (var_9E + 1)
  loc_1831AC9:       End If
  loc_1831ADF:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1831AE5:       Print 1, CVar(var_EC.Fields.Item("RestType"))
  loc_1831AF8:       var_9E = (var_9E + 1)
  loc_1831B21:       var_160 = (CVar(Proc_6_45_EADFB8("SNo", 3, var_9E)) + Space(1))
  loc_1831B3B:       var_194 = (var_9E + CVar(Proc_6_45_EADFB8("Particulars", &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1831B4F:       var_1B4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_1831B69:       var_1D8 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType"))) & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAE084("T, 2)) 'String)
  loc_1831B75:       var_1F8 = Space(1)
  loc_1831B7D:       var_220 = (var_1D8 + var_1F8)
  loc_1831B97:       var_248 = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1831BAB:       var_268 = (var_248 + Space(1))
  loc_1831BC5:       var_2B0 = (var_268 + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1831BD1:       var_2C8 = Space(1)
  loc_1831BD9:       var_2D8 = (CVar(var_C0.Fields.Item("VTIME")) + var_2C8)
  loc_1831BF3:       var_318 = (var_2D8 + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_1831BF8:       var_B8 = CStr(var_318)
  loc_1831C4D:       var_150 = (Chr(&HF) + CVar(var_B8))
  loc_1831C53:       Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_9E))
  loc_1831C76:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1831C7C:       Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_9E))
  loc_1831C8F:       var_9E = (var_9E + 1)
  loc_1831C94:       var_BA = 1
  loc_1831C9A:       var_CC.MoveFirst
  loc_1831C9F:       ' Referenced from: 18321C3
  loc_1831CAE:       If Not(var_CC.EOF) Then
  loc_1831CFE:         Proc_6_39_E7D3A0(var_1F8, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_1831D49:         Proc_6_39_E7D3A0(var_2C8, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_1831D94:         Proc_6_39_E7D3A0(var_368, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1831DDF:         Proc_6_39_E7D3A0(var_400, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_1831E20:         Proc_6_39_E7D3A0(var_458, CVar(var_CC.Fields.Item("Amt")))
  loc_1831E6B:         var_160 = (CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)) + Space(1))
  loc_1831E84:         var_1A4 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1831E98:         var_1C8 = (Space(1) + Space(2))
  loc_1831EB1:         var_258 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_1F8, "0")), 1, CVar(Proc_6_52_EAE084("T, 2)) 'String)) 'String)
  loc_1831EC5:         var_288 = (Space(1) + Space(1))
  loc_1831EDE:         var_328 = (CVar(Proc_6_52_EAE084("Qty", 6)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2C8, "0.00")), 7)))
  loc_1831EF2:         var_348 = (var_328 + Space(1))
  loc_1831F0B:         var_3A8 = (var_348 + CVar(Proc_6_52_EAE084(CStr(Format(var_368, "0.00")), 6)))
  loc_1831F1F:         var_3C8 = (var_3A8 + Space(1))
  loc_1831F5D:         var_4DC = (var_3C8 + IIf((var_400 = 0), CVar(Proc_6_45_EADFB8("Free", 9, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_458, "0.00")), 9))))
  loc_1831FF8:         var_150 = (Chr(&HF) + CVar(CStr(var_4DC)))
  loc_1831FFE:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_1832015:         If (var_9E = (&H45 - var_B2)) Then
  loc_183202E:           var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1832034:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_1832047:           var_9E = (var_9E + 1)
  loc_183204F:           Print 1, "Contd."
  loc_183205B:           var_9E = (var_9E + 1)
  loc_1832070:           Print 1, Chr(&HC)
  loc_183207F:           var_9E = (var_9E + 1)
  loc_1832088:           var_A0 = (var_A0 + 1)
  loc_183208D:           var_9E = 0
  loc_18320BF:           var_10C = Proc_260_1_10A4640(var_9C, "B", &H32, Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), &H32, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), 1))
  loc_18320C4:           Print 1, var_10C
  loc_18320D9:           var_9E = (var_9E + 1)
  loc_18320F2:           var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18320F8:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_183210B:           var_9E = (var_9E + 1)
  loc_1832124:           var_150 = (Chr(&HF) + CVar(var_B8))
  loc_183212A:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_183214D:           var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1832153:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_1832166:           var_9E = (var_9E + 1)
  loc_1832169:         End If
  loc_1832196:         Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_183219E:         var_160 = (Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)))
  loc_18321A3:         var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_18321B8:         var_BA = (var_BA + 1)
  loc_18321BE:         var_CC.MoveNext
  loc_18321C3:         GoTo loc_1831C9F
  loc_18321C6:       End If
  loc_18321E6:       var_160 = (Chr(&HF) + Space(&H29))
  loc_18321F0:       var_184 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_18321F6:       Print 1, var_CC.Fields.Item("ItemName").Value
  loc_183220D:       var_9E = (var_9E + 1)
  loc_1832213:       var_D0.MoveFirst
  loc_1832218:       ' Referenced from: 1832735
  loc_1832227:       If Not(var_D0.EOF) Then
  loc_1832254:         var_4EC = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1832272:         If (var_4EC = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_18322C8:           var_164 = Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), var_BA, var_D8)
  loc_18322FE:           Proc_6_39_E7D3A0(var_1F8, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_183234B:           var_160 = (Chr(&HF) + Space(&H1C))
  loc_1832355:           var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_164))
  loc_183235C:           var_1C8 = (Space(1) + Space(1))
  loc_1832366:           var_258 = (CVar(Proc_6_52_EAE084("T, 2)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1F8, "0.00")), 9, 1, 1)))
  loc_183236D:           var_288 = (Space(1) + Chr(&H12))
  loc_1832373:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_18323B6:           var_9E = (var_9E + 1)
  loc_18323BC:         Else
  loc_18323CF:           If (var_4EC = CVar(MemVar_1F95078 & "NET")) Then
  loc_18323E7:             var_150 = Space(&H29)
  loc_18323F2:             var_160 = (Chr(&HF) + var_150)
  loc_18323FC:             var_184 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_1832402:             Print 1, var_D0.Fields.Item("DispName").Value
  loc_1832419:             var_9E = (var_9E + 1)
  loc_1832442:             Proc_6_39_E7D3A0(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_183245C:             If (var_150 > 0) Then
  loc_1832474:               var_150 = Space(&H1C)
  loc_18324B2:               var_164 = Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_18324E8:               Proc_6_39_E7D3A0(var_1F8, CVar(var_D0.Fields.Item("Amount")))
  loc_1832535:               var_160 = (Chr(&HF) + var_150)
  loc_183253F:               var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_164))
  loc_1832546:               var_1C8 = (Space(1) + Space(1))
  loc_1832550:               var_258 = (CVar(Proc_6_52_EAE084("T, 2)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1F8, "0.00")), 9, 1)))
  loc_1832557:               var_288 = (Space(1) + Chr(&H12))
  loc_183255D:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_18325A0:               var_9E = (var_9E + 1)
  loc_18325A3:             End If
  loc_18325A6:           Else
  loc_18325CC:             Proc_6_39_E7D3A0(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_18325E6:             If (var_150 > 0) Then
  loc_183265B:               var_12C = var_D0.Fields
  loc_1832672:               Proc_6_39_E7D3A0(var_1F8, CVar(var_12C.Item("Amount")))
  loc_18326BF:               var_160 = (Chr(&HF) + Space(&H1C))
  loc_18326C9:               var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)))
  loc_18326D0:               var_1C8 = (Space(1) + Space(1))
  loc_18326DA:               var_258 = (CVar(Proc_6_52_EAE084("T, 2)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1F8, "0.00")), 9, 1)))
  loc_18326E1:               var_288 = (Space(1) + Chr(&H12))
  loc_18326E7:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_183272A:               var_9E = (var_9E + 1)
  loc_183272D:             End If
  loc_183272D:           End If
  loc_183272D:         End If
  loc_1832730:         var_D0.MoveNext
  loc_1832735:         GoTo loc_1832218
  loc_1832738:       End If
  loc_183274E:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1832754:       Print 1, Space(&H1C)
  loc_1832767:       var_9E = (var_9E + 1)
  loc_18327A6:       If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_18327DE:         var_10C = Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_18327FD:         var_150 = (Chr(&HF) + "Steward Name  : ")
  loc_1832807:         var_194 = (Space(&H1C) + CVar(Proc_6_45_EADFB8(var_10C, &H14, 1)))
  loc_183280D:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_1832832:         var_9E = (var_9E + 1)
  loc_1832835:       End If
  loc_183283D:       var_11C = Chr(&HF)
  loc_1832851:       var_120 = var_C0.Fields
  loc_1832889:       var_150 = (var_11C + "User Name     : ")
  loc_1832890:       var_184 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1)), &HA)) 'String
  loc_1832893:       var_194 = (Space(&H1C) + var_184)
  loc_1832899:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_18328BE:       var_9E = (var_9E + 1)
  loc_18328C6:       Print 1, vbNullString
  loc_18328D2:       var_9E = (var_9E + 1)
  loc_18328FB:       unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_1832906:       Set var_F0 = var_120
  loc_183292A:       If (var_F0.RecordCount > 0) Then
  loc_183296D:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1832978:           var_11C = Chr(&HF)
  loc_183298C:           var_120 = var_F0.Fields
  loc_18329AE:           var_184 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_18329B4:           Print 1, var_184
  loc_18329CE:           var_9E = (var_9E + 1)
  loc_18329D1:         End If
  loc_18329D1:       End If
  loc_18329F7:       unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_1832A02:       Set var_F0 = var_120
  loc_1832A26:       If (var_F0.RecordCount > 0) Then
  loc_1832A69:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1832A90:           var_128 = var_F0.Fields.Item("Slogan2")
  loc_1832AAA:           var_184 = (Chr(&HF) + Trim(CVar(var_128)))
  loc_1832AB0:           Print 1, var_184
  loc_1832ACA:           var_9E = (var_9E + 1)
  loc_1832ACD:         End If
  loc_1832ACD:       End If
  loc_1832AD2:       Set var_F0 = Nothing
  loc_1832ADA:       Print 1, vbNullString
  loc_1832AE6:       var_9E = (var_9E + 1)
  loc_1832AF1:       var_11C = Chr(&HF)
  loc_1832AFE:       var_150 = (var_11C + "# ")
  loc_1832B17:       Print 1, CVar(var_128) & CVar(MemVar_1F95220) & " # "
  loc_1832B2E:       var_9E = (var_9E + 1)
  loc_1832B34:       var_13C = 0
  loc_1832B63:       unk_43FED1.Execute "SELECT TOKENPrint FROM Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_1832B6B:       var_120 = var_120.Fields
  loc_1832B73:       var_13C = var_128.Item(var_128)
  loc_1832B84:       var_164 = Proc_6_38_E69628(CVar(var_12C), var_12C, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_1832BA3:       If (var_164 = "Yes") Then
  loc_1832BBA:         If (var_C4.RecordCount > 0) Then
  loc_1832BC2:           Print 1, vbNullString
  loc_1832C03:           var_10C = Replace(CStr(Space(&H32)), " ", "=", 1, -1, 0)
  loc_1832C0F:           var_184 = (Chr(&HF) + CVar("SELECT TOKENPrint FROM Depart Where Code='" & Me(8) & "'"))
  loc_1832C15:           Print 1, CVar(var_128) & CVar(MemVar_1F95220) & " # "
  loc_1832C32:           Print 1, vbNullString
  loc_1832C3E:           var_9E = (var_9E + 1)
  loc_1832C41:           ' Referenced from: 183326F
  loc_1832C50:           If Not(var_C4.EOF) Then
  loc_1832C55:             var_BA = 1
  loc_1832C6C:             var_108 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_1832CB2:             var_184 = CVar(var_108 & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1832CC0:             unk_43FED1.Execute CStr(var_184), CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)), -1
  loc_1832CCB:             Set var_C8 = var_12C
  loc_1832D01:             If (var_C8.RecordCount > 0) Then
  loc_1832D46:               var_1B8 = Proc_260_1_10A4640(CStr(var_C4.Fields.Item("Department").Value), "D", &H2D, var_12C, var_BA, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_1832D51:               Print 1, var_1B8
  loc_1832D88:               var_120 = var_C0.Fields
  loc_1832DCA:               Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)), CVar(var_C0.Fields.Item("VNo")), var_120)
  loc_1832DD7:               var_108 = Proc_6_38_E69628(CVar(var_120.Item("vType")), var_120, Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), &H32, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), 1))
  loc_1832DF2:               var_1B4 = CVar(var_108 & "/" & MemVar_1F95168 & "/") & CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) 
  loc_1832E3F:               var_2E8 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), &H32, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), 1)), &HB)
  loc_1832E96:               var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_1832EA0:               var_1D8 = (CVar(var_108 & Me(12) & "' AND I.Kitchen='") + CVar(Proc_6_45_EADFB8(CStr(var_1B4), &H10)))
  loc_1832EA9:               var_1F8 = (CVar(var_C0.Fields.Item("Amount")) + "Dt : ")
  loc_1832EB3:               var_248 = (var_1F8 + CVar(var_2E8))
  loc_1832EBA:               var_268 = (CVar(Proc_6_52_EAE084(CStr(Format(var_1F8, "0.00")), 9, 1)) + Space(1))
  loc_1832EC3:               var_288 = (Chr(&H12) + "Time : ")
  loc_1832ECD:               var_2D8 = (CVar(Proc_6_52_EAE084("Qty", 6)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_1832ED3:               Print 1, "0.00"
  loc_1832F2E:               var_9E = (var_9E + 1)
  loc_1832FA2:               var_238 = Space(1)
  loc_183300C:               var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_1833013:               var_194 = (CVar(var_120.Item("vType")) + Space(1))
  loc_183301D:               var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) + CVar(Proc_6_45_EADFB8("Particulars", &HF)))
  loc_1833024:               var_1D8 = (var_1B4 + Space(1))
  loc_183302E:               var_220 = (CVar(var_C0.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084("Tax, 5)) 'String)
  loc_1833035:               var_248 = (CVar(var_C0.Fields.Item("VDate")) + var_238)
  loc_183303F:               var_268 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Tax, 5)) 'String, "0.00")), 9, 1)) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1833046:               var_2B0 = (Chr(&H12) + Space(1))
  loc_1833050:               var_2D8 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1833057:               var_318 = ("0.00" + Space(1))
  loc_1833061:               var_338 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Qty", 6)), "0.00")), 7)) + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_1833067:               Print 1, Space(1)
  loc_18330CF:               var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18330D5:               Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_18330E2:               ' Referenced from: 1833259
  loc_18330F1:               If Not(var_C8.EOF) Then
  loc_1833193:                 Proc_6_39_E7D3A0(var_238, CVar(var_C8.Fields.Item("qty")))
  loc_18331D6:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3)))
  loc_18331DD:                 var_194 = (CVar(var_C8.Fields.Item("vType")) + Space(1))
  loc_18331E7:                 var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H1E)))
  loc_18331EE:                 var_1F8 = (Space(1) + Space(1))
  loc_18331F8:                 var_288 = (CVar(Proc_6_52_EAE084("Tax, 5)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_238, "0.00")), &HD, 1)))
  loc_18331FE:                 Print 1, Space(1)
  loc_1833242:                 var_C8.MoveNext
  loc_183324D:                 var_9E = (var_9E + 1)
  loc_1833256:                 var_BA = (var_BA + 1)
  loc_1833259:                 GoTo loc_18330E2
  loc_183325C:               End If
  loc_183325C:             End If
  loc_183325F:             var_C4.MoveNext
  loc_1833269:             Print 1, vbNullString
  loc_183326F:             GoTo loc_1832C41
  loc_1833272:           End If
  loc_1833272:         End If
  loc_1833272:       End If
  loc_1833272:     End If
  loc_1833277:     Print 1, vbNullString
  loc_1833283:     var_9E = (var_9E + 1)
  loc_183328B:     Print 1, vbNullString
  loc_1833297:     var_9E = (var_9E + 1)
  loc_183329F:     Print 1, vbNullString
  loc_18332AB:     var_9E = (var_9E + 1)
  loc_18332B3:     Print 1, vbNullString
  loc_18332BF:     var_9E = (var_9E + 1)
  loc_18332C7:     Print 1, vbNullString
  loc_18332D3:     var_9E = (var_9E + 1)
  loc_18332DB:     Print 1, vbNullString
  loc_18332E7:     var_9E = (var_9E + 1)
  loc_18332EF:     Print 1, vbNullString
  loc_18332FB:     var_9E = (var_9E + 1)
  loc_1833343:     var_10C = Proc_6_38_E69628("UPTT No: " & var_EC.Fields.Item("LstNo").Value, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_1833357:     var_164 = Proc_6_45_EADFB8(var_10C, &H1E, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1), Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_1833370:     var_194 = (Chr(&HF) + CVar(var_164))
  loc_1833377:     var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) + Chr(&H12))
  loc_183337D:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H1E))
  loc_18333AA:     var_9E = (var_9E + 1)
  loc_18333CE:     Print 1, Proc_260_1_10A4640(var_9C, "D", &H2D, Proc_260_2_136F49C(1, var_9E, &H32, var_9E, 1))
  loc_1833434:     var_160 = (Chr(&H11) + Space(&HE))
  loc_183343D:     var_184 = ("UPTT No: " & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_1833447:     var_1A4 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, Proc_260_2_136F49C(1, var_9E, &H32), var_BA), &H1E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_9E, &H32), &H32), var_BA), &H1E)))
  loc_183344D:     Print 1, Chr(&H12)
  loc_1833471:     var_9E = (var_9E + 1)
  loc_1833477:     var_C0.MoveNext
  loc_1833481:     Print 1, vbNullString
  loc_183348D:     var_9E = (var_9E + 1)
  loc_1833490:     GoTo loc_1831412
  loc_1833493:   End If
  loc_1833495:   Close 1
  loc_183349E:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18334D3:   var_150 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_18334D9:   Print 1, var_150
  loc_18334EF:   Close 1
  loc_18334F9:   If (MemVar_1F953BC = "Y") Then
  loc_1833515:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_183351F:   Else
  loc_1833538:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_183353F:   End If
  loc_1833544:   Set var_C0 = Nothing
  loc_183354C:   Set var_CC = Nothing
  loc_1833554:   Set var_D0 = Nothing
  loc_183355C:   Set var_EC = Nothing
  loc_1833564:   Set var_C4 = Nothing
  loc_183356C:   Set var_C8 = Nothing
  loc_1833572: Else
  loc_183358B:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_150, "UPTT No: " & var_EC.Fields.Item("LstNo").Value, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, Proc_260_2_136F49C(1, var_9E, &H32), var_BA), &H1E)))
  loc_183359B: End If
  loc_183359B: Exit Sub
  loc_183359C: ' Referenced from: 183123C
  loc_183359C: Proc_6_60_E63754(Proc_260_2_136F49C(1, var_9E, &H32), Proc_260_2_136F49C(1, var_9E, &H32))
  loc_18335A1: Exit Sub
End Sub

Public Sub Proc_260_5_195CEDC
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_EC As Recordset15
  Dim var_120 As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_F0 As Recordset15
  Dim var_180 As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_28C As Variant
  Dim var_234 As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_1D4 As Variant
  Dim var_25C As Variant
  Dim var_128 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_3E0 As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_C8 As Recordset15
  loc_195A27C: On Error Goto loc_195CED4
  loc_195A295: If (MemVar_629D24.RecordCount > 0) Then
  loc_195A29B:   MemVar_1F953C4 = "N"
  loc_195A2A2:   MemVar_1F953C8 = "N"
  loc_195A2A9:   MemVar_1F953CC = "K"
  loc_195A2D3:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_195A2DE:   Set var_EC = var_120
  loc_195A2FE:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_195A30B:   var_F8 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_195A31B:   var_90 = var_F8 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_195A33C:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_195A34D:   var_F8 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_195A35D:   var_98 = var_F8 & Me(12) & "' ORDER BY I.Kitchen"
  loc_195A36F:   If (var_8C = vbNullString) Then
  loc_195A372:     Exit Sub
  loc_195A373:   End If
  loc_195A37B:   If (var_90 = vbNullString) Then
  loc_195A37E:     Exit Sub
  loc_195A37F:   End If
  loc_195A387:   If (var_94 = vbNullString) Then
  loc_195A38A:     Exit Sub
  loc_195A38B:   End If
  loc_195A3A1:   unk_43FED1.Execute var_8C, var_11C, -1
  loc_195A3AC:   Set var_C0 = var_120
  loc_195A3CB:   unk_43FED1.Execute var_90, var_11C, -1
  loc_195A3D6:   Set var_CC = var_120
  loc_195A3F5:   unk_43FED1.Execute var_94, var_11C, -1
  loc_195A400:   Set var_D0 = var_120
  loc_195A41F:   unk_43FED1.Execute var_98, var_11C, -1
  loc_195A42A:   Set var_C4 = var_120
  loc_195A435:   Close 1
  loc_195A43E:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_195A442:   ' Referenced from: 195CDA8
  loc_195A451:   If Not(var_C0.EOF) Then
  loc_195A482:     var_DC = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_195A48D:     var_9E = 0
  loc_195A4A4:     var_120 = var_EC.Fields
  loc_195A4ED:     var_FC = Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_120.Item("RestType")), 1, var_9E, var_120) = "Restaurant"), var_120)
  loc_195A50B:     If (var_120 Or (var_FC = "Hall")) Then
  loc_195A51C:       var_9C = "** " & "BILL" & " **"
  loc_195A525:     Else
  loc_195A534:       var_120 = var_EC.Fields
  loc_195A54D:       var_9C = Proc_6_38_E69628(CVar(var_120.Item("Name")), var_120)
  loc_195A556:     End If
  loc_195A55C:     If (var_9E = 0) Then
  loc_195A58D:       var_DC = Replace(CStr(Space(&H2C)), " ", "-", 1, -1, 0)
  loc_195A5C4:       var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_195A5E9:       var_120 = var_EC.Fields
  loc_195A62F:       var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("LstNo"))), &H1E)))
  loc_195A636:       var_190 = (var_170 + Chr(&H12))
  loc_195A63C:       Print 1, var_190
  loc_195A663:       var_9E = (var_9E + 1)
  loc_195A676:       var_11C = Trim(MemVar_1F95130)
  loc_195A682:       var_160 = (38 - Len(var_11C))
  loc_195A6B5:       var_204 = (38 - Len(Trim(MemVar_1F95130)))
  loc_195A6D5:       var_190 = (Space(CLng((CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) + CVar(MemVar_1F95130))
  loc_195A6DC:       var_244 = (var_190 + Space(CLng((var_204 / 2))))
  loc_195A6E2:       Print 1, var_244
  loc_195A6FD:       var_9E = (var_9E + 1)
  loc_195A726:       unk_43FED1.Execute "SELECT HEADER1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195A731:       Set var_F0 = var_120
  loc_195A755:       If (var_F0.RecordCount > 0) Then
  loc_195A798:         If CBool(Trim(CVar(var_F0.Fields.Item("Header1"))) <> vbNullString) Then
  loc_195A7A3:           var_11C = Chr(&HF)
  loc_195A7BC:           var_120 = var_F0.Fields
  loc_195A7DF:           var_180 = (38 - Len(Trim(CVar(var_120.Item("Header1")))))
  loc_195A858:           var_27C = (38 - Len(Trim(CVar(var_F0.Fields.Item("Header1")))))
  loc_195A882:           var_1E4 = (var_11C + Space(CLng((Space(CLng((CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))))
  loc_195A889:           var_234 = (Len(Trim(MemVar_1F95130)) + Trim(CVar(var_F0.Fields.Item("Header1"))))
  loc_195A890:           var_2AC = (Space(CLng((CVar(var_F0.Fields.Item("Header1")) / 2))) + Space(CLng((var_27C / 2))))
  loc_195A897:           var_2CC = (var_2AC + Chr(&H12))
  loc_195A89D:           Print 1, var_2CC
  loc_195A8D1:           var_9E = (var_9E + 1)
  loc_195A8D4:         End If
  loc_195A8D4:       End If
  loc_195A8D9:       Set var_F0 = Nothing
  loc_195A902:       unk_43FED1.Execute "SELECT HEADER2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195A90D:       Set var_F0 = var_120
  loc_195A931:       If (var_F0.RecordCount > 0) Then
  loc_195A974:         If CBool(Trim(CVar(var_F0.Fields.Item("Header2"))) <> vbNullString) Then
  loc_195A998:           var_120 = var_F0.Fields
  loc_195A9BB:           var_180 = (38 - Len(Trim(CVar(var_120.Item("Header2")))))
  loc_195AA34:           var_27C = (38 - Len(Trim(CVar(var_F0.Fields.Item("Header2")))))
  loc_195AA5E:           var_1E4 = (Chr(&HF) + Space(CLng((Space(CLng((CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))))
  loc_195AA65:           var_234 = (Len(Trim(MemVar_1F95130)) + Trim(CVar(var_F0.Fields.Item("Header2"))))
  loc_195AA6C:           var_2AC = (Space(CLng((CVar(var_F0.Fields.Item("Header2")) / 2))) + Space(CLng((var_27C / 2))))
  loc_195AA73:           var_2CC = (var_2AC + Chr(&H12))
  loc_195AA79:           Print 1, var_2CC
  loc_195AAAD:           var_9E = (var_9E + 1)
  loc_195AAB0:         End If
  loc_195AAB0:       End If
  loc_195AAB5:       Set var_F0 = Nothing
  loc_195AAE1:       var_170 = (38 - Len(Trim(var_9C)))
  loc_195AB14:       var_234 = (38 - Len(Trim(var_9C)))
  loc_195AB3E:       var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(var_120.Item("Header2")))) / 2))))
  loc_195AB48:       var_1E4 = (Space(CLng((Space(CLng((CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))) + CVar(var_9C))
  loc_195AB4F:       var_26C = (Len(Trim(MemVar_1F95130)) + Space(CLng((Space(CLng((Trim(var_9C) / 2))) / 2))))
  loc_195AB56:       var_28C = (Len(Trim(CVar(var_F0.Fields.Item("Header2")))) + Chr(&H12))
  loc_195AB5C:       Print 1, (Chr(&H12) / 2)
  loc_195AB7F:       var_9E = (var_9E + 1)
  loc_195ABBE:       var_E4 = Proc_6_45_EADFB8("PHONE NO." & Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_9E, var_9E, var_120, var_9E), &H2A, var_120), &H2A, var_9E)
  loc_195ABF7:       var_170 = (38 - Len(Trim(var_E4)))
  loc_195AC00:       var_180 = (Len(Trim(CVar(var_120.Item("Header2")))) / 2)
  loc_195AC2A:       var_234 = (38 - Len(Trim(var_E4)))
  loc_195AC54:       var_1D4 = (Chr(&HF) + Space(CLng(var_180)))
  loc_195AC5E:       var_1E4 = (Space(CLng((Space(CLng((CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))) + CVar(var_E4))
  loc_195AC65:       var_26C = (Len(Trim(MemVar_1F95130)) + Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2))))
  loc_195AC6C:       var_28C = (Len(Trim(CVar(var_F0.Fields.Item("Header2")))) + Chr(&H12))
  loc_195AC72:       Print 1, (Chr(&H12) / 2)
  loc_195AC95:       var_9E = (var_9E + 1)
  loc_195AC9D:       Print 1, vbNullString
  loc_195AD01:       Proc_6_39_E7D3A0(var_180, CVar(var_C0.Fields.Item("VNo")))
  loc_195AD37:       var_2E0 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_180), &H10)
  loc_195AD81:       var_26C = Chr(&H12)
  loc_195AD8E:       var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_195AD98:       var_204 = (Trim(var_E4) + CVar(var_2E0))
  loc_195ADA1:       var_224 = (Trim(var_E4) + "Dt : ")
  loc_195ADAB:       var_25C = (Len(Trim(var_E4)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_9E), &HB)))
  loc_195ADB2:       var_27C = (Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2))) + var_26C)
  loc_195ADB8:       Print 1, Chr(&H12)
  loc_195AE03:       var_9E = (var_9E + 1)
  loc_195AE86:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_195AEEA:         var_150 = (Chr(&HF) + "KOT No.   : ")
  loc_195AEF4:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H1A)))
  loc_195AEFB:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Chr(&H12))
  loc_195AF01:         Print 1, CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_195AF2A:         var_9E = (var_9E + 1)
  loc_195AF2D:       End If
  loc_195AF66:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_195B016:         var_150 = (Chr(&HF) + "Table No. : ")
  loc_195B020:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195B027:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(2))
  loc_195B030:         var_1E4 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + "Time : ")
  loc_195B03A:         var_234 = (CVar(var_2E0) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195B041:         var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195B047:         Print 1, Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2)))
  loc_195B086:         var_9E = (var_9E + 1)
  loc_195B089:       End If
  loc_195B0C2:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_195B172:         var_150 = (Chr(&HF) + "Room No.  : ")
  loc_195B17C:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195B183:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(3))
  loc_195B18C:         var_1E4 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + "Time : ")
  loc_195B196:         var_234 = (CVar(var_2E0) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195B19D:         var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195B1A3:         Print 1, Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2)))
  loc_195B1E2:         var_9E = (var_9E + 1)
  loc_195B1E5:       End If
  loc_195B21E:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_195B2CE:         var_150 = (Chr(&HF) + "Hall  No. : ")
  loc_195B2D8:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195B2DF:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(3))
  loc_195B2E8:         var_1E4 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + "Time : ")
  loc_195B2F2:         var_234 = (CVar(var_2E0) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195B2F9:         var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195B2FF:         Print 1, Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2)))
  loc_195B33E:         var_9E = (var_9E + 1)
  loc_195B341:       End If
  loc_195B364:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195B36B:       var_170 = (Trim(var_E4) + Chr(&H12))
  loc_195B371:       Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5))
  loc_195B388:       var_9E = (var_9E + 1)
  loc_195B3B1:       var_160 = (CVar(Proc_6_45_EADFB8("Particulars", &H14, var_9E)) + Space(1))
  loc_195B3CB:       var_180 = (var_9E + CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))
  loc_195B3D7:       var_190 = Space(1)
  loc_195B3DF:       var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + var_190)
  loc_195B3F9:       var_204 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_195B40D:       var_234 = (CVar(var_C0.Fields.Item("VTIME")) + Space(1))
  loc_195B427:       var_25C = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_195B47A:       var_150 = (Chr(&HF) + CVar(CStr(Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2))))))
  loc_195B481:       var_170 = (CVar(Proc_6_45_EADFB8("Particulars", &H14, var_9E)) + Chr(&H12))
  loc_195B487:       Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_195B49E:       var_9E = (var_9E + 1)
  loc_195B4C4:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195B4CB:       var_170 = (CVar(Proc_6_45_EADFB8("Particulars", &H14, var_9E)) + Chr(&H12))
  loc_195B4D1:       Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_195B4E8:       var_9E = (var_9E + 1)
  loc_195B4ED:       var_BA = 1
  loc_195B4F3:       var_CC.MoveFirst
  loc_195B4F8:       ' Referenced from: 195B812
  loc_195B507:       If Not(var_CC.EOF) Then
  loc_195B557:         Proc_6_39_E7D3A0(var_190, CVar(var_CC.Fields.Item("Rate")), var_BA)
  loc_195B577:         var_1E4 = Format(var_190, "0.00")
  loc_195B5A2:         Proc_6_39_E7D3A0(var_26C, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_195B5ED:         Proc_6_39_E7D3A0(var_314, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_195B62E:         Proc_6_39_E7D3A0(var_35C, CVar(var_CC.Fields.Item("Amt")))
  loc_195B678:         var_170 = (CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H14, 1)) + Space(1))
  loc_195B691:         var_224 = (1 + CVar(Proc_6_52_EAE084(CStr(var_1E4), 6, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))))
  loc_195B6A5:         var_244 = (Space(1) + Space(1))
  loc_195B6BE:         var_2AC = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_26C, "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_195B6D2:         var_2CC = (var_2AC + Space(1))
  loc_195B708:         var_3D0 = IIf((var_314 = 0), CVar(Proc_6_45_EADFB8("Free", 9, var_9E)), CVar(Proc_6_52_EAE084(CStr(Format(var_35C, "0.00")), 9)))
  loc_195B710:         var_3E0 = (var_2CC + var_3D0)
  loc_195B79A:         var_150 = (Chr(&HF) + CVar(CStr(var_3E0)))
  loc_195B7A1:         var_170 = (Space(1) + Chr(&H12))
  loc_195B7A7:         Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_195B7E5:         Proc_6_39_E7D3A0(Space(1), CVar(var_CC.Fields.Item("Amt")))
  loc_195B7ED:         var_160 = (CVar(var_D8) + Space(1))
  loc_195B7F2:         var_D8 = CSng(Chr(&H12))
  loc_195B807:         var_BA = (var_BA + 1)
  loc_195B80D:         var_CC.MoveNext
  loc_195B812:         GoTo loc_195B4F8
  loc_195B815:       End If
  loc_195B842:       var_160 = (Chr(&HF) + Space(&H23))
  loc_195B84C:       var_170 = (Chr(&H12) + CVar(var_E0))
  loc_195B853:       var_190 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_195B859:       Print 1, var_190
  loc_195B874:       var_9E = (var_9E + 1)
  loc_195B87A:       var_D0.MoveFirst
  loc_195B87F:       ' Referenced from: 195BDAB
  loc_195B88E:       If Not(var_D0.EOF) Then
  loc_195B8BB:         var_3F0 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_195B8D9:         If (var_3F0 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_195B929:           Proc_6_39_E7D3A0(var_1E4, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_195B973:           var_170 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, Space(&H16), 1)))
  loc_195B987:           var_190 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_195B9A0:           var_244 = (var_BA + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), 9, var_190)))
  loc_195B9F6:           var_150 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_195B9FD:           var_170 = (var_D0.Fields.Item("DispName").Value + Chr(&H12))
  loc_195BA03:           Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_195BA1A:           var_9E = (var_9E + 1)
  loc_195BA20:         Else
  loc_195BA33:           If (var_3F0 = CVar(MemVar_1F95078 & "NET")) Then
  loc_195BA63:             var_160 = (Chr(&HF) + Space(&H23))
  loc_195BA6D:             var_170 = (Chr(&H12) + CVar(var_E0))
  loc_195BA74:             var_190 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_195BA7A:             Print 1, var_190
  loc_195BA95:             var_9E = (var_9E + 1)
  loc_195BABA:             var_150 = var_D0.Fields.Item("DispName").Value
  loc_195BAE5:             Proc_6_39_E7D3A0(var_1E4, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_195BB2F:             var_170 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_150), &HC, Space(&H16), 1)))
  loc_195BB43:             var_190 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_195BB5C:             var_244 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), 9, var_190)))
  loc_195BBB5:             Proc_6_39_E7D3A0(var_150, CVar(var_D0.Fields.Item("Amount")))
  loc_195BBCF:             If (var_150 > 0) Then
  loc_195BBF5:               var_150 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_195BBFC:               var_170 = (var_150 + Chr(&H12))
  loc_195BC02:               Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_195BC19:               var_9E = (var_9E + 1)
  loc_195BC1C:             End If
  loc_195BC1F:           Else
  loc_195BC41:             var_150 = var_D0.Fields.Item("DispName").Value
  loc_195BC55:             var_12C = var_D0.Fields
  loc_195BC6C:             Proc_6_39_E7D3A0(var_1E4, CVar(var_12C.Item("Amount")), var_9E)
  loc_195BCB6:             var_170 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_150), &HC, Space(&H16), 1)))
  loc_195BCCA:             var_190 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_195BCE3:             var_244 = (var_D8 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), 9, var_190)))
  loc_195BD3C:             Proc_6_39_E7D3A0(var_150, CVar(var_D0.Fields.Item("Amount")))
  loc_195BD56:             If (var_150 > 0) Then
  loc_195BD7C:               var_150 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_195BD83:               var_170 = (var_150 + Chr(&H12))
  loc_195BD89:               Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_195BDA0:               var_9E = (var_9E + 1)
  loc_195BDA3:             End If
  loc_195BDA3:           End If
  loc_195BDA3:         End If
  loc_195BDA6:         var_D0.MoveNext
  loc_195BDAB:         GoTo loc_195B87F
  loc_195BDAE:       End If
  loc_195BDD1:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195BDD8:       var_170 = (var_150 + Chr(&H12))
  loc_195BDDE:       Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_195BDF5:       var_9E = (var_9E + 1)
  loc_195BE34:       If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_195BE98:         var_150 = (Chr(&HF) + "Steward Name  : ")
  loc_195BEA2:         var_180 = (var_150 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), var_9E), &H14)))
  loc_195BEA9:         var_1D4 = (Space(1) + Chr(&H12))
  loc_195BEAF:         Print 1, CVar(var_12C.Item("Amount"))
  loc_195BED8:         var_9E = (var_9E + 1)
  loc_195BEDB:       End If
  loc_195BEE3:       var_11C = Chr(&HF)
  loc_195BEF7:       var_120 = var_C0.Fields
  loc_195BF3C:       var_150 = (var_11C + "User Name     : ")
  loc_195BF46:       var_180 = (var_150 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), var_9E), &HA)))
  loc_195BF4D:       var_1D4 = (Space(1) + Chr(&H12))
  loc_195BF53:       Print 1, CVar(var_12C.Item("Amount"))
  loc_195BF7C:       var_9E = (var_9E + 1)
  loc_195BF84:       Print 1, vbNullString
  loc_195BF90:       var_9E = (var_9E + 1)
  loc_195BFB9:       unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195BFC4:       Set var_F0 = var_120
  loc_195BFE8:       If (var_F0.RecordCount > 0) Then
  loc_195C02B:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_195C036:           var_11C = Chr(&HF)
  loc_195C04A:           var_120 = var_F0.Fields
  loc_195C079:           var_170 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_195C080:           var_190 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_195C086:           Print 1, Chr(&H12)
  loc_195C0A4:           var_9E = (var_9E + 1)
  loc_195C0A7:         End If
  loc_195C0A7:       End If
  loc_195C0AC:       Set var_F0 = Nothing
  loc_195C0D5:       unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195C0E0:       Set var_F0 = var_120
  loc_195C104:       If (var_F0.RecordCount > 0) Then
  loc_195C147:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_195C16E:           var_128 = var_F0.Fields.Item("Slogan2")
  loc_195C195:           var_170 = (Chr(&HF) + Trim(CVar(var_128)))
  loc_195C19C:           var_190 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_F0.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_195C1A2:           Print 1, Chr(&H12)
  loc_195C1C0:           var_9E = (var_9E + 1)
  loc_195C1C3:         End If
  loc_195C1C3:       End If
  loc_195C1C8:       Set var_F0 = Nothing
  loc_195C1D3:       var_11C = Chr(&HF)
  loc_195C1EE:       var_150 = (var_11C + CVar(MemVar_1F95220))
  loc_195C1F5:       var_170 = (CVar(var_128) + Chr(&H12))
  loc_195C1FB:       Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_F0.Fields.Item("U_Name")), var_9E), &HA))
  loc_195C212:       var_9E = (var_9E + 1)
  loc_195C21A:       Print 1, vbNullString
  loc_195C226:       var_9E = (var_9E + 1)
  loc_195C22C:       var_13C = 0
  loc_195C25B:       unk_43FED1.Execute "SELECT TOKENPrint FROM Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_195C263:       var_120 = var_120.Fields
  loc_195C26B:       var_13C = var_128.Item(var_128)
  loc_195C29B:       If (Proc_6_38_E69628(CVar(var_12C), var_12C, var_9E, var_9E, var_9E) = "Yes") Then
  loc_195C2B2:         If (var_C4.RecordCount > 0) Then
  loc_195C2B5:           ' Referenced from: 195CD9D
  loc_195C2C4:           If Not(var_C4.EOF) Then
  loc_195C2C9:             Close 1
  loc_195C2F0:             Open "C:\reptmp\TEXTFILE_" & CStr(var_C4.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_195C302:             Print 1, vbNullString
  loc_195C30E:             var_9E = (var_9E + 1)
  loc_195C316:             Print 1, vbNullString
  loc_195C357:             var_FC = Replace(CStr(Space(&H26)), " ", "=", 1, -1, 0)
  loc_195C362:             var_180 = Chr(&H12)
  loc_195C370:             var_170 = (Chr(&HF) + CVar("C:\reptmp\TEXTFILE_" & CStr(var_C4.AbsolutePosition)))
  loc_195C377:             var_190 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), var_9E), &HA)) + var_180)
  loc_195C37D:             Print 1, Chr(&H12)
  loc_195C39B:             var_BA = 1
  loc_195C3B2:             var_F8 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_195C3F8:             var_170 = CVar(var_F8 & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_195C406:             unk_43FED1.Execute CStr(var_170), var_180, -1
  loc_195C411:             Set var_C8 = var_12C
  loc_195C447:             If (var_C8.RecordCount > 0) Then
  loc_195C473:               var_170 = (38 - Len(Trim(var_9C)))
  loc_195C4A6:               var_234 = (38 - Len(Trim(var_9C)))
  loc_195C4D0:               var_1D4 = (Chr(&HF) + Space(CLng((var_170 / 2))))
  loc_195C4DA:               var_1E4 = (CVar(var_12C.Item("Amount")) + CVar(var_9C))
  loc_195C4E1:               var_26C = (var_1E4 + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), 9, Space(CLng((var_170 / 2))))) / 2))))
  loc_195C4E8:               var_28C = (var_26C + Chr(&H12))
  loc_195C4EE:               Print 1, Format(var_26C, "0.00")
  loc_195C511:               var_9E = (var_9E + 1)
  loc_195C554:               var_170 = (38 - Len(var_C4.Fields.Item("Department").Value))
  loc_195C55D:               var_180 = (var_170 / 2)
  loc_195C57A:               var_12C = var_C4.Fields
  loc_195C5C9:               var_25C = (38 - Len(var_C4.Fields.Item("Department").Value))
  loc_195C5D2:               var_26C = (Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_12C.Item("Department")), "0.00")), 9, Space(CLng((var_170 / 2))))) / 2))) / 2)
  loc_195C5F3:               var_1D4 = (Chr(&HF) + Space(CLng(var_180)))
  loc_195C5FA:               var_224 = (CVar(var_12C.Item("Amount")) + Trim(CVar(var_12C.Item("Department"))))
  loc_195C601:               var_28C = (Len(Trim(var_9C)) + Space(CLng(var_26C)))
  loc_195C608:               var_2AC = (Format(var_26C, "0.00") + Chr(&H12))
  loc_195C60E:               Print 1, var_2AC
  loc_195C658:               var_120 = var_C0.Fields
  loc_195C69A:               Proc_6_39_E7D3A0(var_180, CVar(var_C0.Fields.Item("VNo")), var_120, var_9E)
  loc_195C6BC:               var_190 = CVar(Proc_6_38_E69628(CVar(var_120.Item("vType")), var_9E, var_C0.Fields, var_BA, var_9E) & "/" & MemVar_1F95168 & "/") 'String
  loc_195C727:               var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_195C731:               var_204 = (var_C4.Fields.Item("Department").Value + CVar(Proc_6_45_EADFB8(CStr(var_190 & var_180), &H10, var_120)))
  loc_195C73A:               var_224 = (Trim(CVar(var_C0.Fields.Item("Department"))) + "Dt : ")
  loc_195C744:               var_25C = (Len(Trim(var_9C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_9E), &HB)))
  loc_195C74B:               var_27C = (Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(CStr(var_190 & var_180), &H10, var_120)), "0.00")), 9, Space(CLng((CVar(var_C0.Fields.Item("VNo")) / 2))))) / 2))) + Chr(&H12))
  loc_195C751:               Print 1, Space(CLng(Chr(&H12)))
  loc_195C7CF:               If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType"))) = "Outlet") Then
  loc_195C87F:                 var_150 = (Chr(&HF) + "Table No. : ")
  loc_195C889:                 var_180 = (var_C4.Fields.Item("Department").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195C890:                 var_1D4 = (var_180 + Space(2))
  loc_195C899:                 var_1E4 = (Space(2) & var_180 + "Time : ")
  loc_195C8A3:                 var_234 = (CVar(Proc_6_45_EADFB8(CStr(Space(2) & var_180), &H10, var_C0.Fields)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195C8AA:                 var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195C8B0:                 Print 1, Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(CStr(Space(2) & var_180), &H10, var_C0.Fields)), "0.00")), 9, Space(CLng((CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)) / 2))))) / 2)))
  loc_195C8EF:                 var_9E = (var_9E + 1)
  loc_195C8F2:               End If
  loc_195C915:               var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195C91C:               var_170 = (var_C4.Fields.Item("Department").Value + Chr(&H12))
  loc_195C922:               Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5))
  loc_195C9A4:               var_244 = Chr(&H12)
  loc_195C9B2:               var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_195C9B9:               var_180 = (Chr(&H12) + Space(1))
  loc_195C9C3:               var_1D4 = (var_180 + CVar(Proc_6_45_EADFB8("Particulars", &H1B)))
  loc_195C9CA:               var_204 = (CVar(Proc_6_45_EADFB8("Particulars", &H1B)) & var_180 + Space(1))
  loc_195C9D4:               var_234 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_195C9DB:               var_25C = (CVar(var_C0.Fields.Item("VDate")) + var_244)
  loc_195C9E1:               Print 1, Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(Space(1), "0.00")), 9, Space(CLng((Space(1) / 2))))) / 2)))
  loc_195CA36:               var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195CA3D:               var_170 = (CVar(Proc_6_45_EADFB8("SNo", 3)) + Chr(&H12))
  loc_195CA43:               Print 1, Space(1)
  loc_195CA54:               ' Referenced from: 195CBE3
  loc_195CA63:               If Not(var_C8.EOF) Then
  loc_195CA91:                 var_170 = Space(1)
  loc_195CB05:                 Proc_6_39_E7D3A0(var_244, CVar(var_C8.Fields.Item("qty")))
  loc_195CB55:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3)))
  loc_195CB5C:                 var_180 = (Chr(&H12) + var_170)
  loc_195CB66:                 var_1E4 = (var_180 + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H1B)))
  loc_195CB6D:                 var_224 = (Space(1) + Space(1))
  loc_195CB77:                 var_28C = (CVar(Proc_6_52_EAE084("Qty", 6)) + CVar(Proc_6_52_EAE084(CStr(Format(var_244, "0.00")), 6, 1)))
  loc_195CB7E:                 var_2AC = (Format(Format(var_244, "0.00"), "0.00") + Chr(&H12))
  loc_195CB84:                 Print 1, var_2AC
  loc_195CBCC:                 var_C8.MoveNext
  loc_195CBD7:                 var_9E = (var_9E + 1)
  loc_195CBE0:                 var_BA = (var_BA + 1)
  loc_195CBE3:                 GoTo loc_195CA54
  loc_195CBE6:               End If
  loc_195CBE6:             End If
  loc_195CBEB:             Print 1, vbNullString
  loc_195CBF3:             Close 1
  loc_195CC1A:             Open "C:\reptmp\SBILL_" & CStr(var_C4.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_195CC6E:             var_150 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C4.AbsolutePosition) & ".TXT>") 'String
  loc_195CC74:             var_160 = var_150 & MemVar_629D24.Fields.Item("Printer").Value 
  loc_195CC7A:             Print 1, var_160
  loc_195CC99:             Close 1
  loc_195CCA3:             If (MemVar_1F953BC = "Y") Then
  loc_195CCD5:               var_B0 = CVar(Shell(CVar("C:\reptmp\SBILL_" & CStr(var_C4.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_195CCFC:               var_B0 = CVar(Shell("C:\reptmp\SCutter.PIF", 0)) 'Variant
  loc_195CD06:             Else
  loc_195CD35:               var_B0 = CVar(Shell(CVar("C:\reptmp\SBILL_" & CStr(var_C4.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_195CD72:               If (MsgBox("PRESS OK TO CUT THE TOKEN", &H40, var_150, var_160, var_170) = 1) Then
  loc_195CD8E:                 var_B0 = CVar(Shell("C:\reptmp\SCutter.BAT", 0)) 'Variant
  loc_195CD95:               End If
  loc_195CD95:             End If
  loc_195CD98:             var_C4.MoveNext
  loc_195CD9D:             GoTo loc_195C2B5
  loc_195CDA0:           End If
  loc_195CDA0:         End If
  loc_195CDA0:       End If
  loc_195CDA0:     End If
  loc_195CDA3:     var_C0.MoveNext
  loc_195CDA8:     GoTo loc_195A442
  loc_195CDAB:   End If
  loc_195CDAD:   Close 1
  loc_195CDB6:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_195CDEB:   var_150 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_195CDF1:   Print 1, var_150
  loc_195CE07:   Close 1
  loc_195CE11:   If (MemVar_1F953BC = "Y") Then
  loc_195CE2D:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_195CE37:   Else
  loc_195CE50:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_195CE70:     var_B0 = CVar(Shell("C:\reptmp\SCutter.BAT", 0)) 'Variant
  loc_195CE77:   End If
  loc_195CE7C:   Set var_C0 = Nothing
  loc_195CE84:   Set var_CC = Nothing
  loc_195CE8C:   Set var_D0 = Nothing
  loc_195CE94:   Set var_EC = Nothing
  loc_195CE9C:   Set var_C4 = Nothing
  loc_195CEA4:   Set var_C8 = Nothing
  loc_195CEAA: Else
  loc_195CEC3:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_150, var_160, var_170)
  loc_195CED3: End If
  loc_195CED3: Exit Sub
  loc_195CED4: ' Referenced from: 195A27C
  loc_195CED4: Proc_6_60_E63754(var_BA, var_9E, 1)
  loc_195CED9: Exit Sub
End Sub

Public Sub Proc_260_6_1624904
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E0 As Recordset15
  Dim var_110 As Fields15
  Dim var_10C As Variant
  Dim var_148 As Variant
  Dim var_1B8 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1D8 As Variant
  Dim var_1E8 As Variant
  Dim var_2DC As Variant
  Dim var_158 As Variant
  Dim var_1C8 As Variant
  Dim var_1FC As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2EC As Variant
  Dim var_2A4 As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  Dim var_4C4 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16234F0: On Error Goto loc_16248FC
  loc_16234FE: MemVar_629D24.Filter = "ModType='POS'"
  loc_1623519: If (MemVar_629D24.RecordCount > 0) Then
  loc_162351F:   MemVar_1F953C4 = "N"
  loc_1623526:   MemVar_1F953C8 = "N"
  loc_162352D:   MemVar_1F953CC = "K"
  loc_1623557:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_10C, -1
  loc_1623562:   Set var_E0 = var_110
  loc_162357B:   var_F8 = "Select Sale1.* ,W.Name as WaiterName,depart.ShortName From (Sale1 left join waiter W on sale1.waiter=w.code) LEFT JOIN Depart ON Sale1.RestCode = Depart.Code Where Sale1.DocID='" & Me(12)
  loc_1623582:   var_8C = var_F8 & "'"
  loc_162358F:   var_F8 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_16235AF:   var_90 = var_F8 & Me(12) & "' and KOT.CONTRADOCID='" & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_16235D4:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_16235E6:   If (var_8C = vbNullString) Then
  loc_16235E9:     Exit Sub
  loc_16235EA:   End If
  loc_16235F2:   If (var_90 = vbNullString) Then
  loc_16235F5:     Exit Sub
  loc_16235F6:   End If
  loc_16235FE:   If (var_94 = vbNullString) Then
  loc_1623601:     Exit Sub
  loc_1623602:   End If
  loc_1623618:   unk_43FED1.Execute var_8C, var_10C, -1
  loc_1623623:   Set var_BC = var_110
  loc_1623642:   unk_43FED1.Execute var_90, var_10C, -1
  loc_162364D:   Set var_C0 = var_110
  loc_162366C:   unk_43FED1.Execute var_94, var_10C, -1
  loc_1623677:   Set var_C4 = var_110
  loc_1623682:   var_AE = 7
  loc_1623687:   Close 1
  loc_1623690:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1623694:   ' Referenced from: 1624787
  loc_16236A3:   If Not(var_BC.EOF) Then
  loc_16236A8:     var_9A = 0
  loc_16236BF:     var_110 = var_E0.Fields
  loc_1623708:     var_FC = Proc_6_38_E69628(CVar(var_E0.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_110.Item("RestType")), 1, var_9A, var_AE) = "Restaurant"), var_110)
  loc_1623726:     If (var_110 Or (var_FC = "Hall")) Then
  loc_1623737:       var_98 = "** " & "BILL" & " **"
  loc_1623740:     Else
  loc_1623752:       var_110 = var_E0.Fields
  loc_1623776:       var_98 = var_110 & Proc_6_38_E69628(CVar(var_110.Item("Name")), "** ") & " **"
  loc_1623786:     End If
  loc_162378C:     If (var_9A = 0) Then
  loc_16237BD:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_16237F4:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_162385B:       Proc_6_39_E7D3A0(var_1C8, CVar(var_BC.Fields.Item("VNo")))
  loc_162387B:       var_168 = (Space(8) + Trim(CVar(var_BC.Fields.Item("vType"))))
  loc_1623884:       var_178 = (var_168 + "/")
  loc_162388E:       var_198 = (var_178 + CVar(MemVar_1F95168))
  loc_16238A5:       Print 1, var_198 & CVar("/" & Proc_6_45_EADFB8(CStr(var_1C8), &H10))
  loc_16238D4:       Print 1
  loc_1623A3D:       Proc_6_39_E7D3A0(var_2EC, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1623A61:       var_168 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &H12)))
  loc_1623A68:       var_198 = (var_168 + Space(4))
  loc_1623A6F:       var_1C8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) 'String
  loc_1623A72:       var_1D8 = (var_198 + var_1C8)
  loc_1623A79:       var_1FC = (CVar("/" & Proc_6_45_EADFB8(CStr(var_1C8), &H10)) + Space(6))
  loc_1623A83:       var_238 = (var_1FC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_1623A8A:       var_258 = (var_238 + Space(4))
  loc_1623A94:       var_294 = (var_258 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_1623A9B:       var_2B4 = (var_294 + Space(6))
  loc_1623AA5:       var_314 = (var_2B4 + CVar(Proc_6_45_EADFB8(CStr(var_2EC), 7)))
  loc_1623AAB:       Print 1, var_314
  loc_1623B19:       Print 1, vbNullString
  loc_1623B24:       Print 1, vbNullString
  loc_1623B2C:       var_9A = 5
  loc_1623B2F:     End If
  loc_1623B31:     var_B6 = 1
  loc_1623B48:     If (var_C0.RecordCount > 0) Then
  loc_1623B4E:       var_C0.MoveFirst
  loc_1623B53:       ' Referenced from: 1624385
  loc_1623B53:     End If
  loc_1623B62:     If Not(var_C0.EOF) Then
  loc_1623B6B:       If (var_9A = 0) Then
  loc_1623B9C:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_1623BD3:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_1623C3A:         Proc_6_39_E7D3A0(var_1C8, CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_1623C5A:         var_168 = (Space(8) + Trim(CVar(var_BC.Fields.Item("vType"))))
  loc_1623C63:         var_178 = (var_168 + "/")
  loc_1623C6D:         var_198 = (Space(4) + CVar(MemVar_1F95168))
  loc_1623C84:         Print 1, var_198 & CVar("/" & Proc_6_45_EADFB8(CStr(var_1C8), &H10))
  loc_1623CB3:         Print 1
  loc_1623E1C:         Proc_6_39_E7D3A0(var_2EC, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1623E40:         var_168 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_1623E47:         var_198 = (var_168 + Space(4))
  loc_1623E51:         var_1D8 = (var_198 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_1623E58:         var_1FC = (CVar("/" & Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA))), &H10)) + Space(6))
  loc_1623E62:         var_238 = (var_1FC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_1623E69:         var_258 = (var_238 + Space(4))
  loc_1623E73:         var_294 = (var_258 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_1623E7A:         var_2B4 = (var_294 + Space(6))
  loc_1623E81:         var_304 = CVar(Proc_6_45_EADFB8(CStr(var_2EC), 7)) 'String
  loc_1623E84:         var_314 = (var_2B4 + var_304)
  loc_1623E8A:         Print 1, var_314
  loc_1623EF8:         Print 1, vbNullString
  loc_1623F03:         Print 1, vbNullString
  loc_1623F0B:         var_9A = 5
  loc_1623F0E:       End If
  loc_1623FAD:       Proc_6_39_E7D3A0(var_258, CVar(var_C0.Fields.Item("qty")))
  loc_1623FF8:       Proc_6_39_E7D3A0(var_304, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_1624043:       Proc_6_39_E7D3A0(var_3E4, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_1624084:       Proc_6_39_E7D3A0(var_440, CVar(var_C0.Fields.Item("Amt")))
  loc_16240CF:       var_158 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) + Space(4))
  loc_16240E5:       var_178 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("KOTNo").Value), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_16240E8:       var_198 = (1 + var_178)
  loc_16240FC:       var_1C8 = (var_198 + Space(2))
  loc_1624111:       var_1E8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ICODE")), var_9A), 7, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_1624114:       var_1FC = (1 + var_1E8)
  loc_162412D:       var_238 = (var_1FC + CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ItemName").Value), &H1E)))
  loc_1624146:       var_2A4 = (var_238 + CVar(Proc_6_52_EAE084(CStr(Format(var_258, "0")), 4)))
  loc_162415A:       var_2DC = (Space(6) + Space(3))
  loc_1624173:       var_38C = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(Format(var_304, "0.00")), 7)))
  loc_1624187:       var_3AC = (var_38C + Space(1))
  loc_16241C5:       var_4C4 = (var_3AC + IIf((var_3E4 = 0), CVar(Proc_6_45_EADFB8("Free", &HB, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_440, "0.00")), &HB))))
  loc_1624253:       Print 1, CStr(var_4C4)
  loc_162425F:       var_9A = (var_9A + 1)
  loc_162426C:       If (var_9A = (&H1A - var_AE)) Then
  loc_1624283:         If (var_C0.RecordCount = &HE) Then
  loc_162428B:           Print 1, vbNullString
  loc_1624297:           var_9A = (var_9A + 1)
  loc_162429D:         Else
  loc_16242A3:           var_9C = (var_9C + 1)
  loc_16242AB:           Print 1, vbNullString
  loc_16242B7:           var_9A = (var_9A + 1)
  loc_16242CF:           var_148 = (Space(&H3E) + "Contd. Page ")
  loc_16242EA:           Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..."
  loc_1624303:           var_9A = (var_9A + 1)
  loc_1624306:           ' Referenced from:   1624323
  loc_162430C:           If (var_9A <> &H24) Then
  loc_1624314:             Print 1, vbNullString
  loc_1624320:             var_9A = (var_9A + 1)
  loc_1624323:             GoTo loc_1624306
  loc_1624326:           End If
  loc_1624328:           var_9A = 0
  loc_162432B:         End If
  loc_1624358:         Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A, var_9A)
  loc_1624360:         var_158 = (var_9A + CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)))
  loc_1624365:         var_CC = CSng(CVar(CStr(1)))
  loc_162437A:         var_B6 = (var_B6 + 1)
  loc_1624380:         var_C0.MoveNext
  loc_1624385:         GoTo loc_1623B53
  loc_1624388:       End If
  loc_1624388:     End If
  loc_1624392:     If (var_9A < (&H1A - var_AE)) Then
  loc_1624395:       ' Referenced from: 16243B9
  loc_16243A2:       If (var_9A <> ((&H1A - var_AE) + 1)) Then
  loc_16243AA:         Print 1, vbNullString
  loc_16243B6:         var_9A = (var_9A + 1)
  loc_16243B9:         GoTo loc_1624395
  loc_16243BC:       End If
  loc_16243BC:     End If
  loc_16243BF:     var_C4.MoveFirst
  loc_16243C4:     ' Referenced from: 162477C
  loc_16243D3:     If Not(var_C4.EOF) Then
  loc_1624400:       var_4D4 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_162441E:       If (var_4D4 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_1624421:         GoTo loc_1624774
  loc_1624424:       End If
  loc_1624437:       If (var_4D4 = CVar(MemVar_1F95078 & "NET")) Then
  loc_162443F:         Print 1, vbNullString
  loc_162446B:         Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)), CVar(var_C4.Fields.Item("Amount")), var_9A, var_B6, var_CC)
  loc_1624485:         If (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) > 0) Then
  loc_16244BB:           Proc_6_39_E7D3A0(CVar(CStr(1)), CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16244FE:           var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(1)), "0.00")), &H12, 1, 1)))
  loc_1624504:           Print 1, Space(2)
  loc_1624525:         End If
  loc_1624528:       Else
  loc_162453B:         If (var_4D4 = CVar(MemVar_1F95078 & "SCH")) Then
  loc_1624571:           Proc_6_39_E7D3A0(CVar(CStr(1)), CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_16245B4:           var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(1)), "0.00")), &H12, 1)))
  loc_16245BA:           Print 1, Space(2)
  loc_16245DE:         Else
  loc_16245F1:           If (var_4D4 = CVar(MemVar_1F95078 & "ST")) Then
  loc_1624620:             var_148 = CVar(var_C4.Fields.Item("Amount")) 'Address
  loc_1624627:             Proc_6_39_E7D3A0(CVar(CStr(1)), var_148, 1)
  loc_162466A:             var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(1)), "0.00")), &H12, 1)))
  loc_1624670:             Print 1, Space(2)
  loc_1624694:           Else
  loc_16246BA:             Proc_6_39_E7D3A0(var_148, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16246D4:             If (var_148 > 0) Then
  loc_162470A:               Proc_6_39_E7D3A0(CVar(CStr(1)), CVar(var_C4.Fields.Item("Amount")))
  loc_162471E:               var_168 = "0.00"
  loc_162474D:               var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(1)), var_168)), &H12, 1)))
  loc_1624753:               Print 1, Space(2)
  loc_1624774:             End If
  loc_1624774:           End If
  loc_1624774:         End If
  loc_1624774:         ' Referenced from: 1624421
  loc_1624774:       End If
  loc_1624777:       var_C4.MoveNext
  loc_162477C:       GoTo loc_16243C4
  loc_162477F:     End If
  loc_1624782:     var_BC.MoveNext
  loc_1624787:     GoTo loc_1623694
  loc_162478A:   End If
  loc_162478F:   Print 1, vbNullString
  loc_162479A:   Print 1, vbNullString
  loc_16247A5:   Print 1, vbNullString
  loc_16247B0:   Print 1, vbNullString
  loc_16247BB:   Print 1, vbNullString
  loc_16247C6:   Print 1, vbNullString
  loc_16247D1:   Print 1, vbNullString
  loc_16247DC:   Print 1, vbNullString
  loc_16247E7:   Print 1, vbNullString
  loc_16247F2:   Print 1, vbNullString
  loc_16247FD:   Print 1, vbNullString
  loc_1624805:   Close 1
  loc_162480E:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1624843:   var_148 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_1624849:   Print 1, var_148
  loc_162485F:   Close 1
  loc_1624869:   If (MemVar_1F953BC = "Y") Then
  loc_1624885:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_162488F:   Else
  loc_16248A8:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16248AF:   End If
  loc_16248B4:   Set var_BC = Nothing
  loc_16248BC:   Set var_C0 = Nothing
  loc_16248C4:   Set var_C4 = Nothing
  loc_16248CC:   Set var_E0 = Nothing
  loc_16248D2: Else
  loc_16248EB:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_148, CVar(CStr(1)), var_168)
  loc_16248FB: End If
  loc_16248FB: Exit Sub
  loc_16248FC: ' Referenced from: 16234F0
  loc_16248FC: Proc_6_60_E63754(1, var_9A)
  loc_1624901: Exit Sub
End Sub

Public Sub Proc_260_7_16F559C
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E0 As Recordset15
  Dim var_110 As Fields15
  Dim var_10C As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_180 As Variant
  Dim var_194 As String
  Dim var_230 As Variant
  Dim var_2C0 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_2E8 As Variant
  Dim var_268 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_318 As Variant
  Dim var_338 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_4CC As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16F3B9C: On Error Goto loc_16F5594
  loc_16F3BAA: MemVar_629D24.Filter = "ModType='POS'"
  loc_16F3BC5: If (MemVar_629D24.RecordCount > 0) Then
  loc_16F3BCB:   MemVar_1F953C4 = "N"
  loc_16F3BD2:   MemVar_1F953C8 = "N"
  loc_16F3BD9:   MemVar_1F953CC = "K"
  loc_16F3C03:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_10C, -1
  loc_16F3C0E:   Set var_E0 = var_110
  loc_16F3C2E:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_16F3C3B:   var_F8 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_16F3C4B:   var_90 = var_F8 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_16F3C6C:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_16F3C7E:   If (var_8C = vbNullString) Then
  loc_16F3C81:     Exit Sub
  loc_16F3C82:   End If
  loc_16F3C8A:   If (var_90 = vbNullString) Then
  loc_16F3C8D:     Exit Sub
  loc_16F3C8E:   End If
  loc_16F3C96:   If (var_94 = vbNullString) Then
  loc_16F3C99:     Exit Sub
  loc_16F3C9A:   End If
  loc_16F3CB0:   unk_43FED1.Execute var_8C, var_10C, -1
  loc_16F3CBB:   Set var_BC = var_110
  loc_16F3CDA:   unk_43FED1.Execute var_90, var_10C, -1
  loc_16F3CE5:   Set var_C0 = var_110
  loc_16F3D04:   unk_43FED1.Execute var_94, var_10C, -1
  loc_16F3D0F:   Set var_C4 = var_110
  loc_16F3D1A:   Close 1
  loc_16F3D23:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16F3D27:   ' Referenced from: 16F5498
  loc_16F3D36:   If Not(var_BC.EOF) Then
  loc_16F3D3B:     var_9A = 0
  loc_16F3D40:     var_9C = 1
  loc_16F3D52:     var_110 = var_E0.Fields
  loc_16F3D9B:     var_FC = Proc_6_38_E69628(CVar(var_E0.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_110.Item("RestType")), var_9C, var_9A, var_110) = "Restaurant"), var_110)
  loc_16F3DB9:     If (var_110 Or (var_FC = "Hall")) Then
  loc_16F3DCA:       var_98 = "** " & "BILL" & " **"
  loc_16F3DD3:     Else
  loc_16F3DE5:       var_110 = var_E0.Fields
  loc_16F3E09:       var_98 = var_110 & Proc_6_38_E69628(CVar(var_110.Item("Name")), "** ") & " **"
  loc_16F3E19:     End If
  loc_16F3E1F:     If (var_9A = 0) Then
  loc_16F3E94:       var_170 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628("UPTT No: " & var_E0.Fields.Item("LstNo").Value))))
  loc_16F3E9B:       var_190 = (var_170 + Chr(&H12))
  loc_16F3EA1:       Print 1, var_190
  loc_16F3ECE:       var_9A = (var_9A + 1)
  loc_16F3EF2:       Print 1, Proc_260_1_10A4640(var_98, "D", &H3C)
  loc_16F3F06:       Print 1, vbNullString
  loc_16F3F12:       var_9A = (var_9A + 1)
  loc_16F3F43:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_16F3F7A:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16F3FD1:       var_194 = Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C), Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C)), &H1E)
  loc_16F3FDA:       var_150 = (Chr(&H11) + Space(&H14))
  loc_16F3FE3:       var_160 = ("UPTT No: " & var_E0.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_16F3FEA:       var_170 = CVar(var_194) 'String
  loc_16F3FED:       var_180 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628("UPTT No: " & var_E0.Fields.Item("LstNo").Value))) + var_170)
  loc_16F3FF3:       Print 1, Chr(&H12)
  loc_16F4017:       var_9A = (var_9A + 1)
  loc_16F401F:       Print 1, vbNullString
  loc_16F402B:       var_9A = (var_9A + 1)
  loc_16F4033:       Print 1, vbNullString
  loc_16F403F:       var_9A = (var_9A + 1)
  loc_16F4077:       var_2EC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), Proc_260_2_136F49C(var_9C, var_9A, &H3C), Proc_260_2_136F49C(var_9C, var_9A, &H3C))
  loc_16F40A0:       Proc_6_39_E7D3A0(var_170, CVar(var_BC.Fields.Item("VNo")), Proc_260_2_136F49C(var_9C, var_9A, &H3C))
  loc_16F4179:       var_140 = (Chr(&HF) + "Bill No.   : ")
  loc_16F4183:       var_1C8 = (Space(&H14) + CVar(Proc_6_45_EADFB8(CStr(CVar(var_2EC & "/" & MemVar_1F95168 & "/") & var_170), &H10)))
  loc_16F418A:       var_1E8 = (var_1C8 + Space(1))
  loc_16F4193:       var_208 = (var_1E8 + "Dt : ")
  loc_16F419A:       var_248 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), Proc_260_2_136F49C(var_9C, var_9A, &H3C)), &HF)) 'String
  loc_16F419D:       var_258 = (var_208 + var_248)
  loc_16F41A4:       var_278 = (var_258 + Space(4))
  loc_16F41AD:       var_298 = (var_278 + "Time : ")
  loc_16F41B7:       var_2E8 = (var_298 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_16F41BD:       Print 1, var_2E8
  loc_16F421C:       var_9A = (var_9A + 1)
  loc_16F4258:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item("RestType")), Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C)) = "Outlet") Then
  loc_16F42AF:         var_140 = (Chr(&HF) + "Table No.  : ")
  loc_16F42B9:         var_170 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16F42BF:         Print 1, var_170
  loc_16F42E4:         var_9A = (var_9A + 1)
  loc_16F42E7:       End If
  loc_16F4320:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item("RestType")), Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C)) = "Room Service") Then
  loc_16F4377:         var_140 = (Chr(&HF) + "Room No.   : ")
  loc_16F4381:         var_170 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16F4387:         Print 1, var_170
  loc_16F43AC:         var_9A = (var_9A + 1)
  loc_16F43AF:       End If
  loc_16F43E8:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item("RestType")), Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C)) = "Hall") Then
  loc_16F443F:         var_140 = (Chr(&HF) + "Hall  No.  : ")
  loc_16F4449:         var_170 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16F444F:         Print 1, var_170
  loc_16F4474:         var_9A = (var_9A + 1)
  loc_16F4477:       End If
  loc_16F44F7:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_16F4543:         var_194 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("KOTNo")), Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C)), &H34)
  loc_16F454E:         var_140 = (Chr(&HF) + "KOT No.    : ")
  loc_16F4558:         var_170 = (Space(&H14) + CVar(var_194))
  loc_16F455E:         Print 1, (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)
  loc_16F4583:         var_9A = (var_9A + 1)
  loc_16F4586:       End If
  loc_16F459C:       var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F45A2:       Print 1, Space(&H14)
  loc_16F45B5:       var_9A = (var_9A + 1)
  loc_16F45B8:     End If
  loc_16F45DE:     var_150 = (CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C))) + Space(1))
  loc_16F45F8:     var_170 = (Proc_260_2_136F49C(var_9C, var_9A, &H3C) + CVar(Proc_6_45_EADFB8("ITEM NAME", &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16F460C:     var_190 = ((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_16F4626:     var_1C8 = (CVar(var_2EC & "/" & MemVar_1F95168 & "/") & (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAE084("Tax, 6)) 'String)
  loc_16F4632:     var_1D8 = Space(1)
  loc_16F463A:     var_1E8 = (var_1C8 + var_1D8)
  loc_16F4654:     var_230 = (var_1E8 + CVar(Proc_6_52_EAE084("Rate", &HA)))
  loc_16F4668:     var_258 = (CVar(var_BC.Fields.Item("VDate")) + Space(1))
  loc_16F4682:     var_278 = (var_258 + CVar(Proc_6_52_EAE084("Qty", &HA)))
  loc_16F468E:     var_298 = Space(1)
  loc_16F4696:     var_2C0 = (var_278 + var_298)
  loc_16F46B0:     var_2E8 = (CVar(var_BC.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_16F46B5:     var_B4 = CStr(var_2E8)
  loc_16F470A:     var_140 = (Chr(&HF) + CVar(var_B4))
  loc_16F4710:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C)))
  loc_16F4733:     var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F4739:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C), &H3C)))
  loc_16F474C:     var_9A = (var_9A + 1)
  loc_16F4751:     var_B6 = 1
  loc_16F4757:     var_C0.MoveFirst
  loc_16F475C:     ' Referenced from: 16F4C80
  loc_16F476B:     If Not(var_C0.EOF) Then
  loc_16F47BB:       Proc_6_39_E7D3A0(var_1D8, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_16F4806:       Proc_6_39_E7D3A0(var_298, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_16F4851:       Proc_6_39_E7D3A0(var_358, CVar(var_C0.Fields.Item("qty")), 1, 1)
  loc_16F489C:       Proc_6_39_E7D3A0(var_3F0, CVar(var_C0.Fields.Item("Rate")), 1, 1)
  loc_16F48DD:       Proc_6_39_E7D3A0(var_448, CVar(var_C0.Fields.Item("Amt")))
  loc_16F4928:       var_150 = (CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1)) + Space(1))
  loc_16F4941:       var_180 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ItemName").Value), &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16F4955:       var_1B8 = (Space(1) + Space(1))
  loc_16F496E:       var_248 = (Proc_260_2_136F49C(var_9C, var_9A, &H3C) + CVar(Proc_6_52_EAE084(CStr(Format(var_1D8, "0.00")), 6, CVar(Proc_6_52_EAE084("Tax, 6)) 'String)) 'String)
  loc_16F4982:       var_268 = (Space(1) + Space(1))
  loc_16F499B:       var_318 = (CVar(Proc_6_52_EAE084("Qty", &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(var_298, "0.00")), &HA)))
  loc_16F49AF:       var_338 = (var_318 + Space(1))
  loc_16F49C8:       var_398 = (var_338 + CVar(Proc_6_52_EAE084(CStr(Format(var_358, "0.00")), &HA)))
  loc_16F49DC:       var_3B8 = (var_398 + Space(1))
  loc_16F4A1A:       var_4CC = (var_3B8 + IIf((var_3F0 = 0), CVar(Proc_6_45_EADFB8("Free", &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_448, "0.00")), &HA))))
  loc_16F4AB5:       var_140 = (Chr(&HF) + CVar(CStr(var_4CC)))
  loc_16F4ABB:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1))
  loc_16F4AD2:       If (Proc_260_2_136F49C(var_9C, var_9A, &H3C) = (&H45 - var_AE)) Then
  loc_16F4AEB:         var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F4AF1:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1))
  loc_16F4B04:         var_9A = (var_9A + 1)
  loc_16F4B0C:         Print 1, "Contd."
  loc_16F4B18:         var_9A = (var_9A + 1)
  loc_16F4B2D:         Print 1, Chr(&HC)
  loc_16F4B3C:         var_9A = (var_9A + 1)
  loc_16F4B45:         var_9C = (var_9C + 1)
  loc_16F4B4A:         var_9A = 0
  loc_16F4B7C:         var_FC = Proc_260_1_10A4640(var_98, "B", &H3C, Proc_260_2_136F49C(var_9C, Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), &H3C, Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), var_9C))
  loc_16F4B81:         Print 1, var_FC
  loc_16F4B96:         var_9A = (var_9A + 1)
  loc_16F4BAF:         var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F4BB5:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1))
  loc_16F4BC8:         var_9A = (var_9A + 1)
  loc_16F4BE1:         var_140 = (Chr(&HF) + CVar(var_B4))
  loc_16F4BE7:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1))
  loc_16F4C0A:         var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F4C10:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1))
  loc_16F4C23:         var_9A = (var_9A + 1)
  loc_16F4C26:       End If
  loc_16F4C53:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F4C5B:       var_150 = (Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C) + CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1)))
  loc_16F4C60:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_16F4C75:       var_B6 = (var_B6 + 1)
  loc_16F4C7B:       var_C0.MoveNext
  loc_16F4C80:       GoTo loc_16F475C
  loc_16F4C83:     End If
  loc_16F4CA3:     var_150 = (Chr(&HF) + Space(&H35))
  loc_16F4CAD:     var_160 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16F4CB3:     Print 1, var_C0.Fields.Item("ItemName").Value
  loc_16F4CCA:     var_9A = (var_9A + 1)
  loc_16F4CD0:     var_C4.MoveFirst
  loc_16F4CD5:     ' Referenced from: 16F51F2
  loc_16F4CE4:     If Not(var_C4.EOF) Then
  loc_16F4D11:       var_4DC = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_16F4D2F:       If (var_4DC = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_16F4D85:         var_194 = Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), var_B6, var_CC)
  loc_16F4DBB:         Proc_6_39_E7D3A0(var_1D8, CVar(var_C4.Fields.Item("Amount")), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F4E08:         var_150 = (Chr(&HF) + Space(&H23))
  loc_16F4E12:         var_180 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_194))
  loc_16F4E19:         var_1B8 = (Space(1) + Space(4))
  loc_16F4E23:         var_248 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1D8, "0.00")), &HA, 1, 1)))
  loc_16F4E2A:         var_268 = (Space(1) + Chr(&H12))
  loc_16F4E30:         Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_16F4E73:         var_9A = (var_9A + 1)
  loc_16F4E79:       Else
  loc_16F4E8C:         If (var_4DC = CVar(MemVar_1F95078 & "NET")) Then
  loc_16F4EA4:           var_140 = Space(&H35)
  loc_16F4EAF:           var_150 = (Chr(&HF) + var_140)
  loc_16F4EB9:           var_160 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16F4EBF:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_16F4ED6:           var_9A = (var_9A + 1)
  loc_16F4EFF:           Proc_6_39_E7D3A0(var_140, CVar(var_C4.Fields.Item("Amount")), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F4F19:           If (var_140 > 0) Then
  loc_16F4F31:             var_140 = Space(&H23)
  loc_16F4F6F:             var_194 = Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F4FA5:             Proc_6_39_E7D3A0(var_1D8, CVar(var_C4.Fields.Item("Amount")))
  loc_16F4FF2:             var_150 = (Chr(&HF) + var_140)
  loc_16F4FFC:             var_180 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_194))
  loc_16F5003:             var_1B8 = (Space(1) + Space(4))
  loc_16F500D:             var_248 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1D8, "0.00")), &HA, 1)))
  loc_16F5014:             var_268 = (Space(1) + Chr(&H12))
  loc_16F501A:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_16F505D:             var_9A = (var_9A + 1)
  loc_16F5060:           End If
  loc_16F5063:         Else
  loc_16F5089:           Proc_6_39_E7D3A0(var_140, CVar(var_C4.Fields.Item("Amount")), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F50A3:           If (var_140 > 0) Then
  loc_16F512F:             Proc_6_39_E7D3A0(var_1D8, CVar(var_C4.Fields.Item("Amount")))
  loc_16F517C:             var_150 = (Chr(&HF) + Space(&H23))
  loc_16F5186:             var_180 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_16F518D:             var_1B8 = (Space(1) + Space(4))
  loc_16F5197:             var_248 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1D8, "0.00")), &HA, 1)))
  loc_16F519E:             var_268 = (Space(1) + Chr(&H12))
  loc_16F51A4:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_16F51E7:             var_9A = (var_9A + 1)
  loc_16F51EA:           End If
  loc_16F51EA:         End If
  loc_16F51EA:       End If
  loc_16F51ED:       var_C4.MoveNext
  loc_16F51F2:       GoTo loc_16F4CD5
  loc_16F51F5:     End If
  loc_16F520B:     var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F5211:     Print 1, Space(&H23)
  loc_16F5224:     var_9A = (var_9A + 1)
  loc_16F5263:     If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_16F529B:       var_FC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName")), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F52BA:       var_140 = (Chr(&HF) + "Steward Name  : ")
  loc_16F52C4:       var_170 = (Space(&H23) + CVar(Proc_6_45_EADFB8(var_FC, &H14, 1)))
  loc_16F52CA:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16F52EF:       var_9A = (var_9A + 1)
  loc_16F52F2:     End If
  loc_16F533B:     var_194 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("U_Name")), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C)), &HA)
  loc_16F5346:     var_140 = (Chr(&HF) + "User Name     : ")
  loc_16F5350:     var_170 = (Space(&H23) + CVar(var_194))
  loc_16F5356:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16F537B:     var_9A = (var_9A + 1)
  loc_16F5383:     Print 1, vbNullString
  loc_16F538F:     var_9A = (var_9A + 1)
  loc_16F53A7:     var_140 = (Chr(&HF) + "HAVE A NICE DAY ")
  loc_16F53AD:     Print 1, Space(&H23)
  loc_16F53C0:     var_9A = (var_9A + 1)
  loc_16F53E3:     var_150 = (Chr(&HF) + Space(&H32))
  loc_16F53EC:     var_160 = (CVar(var_BC.Fields.Item("U_Name")) + "Guest Signature")
  loc_16F53F2:     Print 1, CVar(var_194)
  loc_16F5409:     var_9A = (var_9A + 1)
  loc_16F5411:     Print 1, vbNullString
  loc_16F541D:     var_9A = (var_9A + 1)
  loc_16F5435:     var_140 = (Chr(&HF) + "# ")
  loc_16F543F:     var_150 = Space(&H32) & CVar(MemVar_1F95220) 
  loc_16F5448:     var_160 = var_150 & " # " 
  loc_16F544E:     Print 1, var_160
  loc_16F5465:     var_9A = (var_9A + 1)
  loc_16F546B:     var_BC.MoveNext
  loc_16F5475:     Print 1, vbNullString
  loc_16F5481:     var_9A = (var_9A + 1)
  loc_16F5489:     Print 1, vbNullString
  loc_16F5495:     var_9A = (var_9A + 1)
  loc_16F5498:     GoTo loc_16F3D27
  loc_16F549B:   End If
  loc_16F549D:   Close 1
  loc_16F54A6:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16F54DB:   var_140 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_16F54E1:   Print 1, var_140
  loc_16F54F7:   Close 1
  loc_16F5501:   If (MemVar_1F953BC = "Y") Then
  loc_16F551D:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16F5527:   Else
  loc_16F5540:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16F5547:   End If
  loc_16F554C:   Set var_BC = Nothing
  loc_16F5554:   Set var_C0 = Nothing
  loc_16F555C:   Set var_C4 = Nothing
  loc_16F5564:   Set var_E0 = Nothing
  loc_16F556A: Else
  loc_16F5583:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_140, var_150, var_160)
  loc_16F5593: End If
  loc_16F5593: Exit Sub
  loc_16F5594: ' Referenced from: 16F3B9C
  loc_16F5594: Proc_6_60_E63754(Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136F49C(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F5599: Exit Sub
End Sub

Public Sub Proc_260_8_1629FCC
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_10C As String
  Dim unk_43FED1 As Connection15
  Dim var_D0 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_F0 As Recordset15
  Dim var_124 As Fields15
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_210 As Variant
  Dim var_290 As Variant
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_228 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_2D8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_368 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_2C4 As String
  Dim var_340 As Variant
  Dim var_120 As Variant
  Dim var_D8 As Double
  loc_1628B6C: On Error Goto loc_1629FC5
  loc_1628B7A: MemVar_629D24.Filter = "ModType='POS'"
  loc_1628B95: If (MemVar_629D24.RecordCount > 0) Then
  loc_1628B9B:   MemVar_1F953C4 = "N"
  loc_1628BA2:   MemVar_1F953C8 = "N"
  loc_1628BA9:   MemVar_1F953CC = "K"
  loc_1628BD3:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_120, -1
  loc_1628BDE:   Set var_F0 = var_124
  loc_1628BF7:   var_10C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_1628BFE:   var_8C = var_10C & "'"
  loc_1628C0B:   var_10C = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_1628C1B:   var_90 = var_10C & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_1628C3C:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_1628C4D:   var_10C = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1628C5D:   var_98 = var_10C & Me(12) & "' ORDER BY I.Kitchen"
  loc_1628C6F:   If (var_8C = vbNullString) Then
  loc_1628C72:     Exit Sub
  loc_1628C73:   End If
  loc_1628C7B:   If (var_90 = vbNullString) Then
  loc_1628C7E:     Exit Sub
  loc_1628C7F:   End If
  loc_1628C87:   If (var_94 = vbNullString) Then
  loc_1628C8A:     Exit Sub
  loc_1628C8B:   End If
  loc_1628CA1:   unk_43FED1.Execute var_8C, var_120, -1
  loc_1628CAC:   Set var_C0 = var_124
  loc_1628CCB:   unk_43FED1.Execute var_90, var_120, -1
  loc_1628CD6:   Set var_CC = var_124
  loc_1628CF5:   unk_43FED1.Execute var_94, var_120, -1
  loc_1628D00:   Set var_D0 = var_124
  loc_1628D1F:   unk_43FED1.Execute var_98, var_120, -1
  loc_1628D2A:   Set var_C4 = var_124
  loc_1628D3C:   var_D0.Filter = "Amount<>0"
  loc_1628D51:   var_EA = CByte(var_D0.RecordCount) 'Byte
  loc_1628D57:   Close 1
  loc_1628D60:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1628D64:   ' Referenced from: 1629E9E
  loc_1628D73:   If Not(var_C0.EOF) Then
  loc_1628D86:     If (0 = 0) Then
  loc_1628D8E:       Print 1, vbNullString
  loc_1628D9A:       var_9E = (var_9E + 1)
  loc_1628DA2:       Print 1, vbNullString
  loc_1628DAE:       var_9E = (var_9E + 1)
  loc_1628DB6:       Print 1, vbNullString
  loc_1628DC2:       var_9E = (var_9E + 1)
  loc_1628DCA:       Print 1, vbNullString
  loc_1628DD6:       var_9E = (var_9E + 1)
  loc_1628DDE:       Print 1, vbNullString
  loc_1628DEA:       var_9E = (var_9E + 1)
  loc_1628DF2:       Print 1, vbNullString
  loc_1628DFE:       var_9E = (var_9E + 1)
  loc_1628E2F:       var_DC = Replace(CStr(Space(&H37)), " ", "-", 1, -1, 0)
  loc_1628E66:       var_E0 = Replace(CStr(Space(&HA)), " ", "-", 1, -1, 0)
  loc_1628EAD:       var_15C = (Space(1) + Trim(CVar(var_F0.Fields.Item("Name"))))
  loc_1628EB3:       Print 1, var_15C
  loc_1628ECD:       var_9E = (var_9E + 1)
  loc_1628ED5:       Print 1, vbNullString
  loc_1628EE1:       var_9E = (var_9E + 1)
  loc_1628EE9:       Print 1, vbNullString
  loc_1628EF5:       var_9E = (var_9E + 1)
  loc_1628F98:       var_1D8 = Space(2)
  loc_162902C:       var_290 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")))) 'String
  loc_162907F:       Proc_6_39_E7D3A0(var_340, CVar(var_C0.Fields.Item("VNo")))
  loc_162909F:       var_14C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), 0, 0, 0, 0, 0, 0), &HF, 0, 0)) 'String
  loc_16290A2:       var_15C = (Space(1) + var_14C)
  loc_16290A9:       var_17C = (var_15C + Space(2))
  loc_16290B3:       var_1C8 = (var_17C + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), 0, 1), &HA)))
  loc_16290BA:       var_1E8 = (var_1C8 + var_1D8)
  loc_16290C4:       var_238 = (var_1E8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME")), 0), 5)))
  loc_16290CB:       var_258 = (var_238 + Space(2))
  loc_16290D2:       var_2D8 = CVar(Proc_6_45_EADFB8(CStr(Format(var_290, "dd/MM/yy")), &HB, 1)) 'String
  loc_16290D5:       var_2E8 = (var_258 + var_2D8)
  loc_16290DC:       var_308 = (var_2E8 + Space(2))
  loc_16290E6:       var_368 = (var_308 + CVar(Proc_6_45_EADFB8(CStr(var_340), &HA)))
  loc_16290EC:       Print 1, var_368
  loc_162915F:       var_9E = (var_9E + 1)
  loc_1629167:       Print 1, vbNullString
  loc_1629173:       var_9E = (var_9E + 1)
  loc_162917B:       Print 1, vbNullString
  loc_1629187:       var_9E = (var_9E + 1)
  loc_162918F:       Print 1, vbNullString
  loc_162919B:       var_9E = (var_9E + 1)
  loc_16291A3:       Print 1, vbNullString
  loc_16291AF:       var_9E = (var_9E + 1)
  loc_16291B2:     End If
  loc_16291B4:     var_BA = 1
  loc_16291BA:     var_CC.MoveFirst
  loc_16291BF:     ' Referenced from: 1629980
  loc_16291CE:     If Not(var_CC.EOF) Then
  loc_162921E:       Proc_6_39_E7D3A0(var_14C, CVar(var_CC.Fields.Item("qty")), var_BA, 0, 0)
  loc_1629269:       Proc_6_39_E7D3A0(var_1D8, CVar(var_CC.Fields.Item("Rate")), 1, 1, 0)
  loc_16292B4:       Proc_6_39_E7D3A0(var_290, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_16292F5:       Proc_6_39_E7D3A0(var_2D8, CVar(var_CC.Fields.Item("Amt")), 0)
  loc_1629341:       var_2C4 = Proc_6_52_EAE084(CStr(Format(var_14C, "0.00")), 6, Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H12, 1))
  loc_1629358:       var_1B8 = (CVar(1 & var_2C4) + Space(7))
  loc_162936E:       var_228 = CVar(Proc_6_52_EAE084(CStr(Format(var_1D8, "0.00")), 9, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), 0, 1), &HA)))) 'String
  loc_1629371:       var_238 = (1 + var_228)
  loc_1629385:       var_258 = (var_238 + Space(4))
  loc_162939B:       var_340 = CVar(Proc_6_52_EAE084(CStr(Format(var_2D8, "0.00")), &HA)) 'String
  loc_16293C3:       var_368 = (var_258 + IIf((var_290 = 0), CVar(Proc_6_45_EADFB8("Free", &HA, 0)), var_340))
  loc_162942B:       Print 1, CStr(var_368)
  loc_1629437:       var_9E = (var_9E + 1)
  loc_162944A:       If (0 = ((&H23 - CInt(var_EA)) - 2)) Then
  loc_1629452:         Print 1, var_DC
  loc_162945E:         var_9E = (var_9E + 1)
  loc_1629466:         Print 1, "Contd."
  loc_1629472:         var_9E = (var_9E + 1)
  loc_1629487:         Print 1, Chr(&HC)
  loc_1629496:         var_9E = (var_9E + 1)
  loc_162949F:         var_A0 = (var_A0 + 1)
  loc_16294AD:         If (0 = 0) Then
  loc_16294B5:           Print 1, vbNullString
  loc_16294C1:           var_9E = (var_9E + 1)
  loc_16294C9:           Print 1, vbNullString
  loc_16294D5:           var_9E = (var_9E + 1)
  loc_16294DD:           Print 1, vbNullString
  loc_16294E9:           var_9E = (var_9E + 1)
  loc_16294F1:           Print 1, vbNullString
  loc_16294FD:           var_9E = (var_9E + 1)
  loc_1629505:           Print 1, vbNullString
  loc_1629511:           var_9E = (var_9E + 1)
  loc_1629519:           Print 1, vbNullString
  loc_1629525:           var_9E = (var_9E + 1)
  loc_1629556:           var_DC = Replace(CStr(Space(&H37)), " ", "-", 1, -1, 0)
  loc_162958D:           var_E0 = Replace(CStr(Space(&HA)), " ", "-", 1, -1, 0)
  loc_16295D4:           var_15C = (Space(1) + Trim(CVar(var_F0.Fields.Item("Name"))))
  loc_16295DA:           Print 1, "0.00"
  loc_16295F4:           var_9E = (var_9E + 1)
  loc_16295FC:           Print 1, vbNullString
  loc_1629608:           var_9E = (var_9E + 1)
  loc_1629610:           Print 1, vbNullString
  loc_162961C:           var_9E = (var_9E + 1)
  loc_162964B:           var_13C = CVar(var_C0.Fields.Item("WaiterName")) 'Address
  loc_16297A6:           Proc_6_39_E7D3A0(var_340, CVar(var_C0.Fields.Item("VNo")))
  loc_16297C9:           var_15C = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_13C, 0, 0, 0, 0, 0, 0), &HF, 0, 0)))
  loc_16297D0:           var_17C = ("0.00" + Space(2))
  loc_16297D7:           var_1B8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), 0, 0), &HA)) 'String
  loc_16297DA:           var_1C8 = (Space(7) + var_1B8)
  loc_16297E1:           var_1E8 = (CVar(var_CC.Fields.Item("Rate")) + Space(2))
  loc_16297EB:           var_238 = ("0.00" + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME")), 1), 5)))
  loc_16297F2:           var_258 = (var_238 + Space(2))
  loc_16297F9:           var_2D8 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")))), "dd/MM/yy")), &HB, 1)) 'String
  loc_16297FC:           var_2E8 = (var_258 + var_2D8)
  loc_1629803:           var_308 = ("0.00" + Space(2))
  loc_162980D:           var_368 = ((CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")))) = 0) + CVar(Proc_6_45_EADFB8(CStr(var_340), &HA)))
  loc_1629813:           Print 1, var_368
  loc_1629886:           var_9E = (var_9E + 1)
  loc_162988E:           Print 1, vbNullString
  loc_162989A:           var_9E = (var_9E + 1)
  loc_16298A2:           Print 1, vbNullString
  loc_16298AE:           var_9E = (var_9E + 1)
  loc_16298B6:           Print 1, vbNullString
  loc_16298C2:           var_9E = (var_9E + 1)
  loc_16298CA:           Print 1, vbNullString
  loc_16298D6:           var_9E = (var_9E + 1)
  loc_16298D9:         End If
  loc_16298DC:       Else
  loc_16298F9:         If (var_CC.RecordCount = var_CC.AbsolutePosition) Then
  loc_16298FC:           ' Referenced from:   1629923
  loc_162990C:           If (0 < ((&H23 - CInt(var_EA)) - 3)) Then
  loc_1629914:             Print 1, vbNullString
  loc_1629920:             var_9E = (var_9E + 1)
  loc_1629923:             GoTo loc_16298FC
  loc_1629926:           End If
  loc_1629926:         End If
  loc_1629926:       End If
  loc_1629953:       Proc_6_39_E7D3A0(var_13C, CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), 0, 0, 0)
  loc_162995B:       var_14C = (0 + var_13C)
  loc_1629960:       var_D8 = CSng(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_13C, 0, 0, 0, 0, 0, 0), &HF, 0, 0)))
  loc_1629975:       var_BA = (var_BA + 1)
  loc_162997B:       var_CC.MoveNext
  loc_1629980:       GoTo loc_16291BF
  loc_1629983:     End If
  loc_1629999:     var_13C = (Space(&H2D) + CVar(var_E0))
  loc_162999F:     Print 1, var_13C
  loc_16299B2:     var_9E = (var_9E + 1)
  loc_16299C1:     var_D0.Filter = 0
  loc_16299C9:     var_D0.MoveFirst
  loc_16299CE:     ' Referenced from: 1629E43
  loc_16299DD:     If Not(var_D0.EOF) Then
  loc_1629A0A:       var_3D0 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1629A28:       If (var_3D0 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_1629AA7:         Proc_6_39_E7D3A0(var_1B8, CVar(var_D0.Fields.Item("Amount")), 0)
  loc_1629AEA:         var_15C = (Space(&H1A) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HE, 0, var_BA, var_D8)))
  loc_1629AF1:         var_17C = ("0.00" + Space(4))
  loc_1629AFB:         var_210 = (Space(7) + CVar(Proc_6_52_EAE084(CStr(Format(var_1B8, "0.00")), &HA, 1, 1)))
  loc_1629B01:         Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1629B3C:         var_9E = (var_9E + 1)
  loc_1629B42:       Else
  loc_1629B55:         If (var_3D0 = CVar(MemVar_1F95078 & "NET")) Then
  loc_1629B6E:           var_13C = (Space(&H2D) + CVar(var_E0))
  loc_1629B74:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_1629B87:           var_9E = (var_9E + 1)
  loc_1629BB0:           Proc_6_39_E7D3A0(var_D0.Fields.Item("DispName").Value, CVar(var_D0.Fields.Item("Amount")), 0, 0)
  loc_1629BCA:           If (var_D0.Fields.Item("DispName").Value > 0) Then
  loc_1629BFC:             var_13C = var_D0.Fields.Item("DispName").Value
  loc_1629C49:             Proc_6_39_E7D3A0(var_1B8, CVar(var_D0.Fields.Item("Amount")))
  loc_1629C8C:             var_15C = (Space(&H1A) + CVar(Proc_6_45_EADFB8(CStr(var_13C), &HE, 0)))
  loc_1629C93:             var_17C = ("0.00" + Space(4))
  loc_1629C9D:             var_210 = (Space(7) + CVar(Proc_6_52_EAE084(CStr(Format(var_1B8, "0.00")), &HA, 1)))
  loc_1629CA3:             Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1629CDE:             var_9E = (var_9E + 1)
  loc_1629CE1:           End If
  loc_1629CE4:         Else
  loc_1629D0A:           Proc_6_39_E7D3A0(var_13C, CVar(var_D0.Fields.Item("Amount")), 0)
  loc_1629D24:           If (var_13C > 0) Then
  loc_1629DA3:             Proc_6_39_E7D3A0(var_1B8, CVar(var_D0.Fields.Item("Amount")))
  loc_1629DE3:             var_14C = CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HE, 1)) 'String
  loc_1629DE6:             var_15C = (Space(&H1A) + var_14C)
  loc_1629DED:             var_17C = ("0.00" + Space(4))
  loc_1629DF7:             var_210 = (Space(7) + CVar(Proc_6_52_EAE084(CStr(Format(var_1B8, "0.00")), &HA, 1)))
  loc_1629DFD:             Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1629E38:             var_9E = (var_9E + 1)
  loc_1629E3B:           End If
  loc_1629E3B:         End If
  loc_1629E3B:       End If
  loc_1629E3E:       var_D0.MoveNext
  loc_1629E43:       GoTo loc_16299CE
  loc_1629E46:     End If
  loc_1629E4B:     Print 1, var_DC
  loc_1629E57:     var_9E = (var_9E + 1)
  loc_1629E5F:     Print 1, vbNullString
  loc_1629E6B:     var_9E = (var_9E + 1)
  loc_1629E71:     var_C0.MoveNext
  loc_1629E7B:     Print 1, vbNullString
  loc_1629E87:     var_9E = (var_9E + 1)
  loc_1629E8F:     Print 1, vbNullString
  loc_1629E9B:     var_9E = (var_9E + 1)
  loc_1629E9E:     GoTo loc_1628D64
  loc_1629EA1:   End If
  loc_1629EB3:   Print 1, Chr(&HC)
  loc_1629EBE:   Close 1
  loc_1629EC7:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1629EFC:   var_13C = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_1629F02:   Print 1, var_13C
  loc_1629F18:   Close 1
  loc_1629F22:   If (MemVar_1F953BC = "Y") Then
  loc_1629F3E:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1629F48:   Else
  loc_1629F61:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1629F68:   End If
  loc_1629F6D:   Set var_C0 = Nothing
  loc_1629F75:   Set var_CC = Nothing
  loc_1629F7D:   Set var_D0 = Nothing
  loc_1629F85:   Set var_F0 = Nothing
  loc_1629F8D:   Set var_C4 = Nothing
  loc_1629F95:   Set var_C8 = Nothing
  loc_1629F9B: Else
  loc_1629FB4:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_13C, var_14C, "0.00")
  loc_1629FC4: End If
  loc_1629FC4: Exit Sub
  loc_1629FC5: ' Referenced from: 1628B6C
  loc_1629FC5: Proc_6_60_E63754(0, 0, 0, 0)
  loc_1629FCA: Exit Sub
End Sub

Public Sub Proc_260_9_1A82784
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_138 As String
  Dim var_13C As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_FC As Recordset15
  Dim var_140 As Fields15
  Dim var_134 As Variant
  Dim var_14C As Fields15
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1A0 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_220 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_410 As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_100 As Recordset15
  Dim var_EC As Recordset15
  Dim var_EE As Integer
  Dim var_F8 As Double
  loc_1A7EBC0: On Error Goto loc_1A8277B
  loc_1A7EBD9: If (MemVar_629D24.RecordCount > 0) Then
  loc_1A7EBE7:   If CBool(var_114 <> "Yes") Then
  loc_1A7EBED:     MemVar_1F953C4 = "N"
  loc_1A7EBF4:     MemVar_1F953C8 = "N"
  loc_1A7EBFB:     MemVar_1F953CC = "K"
  loc_1A7EC25:     unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_134, -1
  loc_1A7EC30:     Set var_FC = var_140
  loc_1A7EC49:     var_138 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_1A7EC50:     var_8C = var_138 & "'"
  loc_1A7EC5D:     var_138 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_1A7EC6D:     var_90 = var_138 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_1A7EC8E:     var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_1A7EC9F:     var_138 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1A7ECAF:     var_98 = var_138 & Me(12) & "' ORDER BY I.Kitchen"
  loc_1A7ECC1:     If (var_8C = vbNullString) Then
  loc_1A7ECC4:       Exit Sub
  loc_1A7ECC5:     End If
  loc_1A7ECCD:     If (var_90 = vbNullString) Then
  loc_1A7ECD0:       Exit Sub
  loc_1A7ECD1:     End If
  loc_1A7ECD9:     If (var_94 = vbNullString) Then
  loc_1A7ECDC:       Exit Sub
  loc_1A7ECDD:     End If
  loc_1A7ECF3:     unk_43FED1.Execute var_8C, var_134, -1
  loc_1A7ECFE:     Set var_C0 = var_140
  loc_1A7ED1D:     unk_43FED1.Execute var_90, var_134, -1
  loc_1A7ED28:     Set var_CC = var_140
  loc_1A7ED47:     unk_43FED1.Execute var_94, var_134, -1
  loc_1A7ED52:     Set var_D0 = var_140
  loc_1A7ED71:     unk_43FED1.Execute var_98, var_134, -1
  loc_1A7ED7C:     Set var_C4 = var_140
  loc_1A7ED87:     Close 1
  loc_1A7ED90:     Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A7ED94:     ' Referenced from: 1A80787
  loc_1A7EDA3:     If Not(var_C0.EOF) Then
  loc_1A7EDD4:       var_DC = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1A7EDDF:       var_9E = 0
  loc_1A7EDE4:       var_A0 = 1
  loc_1A7EDF6:       var_140 = var_FC.Fields
  loc_1A7EE3F:       var_13C = Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_140.Item("RestType")), var_A0, var_9E, var_140) = "Restaurant"), var_140)
  loc_1A7EE5D:       If (var_140 Or (var_13C = "Hall")) Then
  loc_1A7EE6E:         var_9C = "** " & "BILL" & " **"
  loc_1A7EE77:       Else
  loc_1A7EE86:         var_140 = var_FC.Fields
  loc_1A7EE9F:         var_9C = Proc_6_38_E69628(CVar(var_140.Item("Name")), var_140)
  loc_1A7EEA8:       End If
  loc_1A7EEAE:       If (var_9E = 0) Then
  loc_1A7EEDF:         var_DC = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1A7EF16:         var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1A7EF81:         var_190 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_FC.Fields.Item("LstNo"))), &H1E)))
  loc_1A7EF88:         var_1B0 = (var_190 + Chr(&H12))
  loc_1A7EF8E:         Print 1, var_1B0
  loc_1A7EFB5:         var_9E = (var_9E + 1)
  loc_1A7EFC8:         var_9E = Proc_260_2_136F49C(var_A0, var_9E, &H26)
  loc_1A7F023:         var_13C = Proc_6_38_E69628(CVar(var_FC.Fields.Item("OutletTitle")), (Proc_6_38_E69628(CVar(var_FC.Fields.Item("OutletTitle")), var_9E) = "Y"))
  loc_1A7F041:         If (var_9E Or (var_13C = vbNullString)) Then
  loc_1A7F073:           var_180 = (CVar(Proc_260_1_10A4640(var_9C, "D")) + Chr(&H12))
  loc_1A7F079:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_FC.Fields.Item("LstNo"))), &H1E))
  loc_1A7F08F:         End If
  loc_1A7F0CB:         var_E4 = Proc_6_45_EADFB8("PHONE NO." & Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, &H26), &H28), &H28)
  loc_1A7F104:         var_190 = (38 - Len(Trim(var_E4)))
  loc_1A7F10D:         var_1A0 = (var_190 / 2)
  loc_1A7F137:         var_250 = (38 - Len(Trim(var_E4)))
  loc_1A7F161:         var_1E0 = (Chr(&HF) + Space(CLng(var_1A0)))
  loc_1A7F16B:         var_200 = (var_1E0 + CVar(var_E4))
  loc_1A7F172:         var_290 = (var_200 + Space(CLng((var_250 / 2))))
  loc_1A7F179:         var_2B0 = (var_290 + Chr(&H12))
  loc_1A7F17F:         Print 1, var_2B0
  loc_1A7F1A2:         var_9E = (var_9E + 1)
  loc_1A7F1AA:         Print 1, vbNullString
  loc_1A7F20E:         Proc_6_39_E7D3A0(var_1A0, CVar(var_C0.Fields.Item("VNo")))
  loc_1A7F244:         var_2C0 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_1A0), &H10)
  loc_1A7F28E:         var_290 = Chr(&H12)
  loc_1A7F29B:         var_170 = (Chr(&HF) + "Bill No.  : ")
  loc_1A7F2A5:         var_220 = (Trim(var_E4) + CVar(var_2C0))
  loc_1A7F2AE:         var_230 = (Trim(var_E4) + "Dt : ")
  loc_1A7F2B8:         var_280 = (Len(Trim(var_E4)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate"))), &HB)))
  loc_1A7F2BF:         var_2A0 = (Space(CLng((CVar(var_C0.Fields.Item("VDate")) / 2))) + var_290)
  loc_1A7F2C5:         Print 1, Chr(&H12)
  loc_1A7F310:         var_9E = (var_9E + 1)
  loc_1A7F34C:         If (Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_1A7F3EF:           var_170 = (Chr(&HF) + "Table No. : ")
  loc_1A7F3F9:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7F402:           var_1B0 = (var_1A0 + "Time : ")
  loc_1A7F40C:           var_220 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7F413:           var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7F419:           Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7F454:           var_9E = (var_9E + 1)
  loc_1A7F457:         End If
  loc_1A7F490:         If (Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_1A7F533:           var_170 = (Chr(&HF) + "Room No.  : ")
  loc_1A7F53D:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7F546:           var_1B0 = (var_1A0 + "Time : ")
  loc_1A7F550:           var_220 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7F557:           var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7F55D:           Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7F598:           var_9E = (var_9E + 1)
  loc_1A7F59B:         End If
  loc_1A7F5D4:         If (Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_1A7F677:           var_170 = (Chr(&HF) + "Hall  No. : ")
  loc_1A7F681:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7F68A:           var_1B0 = (var_1A0 + "Time : ")
  loc_1A7F694:           var_220 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7F69B:           var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7F6A1:           Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7F6DC:           var_9E = (var_9E + 1)
  loc_1A7F6DF:         End If
  loc_1A7F6EA:         If (var_2D8 = "Y") Then
  loc_1A7F74E:           var_170 = (Chr(&HF) + "Order No. : ")
  loc_1A7F758:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H1C)))
  loc_1A7F75F:           var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A7F765:           Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A7F78E:           var_9E = (var_9E + 1)
  loc_1A7F791:         End If
  loc_1A7F7F0:         If CBool((Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KotYN")), var_9E))) = "Y") And (var_2D8 <> "Y")) Then
  loc_1A7F854:           var_170 = (Chr(&HF) + "KOT No.   : ")
  loc_1A7F85E:           var_1A0 = (CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo"))), &H1C)))
  loc_1A7F865:           var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A7F86B:           Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A7F894:           var_9E = (var_9E + 1)
  loc_1A7F897:         End If
  loc_1A7F8BA:         var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7F8C1:         var_190 = (CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + Chr(&H12))
  loc_1A7F8C7:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo"))), &H1C))
  loc_1A7F8DE:         var_9E = (var_9E + 1)
  loc_1A7F907:         var_180 = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Space(1))
  loc_1A7F921:         var_1A0 = (var_9E + CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))
  loc_1A7F92D:         var_1B0 = Space(1)
  loc_1A7F935:         var_1E0 = (var_1A0 + var_1B0)
  loc_1A7F94F:         var_220 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1A7F963:         var_250 = (Trim(var_E4) + Space(1))
  loc_1A7F97D:         var_280 = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_1A7F9D0:         var_170 = (Chr(&HF) + CVar(CStr(Space(CLng((CVar(var_C0.Fields.Item("VDate")) / 2))))))
  loc_1A7F9D7:         var_190 = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A7F9DD:         Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A7F9F4:         var_9E = (var_9E + 1)
  loc_1A7FA1A:         var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7FA21:         var_190 = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A7FA27:         Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A7FA3E:         var_9E = (var_9E + 1)
  loc_1A7FA43:         var_BA = 1
  loc_1A7FA49:         var_CC.MoveFirst
  loc_1A7FA4E:         ' Referenced from: 1A7FD68
  loc_1A7FA5D:         If Not(var_CC.EOF) Then
  loc_1A7FAAD:           Proc_6_39_E7D3A0(var_1B0, CVar(var_CC.Fields.Item("Rate")), var_BA)
  loc_1A7FACD:           var_200 = Format(var_1B0, "0.00")
  loc_1A7FAF8:           Proc_6_39_E7D3A0(var_290, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1A7FB43:           Proc_6_39_E7D3A0(var_344, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_1A7FB84:           Proc_6_39_E7D3A0(var_38C, CVar(var_CC.Fields.Item("Amt")))
  loc_1A7FBCE:           var_190 = (CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H10, 1)) + Space(1))
  loc_1A7FBE7:           var_230 = (1 + CVar(Proc_6_52_EAE084(CStr(var_200), 6, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))))
  loc_1A7FBFB:           var_270 = (Space(1) + Space(1))
  loc_1A7FC14:           var_2FC = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_290, "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A7FC28:           var_31C = (var_2FC + Space(1))
  loc_1A7FC5E:           var_400 = IIf((var_344 = 0), CVar(Proc_6_45_EADFB8("Free", 9, var_9E)), CVar(Proc_6_52_EAE084(CStr(Format(var_38C, "0.00")), 9)))
  loc_1A7FC66:           var_410 = (var_31C + var_400)
  loc_1A7FCF0:           var_170 = (Chr(&HF) + CVar(CStr(var_410)))
  loc_1A7FCF7:           var_190 = (Space(1) + Chr(&H12))
  loc_1A7FCFD:           Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A7FD3B:           Proc_6_39_E7D3A0(Space(1), CVar(var_CC.Fields.Item("Amt")))
  loc_1A7FD43:           var_180 = (CVar(var_D8) + Space(1))
  loc_1A7FD48:           var_D8 = CSng(Chr(&H12))
  loc_1A7FD5D:           var_BA = (var_BA + 1)
  loc_1A7FD63:           var_CC.MoveNext
  loc_1A7FD68:           GoTo loc_1A7FA4E
  loc_1A7FD6B:         End If
  loc_1A7FD98:         var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A7FDA2:         var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A7FDA9:         var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A7FDAF:         Print 1, var_1B0
  loc_1A7FDCA:         var_9E = (var_9E + 1)
  loc_1A7FDD0:         var_D0.MoveFirst
  loc_1A7FDD5:         ' Referenced from: 1A80301
  loc_1A7FDE4:         If Not(var_D0.EOF) Then
  loc_1A7FE11:           var_420 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1A7FE2F:           If (var_420 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_1A7FE7F:             Proc_6_39_E7D3A0(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A7FEC9:             var_190 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1A7FEDD:             var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A7FEF6:             var_270 = (var_BA + CVar(Proc_6_52_EAE084(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A7FF4C:             var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A7FF53:             var_190 = (var_D0.Fields.Item("DispName").Value + Chr(&H12))
  loc_1A7FF59:             Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A7FF70:             var_9E = (var_9E + 1)
  loc_1A7FF76:           Else
  loc_1A7FF89:             If (var_420 = CVar(MemVar_1F95078 & "NET")) Then
  loc_1A7FFB9:               var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A7FFC3:               var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A7FFCA:               var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A7FFD0:               Print 1, var_1B0
  loc_1A7FFEB:               var_9E = (var_9E + 1)
  loc_1A80010:               var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A8003B:               Proc_6_39_E7D3A0(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A80085:               var_190 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A80099:               var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A800B2:               var_270 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A8010B:               Proc_6_39_E7D3A0(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A80125:               If (var_170 > 0) Then
  loc_1A8014B:                 var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A80152:                 var_190 = (var_170 + Chr(&H12))
  loc_1A80158:                 Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A8016F:                 var_9E = (var_9E + 1)
  loc_1A80172:               End If
  loc_1A80175:             Else
  loc_1A80197:               var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A801AB:               var_14C = var_D0.Fields
  loc_1A801C2:               Proc_6_39_E7D3A0(var_200, CVar(var_14C.Item("Amount")), var_9E)
  loc_1A8020C:               var_190 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A80220:               var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A80239:               var_270 = (var_D8 + CVar(Proc_6_52_EAE084(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A80292:               Proc_6_39_E7D3A0(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A802AC:               If (var_170 > 0) Then
  loc_1A802D2:                 var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A802D9:                 var_190 = (var_170 + Chr(&H12))
  loc_1A802DF:                 Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A802F6:                 var_9E = (var_9E + 1)
  loc_1A802F9:               End If
  loc_1A802F9:             End If
  loc_1A802F9:           End If
  loc_1A802FC:           var_D0.MoveNext
  loc_1A80301:           GoTo loc_1A7FDD5
  loc_1A80304:         End If
  loc_1A80327:         var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A8032E:         var_190 = (var_170 + Chr(&H12))
  loc_1A80334:         Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A8034B:         var_9E = (var_9E + 1)
  loc_1A8038A:         If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1A803EE:           var_170 = (Chr(&HF) + "Steward Name  : ")
  loc_1A803F8:           var_1A0 = (var_170 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), var_9E), &H14)))
  loc_1A803FF:           var_1E0 = (Space(1) + Chr(&H12))
  loc_1A80405:           Print 1, CVar(var_14C.Item("Amount"))
  loc_1A8042E:           var_9E = (var_9E + 1)
  loc_1A80431:         End If
  loc_1A80439:         var_134 = Chr(&HF)
  loc_1A8044D:         var_140 = var_C0.Fields
  loc_1A80492:         var_170 = (var_134 + "User Name     : ")
  loc_1A8049C:         var_1A0 = (var_170 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_140.Item("U_Name")), var_9E), &HA)))
  loc_1A804A3:         var_1E0 = (Space(1) + Chr(&H12))
  loc_1A804A9:         Print 1, CVar(var_14C.Item("Amount"))
  loc_1A804D2:         var_9E = (var_9E + 1)
  loc_1A804DA:         Print 1, vbNullString
  loc_1A804E6:         var_9E = (var_9E + 1)
  loc_1A8050F:         unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_134, -1
  loc_1A8051A:         Set var_100 = var_140
  loc_1A8053E:         If (var_100.RecordCount > 0) Then
  loc_1A80581:           If CBool(Trim(CVar(var_100.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1A8058C:             var_134 = Chr(&HF)
  loc_1A805A0:             var_140 = var_100.Fields
  loc_1A805CF:             var_190 = (var_134 + Trim(CVar(var_140.Item("Slogan1"))))
  loc_1A805D6:             var_1B0 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_140.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A805DC:             Print 1, Chr(&H12)
  loc_1A805FA:             var_9E = (var_9E + 1)
  loc_1A805FD:           End If
  loc_1A805FD:         End If
  loc_1A80602:         Set var_100 = Nothing
  loc_1A8062B:         unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_134, -1
  loc_1A80636:         Set var_100 = var_140
  loc_1A8065A:         If (var_100.RecordCount > 0) Then
  loc_1A8069D:           If CBool(Trim(CVar(var_100.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1A806EB:             var_190 = (Chr(&HF) + Trim(CVar(var_100.Fields.Item("Slogan2"))))
  loc_1A806F2:             var_1B0 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_100.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A806F8:             Print 1, Chr(&H12)
  loc_1A80716:             var_9E = (var_9E + 1)
  loc_1A80719:           End If
  loc_1A80719:         End If
  loc_1A8071E:         Set var_100 = Nothing
  loc_1A80744:         var_170 = (Chr(&HF) + CVar(MemVar_1F95220))
  loc_1A8074B:         var_190 = (CVar(var_100.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1A80751:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_100.Fields.Item("U_Name")), var_9E), &HA))
  loc_1A80768:         var_9E = (var_9E + 1)
  loc_1A80770:         Print 1, vbNullString
  loc_1A8077C:         var_9E = (var_9E + 1)
  loc_1A8077F:       End If
  loc_1A80782:       var_C0.MoveNext
  loc_1A80787:       GoTo loc_1A7ED94
  loc_1A8078A:     End If
  loc_1A8078C:     Close 1
  loc_1A80795:     Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A807AD:     var_140 = MemVar_629D24.Fields
  loc_1A807CA:     var_170 = "TYPE C:\reptmp\TEXTFILE.TXT>" & var_140.Item("Printer").Value 
  loc_1A807D0:     Print 1, var_170
  loc_1A807E6:     Close 1
  loc_1A807F0:     If (MemVar_1F953BC = "Y") Then
  loc_1A8080C:       var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A80816:     Else
  loc_1A80820:       var_134 = "C:\reptmp\SBILL.BAT"
  loc_1A8082F:       var_B0 = CVar(Shell(var_134, 0)) 'Variant
  loc_1A80836:     End If
  loc_1A80839:   Else
  loc_1A8085F:     unk_43FED1.Execute "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_134, -1
  loc_1A8086A:     Set var_EC = var_140
  loc_1A80889:     var_EE = CInt(var_EC.RecordCount)
  loc_1A8088F:     var_F8 = CDbl(0)
  loc_1A808A6:     If (var_EC.RecordCount > 0) Then
  loc_1A808AB:       Close 1
  loc_1A808B4:       Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A808BB:       var_EC.MoveFirst
  loc_1A808C0:       ' Referenced from:   1A8265F
  loc_1A808CF:       If Not(var_EC.EOF) Then
  loc_1A808D5:         MemVar_1F953C4 = "N"
  loc_1A808DC:         MemVar_1F953C8 = "N"
  loc_1A808E3:         MemVar_1F953CC = "K"
  loc_1A80906:         var_140 = var_EC.Fields
  loc_1A8091F:         var_138 = Proc_6_38_E69628(CVar(var_140.Item("OutletCode")), "Select * from Depart Where Code='", var_170, -1, var_14C, var_F8, var_EE)
  loc_1A80933:         unk_43FED1.Execute var_140 & "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_9E, var_9E
  loc_1A8093E:         Set var_FC = var_14C
  loc_1A80987:         var_170 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & var_EC.Fields.Item("OutletDocid").Value 
  loc_1A80995:         var_8C = CStr(var_170 & "'")
  loc_1A809AF:         var_170 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='") 'String
  loc_1A809EA:         var_90 = CStr(var_170 & var_EC.Fields.Item("OutletDocid").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_1A80A33:         var_180 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_EC.Fields.Item("OutletDocid").Value 
  loc_1A80A41:         var_94 = CStr(var_180 & "' order by sno ")
  loc_1A80A5D:         var_170 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1A80A72:         var_140 = var_EC.Fields
  loc_1A80A82:         var_134 = var_140.Item("OutletDocid").Value
  loc_1A80A98:         var_98 = CStr(var_170 & var_134 & "' ORDER BY I.Kitchen")
  loc_1A80AB5:         If (var_8C = vbNullString) Then
  loc_1A80AB8:           Exit Sub
  loc_1A80AB9:         End If
  loc_1A80AC1:         If (var_90 = vbNullString) Then
  loc_1A80AC4:           Exit Sub
  loc_1A80AC5:         End If
  loc_1A80ACD:         If (var_94 = vbNullString) Then
  loc_1A80AD0:           Exit Sub
  loc_1A80AD1:         End If
  loc_1A80AE7:         unk_43FED1.Execute var_8C, var_134, -1
  loc_1A80AF2:         Set var_C0 = var_140
  loc_1A80B11:         unk_43FED1.Execute var_90, var_134, -1
  loc_1A80B1C:         Set var_CC = var_140
  loc_1A80B3B:         unk_43FED1.Execute var_94, var_134, -1
  loc_1A80B46:         Set var_D0 = var_140
  loc_1A80B65:         unk_43FED1.Execute var_98, var_134, -1
  loc_1A80B70:         Set var_C4 = var_140
  loc_1A80B79:         ' Referenced from:   1A82654
  loc_1A80B88:         If Not(var_C0.EOF) Then
  loc_1A80BB9:           var_DC = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1A80BC4:           var_9E = 0
  loc_1A80BC9:           var_A0 = 1
  loc_1A80BDB:           var_140 = var_FC.Fields
  loc_1A80C24:           var_13C = Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_140.Item("RestType")), var_A0, var_9E, var_140, var_140) = "Restaurant"), var_140, var_140)
  loc_1A80C42:           If (var_9E Or (var_13C = "Hall")) Then
  loc_1A80C53:             var_9C = "** " & "BILL" & " **"
  loc_1A80C5C:           Else
  loc_1A80C6B:             var_140 = var_FC.Fields
  loc_1A80C84:             var_9C = Proc_6_38_E69628(CVar(var_140.Item("Name")), var_140)
  loc_1A80C8D:           End If
  loc_1A80C93:           If (var_9E = 0) Then
  loc_1A80CC4:             var_DC = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1A80CFB:             var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1A80D66:             var_190 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_FC.Fields.Item("LstNo"))), &H28)))
  loc_1A80D6D:             var_1B0 = (CVar(var_FC.Fields.Item("LstNo")) & Chr(&HF) & "' ORDER BY I.Kitchen" + Chr(&H12))
  loc_1A80D73:             Print 1, Chr(&H12)
  loc_1A80D9A:             var_9E = (var_9E + 1)
  loc_1A80DBC:             var_134 = CVar(var_EC.Fields.Item("OutletCode")) 'Address
  loc_1A80DD9:             var_9E = Proc_260_3_136E304(var_A0, var_9E, &H26)
  loc_1A80E04:             var_134 = CVar(var_FC.Fields.Item("OutletTitle")) 'Address
  loc_1A80E5B:             If (Proc_6_38_E69628(var_134, var_9E) Or (Proc_6_38_E69628(CVar(var_FC.Fields.Item("OutletTitle")), (Proc_6_38_E69628(var_134, var_9E) = "Y")) = vbNullString)) Then
  loc_1A80E8D:               var_180 = (CVar(Proc_260_1_10A4640(var_9C, "D")) + Chr(&H12))
  loc_1A80E93:               Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_FC.Fields.Item("LstNo"))), &H28))
  loc_1A80EA9:             End If
  loc_1A80EE5:             var_E4 = Proc_6_45_EADFB8("PHONE NO." & Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, &H26), &H28), &H28)
  loc_1A80F1E:             var_190 = (38 - Len(Trim(var_E4)))
  loc_1A80F27:             var_1A0 = (Trim(var_E4) & Chr(&HF) & "' ORDER BY I.Kitchen" / 2)
  loc_1A80F51:             var_250 = (38 - Len(Trim(var_E4)))
  loc_1A80F7B:             var_1E0 = (Chr(&HF) + Space(CLng(var_1A0)))
  loc_1A80F85:             var_200 = (CVar(var_FC.Fields.Item("Amount")) + CVar(var_E4))
  loc_1A80F8C:             var_290 = (var_200 + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_200, "0.00")), 9, Space(CLng(var_1A0)))) / 2))))
  loc_1A80F93:             var_2B0 = (var_290 + Chr(&H12))
  loc_1A80F99:             Print 1, Format(var_290, "0.00")
  loc_1A80FBC:             var_9E = (var_9E + 1)
  loc_1A80FC4:             Print 1, vbNullString
  loc_1A81028:             Proc_6_39_E7D3A0(var_1A0, CVar(var_C0.Fields.Item("VNo")))
  loc_1A8105E:             var_2C0 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_1A0), &H10)
  loc_1A810A8:             var_290 = Chr(&H12)
  loc_1A810B5:             var_170 = (Chr(&HF) + "Bill No.  :   ")
  loc_1A810BF:             var_220 = (Trim(var_E4) + CVar(var_2C0))
  loc_1A810C8:             var_230 = (Trim(var_E4) + "Dt :   ")
  loc_1A810D2:             var_280 = (Len(Trim(var_E4)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate"))), &HB)))
  loc_1A810D9:             var_2A0 = (Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_2C0), "0.00")), 9, Space(CLng(var_1A0)))) / 2))) + var_290)
  loc_1A810DF:             Print 1, Chr(&H12)
  loc_1A8112A:             var_9E = (var_9E + 1)
  loc_1A81166:             If (Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_1A81209:               var_170 = (Chr(&HF) + "Table No. :   ")
  loc_1A81213:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A8121C:               var_1B0 = (var_1A0 + "Time :   ")
  loc_1A81226:               var_220 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A8122D:               var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A81233:               Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A8126E:               var_9E = (var_9E + 1)
  loc_1A81271:             End If
  loc_1A812AA:             If (Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_1A8134D:               var_170 = (Chr(&HF) + "Room No.  :   ")
  loc_1A81357:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A81360:               var_1B0 = (var_1A0 + "Time :   ")
  loc_1A8136A:               var_220 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A81371:               var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A81377:               Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A813B2:               var_9E = (var_9E + 1)
  loc_1A813B5:             End If
  loc_1A813EE:             If (Proc_6_38_E69628(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_1A81491:               var_170 = (Chr(&HF) + "Hall  No. :   ")
  loc_1A8149B:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A814A4:               var_1B0 = (var_1A0 + "Time :   ")
  loc_1A814AE:               var_220 = (CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A814B5:               var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A814BB:               Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A814F6:               var_9E = (var_9E + 1)
  loc_1A814F9:             End If
  loc_1A81504:             If (var_2D8 = "Y") Then
  loc_1A81568:               var_170 = (Chr(&HF) + "Order No. :   ")
  loc_1A81572:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H1C)))
  loc_1A81579:               var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A8157F:               Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A815A8:               var_9E = (var_9E + 1)
  loc_1A815AB:             End If
  loc_1A8160A:             If CBool((Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KotYN")), var_9E))) = "Y") And (var_2D8 <> "Y")) Then
  loc_1A8166E:               var_170 = (Chr(&HF) + "KOT No.   :   ")
  loc_1A81678:               var_1A0 = (CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo"))), &H1C)))
  loc_1A8167F:               var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A81685:               Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A816AE:               var_9E = (var_9E + 1)
  loc_1A816B1:             End If
  loc_1A816D4:             var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A816DB:             var_190 = (CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + Chr(&H12))
  loc_1A816E1:             Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo"))), &H1C))
  loc_1A816F8:             var_9E = (var_9E + 1)
  loc_1A81721:             var_180 = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Space(1))
  loc_1A8173B:             var_1A0 = (var_9E + CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))
  loc_1A81747:             var_1B0 = Space(1)
  loc_1A8174F:             var_1E0 = (var_1A0 + var_1B0)
  loc_1A81769:             var_220 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1A8177D:             var_250 = (Trim(var_E4) + Space(1))
  loc_1A81797:             var_280 = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_1A8179C:             var_B8 = CStr(Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Qty", 6)), "0.00")), 9, Space(CLng(var_1A0)))) / 2))))
  loc_1A817EA:             var_170 = (Chr(&HF) + CVar(var_B8))
  loc_1A817F1:             var_190 = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A817F7:             Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A8180E:             var_9E = (var_9E + 1)
  loc_1A81834:             var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A8183B:             var_190 = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A81841:             Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A81858:             var_9E = (var_9E + 1)
  loc_1A8185D:             var_BA = 1
  loc_1A81863:             var_CC.MoveFirst
  loc_1A81868:             ' Referenced from:   1A81B82
  loc_1A81877:             If Not(var_CC.EOF) Then
  loc_1A818C7:               Proc_6_39_E7D3A0(var_1B0, CVar(var_CC.Fields.Item("Rate")), var_BA)
  loc_1A818E7:               var_200 = Format(var_1B0, "0.00")
  loc_1A81912:               Proc_6_39_E7D3A0(var_290, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1A8195D:               Proc_6_39_E7D3A0(var_344, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_1A8199E:               Proc_6_39_E7D3A0(var_38C, CVar(var_CC.Fields.Item("Amt")))
  loc_1A819E8:               var_190 = (CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H10, 1)) + Space(1))
  loc_1A81A01:               var_230 = (1 + CVar(Proc_6_52_EAE084(CStr(var_200), 6, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))))
  loc_1A81A15:               var_270 = (Space(1) + Space(1))
  loc_1A81A2E:               var_2FC = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_290, "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A81A42:               var_31C = (var_2FC + Space(1))
  loc_1A81A78:               var_400 = IIf((var_344 = 0), CVar(Proc_6_45_EADFB8("Free", 9, var_9E)), CVar(Proc_6_52_EAE084(CStr(Format(var_38C, "0.00")), 9)))
  loc_1A81A80:               var_410 = (var_31C + var_400)
  loc_1A81B0A:               var_170 = (Chr(&HF) + CVar(CStr(var_410)))
  loc_1A81B11:               var_190 = (Space(1) + Chr(&H12))
  loc_1A81B17:               Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A81B55:               Proc_6_39_E7D3A0(Space(1), CVar(var_CC.Fields.Item("Amt")))
  loc_1A81B5D:               var_180 = (CVar(var_D8) + Space(1))
  loc_1A81B62:               var_D8 = CSng(Chr(&H12))
  loc_1A81B77:               var_BA = (var_BA + 1)
  loc_1A81B7D:               var_CC.MoveNext
  loc_1A81B82:               GoTo loc_1A81868
  loc_1A81B85:             End If
  loc_1A81BB2:             var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A81BBC:             var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A81BC3:             var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A81BC9:             Print 1, var_1B0
  loc_1A81BE4:             var_9E = (var_9E + 1)
  loc_1A81BEA:             var_D0.MoveFirst
  loc_1A81BEF:             ' Referenced from:   1A82164
  loc_1A81BFE:             If Not(var_D0.EOF) Then
  loc_1A81C2B:               var_430 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1A81C49:               If (var_430 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_1A81C99:                 Proc_6_39_E7D3A0(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A81CE3:                 var_190 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1A81CF7:                 var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A81D10:                 var_270 = (var_BA + CVar(Proc_6_52_EAE084(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A81D66:                 var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A81D6D:                 var_190 = (var_D0.Fields.Item("DispName").Value + Chr(&H12))
  loc_1A81D73:                 Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A81D8A:                 var_9E = (var_9E + 1)
  loc_1A81D90:               Else
  loc_1A81DA3:                 If (var_430 = CVar(MemVar_1F95078 & "NET")) Then
  loc_1A81DD3:                   var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A81DDD:                   var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A81DE4:                   var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A81DEA:                   Print 1, var_1B0
  loc_1A81E05:                   var_9E = (var_9E + 1)
  loc_1A81E2A:                   var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A81E55:                   Proc_6_39_E7D3A0(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A81E9F:                   var_190 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A81EB3:                   var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A81ECC:                   var_270 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A81F25:                   Proc_6_39_E7D3A0(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A81F3F:                   If (var_170 > 0) Then
  loc_1A81F65:                     var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A81F6C:                     var_190 = (var_170 + Chr(&H12))
  loc_1A81F72:                     Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A81F89:                     var_9E = (var_9E + 1)
  loc_1A81F8C:                   End If
  loc_1A81FB9:                   Proc_6_39_E7D3A0(var_170, CVar(var_D0.Fields.Item("Amount")), CVar(var_F8))
  loc_1A81FC1:                   var_180 = (var_9E + var_170)
  loc_1A81FC6:                   var_F8 = CSng(Chr(&H12))
  loc_1A81FD8:                 Else
  loc_1A81FFA:                   var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A82025:                   Proc_6_39_E7D3A0(var_200, CVar(var_D0.Fields.Item("Amount")), var_F8)
  loc_1A8206F:                   var_190 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A82083:                   var_1B0 = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A8209C:                   var_270 = (var_D8 + CVar(Proc_6_52_EAE084(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A820F5:                   Proc_6_39_E7D3A0(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A8210F:                   If (var_170 > 0) Then
  loc_1A82135:                     var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1A8213C:                     var_190 = (var_170 + Chr(&H12))
  loc_1A82142:                     Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A82159:                     var_9E = (var_9E + 1)
  loc_1A8215C:                   End If
  loc_1A8215C:                 End If
  loc_1A8215C:               End If
  loc_1A8215F:               var_D0.MoveNext
  loc_1A82164:               GoTo loc_1A81BEF
  loc_1A82167:             End If
  loc_1A8218A:             var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A82191:             var_190 = (var_170 + Chr(&H12))
  loc_1A82197:             Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1A821AE:             var_9E = (var_9E + 1)
  loc_1A821ED:             If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1A82251:               var_170 = (Chr(&HF) + "Steward Name  :   ")
  loc_1A8225B:               var_1A0 = (var_170 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), var_9E), &H14)))
  loc_1A82262:               var_1E0 = (Space(1) + Chr(&H12))
  loc_1A82268:               Print 1, CVar(var_D0.Fields.Item("Amount"))
  loc_1A82291:               var_9E = (var_9E + 1)
  loc_1A82294:             End If
  loc_1A822F5:             var_170 = (Chr(&HF) + "User Name     :   ")
  loc_1A822FF:             var_1A0 = (var_170 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA)))
  loc_1A82306:             var_1E0 = (Space(1) + Chr(&H12))
  loc_1A8230C:             Print 1, CVar(var_D0.Fields.Item("Amount"))
  loc_1A82335:             var_9E = (var_9E + 1)
  loc_1A8233D:             Print 1, vbNullString
  loc_1A82349:             var_9E = (var_9E + 1)
  loc_1A8238C:             If CBool(Trim(CVar(var_FC.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1A823DA:               var_190 = (Chr(&HF) + Trim(CVar(var_FC.Fields.Item("Slogan1"))))
  loc_1A823E1:               var_1B0 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A823E7:               Print 1, Chr(&H12)
  loc_1A82405:               var_9E = (var_9E + 1)
  loc_1A82408:             End If
  loc_1A82448:             If CBool(Trim(CVar(var_FC.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1A82496:               var_190 = (Chr(&HF) + Trim(CVar(var_FC.Fields.Item("Slogan2"))))
  loc_1A8249D:               var_1B0 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A824A3:               Print 1, Chr(&H12)
  loc_1A824C1:               var_9E = (var_9E + 1)
  loc_1A824C4:             End If
  loc_1A824E7:             var_170 = (Chr(&HF) + CVar(MemVar_1F95220))
  loc_1A824EE:             var_190 = (CVar(var_FC.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1A824F4:             Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA))
  loc_1A8250B:             var_9E = (var_9E + 1)
  loc_1A82513:             Print 1, vbNullString
  loc_1A8251F:             var_9E = (var_9E + 1)
  loc_1A82528:             var_EE = (var_EE - 1)
  loc_1A82531:             If (var_EE = 0) Then
  loc_1A82557:               var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A8255E:               var_190 = (CVar(var_FC.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1A82564:               Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA))
  loc_1A8257B:               var_9E = (var_9E + 1)
  loc_1A825C9:               var_180 = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_9E, var_EE, var_9E)) + Space(1))
  loc_1A825E2:               var_1E0 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_F8, "0.00")), 9, Chr(&H12), var_9E, var_9E)))
  loc_1A82617:               var_180 = Chr(&H12)
  loc_1A82625:               var_170 = (Chr(&HF) + CVar(CStr(CVar(var_D0.Fields.Item("Amount")))))
  loc_1A8262C:               var_190 = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_9E, var_EE, var_9E)) + var_180)
  loc_1A82632:               Print 1, "0.00"
  loc_1A82649:               var_9E = (var_9E + 1)
  loc_1A8264C:             End If
  loc_1A8264C:           End If
  loc_1A8264F:           var_C0.MoveNext
  loc_1A82654:           GoTo loc_1A80B79
  loc_1A82657:         End If
  loc_1A8265A:         var_EC.MoveNext
  loc_1A8265F:         GoTo loc_1A808C0
  loc_1A82662:       End If
  loc_1A82664:       Close 1
  loc_1A8266D:       Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A826A2:       var_170 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_1A826A8:       Print 1, var_170
  loc_1A826BE:       Close 1
  loc_1A826C8:       If (MemVar_1F953BC = "Y") Then
  loc_1A826E4:         var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A826EE:       Else
  loc_1A82707:         var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A8270E:       End If
  loc_1A8270E:     End If
  loc_1A8270E:   End If
  loc_1A82713:   Set var_C0 = Nothing
  loc_1A8271B:   Set var_CC = Nothing
  loc_1A82723:   Set var_D0 = Nothing
  loc_1A8272B:   Set var_FC = Nothing
  loc_1A82733:   Set var_C4 = Nothing
  loc_1A8273B:   Set var_C8 = Nothing
  loc_1A82743:   Set var_100 = Nothing
  loc_1A8274B:   Set var_EC = Nothing
  loc_1A82751: Else
  loc_1A8276A:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_170, var_180, "0.00")
  loc_1A8277A: End If
  loc_1A8277A: Exit Sub
  loc_1A8277B: ' Referenced from: 1A7EBC0
  loc_1A8277B: Proc_6_60_E63754(var_9E, var_9E, var_9E)
  loc_1A82780: Exit Sub
End Sub

Public Sub Proc_260_10_1E305FC
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_164 As Variant
  Dim var_178 As String
  Dim var_17C As String
  Dim unk_43FED1 As Connection15
  Dim var_190 As String
  Dim var_138 As Recordset15
  Dim var_180 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_C4 As Recordset15
  Dim var_140 As Integer
  Dim var_1C8 As Variant
  Dim var_194 As Variant
  Dim var_CC As Recordset15
  Dim var_BA As Integer
  Dim var_1B4 As Variant
  Dim var_1DC As Variant
  Dim var_D0 As Recordset15
  Dim var_9E As Integer
  Dim var_104 As Recordset15
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_1CC As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_284 As Fields15
  Dim var_2A8 As Variant
  Dim var_2CC As Variant
  Dim var_20C As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_260 As Variant
  Dim var_1FC As Variant
  Dim var_2FC As Variant
  Dim var_2EC As Variant
  Dim var_A0 As Integer
  Dim var_344 As String
  Dim var_33C As Variant
  Dim var_380 As Variant
  Dim var_3C8 As Variant
  Dim var_3D8 As Variant
  Dim var_430 As Variant
  Dim var_45C As Variant
  Dim var_480 As Variant
  Dim var_434 As String
  Dim var_3A0 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_D4 As Recordset15
  Dim var_390 As Variant
  Dim var_E0 As Double
  Dim var_D8 As Recordset15
  Dim var_240 As Variant
  Dim var_C8 As Recordset15
  Dim var_10C As Recordset15
  Dim var_118 As Double
  Dim var_130 As Double
  Dim var_110 As Recordset15
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_108 As Recordset15
  Dim var_13E As Integer
  Dim var_F4 As Recordset15
  Dim var_F6 As Integer
  Dim var_100 As Double
  loc_1E26F6C: On Error Goto loc_1E205F3
  loc_1E26F85: Loop Until (MemVar_629D24.RecordCount > 0) 'do at: 1E205C9
  loc_1E26F93: If CBool(var_154 <> "Yes") Then
  loc_1E26F99:   MemVar_1F953C4 = "N"
  loc_1E26FA0:   MemVar_1F953C8 = "N"
  loc_1E26FA7:   MemVar_1F953CC = "K"
  loc_1E26FD1:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_174, -1
  loc_1E26FDC:   Set var_104 = var_180
  loc_1E27002:   var_178 = "Select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='" & Me(12)
  loc_1E27012:   unk_43FED1.Execute var_178 & "' group by revmast.code,TaxPer Order by Min(Sale2.SNo1),TaxPer", var_174, -1
  loc_1E2701D:   Set var_10C = var_180
  loc_1E27041:   var_178 = "SELECT Distinct P.CustName FROM PackingOrder P INNER JOIN PackingOrderDetail PD ON P.Docid = PD.DocID WHERE (P.LogSite_Code = '" & MemVar_1F95078
  loc_1E27071:   unk_43FED1.Execute var_178 & "') AND (P.RestCode = '" & Me(8) & "') and PD.ContraDocID='" & Me(12) & "'", var_174, -1
  loc_1E2707C:   Set var_138 = var_180
  loc_1E270A8:   If (var_138.RecordCount > 0) Then
  loc_1E270BA:     var_180 = var_138.Fields
  loc_1E270CA:     var_174 = CVar(var_180.Item("CustName")) 'Address
  loc_1E270E2:     var_13C = CStr(Trim(CVar(Proc_6_38_E69628(var_174, var_180))))
  loc_1E270F1:   End If
  loc_1E27117:   unk_43FED1.Execute "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='" & Me(12) & "' And PayType='Cash'", var_174, -1
  loc_1E27122:   Set var_110 = var_180
  loc_1E2713B:   var_178 = "Select Sale1.* ,S.CardNo,Case When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then IsNull(S.Name,'') Else '' End MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='" & Me(12)
  loc_1E27142:   var_8C = "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='" & Me(12) & "'"
  loc_1E2714F:   var_178 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1E2715F:   var_90 = var_178 & Me(12) & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1E27180:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_1E27191:   var_178 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department,D.Printer FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1E271A1:   var_98 = var_178 & Me(12) & "' ORDER BY I.Kitchen"
  loc_1E271B3:   If (var_8C = vbNullString) Then
  loc_1E271B6:     Exit Sub
  loc_1E271B7:   End If
  loc_1E271BF:   If (var_90 = vbNullString) Then
  loc_1E271C2:     Exit Sub
  loc_1E271C3:   End If
  loc_1E271CB:   If (var_94 = vbNullString) Then
  loc_1E271CE:     Exit Sub
  loc_1E271CF:     ' Referenced from: 1E2C810
  loc_1E271CF:   End If
  loc_1E271E5:   unk_43FED1.Execute var_8C, var_174, -1
  loc_1E271F0:   Set var_C4 = var_180
  loc_1E2720F:   unk_43FED1.Execute var_90, var_174, -1
  loc_1E2721A:   Set var_D4 = var_180
  loc_1E27239:   unk_43FED1.Execute var_94, var_174, -1
  loc_1E27244:   Set var_D8 = var_180
  loc_1E27263:   unk_43FED1.Execute var_98, var_174, -1
  loc_1E2726E:   Set var_CC = var_180
  loc_1E2728D:   var_178 = "Select IM.CATTYPE,S.DISCPER,SUM(S.DISCAMT) AS DISCAMT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode LEFT JOIN ITEMCATMAST IM ON IM.CODE=I.ITEMCATCODE Where S.DocID='" & Me(12)
  loc_1E2729D:   unk_43FED1.Execute var_178 & "' GROUP BY IM.CATTYPE,S.DISCPER HAVING SUM(S.DISCAMT)>0 ORDER BY IM.CATTYPE,S.DISCPER DESC", var_174, -1
  loc_1E272A8:   Set var_C8 = var_180
  loc_1E272BA:   Close 1
  loc_1E272C3:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1E272C7:   ' Referenced from: 1E2C6C6
  loc_1E272D6:   If Not(var_C4.EOF) Then
  loc_1E27307:     var_E4 = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1E2731F:     var_180 = var_C4.Fields
  loc_1E27349:     If (Proc_6_38_E69628(CVar(var_180.Item("Printed")), var_180, var_180, var_180, var_180) = "Y") Then
  loc_1E2734E:       var_140 = &HFF
  loc_1E27351:     End If
  loc_1E27360:     var_180 = var_C4.Fields
  loc_1E27368:     var_194 = var_180.Item("Printed")
  loc_1E27370:     var_174 = CVar(var_194) 'Address
  loc_1E2738A:     If (Proc_6_38_E69628(var_174, var_140, var_180) <> "Y") Then
  loc_1E27390:       var_1C8 = 0
  loc_1E273BF:       unk_43FED1.Execute "SELECT TOKENPrint FROM Depart where Code='" & Me(8) & "'", var_174, -1
  loc_1E273CF:       var_1C8 = var_194.Item(var_194)
  loc_1E273FF:       If (Proc_6_38_E69628(CVar(var_1CC), var_1CC, var_180.Fields.Fields) = "Yes") Then
  loc_1E27416:         If (var_CC.RecordCount > 0) Then
  loc_1E27419:           ' Referenced from: 1E28032
  loc_1E27428:           If Not(var_CC.EOF) Then
  loc_1E2742D:             var_BA = 1
  loc_1E27444:             var_178 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,Max(S.Unit) AS Unit,SUM(S.Amount) AS AMT,MAX(I.DispCode) AS DispCode,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1E2748A:             var_1DC = CVar(var_178 & Me(12) & "' AND I.Kitchen='") & var_CC.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1E27498:             unk_43FED1.Execute CStr(var_1DC), var_1FC, -1
  loc_1E274A3:             Set var_D0 = var_1CC
  loc_1E274D9:             If (var_D0.RecordCount > 0) Then
  loc_1E274F0:               If (var_CC.AbsolutePosition = 1) Then
  loc_1E27515:                 var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2751C:                 var_1DC = (CVar(var_178 & Me(12) & "' AND I.Kitchen='") + Chr(&H12))
  loc_1E27522:                 Print 1, var_1DC
  loc_1E27539:                 var_9E = (var_9E + 1)
  loc_1E2753C:               End If
  loc_1E27586:               If CBool(Trim(CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("SaleBillTokenHeader1")), var_9E, var_1CC))) <> vbNullString) Then
  loc_1E275D6:                 Print 1, Proc_260_1_10A4640(CStr(var_104.Fields.Item("SaleBillTokenHeader1").Value), "D", &H26)
  loc_1E275F7:                 var_9E = (var_9E + 1)
  loc_1E275FF:                 Print 1, vbNullString
  loc_1E2760B:                 var_9E = (var_9E + 1)
  loc_1E2760E:               End If
  loc_1E2765B:               Print 1, Proc_260_1_10A4640(CStr(var_CC.Fields.Item("Department").Value), "D", &H26, var_9E)
  loc_1E276BB:               var_180 = var_C4.Fields
  loc_1E276FD:               Proc_6_39_E7D3A0(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E27733:               var_344 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_180.Item("vType")), var_9E, var_BA) & "/" & MemVar_1F95168 & "/") & var_260), &H14)
  loc_1E2779A:               var_2FC = IIf((Proc_6_38_E69628(CVar(var_C4.Fields.Item("Printed")), var_180) = "Y"), CVar(Proc_6_52_EAE084("*DUPLICATE*", &HC)), vbNullString)
  loc_1E277B7:               var_1A4 = (Chr(&HF) + "Bill No.: ")
  loc_1E277BE:               var_20C = (CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("SaleBillTokenHeader1")), var_9E, var_C4.Fields)) + IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString))
  loc_1E277CB:               var_31C = (CVar(var_344) + var_2FC)
  loc_1E277D5:               Print 1, var_20C & var_31C, Chr(&H12)
  loc_1E2782E:               var_9E = (var_9E + 1)
  loc_1E278DE:               var_1A4 = (Chr(&HF) + "Date    : ")
  loc_1E278E8:               var_1FC = (CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("SaleBillTokenHeader1")), var_9E, var_C4.Fields)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF)))
  loc_1E278EF:               var_22C = (IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString) + Space(2))
  loc_1E278F8:               var_250 = (CVar(var_C4.Fields.Item("vType")) + "Time : ")
  loc_1E27902:               var_280 = (CVar(var_C4.Fields.Item("VNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VTIME"))), 5)))
  loc_1E27909:               var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E, var_BA) & "/" & MemVar_1F95168 & "/") & CVar(var_C4.Fields.Item("VTIME")) + Chr(&H12))
  loc_1E2790F:               Print 1, CVar(Proc_6_52_EAE084("*DUPLICATE*", &HC))
  loc_1E2794E:               var_9E = (var_9E + 1)
  loc_1E27990:               If (Proc_6_38_E69628(CVar(var_104.Fields.Item("PrintTokenNo")), var_9E) = "Yes") Then
  loc_1E279DD:                 var_C0 = vbNullString & "Token No: " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("TokenNo"))), &HA)
  loc_1E279F1:               End If
  loc_1E27A00:               var_180 = var_C4.Fields
  loc_1E27A59:               var_20C = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo")), (Trim(CVar(Proc_6_38_E69628(CVar(var_180.Item("CardNo"))))) = "0"))) 'String
  loc_1E27A91:               If CBool(Not var_180 Or (Trim(var_20C) = vbNullString)) Then
  loc_1E27ADE:                 var_C0 = var_C0 & "Card No: " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))), &HA)
  loc_1E27AF2:               End If
  loc_1E27B40:               var_250 = Space(1)
  loc_1E27B71:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("PARTICULARS")))
  loc_1E27B78:               var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))))) + Space(1))
  loc_1E27B82:               var_22C = (CVar(var_C4.Fields.Item("CardNo")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E27B89:               var_260 = (Trim(CVar(Proc_6_52_EAE084("Qty", 6))) + var_250)
  loc_1E27B93:               var_280 = (var_C4.Fields Or (Trim(CVar(Proc_6_52_EAE084("Qty", 6))) = vbNullString) + CVar(Proc_6_45_EADFB8("Unit", 8)))
  loc_1E27B9A:               var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E, var_BA) & "/" & MemVar_1F95168 & "/") & var_C4.Fields Or (Trim(CVar(Proc_6_52_EAE084("Qty", 6))) = vbNullString) + Chr(&H12))
  loc_1E27BA0:               Print 1, CVar(Proc_6_52_EAE084("*DUPLICATE*", &HC))
  loc_1E27BD8:               var_9E = (var_9E + 1)
  loc_1E27BF1:               var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E27BF7:               Print 1, CVar(Proc_6_45_EADFB8("PARTICULARS"))
  loc_1E27C04:               ' Referenced from: 1E27DAA
  loc_1E27C13:               If Not(var_D0.EOF) Then
  loc_1E27C92:                 Proc_6_39_E7D3A0(var_250, CVar(var_D0.Fields.Item("qty")))
  loc_1E27D21:                 var_1DC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H16)))
  loc_1E27D28:                 var_20C = (Space(1) + Space(1))
  loc_1E27D32:                 var_2A8 = (CVar(Proc_6_52_EAE084("Qty", 6)) + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.000")), 6, 1)))
  loc_1E27D39:                 var_2EC = (Chr(&H12) + Space(1))
  loc_1E27D40:                 var_30C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Unit")), 1), 8)) 'String
  loc_1E27D43:                 var_31C = (vbNullString + var_30C)
  loc_1E27D49:                 Print 1, var_31C
  loc_1E27D93:                 var_D0.MoveNext
  loc_1E27D9E:                 var_9E = (var_9E + 1)
  loc_1E27DA7:                 var_BA = (var_BA + 1)
  loc_1E27DAA:                 GoTo loc_1E27C04
  loc_1E27DAD:               End If
  loc_1E27DAD:             End If
  loc_1E27DB0:             var_CC.MoveNext
  loc_1E27DF0:             var_17C = Replace(CStr(Space(&H27)), " ", "=", 1, -1, 0)
  loc_1E27E09:             var_1DC = (Chr(&HF) + CVar("Qty"))
  loc_1E27E10:             var_20C = (Space(1) + Chr(&H12))
  loc_1E27E16:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E27E38:             var_9E = (var_9E + 1)
  loc_1E27E43:             If (var_C0 <> vbNullString) Then
  loc_1E27E69:               var_1A4 = (Chr(&HF) + CVar(var_C0))
  loc_1E27E70:               var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E27E76:               Print 1, Space(1)
  loc_1E27E8D:               var_9E = (var_9E + 1)
  loc_1E27E90:             End If
  loc_1E27EB2:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E27EB9:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E27EBF:             Print 1, Space(1)
  loc_1E27ED6:             var_9E = (var_9E + 1)
  loc_1E27EFB:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E27F02:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E27F08:             Print 1, Space(1)
  loc_1E27F1F:             var_9E = (var_9E + 1)
  loc_1E27F44:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E27F4B:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E27F51:             Print 1, Space(1)
  loc_1E27F68:             var_9E = (var_9E + 1)
  loc_1E27F8D:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E27F94:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E27F9A:             Print 1, Space(1)
  loc_1E27FB1:             var_9E = (var_9E + 1)
  loc_1E27FD6:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E27FDD:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E27FE3:             Print 1, Space(1)
  loc_1E27FFA:             var_9E = (var_9E + 1)
  loc_1E2801D:             var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E28023:             Print 1, Chr(&H12)
  loc_1E28032:             GoTo loc_1E27419
  loc_1E28035:           End If
  loc_1E28035:         End If
  loc_1E28035:       End If
  loc_1E28035:     End If
  loc_1E28037:     var_9E = 0
  loc_1E2803C:     var_A0 = 1
  loc_1E28054:     If ((Me(4) = "Restaurant") Or (Me(4) = "Hall")) Then
  loc_1E28065:       var_9C = "** " & "BILL" & " **"
  loc_1E2806E:     Else
  loc_1E28073:       var_9C = CStr(var_360)
  loc_1E28076:     End If
  loc_1E2807C:     If (var_9E = 0) Then
  loc_1E280AD:       var_E4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E280E4:       var_E8 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1E28126:       If (Proc_6_38_E69628(CVar(var_104.Fields.Item("CstNo")), var_A0, var_9E, var_9E, var_9E, var_9E) <> vbNullString) Then
  loc_1E2818B:         var_1DC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104.Fields.Item("CstNo")), var_9E, var_9E), &H23, var_9E)))
  loc_1E28192:         var_20C = (Space(1) + Chr(&H12))
  loc_1E28198:         Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E281BF:         var_9E = (var_9E + 1)
  loc_1E281C2:       End If
  loc_1E281FB:       If (Proc_6_38_E69628(CVar(var_104.Fields.Item("LstNo")), var_9E) <> vbNullString) Then
  loc_1E28260:         var_1DC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104.Fields.Item("LstNo")), var_9E), &H23)))
  loc_1E28267:         var_20C = (Space(1) + Chr(&H12))
  loc_1E2826D:         Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E28294:         var_9E = (var_9E + 1)
  loc_1E28297:       End If
  loc_1E282A7:       var_9E = Proc_260_2_136F49C(var_A0, var_9E, &H26)
  loc_1E282E3:       If (Proc_6_38_E69628(CVar(var_104.Fields.Item("Phone")), var_9E) <> vbNullString) Then
  loc_1E28336:         Print 1, Proc_260_1_10A4640(Proc_6_38_E69628(CVar(var_104.Fields.Item("Phone")), var_9E), "D")
  loc_1E2834F:       End If
  loc_1E28388:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo")), &H26) <> vbNullString) Then
  loc_1E283EC:         var_1A4 = (Chr(&HF) + "Membership No.: ")
  loc_1E283F6:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))), &H1E)))
  loc_1E283FD:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28403:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E2842C:         var_9E = (var_9E + 1)
  loc_1E2842F:       End If
  loc_1E28468:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("MemName")), var_9E) <> vbNullString) Then
  loc_1E284CC:         var_1A4 = (Chr(&HF) + "Member : ")
  loc_1E284D6:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("MemName"))), &H1E)))
  loc_1E284DD:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E284E3:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E2850C:         var_9E = (var_9E + 1)
  loc_1E2850F:       End If
  loc_1E28548:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("PhoneNo")), var_9E) <> vbNullString) Then
  loc_1E285AC:         var_1A4 = (Chr(&HF) + "Phone No: ")
  loc_1E285B6:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("PhoneNo"))), &H1E)))
  loc_1E285BD:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E285C3:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E285EC:         var_9E = (var_9E + 1)
  loc_1E285EF:       End If
  loc_1E28628:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CustName")), var_9E) <> vbNullString) Then
  loc_1E2868C:         var_1A4 = (Chr(&HF) + "Customer: ")
  loc_1E28696:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CustName"))), &H1E)))
  loc_1E2869D:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E286A3:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E286CC:         var_9E = (var_9E + 1)
  loc_1E286CF:       End If
  loc_1E28708:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr1")), var_9E) <> vbNullString) Then
  loc_1E2876C:         var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E28776:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr1"))), &H1E)))
  loc_1E2877D:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28783:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E287AC:         var_9E = (var_9E + 1)
  loc_1E287AF:       End If
  loc_1E287E8:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2")), var_9E) <> vbNullString) Then
  loc_1E2884C:         var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E28856:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2"))), &H1E)))
  loc_1E2885D:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28863:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E2888C:         var_9E = (var_9E + 1)
  loc_1E2888F:       End If
  loc_1E288C8:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E288EE:         var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E288F5:         var_1DC = (CVar(var_104.Fields.Item("LstNo")) + Chr(&H12))
  loc_1E288FB:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2"))), &H1E))
  loc_1E28912:         var_9E = (var_9E + 1)
  loc_1E28915:       End If
  loc_1E2894E:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E289B2:         var_1A4 = (Chr(&HF) + "Company : ")
  loc_1E289BC:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName"))), &H1E)))
  loc_1E289C3:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E289C9:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E289F2:         var_9E = (var_9E + 1)
  loc_1E289F5:       End If
  loc_1E28A2E:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd1")), var_9E) <> vbNullString) Then
  loc_1E28A92:         var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E28A9C:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd1"))), &H1E)))
  loc_1E28AA3:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28AA9:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E28AD2:         var_9E = (var_9E + 1)
  loc_1E28AD5:       End If
  loc_1E28AE9:       Do 'loop at: 1E387D0
  loc_1E28AEC:       var_194 = var_C4.Fields.Item("CompAdd2")
  loc_1E28AF1:       ' Referenced from: 1E392A1
  loc_1E28B0E:       If (Proc_6_38_E69628(CVar(var_194), var_9E) <> vbNullString) Then
  loc_1E28B51:         Do 'loop at: 1E38B4B
  loc_1E28B72:         var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E28B7C:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd2"))), &H1E)))
  loc_1E28B83:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28B89:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E28BB2:         var_9E = (var_9E + 1)
  loc_1E28BB5:       End If
  loc_1E28BEE:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd3")), var_9E) <> vbNullString) Then
  loc_1E28C52:         var_1A4 = (Chr(&HF) + "Address3: ")
  loc_1E28C5C:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd3"))), &H1E)))
  loc_1E28C63:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28C69:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E28C92:         var_9E = (var_9E + 1)
  loc_1E28C95:       End If
  loc_1E28CCE:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompCity")), var_9E) <> vbNullString) Then
  loc_1E28D32:         var_1A4 = (Chr(&HF) + "City    : ")
  loc_1E28D3C:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompCity"))), &H1E)))
  loc_1E28D43:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28D49:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E28D72:         var_9E = (var_9E + 1)
  loc_1E28D75:       End If
  loc_1E28DAE:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompStateCode")), var_9E) <> vbNullString) Then
  loc_1E28E44:         var_260 = Chr(&H12)
  loc_1E28E51:         var_1A4 = (Chr(&HF) + "State   : ")
  loc_1E28E5B:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompStateCode"))), 3)))
  loc_1E28E65:         var_250 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompState"))), &H1B)))
  loc_1E28E6C:         var_270 = (var_250 + var_260)
  loc_1E28E72:         Print 1, Format(var_250, "0.000")
  loc_1E28EAB:         var_9E = (var_9E + 1)
  loc_1E28EAE:       End If
  loc_1E28EE7:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompGSTIN")), var_9E) <> vbNullString) Then
  loc_1E28F4B:         var_1A4 = (Chr(&HF) + "GSTIN   : ")
  loc_1E28F55:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompGSTIN"))), &H1E)))
  loc_1E28F5C:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E28F62:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompState"))), &H1B))
  loc_1E28F8B:         var_9E = (var_9E + 1)
  loc_1E28F8E:       End If
  loc_1E28FA8:       Do 'loop at: 1E38E36
  loc_1E28FB1:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E28FB8:       var_1DC = (CVar(var_104.Fields.Item("LstNo")) + Chr(&H12))
  loc_1E28FBE:       Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompGSTIN"))), &H1E))
  loc_1E28FD5:       var_9E = (var_9E + 1)
  loc_1E2908A:       Proc_6_39_E7D3A0(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E290C0:       var_570 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_260), &H14)
  loc_1E290E2:       var_2EC = CVar(var_C4.Fields.Item("vType")) 'Address
  loc_1E29114:       Proc_6_39_E7D3A0(var_30C, CVar(var_C4.Fields.Item("VNo")))
  loc_1E2912A:       Do 'loop at: 1E390DD
  loc_1E29151:       var_33C = CVar("Bill No.  : " & Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(var_2EC) & "/" & MemVar_1F95168 & "/") & var_30C), &H14)) 'String
  loc_1E2915C:       var_20C = (" Invoice No. " + IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString))
  loc_1E2917C:       var_390 = IIf((Proc_6_38_E69628(CVar(var_104.Fields.Item("AutoResetToken")), var_9E) = "Yes"), Chr(&H12) & CVar(var_570), var_33C)
  loc_1E291A0:       var_3C8 = CVar(var_C4.Fields.Item("RoomNo")) 'Address
  loc_1E29259:       var_4E0 = IIf((Me(4) = "Outlet"), CVar("Table: " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))), IIf((Me(4) = "Room Service"), CVar("Room : " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))), vbNullString))
  loc_1E292B0:       var_3A0 = (Chr(&HF) + var_390)
  loc_1E292BA:       var_544 = (var_3A0 + CVar(Proc_6_45_EADFB8(CStr(IIf((Trim(CVar(Proc_6_38_E69628(var_3C8))) = "."), vbNullString, var_4E0)), &HB)))
  loc_1E292C1:       var_564 = (var_544 + Chr(&H12))
  loc_1E292C7:       Print 1, var_564
  loc_1E29368:       var_9E = (var_9E + 1)
  loc_1E2940B:       var_1A4 = (Chr(&HF) + " Bill Date : ")
  loc_1E29415:       var_1FC = (CVar(var_104.Fields.Item("AutoResetToken")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")), var_9E), &HC)))
  loc_1E2941E:       var_20C = (IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString) + "Time : ")
  loc_1E29428:       var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VTIME"))), 9)))
  loc_1E2942F:       var_280 = (var_260 + Chr(&H12))
  loc_1E29435:       Print 1, CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_260
  loc_1E29470:       var_9E = (var_9E + 1)
  loc_1E2947E:       If (var_590 = "Y") Then
  loc_1E294E9:         var_20C = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), (Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E))) = "0"))) 'String
  loc_1E29521:         If CBool(Not var_BA Or (Trim(var_20C) = vbNullString)) Then
  loc_1E29585:           var_1A4 = (Chr(&HF) + "Order No. : ")
  loc_1E2958F:           var_1FC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo"))))))
  loc_1E29596:           var_22C = (CVar(var_C4.Fields.Item("KOTNo")) + Chr(&H12))
  loc_1E2959C:           Print 1, Trim(Chr(&H12))
  loc_1E295C5:           var_9E = (var_9E + 1)
  loc_1E295C8:         End If
  loc_1E295D0:         If (var_13C <> vbNullString) Then
  loc_1E29605:           var_1A4 = (Chr(&HF) + "Party Name: ")
  loc_1E2960F:           var_1DC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EADFB8(var_13C, &H1C)))
  loc_1E29616:           var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo"))))) + Chr(&H12))
  loc_1E2961C:           Print 1, Chr(&H12)
  loc_1E2963A:           var_9E = (var_9E + 1)
  loc_1E2963D:         End If
  loc_1E2963D:       End If
  loc_1E2967C:       If (Proc_6_38_E69628(CVar(var_104.Fields.Item("PrintTokenNo")), var_9E) = "Yes") Then
  loc_1E296A2:         Do 'loop at: 1E3962F
  loc_1E296C9:         var_C0 = vbNullString & "Token No: " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("TokenNo")), var_9E), &HA)
  loc_1E296DD:       End If
  loc_1E29745:       var_20C = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo")), (Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))))) = "0"))) 'String
  loc_1E2977D:       If CBool(Not &H1C Or (Trim(var_20C) = vbNullString)) Then
  loc_1E297CA:         var_C0 = var_C0 & "Card No: " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))), &HA)
  loc_1E297DE:       End If
  loc_1E2983D:       If CBool((Trim(CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("KotYN"))))) = "Y") And (var_590 <> "Y")) Then
  loc_1E29868:         var_134 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1E298B4:         var_22C = (28 - Len(Left(var_134, &H1C)))
  loc_1E298D7:         var_1A4 = (Chr(&HF) + "KOT No.   : ")
  loc_1E298DE:         var_1DC = (CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("KotYN")))) + Left(var_134, &H1C))
  loc_1E298E5:         var_260 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo"))))) + Space(CLng(Trim(Len(Left(var_134, &H1C))))))
  loc_1E298EC:         var_280 = (&H1C Or (Trim(Len(Left(var_134, &H1C))) = vbNullString) + Chr(&H12))
  loc_1E298F2:         Print 1, CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & &H1C Or (Trim(Len(Left(var_134, &H1C))) = vbNullString)
  loc_1E29913:         var_9E = (var_9E + 1)
  loc_1E29937:         var_134 = CStr(Mid(var_134, &H1D, CVar(Len(var_134))))
  loc_1E29941:         ' Referenced from: 1E299D7
  loc_1E2994B:         If (Len(var_134) <> 0) Then
  loc_1E29983:           var_1B4 = (Chr(&HF) + Left(var_134, &H28))
  loc_1E2998A:           var_1FC = (Left(var_134, &H1C) + Chr(&H12))
  loc_1E29990:           Print 1, Left(var_134, &H1C)
  loc_1E299A9:           var_9E = (var_9E + 1)
  loc_1E299CD:           var_134 = CStr(Mid(var_134, &H29, CVar(Len(var_134))))
  loc_1E299D7:           GoTo loc_1E29941
  loc_1E299DA:         End If
  loc_1E299DA:       End If
  loc_1E29A13:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Roomtype")), var_9E) = "RO") Then
  loc_1E29A77:         var_1A4 = (Chr(&HF) + "GUEST     : ")
  loc_1E29A81:         var_1FC = (Mid(var_134, &H29, CVar(Len(var_134))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), &H1C)))
  loc_1E29A88:         var_22C = (Left(var_134, &H1C) + Chr(&H12))
  loc_1E29A8E:         Print 1, Trim(Chr(&H12))
  loc_1E29AB7:         var_9E = (var_9E + 1)
  loc_1E29ABD:       Else
  loc_1E29AF6:         If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("MemName")), var_9E) <> vbNullString) Then
  loc_1E29AF9:           GoTo loc_1E29BDC
  loc_1E29AFC:         End If
  loc_1E29B35:         If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))) <> vbNullString) Then
  loc_1E29B99:           var_1A4 = (Chr(&HF) + "REMARK     :   ")
  loc_1E29BA3:           var_1FC = (Mid(var_134, &H29, CVar(Len(var_134))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), &H1C)))
  loc_1E29BAA:           var_22C = (Left(var_134, &H1C) + Chr(&H12))
  loc_1E29BB0:           Print 1, Trim(Chr(&H12))
  loc_1E29BD9:           var_9E = (var_9E + 1)
  loc_1E29BDC:           ' Referenced from:   1E29AF9
  loc_1E29BDC:         End If
  loc_1E29BDC:       End If
  loc_1E29BFF:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E29C06:       var_1DC = (Mid(var_134, &H29, CVar(Len(var_134))) + Chr(&H12))
  loc_1E29C0C:       Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), &H1C))
  loc_1E29C23:       var_9E = (var_9E + 1)
  loc_1E29C4C:       var_1B4 = (CVar(Proc_6_45_EADFB8(" Particulars", &H10, var_9E)) + Space(1))
  loc_1E29C66:       var_1FC = (var_9E + CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))
  loc_1E29C72:       var_20C = Space(1)
  loc_1E29C7A:       var_22C = (Left(var_134, &H1C) + var_20C)
  loc_1E29C94:       var_260 = (Trim(var_20C) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E29CA8:       var_280 = (&H1C Or (Trim(var_20C) = vbNullString) + Space(1))
  loc_1E29CC2:       var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & &H1C Or (Trim(var_20C) = vbNullString) + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_1E29D15:       var_1A4 = (Chr(&HF) + CVar(CStr(Chr(&H12) & CVar(var_570))))
  loc_1E29D1C:       var_1DC = (CVar(Proc_6_45_EADFB8(" Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E29D22:       Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E29D39:       var_9E = (var_9E + 1)
  loc_1E29D5F:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E29D66:       var_1DC = (CVar(Proc_6_45_EADFB8(" Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E29D6C:       Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E29D83:       var_9E = (var_9E + 1)
  loc_1E29D88:       var_BA = 1
  loc_1E29D8E:       var_D4.MoveFirst
  loc_1E29D93:       ' Referenced from: 1E2A108
  loc_1E29DA2:       If Not(var_D4.EOF) Then
  loc_1E29E32:         If (Proc_6_38_E69628(CVar(var_D4.Fields.Item("HSNCode")), var_9E) <> vbNullString) Then
  loc_1E29E58:           var_1A4 = (Chr(&HF) + CVar(var_9E & Proc_6_45_EADFB8(CStr(var_D4.Fields.Item("HSNCode").Value), &H1E, "HSN Code: ", var_BA)))
  loc_1E29E5F:           var_1DC = (CVar(Proc_6_45_EADFB8(" Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E29E65:           Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E29E76:         End If
  loc_1E29EC3:         Proc_6_39_E7D3A0(var_20C, CVar(var_D4.Fields.Item("Rate")))
  loc_1E29EE3:         var_250 = Format(var_20C, "0.00")
  loc_1E29F0E:         Proc_6_39_E7D3A0(var_2EC, CVar(var_D4.Fields.Item("qty")), 1)
  loc_1E29F59:         Proc_6_39_E7D3A0(var_3C8, CVar(var_D4.Fields.Item("Amt")), 1)
  loc_1E29F6D:         var_3D8 = "0.00"
  loc_1E29FA3:         var_1DC = (CVar(Proc_6_45_EADFB8(CStr(var_D4.Fields.Item("ItemName").Value), &H10, 1, 1)) + Space(1))
  loc_1E29FBC:         var_270 = (1 + CVar(Proc_6_52_EAE084(CStr(var_250), 6, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))))
  loc_1E29FD0:         var_2A8 = (Space(1) + Space(1))
  loc_1E29FE9:         var_32C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_2EC, "0.000")), 6, CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E29FFD:         var_390 = (CVar(Proc_6_38_E69628(var_2EC) & "/" & MemVar_1F95168 & "/") & Format(var_2EC, "0.000") + Space(1))
  loc_1E2A016:         var_430 = (var_390 + CVar(Proc_6_52_EAE084(CStr(Format(var_3C8, var_3D8)), 9)))
  loc_1E2A090:         var_1A4 = (Chr(&HF) + CVar(CStr(CVar(var_C4.Fields.Item("RoomNo")))))
  loc_1E2A097:         var_1DC = (Space(1) + Chr(&H12))
  loc_1E2A09D:         Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2A0DB:         Proc_6_39_E7D3A0(Space(1), CVar(var_D4.Fields.Item("Amt")))
  loc_1E2A0E3:         var_1B4 = (CVar(var_E0) + Space(1))
  loc_1E2A0E8:         var_E0 = CSng(Chr(&H12))
  loc_1E2A0FD:         var_BA = (var_BA + 1)
  loc_1E2A103:         var_D4.MoveNext
  loc_1E2A108:         GoTo loc_1E29D93
  loc_1E2A10B:       End If
  loc_1E2A138:       var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E2A142:       var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E2A149:       var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E2A14F:       Print 1, var_20C
  loc_1E2A16A:       var_9E = (var_9E + 1)
  loc_1E2A170:       var_D8.MoveFirst
  loc_1E2A175:       ' Referenced from: 1E2AA5B
  loc_1E2A184:       If Not(var_D8.EOF) Then
  loc_1E2A1B1:         var_5A4 = var_D8.Fields.Item("SunCode").Value 'Variant
  loc_1E2A1CF:         If (var_5A4 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_1E2A21F:           Proc_6_39_E7D3A0(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E2A269:           var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_D8.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1E2A27D:           var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2A296:           var_2A8 = (var_BA + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E2A2EC:           var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2A2F3:           var_1DC = (var_D8.Fields.Item("DispName").Value + Chr(&H12))
  loc_1E2A2F9:           Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2A310:           var_9E = (var_9E + 1)
  loc_1E2A316:         Else
  loc_1E2A329:           If (var_5A4 = CVar(MemVar_1F95078 & "NET")) Then
  loc_1E2A359:             var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E2A363:             var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E2A36A:             var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E2A370:             Print 1, var_20C
  loc_1E2A38B:             var_9E = (var_9E + 1)
  loc_1E2A3B0:             var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2A3DB:             Proc_6_39_E7D3A0(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E2A425:             var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E2A439:             var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2A452:             var_2A8 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E2A4AB:             Proc_6_39_E7D3A0(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2A4C5:             If (var_1A4 > 0) Then
  loc_1E2A4EB:               var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2A4F2:               var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2A4F8:               Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2A50F:               var_9E = (var_9E + 1)
  loc_1E2A512:             End If
  loc_1E2A515:           Else
  loc_1E2A528:             If (var_5A4 = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1E2A567:               If (var_104.Fields.Item("DisPrint").Value = "N") Then
  loc_1E2A58C:                 var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2A5B7:                 Proc_6_39_E7D3A0(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E2A601:                 var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_1A4), 8, Space(&H12), 1)))
  loc_1E2A615:                 var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(5))
  loc_1E2A62E:                 var_2A8 = (var_E0 + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E2A687:                 Proc_6_39_E7D3A0(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2A6A1:                 If (var_1A4 > 0) Then
  loc_1E2A6C7:                   var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2A6CE:                   var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2A6D4:                   Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2A6EB:                   var_9E = (var_9E + 1)
  loc_1E2A6EE:                 End If
  loc_1E2A6F1:               Else
  loc_1E2A713:                 var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2A765:                 Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Amount", 9)), CVar(var_D8.Fields.Item("Amount")))
  loc_1E2A785:                 var_2EC = Format(CVar(Proc_6_52_EAE084("Amount", 9)), "0.00")
  loc_1E2A7AF:                 var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_1A4), 8, Space(&H12), 1)))
  loc_1E2A7C5:                 var_20C = CVar(Proc_6_52_EAE084(CStr(var_D8.Fields.Item("SValue").Value), 3, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))) 'String
  loc_1E2A7C8:                 var_22C = (var_9E + var_20C)
  loc_1E2A7D1:                 var_250 = (CVar(var_D8.Fields.Item("Amount")) + "%")
  loc_1E2A7E5:                 var_270 = (var_250 + Space(1))
  loc_1E2A7FE:                 var_30C = (Format(var_250, "0.00") + CVar(Proc_6_52_EAE084(CStr(var_2EC), 9)))
  loc_1E2A865:                 Proc_6_39_E7D3A0(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2A87F:                 If (var_1A4 > 0) Then
  loc_1E2A8A5:                   var_1A4 = (Chr(&HF) + CVar(CStr(Format(var_2EC, "0.000"))))
  loc_1E2A8AC:                   var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2A8B2:                   Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2A8C9:                   var_9E = (var_9E + 1)
  loc_1E2A8CC:                 End If
  loc_1E2A8CC:               End If
  loc_1E2A8CF:             Else
  loc_1E2A8F1:               var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2A91C:               Proc_6_39_E7D3A0(var_250, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2A930:               var_260 = "0.00"
  loc_1E2A966:               var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E2A97A:               var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2A993:               var_2A8 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_250, var_260)), 9, var_20C)))
  loc_1E2A9EC:               Proc_6_39_E7D3A0(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2AA06:               If (var_1A4 > 0) Then
  loc_1E2AA2C:                 var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2AA33:                 var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2AA39:                 Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2AA50:                 var_9E = (var_9E + 1)
  loc_1E2AA53:               End If
  loc_1E2AA53:             End If
  loc_1E2AA53:           End If
  loc_1E2AA53:         End If
  loc_1E2AA56:         var_D8.MoveNext
  loc_1E2AA5B:         GoTo loc_1E2A175
  loc_1E2AA5E:       End If
  loc_1E2AA81:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2AA88:       var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2AA8E:       Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2AAA5:       var_9E = (var_9E + 1)
  loc_1E2AAE4:       If (var_104.Fields.Item("DisPrint").Value = "N") Then
  loc_1E2AAE7:         GoTo loc_1E2ACA5
  loc_1E2AAEA:         ' Referenced from: 1E2AC58
  loc_1E2AAEA:       End If
  loc_1E2AAF9:       If Not(var_C8.EOF) Then
  loc_1E2AB77:         Proc_6_39_E7D3A0(var_260, CVar(var_C8.Fields.Item("DiscPer")))
  loc_1E2ABB7:         Proc_6_47_EF6560(var_2EC, CVar(var_C8.Fields.Item("DiscAmt")))
  loc_1E2ABD9:         var_1A4 = (Chr(&HF) + "DISC. ON ")
  loc_1E2ABE0:         var_20C = CVar(Proc_6_45_EADFB8(CStr(Ucase(CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("CatType")), var_9E)))), &HA)) 'String
  loc_1E2ABE3:         var_22C = (var_1A4 + var_20C)
  loc_1E2ABED:         var_280 = (CVar(var_D8.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(var_260), 6)))
  loc_1E2ABF6:         var_2A8 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_C8.Fields.Item("DiscPer")), var_260)), 9, var_20C)) + "%")
  loc_1E2AC00:         var_30C = (CVar(Proc_6_52_EAE084("Amount", 9)) + CVar(Proc_6_52_EAE084(CStr(var_2EC), &HA)))
  loc_1E2AC06:         Print 1, Format(var_2EC, "0.000")
  loc_1E2AC4D:         var_9E = (var_9E + 1)
  loc_1E2AC53:         var_C8.MoveNext
  loc_1E2AC58:         GoTo loc_1E2AAEA
  loc_1E2AC5B:       End If
  loc_1E2AC7E:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2AC85:       var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2AC8B:       Print 1, CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("CatType")), var_9E))
  loc_1E2ACA2:       var_9E = (var_9E + 1)
  loc_1E2ACA5:       ' Referenced from: 1E2AAE7
  loc_1E2ACB9:       If (var_10C.RecordCount > 0) Then
  loc_1E2ACBF:         var_10C.MoveFirst
  loc_1E2ACC4:         ' Referenced from: 1E2AF03
  loc_1E2ACD3:         If Not(var_10C.EOF) Then
  loc_1E2AD1F:           var_1FC = Trim(Left(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E))), &HE))
  loc_1E2AD57:           Proc_6_39_E7D3A0(var_260, CVar(var_10C.Fields.Item("TaxPer")))
  loc_1E2AD82:           Proc_6_39_E7D3A0(var_2EC, CVar(var_10C.Fields.Item("TaxableAmt")))
  loc_1E2ADCD:           Proc_6_39_E7D3A0(var_3D8, CVar(var_10C.Fields.Item("TaxAmt")), 1)
  loc_1E2ADFD:           var_22C = (var_1FC + Space(1))
  loc_1E2AE09:           var_280 = (CVar(var_D8.Fields.Item("Amount")) + CVar(CStr(var_260)))
  loc_1E2AE12:           var_2A8 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_10C.Fields.Item("TaxPer")), var_260)), 9, Space(1))) + "% On (")
  loc_1E2AE19:           var_31C = (CVar(Proc_6_52_EAE084("Amount", 9)) + Format(var_2EC, "0.00"))
  loc_1E2AE22:           var_32C = (CVar(Proc_6_52_EAE084(CStr(Format(var_2EC, "0.000")), 6, CVar(Proc_6_52_EAE084("Amount", 9)))) + ")")
  loc_1E2AE30:           var_390 = CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(var_2EC) & "/" & MemVar_1F95168 & "/") & Format(var_2EC, "0.00")), &H20, 1, 1)) 'String
  loc_1E2AE43:           var_3A0 = (var_390 + Space(1))
  loc_1E2AE5C:           var_45C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_3D8, "0.00")), 7, CVar(var_D4.Fields.Item("Amt")))))
  loc_1E2AED4:           var_1A4 = (Chr(&HF) + CVar(CStr(CVar(var_C4.Fields.Item("RoomNo")))))
  loc_1E2AEDB:           var_1DC = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + Chr(&H12))
  loc_1E2AEE1:           Print 1, Left(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E))), &HE)
  loc_1E2AEF8:           var_9E = (var_9E + 1)
  loc_1E2AEFE:           var_10C.MoveNext
  loc_1E2AF03:           GoTo loc_1E2ACC4
  loc_1E2AF06:         End If
  loc_1E2AF29:         var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2AF30:         var_1DC = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + Chr(&H12))
  loc_1E2AF36:         Print 1, Left(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E))), &HE)
  loc_1E2AF4D:         var_9E = (var_9E + 1)
  loc_1E2AF50:       End If
  loc_1E2AF76:       Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_C4.Fields.Item("CashRecd")), var_9E)
  loc_1E2AF7F:       var_118 = CSng(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E2AFB2:       Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_C4.Fields.Item("NetAmt")), var_118)
  loc_1E2AFBB:       var_130 = CSng(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E2AFEE:       Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_110.Fields.Item("Amount")), var_130)
  loc_1E2B00F:       var_1CC = var_110.Fields
  loc_1E2B026:       Proc_6_39_E7D3A0(var_1FC, CVar(var_1CC.Item("TipAmt")), (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) <> 0))
  loc_1E2B050:       If CBool(var_9E Or (var_1FC <> 0)) Then
  loc_1E2B05A:         If (var_118 = CDbl(0)) Then
  loc_1E2B083:           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_110.Fields.Item("Amount")))
  loc_1E2B08C:           var_118 = CSng(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E2B099:         End If
  loc_1E2B0B8:         var_174 = CVar(var_110.Fields.Item("TipAmt")) 'Address
  loc_1E2B0BF:         Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), var_174, var_118)
  loc_1E2B0C8:         var_120 = CSng(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E2B0E0:         var_128 = ((var_118 - var_130) - var_120)
  loc_1E2B0E3:       End If
  loc_1E2B0EE:       Proc_6_39_E7D3A0(var_174, var_128, var_128)
  loc_1E2B101:       If CBool(var_174 <> 0) Then
  loc_1E2B10C:         var_174 = Chr(&HF)
  loc_1E2B18B:         var_380 = "-"
  loc_1E2B1A5:         var_2EC = IIf((var_120 <> CDbl(0)), (Proc_6_38_E69628(CVar(var_104.Fields.Item("AutoResetToken")), var_9E) = "Yes") & Format(var_120, "0.00"), vbNullString)
  loc_1E2B1E4:         var_1A4 = (var_174 + "Refund=(")
  loc_1E2B1EF:         var_21C = "-"
  loc_1E2B1FB:         var_260 = CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) & Format(var_118, "0.00") & 0 & Format(var_130, "0.00") 
  loc_1E2B215:         var_390 = (Format(var_128, "0.00") + Chr(&H12))
  loc_1E2B21F:         Print 1, var_260 & var_2EC & ")=" & var_390
  loc_1E2B25A:         var_9E = (var_9E + 1)
  loc_1E2B25D:       End If
  loc_1E2B268:       Proc_6_39_E7D3A0(var_174, var_128, var_9E, 1, 1, 1, 1)
  loc_1E2B27B:       If CBool(var_174 <> 0) Then
  loc_1E2B2A1:         var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2B2A8:         var_1DC = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + Chr(&H12))
  loc_1E2B2AE:         Print 1, Format(var_118, "0.00")
  loc_1E2B2C5:         var_9E = (var_9E + 1)
  loc_1E2B2C8:       End If
  loc_1E2B304:       If CBool(var_C4.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1E2B368:         var_1A4 = (Chr(&HF) + "Steward Name  : ")
  loc_1E2B372:         var_1FC = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("WaiterName")), var_9E, 1, 1, 1), &H14, 1)))
  loc_1E2B379:         var_22C = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) & Format(var_118, "0.00") + Chr(&H12))
  loc_1E2B37F:         Print 1, "0.00"
  loc_1E2B3A8:         var_9E = (var_9E + 1)
  loc_1E2B3AB:       End If
  loc_1E2B3F5:       If (Ucase(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E, var_120))) = "HTW_SYSTEM") Then
  loc_1E2B425:         var_1B4 = (Chr(&HF) + Space(&H1E))
  loc_1E2B42E:         var_1DC = (Ucase(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E, var_120))) + "[E.& O.E.]")
  loc_1E2B435:         var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("WaiterName")), var_9E, 1, 1, 1), &H14, 1)) + Chr(&H12))
  loc_1E2B43B:         Print 1, Chr(&H12)
  loc_1E2B456:         var_9E = (var_9E + 1)
  loc_1E2B45C:       Else
  loc_1E2B464:         var_174 = Chr(&HF)
  loc_1E2B478:         var_180 = var_C4.Fields
  loc_1E2B4BD:         var_1A4 = (var_174 + "User Name     :   ")
  loc_1E2B4C7:         var_1FC = (Space(&H1E) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_180.Item("U_Name")), var_9E), &HE)))
  loc_1E2B4D0:         var_20C = (Chr(&H12) + "[E.& O.E.]")
  loc_1E2B4D7:         var_250 = (Chr(&H12) + Chr(&H12))
  loc_1E2B4DD:         Print 1, Format(var_130, "0.00")
  loc_1E2B508:         var_9E = (var_9E + 1)
  loc_1E2B50B:       End If
  loc_1E2B510:       Print 1, vbNullString
  loc_1E2B51C:       var_9E = (var_9E + 1)
  loc_1E2B545:       unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_174, -1
  loc_1E2B550:       Set var_108 = var_180
  loc_1E2B574:       If (var_108.RecordCount > 0) Then
  loc_1E2B5B7:         If CBool(Trim(CVar(var_108.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1E2B5C2:           var_174 = Chr(&HF)
  loc_1E2B5D6:           var_180 = var_108.Fields
  loc_1E2B605:           var_1DC = (var_174 + Trim(CVar(var_180.Item("Slogan1"))))
  loc_1E2B60C:           var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_180.Item("U_Name")), var_9E), &HE)) + Chr(&H12))
  loc_1E2B612:           Print 1, Chr(&H12)
  loc_1E2B630:           var_9E = (var_9E + 1)
  loc_1E2B633:         End If
  loc_1E2B633:       End If
  loc_1E2B638:       Set var_108 = Nothing
  loc_1E2B661:       unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_174, -1
  loc_1E2B66C:       Set var_108 = var_180
  loc_1E2B690:       If (var_108.RecordCount > 0) Then
  loc_1E2B6D3:         If CBool(Trim(CVar(var_108.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1E2B716:           var_1FC = Chr(&H12)
  loc_1E2B721:           var_1DC = (Chr(&HF) + Trim(CVar(var_108.Fields.Item("Slogan2"))))
  loc_1E2B728:           var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_108.Fields.Item("U_Name")), var_9E), &HE)) + var_1FC)
  loc_1E2B72E:           Print 1, Chr(&H12)
  loc_1E2B74C:           var_9E = (var_9E + 1)
  loc_1E2B74F:         End If
  loc_1E2B74F:       End If
  loc_1E2B757:       If (var_C0 <> vbNullString) Then
  loc_1E2B77D:         var_1A4 = (Chr(&HF) + CVar(var_C0))
  loc_1E2B784:         var_1DC = (CVar(var_108.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1E2B78A:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_108.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E2B7A1:         var_9E = (var_9E + 1)
  loc_1E2B7A4:       End If
  loc_1E2B7A9:       Set var_108 = Nothing
  loc_1E2B7CF:       var_1A4 = (Chr(&HF) + CVar(MemVar_1F9521C))
  loc_1E2B7D6:       var_1DC = (CVar(var_108.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1E2B7DC:       Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_108.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E2B7F3:       var_9E = (var_9E + 1)
  loc_1E2B7FB:       Print 1, vbNullString
  loc_1E2B807:       var_9E = (var_9E + 1)
  loc_1E2B80F:       Print 1, vbNullString
  loc_1E2B81B:       var_9E = (var_9E + 1)
  loc_1E2B823:       Print 1, vbNullString
  loc_1E2B82F:       var_9E = (var_9E + 1)
  loc_1E2B837:       Print 1, vbNullString
  loc_1E2B843:       var_9E = (var_9E + 1)
  loc_1E2B84B:       Print 1, vbNullString
  loc_1E2B857:       var_9E = (var_9E + 1)
  loc_1E2B87A:       var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E2B880:       Print 1, Chr(&H12)
  loc_1E2B88F:     End If
  loc_1E2B8A6:     var_194 = var_C4.Fields.Item("Printed")
  loc_1E2B8AE:     var_174 = CVar(var_194) 'Address
  loc_1E2B8C8:     If (Proc_6_38_E69628(var_174, var_9E, var_9E, var_9E, var_9E, var_9E, var_9E) <> "Y") Then
  loc_1E2B8CE:       var_1C8 = 0
  loc_1E2B8FD:       unk_43FED1.Execute "SELECT TOKENPrintAfter FROM Depart where Code='" & Me(8) & "'", var_174, -1
  loc_1E2B905:       var_180 = var_180.Fields
  loc_1E2B90D:       var_1C8 = var_194.Item(var_194)
  loc_1E2B93D:       If (Proc_6_38_E69628(CVar(var_1CC), var_1CC, var_9E, var_9E) = "Yes") Then
  loc_1E2B954:         If (var_CC.RecordCount > 0) Then
  loc_1E2B95A:           var_CC.MoveFirst
  loc_1E2B95F:           ' Referenced from: 1E2C6BB
  loc_1E2B96E:           If Not(var_CC.EOF) Then
  loc_1E2B973:             Close 1
  loc_1E2B99A:             Open "C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E2B9A9:             var_BA = 1
  loc_1E2B9C0:             var_178 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,Max(S.Unit) AS Unit,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1E2BA06:             var_1DC = CVar(var_178 & Me(12) & "' AND I.Kitchen='") & var_CC.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1E2BA14:             unk_43FED1.Execute CStr(var_1DC), var_1FC, -1
  loc_1E2BA1F:             Set var_D0 = var_1CC
  loc_1E2BA55:             If (var_D0.RecordCount > 0) Then
  loc_1E2BA67:               var_180 = var_104.Fields
  loc_1E2BAA2:               If CBool(Trim(CVar(Proc_6_38_E69628(CVar(var_180.Item("SaleBillTokenHeader1")), var_1CC, var_BA, var_180))) <> vbNullString) Then
  loc_1E2BAF2:                 Print 1, Proc_260_1_10A4640(CStr(var_104.Fields.Item("SaleBillTokenHeader1").Value), "D", &H26)
  loc_1E2BB13:                 var_9E = (var_9E + 1)
  loc_1E2BB1B:                 Print 1, vbNullString
  loc_1E2BB27:                 var_9E = (var_9E + 1)
  loc_1E2BB2A:               End If
  loc_1E2BB77:               Print 1, Proc_260_1_10A4640(CStr(var_CC.Fields.Item("Department").Value), "D", &H26, var_9E)
  loc_1E2BBD7:               var_180 = var_C4.Fields
  loc_1E2BC19:               Proc_6_39_E7D3A0(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E2BC4F:               var_344 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_180.Item("vType")), var_9E, var_9E) & "/" & MemVar_1F95168 & "/") & var_260), &H14)
  loc_1E2BC61:               var_284 = var_C4.Fields
  loc_1E2BCB6:               var_2FC = IIf((Proc_6_38_E69628(CVar(var_284.Item("Printed")), var_180) = "Y"), CVar(Proc_6_52_EAE084("*DUPLICATE*", &HC)), vbNullString)
  loc_1E2BCD3:               var_1A4 = (Chr(&HF) + "Bill No.: ")
  loc_1E2BCDA:               var_20C = (CVar(Proc_6_38_E69628(CVar(var_180.Item("SaleBillTokenHeader1")), var_C4.Fields, var_BA, var_180)) + IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString))
  loc_1E2BCE7:               var_31C = (CVar(var_344) + var_2FC)
  loc_1E2BCF1:               Print 1, Chr(&H12) & "0.00", Chr(&H12)
  loc_1E2BD4A:               var_9E = (var_9E + 1)
  loc_1E2BDFA:               var_1A4 = (Chr(&HF) + "Date    : ")
  loc_1E2BE04:               var_1FC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("SaleBillTokenHeader1")), var_C4.Fields, var_BA, var_C4.Fields)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF)))
  loc_1E2BE0B:               var_22C = (IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString) + Space(2))
  loc_1E2BE14:               var_250 = (CVar(var_C4.Fields.Item("vType")) + "Time : ")
  loc_1E2BE1E:               var_280 = (CVar(var_C4.Fields.Item("VNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VTIME"))), 5)))
  loc_1E2BE25:               var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E, var_9E) & "/" & MemVar_1F95168 & "/") & CVar(var_C4.Fields.Item("VTIME")) + Chr(&H12))
  loc_1E2BE2B:               Print 1, CVar(Proc_6_52_EAE084("*DUPLICATE*", &HC))
  loc_1E2BE6A:               var_9E = (var_9E + 1)
  loc_1E2BEAC:               If (Proc_6_38_E69628(CVar(var_104.Fields.Item("PrintTokenNo")), var_9E) = "Yes") Then
  loc_1E2BEF9:                 var_C0 = vbNullString & "Token No: " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("TokenNo"))), &HA)
  loc_1E2BF0D:               End If
  loc_1E2BF75:               var_20C = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo")), (Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))))) = "0"))) 'String
  loc_1E2BFAD:               If CBool(Not var_9E Or (Trim(var_20C) = vbNullString)) Then
  loc_1E2BFFA:                 var_C0 = var_C0 & "Card No: " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))), &HA)
  loc_1E2C00E:               End If
  loc_1E2C016:               If (var_C0 <> vbNullString) Then
  loc_1E2C03C:                 var_1A4 = (Chr(&HF) + CVar(var_C0))
  loc_1E2C043:                 var_1DC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo")))) + Chr(&H12))
  loc_1E2C049:                 Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF))
  loc_1E2C060:                 var_9E = (var_9E + 1)
  loc_1E2C063:               End If
  loc_1E2C0D4:               var_2A8 = Chr(&H12)
  loc_1E2C0E2:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_1E2C0E9:               var_1FC = (Chr(&H12) + Space(1))
  loc_1E2C0F3:               var_22C = (CVar(var_C4.Fields.Item("CardNo")) + CVar(Proc_6_45_EADFB8("PARTICULARS", &H1C)))
  loc_1E2C0FA:               var_260 = (Trim(CVar(Proc_6_45_EADFB8("PARTICULARS", &H1C))) + Space(1))
  loc_1E2C104:               var_280 = (var_9E Or (Trim(CVar(Proc_6_45_EADFB8("PARTICULARS", &H1C))) = vbNullString) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E2C10B:               var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E, var_9E) & "/" & MemVar_1F95168 & "/") & var_9E Or (Trim(CVar(Proc_6_45_EADFB8("PARTICULARS", &H1C))) = vbNullString) + var_2A8)
  loc_1E2C111:               Print 1, CVar(Proc_6_52_EAE084("*DUPLICATE*", &HC))
  loc_1E2C149:               var_9E = (var_9E + 1)
  loc_1E2C162:               var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2C168:               Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_1E2C175:               ' Referenced from: 1E2C2EC
  loc_1E2C184:               If Not(var_D0.EOF) Then
  loc_1E2C1FB:                 var_260 = Space(1)
  loc_1E2C20F:                 var_1CC = var_D0.Fields
  loc_1E2C217:                 var_240 = var_1CC.Item("qty")
  loc_1E2C226:                 Proc_6_39_E7D3A0(var_2A8, CVar(var_240))
  loc_1E2C269:                 var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3)))
  loc_1E2C270:                 var_1FC = (Chr(&H12) + Space(1))
  loc_1E2C27A:                 var_250 = (CVar(var_C4.Fields.Item("CardNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C)))
  loc_1E2C281:                 var_270 = (Space(1) + var_260)
  loc_1E2C28B:                 var_30C = (CVar(Proc_6_52_EAE084("Qty", 6)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2A8, "0.000")), 6, 1)))
  loc_1E2C291:                 Print 1, CVar(var_344)
  loc_1E2C2D5:                 var_D0.MoveNext
  loc_1E2C2E0:                 var_9E = (var_9E + 1)
  loc_1E2C2E9:                 var_BA = (var_BA + 1)
  loc_1E2C2EC:                 GoTo loc_1E2C175
  loc_1E2C2EF:               End If
  loc_1E2C2EF:             End If
  loc_1E2C32A:             var_17C = Replace(CStr(Space(&H27)), " ", "=", 1, -1, 0)
  loc_1E2C343:             var_1DC = (Chr(&HF) + CVar("PARTICULARS"))
  loc_1E2C34A:             var_20C = (Space(1) + Chr(&H12))
  loc_1E2C350:             Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E2C372:             var_9E = (var_9E + 1)
  loc_1E2C397:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2C39E:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2C3A4:             Print 1, Space(1)
  loc_1E2C3BB:             var_9E = (var_9E + 1)
  loc_1E2C3E0:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2C3E7:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2C3ED:             Print 1, Space(1)
  loc_1E2C404:             var_9E = (var_9E + 1)
  loc_1E2C429:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2C430:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2C436:             Print 1, Space(1)
  loc_1E2C44D:             var_9E = (var_9E + 1)
  loc_1E2C472:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2C479:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2C47F:             Print 1, Space(1)
  loc_1E2C496:             var_9E = (var_9E + 1)
  loc_1E2C4BB:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2C4C2:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2C4C8:             Print 1, Space(1)
  loc_1E2C4DF:             var_9E = (var_9E + 1)
  loc_1E2C502:             var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E2C508:             Print 1, Chr(&H12)
  loc_1E2C519:             Close 1
  loc_1E2C554:             If (Proc_6_38_E69628(CVar(var_CC.Fields.Item("Printer")), var_9E, var_9E, var_9E, var_9E, var_9E) <> vbNullString) Then
  loc_1E2C57C:               Open "C:\reptmp\TOKENPrint_" & CStr(var_CC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E2C5DA:               Print 1, CVar("TYPE C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT>") & var_CC.Fields.Item("Printer").Value
  loc_1E2C5FA:             Else
  loc_1E2C61F:               Open "C:\reptmp\TOKENPrint_" & CStr(var_CC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E2C656:               Print 1, "TYPE C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E2C667:             End If
  loc_1E2C669:             Close 1
  loc_1E2C673:             If (MemVar_1F953BC <> "Y") Then
  loc_1E2C6A5:               var_B0 = CVar(Shell(CVar("C:\reptmp\TOKENPrint_" & CStr(var_CC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1E2C6B3:             End If
  loc_1E2C6B6:             var_CC.MoveNext
  loc_1E2C6BB:             GoTo loc_1E2B95F
  loc_1E2C6BE:           End If
  loc_1E2C6BE:         End If
  loc_1E2C6BE:       End If
  loc_1E2C6BE:     End If
  loc_1E2C6C1:     var_C4.MoveNext
  loc_1E2C6C6:     GoTo loc_1E272C7
  loc_1E2C6C9:   End If
  loc_1E2C6CB:   Close 1
  loc_1E2C6D4:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1E2C709:   var_1A4 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_1E2C70F:   Print 1, var_1A4
  loc_1E2C725:   Close 1
  loc_1E2C72F:   If (MemVar_1F953BC = "Y") Then
  loc_1E2C74B:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1E2C755:   Else
  loc_1E2C76E:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1E2C77B:     var_13E = (var_13E + 1)
  loc_1E2C79D:     var_174 = CVar(var_104.Fields.Item("NoOfBill")) 'Address
  loc_1E2C7A4:     Proc_6_39_E7D3A0(var_1A4, var_174, var_13E, var_9E, var_BA)
  loc_1E2C7BE:     If (var_1A4 > 1) Then
  loc_1E2C7C7:       If (var_140 = 0) Then
  loc_1E2C7F0:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_174, -1
  loc_1E2C802:       End If
  loc_1E2C808:       If (var_140 = 0) Then
  loc_1E2C80D:         var_140 = &HFF
  loc_1E2C810:         GoTo loc_1E271CF
  loc_1E2C813:       End If
  loc_1E2C83E:       Proc_6_39_E7D3A0(var_1A4, CVar(var_104.Fields.Item("NoOfBill")), var_13E, 2, var_140)
  loc_1E2C84B:       var_1B4 = (var_1A4 - 1)
  loc_1E2C85A:       For var_5A8 = var_9E To CInt(CVar("TYPE C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT>") & var_CC.Fields.Item("Printer").Value):   var_180 = var_5A8 'Integer
  loc_1E2C86A:         var_174 = "C:\reptmp\SBILL.BAT"
  loc_1E2C879:         var_B0 = CVar(Shell(var_174, 0)) 'Variant
  loc_1E2C883:       Next var_5A8 'Integer
  loc_1E2C888:     End If
  loc_1E2C888:   End If
  loc_1E2C888:   GoTo loc_1E2056E
  loc_1E2C88B: End If
  loc_1E2C8B1: unk_43FED1.Execute "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_174, -1
  loc_1E2C8BC: Set var_F4 = var_104.Fields
  loc_1E2C8DB: var_F6 = CInt(var_F4.RecordCount)
  loc_1E2C8E1: var_100 = CDbl(0)
  loc_1E2C8F8: Loop Until (var_F4.RecordCount > 0) 'do at: 1E2056E
  loc_1E2C8FD: Close 1
  loc_1E2C906: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1E2C90D: var_F4.MoveFirst
  loc_1E2C912: ' Referenced from: 1E3041B
  loc_1E2C921: Loop Until Not(var_F4.EOF) 'do at: 1E2041E
  loc_1E2C927: MemVar_1F953C4 = "N"
  loc_1E2C92E: MemVar_1F953C8 = "N"
  loc_1E2C935: MemVar_1F953CC = "K"
  loc_1E2C971: var_178 = Proc_6_38_E69628(CVar(var_F4.Fields.Item("OutletCode")), "Select * from Depart Where Code='", var_1A4, -1)
  loc_1E2C985: unk_43FED1.Execute var_1CC & "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_100, var_F6
  loc_1E2C990: Set var_104 = var_1CC
  loc_1E2C9B7: var_1C8 = "select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='"
  loc_1E2C9FD: unk_43FED1.Execute CStr(var_1C8 & var_F4.Fields.Item("OutletDocid").Value & "' group by revmast.code,TaxPer Order by Min(Sale2.SNo1),TaxPer"), Space(1), -1
  loc_1E2CA08: Set var_10C = var_1CC
  loc_1E2CA22: var_1C8 = "Select Sale1.* ,S.CardNo,Case When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then IsNull(S.Name,'') Else '' End MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='"
  loc_1E2CA5F: var_8C = CStr(var_1C8 & var_F4.Fields.Item("OutletDocid").Value & "'")
  loc_1E2CA79: var_1A4 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1E2CAB4: var_90 = CStr(var_1A4 & var_F4.Fields.Item("OutletDocid").Value & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) ")
  loc_1E2CAFD: var_1B4 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_F4.Fields.Item("OutletDocid").Value 
  loc_1E2CB0B: var_94 = CStr(var_1B4 & "' order by sno ")
  loc_1E2CB27: var_1A4 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1E2CB3C: var_180 = var_F4.Fields
  loc_1E2CB4C: var_174 = var_180.Item("OutletDocid").Value
  loc_1E2CB5D: var_1DC = var_1A4 & var_174 & "' ORDER BY I.Kitchen" 
  loc_1E2CB62: var_98 = CStr(var_1DC)
  loc_1E2CB7F: If (var_8C = vbNullString) Then
  loc_1E2CB82:   Exit Sub
  loc_1E2CB83: End If
  loc_1E2CB8B: If (var_90 = vbNullString) Then
  loc_1E2CB8E:   Exit Sub
  loc_1E2CB8F: End If
  loc_1E2CB97: If (var_94 = vbNullString) Then
  loc_1E2CB9A:   Exit Sub
  loc_1E2CB9B: End If
  loc_1E2CBB1: unk_43FED1.Execute var_8C, var_174, -1
  loc_1E2CBBC: Set var_C4 = var_180
  loc_1E2CBDB: unk_43FED1.Execute var_90, var_174, -1
  loc_1E2CBE6: Set var_D4 = var_180
  loc_1E2CC05: unk_43FED1.Execute var_94, var_174, -1
  loc_1E2CC10: Set var_D8 = var_180
  loc_1E2CC2F: unk_43FED1.Execute var_98, var_174, -1
  loc_1E2CC3A: Set var_CC = var_180
  loc_1E2CC43: ' Referenced from: 1E3025A
  loc_1E2CC52: Loop Until Not(var_C4.EOF) 'do at: 1E2025D
  loc_1E2CC83: var_E4 = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1E2CC9B: var_180 = var_C4.Fields
  loc_1E2CCC5: If (Proc_6_38_E69628(CVar(var_180.Item("Printed")), var_180, var_180, var_180) <> "Y") Then
  loc_1E2CCCB:   var_23C = 0
  loc_1E2CCF8:   var_180 = var_104.Fields
  loc_1E2CD27:   unk_43FED1.Execute CStr("SELECT TOKENPrint FROM Depart where Code='" & var_180.Item("Code").Value & "'"), var_1DC, -1
  loc_1E2CD2F:   var_1CC = var_1CC.Fields
  loc_1E2CD37:   var_23C = var_240.Item(var_240)
  loc_1E2CD6F:   If (Proc_6_38_E69628(CVar(var_284), var_284, var_180) = "Yes") Then
  loc_1E2CD86:     If (var_CC.RecordCount > 0) Then
  loc_1E2CD89:       ' Referenced from: 1E2D5F6
  loc_1E2CD98:       If Not(var_CC.EOF) Then
  loc_1E2CD9D:         var_BA = 1
  loc_1E2CDB4:         var_1A4 = CVar("Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1E2CE21:         var_22C = var_1A4 & var_C4.Fields.Item("DocID").Value & "' AND I.Kitchen='" & var_CC.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1E2CE2F:         unk_43FED1.Execute CStr(var_22C), Space(1), -1
  loc_1E2CE3A:         Set var_D0 = var_284
  loc_1E2CE74:         If (var_D0.RecordCount > 0) Then
  loc_1E2CEC4:           Print 1, Proc_260_1_10A4640(CStr(var_CC.Fields.Item("Department").Value), "D", &H26, var_284)
  loc_1E2CF66:           Proc_6_39_E7D3A0(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E2CF9C:           var_190 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_BA) & "/" & MemVar_1F95168 & "/") & var_260), &H14)
  loc_1E2CFB4:           var_1A4 = (Chr(&HF) + "Bill No.: ")
  loc_1E2CFBB:           var_20C = (var_1A4 + IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString))
  loc_1E2CFC8:           var_2EC = (CVar(var_190) + Chr(&H12))
  loc_1E2CFCC:           var_2FC = var_1A4 & var_C4.Fields.Item("DocID").Value & "' AND I.Kitchen='" & var_CC.Fields.Item("Kitchen").Value & Format(Chr(&H12), "0.000") 
  loc_1E2CFD2:           Print 1, var_2FC
  loc_1E2D017:           var_9E = (var_9E + 1)
  loc_1E2D082:           var_1CC = var_C4.Fields
  loc_1E2D0C7:           var_1A4 = (Chr(&HF) + "Date    : ")
  loc_1E2D0D1:           var_1FC = (var_1A4 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF)))
  loc_1E2D0D8:           var_22C = (IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString) + Space(2))
  loc_1E2D0E1:           var_250 = (CVar(var_C4.Fields.Item("vType")) + "Time : ")
  loc_1E2D0EB:           var_280 = (CVar(var_C4.Fields.Item("VNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1CC.Item("VTIME")), var_1CC), 5)))
  loc_1E2D0F2:           var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_BA) & "/" & MemVar_1F95168 & "/") & CVar(var_1CC.Item("VTIME")) + Chr(&H12))
  loc_1E2D0F8:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1CC.Item("VTIME")), var_1CC), 5))
  loc_1E2D137:           var_9E = (var_9E + 1)
  loc_1E2D1AB:           var_2A8 = Chr(&H12)
  loc_1E2D1B9:           var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_1E2D1C0:           var_1FC = (CVar(var_C4.Fields.Item("VDate")) + Space(1))
  loc_1E2D1CA:           var_22C = (IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString) + CVar(Proc_6_45_EADFB8("PARTICULARS", &H1C)))
  loc_1E2D1D1:           var_260 = (CVar(var_C4.Fields.Item("vType")) + Space(1))
  loc_1E2D1DB:           var_280 = (CVar(var_1CC.Item("VTIME")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E2D1E2:           var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_BA) & "/" & MemVar_1F95168 & "/") & CVar(var_1CC.Item("VTIME")) + var_2A8)
  loc_1E2D1E8:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E2D220:           var_9E = (var_9E + 1)
  loc_1E2D239:           var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2D23F:           Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_1E2D24C:           ' Referenced from: 1E2D3C3
  loc_1E2D25B:           If Not(var_D0.EOF) Then
  loc_1E2D2FD:             Proc_6_39_E7D3A0(var_2A8, CVar(var_D0.Fields.Item("qty")))
  loc_1E2D340:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, var_9E)))
  loc_1E2D347:             var_1FC = (CVar(var_C4.Fields.Item("VDate")) + Space(1))
  loc_1E2D351:             var_250 = (IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C)))
  loc_1E2D358:             var_270 = (Space(1) + Space(1))
  loc_1E2D362:             var_30C = (CVar(Proc_6_52_EAE084("Qty", 6)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2A8, "0.00")), 6, 1)))
  loc_1E2D368:             Print 1, CVar(var_344)
  loc_1E2D3AC:             var_D0.MoveNext
  loc_1E2D3B7:             var_9E = (var_9E + 1)
  loc_1E2D3C0:             var_BA = (var_BA + 1)
  loc_1E2D3C3:             GoTo loc_1E2D24C
  loc_1E2D3C6:           End If
  loc_1E2D3C6:         End If
  loc_1E2D3C9:         var_CC.MoveNext
  loc_1E2D409:         var_17C = Replace(CStr(Space(&H27)), " ", "=", 1, -1, 0)
  loc_1E2D422:         var_1DC = (Chr(&HF) + CVar("PARTICULARS"))
  loc_1E2D429:         var_20C = (Space(1) + Chr(&H12))
  loc_1E2D42F:         Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E2D451:         var_9E = (var_9E + 1)
  loc_1E2D476:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D47D:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2D483:         Print 1, Space(1)
  loc_1E2D49A:         var_9E = (var_9E + 1)
  loc_1E2D4BF:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D4C6:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2D4CC:         Print 1, Space(1)
  loc_1E2D4E3:         var_9E = (var_9E + 1)
  loc_1E2D508:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D50F:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2D515:         Print 1, Space(1)
  loc_1E2D52C:         var_9E = (var_9E + 1)
  loc_1E2D551:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D558:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2D55E:         Print 1, Space(1)
  loc_1E2D575:         var_9E = (var_9E + 1)
  loc_1E2D59A:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D5A1:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2D5A7:         Print 1, Space(1)
  loc_1E2D5BE:         var_9E = (var_9E + 1)
  loc_1E2D5E1:         var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E2D5E7:         Print 1, Chr(&H12)
  loc_1E2D5F6:         GoTo loc_1E2CD89
  loc_1E2D5F9:       End If
  loc_1E2D5F9:     End If
  loc_1E2D5F9:   End If
  loc_1E2D5F9: End If
  loc_1E2D5FB: var_9E = 0
  loc_1E2D600: var_A0 = 1
  loc_1E2D618: If ((Me(4) = "Restaurant") Or (Me(4) = "Hall")) Then
  loc_1E2D629:   var_9C = "** " & "BILL" & " **"
  loc_1E2D632: Else
  loc_1E2D65A:   var_9C = Proc_6_38_E69628(CVar(var_104.Fields.Item("Name")), var_A0, var_9E, var_9E, var_9E, var_9E, var_9E)
  loc_1E2D663: End If
  loc_1E2D669: Loop Until (var_9E = 0) 'do at: 1E20252
  loc_1E2D69A: var_E4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E2D6D1: var_E8 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1E2D713: If (Proc_6_38_E69628(CVar(var_104.Fields.Item("CstNo")), var_9E, var_9E, var_BA) <> vbNullString) Then
  loc_1E2D778:   var_1DC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104.Fields.Item("CstNo")), var_9E), &H1E)))
  loc_1E2D77F:   var_20C = (Space(1) + Chr(&H12))
  loc_1E2D785:   Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E2D7AC:   var_9E = (var_9E + 1)
  loc_1E2D7AF: End If
  loc_1E2D7E8: If (Proc_6_38_E69628(CVar(var_104.Fields.Item("LstNo")), var_9E) <> vbNullString) Then
  loc_1E2D84D:   var_1DC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104.Fields.Item("LstNo")), 1), &H1E)))
  loc_1E2D854:   var_20C = (Space(1) + Chr(&H12))
  loc_1E2D85A:   Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E2D881:   var_9E = (var_9E + 1)
  loc_1E2D884: End If
  loc_1E2D8A3: var_174 = CVar(var_F4.Fields.Item("OutletCode")) 'Address
  loc_1E2D8C0: var_9E = Proc_260_3_136E304(var_A0, var_9E, &H26)
  loc_1E2D8EB: var_174 = CVar(var_104.Fields.Item("OutletTitle")) 'Address
  loc_1E2D942: If (Proc_6_38_E69628(var_174, var_9E) Or (Proc_6_38_E69628(CVar(var_104.Fields.Item("OutletTitle")), (Proc_6_38_E69628(var_174, var_9E) = "Y")) = vbNullString)) Then
  loc_1E2D974:   var_1B4 = (CVar(Proc_260_1_10A4640(var_9C, "D")) + Chr(&H12))
  loc_1E2D97A:   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104.Fields.Item("LstNo")), 1), &H1E))
  loc_1E2D990: End If
  loc_1E2D9A8: If (Proc_6_38_E69628(MemVar_1F95140, &H26) <> vbNullString) Then
  loc_1E2D9BF:   var_EC = var_9E & Proc_6_38_E69628(MemVar_1F95140, "PHONE NO.")
  loc_1E2D9EE:   var_1DC = (38 - Len(Trim(var_EC)))
  loc_1E2DA21:   var_280 = (38 - Len(Trim(var_EC)))
  loc_1E2DA4B:   var_22C = (Chr(&HF) + Space(CLng((Space(1) / 2))))
  loc_1E2DA55:   var_250 = (CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C)) + CVar(var_EC))
  loc_1E2DA5C:   var_2EC = (Space(1) + Space(CLng((CVar(var_D0.Fields.Item("qty")) / 2))))
  loc_1E2DA63:   var_30C = (Format((CVar(var_D0.Fields.Item("qty")) / 2), "0.00") + Chr(&H12))
  loc_1E2DA69:   Print 1, CVar(var_344)
  loc_1E2DA8C:   var_9E = (var_9E + 1)
  loc_1E2DA8F: End If
  loc_1E2DAB1: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2DAB8: var_1DC = (Trim(var_EC) + Chr(&H12))
  loc_1E2DABE: Print 1, Space(1)
  loc_1E2DAD5: var_9E = (var_9E + 1)
  loc_1E2DB11: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo")), var_9E) <> vbNullString) Then
  loc_1E2DB75:   var_1A4 = (Chr(&HF) + "Membership No.: ")
  loc_1E2DB7F:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CardNo"))), &H1E)))
  loc_1E2DB86:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2DB8C:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2DBB5:   var_9E = (var_9E + 1)
  loc_1E2DBB8: End If
  loc_1E2DBF1: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("MemName")), var_9E) <> vbNullString) Then
  loc_1E2DC55:   var_1A4 = (Chr(&HF) + "Member : ")
  loc_1E2DC5F:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("MemName"))), &H1E)))
  loc_1E2DC66:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2DC6C:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2DC95:   var_9E = (var_9E + 1)
  loc_1E2DC98: End If
  loc_1E2DCD1: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("PhoneNo")), var_9E) <> vbNullString) Then
  loc_1E2DD35:   var_1A4 = (Chr(&HF) + "Phone No: ")
  loc_1E2DD3F:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("PhoneNo"))), &H1E)))
  loc_1E2DD46:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2DD4C:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2DD75:   var_9E = (var_9E + 1)
  loc_1E2DD78: End If
  loc_1E2DDB1: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CustName")), var_9E) <> vbNullString) Then
  loc_1E2DE15:   var_1A4 = (Chr(&HF) + "Customer: ")
  loc_1E2DE1F:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CustName"))), &H1E)))
  loc_1E2DE26:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2DE2C:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2DE55:   var_9E = (var_9E + 1)
  loc_1E2DE58: End If
  loc_1E2DE91: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr1")), var_9E) <> vbNullString) Then
  loc_1E2DEF5:   var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E2DEFF:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr1"))), &H1E)))
  loc_1E2DF06:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2DF0C:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2DF35:   var_9E = (var_9E + 1)
  loc_1E2DF38: End If
  loc_1E2DF71: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2")), var_9E) <> vbNullString) Then
  loc_1E2DFD5:   var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E2DFDF:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2"))), &H1E)))
  loc_1E2DFE6:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2DFEC:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2E015:   var_9E = (var_9E + 1)
  loc_1E2E018: End If
  loc_1E2E051: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E2E077:   var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2E07E:   var_1DC = (Trim(var_EC) + Chr(&H12))
  loc_1E2E084:   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2"))), &H1E))
  loc_1E2E09B:   var_9E = (var_9E + 1)
  loc_1E2E09E: End If
  loc_1E2E0D7: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E2E13B:   var_1A4 = (Chr(&HF) + "Company : ")
  loc_1E2E145:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName"))), &H1E)))
  loc_1E2E14C:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2E152:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2E17B:   var_9E = (var_9E + 1)
  loc_1E2E17E: End If
  loc_1E2E1B7: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd1")), var_9E) <> vbNullString) Then
  loc_1E2E21B:   var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E2E225:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd1"))), &H1E)))
  loc_1E2E22C:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2E232:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2E25B:   var_9E = (var_9E + 1)
  loc_1E2E25E: End If
  loc_1E2E297: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd2")), var_9E) <> vbNullString) Then
  loc_1E2E2FB:   var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E2E305:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd2"))), &H1E)))
  loc_1E2E30C:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2E312:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2E33B:   var_9E = (var_9E + 1)
  loc_1E2E33E: End If
  loc_1E2E377: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd3")), var_9E) <> vbNullString) Then
  loc_1E2E3DB:   var_1A4 = (Chr(&HF) + "Address3: ")
  loc_1E2E3E5:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd3"))), &H1E)))
  loc_1E2E3EC:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2E3F2:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2E41B:   var_9E = (var_9E + 1)
  loc_1E2E41E: End If
  loc_1E2E457: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompCity")), var_9E) <> vbNullString) Then
  loc_1E2E4BB:   var_1A4 = (Chr(&HF) + "City    : ")
  loc_1E2E4C5:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompCity"))), &H1E)))
  loc_1E2E4CC:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2E4D2:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2E4FB:   var_9E = (var_9E + 1)
  loc_1E2E4FE: End If
  loc_1E2E537: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompStateCode")), var_9E) <> vbNullString) Then
  loc_1E2E5CD:   var_260 = Chr(&H12)
  loc_1E2E5DA:   var_1A4 = (Chr(&HF) + "State   : ")
  loc_1E2E5E4:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompStateCode"))), 3)))
  loc_1E2E5EE:   var_250 = ((Space(1) / 2) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompState"))), &H1B)))
  loc_1E2E5F5:   var_270 = (Space(1) + var_260)
  loc_1E2E5FB:   Print 1, Len(Trim(var_EC))
  loc_1E2E634:   var_9E = (var_9E + 1)
  loc_1E2E637: End If
  loc_1E2E670: If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompGSTIN")), var_9E) <> vbNullString) Then
  loc_1E2E6D4:   var_1A4 = (Chr(&HF) + "GSTIN   : ")
  loc_1E2E6DE:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompGSTIN"))), &H1E)))
  loc_1E2E6E5:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2E6EB:   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompState"))), &H1B))
  loc_1E2E714:   var_9E = (var_9E + 1)
  loc_1E2E717: End If
  loc_1E2E72D: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2E733: Print 1, Trim(var_EC)
  loc_1E2E7C7: Proc_6_39_E7D3A0(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E2E7FD: var_434 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_260), &H14)
  loc_1E2E82E: var_2EC = Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))))
  loc_1E2E8D8: var_3C8 = IIf((Me(4) = "Outlet"), CVar("Table No.: " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))), IIf((Me(4) = "Room Service"), CVar("Room No. : " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))), vbNullString))
  loc_1E2E931: var_1A4 = (Chr(&HF) + "Bill No.  : ")
  loc_1E2E938: var_20C = (Trim(var_EC) + IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString))
  loc_1E2E94F: var_480 = (CVar(var_434 & Proc_6_45_EADFB8(CStr(IIf((var_2EC = "."), vbNullString, var_3C8)), &HF)) + Chr(&H12))
  loc_1E2E959: Print 1, Chr(&H12) & CVar("Room : " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo"))))
  loc_1E2E9D2: var_9E = (var_9E + 1)
  loc_1E2EA75: var_1A4 = (Chr(&HF) + "Bill Date : ")
  loc_1E2EA7F: var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")), var_9E), &HC)))
  loc_1E2EA88: var_20C = (IIf((MemVar_1F95164 <> vbNullString), CVar(MemVar_1F95164 & "/"), vbNullString) + "Time : ")
  loc_1E2EA92: var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VTIME"))), 9)))
  loc_1E2EA99: var_280 = (var_260 + Chr(&H12))
  loc_1E2EA9F: Print 1, CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_260
  loc_1E2EADA: var_9E = (var_9E + 1)
  loc_1E2EAE8: If (var_590 = "Y") Then
  loc_1E2EB53:   var_20C = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), (Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E))) = "0"))) 'String
  loc_1E2EB8B:   If CBool(Not var_9E Or (Trim(var_20C) = vbNullString)) Then
  loc_1E2EBEF:     var_1A4 = (Chr(&HF) + "Order No. : ")
  loc_1E2EBF9:     var_1FC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo"))))))
  loc_1E2EC00:     var_22C = (CVar(var_C4.Fields.Item("KOTNo")) + Chr(&H12))
  loc_1E2EC06:     Print 1, Trim(Chr(&H12))
  loc_1E2EC2F:     var_9E = (var_9E + 1)
  loc_1E2EC32:   End If
  loc_1E2EC3A:   If (var_13C <> vbNullString) Then
  loc_1E2EC6F:     var_1A4 = (Chr(&HF) + "Party Name: ")
  loc_1E2EC79:     var_1DC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EADFB8(var_13C, &H1C)))
  loc_1E2EC80:     var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo"))))) + Chr(&H12))
  loc_1E2EC86:     Print 1, Chr(&H12)
  loc_1E2ECA4:     var_9E = (var_9E + 1)
  loc_1E2ECA7:   End If
  loc_1E2ECA7: End If
  loc_1E2ED06: If CBool((Trim(CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("KotYN")), var_9E))) = "Y") And (var_590 <> "Y")) Then
  loc_1E2ED6A:   var_1A4 = (Chr(&HF) + "KOT No.   : ")
  loc_1E2ED74:   var_1FC = (CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("KotYN")), var_9E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E), &H1C)))
  loc_1E2ED7B:   var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E2ED81:   Print 1, Trim(Chr(&H12))
  loc_1E2EDAA:   var_9E = (var_9E + 1)
  loc_1E2EDAD: End If
  loc_1E2EDD0: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2EDD7: var_1DC = (CVar(Proc_6_38_E69628(CVar(var_104.Fields.Item("KotYN")), var_9E)) + Chr(&H12))
  loc_1E2EDDD: Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")), var_9E), &H1C))
  loc_1E2EDF4: var_9E = (var_9E + 1)
  loc_1E2EE1D: var_1B4 = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Space(1))
  loc_1E2EE37: var_1FC = (var_9E + CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))
  loc_1E2EE43: var_20C = Space(1)
  loc_1E2EE4B: var_22C = (Chr(&H12) + var_20C)
  loc_1E2EE65: var_260 = (Trim(var_20C) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E2EE79: var_280 = (var_9E Or (Trim(var_20C) = vbNullString) + Space(1))
  loc_1E2EE93: var_2CC = (CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F95168 & "/") & var_9E Or (Trim(var_20C) = vbNullString) + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_1E2EEE6: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))))))
  loc_1E2EEED: var_1DC = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E2EEF3: Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2EF0A: var_9E = (var_9E + 1)
  loc_1E2EF30: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2EF37: var_1DC = (CVar(Proc_6_45_EADFB8("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E2EF3D: Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2EF54: var_9E = (var_9E + 1)
  loc_1E2EF59: var_BA = 1
  loc_1E2EF5F: var_D4.MoveFirst
  loc_1E2EF64: ' Referenced from: 1E2F208
  loc_1E2EF73: Loop Until Not(var_D4.EOF) 'do at: 1E1F20B
  loc_1E2EFC3: Proc_6_39_E7D3A0(var_20C, CVar(var_D4.Fields.Item("Rate")), var_BA)
  loc_1E2EFE3: var_250 = Format(var_20C, "0.00")
  loc_1E2F00E: Proc_6_39_E7D3A0(var_2EC, CVar(var_D4.Fields.Item("qty")), 1, 1)
  loc_1E2F059: Proc_6_39_E7D3A0(var_3C8, CVar(var_D4.Fields.Item("Amt")), 1, 1)
  loc_1E2F06D: var_3D8 = "0.00"
  loc_1E2F0A3: var_1DC = (CVar(Proc_6_45_EADFB8(CStr(var_D4.Fields.Item("ItemName").Value), &H10, 1, 1)) + Space(1))
  loc_1E2F0BC: var_270 = (var_9E + CVar(Proc_6_52_EAE084(CStr(var_250), 6, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))))))
  loc_1E2F0D0: var_2A8 = (Space(1) + Space(1))
  loc_1E2F0E9: var_32C = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_2EC, "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2F0FD: var_390 = (CVar("Room No. : " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))) + Space(1))
  loc_1E2F116: var_430 = (IIf((Me(4) = "Room Service"), CVar("Room No. : " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))), vbNullString) + CVar(Proc_6_52_EAE084(CStr(Format(var_3C8, var_3D8)), 9)))
  loc_1E2F190: var_1A4 = (Chr(&HF) + CVar(CStr(Chr(&H12))))
  loc_1E2F197: var_1DC = (Space(1) + Chr(&H12))
  loc_1E2F19D: Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2F1DB: Proc_6_39_E7D3A0(Space(1), CVar(var_D4.Fields.Item("Amt")))
  loc_1E2F1E3: var_1B4 = (CVar(var_E0) + Space(1))
  loc_1E2F1E8: var_E0 = CSng(Chr(&H12))
  loc_1E2F1FD: var_BA = (var_BA + 1)
  loc_1E2F203: var_D4.MoveNext
  loc_1E2F208: GoTo loc_1E2EF64
  loc_1E2F238: var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E2F242: var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E2F249: var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E2F24F: Print 1, var_20C
  loc_1E2F26A: var_9E = (var_9E + 1)
  loc_1E2F270: var_D8.MoveFirst
  loc_1E2F284: Loop Until Not(var_D8.EOF) 'do at: 1E1F7ED
  loc_1E2F2B1: var_5B8 = var_D8.Fields.Item("SunCode").Value 'Variant
  loc_1E2F2CF: Loop Until (var_5B8 = CVar(MemVar_1F95078 & "ROFF")) 'do at: 1E1F416
  loc_1E2F31F: Proc_6_39_E7D3A0(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E2F369: var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_D8.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1E2F37D: var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2F396: var_2A8 = (var_BA + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E2F3EC: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2F3F3: var_1DC = (var_D8.Fields.Item("DispName").Value + Chr(&H12))
  loc_1E2F3F9: Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2F410: var_9E = (var_9E + 1)
  loc_1E2F413: GoTo loc_1E1F7E2
  loc_1E2F429: Loop Until (var_5B8 = CVar(MemVar_1F95078 & "NET")) 'do at: 1E1F65E
  loc_1E2F459: var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E2F463: var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E2F46A: var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E2F470: Print 1, var_20C
  loc_1E2F48B: var_9E = (var_9E + 1)
  loc_1E2F4B0: var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2F4DB: Proc_6_39_E7D3A0(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E2F525: var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E2F539: var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2F552: var_2A8 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E2F5AB: Proc_6_39_E7D3A0(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2F5C5: Loop Until (var_1A4 > 0) 'do at: 1E1F612
  loc_1E2F5EB: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2F5F2: var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2F5F8: Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2F60F: var_9E = (var_9E + 1)
  loc_1E2F63F: Proc_6_39_E7D3A0(var_1A4, CVar(var_D8.Fields.Item("Amount")), CVar(var_100))
  loc_1E2F647: var_1B4 = (var_9E + var_1A4)
  loc_1E2F64C: var_100 = CSng(Chr(&H12))
  loc_1E2F65B: GoTo loc_1E1F7E2
  loc_1E2F680: var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2F6AB: Proc_6_39_E7D3A0(var_250, CVar(var_D8.Fields.Item("Amount")), var_100)
  loc_1E2F6BF: var_260 = "0.00"
  loc_1E2F6F5: var_1DC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E2F709: var_20C = (CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2F722: var_2A8 = (var_E0 + CVar(Proc_6_52_EAE084(CStr(Format(var_250, var_260)), 9, var_20C)))
  loc_1E2F77B: Proc_6_39_E7D3A0(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2F795: Loop Until (var_1A4 > 0) 'do at: 1E1F7E2
  loc_1E2F7BB: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAE084("Amount", 9)))))
  loc_1E2F7C2: var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2F7C8: Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2F7DF: var_9E = (var_9E + 1)
  loc_1E2F7E5: var_D8.MoveNext
  loc_1E2F7EA: GoTo loc_1E1F275
  loc_1E2F810: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2F817: var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2F81D: Print 1, CVar(Proc_6_52_EAE084("Rate", 6, Chr(&H12)))
  loc_1E2F834: var_9E = (var_9E + 1)
  loc_1E2F84B: Loop Until (var_10C.RecordCount > 0) 'do at: 1E1FAE2
  loc_1E2F851: var_10C.MoveFirst
  loc_1E2F865: Loop Until Not(var_10C.EOF) 'do at: 1E1FA98
  loc_1E2F8E9: Proc_6_39_E7D3A0(var_260, CVar(var_10C.Fields.Item("TaxPer")))
  loc_1E2F914: Proc_6_39_E7D3A0(var_2EC, CVar(var_10C.Fields.Item("TaxableAmt")))
  loc_1E2F95F: Proc_6_39_E7D3A0(var_3D8, CVar(var_10C.Fields.Item("TaxAmt")), 1)
  loc_1E2F98F: var_22C = (Trim(Left(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)) + Space(1))
  loc_1E2F99B: var_280 = (CVar(var_D8.Fields.Item("Amount")) + CVar(CStr(var_260)))
  loc_1E2F9A4: var_2A8 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_10C.Fields.Item("TaxPer")), var_260)), 9, Space(1))) + "% On (")
  loc_1E2F9AB: var_31C = (CVar(Proc_6_52_EAE084("Amount", 9)) + Format(var_2EC, "0.00"))
  loc_1E2F9B4: var_32C = (CVar(Proc_6_52_EAE084(CStr(Format(var_2EC, "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", 9)))) + ")")
  loc_1E2F9D5: var_3A0 = (CVar(Proc_6_45_EADFB8(CStr(CVar("Room No. : " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo"))))), &H20, 1, 1)) + Space(1))
  loc_1E2F9EE: var_45C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_3D8, "0.00")), 7, CVar(var_D4.Fields.Item("Amt")))))
  loc_1E2FA63: var_164 = CVar(CStr(CVar(var_434 & Proc_6_45_EADFB8(CStr(IIf((var_2EC = "."), vbNullString, CVar(var_10C.Fields.Item("TaxAmt")))), &HF)))) 'String
  loc_1E2FA66: var_1A4 = (Chr(&HF) + var_164)
  loc_1E2FA6D: var_1DC = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E)) + Chr(&H12))
  loc_1E2FA73: Print 1, Left(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)
  loc_1E2FA8A: var_9E = (var_9E + 1)
  loc_1E2FA90: var_10C.MoveNext
  loc_1E2FA95: GoTo loc_1E1F856
  loc_1E2FABB: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2FAC2: var_1DC = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E)) + Chr(&H12))
  loc_1E2FAC8: Print 1, Left(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)
  loc_1E2FADF: var_9E = (var_9E + 1)
  loc_1E2FB1E: Loop Until CBool(var_C4.Fields.Item("WaiterName").Value <> vbNullString) 'do at: 1E1FBC5
  loc_1E2FB82: var_1A4 = (Chr(&HF) + "Steward Name  : ")
  loc_1E2FB8C: var_1FC = (CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("WaiterName")), var_9E, var_9E), &H14)))
  loc_1E2FB93: var_22C = (Trim(Left(Ucase(CVar(Proc_6_38_E69628(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)) + Chr(&H12))
  loc_1E2FB99: Print 1, CVar(var_D8.Fields.Item("Amount"))
  loc_1E2FBC2: var_9E = (var_9E + 1)
  loc_1E2FC0F: Loop Until (Ucase(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E))) = "HTW_SYSTEM") 'do at: 1E1FC76
  loc_1E2FC3F: var_1B4 = (Chr(&HF) + Space(&H1E))
  loc_1E2FC48: var_1DC = (Ucase(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E))) + "[E.& O.E.]")
  loc_1E2FC4F: var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("WaiterName")), var_9E, var_9E), &H14)) + Chr(&H12))
  loc_1E2FC55: Print 1, Chr(&H12)
  loc_1E2FC70: var_9E = (var_9E + 1)
  loc_1E2FC73: GoTo loc_1E1FD25
  loc_1E2FCD7: var_1A4 = (Chr(&HF) + "User Name     : ")
  loc_1E2FCE1: var_1FC = (Space(&H1E) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE)))
  loc_1E2FCEA: var_20C = (Chr(&H12) + "[E.& O.E.]")
  loc_1E2FCF1: var_250 = (Chr(&H12) + Chr(&H12))
  loc_1E2FCF7: Print 1, CVar(var_10C.Fields.Item("TaxPer"))
  loc_1E2FD22: var_9E = (var_9E + 1)
  loc_1E2FD2A: Print 1, vbNullString
  loc_1E2FD36: var_9E = (var_9E + 1)
  loc_1E2FD79: Loop Until CBool(Trim(CVar(var_104.Fields.Item("Slogan1"))) <> vbNullString) 'do at: 1E1FDF5
  loc_1E2FDC7: var_1DC = (Chr(&HF) + Trim(CVar(var_104.Fields.Item("Slogan1"))))
  loc_1E2FDCE: var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE)) + Chr(&H12))
  loc_1E2FDD4: Print 1, Chr(&H12)
  loc_1E2FDF2: var_9E = (var_9E + 1)
  loc_1E2FE35: Loop Until CBool(Trim(CVar(var_104.Fields.Item("Slogan2"))) <> vbNullString) 'do at: 1E1FEB1
  loc_1E2FE5C: var_194 = var_104.Fields.Item("Slogan2")
  loc_1E2FE83: var_1DC = (Chr(&HF) + Trim(CVar(var_194)))
  loc_1E2FE8A: var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE)) + Chr(&H12))
  loc_1E2FE90: Print 1, Chr(&H12)
  loc_1E2FEAE: var_9E = (var_9E + 1)
  loc_1E2FED4: var_1A4 = (Chr(&HF) + CVar(MemVar_1F9521C))
  loc_1E2FEDB: var_1DC = (CVar(var_194) + Chr(&H12))
  loc_1E2FEE1: Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E2FEF8: var_9E = (var_9E + 1)
  loc_1E2FF00: Print 1, vbNullString
  loc_1E2FF0C: var_9E = (var_9E + 1)
  loc_1E2FF15: var_F6 = (var_F6 - 1)
  loc_1E2FF1E: Loop Until (var_F6 = 0) 'do at: 1E20252
  loc_1E2FF29: var_174 = Chr(&HF)
  loc_1E2FF44: var_1A4 = (var_174 + CVar(var_E4))
  loc_1E2FF4B: var_1DC = (CVar(var_194) + Chr(&H12))
  loc_1E2FF51: Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E2FF68: var_9E = (var_9E + 1)
  loc_1E2FF71: var_1C8 = 0
  loc_1E2FFA0: unk_43FED1.Execute "Select IsNull(PrintNetPayable,'') from Depart Where Code='" & Me(8) & "'", var_174, -1
  loc_1E2FFA8: var_180 = var_180.Fields
  loc_1E2FFB0: var_1C8 = var_194.Item(var_194)
  loc_1E2FFB8: var_1CC = var_1CC.Value
  loc_1E2FFDF: Loop Until CBool(CVar(var_194) <> "No") 'do at: 1E200B0
  loc_1E3002D: var_1B4 = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Space(1))
  loc_1E30046: var_22C = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_100, "0.00")), 9, Chr(&H12), var_F6, var_9E)))
  loc_1E30089: var_1A4 = (Chr(&HF) + CVar(CStr(Chr(&H12))))
  loc_1E30090: var_1DC = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E30096: Print 1, "0.00"
  loc_1E300AD: var_9E = (var_9E + 1)
  loc_1E300D2: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E300D9: var_1DC = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E300DF: Print 1, "0.00"
  loc_1E300F6: var_9E = (var_9E + 1)
  loc_1E3011B: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E30122: var_1DC = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E30128: Print 1, "0.00"
  loc_1E3013F: var_9E = (var_9E + 1)
  loc_1E30164: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E3016B: var_1DC = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E30171: Print 1, "0.00"
  loc_1E30188: var_9E = (var_9E + 1)
  loc_1E301AD: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E301B4: var_1DC = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E301BA: Print 1, "0.00"
  loc_1E301D1: var_9E = (var_9E + 1)
  loc_1E301F6: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E301FD: var_1DC = (CVar(Proc_6_52_EAE084("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E30203: Print 1, "0.00"
  loc_1E3021A: var_9E = (var_9E + 1)
  loc_1E3023D: var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E30243: Print 1, Chr(&H12)
  loc_1E30255: var_C4.MoveNext
  loc_1E3025A: GoTo loc_1E2CC43
  loc_1E30260: var_F4.MoveNext
  loc_1E30276: Loop Until (var_F4.EOF = 0) 'do at: 1E2041B
  loc_1E3029B: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E302A2: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E302A8: Print 1, "0.00"
  loc_1E302BF: var_9E = (var_9E + 1)
  loc_1E302E4: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E302EB: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E302F1: Print 1, "0.00"
  loc_1E30308: var_9E = (var_9E + 1)
  loc_1E3032D: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E30334: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E3033A: Print 1, "0.00"
  loc_1E30351: var_9E = (var_9E + 1)
  loc_1E30376: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E3037D: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E30383: Print 1, "0.00"
  loc_1E3039A: var_9E = (var_9E + 1)
  loc_1E303BF: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E303C6: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E303CC: Print 1, "0.00"
  loc_1E303E3: var_9E = (var_9E + 1)
  loc_1E30406: var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E3040C: Print 1, Chr(&H12)
  loc_1E3041B: GoTo loc_1E2C912
  loc_1E30420: Close 1
  loc_1E30429: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1E3045E: var_1A4 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_1E30464: Print 1, var_1A4
  loc_1E3047A: Close 1
  loc_1E30484: Loop Until (MemVar_1F953BC = "Y") 'do at: 1E204AA
  loc_1E304A0: var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1E304A7: GoTo loc_1E2056E
  loc_1E304C3: var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1E304DE: var_180 = var_104.Fields
  loc_1E304F5: Proc_6_39_E7D3A0(var_1A4, CVar(var_180.Item("NoOfBill")), var_13E, 2, var_9E, var_9E, var_9E)
  loc_1E30508: For var_5BC = var_9E To CInt(var_1A4): var_9E = var_5BC 'Integer
  loc_1E30518:   var_174 = "C:\reptmp\SBILL.BAT"
  loc_1E30527:   var_B0 = CVar(Shell(var_174, 0)) 'Variant
  loc_1E30531: Next var_5BC 'Integer
  loc_1E3055C: unk_43FED1.Execute "Update Sale1 set Printed='Y' Where DocId In (Select OutletDocId from POS_SBill where Docid='" & Me(12) & "')", var_174, -1
  loc_1E30573: Set var_C4 = Nothing
  loc_1E3057B: Set var_D4 = Nothing
  loc_1E30583: Set var_D8 = Nothing
  loc_1E3058B: Set var_104 = Nothing
  loc_1E30593: Set var_CC = Nothing
  loc_1E3059B: Set var_D0 = Nothing
  loc_1E305A3: Set var_108 = Nothing
  loc_1E305AB: Set var_F4 = Nothing
  loc_1E305B3: Set var_C8 = Nothing
  loc_1E305BB: Set var_110 = Nothing
  loc_1E305C3: Set var_10C = Nothing
  loc_1E305C6: GoTo loc_1E205F2
  loc_1E305E2: MsgBox("Printer & Bill Type Not Defined ", &H40, var_1A4, Chr(&H12), "0.00")
  loc_1E305F2: Exit Sub
  loc_1E305F3: Proc_6_60_E63754(var_180)
  loc_1E305F8: Exit Sub
End Sub

Public Sub Proc_260_11_F5C17C(arg_C) 'F5C17C
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_F5C053: Set var_8C = arg_C 
  loc_F5C07B: var_8C.Fields.Append "mLine", &HC8, 2
  loc_F5C0A7: var_8C.Fields.Append "SunName", &HC8, &H19
  loc_F5C0D3: var_8C.Fields.Append "SunPer", &HC8, 5
  loc_F5C0FF: var_8C.Fields.Append "SunAmount", &HC8, &HC
  loc_F5C12B: var_8C.Fields.Append "Mark", &HC8, 1
  loc_F5C13B: var_8C.CursorType = 3
  loc_F5C148: var_8C.LockType = 3
  loc_F5C167: var_8C.Open var_A0, var_B0, -1
  loc_F5C16E: Set var_8C = Nothing 
  loc_F5C175: Set var_88 = arg_C 
  loc_F5C179: Exit Sub
End Sub

Public Sub Proc_260_12_10D27AC(arg_C) '10D27AC
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  Dim var_6C00 As Double
  loc_10D249F: Set var_8C = arg_C 
  loc_10D24C7: var_8C.Fields.Append "mLine", &HC8, 2
  loc_10D24F3: var_8C.Fields.Append "Sno", &HC8, 3
  loc_10D251F: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_10D254B: var_8C.Fields.Append "HSNCode", &HC8, &H1E
  loc_10D2577: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10D25A3: var_8C.Fields.Append "Qty", &HC8, &HC
  loc_10D25CF: var_8C.Fields.Append "Rate", &HC8, &HC
  loc_10D25FB: var_8C.Fields.Append "TaxAmt", &HC8, &HC
  loc_10D2627: var_8C.Fields.Append "Amount", &HC8, &HC
  loc_10D2653: var_8C.Fields.Append "TaxPer", &HC8, 8
  loc_10D267F: var_8C.Fields.Append "NonTaxable", &HC8, &HA
  loc_10D26AB: var_8C.Fields.Append "Taxable", &HC8, &HA
  loc_10D26D7: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_10D2703: var_8C.Fields.Append "ItemRate", &HC8, &HC
  loc_10D272F: var_8C.Fields.Append "Remarks", &HC8, &HFF
  loc_10D275B: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10D276B: var_8C.CursorType = 3
  loc_10D2778: var_8C.LockType = 3
  loc_10D2797: var_8C.Open var_A0, var_B0, -1
  loc_10D279E: Set var_8C = Nothing 
  loc_10D27A5: Set var_88 = arg_C 
  loc_10D27A9: Exit Sub
  loc_10D27AA: var_6C00 = -1
End Sub

Public Sub Proc_260_13_10D2460(arg_C) '10D2460
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_10D2153: Set var_8C = arg_C 
  loc_10D217B: var_8C.Fields.Append "mLine", &HC8, 2
  loc_10D21A7: var_8C.Fields.Append "Sno", &HC8, 3
  loc_10D21D3: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_10D21FF: var_8C.Fields.Append "HSNCode", &HC8, &H1E
  loc_10D222B: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10D2257: var_8C.Fields.Append "Qty", &HC8, &HC
  loc_10D2283: var_8C.Fields.Append "Rate", &HC8, &HC
  loc_10D22AF: var_8C.Fields.Append "TaxAmt", &HC8, &HC
  loc_10D22DB: var_8C.Fields.Append "Amount", &HC8, &HC
  loc_10D2307: var_8C.Fields.Append "TaxPer", &HC8, 8
  loc_10D2333: var_8C.Fields.Append "NonTaxable", &HC8, &HA
  loc_10D235F: var_8C.Fields.Append "Taxable", &HC8, &HA
  loc_10D238B: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_10D23B7: var_8C.Fields.Append "ItemRate", &HC8, &HC
  loc_10D23E3: var_8C.Fields.Append "Remarks", &HC8, &HFF
  loc_10D240F: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10D241F: var_8C.CursorType = 3
  loc_10D242C: var_8C.LockType = 3
  loc_10D244B: var_8C.Open var_A0, var_B0, -1
  loc_10D2452: Set var_8C = Nothing 
  loc_10D2459: Set var_88 = arg_C 
  loc_10D245D: Exit Sub
End Sub

Public Sub Proc_260_14_1EED228
  'Data Table: 43FECC
  Dim var_1FC As Variant
  Dim MemVar_629D24 As Recordset15
  Dim var_224 As String
  Dim var_228 As String
  Dim unk_43FED1 As Connection15
  Dim var_DC As Recordset15
  Dim var_9E As Integer
  Dim var_134 As Recordset15
  Dim var_22C As Variant
  Dim var_220 As Variant
  Dim var_248 As Variant
  Dim var_238 As Variant
  Dim var_25C As Variant
  Dim var_C4 As Recordset15
  Dim var_234 As Variant
  Dim var_BA As Integer
  Dim var_D8 As Recordset15
  Dim var_284 As Recordset15
  Dim var_24C As Variant
  Dim var_294 As Variant
  Dim var_26C As Variant
  Dim var_E4 As Double
  Dim var_1A4 As Double
  Dim var_1AC As Double
  Dim var_D0 As Recordset15
  Dim var_27C As Variant
  Dim var_D4 As Recordset15
  Dim var_2A8 As Recordset15
  Dim var_2E8 As Recordset15
  Dim var_138 As Recordset15
  Dim var_1B4 As Recordset15
  Dim var_2A4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_308 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_338 As String
  Dim var_34C As Variant
  Dim var_370 As Variant
  Dim var_380 As Variant
  Dim var_3D8 As Variant
  Dim var_156 As Integer
  Dim var_BC As Integer
  Dim var_13C As Recordset15
  Dim var_1B0 As Recordset15
  Dim var_F8 As Recordset15
  Dim var_FA As Integer
  Dim var_104 As Double
  Dim var_48C As Recordset15
  Dim var_490 As Recordset15
  Dim var_4A8 As Recordset15
  loc_1EE0760: On Error Goto loc_1EDD21F
  loc_1EE076E: MemVar_629D24.Filter = "ModType='POS'"
  loc_1EE0789: Loop Until (MemVar_629D24.RecordCount > 0) 'do at: 1EDD19D
  loc_1EE0797: If CBool(var_210 <> "Yes") Then
  loc_1EE07C0:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_220, -1
  loc_1EE07CB:   Set var_134 = var_22C
  loc_1EE07F1:   var_224 = "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='" & Me(12)
  loc_1EE0801:   unk_43FED1.Execute var_224 & "' group by revmast.code,TaxPer Order by TaxPer", var_220, -1
  loc_1EE080C:   Set var_1B0 = var_22C
  loc_1EE0825:   var_224 = "Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='" & Me(12)
  loc_1EE082C:   var_8C = var_224 & "'"
  loc_1EE0839:   var_224 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1EE0849:   var_90 = var_224 & Me(12) & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1EE086A:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_1EE087B:   var_224 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department,D.Printer FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1EE088B:   var_98 = var_224 & Me(12) & "' ORDER BY I.Kitchen"
  loc_1EE089D:   If (var_8C = vbNullString) Then
  loc_1EE08A0:     Exit Sub
  loc_1EE08A1:   End If
  loc_1EE08A9:   If (var_90 = vbNullString) Then
  loc_1EE08AC:     Exit Sub
  loc_1EE08AD:   End If
  loc_1EE08B5:   If (var_94 = vbNullString) Then
  loc_1EE08B8:     Exit Sub
  loc_1EE08B9:   End If
  loc_1EE08CF:   unk_43FED1.Execute var_8C, var_220, -1
  loc_1EE08DA:   Set var_C4 = var_22C
  loc_1EE08F9:   unk_43FED1.Execute var_90, var_220, -1
  loc_1EE0904:   Set var_D8 = var_22C
  loc_1EE0923:   unk_43FED1.Execute var_94, var_220, -1
  loc_1EE092E:   Set var_DC = var_22C
  loc_1EE094D:   unk_43FED1.Execute var_98, var_220, -1
  loc_1EE0958:   Set var_D0 = var_22C
  loc_1EE096A:   var_DC.Filter = "Amount<>0"
  loc_1EE097F:   var_106 = CByte(var_DC.RecordCount) 'Byte
  loc_1EE0987:   Set var_C8 = New 
  loc_1EE0992:   Set var_C8 = Proc_260_12_10D27AC(var_C8, var_22C, var_22C, var_22C)
  loc_1EE0999:   Set var_13C = New 
  loc_1EE09A4:   Set var_13C = Proc_260_11_F5C17C(var_13C, var_22C)
  loc_1EE09A7:   ' Referenced from: 1EE6A9F
  loc_1EE09B6:   If Not(Me.Recordset15.EOF) Then
  loc_1EE09BB:     var_9E = 0
  loc_1EE09C4:     If (var_9E = 0) Then
  loc_1EE09EF:       var_144 = Proc_6_38_E69628(CVar(var_134.Fields.Item("CstNo")), var_9E)
  loc_1EE0A07:       var_22C = var_134.Fields
  loc_1EE0A20:       var_148 = Proc_6_38_E69628(CVar(var_22C.Item("LstNo")), var_22C)
  loc_1EE0A3E:       var_170 = "Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144
  loc_1EE0A70:       var_174 = Proc_6_38_E69628(CVar(var_134.Fields.Item("Phone")))
  loc_1EE0A88:       var_22C = var_134.Fields
  loc_1EE0AD1:       var_228 = Proc_6_38_E69628(CVar(var_134.Fields.Item("COMPANYTITLE")), (Proc_6_38_E69628(CVar(var_22C.Item("COMPANYTITLE"))) = "Y"))
  loc_1EE0AEF:       If (var_22C Or (var_228 = vbNullString)) Then
  loc_1EE0AF5:         var_178 = "Y"
  loc_1EE0AF8:       End If
  loc_1EE0B6E:       If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("OutletTitle"))) = "Y") Or (Proc_6_38_E69628(CVar(var_134.Fields.Item("OutletTitle"))) = vbNullString)) Then
  loc_1EE0BA0:         var_10C = CStr(Trim(CVar(var_134.Fields.Item("Name"))))
  loc_1EE0BAD:       End If
  loc_1EE0BE6:       If (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintTokenNo"))) = "Yes") Then
  loc_1EE0C11:         var_154 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("TokenNo")))
  loc_1EE0C1A:       End If
  loc_1EE0C53:       If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Order_Booking"))) = "Y") Then
  loc_1EE0C59:         var_14C = "Order No:"
  loc_1EE0C84:         var_150 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EE0C90:       Else
  loc_1EE0CC9:         If (Proc_6_38_E69628(CVar(var_134.Fields.Item("KotYN"))) = "Y") Then
  loc_1EE0CCF:           var_14C = "KOT No:"
  loc_1EE0CFA:           var_150 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EE0D03:         End If
  loc_1EE0D03:       End If
  loc_1EE0D2B:       var_114 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("WaiterName")))
  loc_1EE0D6D:       If (Proc_6_38_E69628(CVar(var_134.Fields.Item("RestType"))) = "Outlet") Then
  loc_1EE0D73:         var_118 = "Table No:"
  loc_1EE0D9E:         var_11C = Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EE0DAA:       Else
  loc_1EE0DE3:         If (Proc_6_38_E69628(CVar(var_134.Fields.Item("RestType"))) = "Room Service") Then
  loc_1EE0DE9:           var_118 = "Room No:"
  loc_1EE0E14:           var_11C = Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EE0E1D:         End If
  loc_1EE0E1D:       End If
  loc_1EE0E45:       var_C0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("Printed")))
  loc_1EE0E79:       var_128 = CStr(var_C4.Fields.Item("GuarAtt").Value)
  loc_1EE0EAE:       var_124 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("VTIME")))
  loc_1EE0EF1:       var_26C = "dd/MM/yy"
  loc_1EE0EFA:       var_25C = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")))) 'String
  loc_1EE0F09:       var_120 = CStr(Format(var_25C, var_26C))
  loc_1EE0F43:       Proc_6_39_E7D3A0(var_25C, CVar(var_C4.Fields.Item("VNo")))
  loc_1EE0F4C:       var_12C = CStr(var_25C)
  loc_1EE0FA3:       var_25C = CVar(var_C4.Fields.Item("VNo")) 'Address
  loc_1EE0FAA:       Proc_6_39_E7D3A0(var_26C, var_25C)
  loc_1EE0FBE:       var_130 = Proc_96_43_F99D14(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), 1), var_26C)
  loc_1EE1011:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Roomtype"))) = "RO") Then
  loc_1EE1058:         var_16C = "GUEST  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE1090:         Proc_6_39_E7D3A0(var_25C, CVar(var_C4.Fields.Item("FolioNo")))
  loc_1EE109A:         var_18C = CStr(var_25C)
  loc_1EE10AC:       Else
  loc_1EE10DF:         var_248 = "MemberInfo"
  loc_1EE10FB:         var_25C = CVar(var_134.Fields.Item(var_248)) 'Address
  loc_1EE1122:         If (1 And (Proc_6_38_E69628(var_25C, (Proc_6_38_E69628(CVar(var_C4.Fields.Item("MemName"))) <> vbNullString)) = "Y")) Then
  loc_1EE1169:           var_16C = "MEMBER :   " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE117E:         Else
  loc_1EE11B7:           If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))) <> vbNullString) Then
  loc_1EE11FE:             var_16C = "REMARK :     " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE1210:           End If
  loc_1EE1210:         End If
  loc_1EE1210:       End If
  loc_1EE1238:       var_190 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("PhoneNo")))
  loc_1EE1269:       var_194 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CustName")))
  loc_1EE129A:       var_198 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr1")))
  loc_1EE12CB:       var_19C = Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2")))
  loc_1EE12FC:       var_1D0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName")))
  loc_1EE132D:       var_1D4 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd1")))
  loc_1EE135E:       var_1D8 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd2")))
  loc_1EE138F:       var_1DC = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd3")))
  loc_1EE13C0:       var_1E0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompCity")))
  loc_1EE13F1:       var_1E4 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompStateCode")))
  loc_1EE1422:       var_1E8 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompState")))
  loc_1EE142E:       var_1FC = "CompGSTIN"
  loc_1EE1453:       var_1EC = Proc_6_38_E69628(CVar(var_C4.Fields.Item(var_1FC)))
  loc_1EE145C:     End If
  loc_1EE145E:     var_BA = 1
  loc_1EE1464:     var_D8.MoveFirst
  loc_1EE1469:     ' Referenced from: 1EE1B9E
  loc_1EE1478:     If Not(var_D8.EOF) Then
  loc_1EE147E:       Set var_284 = var_C8 
  loc_1EE148D:       var_284.AddNew var_1FC, var_248
  loc_1EE14B7:       var_284.Fields.Item("mLine").Value = vbNullString
  loc_1EE14EB:       var_284.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EE153D:       var_284.Fields.Item("DispCode").Value = CVar(var_D8.Fields.Item("DispCode"))
  loc_1EE1591:       var_284.Fields.Item("HSNCode").Value = CVar(var_D8.Fields.Item("HSNCode"))
  loc_1EE15E5:       var_284.Fields.Item("Item").Value = CVar(var_D8.Fields.Item("ItemName"))
  loc_1EE161C:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("qty")))
  loc_1EE1664:       var_284.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EE16A3:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Rate")), 1)
  loc_1EE16EB:       var_284.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EE172A:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("TaxAmt")), 1)
  loc_1EE1772:       var_284.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EE17B1:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Amt")), 1, 1)
  loc_1EE17C5:       var_26C = "0.00"
  loc_1EE17F9:       var_284.Fields.Item("Amount").Value = Format(var_25C, var_26C)
  loc_1EE1838:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("TaxPer")), 1, 1)
  loc_1EE1843:       Proc_6_47_EF6560(var_26C, var_25C, 1)
  loc_1EE186B:       var_284.Fields.Item("TaxPer").Value = var_26C
  loc_1EE18A8:       Proc_6_47_EF6560(var_25C, CVar(var_D8.Fields.Item("nonTaxable")))
  loc_1EE18D0:       var_284.Fields.Item("NonTaxable").Value = var_25C
  loc_1EE190B:       Proc_6_47_EF6560(var_25C, CVar(var_D8.Fields.Item("Taxable")))
  loc_1EE1933:       var_284.Fields.Item("Taxable").Value = var_25C
  loc_1EE1970:       var_25C = CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item("Unit")), 1)) 'String
  loc_1EE1993:       var_284.Fields.Item("Unit").Value = var_25C
  loc_1EE19CE:       Proc_6_47_EF6560(var_25C, CVar(var_D8.Fields.Item("ItemRate")))
  loc_1EE19F6:       var_284.Fields.Item("ItemRate").Value = var_25C
  loc_1EE1A33:       var_25C = CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item("Remarks")))) 'String
  loc_1EE1A46:       var_238 = var_284.Fields
  loc_1EE1A56:       var_238.Item("Remarks").Value = var_25C
  loc_1EE1A6B:       var_248 = "*"
  loc_1EE1A74:       var_1FC = "Mark"
  loc_1EE1A90:       var_284.Fields.Item(var_1FC).Value = var_248
  loc_1EE1AA7:       var_284.Update var_1FC, var_248
  loc_1EE1AAE:       Set var_284 = Nothing 
  loc_1EE1ADF:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Amt")))
  loc_1EE1AE7:       var_26C = (CVar(var_E4) + var_25C)
  loc_1EE1AEC:       var_E4 = CSng(var_26C)
  loc_1EE1B28:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("nonTaxable")), CVar(var_1A4))
  loc_1EE1B30:       var_26C = (var_E4 + var_25C)
  loc_1EE1B35:       var_1A4 = CSng(var_26C)
  loc_1EE1B71:       Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Taxable")), CVar(var_1AC))
  loc_1EE1B79:       var_26C = (var_1A4 + var_25C)
  loc_1EE1B7E:       var_1AC = CSng(var_26C)
  loc_1EE1B93:       var_BA = (var_BA + 1)
  loc_1EE1B99:       var_D8.MoveNext
  loc_1EE1B9E:       GoTo loc_1EE1469
  loc_1EE1BA1:     End If
  loc_1EE1BB8:     var_234 = var_C4.Fields.Item("Printed")
  loc_1EE1BC0:     var_220 = CVar(var_234) 'Address
  loc_1EE1BDA:     If (Proc_6_38_E69628(var_220, var_BA) <> "Y") Then
  loc_1EE1BE0:       var_248 = 0
  loc_1EE1C0F:       unk_43FED1.Execute "SELECT TOKENPrintAfter FROM Depart where Code='" & Me(8) & "'", var_220, -1
  loc_1EE1C17:       var_22C = var_22C.Fields
  loc_1EE1C1F:       var_248 = var_234.Item(var_234)
  loc_1EE1C4F:       If (Proc_6_38_E69628(CVar(var_238), var_238) = "Yes") Then
  loc_1EE1C66:         If (var_D0.RecordCount > 0) Then
  loc_1EE1C6C:           var_D0.MoveFirst
  loc_1EE1C71:           ' Referenced from: 1EE3770
  loc_1EE1C80:           If Not(var_D0.EOF) Then
  loc_1EE1C85:             var_BA = 1
  loc_1EE1C9C:             var_224 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1EE1CAC:             var_25C = CVar(var_224 & Me(12) & "' AND I.Kitchen='") 'String
  loc_1EE1CDD:             var_248 = "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1EE1CF0:             unk_43FED1.Execute CStr(var_25C & var_D0.Fields.Item("Kitchen").Value & var_248), var_2A4, -1
  loc_1EE1CFB:             Set var_D4 = var_238
  loc_1EE1D21:             Set var_CC = New 
  loc_1EE1D2C:             Set var_CC = Proc_260_13_10D2460(var_CC, var_238, var_BA)
  loc_1EE1D35:             var_200 = Me.Recordset15.RecordCount
  loc_1EE1D43:             If (var_200 > 0) Then
  loc_1EE1D49:               var_1FC = "Department"
  loc_1EE1D6E:               var_110 = Proc_6_38_E69628(CVar(var_D0.Fields.Item(var_1FC)), var_1AC)
  loc_1EE1D77:               ' Referenced from: 1EE23D1
  loc_1EE1D86:               If Not(var_D4.EOF) Then
  loc_1EE1D8C:                 Set var_2A8 = var_CC 
  loc_1EE1D9B:                 var_2A8.AddNew var_1FC, var_248
  loc_1EE1DC5:                 var_2A8.Fields.Item("mLine").Value = vbNullString
  loc_1EE1DF9:                 var_2A8.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EE1E4B:                 var_2A8.Fields.Item("DispCode").Value = CVar(var_D4.Fields.Item("DispCode"))
  loc_1EE1E9F:                 var_2A8.Fields.Item("HSNCode").Value = CVar(var_D4.Fields.Item("HSNCode"))
  loc_1EE1EF3:                 var_2A8.Fields.Item("Item").Value = CVar(var_D4.Fields.Item("ItemName"))
  loc_1EE1F2A:                 Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("qty")))
  loc_1EE1F72:                 var_2A8.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EE1FB1:                 Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("Rate")), 1)
  loc_1EE1FF9:                 var_2A8.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EE2038:                 Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("TaxAmt")), 1)
  loc_1EE2080:                 var_2A8.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EE20BF:                 Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("Amt")), 1, 1)
  loc_1EE20D3:                 var_26C = "0.00"
  loc_1EE20EB:                 var_294 = "Amount"
  loc_1EE2107:                 var_2A8.Fields.Item(var_294).Value = Format(var_25C, var_26C)
  loc_1EE2146:                 Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("TaxPer")), 1, 1)
  loc_1EE2151:                 Proc_6_47_EF6560(var_26C, var_25C, 1)
  loc_1EE2179:                 var_2A8.Fields.Item("TaxPer").Value = var_26C
  loc_1EE21B6:                 Proc_6_47_EF6560(var_25C, CVar(var_D4.Fields.Item("nonTaxable")))
  loc_1EE21DE:                 var_2A8.Fields.Item("NonTaxable").Value = var_25C
  loc_1EE2219:                 Proc_6_47_EF6560(var_25C, CVar(var_D4.Fields.Item("Taxable")))
  loc_1EE2241:                 var_2A8.Fields.Item("Taxable").Value = var_25C
  loc_1EE227E:                 var_25C = CVar(Proc_6_38_E69628(CVar(var_D4.Fields.Item("Unit")), 1)) 'String
  loc_1EE22A1:                 var_2A8.Fields.Item("Unit").Value = var_25C
  loc_1EE22DC:                 Proc_6_47_EF6560(var_25C, CVar(var_D4.Fields.Item("ItemRate")))
  loc_1EE2304:                 var_2A8.Fields.Item("ItemRate").Value = var_25C
  loc_1EE2364:                 var_2A8.Fields.Item("Remarks").Value = CVar(Proc_6_38_E69628(CVar(var_D4.Fields.Item("Remarks"))))
  loc_1EE2379:                 var_248 = "*"
  loc_1EE2382:                 var_1FC = "Mark"
  loc_1EE2396:                 var_234 = var_2A8.Fields.Item(var_1FC)
  loc_1EE239E:                 var_234.Value = var_248
  loc_1EE23B5:                 var_2A8.Update var_1FC, var_248
  loc_1EE23BC:                 Set var_2A8 = Nothing 
  loc_1EE23C3:                 var_D4.MoveNext
  loc_1EE23CE:                 var_BA = (var_BA + 1)
  loc_1EE23D1:                 GoTo loc_1EE1D77
  loc_1EE23D4:               End If
  loc_1EE23D4:             End If
  loc_1EE23D7:             var_15C = "BillTokenPrint"
  loc_1EE23FE:             Set var_22C = var_CC 
  loc_1EE2405:             CreateFieldDefFile(var_22C, MemVar_1F950B4 & "\" & var_15C & ".ttx", &HFF)
  loc_1EE2430:             var_224 = MemVar_1F950B4 & "\"
  loc_1EE2447:             Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EE2452:             MemVar_1F951E8 = var_22C
  loc_1EE247B:             Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EE2483:             Call 0.Method_arg_2C (var_294, var_BA)
  loc_1EE2491:             Call 0.Method_arg_150 (var_BA)
  loc_1EE24A7:             Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE24AF:             Call 0.Method_arg_24 (var_BA)
  loc_1EE24BB:             For var_2B0 =  To CInt(var_200): 1 = var_2B0 'Integer
  loc_1EE24D4:               Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE24DC:               Call 0.Method_arg_20 (var_234)
  loc_1EE24E4:               Call 0.Method_arg_30 (var_224)
  loc_1EE24FA:               var_2C0 = Ucase(CVar(var_224)) 'Variant
  loc_1EE2510:               var_220 = "comp_name"
  loc_1EE252A:               If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2538:                 Proc_6_17_EAAE40(var_220)
  loc_1EE2554:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE255C:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2564:                 Call 0.Method_arg_38 (MemVar_1F95130)
  loc_1EE2579:               Else
  loc_1EE2581:                 var_220 = "comp_add1"
  loc_1EE259B:                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE25A9:                   Proc_6_17_EAAE40(var_220)
  loc_1EE25C5:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE25CD:                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE25D5:                   Call 0.Method_arg_38 (MemVar_1F95134)
  loc_1EE25EA:                 Else
  loc_1EE25F2:                   var_220 = "comp_pin"
  loc_1EE260C:                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE261A:                     Proc_6_17_EAAE40(var_220)
  loc_1EE2636:                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE263E:                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2646:                     Call 0.Method_arg_38 (MemVar_1F9513C)
  loc_1EE265B:                   Else
  loc_1EE267D:                     If (var_2C0 = Ucase("comp_GSTIN")) Then
  loc_1EE26A1:                       Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE26A9:                       Call 0.Method_arg_20 (var_234)
  loc_1EE26B1:                       Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1EE26C7:                     Else
  loc_1EE26CF:                       var_220 = "Comp_Phone_Fax"
  loc_1EE26E9:                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EE26F7:                         Proc_6_17_EAAE40(var_220)
  loc_1EE2713:                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE271B:                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2723:                         Call 0.Method_arg_38 (var_170)
  loc_1EE2738:                       Else
  loc_1EE2740:                         var_220 = "Outl_Phone_Fax"
  loc_1EE275A:                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2768:                           Proc_6_17_EAAE40(var_220)
  loc_1EE2784:                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE278C:                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2794:                           Call 0.Method_arg_38 (var_174)
  loc_1EE27A9:                         Else
  loc_1EE27B1:                           var_220 = "CompTitleYN"
  loc_1EE27CB:                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EE27D9:                             Proc_6_17_EAAE40(var_220)
  loc_1EE27F5:                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE27FD:                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2805:                             Call 0.Method_arg_38 (var_178)
  loc_1EE281A:                           Else
  loc_1EE2822:                             var_220 = "Outlet_Title"
  loc_1EE283C:                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EE284A:                               Proc_6_17_EAAE40(var_220)
  loc_1EE2866:                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE286E:                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2876:                               Call 0.Method_arg_38 (var_10C)
  loc_1EE288B:                             Else
  loc_1EE2893:                               var_220 = "Department"
  loc_1EE28AD:                               If (var_2C0 = Ucase(var_220)) Then
  loc_1EE28BB:                                 Proc_6_17_EAAE40(var_220)
  loc_1EE28D7:                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE28DF:                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE28E7:                                 Call 0.Method_arg_38 (var_110)
  loc_1EE28FC:                               Else
  loc_1EE2904:                                 var_220 = "Waiter_Name"
  loc_1EE291E:                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE292C:                                   Proc_6_17_EAAE40(var_220)
  loc_1EE2948:                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2950:                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2958:                                   Call 0.Method_arg_38 (var_114)
  loc_1EE296D:                                 Else
  loc_1EE2975:                                   var_220 = "Covers"
  loc_1EE298F:                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE299D:                                     Proc_6_17_EAAE40(var_220)
  loc_1EE29B9:                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE29C1:                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE29C9:                                     Call 0.Method_arg_38 (var_128)
  loc_1EE29DE:                                   Else
  loc_1EE29E6:                                     var_220 = "Cst_No"
  loc_1EE2A00:                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2A0E:                                       Proc_6_17_EAAE40(var_220)
  loc_1EE2A2A:                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2A32:                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2A3A:                                       Call 0.Method_arg_38 (var_144)
  loc_1EE2A4F:                                     Else
  loc_1EE2A57:                                       var_220 = "Lst_No"
  loc_1EE2A71:                                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2A7F:                                         Proc_6_17_EAAE40(var_220)
  loc_1EE2A9B:                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2AA3:                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2AAB:                                         Call 0.Method_arg_38 (var_148)
  loc_1EE2AC0:                                       Else
  loc_1EE2AC8:                                         var_220 = "lblRoom_TableNo"
  loc_1EE2AE2:                                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2AF0:                                           Proc_6_17_EAAE40(var_220)
  loc_1EE2B0C:                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2B14:                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2B1C:                                           Call 0.Method_arg_38 (var_118)
  loc_1EE2B31:                                         Else
  loc_1EE2B39:                                           var_220 = "Room_TableNo"
  loc_1EE2B53:                                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2B61:                                             Proc_6_17_EAAE40(var_220)
  loc_1EE2B7D:                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2B85:                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2B8D:                                             Call 0.Method_arg_38 (var_11C)
  loc_1EE2BA2:                                           Else
  loc_1EE2BAA:                                             var_220 = "lblOrder_KOTNo"
  loc_1EE2BC4:                                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2BD2:                                               Proc_6_17_EAAE40(var_220)
  loc_1EE2BEE:                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2BF6:                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2BFE:                                               Call 0.Method_arg_38 (var_14C)
  loc_1EE2C13:                                             Else
  loc_1EE2C24:                                               var_25C = Ucase("Order_KOTNo")
  loc_1EE2C35:                                               If (var_2C0 = var_25C) Then
  loc_1EE2C53:                                                 Proc_6_17_EAAE40(var_25C)
  loc_1EE2C6F:                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2C77:                                                 Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE2C7F:                                                 Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EE2C98:                                               Else
  loc_1EE2CA0:                                                 var_220 = "TokenNo"
  loc_1EE2CBA:                                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2CC8:                                                   Proc_6_17_EAAE40(var_220)
  loc_1EE2CE4:                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2CEC:                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2CF4:                                                   Call 0.Method_arg_38 (var_154)
  loc_1EE2D09:                                                 Else
  loc_1EE2D11:                                                   var_220 = "Bill_No"
  loc_1EE2D2B:                                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2D39:                                                     Proc_6_17_EAAE40(var_220)
  loc_1EE2D55:                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2D5D:                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2D65:                                                     Call 0.Method_arg_38 (var_12C)
  loc_1EE2D7A:                                                   Else
  loc_1EE2D82:                                                     var_220 = "BillVou"
  loc_1EE2D9C:                                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2DAA:                                                       Proc_6_17_EAAE40(var_220)
  loc_1EE2DC6:                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2DCE:                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2DD6:                                                       Call 0.Method_arg_38 (var_130)
  loc_1EE2DEB:                                                     Else
  loc_1EE2DF3:                                                       var_220 = "FolioNo"
  loc_1EE2E0D:                                                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2E1B:                                                         Proc_6_17_EAAE40(var_220)
  loc_1EE2E37:                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2E3F:                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2E47:                                                         Call 0.Method_arg_38 (var_18C)
  loc_1EE2E5C:                                                       Else
  loc_1EE2E64:                                                         var_220 = "Remark"
  loc_1EE2E7E:                                                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2E8C:                                                           Proc_6_17_EAAE40(var_220)
  loc_1EE2EA8:                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2EB0:                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2EB8:                                                           Call 0.Method_arg_38 (var_16C)
  loc_1EE2ECD:                                                         Else
  loc_1EE2ED5:                                                           var_220 = "CustPhone"
  loc_1EE2EEF:                                                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2EFD:                                                             Proc_6_17_EAAE40(var_220)
  loc_1EE2F19:                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2F21:                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2F29:                                                             Call 0.Method_arg_38 (var_190)
  loc_1EE2F3E:                                                           Else
  loc_1EE2F46:                                                             var_220 = "CustName"
  loc_1EE2F60:                                                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2F6E:                                                               Proc_6_17_EAAE40(var_220)
  loc_1EE2F8A:                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2F92:                                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2F9A:                                                               Call 0.Method_arg_38 (var_194)
  loc_1EE2FAF:                                                             Else
  loc_1EE2FB7:                                                               var_220 = "CustAddr1"
  loc_1EE2FD1:                                                               If (var_2C0 = Ucase(var_220)) Then
  loc_1EE2FDF:                                                                 Proc_6_17_EAAE40(var_220)
  loc_1EE2FFB:                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3003:                                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE300B:                                                                 Call 0.Method_arg_38 (var_198)
  loc_1EE3020:                                                               Else
  loc_1EE3028:                                                                 var_220 = "CustAddr2"
  loc_1EE3042:                                                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE3050:                                                                   Proc_6_17_EAAE40(var_220)
  loc_1EE306C:                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3074:                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE307C:                                                                   Call 0.Method_arg_38 (var_19C)
  loc_1EE3091:                                                                 Else
  loc_1EE3099:                                                                   var_220 = "Bill_Date"
  loc_1EE30B3:                                                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE30C1:                                                                     Proc_6_17_EAAE40(var_220)
  loc_1EE30DD:                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE30E5:                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE30ED:                                                                     Call 0.Method_arg_38 (var_120)
  loc_1EE3102:                                                                   Else
  loc_1EE310A:                                                                     var_220 = "Bill_Time"
  loc_1EE3124:                                                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE3132:                                                                       Proc_6_17_EAAE40(var_220)
  loc_1EE314E:                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3156:                                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE315E:                                                                       Call 0.Method_arg_38 (var_124)
  loc_1EE3173:                                                                     Else
  loc_1EE317B:                                                                       var_220 = "TotNonTaxable"
  loc_1EE3184:                                                                       var_25C = Ucase(var_220)
  loc_1EE3195:                                                                       If (var_2C0 = var_25C) Then
  loc_1EE31A3:                                                                         Proc_6_47_EF6560(var_220)
  loc_1EE31AE:                                                                         Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EE31CA:                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE31D2:                                                                         Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE31DA:                                                                         Call 0.Method_arg_38 (var_1A4)
  loc_1EE31F3:                                                                       Else
  loc_1EE31FB:                                                                         var_220 = "TotTaxable"
  loc_1EE3204:                                                                         var_25C = Ucase(var_220)
  loc_1EE3215:                                                                         If (var_2C0 = var_25C) Then
  loc_1EE3223:                                                                           Proc_6_47_EF6560(var_220)
  loc_1EE322E:                                                                           Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EE324A:                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3252:                                                                           Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE325A:                                                                           Call 0.Method_arg_38 (var_1AC)
  loc_1EE3273:                                                                         Else
  loc_1EE327B:                                                                           var_220 = "User_Name"
  loc_1EE3295:                                                                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EE32A3:                                                                             Proc_6_17_EAAE40(var_220)
  loc_1EE32BF:                                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE32C7:                                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE32CF:                                                                             Call 0.Method_arg_38 (var_140)
  loc_1EE32E4:                                                                           Else
  loc_1EE32EC:                                                                             var_220 = "Header1"
  loc_1EE3306:                                                                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EE3314:                                                                               Proc_6_17_EAAE40(var_220)
  loc_1EE3330:                                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3338:                                                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE3340:                                                                               Call 0.Method_arg_38 (var_17C)
  loc_1EE3355:                                                                             Else
  loc_1EE335D:                                                                               var_220 = "Header2"
  loc_1EE3377:                                                                               If (var_2C0 = Ucase(var_220)) Then
  loc_1EE3385:                                                                                 Proc_6_17_EAAE40(var_220)
  loc_1EE33A1:                                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE33A9:                                                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE33B1:                                                                                 Call 0.Method_arg_38 (var_180)
  loc_1EE33C6:                                                                               Else
  loc_1EE33CE:                                                                                 var_220 = "Header3"
  loc_1EE33E8:                                                                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE33F6:                                                                                   Proc_6_17_EAAE40(var_220)
  loc_1EE3412:                                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE341A:                                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE3422:                                                                                   Call 0.Method_arg_38 (var_184)
  loc_1EE3437:                                                                                 Else
  loc_1EE343F:                                                                                   var_220 = "Header4"
  loc_1EE3459:                                                                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE3467:                                                                                     Proc_6_17_EAAE40(var_220)
  loc_1EE3483:                                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE348B:                                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE3493:                                                                                     Call 0.Method_arg_38 (var_188)
  loc_1EE34A8:                                                                                   Else
  loc_1EE34B0:                                                                                     var_220 = "Slogan1"
  loc_1EE34CA:                                                                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE34D8:                                                                                       Proc_6_17_EAAE40(var_220)
  loc_1EE34F4:                                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE34FC:                                                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE3504:                                                                                       Call 0.Method_arg_38 (var_164)
  loc_1EE3519:                                                                                     Else
  loc_1EE3521:                                                                                       var_220 = "Slogan2"
  loc_1EE353B:                                                                                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EE3549:                                                                                         Proc_6_17_EAAE40(var_220)
  loc_1EE3565:                                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE356D:                                                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE3575:                                                                                         Call 0.Method_arg_38 (var_168)
  loc_1EE358A:                                                                                       Else
  loc_1EE3592:                                                                                         var_220 = "Printed"
  loc_1EE35AC:                                                                                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EE35BA:                                                                                           Proc_6_17_EAAE40(var_220)
  loc_1EE35D6:                                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE35DE:                                                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE35E6:                                                                                           Call 0.Method_arg_38 (var_C0)
  loc_1EE35F8:                                                                                         End If
  loc_1EE35F8:                                                                                       End If
  loc_1EE35F8:                                                                                     End If
  loc_1EE35F8:                                                                                   End If
  loc_1EE35F8:                                                                                 End If
  loc_1EE35F8:                                                                               End If
  loc_1EE35F8:                                                                             End If
  loc_1EE35F8:                                                                           End If
  loc_1EE35F8:                                                                         End If
  loc_1EE35F8:                                                                       End If
  loc_1EE35F8:                                                                     End If
  loc_1EE35F8:                                                                   End If
  loc_1EE35F8:                                                                 End If
  loc_1EE35F8:                                                               End If
  loc_1EE35F8:                                                             End If
  loc_1EE35F8:                                                           End If
  loc_1EE35F8:                                                         End If
  loc_1EE35F8:                                                       End If
  loc_1EE35F8:                                                     End If
  loc_1EE35F8:                                                   End If
  loc_1EE35F8:                                                 End If
  loc_1EE35F8:                                               End If
  loc_1EE35F8:                                             End If
  loc_1EE35F8:                                           End If
  loc_1EE35F8:                                         End If
  loc_1EE35F8:                                       End If
  loc_1EE35F8:                                     End If
  loc_1EE35F8:                                   End If
  loc_1EE35F8:                                 End If
  loc_1EE35F8:                               End If
  loc_1EE35F8:                             End If
  loc_1EE35F8:                           End If
  loc_1EE35F8:                         End If
  loc_1EE35F8:                       End If
  loc_1EE35F8:                     End If
  loc_1EE35F8:                   End If
  loc_1EE35F8:                 End If
  loc_1EE35F8:               End If
  loc_1EE35FB:             Next var_2B0 'Integer
  loc_1EE3628:             var_25C = CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer")))) 'String
  loc_1EE364A:             If CBool(Ucase(var_25C) <> "PRN") Then
  loc_1EE3679:               Proc_96_98_F10508(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer"))))
  loc_1EE3687:             End If
  loc_1EE36A6:             var_220 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1EE36AD:             Proc_6_39_E7D3A0(var_25C)
  loc_1EE36C7:             If (var_25C <= 0) Then
  loc_1EE36CF:               Set var_234 = Nothing
  loc_1EE36EB:               Set var_22C = MemVar_1F951E8 
  loc_1EE36F7:               Proc_6_99_1484404(var_22C, 0, "Sale Bill Entry")
  loc_1EE3702:               MemVar_1F951E8 = var_22C
  loc_1EE3713:             Else
  loc_1EE3739:               Proc_6_39_E7D3A0(var_25C, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1EE374E:               var_248 = False
  loc_1EE3759:               Call 0.Method_Me8 (var_248, var_25C, var_294, var_2D4)
  loc_1EE3768:             End If
  loc_1EE376B:             var_D0.MoveNext
  loc_1EE3770:             GoTo loc_1EE1C71
  loc_1EE3773:           End If
  loc_1EE3773:         End If
  loc_1EE3773:       End If
  loc_1EE3773:     End If
  loc_1EE3773:     var_1FC = 0
  loc_1EE377F:     var_DC.Filter = var_1FC
  loc_1EE3787:     var_DC.MoveFirst
  loc_1EE378C:     ' Referenced from: 1EE39A3
  loc_1EE379B:     If Not(var_DC.EOF) Then
  loc_1EE37A1:       Set var_2E8 = var_13C 
  loc_1EE37B0:       var_2E8.AddNew var_1FC, var_248
  loc_1EE37DA:       var_2E8.Fields.Item("mLine").Value = vbNullString
  loc_1EE380E:       var_25C = CVar(Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName")), var_2E4)) 'String
  loc_1EE3831:       var_2E8.Fields.Item("SunName").Value = var_25C
  loc_1EE386C:       Proc_6_39_E7D3A0(var_25C, CVar(var_DC.Fields.Item("SValue")))
  loc_1EE38B4:       var_2E8.Fields.Item("SunPer").Value = Format(var_25C, "0.00")
  loc_1EE38F3:       Proc_6_39_E7D3A0(var_25C, CVar(var_DC.Fields.Item("Amount")), 1)
  loc_1EE393B:       var_2E8.Fields.Item("SunAmount").Value = Format(var_25C, "0.00")
  loc_1EE3954:       var_248 = "*"
  loc_1EE395D:       var_1FC = "Mark"
  loc_1EE3979:       var_2E8.Fields.Item(var_1FC).Value = var_248
  loc_1EE3990:       var_2E8.Update var_1FC, var_248
  loc_1EE3997:       Set var_2E8 = Nothing 
  loc_1EE399E:       var_DC.MoveNext
  loc_1EE39A3:       GoTo loc_1EE378C
  loc_1EE39A6:     End If
  loc_1EE39B5:     var_22C = var_C4.Fields
  loc_1EE39C5:     var_220 = CVar(var_22C.Item("U_Name")) 'Address
  loc_1EE39CE:     var_140 = Proc_6_38_E69628(var_220, 1, 1)
  loc_1EE39FD:     unk_43FED1.Execute "SELECT Header1,Header2,Header3,Header4,Slogan1,Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_220, -1
  loc_1EE3A08:     Set var_138 = var_22C
  loc_1EE3A1E:     var_200 = var_138.RecordCount
  loc_1EE3A2C:     If (var_200 > 0) Then
  loc_1EE3A5E:       var_17C = CStr(Trim(CVar(var_138.Fields.Item("Header1"))))
  loc_1EE3A9A:       var_180 = CStr(Trim(CVar(var_138.Fields.Item("Header2"))))
  loc_1EE3AD6:       var_184 = CStr(Trim(CVar(var_138.Fields.Item("Header3"))))
  loc_1EE3B12:       var_188 = CStr(Trim(CVar(var_138.Fields.Item("Header4"))))
  loc_1EE3B4E:       var_164 = CStr(Trim(CVar(var_138.Fields.Item("Slogan1"))))
  loc_1EE3B6A:       var_22C = var_138.Fields
  loc_1EE3B7A:       var_220 = CVar(var_22C.Item("Slogan2")) 'Address
  loc_1EE3B81:       var_25C = Trim(var_220)
  loc_1EE3B8A:       var_168 = CStr(var_25C)
  loc_1EE3B97:     End If
  loc_1EE3B9C:     Set var_138 = Nothing
  loc_1EE3BB5:     var_224 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='" & Me(12)
  loc_1EE3BC5:     unk_43FED1.Execute var_224 & "' And AmtCr>0", var_220, -1
  loc_1EE3BD0:     Set var_1B4 = var_22C
  loc_1EE3BE0:     ' Referenced from: 1EE4304
  loc_1EE3BEF:     If Not(var_1B4.EOF) Then
  loc_1EE3C01:       var_22C = var_1B4.Fields
  loc_1EE3C2B:       If (Proc_6_38_E69628(CVar(var_22C.Item("CompName")), var_22C, var_22C) <> vbNullString) Then
  loc_1EE3C45:         var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EE3C54:         Proc_6_39_E7D3A0(var_25C, CVar(var_234), 1)
  loc_1EE3C86:         var_2D4 = "-"
  loc_1EE3CBA:         var_328 = CVar(var_1B8) & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("CompName")), 1 & Format(var_25C, "0.00") & var_2D4, 1)) 
  loc_1EE3D00:         var_1B8 = CStr(var_234 & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), var_328 & " (")) & "), ")
  loc_1EE3D4A:         var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE3D51:         Proc_6_39_E7D3A0(var_25C, var_220)
  loc_1EE3D83:         var_2D4 = " - "
  loc_1EE3D9B:         var_238 = var_1B4.Fields
  loc_1EE3DA3:         var_24C = var_238.Item("Comments")
  loc_1EE3DBB:         var_338 = "-"
  loc_1EE3DD3:         var_34C = var_1B4.Fields
  loc_1EE3DEC:         var_380 = CVar(Proc_6_38_E69628(CVar(var_34C.Item("CompName")), CVar(var_1BC) & CVar(Proc_6_38_E69628(CVar(var_24C), 1 & Format(var_25C, "0.00") & var_2D4, 1)) & " (")) 'String
  loc_1EE3E35:         var_1BC = CStr(var_220 & var_380 & " (" & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")))) & "), ")
  loc_1EE3E6D:       Else
  loc_1EE3EA6:         If (Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayType"))) = "Room") Then
  loc_1EE3EF0:           var_224 = Proc_6_38_E69628(CVar(var_1B4.Fields.Item("DocID")), "Select IsNull(max(RoomNo),'') from PayCharge where DocId='", var_25C, -1, var_238)
  loc_1EE3F12:           unk_43FED1.Execute var_24C & Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayType"))) & "' And PayCode = '" & MemVar_1F95078 & "TOUT'", 0, var_34C
  loc_1EE3F22:            = var_24C.Item()
  loc_1EE3F2A:            = var_34C.Value
  loc_1EE3F37:           var_1C0 = Proc_6_38_E69628(var_238.Fields)
  loc_1EE3F7A:           var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE3F81:           Proc_6_39_E7D3A0(var_25C)
  loc_1EE3FE7:           var_328 = CVar(var_1B8) & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE4008:           var_1B8 = CStr(var_328 & " Room:   " & CVar(var_1C0) & " ), ")
  loc_1EE404C:           var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE4053:           Proc_6_39_E7D3A0(var_25C, var_220)
  loc_1EE4085:           var_2D4 = " - "
  loc_1EE40B9:           var_328 = CVar(var_1BC) & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("Comments")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE4104:           var_3D8 = var_220 & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), var_328 & " (")) & " Room:   " & CVar(var_1C0) 
  loc_1EE4112:           var_1BC = CStr(var_3D8 & " ), ")
  loc_1EE4144:         Else
  loc_1EE4163:           var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE416A:           Proc_6_39_E7D3A0(var_25C)
  loc_1EE41D0:           var_328 = CVar(var_1B8) & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE41DE:           var_1B8 = CStr(var_328 & "), ")
  loc_1EE4216:           var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EE421E:           var_220 = CVar(var_234) 'Address
  loc_1EE4225:           Proc_6_39_E7D3A0(var_25C, var_220)
  loc_1EE4257:           var_2D4 = " - "
  loc_1EE426F:           var_238 = var_1B4.Fields
  loc_1EE4277:           var_24C = var_238.Item("Comments")
  loc_1EE42A7:           var_34C = var_1B4.Fields
  loc_1EE42C0:           var_380 = CVar(Proc_6_38_E69628(CVar(var_34C.Item("PayName")), CVar(var_1BC) & CVar(Proc_6_38_E69628(CVar(var_24C), 1 & Format(var_25C, "0.00") & " (", 1)) & " (")) 'String
  loc_1EE42D1:           var_1BC = CStr(var_220 & var_380 & "), ")
  loc_1EE42FC:         End If
  loc_1EE42FC:       End If
  loc_1EE42FF:       var_1B4.MoveNext
  loc_1EE4304:       GoTo loc_1EE3BE0
  loc_1EE4307:     End If
  loc_1EE4348:     var_308 = (Len(Trim(var_1B8)) - 1)
  loc_1EE4387:     var_1B8 = CStr(Left(Trim(var_1B8), CLng(IIf((Len(Trim(var_1B8)) > 0), CVar(var_24C), 0))))
  loc_1EE43B0:     var_248 = var_1BC
  loc_1EE43C0:     var_2D4 = var_1BC
  loc_1EE43C8:     var_2A4 = Trim(var_2D4)
  loc_1EE43D9:     var_2E4 = 1
  loc_1EE43DE:     var_308 = (Len(var_2A4) - var_2E4)
  loc_1EE43F0:     var_294 = 0
  loc_1EE43FA:     var_318 = (Len(Trim(var_248)) > var_294) 'Variant
  loc_1EE441D:     var_1BC = CStr(Left(Trim(var_1BC), CLng(IIf(var_318, CVar(var_24C), 0))))
  loc_1EE4435:     var_156 = &HFF
  loc_1EE443B:     var_15C = "POSBillWinPrint"
  loc_1EE443E:     var_1FC = "POS Sale Bill"
  loc_1EE4455:     var_160 = CStr(Ucase(var_1FC))
  loc_1EE4465:     If (var_156 = 0) Then
  loc_1EE4468:       Exit Sub
  loc_1EE4469:     End If
  loc_1EE448D:     Set var_22C = var_C8 
  loc_1EE4494:     CreateFieldDefFile(var_22C, MemVar_1F950B4 & "\" & var_15C & ".ttx")
  loc_1EE44BF:     var_224 = MemVar_1F950B4 & "\"
  loc_1EE44D6:     Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EE44E1:     MemVar_1F951E8 = var_22C
  loc_1EE450A:     Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EE4512:     Call 0.Method_arg_2C (var_294, &HFF)
  loc_1EE4520:     Call 0.Method_arg_150 (var_156)
  loc_1EE4536:     Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE453E:     Call 0.Method_arg_24 (var_BA)
  loc_1EE454A:     For var_420 =  To CInt(var_200): 1 = var_420 'Integer
  loc_1EE4563:       Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE456B:       Call 0.Method_arg_20 (var_234)
  loc_1EE4573:       Call 0.Method_arg_30 (var_224)
  loc_1EE4589:       var_430 = Ucase(CVar(var_224)) 'Variant
  loc_1EE459F:       var_220 = "comp_name"
  loc_1EE45B9:       If (var_430 = Ucase(var_220)) Then
  loc_1EE45C7:         Proc_6_17_EAAE40(var_220)
  loc_1EE45E3:         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE45EB:         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE45F3:         Call 0.Method_arg_38 (MemVar_1F95130)
  loc_1EE4608:       Else
  loc_1EE4610:         var_220 = "comp_add1"
  loc_1EE462A:         If (var_430 = Ucase(var_220)) Then
  loc_1EE4638:           Proc_6_17_EAAE40(var_220)
  loc_1EE4654:           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE465C:           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4664:           Call 0.Method_arg_38 (MemVar_1F95134)
  loc_1EE4679:         Else
  loc_1EE4681:           var_220 = "comp_pin"
  loc_1EE469B:           If (var_430 = Ucase(var_220)) Then
  loc_1EE46A9:             Proc_6_17_EAAE40(var_220)
  loc_1EE46C5:             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE46CD:             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE46D5:             Call 0.Method_arg_38 (MemVar_1F9513C)
  loc_1EE46EA:           Else
  loc_1EE470C:             If (var_430 = Ucase("comp_GSTIN")) Then
  loc_1EE4730:               Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE4738:               Call 0.Method_arg_20 (var_234)
  loc_1EE4740:               Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1EE4756:             Else
  loc_1EE475E:               var_220 = "Comp_Phone_Fax"
  loc_1EE4778:               If (var_430 = Ucase(var_220)) Then
  loc_1EE4786:                 Proc_6_17_EAAE40(var_220)
  loc_1EE47A2:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE47AA:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE47B2:                 Call 0.Method_arg_38 (var_170)
  loc_1EE47C7:               Else
  loc_1EE47CF:                 var_220 = "Outl_Phone_Fax"
  loc_1EE47E9:                 If (var_430 = Ucase(var_220)) Then
  loc_1EE47F7:                   Proc_6_17_EAAE40(var_220)
  loc_1EE4813:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE481B:                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4823:                   Call 0.Method_arg_38 (var_174)
  loc_1EE4838:                 Else
  loc_1EE4840:                   var_220 = "CompTitleYN"
  loc_1EE485A:                   If (var_430 = Ucase(var_220)) Then
  loc_1EE4868:                     Proc_6_17_EAAE40(var_220)
  loc_1EE4884:                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE488C:                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4894:                     Call 0.Method_arg_38 (var_178)
  loc_1EE48A9:                   Else
  loc_1EE48B1:                     var_220 = "Outlet_Title"
  loc_1EE48CB:                     If (var_430 = Ucase(var_220)) Then
  loc_1EE48D9:                       Proc_6_17_EAAE40(var_220)
  loc_1EE48F5:                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE48FD:                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4905:                       Call 0.Method_arg_38 (var_10C)
  loc_1EE491A:                     Else
  loc_1EE4922:                       var_220 = "Waiter_Name"
  loc_1EE493C:                       If (var_430 = Ucase(var_220)) Then
  loc_1EE494A:                         Proc_6_17_EAAE40(var_220)
  loc_1EE4966:                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE496E:                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4976:                         Call 0.Method_arg_38 (var_114)
  loc_1EE498B:                       Else
  loc_1EE4993:                         var_220 = "Covers"
  loc_1EE49AD:                         If (var_430 = Ucase(var_220)) Then
  loc_1EE49BB:                           Proc_6_17_EAAE40(var_220)
  loc_1EE49D7:                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE49DF:                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE49E7:                           Call 0.Method_arg_38 (var_128)
  loc_1EE49FC:                         Else
  loc_1EE4A04:                           var_220 = "Cst_No"
  loc_1EE4A1E:                           If (var_430 = Ucase(var_220)) Then
  loc_1EE4A2C:                             Proc_6_17_EAAE40(var_220)
  loc_1EE4A48:                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4A50:                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4A58:                             Call 0.Method_arg_38 (var_144)
  loc_1EE4A6D:                           Else
  loc_1EE4A75:                             var_220 = "Lst_No"
  loc_1EE4A8F:                             If (var_430 = Ucase(var_220)) Then
  loc_1EE4A9D:                               Proc_6_17_EAAE40(var_220)
  loc_1EE4AB9:                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4AC1:                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4AC9:                               Call 0.Method_arg_38 (var_148)
  loc_1EE4ADE:                             Else
  loc_1EE4AE6:                               var_220 = "lblRoom_TableNo"
  loc_1EE4B00:                               If (var_430 = Ucase(var_220)) Then
  loc_1EE4B0E:                                 Proc_6_17_EAAE40(var_220)
  loc_1EE4B2A:                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4B32:                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4B3A:                                 Call 0.Method_arg_38 (var_118)
  loc_1EE4B4F:                               Else
  loc_1EE4B57:                                 var_220 = "Room_TableNo"
  loc_1EE4B71:                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE4B7F:                                   Proc_6_17_EAAE40(var_220)
  loc_1EE4B9B:                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4BA3:                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4BAB:                                   Call 0.Method_arg_38 (var_11C)
  loc_1EE4BC0:                                 Else
  loc_1EE4BC8:                                   var_220 = "lblOrder_KOTNo"
  loc_1EE4BE2:                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE4BF0:                                     Proc_6_17_EAAE40(var_220)
  loc_1EE4C0C:                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4C14:                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4C1C:                                     Call 0.Method_arg_38 (var_14C)
  loc_1EE4C31:                                   Else
  loc_1EE4C42:                                     var_25C = Ucase("Order_KOTNo")
  loc_1EE4C53:                                     If (var_430 = var_25C) Then
  loc_1EE4C71:                                       Proc_6_17_EAAE40(var_25C)
  loc_1EE4C8D:                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4C95:                                       Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE4C9D:                                       Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EE4CB6:                                     Else
  loc_1EE4CBE:                                       var_220 = "TokenNo"
  loc_1EE4CD8:                                       If (var_430 = Ucase(var_220)) Then
  loc_1EE4CE6:                                         Proc_6_17_EAAE40(var_220)
  loc_1EE4D02:                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4D0A:                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4D12:                                         Call 0.Method_arg_38 (var_154)
  loc_1EE4D27:                                       Else
  loc_1EE4D2F:                                         var_220 = "Bill_No"
  loc_1EE4D49:                                         If (var_430 = Ucase(var_220)) Then
  loc_1EE4D57:                                           Proc_6_17_EAAE40(var_220)
  loc_1EE4D73:                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4D7B:                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4D83:                                           Call 0.Method_arg_38 (var_12C)
  loc_1EE4D98:                                         Else
  loc_1EE4DA0:                                           var_220 = "BillVou"
  loc_1EE4DBA:                                           If (var_430 = Ucase(var_220)) Then
  loc_1EE4DC8:                                             Proc_6_17_EAAE40(var_220)
  loc_1EE4DE4:                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4DEC:                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4DF4:                                             Call 0.Method_arg_38 (var_130)
  loc_1EE4E09:                                           Else
  loc_1EE4E11:                                             var_220 = "FolioNo"
  loc_1EE4E2B:                                             If (var_430 = Ucase(var_220)) Then
  loc_1EE4E39:                                               Proc_6_17_EAAE40(var_220)
  loc_1EE4E55:                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4E5D:                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4E65:                                               Call 0.Method_arg_38 (var_18C)
  loc_1EE4E7A:                                             Else
  loc_1EE4E82:                                               var_220 = "Remark"
  loc_1EE4E9C:                                               If (var_430 = Ucase(var_220)) Then
  loc_1EE4EAA:                                                 Proc_6_17_EAAE40(var_220)
  loc_1EE4EC6:                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4ECE:                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4ED6:                                                 Call 0.Method_arg_38 (var_16C)
  loc_1EE4EEB:                                               Else
  loc_1EE4EF3:                                                 var_220 = "CustPhone"
  loc_1EE4F0D:                                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE4F1B:                                                   Proc_6_17_EAAE40(var_220)
  loc_1EE4F37:                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4F3F:                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4F47:                                                   Call 0.Method_arg_38 (var_190)
  loc_1EE4F5C:                                                 Else
  loc_1EE4F64:                                                   var_220 = "CustName"
  loc_1EE4F7E:                                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE4F8C:                                                     Proc_6_17_EAAE40(var_220)
  loc_1EE4FA8:                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE4FB0:                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE4FB8:                                                     Call 0.Method_arg_38 (var_194)
  loc_1EE4FCD:                                                   Else
  loc_1EE4FD5:                                                     var_220 = "CustAddr1"
  loc_1EE4FEF:                                                     If (var_430 = Ucase(var_220)) Then
  loc_1EE4FFD:                                                       Proc_6_17_EAAE40(var_220)
  loc_1EE5019:                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5021:                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5029:                                                       Call 0.Method_arg_38 (var_198)
  loc_1EE503E:                                                     Else
  loc_1EE5046:                                                       var_220 = "CustAddr2"
  loc_1EE5060:                                                       If (var_430 = Ucase(var_220)) Then
  loc_1EE506E:                                                         Proc_6_17_EAAE40(var_220)
  loc_1EE508A:                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5092:                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE509A:                                                         Call 0.Method_arg_38 (var_19C)
  loc_1EE50AF:                                                       Else
  loc_1EE50B7:                                                         var_220 = "Bill_Date"
  loc_1EE50D1:                                                         If (var_430 = Ucase(var_220)) Then
  loc_1EE50DF:                                                           Proc_6_17_EAAE40(var_220)
  loc_1EE50FB:                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5103:                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE510B:                                                           Call 0.Method_arg_38 (var_120)
  loc_1EE5120:                                                         Else
  loc_1EE5128:                                                           var_220 = "Bill_Time"
  loc_1EE5142:                                                           If (var_430 = Ucase(var_220)) Then
  loc_1EE5150:                                                             Proc_6_17_EAAE40(var_220)
  loc_1EE516C:                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5174:                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE517C:                                                             Call 0.Method_arg_38 (var_124)
  loc_1EE5191:                                                           Else
  loc_1EE5199:                                                             var_220 = "TotNonTaxable"
  loc_1EE51A2:                                                             var_25C = Ucase(var_220)
  loc_1EE51B3:                                                             If (var_430 = var_25C) Then
  loc_1EE51C1:                                                               Proc_6_47_EF6560(var_220)
  loc_1EE51CC:                                                               Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EE51E8:                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE51F0:                                                               Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE51F8:                                                               Call 0.Method_arg_38 (var_1A4)
  loc_1EE5211:                                                             Else
  loc_1EE5219:                                                               var_220 = "TotTaxable"
  loc_1EE5222:                                                               var_25C = Ucase(var_220)
  loc_1EE5233:                                                               If (var_430 = var_25C) Then
  loc_1EE5241:                                                                 Proc_6_47_EF6560(var_220)
  loc_1EE524C:                                                                 Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EE5268:                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5270:                                                                 Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE5278:                                                                 Call 0.Method_arg_38 (var_1AC)
  loc_1EE5291:                                                               Else
  loc_1EE5299:                                                                 var_220 = "User_Name"
  loc_1EE52B3:                                                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE52C1:                                                                   Proc_6_17_EAAE40(var_220)
  loc_1EE52DD:                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE52E5:                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE52ED:                                                                   Call 0.Method_arg_38 (var_140)
  loc_1EE5302:                                                                 Else
  loc_1EE530A:                                                                   var_220 = "Header1"
  loc_1EE5324:                                                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE5332:                                                                     Proc_6_17_EAAE40(var_220)
  loc_1EE534E:                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5356:                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE535E:                                                                     Call 0.Method_arg_38 (var_17C)
  loc_1EE5373:                                                                   Else
  loc_1EE537B:                                                                     var_220 = "Header2"
  loc_1EE5395:                                                                     If (var_430 = Ucase(var_220)) Then
  loc_1EE53A3:                                                                       Proc_6_17_EAAE40(var_220)
  loc_1EE53BF:                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE53C7:                                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE53CF:                                                                       Call 0.Method_arg_38 (var_180)
  loc_1EE53E4:                                                                     Else
  loc_1EE53EC:                                                                       var_220 = "Header3"
  loc_1EE5406:                                                                       If (var_430 = Ucase(var_220)) Then
  loc_1EE5414:                                                                         Proc_6_17_EAAE40(var_220)
  loc_1EE5430:                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5438:                                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5440:                                                                         Call 0.Method_arg_38 (var_184)
  loc_1EE5455:                                                                       Else
  loc_1EE545D:                                                                         var_220 = "Header4"
  loc_1EE5477:                                                                         If (var_430 = Ucase(var_220)) Then
  loc_1EE5485:                                                                           Proc_6_17_EAAE40(var_220)
  loc_1EE54A1:                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE54A9:                                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE54B1:                                                                           Call 0.Method_arg_38 (var_188)
  loc_1EE54C6:                                                                         Else
  loc_1EE54CE:                                                                           var_220 = "Slogan1"
  loc_1EE54E8:                                                                           If (var_430 = Ucase(var_220)) Then
  loc_1EE54F6:                                                                             Proc_6_17_EAAE40(var_220)
  loc_1EE5512:                                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE551A:                                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5522:                                                                             Call 0.Method_arg_38 (var_164)
  loc_1EE5537:                                                                           Else
  loc_1EE553F:                                                                             var_220 = "Slogan2"
  loc_1EE5559:                                                                             If (var_430 = Ucase(var_220)) Then
  loc_1EE5567:                                                                               Proc_6_17_EAAE40(var_220)
  loc_1EE5583:                                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE558B:                                                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5593:                                                                               Call 0.Method_arg_38 (var_168)
  loc_1EE55A8:                                                                             Else
  loc_1EE55B0:                                                                               var_220 = "SettleMode"
  loc_1EE55CA:                                                                               If (var_430 = Ucase(var_220)) Then
  loc_1EE55D8:                                                                                 Proc_6_17_EAAE40(var_220)
  loc_1EE55F4:                                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE55FC:                                                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5604:                                                                                 Call 0.Method_arg_38 (var_1B8)
  loc_1EE5619:                                                                               Else
  loc_1EE5621:                                                                                 var_220 = "SettleMode1"
  loc_1EE563B:                                                                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE5649:                                                                                   Proc_6_17_EAAE40(var_220)
  loc_1EE5665:                                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE566D:                                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5675:                                                                                   Call 0.Method_arg_38 (var_1BC)
  loc_1EE568A:                                                                                 Else
  loc_1EE5692:                                                                                   var_220 = "Printed"
  loc_1EE56AC:                                                                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE56BA:                                                                                     Proc_6_17_EAAE40(var_220)
  loc_1EE56D6:                                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE56DE:                                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE56E6:                                                                                     Call 0.Method_arg_38 (var_C0)
  loc_1EE56FB:                                                                                   Else
  loc_1EE570C:                                                                                     var_25C = Ucase("Company")
  loc_1EE571D:                                                                                     If (var_430 = var_25C) Then
  loc_1EE5736:                                                                                       Proc_6_17_EAAE40(var_25C)
  loc_1EE5752:                                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE575A:                                                                                       Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE5762:                                                                                       Call 0.Method_arg_38 (Trim(var_1D0))
  loc_1EE577B:                                                                                     Else
  loc_1EE578C:                                                                                       var_25C = Ucase("CompanyAdd1")
  loc_1EE579D:                                                                                       If (var_430 = var_25C) Then
  loc_1EE57B6:                                                                                         Proc_6_17_EAAE40(var_25C)
  loc_1EE57D2:                                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE57DA:                                                                                         Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE57E2:                                                                                         Call 0.Method_arg_38 (Trim(var_1D4))
  loc_1EE57FB:                                                                                       Else
  loc_1EE580C:                                                                                         var_25C = Ucase("CompanyAdd2")
  loc_1EE581D:                                                                                         If (var_430 = var_25C) Then
  loc_1EE5836:                                                                                           Proc_6_17_EAAE40(var_25C)
  loc_1EE5852:                                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE585A:                                                                                           Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE5862:                                                                                           Call 0.Method_arg_38 (Trim(var_1D8))
  loc_1EE587B:                                                                                         Else
  loc_1EE588C:                                                                                           var_25C = Ucase("CompanyAdd3")
  loc_1EE589D:                                                                                           If (var_430 = var_25C) Then
  loc_1EE58B6:                                                                                             Proc_6_17_EAAE40(var_25C)
  loc_1EE58D2:                                                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE58DA:                                                                                             Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE58E2:                                                                                             Call 0.Method_arg_38 (Trim(var_1DC))
  loc_1EE58FB:                                                                                           Else
  loc_1EE590C:                                                                                             var_25C = Ucase("CompanyCity")
  loc_1EE591D:                                                                                             If (var_430 = var_25C) Then
  loc_1EE5936:                                                                                               Proc_6_17_EAAE40(var_25C)
  loc_1EE5952:                                                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE595A:                                                                                               Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE5962:                                                                                               Call 0.Method_arg_38 (Trim(var_1E0))
  loc_1EE597B:                                                                                             Else
  loc_1EE598C:                                                                                               var_25C = Ucase("CompanyStateCode")
  loc_1EE599D:                                                                                               If (var_430 = var_25C) Then
  loc_1EE59B6:                                                                                                 Proc_6_17_EAAE40(var_25C)
  loc_1EE59D2:                                                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE59DA:                                                                                                 Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE59E2:                                                                                                 Call 0.Method_arg_38 (Trim(var_1E4))
  loc_1EE59FB:                                                                                               Else
  loc_1EE5A0C:                                                                                                 var_25C = Ucase("CompanyState")
  loc_1EE5A1D:                                                                                                 If (var_430 = var_25C) Then
  loc_1EE5A36:                                                                                                   Proc_6_17_EAAE40(var_25C)
  loc_1EE5A52:                                                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5A57:                                                                                                   Do 'loop at:                                                                                           1EF5751
  loc_1EE5A5A:                                                                                                   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE5A62:                                                                                                   Call 0.Method_arg_38 (Trim(var_1E8))
  loc_1EE5A7B:                                                                                                 Else
  loc_1EE5A8C:                                                                                                   var_25C = Ucase("CompanyGSTIN")
  loc_1EE5A9D:                                                                                                   If (var_430 = var_25C) Then
  loc_1EE5AB6:                                                                                                     Proc_6_17_EAAE40(var_25C)
  loc_1EE5ABE:                                                                                                     var_224 = CStr(var_25C)
  loc_1EE5AD2:                                                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5ADA:                                                                                                     Call 0.Method_arg_20 (var_224)
  loc_1EE5AE2:                                                                                                     Call 0.Method_arg_38 (Trim(var_1EC))
  loc_1EE5AF8:                                                                                                   End If
  loc_1EE5AF8:                                                                                                 End If
  loc_1EE5AF8:                                                                                               End If
  loc_1EE5AF8:                                                                                             End If
  loc_1EE5AF8:                                                                                           End If
  loc_1EE5AF8:                                                                                         End If
  loc_1EE5AF8:                                                                                       End If
  loc_1EE5AF8:                                                                                     End If
  loc_1EE5AF8:                                                                                   End If
  loc_1EE5AF8:                                                                                 End If
  loc_1EE5AF8:                                                                               End If
  loc_1EE5AF8:                                                                             End If
  loc_1EE5AF8:                                                                           End If
  loc_1EE5AF8:                                                                         End If
  loc_1EE5AF8:                                                                       End If
  loc_1EE5AF8:                                                                     End If
  loc_1EE5AF8:                                                                   End If
  loc_1EE5AF8:                                                                 End If
  loc_1EE5AF8:                                                               End If
  loc_1EE5AF8:                                                             End If
  loc_1EE5AF8:                                                           End If
  loc_1EE5AF8:                                                         End If
  loc_1EE5AF8:                                                       End If
  loc_1EE5AF8:                                                     End If
  loc_1EE5AF8:                                                   End If
  loc_1EE5AF8:                                                 End If
  loc_1EE5AF8:                                               End If
  loc_1EE5AF8:                                             End If
  loc_1EE5AF8:                                           End If
  loc_1EE5AF8:                                         End If
  loc_1EE5AF8:                                       End If
  loc_1EE5AF8:                                     End If
  loc_1EE5AF8:                                   End If
  loc_1EE5AF8:                                 End If
  loc_1EE5AF8:                               End If
  loc_1EE5AF8:                             End If
  loc_1EE5AF8:                           End If
  loc_1EE5AF8:                         End If
  loc_1EE5AF8:                       End If
  loc_1EE5AF8:                     End If
  loc_1EE5AF8:                   End If
  loc_1EE5AF8:                 End If
  loc_1EE5AF8:               End If
  loc_1EE5AF8:             End If
  loc_1EE5AF8:           End If
  loc_1EE5AF8:         End If
  loc_1EE5AF8:       End If
  loc_1EE5AFB:     Next var_420 'Integer
  loc_1EE5B06:     var_200 = var_DC.RecordCount
  loc_1EE5B14:     If (var_200 > 0) Then
  loc_1EE5B1A:       var_DC.MoveFirst
  loc_1EE5B1F:       ' Referenced from: 1EE629A
  loc_1EE5B2E:       If Not(var_DC.EOF) Then
  loc_1EE5B57:         var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EE5B85:         If (Ucase(var_25C) = CVar(MemVar_1F95078 & "NET")) Then
  loc_1EE5BC8:           var_22C = var_DC.Fields
  loc_1EE5BD0:           var_234 = var_22C.Item("Amount")
  loc_1EE5BD8:           var_220 = CVar(var_234) 'Address
  loc_1EE5BDF:           Proc_6_39_E7D3A0(var_25C)
  loc_1EE5C08:           var_1CC = CStr(Format(var_25C, "0.00"))
  loc_1EE5C2A:           Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EE5C32:           Call 0.Method_arg_24 (1, 1)
  loc_1EE5C3E:           For var_434 =  To CInt(var_200): var_220 = var_434 'Integer
  loc_1EE5C57:             Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE5C5F:             Call 0.Method_arg_20 (var_234)
  loc_1EE5C67:             Call 0.Method_arg_30 (var_224)
  loc_1EE5C7D:             var_444 = Ucase(CVar(var_224)) 'Variant
  loc_1EE5C93:             var_220 = "lblNetAmount"
  loc_1EE5CAD:             If (var_444 = Ucase(var_220)) Then
  loc_1EE5CBB:               Proc_6_17_EAAE40(var_220)
  loc_1EE5CD7:               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5CDF:               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5CE7:               Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE5CFC:             Else
  loc_1EE5D04:               var_220 = "NetAmount"
  loc_1EE5D1E:               If (var_444 = Ucase(var_220)) Then
  loc_1EE5D2C:                 Proc_6_17_EAAE40(var_220)
  loc_1EE5D34:                 var_224 = CStr(var_220)
  loc_1EE5D48:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5D50:                 Call 0.Method_arg_20 (var_224)
  loc_1EE5D58:                 Call 0.Method_arg_38 (var_1CC)
  loc_1EE5D6A:               End If
  loc_1EE5D6A:             End If
  loc_1EE5D6D:           Next var_434 'Integer
  loc_1EE5D75:         Else
  loc_1EE5D9B:           var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EE5DC9:           If (Ucase(var_25C) = CVar(MemVar_1F95078 & "TOT")) Then
  loc_1EE5E0C:             var_22C = var_DC.Fields
  loc_1EE5E14:             var_234 = var_22C.Item("Amount")
  loc_1EE5E1C:             var_220 = CVar(var_234) 'Address
  loc_1EE5E23:             Proc_6_39_E7D3A0(var_25C)
  loc_1EE5E4C:             var_1CC = CStr(Format(var_25C, "0.00"))
  loc_1EE5E6E:             Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EE5E76:             Call 0.Method_arg_24 (1, 1)
  loc_1EE5E82:             For var_448 =  To CInt(var_200):   var_220 = var_448 'Integer
  loc_1EE5E9B:               Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE5EA3:               Call 0.Method_arg_20 (var_234)
  loc_1EE5EAB:               Call 0.Method_arg_30 (var_224)
  loc_1EE5EC1:               var_458 = Ucase(CVar(var_224)) 'Variant
  loc_1EE5ED7:               var_220 = "lblTotal"
  loc_1EE5EF1:               If (var_458 = Ucase(var_220)) Then
  loc_1EE5EFF:                 Proc_6_17_EAAE40(var_220)
  loc_1EE5F1B:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5F23:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE5F2B:                 Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE5F40:               Else
  loc_1EE5F48:                 var_220 = "Total"
  loc_1EE5F51:                 var_25C = Ucase(var_220)
  loc_1EE5F62:                 If (var_458 = var_25C) Then
  loc_1EE5F70:                   Proc_6_17_EAAE40(var_220)
  loc_1EE5F78:                   var_224 = CStr(var_220)
  loc_1EE5F8C:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE5F94:                   Call 0.Method_arg_20 (var_224)
  loc_1EE5F9C:                   Call 0.Method_arg_38 (var_1CC)
  loc_1EE5FAE:                 End If
  loc_1EE5FAE:               End If
  loc_1EE5FB1:             Next var_448 'Integer
  loc_1EE5FB9:           Else
  loc_1EE6009:             var_220 = CVar(var_DC.Fields.Item("SValue")) 'Address
  loc_1EE6010:             Proc_6_39_E7D3A0(var_25C)
  loc_1EE6039:             var_1C8 = CStr(Format(var_25C, "0.00"))
  loc_1EE6059:             var_22C = var_DC.Fields
  loc_1EE6061:             var_234 = var_22C.Item("Amount")
  loc_1EE6069:             var_220 = CVar(var_234) 'Address
  loc_1EE6070:             Proc_6_39_E7D3A0(var_25C, var_220, 1)
  loc_1EE6099:             var_1CC = CStr(Format(var_25C, "0.00"))
  loc_1EE60B0:             var_BC = (var_BC + 1)
  loc_1EE60C4:             Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1, var_BC)
  loc_1EE60CC:             Call 0.Method_arg_24 (1, 1)
  loc_1EE60D8:             For var_45C = var_220 To CInt(var_200):     1 = var_45C 'Integer
  loc_1EE60F1:               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE60F9:               Call 0.Method_arg_20 (var_224)
  loc_1EE6101:               Call 0.Method_arg_30 (var_220)
  loc_1EE6117:               var_46C = Ucase(CVar(var_224)) 'Variant
  loc_1EE6134:               var_220 = CVar("lblSunName" & CStr(var_BC)) 'String
  loc_1EE614E:               If (var_46C = Ucase(var_220)) Then
  loc_1EE615C:                 Proc_6_17_EAAE40(var_220)
  loc_1EE6178:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6180:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6188:                 Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE619D:               Else
  loc_1EE61AC:                 var_220 = CVar("SunPer" & CStr(var_BC)) 'String
  loc_1EE61C6:                 If (var_46C = Ucase(var_220)) Then
  loc_1EE61D4:                   Proc_6_17_EAAE40(var_220)
  loc_1EE61F0:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE61F8:                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6200:                   Call 0.Method_arg_38 (var_1C8)
  loc_1EE6215:                 Else
  loc_1EE6224:                   var_220 = CVar("SunAmt" & CStr(var_BC)) 'String
  loc_1EE623E:                   If (var_46C = Ucase(var_220)) Then
  loc_1EE624C:                     Proc_6_17_EAAE40(var_220)
  loc_1EE6254:                     var_224 = CStr(var_220)
  loc_1EE6268:                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6270:                     Call 0.Method_arg_20 (var_224)
  loc_1EE6278:                     Call 0.Method_arg_38 (var_1CC)
  loc_1EE628A:                   End If
  loc_1EE628A:                 End If
  loc_1EE628A:               End If
  loc_1EE628D:             Next var_45C 'Integer
  loc_1EE6292:           End If
  loc_1EE6292:         End If
  loc_1EE6295:         var_DC.MoveNext
  loc_1EE629A:         GoTo loc_1EE5B1F
  loc_1EE629D:       End If
  loc_1EE629D:     End If
  loc_1EE62A3:     var_200 = var_13C.RecordCount
  loc_1EE62B1:     If (var_200 > 0) Then
  loc_1EE62B7:       var_13C.MoveFirst
  loc_1EE62BC:       ' Referenced from: 1EE656D
  loc_1EE62CB:       If Not(var_13C.EOF) Then
  loc_1EE62DF:         Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE62E7:         Call 0.Method_arg_24 (var_BA)
  loc_1EE62F3:         For var_470 =  To CInt(var_200): 1 = var_470 'Integer
  loc_1EE631F:           var_25C = Ucase(CVar(var_13C.Fields.Item("SunName")))
  loc_1EE633A:           Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE6342:           Call 0.Method_arg_20 (var_224)
  loc_1EE634A:           Call 0.Method_arg_30 (var_25C)
  loc_1EE6376:           If ( = Ucase(CVar(var_224))) Then
  loc_1EE639F:             Proc_6_17_EAAE40(var_25C)
  loc_1EE63A7:             var_224 = CStr(var_25C)
  loc_1EE63BB:             Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE63C3:             Call 0.Method_arg_20 (var_224)
  loc_1EE63CB:             Call 0.Method_arg_38 (CVar(var_13C.Fields.Item("SunAmount")))
  loc_1EE63F2:             var_22C = var_13C.Fields
  loc_1EE63FA:             var_234 = var_22C.Item("SunName")
  loc_1EE6437:             If (Ucase(CVar(var_234)) = Ucase("Discount")) Then
  loc_1EE644B:               Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE6453:               Call 0.Method_arg_24 (var_BC)
  loc_1EE645F:               For var_474 =  To CInt(var_200): 1 = var_474 'Integer
  loc_1EE6478:                 Call 0.Method_arg_90 (var_22C, CLng(var_BC))
  loc_1EE6480:                 Call 0.Method_arg_20 (var_234)
  loc_1EE6488:                 Call 0.Method_arg_30 (var_224)
  loc_1EE64A3:                 var_26C = "DiscPer"
  loc_1EE64AC:                 var_27C = Ucase(var_26C)
  loc_1EE64C8:                 If (Ucase(CVar(var_224)) = var_27C) Then
  loc_1EE64DD:                   var_22C = var_13C.Fields
  loc_1EE64E5:                   var_234 = var_22C.Item("SunPer")
  loc_1EE64F6:                   var_224 = CStr(var_234.Value)
  loc_1EE6506:                   Proc_6_17_EAAE40(var_26C)
  loc_1EE6522:                   Call 0.Method_arg_90 (var_238, CLng(var_BC), var_24C)
  loc_1EE652A:                   Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EE6532:                   Call 0.Method_arg_38 (CVar(CStr(Val(var_224))))
  loc_1EE6552:                 End If
  loc_1EE6555:               Next var_474 'Integer
  loc_1EE655A:             End If
  loc_1EE655A:             Exit For
  loc_1EE655D:           End If
  loc_1EE6560:         Next var_470 'Integer
  loc_1EE6565:         ' Referenced from: 1EE655A
  loc_1EE6568:         var_13C.MoveNext
  loc_1EE656D:         GoTo loc_1EE62BC
  loc_1EE6570:       End If
  loc_1EE6570:     End If
  loc_1EE6576:     var_200 = var_1B0.RecordCount
  loc_1EE6584:     If (var_200 > 0) Then
  loc_1EE6589:       var_BC = 1
  loc_1EE658F:       var_1B0.MoveFirst
  loc_1EE6594:       ' Referenced from: 1EE691F
  loc_1EE65A3:       If Not(var_1B0.EOF) Then
  loc_1EE65AE:         Do 'loop at: 1EF4341
  loc_1EE65AE:         Do 'loop at: 1EF564F
  loc_1EE65B7:         Call 0.Method_arg_90 (var_22C, var_200, var_BA)
  loc_1EE65BF:         Call 0.Method_arg_24 (1)
  loc_1EE65CB:         For var_478 =  To CInt(var_200): var_BC = var_478 'Integer
  loc_1EE65E4:           Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE65EC:           Call 0.Method_arg_20 (var_234)
  loc_1EE65F4:           Call 0.Method_arg_30 (var_224)
  loc_1EE660A:           var_488 = Ucase(CVar(var_224)) 'Variant
  loc_1EE6641:           If (var_488 = Ucase(CVar("STName" & CStr(var_BC)))) Then
  loc_1EE6672:             Proc_6_17_EAAE40(var_26C)
  loc_1EE668E:             Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE6696:             Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EE669E:             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_1B0.Fields.Item("TaxName")))))
  loc_1EE66BB:           Else
  loc_1EE66D0:             var_25C = Ucase(CVar("STPer" & CStr(var_BC)))
  loc_1EE66E4:             If (var_488 = var_25C) Then
  loc_1EE670D:               Proc_6_39_E7D3A0(var_25C)
  loc_1EE6724:               Proc_6_17_EAAE40(var_27C, CVar(CStr(var_25C) & ") 'String)
  loc_1EE6740:               Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE6748:               Call 0.Method_arg_20 (CStr(var_27C))
  loc_1EE6750:               Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxPer")))
  loc_1EE6775:             Else
  loc_1EE678A:               var_25C = Ucase(CVar("STAmt" & CStr(var_BC)))
  loc_1EE679E:               If (var_488 = var_25C) Then
  loc_1EE67C7:                 Proc_6_39_E7D3A0(var_25C)
  loc_1EE67F2:                 Proc_6_17_EAAE40(var_2A4, Format(var_25C, "0.00"), 1)
  loc_1EE680E:                 Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE6816:                 Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EE681E:                 Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxAmt")))
  loc_1EE683F:               Else
  loc_1EE6854:                 var_25C = Ucase(CVar("STAbleAmt" & CStr(var_BC)))
  loc_1EE6868:                 If (var_488 = var_25C) Then
  loc_1EE6891:                   Proc_6_39_E7D3A0(var_25C)
  loc_1EE68B1:                   var_27C = Format(var_25C, "0.00")
  loc_1EE68BC:                   Proc_6_17_EAAE40(var_2A4, var_27C, 1)
  loc_1EE68D8:                   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE68E0:                   Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EE68E8:                   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxableAmt")))
  loc_1EE6906:                 End If
  loc_1EE6906:               End If
  loc_1EE6906:             End If
  loc_1EE6906:           End If
  loc_1EE6909:         Next var_478 'Integer
  loc_1EE6914:         var_BC = (var_BC + 1)
  loc_1EE691A:         var_1B0.MoveNext
  loc_1EE691F:         GoTo loc_1EE6594
  loc_1EE6922:       End If
  loc_1EE6922:     End If
  loc_1EE694C:     var_25C = CVar(Proc_6_38_E69628(CVar(MemVar_629D24.Fields.Item("Printer")))) 'String
  loc_1EE696E:     If CBool(Ucase(var_25C) <> "PRN") Then
  loc_1EE699F:       Proc_96_98_F10508(Proc_6_38_E69628(CVar(MemVar_629D24.Fields.Item("Printer"))))
  loc_1EE69AD:     End If
  loc_1EE69D3:     Proc_6_39_E7D3A0(var_25C, CVar(var_134.Fields.Item("NoOfBill")))
  loc_1EE69ED:     If (var_25C <= 0) Then
  loc_1EE69F5:       Set var_234 = Nothing
  loc_1EE6A11:       Set var_22C = MemVar_1F951E8 
  loc_1EE6A1D:       Proc_6_99_1484404(var_22C, 0, vbNullString)
  loc_1EE6A28:       MemVar_1F951E8 = var_22C
  loc_1EE6A39:     Else
  loc_1EE6A48:       var_22C = var_134.Fields
  loc_1EE6A50:       var_234 = var_22C.Item("NoOfBill")
  loc_1EE6A58:       var_220 = CVar(var_234) 'Address
  loc_1EE6A5F:       Proc_6_39_E7D3A0(var_25C, var_220, &HFF)
  loc_1EE6A7F:       Call 0.Method_Me8 (False, var_25C, var_294, var_2D4)
  loc_1EE6A8E:     End If
  loc_1EE6A93:     MemVar_1F951E8 = Nothing
  loc_1EE6A9A:     var_C4.MoveNext
  loc_1EE6A9F:     GoTo loc_1EE09A7
  loc_1EE6AA2:   End If
  loc_1EE6AA2:   GoTo loc_1EDD19A
  loc_1EE6AA5: End If
  loc_1EE6ACB: unk_43FED1.Execute "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_220, -1
  loc_1EE6AD6: Set var_F8 = var_22C
  loc_1EE6AF5: var_FA = CInt(var_F8.RecordCount)
  loc_1EE6AFE: var_248 = 0
  loc_1EE6B1D: var_224 = "Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1 Where DocId In (Select OutletDocId  from POS_SBill Where DocId='" & Me(12)
  loc_1EE6B2D: unk_43FED1.Execute var_224 & "')", var_220, -1
  loc_1EE6B35: var_22C = var_22C.Fields
  loc_1EE6B3D: var_248 = var_234.Item(var_234)
  loc_1EE6B45: var_238 = var_238.Value
  loc_1EE6B4E: var_104 = CSng(var_25C)
  loc_1EE6B7C: Loop Until (var_F8.RecordCount > 0) 'do at: 1EDD19A
  loc_1EE6B82: var_F8.MoveFirst
  loc_1EE6B87: ' Referenced from: 1EED197
  loc_1EE6B96: Loop Until Not(var_F8.EOF) 'do at: 1EDD19A
  loc_1EE6BB8: var_22C = var_F8.Fields
  loc_1EE6BD1: var_224 = Proc_6_38_E69628(CVar(var_22C.Item("OutletCode")), "Select * from Depart Where Code='", var_25C, -1, var_238, var_104)
  loc_1EE6BE5: unk_43FED1.Execute var_25C & var_224 & "'", var_FA, var_22C
  loc_1EE6BF0: Set var_134 = var_238
  loc_1EE6C17: var_248 = "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='"
  loc_1EE6C5D: unk_43FED1.Execute CStr(var_248 & var_F8.Fields.Item("OutletDocid").Value & "' group by revmast.code,TaxPer Order by TaxPer"), var_27C, -1
  loc_1EE6C68: Set var_1B0 = var_238
  loc_1EE6C82: var_248 = "Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='"
  loc_1EE6CBF: var_8C = CStr(var_248 & var_F8.Fields.Item("OutletDocid").Value & "'")
  loc_1EE6CD9: var_25C = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1EE6D14: var_90 = CStr(var_25C & var_F8.Fields.Item("OutletDocid").Value & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) ")
  loc_1EE6D5D: var_26C = CVar("Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_F8.Fields.Item("OutletDocid").Value 
  loc_1EE6D6B: var_94 = CStr(var_26C & "' order by sno")
  loc_1EE6D87: var_25C = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department,D.Printer FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1EE6D9C: var_22C = var_F8.Fields
  loc_1EE6DAC: var_220 = var_22C.Item("OutletDocid").Value
  loc_1EE6DC2: var_98 = CStr(var_25C & var_220 & "' ORDER BY I.Kitchen")
  loc_1EE6DDF: If (var_8C = vbNullString) Then
  loc_1EE6DE2:   Exit Sub
  loc_1EE6DE3: End If
  loc_1EE6DEB: If (var_90 = vbNullString) Then
  loc_1EE6DEE:   Exit Sub
  loc_1EE6DEF: End If
  loc_1EE6DF7: If (var_94 = vbNullString) Then
  loc_1EE6DFA:   Exit Sub
  loc_1EE6DFB: End If
  loc_1EE6E11: unk_43FED1.Execute var_8C, var_220, -1
  loc_1EE6E1C: Set var_C4 = var_22C
  loc_1EE6E3B: unk_43FED1.Execute var_90, var_220, -1
  loc_1EE6E46: Set var_D8 = var_22C
  loc_1EE6E65: unk_43FED1.Execute var_94, var_220, -1
  loc_1EE6E70: Set var_DC = var_22C
  loc_1EE6E8F: unk_43FED1.Execute var_98, var_220, -1
  loc_1EE6E9A: Set var_D0 = var_22C
  loc_1EE6EAC: var_DC.Filter = "Amount<>0"
  loc_1EE6EC1: var_106 = CByte(var_DC.RecordCount) 'Byte
  loc_1EE6EC9: Set var_C8 = New 
  loc_1EE6ED4: Set var_C8 = Proc_260_12_10D27AC(var_C8, var_22C, var_22C, var_22C, var_22C)
  loc_1EE6EDB: Set var_13C = New 
  loc_1EE6EE6: Set var_13C = Proc_260_11_F5C17C(var_13C, var_238, var_2E4)
  loc_1EE6EE9: ' Referenced from: 1EED18C
  loc_1EE6EF8: Loop Until Not(Me.Recordset15.EOF) 'do at: 1EDD18F
  loc_1EE6EFD: var_9E = 0
  loc_1EE6F06: If (var_9E = 0) Then
  loc_1EE6F31:   var_144 = Proc_6_38_E69628(CVar(var_134.Fields.Item("CstNo")), var_9E)
  loc_1EE6F51:   var_234 = var_134.Fields.Item("LstNo")
  loc_1EE6F62:   var_148 = Proc_6_38_E69628(CVar(var_234), var_234)
  loc_1EE6F80:   var_170 = "Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144
  loc_1EE6FB2:   var_174 = Proc_6_38_E69628(CVar(var_134.Fields.Item("Phone")))
  loc_1EE7013:   var_228 = Proc_6_38_E69628(CVar(var_134.Fields.Item("COMPANYTITLE")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("COMPANYTITLE"))) = "Y"))
  loc_1EE7031:   If (var_BC Or (var_228 = vbNullString)) Then
  loc_1EE7037:     var_178 = "Y"
  loc_1EE703A:   End If
  loc_1EE70B0:   If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("OutletTitle"))) = "Y") Or (Proc_6_38_E69628(CVar(var_134.Fields.Item("OutletTitle"))) = vbNullString)) Then
  loc_1EE70E2:     var_10C = CStr(Trim(CVar(var_134.Fields.Item("Name"))))
  loc_1EE70EF:   End If
  loc_1EE7128:   If (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintTokenNo"))) = "Yes") Then
  loc_1EE7153:     var_154 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("TokenNo")))
  loc_1EE715C:   End If
  loc_1EE7195:   If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Order_Booking"))) = "Y") Then
  loc_1EE719B:     var_14C = "Order No:"
  loc_1EE71C6:     var_150 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EE71D2:   Else
  loc_1EE720B:     If (Proc_6_38_E69628(CVar(var_134.Fields.Item("KotYN"))) = "Y") Then
  loc_1EE7211:       var_14C = "KOT No:"
  loc_1EE723C:       var_150 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EE7245:     End If
  loc_1EE7245:   End If
  loc_1EE726D:   var_114 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("WaiterName")))
  loc_1EE72AF:   If (Proc_6_38_E69628(CVar(var_134.Fields.Item("RestType"))) = "Outlet") Then
  loc_1EE72B5:     var_118 = "Table No:"
  loc_1EE72E0:     var_11C = Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EE72EC:   Else
  loc_1EE7325:     If (Proc_6_38_E69628(CVar(var_134.Fields.Item("RestType"))) = "Room Service") Then
  loc_1EE732B:       var_118 = "Room No:"
  loc_1EE7356:       var_11C = Proc_6_38_E69628(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EE735F:     End If
  loc_1EE735F:   End If
  loc_1EE7387:   var_C0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("Printed")))
  loc_1EE73BB:   var_128 = CStr(var_C4.Fields.Item("GuarAtt").Value)
  loc_1EE73F0:   var_124 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("VTIME")))
  loc_1EE7433:   var_26C = "dd/MM/yy"
  loc_1EE743C:   var_25C = CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")))) 'String
  loc_1EE744B:   var_120 = CStr(Format(var_25C, var_26C))
  loc_1EE7485:   Proc_6_39_E7D3A0(var_25C, CVar(var_C4.Fields.Item("VNo")))
  loc_1EE748E:   var_12C = CStr(var_25C)
  loc_1EE74E5:   var_25C = CVar(var_C4.Fields.Item("VNo")) 'Address
  loc_1EE74EC:   Proc_6_39_E7D3A0(var_26C, var_25C)
  loc_1EE7500:   var_130 = Proc_96_43_F99D14(Proc_6_38_E69628(CVar(var_C4.Fields.Item("vType")), 1), var_26C)
  loc_1EE7553:   If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Roomtype"))) = "RO") Then
  loc_1EE759A:     var_16C = "GUEST  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE75D2:     Proc_6_39_E7D3A0(var_25C, CVar(var_C4.Fields.Item("FolioNo")))
  loc_1EE75DC:     var_18C = CStr(var_25C)
  loc_1EE75EE:   Else
  loc_1EE7621:     var_248 = "MemberInfo"
  loc_1EE763D:     var_25C = CVar(var_134.Fields.Item(var_248)) 'Address
  loc_1EE7664:     If (1 And (Proc_6_38_E69628(var_25C, (Proc_6_38_E69628(CVar(var_C4.Fields.Item("MemName"))) <> vbNullString)) = "Y")) Then
  loc_1EE76AB:       var_16C = "MEMBER :   " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE76C0:     Else
  loc_1EE76F9:       If (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))) <> vbNullString) Then
  loc_1EE7740:         var_16C = "REMARK :     " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE7752:       End If
  loc_1EE7752:     End If
  loc_1EE7752:   End If
  loc_1EE777A:   var_190 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("PhoneNo")))
  loc_1EE77AB:   var_194 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CustName")))
  loc_1EE77DC:   var_198 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr1")))
  loc_1EE780D:   var_19C = Proc_6_38_E69628(CVar(var_C4.Fields.Item("Addr2")))
  loc_1EE784F:   If (Proc_6_38_E69628(CVar(var_134.Fields.Item("MemberInfo"))) <> "Y") Then
  loc_1EE787A:     var_1D0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompanyName")))
  loc_1EE78AB:     var_1D4 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd1")))
  loc_1EE78DC:     var_1D8 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd2")))
  loc_1EE790D:     var_1DC = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompAdd3")))
  loc_1EE793E:     var_1E0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompCity")))
  loc_1EE796F:     var_1E4 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompStateCode")))
  loc_1EE79A0:     var_1E8 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("CompState")))
  loc_1EE79AC:     var_1FC = "CompGSTIN"
  loc_1EE79D1:     var_1EC = Proc_6_38_E69628(CVar(var_C4.Fields.Item(var_1FC)))
  loc_1EE79DA:   End If
  loc_1EE79DA: End If
  loc_1EE79DC: var_BA = 1
  loc_1EE79E2: var_D8.MoveFirst
  loc_1EE79E7: ' Referenced from: 1EE811C
  loc_1EE79F6: If Not(var_D8.EOF) Then
  loc_1EE79FC:   Set var_48C = var_C8 
  loc_1EE7A0B:   var_48C.AddNew var_1FC, var_248
  loc_1EE7A35:   var_48C.Fields.Item("mLine").Value = vbNullString
  loc_1EE7A69:   var_48C.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EE7ABB:   var_48C.Fields.Item("DispCode").Value = CVar(var_D8.Fields.Item("DispCode"))
  loc_1EE7B0F:   var_48C.Fields.Item("HSNCode").Value = CVar(var_D8.Fields.Item("HSNCode"))
  loc_1EE7B63:   var_48C.Fields.Item("Item").Value = CVar(var_D8.Fields.Item("ItemName"))
  loc_1EE7B9A:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("qty")))
  loc_1EE7BE2:   var_48C.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EE7C21:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Rate")), 1)
  loc_1EE7C69:   var_48C.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EE7CA8:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("TaxAmt")), 1)
  loc_1EE7CF0:   var_48C.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EE7D2F:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Amt")), 1, 1)
  loc_1EE7D43:   var_26C = "0.00"
  loc_1EE7D4F:   var_27C = Format(var_25C, var_26C)
  loc_1EE7D77:   var_48C.Fields.Item("Amount").Value = var_27C
  loc_1EE7DB6:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("TaxPer")), 1, 1)
  loc_1EE7DC1:   Proc_6_47_EF6560(var_26C, var_25C, 1)
  loc_1EE7DE9:   var_48C.Fields.Item("TaxPer").Value = var_26C
  loc_1EE7E26:   Proc_6_47_EF6560(var_25C, CVar(var_D8.Fields.Item("nonTaxable")))
  loc_1EE7E4E:   var_48C.Fields.Item("NonTaxable").Value = var_25C
  loc_1EE7E89:   Proc_6_47_EF6560(var_25C, CVar(var_D8.Fields.Item("Taxable")))
  loc_1EE7EB1:   var_48C.Fields.Item("Taxable").Value = var_25C
  loc_1EE7EEE:   var_25C = CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item("Unit")), 1)) 'String
  loc_1EE7F11:   var_48C.Fields.Item("Unit").Value = var_25C
  loc_1EE7F4C:   Proc_6_47_EF6560(var_25C, CVar(var_D8.Fields.Item("ItemRate")))
  loc_1EE7F74:   var_48C.Fields.Item("ItemRate").Value = var_25C
  loc_1EE7FB1:   var_25C = CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item("Remarks")))) 'String
  loc_1EE7FCC:   var_24C = var_48C.Fields.Item("Remarks")
  loc_1EE7FD4:   var_24C.Value = var_25C
  loc_1EE7FE9:   var_248 = "*"
  loc_1EE7FF2:   var_1FC = "Mark"
  loc_1EE800E:   var_48C.Fields.Item(var_1FC).Value = var_248
  loc_1EE8025:   var_48C.Update var_1FC, var_248
  loc_1EE802C:   Set var_48C = Nothing 
  loc_1EE805D:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Amt")))
  loc_1EE8065:   var_26C = (CVar(var_E4) + var_25C)
  loc_1EE80A6:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("nonTaxable")), CVar(var_1A4))
  loc_1EE80AE:   var_26C = (CSng(var_26C) + var_25C)
  loc_1EE80B3:   var_1A4 = CSng(var_26C)
  loc_1EE80EF:   Proc_6_39_E7D3A0(var_25C, CVar(var_D8.Fields.Item("Taxable")), CVar(var_1AC))
  loc_1EE80F7:   var_26C = (var_1A4 + var_25C)
  loc_1EE80FC:   var_1AC = CSng(var_26C)
  loc_1EE8111:   var_BA = (var_BA + 1)
  loc_1EE8117:   var_D8.MoveNext
  loc_1EE811C:   GoTo loc_1EE79E7
  loc_1EE811F: End If
  loc_1EE8158: Loop Until (Proc_6_38_E69628(CVar(var_C4.Fields.Item("Printed")), var_BA) <> "Y") 'do at: 1ED9D51
  loc_1EE815E: var_2E4 = 0
  loc_1EE81BA: unk_43FED1.Execute CStr("SELECT TOKENPrintAfter FROM Depart where Code='" & var_134.Fields.Item("Code").Value & "'"), var_27C, -1
  loc_1EE81C2: var_238 = var_238.Fields
  loc_1EE81CA: var_2E4 = var_24C.Item(var_24C)
  loc_1EE8202: Loop Until (Proc_6_38_E69628(CVar(var_34C), var_34C) = "Yes") 'do at: 1ED9D51
  loc_1EE8219: Loop Until (var_D0.RecordCount > 0) 'do at: 1ED9D51
  loc_1EE821F: var_D0.MoveFirst
  loc_1EE8224: ' Referenced from: 1EE9D4E
  loc_1EE8233: Loop Until Not(var_D0.EOF) 'do at: 1ED9D51
  loc_1EE8238: var_BA = 1
  loc_1EE824F: var_25C = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1EE8280: var_248 = "' AND I.Kitchen='"
  loc_1EE82B7: var_2D4 = "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1EE82CA: unk_43FED1.Execute CStr(var_25C & var_C4.Fields.Item("DocID").Value & var_248 & var_D0.Fields.Item("Kitchen").Value & var_2D4), var_318, -1
  loc_1EE82D5: Set var_D4 = var_34C
  loc_1EE82FF: Set var_CC = New 
  loc_1EE830A: Set var_CC = Proc_260_13_10D2460(var_CC, var_34C, var_BA)
  loc_1EE8313: var_200 = Me.Recordset15.RecordCount
  loc_1EE8321: Loop Until (var_200 > 0) 'do at: 1ED89B2
  loc_1EE8327: var_1FC = "Department"
  loc_1EE834C: var_110 = Proc_6_38_E69628(CVar(var_D0.Fields.Item(var_1FC)), var_1AC)
  loc_1EE8355: ' Referenced from: 1EE89AF
  loc_1EE8364: Loop Until Not(var_D4.EOF) 'do at: 1ED89B2
  loc_1EE836A: Set var_490 = var_CC 
  loc_1EE8379: var_490.AddNew var_1FC, var_248
  loc_1EE83A3: var_490.Fields.Item("mLine").Value = vbNullString
  loc_1EE83D7: var_490.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EE8429: var_490.Fields.Item("DispCode").Value = CVar(var_D4.Fields.Item("DispCode"))
  loc_1EE847D: var_490.Fields.Item("HSNCode").Value = CVar(var_D4.Fields.Item("HSNCode"))
  loc_1EE84D1: var_490.Fields.Item("Item").Value = CVar(var_D4.Fields.Item("ItemName"))
  loc_1EE8508: Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("qty")))
  loc_1EE8550: var_490.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EE858F: Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("Rate")), 1)
  loc_1EE85D7: var_490.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EE8616: Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("TaxAmt")), 1)
  loc_1EE865E: var_490.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EE869D: Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("Amt")), 1, 1)
  loc_1EE86B1: var_26C = "0.00"
  loc_1EE86C9: var_294 = "Amount"
  loc_1EE86E5: var_490.Fields.Item(var_294).Value = Format(var_25C, var_26C)
  loc_1EE8724: Proc_6_39_E7D3A0(var_25C, CVar(var_D4.Fields.Item("TaxPer")), 1, 1)
  loc_1EE872F: Proc_6_47_EF6560(var_26C, var_25C, 1)
  loc_1EE8757: var_490.Fields.Item("TaxPer").Value = var_26C
  loc_1EE8794: Proc_6_47_EF6560(var_25C, CVar(var_D4.Fields.Item("nonTaxable")))
  loc_1EE87BC: var_490.Fields.Item("NonTaxable").Value = var_25C
  loc_1EE87F7: Proc_6_47_EF6560(var_25C, CVar(var_D4.Fields.Item("Taxable")))
  loc_1EE881F: var_490.Fields.Item("Taxable").Value = var_25C
  loc_1EE885C: var_25C = CVar(Proc_6_38_E69628(CVar(var_D4.Fields.Item("Unit")), 1)) 'String
  loc_1EE887F: var_490.Fields.Item("Unit").Value = var_25C
  loc_1EE88BA: Proc_6_47_EF6560(var_25C, CVar(var_D4.Fields.Item("ItemRate")))
  loc_1EE88E2: var_490.Fields.Item("ItemRate").Value = var_25C
  loc_1EE8942: var_490.Fields.Item("Remarks").Value = CVar(Proc_6_38_E69628(CVar(var_D4.Fields.Item("Remarks"))))
  loc_1EE8957: var_248 = "*"
  loc_1EE8960: var_1FC = "Mark"
  loc_1EE8974: var_234 = var_490.Fields.Item(var_1FC)
  loc_1EE897C: var_234.Value = var_248
  loc_1EE8993: var_490.Update var_1FC, var_248
  loc_1EE899A: Set var_490 = Nothing 
  loc_1EE89A1: var_D4.MoveNext
  loc_1EE89AC: var_BA = (var_BA + 1)
  loc_1EE89AF: GoTo loc_1EE8355
  loc_1EE89B5: var_15C = "BillTokenPrint"
  loc_1EE89DC: Set var_22C = var_CC 
  loc_1EE89E3: CreateFieldDefFile(var_22C, MemVar_1F950B4 & "\" & var_15C & ".ttx", &HFF)
  loc_1EE8A0E: var_224 = MemVar_1F950B4 & "\"
  loc_1EE8A25: Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EE8A30: MemVar_1F951E8 = var_22C
  loc_1EE8A59: Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EE8A61: Call 0.Method_arg_2C (var_294, var_BA)
  loc_1EE8A6F: Call 0.Method_arg_150 (var_BA)
  loc_1EE8A85: Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE8A8D: Call 0.Method_arg_24 (var_BA)
  loc_1EE8A99: For var_494 =  To CInt(var_200): 1 = var_494 'Integer
  loc_1EE8AB2:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE8ABA:   Call 0.Method_arg_20 (var_234)
  loc_1EE8AC2:   Call 0.Method_arg_30 (var_224)
  loc_1EE8AD8:   var_4A4 = Ucase(CVar(var_224)) 'Variant
  loc_1EE8AEE:   var_220 = "comp_name"
  loc_1EE8B08:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8B57
  loc_1EE8B16:   Proc_6_17_EAAE40(var_220)
  loc_1EE8B32:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8B3A:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8B42:   Call 0.Method_arg_38 (MemVar_1F95130)
  loc_1EE8B54:   GoTo loc_1ED9BD6
  loc_1EE8B5F:   var_220 = "comp_add1"
  loc_1EE8B79:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8BC8
  loc_1EE8B87:   Proc_6_17_EAAE40(var_220)
  loc_1EE8BA3:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8BAB:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8BB3:   Call 0.Method_arg_38 (MemVar_1F95134)
  loc_1EE8BC5:   GoTo loc_1ED9BD6
  loc_1EE8BD0:   var_220 = "comp_pin"
  loc_1EE8BEA:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8C39
  loc_1EE8BF8:   Proc_6_17_EAAE40(var_220)
  loc_1EE8C14:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8C1C:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8C24:   Call 0.Method_arg_38 (MemVar_1F9513C)
  loc_1EE8C36:   GoTo loc_1ED9BD6
  loc_1EE8C5B:   Loop Until (var_4A4 = Ucase("comp_GSTIN")) 'do at: 1ED8CA5
  loc_1EE8C7F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE8C87:   Call 0.Method_arg_20 (var_234)
  loc_1EE8C8F:   Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1EE8CA2:   GoTo loc_1ED9BD6
  loc_1EE8CAD:   var_220 = "Comp_Phone_Fax"
  loc_1EE8CC7:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8D16
  loc_1EE8CD5:   Proc_6_17_EAAE40(var_220)
  loc_1EE8CF1:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8CF9:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8D01:   Call 0.Method_arg_38 (var_170)
  loc_1EE8D13:   GoTo loc_1ED9BD6
  loc_1EE8D1E:   var_220 = "Outl_Phone_Fax"
  loc_1EE8D38:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8D87
  loc_1EE8D46:   Proc_6_17_EAAE40(var_220)
  loc_1EE8D62:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8D6A:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8D72:   Call 0.Method_arg_38 (var_174)
  loc_1EE8D84:   GoTo loc_1ED9BD6
  loc_1EE8D8F:   var_220 = "CompTitleYN"
  loc_1EE8DA2:   Do 'loop at: 1EF8CE3
  loc_1EE8DA2:   
  loc_1EE8DA2:
  loc_1EE8DA9:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8DF8
  loc_1EE8DB7:   Proc_6_17_EAAE40(var_220)
  loc_1EE8DD3:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8DDB:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8DE3:   Call 0.Method_arg_38 (var_178)
  loc_1EE8DF5:   GoTo loc_1ED9BD6
  loc_1EE8E00:   var_220 = "Outlet_Title"
  loc_1EE8E1A:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8E69
  loc_1EE8E28:   Proc_6_17_EAAE40(var_220)
  loc_1EE8E44:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8E4C:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8E54:   Call 0.Method_arg_38 (var_10C)
  loc_1EE8E66:   GoTo loc_1ED9BD6
  loc_1EE8E71:   var_220 = "Department"
  loc_1EE8E8B:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8EDA
  loc_1EE8E99:   Proc_6_17_EAAE40(var_220)
  loc_1EE8EB5:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8EBD:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8EC5:   Call 0.Method_arg_38 (var_110)
  loc_1EE8ED7:   GoTo loc_1ED9BD6
  loc_1EE8EE2:   var_220 = "Waiter_Name"
  loc_1EE8EFC:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8F4B
  loc_1EE8F0A:   Proc_6_17_EAAE40(var_220)
  loc_1EE8F26:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8F2E:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8F36:   Call 0.Method_arg_38 (var_114)
  loc_1EE8F48:   GoTo loc_1ED9BD6
  loc_1EE8F53:   var_220 = "Covers"
  loc_1EE8F6D:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED8FBC
  loc_1EE8F7B:   Proc_6_17_EAAE40(var_220)
  loc_1EE8F97:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8F9F:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8FA7:   Call 0.Method_arg_38 (var_128)
  loc_1EE8FB9:   GoTo loc_1ED9BD6
  loc_1EE8FC4:   var_220 = "Cst_No"
  loc_1EE8FDE:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED902D
  loc_1EE8FEC:   Proc_6_17_EAAE40(var_220)
  loc_1EE9008:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9010:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9018:   Call 0.Method_arg_38 (var_144)
  loc_1EE902A:   GoTo loc_1ED9BD6
  loc_1EE9035:   var_220 = "Lst_No"
  loc_1EE904F:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED909E
  loc_1EE905D:   Proc_6_17_EAAE40(var_220)
  loc_1EE9079:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9081:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9089:   Call 0.Method_arg_38 (var_148)
  loc_1EE909B:   GoTo loc_1ED9BD6
  loc_1EE90A6:   var_220 = "lblRoom_TableNo"
  loc_1EE90C0:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED910F
  loc_1EE90CE:   Proc_6_17_EAAE40(var_220)
  loc_1EE90EA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE90F2:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE90FA:   Call 0.Method_arg_38 (var_118)
  loc_1EE910C:   GoTo loc_1ED9BD6
  loc_1EE9117:   var_220 = "Room_TableNo"
  loc_1EE9131:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9180
  loc_1EE913F:   Proc_6_17_EAAE40(var_220)
  loc_1EE915B:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9163:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE916B:   Call 0.Method_arg_38 (var_11C)
  loc_1EE917D:   GoTo loc_1ED9BD6
  loc_1EE9188:   var_220 = "lblOrder_KOTNo"
  loc_1EE91A2:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED91F1
  loc_1EE91B0:   Proc_6_17_EAAE40(var_220)
  loc_1EE91CC:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE91D4:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE91DC:   Call 0.Method_arg_38 (var_14C)
  loc_1EE91EE:   GoTo loc_1ED9BD6
  loc_1EE9202:   var_25C = Ucase("Order_KOTNo")
  loc_1EE9213:   Loop Until (var_4A4 = var_25C) 'do at: 1ED9276
  loc_1EE9231:   Proc_6_17_EAAE40(var_25C)
  loc_1EE924D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9255:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE925D:   Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EE9273:   GoTo loc_1ED9BD6
  loc_1EE927E:   var_220 = "TokenNo"
  loc_1EE9298:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED92E7
  loc_1EE92A6:   Proc_6_17_EAAE40(var_220)
  loc_1EE92C2:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE92CA:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE92D2:   Call 0.Method_arg_38 (var_154)
  loc_1EE92E4:   GoTo loc_1ED9BD6
  loc_1EE92EF:   var_220 = "Bill_No"
  loc_1EE9309:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9358
  loc_1EE9317:   Proc_6_17_EAAE40(var_220)
  loc_1EE9333:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE933B:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9343:   Call 0.Method_arg_38 (var_12C)
  loc_1EE9355:   GoTo loc_1ED9BD6
  loc_1EE9360:   var_220 = "BillVou"
  loc_1EE937A:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED93C9
  loc_1EE9388:   Proc_6_17_EAAE40(var_220)
  loc_1EE93A4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE93AC:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE93B4:   Call 0.Method_arg_38 (var_130)
  loc_1EE93C6:   GoTo loc_1ED9BD6
  loc_1EE93D1:   var_220 = "FolioNo"
  loc_1EE93EB:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED943A
  loc_1EE93F9:   Proc_6_17_EAAE40(var_220)
  loc_1EE9415:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE941D:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9425:   Call 0.Method_arg_38 (var_18C)
  loc_1EE9437:   GoTo loc_1ED9BD6
  loc_1EE9442:   var_220 = "Remark"
  loc_1EE945C:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED94AB
  loc_1EE946A:   Proc_6_17_EAAE40(var_220)
  loc_1EE9486:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE948E:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9496:   Call 0.Method_arg_38 (var_16C)
  loc_1EE94A8:   GoTo loc_1ED9BD6
  loc_1EE94B3:   var_220 = "CustPhone"
  loc_1EE94CD:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED951C
  loc_1EE94DB:   Proc_6_17_EAAE40(var_220)
  loc_1EE94F7:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE94FF:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9507:   Call 0.Method_arg_38 (var_190)
  loc_1EE9519:   GoTo loc_1ED9BD6
  loc_1EE9524:   var_220 = "CustName"
  loc_1EE953E:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED958D
  loc_1EE954C:   Proc_6_17_EAAE40(var_220)
  loc_1EE9568:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9570:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9578:   Call 0.Method_arg_38 (var_194)
  loc_1EE958A:   GoTo loc_1ED9BD6
  loc_1EE9595:   var_220 = "CustAddr1"
  loc_1EE95AF:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED95FE
  loc_1EE95BD:   Proc_6_17_EAAE40(var_220)
  loc_1EE95D9:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE95E1:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE95E9:   Call 0.Method_arg_38 (var_198)
  loc_1EE95FB:   GoTo loc_1ED9BD6
  loc_1EE9606:   var_220 = "CustAddr2"
  loc_1EE9620:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED966F
  loc_1EE962E:   Proc_6_17_EAAE40(var_220)
  loc_1EE964A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9652:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE965A:   Call 0.Method_arg_38 (var_19C)
  loc_1EE966C:   GoTo loc_1ED9BD6
  loc_1EE9677:   var_220 = "Bill_Date"
  loc_1EE9691:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED96E0
  loc_1EE969F:   Proc_6_17_EAAE40(var_220)
  loc_1EE96BB:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE96C3:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE96CB:   Call 0.Method_arg_38 (var_120)
  loc_1EE96DD:   GoTo loc_1ED9BD6
  loc_1EE96E8:   var_220 = "Bill_Time"
  loc_1EE9702:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9751
  loc_1EE9710:   Proc_6_17_EAAE40(var_220)
  loc_1EE972C:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9734:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE973C:   Call 0.Method_arg_38 (var_124)
  loc_1EE974E:   GoTo loc_1ED9BD6
  loc_1EE9759:   var_220 = "TotNonTaxable"
  loc_1EE9762:   var_25C = Ucase(var_220)
  loc_1EE9773:   Loop Until (var_4A4 = var_25C) 'do at: 1ED97D1
  loc_1EE9781:   Proc_6_47_EF6560(var_220)
  loc_1EE978C:   Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EE97A8:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE97B0:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE97B8:   Call 0.Method_arg_38 (var_1A4)
  loc_1EE97CE:   GoTo loc_1ED9BD6
  loc_1EE97D9:   var_220 = "TotTaxable"
  loc_1EE97E2:   var_25C = Ucase(var_220)
  loc_1EE97F3:   Loop Until (var_4A4 = var_25C) 'do at: 1ED9851
  loc_1EE9801:   Proc_6_47_EF6560(var_220)
  loc_1EE980C:   Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EE9828:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9830:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE9838:   Call 0.Method_arg_38 (var_1AC)
  loc_1EE984E:   GoTo loc_1ED9BD6
  loc_1EE9859:   var_220 = "User_Name"
  loc_1EE9873:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED98C2
  loc_1EE9881:   Proc_6_17_EAAE40(var_220)
  loc_1EE989D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE98A5:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE98AD:   Call 0.Method_arg_38 (var_140)
  loc_1EE98BF:   GoTo loc_1ED9BD6
  loc_1EE98CA:   var_220 = "Header1"
  loc_1EE98E4:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9933
  loc_1EE98F2:   Proc_6_17_EAAE40(var_220)
  loc_1EE990E:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9916:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE991E:   Call 0.Method_arg_38 (var_17C)
  loc_1EE9930:   GoTo loc_1ED9BD6
  loc_1EE993B:   var_220 = "Header2"
  loc_1EE9955:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED99A4
  loc_1EE9963:   Proc_6_17_EAAE40(var_220)
  loc_1EE997F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9987:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE998F:   Call 0.Method_arg_38 (var_180)
  loc_1EE99A1:   GoTo loc_1ED9BD6
  loc_1EE99AC:   var_220 = "Header3"
  loc_1EE99C6:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9A15
  loc_1EE99D4:   Proc_6_17_EAAE40(var_220)
  loc_1EE99F0:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE99F8:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9A00:   Call 0.Method_arg_38 (var_184)
  loc_1EE9A12:   GoTo loc_1ED9BD6
  loc_1EE9A1D:   var_220 = "Header4"
  loc_1EE9A37:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9A86
  loc_1EE9A45:   Proc_6_17_EAAE40(var_220)
  loc_1EE9A61:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9A69:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9A71:   Call 0.Method_arg_38 (var_188)
  loc_1EE9A83:   GoTo loc_1ED9BD6
  loc_1EE9A8E:   var_220 = "Slogan1"
  loc_1EE9AA8:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9AF7
  loc_1EE9AB6:   Proc_6_17_EAAE40(var_220)
  loc_1EE9AD2:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9ADA:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9AE2:   Call 0.Method_arg_38 (var_164)
  loc_1EE9AF4:   GoTo loc_1ED9BD6
  loc_1EE9AFF:   var_220 = "Slogan2"
  loc_1EE9B19:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9B68
  loc_1EE9B27:   Proc_6_17_EAAE40(var_220)
  loc_1EE9B43:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9B4B:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9B53:   Call 0.Method_arg_38 (var_168)
  loc_1EE9B65:   GoTo loc_1ED9BD6
  loc_1EE9B70:   var_220 = "Printed"
  loc_1EE9B8A:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED9BD6
  loc_1EE9B98:   Proc_6_17_EAAE40(var_220)
  loc_1EE9BB4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9BBC:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9BC4:   Call 0.Method_arg_38 (var_C0)
  loc_1EE9BD9: Next var_494 'Integer
  loc_1EE9C06: var_25C = CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer")))) 'String
  loc_1EE9C28: Loop Until CBool(Ucase(var_25C) <> "PRN") 'do at: 1ED9C65
  loc_1EE9C57: Proc_96_98_F10508(Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer"))))
  loc_1EE9C84: var_220 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1EE9C8B: Proc_6_39_E7D3A0(var_25C)
  loc_1EE9CA5: Loop Until (var_25C <= 0) 'do at: 1ED9CF1
  loc_1EE9CAD: Set var_234 = Nothing
  loc_1EE9CC9: Set var_22C = MemVar_1F951E8 
  loc_1EE9CD5: Proc_6_99_1484404(var_22C, 0, "Sale Bill Entry")
  loc_1EE9CE0: MemVar_1F951E8 = var_22C
  loc_1EE9CEE: GoTo loc_1ED9D46
  loc_1EE9D17: Proc_6_39_E7D3A0(var_25C, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1EE9D2C: var_248 = False
  loc_1EE9D37: Call 0.Method_Me8 (var_248, var_25C, var_294, var_2D4)
  loc_1EE9D49: var_D0.MoveNext
  loc_1EE9D4E: GoTo loc_1EE8224
  loc_1EE9D51: var_1FC = 0
  loc_1EE9D5D: var_DC.Filter = var_1FC
  loc_1EE9D65: var_DC.MoveFirst
  loc_1EE9D79: Loop Until Not(var_DC.EOF) 'do at: 1ED9F84
  loc_1EE9D7F: Set var_4A8 = var_13C 
  loc_1EE9D8E: var_4A8.AddNew var_1FC, var_248
  loc_1EE9DB8: var_4A8.Fields.Item("mLine").Value = vbNullString
  loc_1EE9DBD: Do 'loop at: 1EF99B0
  loc_1EE9DBD: 
  loc_1EE9DBD:
  loc_1EE9DEC: var_25C = CVar(Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName")), var_2E4)) 'String
  loc_1EE9E0F: var_4A8.Fields.Item("SunName").Value = var_25C
  loc_1EE9E4A: Proc_6_39_E7D3A0(var_25C, CVar(var_DC.Fields.Item("SValue")))
  loc_1EE9E92: var_4A8.Fields.Item("SunPer").Value = Format(var_25C, "0.00")
  loc_1EE9ED1: Proc_6_39_E7D3A0(var_25C, CVar(var_DC.Fields.Item("Amount")), 1)
  loc_1EE9EF1: var_27C = Format(var_25C, "0.00")
  loc_1EE9F09: var_238 = var_4A8.Fields
  loc_1EE9F19: var_238.Item("SunAmount").Value = var_27C
  loc_1EE9F32: var_248 = "*"
  loc_1EE9F3B: var_1FC = "Mark"
  loc_1EE9F57: var_4A8.Fields.Item(var_1FC).Value = var_248
  loc_1EE9F6E: var_4A8.Update var_1FC, var_248
  loc_1EE9F75: Set var_4A8 = Nothing 
  loc_1EE9F7C: var_DC.MoveNext
  loc_1EE9F81: GoTo loc_1ED9D6A
  loc_1EE9FAC: var_140 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("U_Name")), 1, 1)
  loc_1EE9FFE: var_224 = CStr("SELECT Header1,Header2,Header3,Header4,Slogan1,Slogan2 FROM Depart WHERE Code='" & var_134.Fields.Item("Code").Value & "'")
  loc_1EEA008: unk_43FED1.Execute var_224, var_27C, -1
  loc_1EEA013: Set var_138 = var_238
  loc_1EEA033: var_200 = var_138.RecordCount
  loc_1EEA041: Loop Until (var_200 > 0) 'do at: 1EDA1AC
  loc_1EEA06A: Do 'loop at: 1EF9DD5
  loc_1EEA073: var_17C = CStr(Trim(CVar(var_138.Fields.Item("Header1"))))
  loc_1EEA0AF: var_180 = CStr(Trim(CVar(var_138.Fields.Item("Header2"))))
  loc_1EEA0EB: var_184 = CStr(Trim(CVar(var_138.Fields.Item("Header3"))))
  loc_1EEA127: var_188 = CStr(Trim(CVar(var_138.Fields.Item("Header4"))))
  loc_1EEA163: var_164 = CStr(Trim(CVar(var_138.Fields.Item("Slogan1"))))
  loc_1EEA19F: var_168 = CStr(Trim(CVar(var_138.Fields.Item("Slogan2"))))
  loc_1EEA1B1: Set var_138 = Nothing
  loc_1EEA1CD: var_248 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_1EEA1FC: var_25C = var_248 & var_F8.Fields.Item("OutletDocid").Value 
  loc_1EEA213: unk_43FED1.Execute CStr(var_25C & "' And AmtCr>0"), var_27C, -1
  loc_1EEA21E: Set var_1B4 = var_238
  loc_1EEA247: Loop Until Not(var_1B4.EOF) 'do at: 1EDA95F
  loc_1EEA283: Loop Until (Proc_6_38_E69628(CVar(var_1B4.Fields.Item("CompName")), var_238, var_238) <> vbNullString) 'do at: 1EDA4C5
  loc_1EEA29D: var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EEA2AC: Proc_6_39_E7D3A0(var_25C, CVar(var_234), 1)
  loc_1EEA2DE: var_2D4 = "-"
  loc_1EEA312: var_328 = CVar(vbNullString) & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("CompName")), 1 & Format(var_25C, "0.00") & var_2D4, 1)) 
  loc_1EEA3A2: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EEA3A9: Proc_6_39_E7D3A0(var_25C, var_220)
  loc_1EEA3DB: var_2D4 = " - "
  loc_1EEA3F3: var_238 = var_1B4.Fields
  loc_1EEA3FB: var_24C = var_238.Item("Comments")
  loc_1EEA413: var_338 = "-"
  loc_1EEA42B: var_34C = var_1B4.Fields
  loc_1EEA444: var_380 = CVar(Proc_6_38_E69628(CVar(var_34C.Item("CompName")), CVar(vbNullString) & CVar(Proc_6_38_E69628(CVar(var_24C), 1 & Format(var_25C, "0.00") & var_2D4, 1)) & " (")) 'String
  loc_1EEA4C2: GoTo loc_1EDA954
  loc_1EEA4FE: Loop Until (Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayType"))) = "Room") 'do at: 1EDA79C
  loc_1EEA548: var_224 = Proc_6_38_E69628(CVar(var_1B4.Fields.Item("DocID")), "Select IsNull(max(RoomNo),'') from PayCharge where DocId='", var_25C, -1, var_238)
  loc_1EEA56A: unk_43FED1.Execute var_24C & Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayType"))) & "' And PayCode = '" & MemVar_1F95078 & "TOUT'", 0, var_34C
  loc_1EEA57A:  = var_24C.Item()
  loc_1EEA582:  = var_34C.Value
  loc_1EEA58F: var_1C0 = Proc_6_38_E69628(var_238.Fields)
  loc_1EEA5D2: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EEA5D9: Proc_6_39_E7D3A0(var_25C)
  loc_1EEA5E1: var_294 = CVar(CStr(var_1B4.Fields.Item("AmtCr") & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), CVar(vbNullString) & CVar(Proc_6_38_E69628(CVar(var_24C), 1 & Format(var_25C, "0.00") & var_2D4, 1)) & " (")) & "), ")) 'String
  loc_1EEA652: var_370 = var_294 & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) & " Room: " & CVar(var_1C0) 
  loc_1EEA6A4: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EEA6AB: Proc_6_39_E7D3A0(var_25C, var_220)
  loc_1EEA6DD: var_2D4 = " - "
  loc_1EEA711: var_328 = CVar(CStr(var_220 & var_370 & " ), " & " (" & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")))) & "), ")) & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("Comments")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EEA76A: var_1BC = CStr(var_220 & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), var_328 & " (")) & " Room: " & CVar(var_1C0) & " ), ")
  loc_1EEA799: GoTo loc_1EDA954
  loc_1EEA7BB: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EEA7C2: Proc_6_39_E7D3A0(var_25C)
  loc_1EEA828: var_328 = CVar(CStr(CVar(var_1B4.Fields.Item("PayName")) & " ), ")) & CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EEA836: var_1B8 = CStr(var_328 & "), ")
  loc_1EEA86E: var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EEA876: var_220 = CVar(var_234) 'Address
  loc_1EEA87D: Proc_6_39_E7D3A0(var_25C, var_220)
  loc_1EEA8AF: var_2D4 = " - "
  loc_1EEA8C7: var_238 = var_1B4.Fields
  loc_1EEA8CF: var_24C = var_238.Item("Comments")
  loc_1EEA918: var_380 = CVar(Proc_6_38_E69628(CVar(var_1B4.Fields.Item("PayName")), CVar(var_1BC) & CVar(Proc_6_38_E69628(CVar(var_24C), 1 & Format(var_25C, "0.00") & " (", 1)) & " (")) 'String
  loc_1EEA929: var_1BC = CStr(var_220 & var_380 & "), ")
  loc_1EEA957: var_1B4.MoveNext
  loc_1EEA95C: GoTo loc_1EDA238
  loc_1EEA9A0: var_308 = (Len(Trim(var_1B8)) - 1)
  loc_1EEAA08: var_248 = var_1BC
  loc_1EEAA18: var_2D4 = var_1BC
  loc_1EEAA20: var_2A4 = Trim(var_2D4)
  loc_1EEAA31: var_2E4 = 1
  loc_1EEAA36: var_308 = (Len(var_2A4) - var_2E4)
  loc_1EEAA48: var_294 = 0
  loc_1EEAA8D: var_156 = &HFF
  loc_1EEAA93: var_15C = "POSBillWinPrint"
  loc_1EEAA96: var_1FC = "POS Sale Bill"
  loc_1EEAAAD: var_160 = CStr(Ucase(var_1FC))
  loc_1EEAABD: Loop Until (var_156 = 0) 'do at: 1EDAAC1
  loc_1EEAAC0: Exit Sub
  loc_1EEAAE5: Set var_22C = var_C8 
  loc_1EEAAEC: CreateFieldDefFile(var_22C, MemVar_1F950B4 & "\" & var_15C & ".ttx")
  loc_1EEAB17: var_224 = MemVar_1F950B4 & "\"
  loc_1EEAB2E: Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EEAB39: MemVar_1F951E8 = var_22C
  loc_1EEAB62: Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EEAB6A: Call 0.Method_arg_2C (var_294, &HFF)
  loc_1EEAB78: Call 0.Method_arg_150 (var_156)
  loc_1EEAB8E: Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EEAB96: Call 0.Method_arg_24 (var_BA)
  loc_1EEABA2: For var_4AC =  To CInt(var_200): 1 = var_4AC 'Integer
  loc_1EEABBB:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EEABC3:   Call 0.Method_arg_20 (var_234)
  loc_1EEABCB:   Call 0.Method_arg_30 (var_224)
  loc_1EEABE1:   var_4BC = Ucase(CVar(var_224)) 'Variant
  loc_1EEABF7:   var_220 = "comp_name"
  loc_1EEAC11:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDAC60
  loc_1EEAC1F:   Proc_6_17_EAAE40(var_220)
  loc_1EEAC3B:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEAC43:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEAC4B:   Call 0.Method_arg_38 (MemVar_1F95130)
  loc_1EEAC5D:   GoTo loc_1EDC1D0
  loc_1EEAC68:   var_220 = "comp_add1"
  loc_1EEAC82:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDACD1
  loc_1EEAC90:   Proc_6_17_EAAE40(var_220)
  loc_1EEACAC:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEACB4:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEACBC:   Call 0.Method_arg_38 (MemVar_1F95134)
  loc_1EEACCE:   GoTo loc_1EDC1D0
  loc_1EEACD9:   var_220 = "comp_pin"
  loc_1EEACF3:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDAD42
  loc_1EEAD01:   Proc_6_17_EAAE40(var_220)
  loc_1EEAD1D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEAD25:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEAD2D:   Call 0.Method_arg_38 (MemVar_1F9513C)
  loc_1EEAD3F:   GoTo loc_1EDC1D0
  loc_1EEAD64:   Loop Until (var_4BC = Ucase("comp_GSTIN")) 'do at: 1EDADAE
  loc_1EEAD88:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EEAD90:   Call 0.Method_arg_20 (var_234)
  loc_1EEAD98:   Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1EEADAB:   GoTo loc_1EDC1D0
  loc_1EEADB6:   var_220 = "Comp_Phone_Fax"
  loc_1EEADD0:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDAE1F
  loc_1EEADDE:   Proc_6_17_EAAE40(var_220)
  loc_1EEADFA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEAE02:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEAE0A:   Call 0.Method_arg_38 (var_170)
  loc_1EEAE1C:   GoTo loc_1EDC1D0
  loc_1EEAE27:   var_220 = "Outl_Phone_Fax"
  loc_1EEAE41:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDAE90
  loc_1EEAE4F:   Proc_6_17_EAAE40(var_220)
  loc_1EEAE6B:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEAE73:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEAE7B:   Call 0.Method_arg_38 (var_174)
  loc_1EEAE8D:   GoTo loc_1EDC1D0
  loc_1EEAE98:   var_220 = "CompTitleYN"
  loc_1EEAEB2:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDAF01
  loc_1EEAEC0:   Proc_6_17_EAAE40(var_220)
  loc_1EEAEDC:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEAEE4:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEAEEC:   Call 0.Method_arg_38 (var_178)
  loc_1EEAEFE:   GoTo loc_1EDC1D0
  loc_1EEAF09:   var_220 = "Outlet_Title"
  loc_1EEAF23:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDAF72
  loc_1EEAF31:   Proc_6_17_EAAE40(var_220)
  loc_1EEAF4D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEAF55:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEAF5D:   Call 0.Method_arg_38 (var_10C)
  loc_1EEAF6F:   GoTo loc_1EDC1D0
  loc_1EEAF7A:   var_220 = "Waiter_Name"
  loc_1EEAF94:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDAFE3
  loc_1EEAFA2:   Proc_6_17_EAAE40(var_220)
  loc_1EEAFBE:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEAFC6:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEAFCE:   Call 0.Method_arg_38 (var_114)
  loc_1EEAFE0:   GoTo loc_1EDC1D0
  loc_1EEAFEB:   var_220 = "Covers"
  loc_1EEB005:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB054
  loc_1EEB013:   Proc_6_17_EAAE40(var_220)
  loc_1EEB02F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB037:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB03F:   Call 0.Method_arg_38 (var_128)
  loc_1EEB051:   GoTo loc_1EDC1D0
  loc_1EEB05C:   var_220 = "Cst_No"
  loc_1EEB076:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB0C5
  loc_1EEB084:   Proc_6_17_EAAE40(var_220)
  loc_1EEB0A0:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB0A8:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB0B0:   Call 0.Method_arg_38 (var_144)
  loc_1EEB0C2:   GoTo loc_1EDC1D0
  loc_1EEB0CD:   var_220 = "Lst_No"
  loc_1EEB0E7:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB136
  loc_1EEB0F5:   Proc_6_17_EAAE40(var_220)
  loc_1EEB111:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB119:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB121:   Call 0.Method_arg_38 (var_148)
  loc_1EEB133:   GoTo loc_1EDC1D0
  loc_1EEB13E:   var_220 = "lblRoom_TableNo"
  loc_1EEB158:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB1A7
  loc_1EEB166:   Proc_6_17_EAAE40(var_220)
  loc_1EEB182:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB18A:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB192:   Call 0.Method_arg_38 (var_118)
  loc_1EEB1A4:   GoTo loc_1EDC1D0
  loc_1EEB1AF:   var_220 = "Room_TableNo"
  loc_1EEB1C9:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB218
  loc_1EEB1D7:   Proc_6_17_EAAE40(var_220)
  loc_1EEB1F3:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB1FB:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB203:   Call 0.Method_arg_38 (var_11C)
  loc_1EEB215:   GoTo loc_1EDC1D0
  loc_1EEB220:   var_220 = "lblOrder_KOTNo"
  loc_1EEB23A:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB289
  loc_1EEB248:   Proc_6_17_EAAE40(var_220)
  loc_1EEB264:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB26C:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB274:   Call 0.Method_arg_38 (var_14C)
  loc_1EEB286:   GoTo loc_1EDC1D0
  loc_1EEB29A:   var_25C = Ucase("Order_KOTNo")
  loc_1EEB2AB:   Loop Until (var_4BC = var_25C) 'do at: 1EDB30E
  loc_1EEB2C9:   Proc_6_17_EAAE40(var_25C)
  loc_1EEB2E5:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB2ED:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEB2F5:   Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EEB30B:   GoTo loc_1EDC1D0
  loc_1EEB316:   var_220 = "TokenNo"
  loc_1EEB330:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB37F
  loc_1EEB33E:   Proc_6_17_EAAE40(var_220)
  loc_1EEB35A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB362:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB36A:   Call 0.Method_arg_38 (var_154)
  loc_1EEB37C:   GoTo loc_1EDC1D0
  loc_1EEB387:   var_220 = "Bill_No"
  loc_1EEB3A1:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB3F0
  loc_1EEB3AF:   Proc_6_17_EAAE40(var_220)
  loc_1EEB3CB:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB3D3:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB3DB:   Call 0.Method_arg_38 (var_12C)
  loc_1EEB3ED:   GoTo loc_1EDC1D0
  loc_1EEB3F8:   var_220 = "BillVou"
  loc_1EEB412:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB461
  loc_1EEB420:   Proc_6_17_EAAE40(var_220)
  loc_1EEB43C:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB444:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB44C:   Call 0.Method_arg_38 (var_130)
  loc_1EEB45E:   GoTo loc_1EDC1D0
  loc_1EEB469:   var_220 = "FolioNo"
  loc_1EEB483:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB4D2
  loc_1EEB491:   Proc_6_17_EAAE40(var_220)
  loc_1EEB4AD:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB4B5:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB4BD:   Call 0.Method_arg_38 (var_18C)
  loc_1EEB4CF:   GoTo loc_1EDC1D0
  loc_1EEB4DA:   var_220 = "Remark"
  loc_1EEB4F4:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB543
  loc_1EEB502:   Proc_6_17_EAAE40(var_220)
  loc_1EEB51E:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB526:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB52E:   Call 0.Method_arg_38 (var_16C)
  loc_1EEB540:   GoTo loc_1EDC1D0
  loc_1EEB54B:   var_220 = "CustPhone"
  loc_1EEB565:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB5B4
  loc_1EEB573:   Proc_6_17_EAAE40(var_220)
  loc_1EEB58F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB597:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB59F:   Call 0.Method_arg_38 (var_190)
  loc_1EEB5B1:   GoTo loc_1EDC1D0
  loc_1EEB5BC:   var_220 = "CustName"
  loc_1EEB5D6:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB625
  loc_1EEB5E4:   Proc_6_17_EAAE40(var_220)
  loc_1EEB600:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB608:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB610:   Call 0.Method_arg_38 (var_194)
  loc_1EEB622:   GoTo loc_1EDC1D0
  loc_1EEB62D:   var_220 = "CustAddr1"
  loc_1EEB647:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB696
  loc_1EEB655:   Proc_6_17_EAAE40(var_220)
  loc_1EEB671:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB679:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB681:   Call 0.Method_arg_38 (var_198)
  loc_1EEB693:   GoTo loc_1EDC1D0
  loc_1EEB69E:   var_220 = "CustAddr2"
  loc_1EEB6B8:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB707
  loc_1EEB6C6:   Proc_6_17_EAAE40(var_220)
  loc_1EEB6E2:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB6EA:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB6F2:   Call 0.Method_arg_38 (var_19C)
  loc_1EEB704:   GoTo loc_1EDC1D0
  loc_1EEB70F:   var_220 = "Bill_Date"
  loc_1EEB729:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB778
  loc_1EEB737:   Proc_6_17_EAAE40(var_220)
  loc_1EEB753:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB75B:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB763:   Call 0.Method_arg_38 (var_120)
  loc_1EEB775:   GoTo loc_1EDC1D0
  loc_1EEB780:   var_220 = "Bill_Time"
  loc_1EEB79A:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB7E9
  loc_1EEB7A8:   Proc_6_17_EAAE40(var_220)
  loc_1EEB7C4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB7CC:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB7D4:   Call 0.Method_arg_38 (var_124)
  loc_1EEB7E6:   GoTo loc_1EDC1D0
  loc_1EEB7F1:   var_220 = "TotNonTaxable"
  loc_1EEB7FA:   var_25C = Ucase(var_220)
  loc_1EEB80B:   Loop Until (var_4BC = var_25C) 'do at: 1EDB869
  loc_1EEB819:   Proc_6_47_EF6560(var_220)
  loc_1EEB824:   Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EEB840:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB848:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEB850:   Call 0.Method_arg_38 (var_1A4)
  loc_1EEB866:   GoTo loc_1EDC1D0
  loc_1EEB871:   var_220 = "TotTaxable"
  loc_1EEB87A:   var_25C = Ucase(var_220)
  loc_1EEB88B:   Loop Until (var_4BC = var_25C) 'do at: 1EDB8E9
  loc_1EEB899:   Proc_6_47_EF6560(var_220)
  loc_1EEB8A4:   Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EEB8C0:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB8C8:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEB8D0:   Call 0.Method_arg_38 (var_1AC)
  loc_1EEB8E6:   GoTo loc_1EDC1D0
  loc_1EEB8F1:   var_220 = "User_Name"
  loc_1EEB90B:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB95A
  loc_1EEB919:   Proc_6_17_EAAE40(var_220)
  loc_1EEB935:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB93D:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB945:   Call 0.Method_arg_38 (var_140)
  loc_1EEB957:   GoTo loc_1EDC1D0
  loc_1EEB962:   var_220 = "Header1"
  loc_1EEB97C:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDB9CB
  loc_1EEB98A:   Proc_6_17_EAAE40(var_220)
  loc_1EEB9A6:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEB9AE:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEB9B6:   Call 0.Method_arg_38 (var_17C)
  loc_1EEB9C8:   GoTo loc_1EDC1D0
  loc_1EEB9D3:   var_220 = "Header2"
  loc_1EEB9ED:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBA3C
  loc_1EEB9FB:   Proc_6_17_EAAE40(var_220)
  loc_1EEBA17:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBA1F:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBA27:   Call 0.Method_arg_38 (var_180)
  loc_1EEBA39:   GoTo loc_1EDC1D0
  loc_1EEBA44:   var_220 = "Header3"
  loc_1EEBA5E:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBAAD
  loc_1EEBA6C:   Proc_6_17_EAAE40(var_220)
  loc_1EEBA88:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBA90:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBA98:   Call 0.Method_arg_38 (var_184)
  loc_1EEBAAA:   GoTo loc_1EDC1D0
  loc_1EEBAB5:   var_220 = "Header4"
  loc_1EEBACF:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBB1E
  loc_1EEBADD:   Proc_6_17_EAAE40(var_220)
  loc_1EEBAF9:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBB01:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBB09:   Call 0.Method_arg_38 (var_188)
  loc_1EEBB1B:   GoTo loc_1EDC1D0
  loc_1EEBB26:   var_220 = "Slogan1"
  loc_1EEBB40:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBB8F
  loc_1EEBB4E:   Proc_6_17_EAAE40(var_220)
  loc_1EEBB6A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBB72:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBB7A:   Call 0.Method_arg_38 (var_164)
  loc_1EEBB8C:   GoTo loc_1EDC1D0
  loc_1EEBB97:   var_220 = "Slogan2"
  loc_1EEBBB1:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBC00
  loc_1EEBBBF:   Proc_6_17_EAAE40(var_220)
  loc_1EEBBDB:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBBE3:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBBEB:   Call 0.Method_arg_38 (var_168)
  loc_1EEBBFD:   GoTo loc_1EDC1D0
  loc_1EEBC08:   var_220 = "SettleMode"
  loc_1EEBC22:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBC71
  loc_1EEBC30:   Proc_6_17_EAAE40(var_220)
  loc_1EEBC4C:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBC54:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBC5C:   Call 0.Method_arg_38 (CStr(Left(Trim(var_1B8), CLng(IIf((Len(Trim(var_1B8)) > 0), CVar(var_24C), 0)))))
  loc_1EEBC6E:   GoTo loc_1EDC1D0
  loc_1EEBC79:   var_220 = "SettleMode1"
  loc_1EEBC93:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBCE2
  loc_1EEBCA1:   Proc_6_17_EAAE40(var_220)
  loc_1EEBCBD:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBCC5:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBCCD:   Call 0.Method_arg_38 (CStr(Left(Trim(var_1BC), CLng(IIf((Len(Trim(var_248)) > var_294), CVar(var_24C), 0)))))
  loc_1EEBCDF:   GoTo loc_1EDC1D0
  loc_1EEBCEA:   var_220 = "Printed"
  loc_1EEBD04:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1EDBD53
  loc_1EEBD12:   Proc_6_17_EAAE40(var_220)
  loc_1EEBD2E:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBD36:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEBD3E:   Call 0.Method_arg_38 (var_C0)
  loc_1EEBD50:   GoTo loc_1EDC1D0
  loc_1EEBD64:   var_25C = Ucase("Company")
  loc_1EEBD75:   Loop Until (var_4BC = var_25C) 'do at: 1EDBDD3
  loc_1EEBD8E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEBDAA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBDB2:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEBDBA:   Call 0.Method_arg_38 (Trim(var_1D0))
  loc_1EEBDD0:   GoTo loc_1EDC1D0
  loc_1EEBDE4:   var_25C = Ucase("CompanyAdd1")
  loc_1EEBDF5:   Loop Until (var_4BC = var_25C) 'do at: 1EDBE53
  loc_1EEBE0E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEBE2A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBE32:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEBE3A:   Call 0.Method_arg_38 (Trim(var_1D4))
  loc_1EEBE50:   GoTo loc_1EDC1D0
  loc_1EEBE64:   var_25C = Ucase("CompanyAdd2")
  loc_1EEBE75:   Loop Until (var_4BC = var_25C) 'do at: 1EDBED3
  loc_1EEBE8E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEBEAA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBEB2:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEBEBA:   Call 0.Method_arg_38 (Trim(var_1D8))
  loc_1EEBED0:   GoTo loc_1EDC1D0
  loc_1EEBEE4:   var_25C = Ucase("CompanyAdd3")
  loc_1EEBEF5:   Loop Until (var_4BC = var_25C) 'do at: 1EDBF53
  loc_1EEBF0E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEBF2A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBF32:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEBF3A:   Call 0.Method_arg_38 (Trim(var_1DC))
  loc_1EEBF50:   GoTo loc_1EDC1D0
  loc_1EEBF64:   var_25C = Ucase("CompanyCity")
  loc_1EEBF75:   Loop Until (var_4BC = var_25C) 'do at: 1EDBFD3
  loc_1EEBF8E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEBFAA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEBFB2:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEBFBA:   Call 0.Method_arg_38 (Trim(var_1E0))
  loc_1EEBFD0:   GoTo loc_1EDC1D0
  loc_1EEBFE4:   var_25C = Ucase("CompanyStateCode")
  loc_1EEBFF5:   Loop Until (var_4BC = var_25C) 'do at: 1EDC053
  loc_1EEC00E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEC02A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC032:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEC03A:   Call 0.Method_arg_38 (Trim(var_1E4))
  loc_1EEC050:   GoTo loc_1EDC1D0
  loc_1EEC064:   var_25C = Ucase("CompanyState")
  loc_1EEC075:   Loop Until (var_4BC = var_25C) 'do at: 1EDC0D3
  loc_1EEC08E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEC0AA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC0B2:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEC0BA:   Call 0.Method_arg_38 (Trim(var_1E8))
  loc_1EEC0D0:   GoTo loc_1EDC1D0
  loc_1EEC0E4:   var_25C = Ucase("CompanyGSTIN")
  loc_1EEC0F5:   Loop Until (var_4BC = var_25C) 'do at: 1EDC153
  loc_1EEC10E:   Proc_6_17_EAAE40(var_25C)
  loc_1EEC12A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC132:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EEC13A:   Call 0.Method_arg_38 (Trim(var_1EC))
  loc_1EEC150:   GoTo loc_1EDC1D0
  loc_1EEC15B:   var_220 = "GrandTotal"
  loc_1EEC164:   var_25C = Ucase(var_220)
  loc_1EEC175:   Loop Until (var_4BC = var_25C) 'do at: 1EDC1D0
  loc_1EEC183:   Proc_6_47_EF6560(var_220)
  loc_1EEC18E:   Proc_6_17_EAAE40(var_25C, var_220)
  loc_1EEC196:   var_224 = CStr(var_25C)
  loc_1EEC1AA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC1B2:   Call 0.Method_arg_20 (var_224)
  loc_1EEC1BA:   Call 0.Method_arg_38 (var_104)
  loc_1EEC1D3: Next var_4AC 'Integer
  loc_1EEC1DA: var_BC = 0
  loc_1EEC1E3: var_200 = var_DC.RecordCount
  loc_1EEC1F1: Loop Until (var_200 > 0) 'do at: 1EDC97A
  loc_1EEC1F7: var_DC.MoveFirst
  loc_1EEC20B: Loop Until Not(var_DC.EOF) 'do at: 1EDC97A
  loc_1EEC234: var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EEC262: Loop Until (Ucase(var_25C) = CVar(MemVar_1F95078 & "NET")) 'do at: 1EDC452
  loc_1EEC2A5: var_22C = var_DC.Fields
  loc_1EEC2AD: var_234 = var_22C.Item("Amount")
  loc_1EEC2BC: Proc_6_39_E7D3A0(var_25C, CVar(var_234))
  loc_1EEC307: Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EEC30F: Call 0.Method_arg_24 (1, 1)
  loc_1EEC31B: For var_4C0 =  To CInt(var_200): var_BC = var_4C0 'Integer
  loc_1EEC334:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EEC33C:   Call 0.Method_arg_20 (var_234)
  loc_1EEC344:   Call 0.Method_arg_30 (var_224)
  loc_1EEC35A:   var_4D0 = Ucase(CVar(var_224)) 'Variant
  loc_1EEC370:   var_220 = "lblNetAmount"
  loc_1EEC38A:   Loop Until (var_4D0 = Ucase(var_220)) 'do at: 1EDC3D9
  loc_1EEC398:   Proc_6_17_EAAE40(var_220)
  loc_1EEC3B4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC3BC:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEC3C4:   Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EEC3D6:   GoTo loc_1EDC447
  loc_1EEC3E1:   var_220 = "NetAmount"
  loc_1EEC3FB:   Loop Until (var_4D0 = Ucase(var_220)) 'do at: 1EDC447
  loc_1EEC409:   Proc_6_17_EAAE40(var_220)
  loc_1EEC411:   var_224 = CStr(var_220)
  loc_1EEC425:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC42D:   Call 0.Method_arg_20 (var_224)
  loc_1EEC435:   Call 0.Method_arg_38 (CStr(Format(Ucase(var_220), "0.00")))
  loc_1EEC44A: Next var_4C0 'Integer
  loc_1EEC44F: GoTo loc_1EDC96F
  loc_1EEC478: var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EEC4A6: Loop Until (Ucase(var_25C) = CVar(MemVar_1F95078 & "TOT")) 'do at: 1EDC696
  loc_1EEC4E9: var_22C = var_DC.Fields
  loc_1EEC4F1: var_234 = var_22C.Item("Amount")
  loc_1EEC4F9: var_220 = CVar(var_234) 'Address
  loc_1EEC500: Proc_6_39_E7D3A0(var_25C)
  loc_1EEC54B: Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EEC553: Call 0.Method_arg_24 (1, 1)
  loc_1EEC55F: For var_4D4 =  To CInt(var_200): var_220 = var_4D4 'Integer
  loc_1EEC578:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EEC580:   Call 0.Method_arg_20 (var_234)
  loc_1EEC588:   Call 0.Method_arg_30 (var_224)
  loc_1EEC59E:   var_4E4 = Ucase(CVar(var_224)) 'Variant
  loc_1EEC5B4:   var_220 = "lblTotal"
  loc_1EEC5CE:   Loop Until (var_4E4 = Ucase(var_220)) 'do at: 1EDC61D
  loc_1EEC5DC:   Proc_6_17_EAAE40(var_220)
  loc_1EEC5F8:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC600:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEC608:   Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EEC61A:   GoTo loc_1EDC68B
  loc_1EEC625:   var_220 = "Total"
  loc_1EEC62E:   var_25C = Ucase(var_220)
  loc_1EEC63F:   Loop Until (var_4E4 = var_25C) 'do at: 1EDC68B
  loc_1EEC64D:   Proc_6_17_EAAE40(var_220)
  loc_1EEC655:   var_224 = CStr(var_220)
  loc_1EEC669:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC671:   Call 0.Method_arg_20 (var_224)
  loc_1EEC679:   Call 0.Method_arg_38 (CStr(Format(var_25C, "0.00")))
  loc_1EEC68E: Next var_4D4 'Integer
  loc_1EEC693: GoTo loc_1EDC96F
  loc_1EEC6E6: var_220 = CVar(var_DC.Fields.Item("SValue")) 'Address
  loc_1EEC6ED: Proc_6_39_E7D3A0(var_25C)
  loc_1EEC736: var_22C = var_DC.Fields
  loc_1EEC73E: var_234 = var_22C.Item("Amount")
  loc_1EEC746: var_220 = CVar(var_234) 'Address
  loc_1EEC74D: Proc_6_39_E7D3A0(var_25C, var_220, 1)
  loc_1EEC78D: var_BC = (var_BC + 1)
  loc_1EEC7A1: Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1, var_BC)
  loc_1EEC7A9: Call 0.Method_arg_24 (1, 1)
  loc_1EEC7B5: For var_4E8 = var_220 To CInt(var_200): 1 = var_4E8 'Integer
  loc_1EEC7CE:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC7D6:   Call 0.Method_arg_20 (var_224)
  loc_1EEC7DE:   Call 0.Method_arg_30 (var_220)
  loc_1EEC7F4:   var_4F8 = Ucase(CVar(var_224)) 'Variant
  loc_1EEC811:   var_220 = CVar("lblSunName" & CStr(var_BC)) 'String
  loc_1EEC82B:   Loop Until (var_4F8 = Ucase(var_220)) 'do at: 1EDC87A
  loc_1EEC839:   Proc_6_17_EAAE40(var_220)
  loc_1EEC855:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC85D:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEC865:   Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EEC877:   GoTo loc_1EDC967
  loc_1EEC889:   var_220 = CVar("SunPer" & CStr(var_BC)) 'String
  loc_1EEC8A3:   Loop Until (var_4F8 = Ucase(var_220)) 'do at: 1EDC8F2
  loc_1EEC8B1:   Proc_6_17_EAAE40(var_220)
  loc_1EEC8CD:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC8D5:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEC8DD:   Call 0.Method_arg_38 (CStr(Format(Ucase(var_220), "0.00")))
  loc_1EEC8EF:   GoTo loc_1EDC967
  loc_1EEC901:   var_220 = CVar("SunAmt" & CStr(var_BC)) 'String
  loc_1EEC91B:   Loop Until (var_4F8 = Ucase(var_220)) 'do at: 1EDC967
  loc_1EEC929:   Proc_6_17_EAAE40(var_220)
  loc_1EEC931:   var_224 = CStr(var_220)
  loc_1EEC945:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEC94D:   Call 0.Method_arg_20 (var_224)
  loc_1EEC955:   Call 0.Method_arg_38 (CStr(Format(Ucase(var_220), "0.00")))
  loc_1EEC96A: Next var_4E8 'Integer
  loc_1EEC972: var_DC.MoveNext
  loc_1EEC977: GoTo loc_1EDC1FC
  loc_1EEC980: var_200 = var_13C.RecordCount
  loc_1EEC98E: Loop Until (var_200 > 0) 'do at: 1EDCC4D
  loc_1EEC994: var_13C.MoveFirst
  loc_1EEC9A8: Loop Until Not(var_13C.EOF) 'do at: 1EDCC4D
  loc_1EEC9BC: Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EEC9C4: Call 0.Method_arg_24 (var_BA)
  loc_1EEC9D0: For var_4FC =  To CInt(var_200): 1 = var_4FC 'Integer
  loc_1EEC9FC:   var_25C = Ucase(CVar(var_13C.Fields.Item("SunName")))
  loc_1EECA17:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EECA1F:   Call 0.Method_arg_20 (var_224)
  loc_1EECA27:   Call 0.Method_arg_30 (var_25C)
  loc_1EECA53:   Loop Until ( = Ucase(CVar(var_224))) 'do at: 1EDCC3A
  loc_1EECA7C:   Proc_6_17_EAAE40(var_25C)
  loc_1EECA84:   var_224 = CStr(var_25C)
  loc_1EECA98:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EECAA0:   Call 0.Method_arg_20 (var_224)
  loc_1EECAA8:   Call 0.Method_arg_38 (CVar(var_13C.Fields.Item("SunAmount")))
  loc_1EECACF:   var_22C = var_13C.Fields
  loc_1EECAD7:   var_234 = var_22C.Item("SunName")
  loc_1EECB14:   Loop Until (Ucase(CVar(var_234)) = Ucase("Discount")) 'do at: 1EDCC37
  loc_1EECB28:   Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EECB30:   Call 0.Method_arg_24 (var_BC)
  loc_1EECB3C:   For var_500 =  To CInt(var_200): 1 = var_500 'Integer
  loc_1EECB55:     Call 0.Method_arg_90 (var_22C, CLng(var_BC))
  loc_1EECB5D:     Call 0.Method_arg_20 (var_234)
  loc_1EECB65:     Call 0.Method_arg_30 (var_224)
  loc_1EECB80:     var_26C = "DiscPer"
  loc_1EECB89:     var_27C = Ucase(var_26C)
  loc_1EECBA5:     Loop Until (Ucase(CVar(var_224)) = var_27C) 'do at: 1EDCC2F
  loc_1EECBBA:     var_22C = var_13C.Fields
  loc_1EECBC2:     var_234 = var_22C.Item("SunPer")
  loc_1EECBD3:     var_224 = CStr(var_234.Value)
  loc_1EECBE3:     Proc_6_17_EAAE40(var_26C)
  loc_1EECBFF:     Call 0.Method_arg_90 (var_238, CLng(var_BC), var_24C)
  loc_1EECC07:     Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EECC0F:     Call 0.Method_arg_38 (CVar(CStr(Val(var_224))))
  loc_1EECC32:   Next var_500 'Integer
  loc_1EECC37:   GoTo loc_1EDCC42
  loc_1EECC3D: Next var_4FC 'Integer
  loc_1EECC45: var_13C.MoveNext
  loc_1EECC4A: GoTo loc_1EDC999
  loc_1EECC53: var_200 = var_1B0.RecordCount
  loc_1EECC61: Loop Until (var_200 > 0) 'do at: 1EDCFFF
  loc_1EECC66: var_BC = 1
  loc_1EECC6C: var_1B0.MoveFirst
  loc_1EECC80: Loop Until Not(var_1B0.EOF) 'do at: 1EDCFFF
  loc_1EECC94: Call 0.Method_arg_90 (var_22C, var_200, var_BA)
  loc_1EECC9C: Call 0.Method_arg_24 (1)
  loc_1EECCA8: For var_504 =  To CInt(var_200): var_BC = var_504 'Integer
  loc_1EECCC1:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EECCC9:   Call 0.Method_arg_20 (var_234)
  loc_1EECCD1:   Call 0.Method_arg_30 (var_224)
  loc_1EECCE7:   var_514 = Ucase(CVar(var_224)) 'Variant
  loc_1EECD1E:   Loop Until (var_514 = Ucase(CVar("STName" & CStr(var_BC)))) 'do at: 1EDCD98
  loc_1EECD4F:   Proc_6_17_EAAE40(var_26C)
  loc_1EECD6B:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EECD73:   Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EECD7B:   Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_1B0.Fields.Item("TaxName")))))
  loc_1EECD95:   GoTo loc_1EDCFE3
  loc_1EECDAD:   var_25C = Ucase(CVar("STPer" & CStr(var_BC)))
  loc_1EECDC1:   Loop Until (var_514 = var_25C) 'do at: 1EDCE52
  loc_1EECDEA:   Proc_6_39_E7D3A0(var_25C)
  loc_1EECE01:   Proc_6_17_EAAE40(var_27C, CVar(CStr(var_25C) & ") 'String)
  loc_1EECE1D:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EECE25:   Call 0.Method_arg_20 (CStr(var_27C))
  loc_1EECE2D:   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxPer")))
  loc_1EECE4F:   GoTo loc_1EDCFE3
  loc_1EECE67:   var_25C = Ucase(CVar("STAmt" & CStr(var_BC)))
  loc_1EECE7B:   Loop Until (var_514 = var_25C) 'do at: 1EDCF1C
  loc_1EECEA4:   Proc_6_39_E7D3A0(var_25C)
  loc_1EECECF:   Proc_6_17_EAAE40(var_2A4, Format(var_25C, "0.00"), 1)
  loc_1EECEEB:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EECEF3:   Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EECEFB:   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxAmt")))
  loc_1EECF19:   GoTo loc_1EDCFE3
  loc_1EECF31:   var_25C = Ucase(CVar("STAbleAmt" & CStr(var_BC)))
  loc_1EECF45:   Loop Until (var_514 = var_25C) 'do at: 1EDCFE3
  loc_1EECF6E:   Proc_6_39_E7D3A0(var_25C)
  loc_1EECF8E:   var_27C = Format(var_25C, "0.00")
  loc_1EECF99:   Proc_6_17_EAAE40(var_2A4, var_27C, 1)
  loc_1EECFB5:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EECFBD:   Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EECFC5:   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxableAmt")))
  loc_1EECFE6: Next var_504 'Integer
  loc_1EECFF1: var_BC = (var_BC + 1)
  loc_1EECFF7: var_1B0.MoveNext
  loc_1EECFFC: GoTo loc_1EDCC71
  loc_1EED029: var_25C = CVar(Proc_6_38_E69628(CVar(MemVar_629D24.Fields.Item("Printer")))) 'String
  loc_1EED02F: var_26C = Ucase(var_25C)
  loc_1EED04B: Loop Until CBool(var_26C <> "PRN") 'do at: 1EDD08A
  loc_1EED07C: Proc_96_98_F10508(Proc_6_38_E69628(CVar(MemVar_629D24.Fields.Item("Printer"))))
  loc_1EED0B0: Proc_6_39_E7D3A0(var_25C, CVar(var_134.Fields.Item("NoOfBill")))
  loc_1EED0CA: Loop Until (var_25C <= 0) 'do at: 1EDD116
  loc_1EED0D2: Set var_234 = Nothing
  loc_1EED0EE: Set var_22C = MemVar_1F951E8 
  loc_1EED0FA: Proc_6_99_1484404(var_22C, 0, vbNullString)
  loc_1EED105: MemVar_1F951E8 = var_22C
  loc_1EED113: GoTo loc_1EDD16B
  loc_1EED12D: var_234 = var_134.Fields.Item("NoOfBill")
  loc_1EED13C: Proc_6_39_E7D3A0(var_25C, CVar(var_234), &HFF)
  loc_1EED15C: Call 0.Method_Me8 (False, var_25C, var_294, var_2D4)
  loc_1EED170: Set var_C8 = Nothing
  loc_1EED178: Set var_13C = Nothing
  loc_1EED180: MemVar_1F951E8 = Nothing
  loc_1EED187: var_C4.MoveNext
  loc_1EED18C: GoTo loc_1EE6EE9
  loc_1EED192: var_F8.MoveNext
  loc_1EED197: GoTo loc_1EE6B87
  loc_1EED19A: GoTo loc_1EDD1C6
  loc_1EED1B6: MsgBox("Printer & Bill Type Not Defined ", &H40, var_25C, var_26C, var_27C)
  loc_1EED1CB: Set var_C4 = Nothing
  loc_1EED1D3: Set var_C8 = Nothing
  loc_1EED1DB: Set var_13C = Nothing
  loc_1EED1E3: Set var_1B0 = Nothing
  loc_1EED1EB: Set var_1B4 = Nothing
  loc_1EED1F3: Set var_D8 = Nothing
  loc_1EED1FB: Set var_DC = Nothing
  loc_1EED203: Set var_134 = Nothing
  loc_1EED20B: Set var_D0 = Nothing
  loc_1EED213: Set var_D4 = Nothing
  loc_1EED21B: Set var_1B0 = Nothing
  loc_1EED21E: Exit Sub
  loc_1EED21F: Proc_6_60_E63754(var_2E4, var_234)
  loc_1EED224: Exit Sub
End Sub

Public Sub Proc_260_15_181EAA0
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_108 As String
  Dim var_10C As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_138 As Variant
  Dim var_120 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_150 As String
  Dim var_C4 As Recordset15
  Dim var_BA As Integer
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_C8 As Recordset15
  Dim var_13C As Fields15
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_240 As Variant
  Dim var_2D0 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2F8 As Variant
  Dim var_9E As Integer
  Dim var_190 As Variant
  Dim var_1E8 As Variant
  Dim var_278 As Variant
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_11C As Variant
  Dim var_CC As Recordset15
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_4DC As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  loc_181C7C7: MemVar_629D24.Filter = "ModType='POS'"
  loc_181C7E2: If (MemVar_629D24.RecordCount > 0) Then
  loc_181C7E8:   MemVar_1F953C4 = "N"
  loc_181C7EF:   MemVar_1F953C8 = "N"
  loc_181C7F6:   MemVar_1F953CC = "K"
  loc_181C820:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_181C82B:   Set var_EC = var_120
  loc_181C844:   var_108 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_181C84B:   var_8C = var_108 & "'"
  loc_181C858:   var_108 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_181C868:   var_90 = var_108 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_181C889:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_181C89A:   var_108 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_181C8AA:   var_98 = var_108 & Me(12) & "' ORDER BY I.Kitchen"
  loc_181C8BC:   If (var_8C = vbNullString) Then
  loc_181C8BF:     Exit Sub
  loc_181C8C0:   End If
  loc_181C8C8:   If (var_90 = vbNullString) Then
  loc_181C8CB:     Exit Sub
  loc_181C8CC:   End If
  loc_181C8D4:   If (var_94 = vbNullString) Then
  loc_181C8D7:     Exit Sub
  loc_181C8D8:   End If
  loc_181C8EE:   unk_43FED1.Execute var_8C, var_11C, -1
  loc_181C8F9:   Set var_C0 = var_120
  loc_181C918:   unk_43FED1.Execute var_90, var_11C, -1
  loc_181C923:   Set var_CC = var_120
  loc_181C942:   unk_43FED1.Execute var_94, var_11C, -1
  loc_181C94D:   Set var_D0 = var_120
  loc_181C96C:   unk_43FED1.Execute var_98, var_11C, -1
  loc_181C977:   Set var_C4 = var_120
  loc_181C982:   Close 1
  loc_181C98B:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_181C98F:   ' Referenced from: 181E98B
  loc_181C99E:   If Not(var_C0.EOF) Then
  loc_181C9A9:     var_11C = Space(&H41)
  loc_181C9CF:     var_DC = Replace(CStr(var_11C), " ", "-", 1, -1, 0)
  loc_181C9DB:     var_138 = 0
  loc_181CA0A:     unk_43FED1.Execute "SELECT TOKENPrint FROM Depart where Code='" & Me(8) & "'", var_11C, -1
  loc_181CA1A:     var_138 = var_128.Item(var_128)
  loc_181CA4A:     If (Proc_6_38_E69628(CVar(var_13C), var_13C, var_120.Fields, var_120.Fields) = "Yes") Then
  loc_181CA61:       If (var_C4.RecordCount > 0) Then
  loc_181CA64:         ' Referenced from: 181D05A
  loc_181CA73:         If Not(var_C4.EOF) Then
  loc_181CA78:           var_BA = 1
  loc_181CA8F:           var_108 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_181CAD5:           var_170 = CVar(var_108 & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_181CAE3:           unk_43FED1.Execute CStr(var_170), var_190, -1
  loc_181CAEE:           Set var_C8 = var_13C
  loc_181CB24:           If (var_C8.RecordCount > 0) Then
  loc_181CB74:             Print 1, Proc_260_1_10A4640(CStr(var_C4.Fields.Item("Department").Value), "D", &H3C, var_13C)
  loc_181CBAB:             var_120 = var_C0.Fields
  loc_181CBED:             Proc_6_39_E7D3A0(var_190, CVar(var_C0.Fields.Item("VNo")))
  loc_181CC23:             var_300 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_120.Item("vType")), var_BA, var_120) & "/" & MemVar_1F95168 & "/") & var_190), &H10)
  loc_181CCC6:             var_14C = (Chr(&HF) + "Bill No.   : ")
  loc_181CCD0:             var_1D8 = (CVar(Proc_6_38_E69628(CVar(var_120.Item("vType")), var_BA, var_120) & Me(12) & "' AND I.Kitchen='") + CVar(var_300))
  loc_181CCD7:             var_1F8 = (var_1D8 + Space(1))
  loc_181CCE0:             var_218 = (var_1F8 + "Dt : ")
  loc_181CCEA:             var_268 = (var_218 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_120), &HF)))
  loc_181CCF1:             var_288 = (var_268 + Space(4))
  loc_181CCFA:             var_2A8 = (var_288 + "Time : ")
  loc_181CD04:             var_2F8 = (var_2A8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_181CD0A:             Print 1, var_2F8
  loc_181CD69:             var_9E = (var_9E + 1)
  loc_181CDDE:             var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_181CDE5:             var_190 = (CVar(var_120.Item("vType")) + Space(1))
  loc_181CDEF:             var_1B8 = (var_190 + CVar(Proc_6_45_EADFB8("PARTICULARS", &H28)))
  loc_181CDF6:             var_1D8 = (CVar(Proc_6_38_E69628(CVar(var_120.Item("vType")), var_BA, var_120) & "/" & MemVar_1F95168 & "/") & var_190 + Space(1))
  loc_181CE00:             var_1F8 = (var_1D8 + CVar(Proc_6_52_EAE084("Qty", &H12)))
  loc_181CE06:             Print 1, var_1F8
  loc_181CE4A:             var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181CE50:             Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_181CE5D:             ' Referenced from: 181CFD4
  loc_181CE6C:             If Not(var_C8.EOF) Then
  loc_181CF0E:               Proc_6_39_E7D3A0(var_218, CVar(var_C8.Fields.Item("qty")))
  loc_181CF51:               var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3)))
  loc_181CF58:               var_190 = (CVar(var_C8.Fields.Item("vType")) + Space(1))
  loc_181CF62:               var_1C8 = (var_190 + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H28)))
  loc_181CF69:               var_1E8 = (Space(1) + Space(1))
  loc_181CF73:               var_278 = (CVar(Proc_6_52_EAE084("Qty", &H12)) + CVar(Proc_6_52_EAE084(CStr(Format(var_218, "0.00")), &H12, 1)))
  loc_181CF79:               Print 1, Space(4)
  loc_181CFBD:               var_C8.MoveNext
  loc_181CFC8:               var_9E = (var_9E + 1)
  loc_181CFD1:               var_BA = (var_BA + 1)
  loc_181CFD4:               GoTo loc_181CE5D
  loc_181CFD7:             End If
  loc_181CFD7:           End If
  loc_181CFDA:           var_C4.MoveNext
  loc_181CFE4:           Print 1, vbNullString
  loc_181D025:           var_10C = Replace(CStr(Space(&H41)), " ", "=", 1, -1, 0)
  loc_181D031:           var_170 = (Chr(&HF) + CVar("PARTICULARS"))
  loc_181D037:           Print 1, Space(1)
  loc_181D054:           Print 1, vbNullString
  loc_181D05A:           GoTo loc_181CA64
  loc_181D05D:         End If
  loc_181D05D:       End If
  loc_181D05D:     End If
  loc_181D05F:     var_9E = 0
  loc_181D064:     var_A0 = 1
  loc_181D0BF:     var_10C = Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_A0, var_9E, var_BA) = "Restaurant"), var_9E)
  loc_181D0DD:     If (1 Or (var_10C = "Hall")) Then
  loc_181D0EE:       var_9C = "** " & "BILL" & " **"
  loc_181D0F7:     Else
  loc_181D12D:       var_9C = var_9E & Proc_6_38_E69628(CVar(var_EC.Fields.Item("Name")), "** ") & " **"
  loc_181D13D:     End If
  loc_181D143:     If (var_9E = 0) Then
  loc_181D1B8:       var_190 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)))
  loc_181D1BF:       var_1B8 = (var_190 + Chr(&H12))
  loc_181D1C5:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H28))
  loc_181D1F2:       var_9E = (var_9E + 1)
  loc_181D216:       Print 1, Proc_260_1_10A4640(var_9C, "D", &H3C)
  loc_181D22A:       Print 1, vbNullString
  loc_181D236:       var_9E = (var_9E + 1)
  loc_181D267:       var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_181D29E:       var_E0 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_181D2F5:       var_150 = Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)), &H1E)
  loc_181D2FE:       var_160 = (Chr(&H11) + Space(&H14))
  loc_181D307:       var_170 = (vbNullString & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_181D30E:       var_190 = CVar(var_150) 'String
  loc_181D311:       var_1A8 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)) + var_190)
  loc_181D317:       Print 1, Chr(&H12)
  loc_181D33B:       var_9E = (var_9E + 1)
  loc_181D343:       Print 1, vbNullString
  loc_181D34F:       var_9E = (var_9E + 1)
  loc_181D357:       Print 1, vbNullString
  loc_181D363:       var_9E = (var_9E + 1)
  loc_181D39B:       var_2FC = Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), Proc_260_2_136F49C(var_A0, var_9E, &H3C), Proc_260_2_136F49C(var_A0, var_9E, &H3C))
  loc_181D3C4:       Proc_6_39_E7D3A0(var_190, CVar(var_C0.Fields.Item("VNo")), Proc_260_2_136F49C(var_A0, var_9E, &H3C))
  loc_181D446:       var_308 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)), &HF)
  loc_181D49D:       var_14C = (Chr(&HF) + "Bill No.   : ")
  loc_181D4A7:       var_1D8 = (Space(&H14) + CVar(Proc_6_45_EADFB8(CStr(CVar(var_2FC & "/" & MemVar_1F95168 & "/") & var_190), &H10)))
  loc_181D4AE:       var_1F8 = (Space(1) + Space(1))
  loc_181D4B7:       var_218 = (CVar(var_C8.Fields.Item("qty")) + "Dt : ")
  loc_181D4C1:       var_268 = (var_218 + CVar(var_308))
  loc_181D4C8:       var_288 = (CVar(Proc_6_52_EAE084(CStr(Format(var_218, "0.00")), &H12, 1)) + Space(4))
  loc_181D4D1:       var_2A8 = (var_288 + "Time : ")
  loc_181D4DB:       var_2F8 = (var_2A8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_181D4E1:       Print 1, var_2F8
  loc_181D540:       var_9E = (var_9E + 1)
  loc_181D57C:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)) = "Outlet") Then
  loc_181D5D3:         var_14C = (Chr(&HF) + "Table No.  : ")
  loc_181D5DD:         var_190 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_181D5E3:         Print 1, var_190
  loc_181D608:         var_9E = (var_9E + 1)
  loc_181D60B:       End If
  loc_181D644:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)) = "Room Service") Then
  loc_181D69B:         var_14C = (Chr(&HF) + "Room No.   : ")
  loc_181D6A5:         var_190 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_181D6AB:         Print 1, var_190
  loc_181D6D0:         var_9E = (var_9E + 1)
  loc_181D6D3:       End If
  loc_181D70C:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)) = "Hall") Then
  loc_181D763:         var_14C = (Chr(&HF) + "Hall  No.  : ")
  loc_181D76D:         var_190 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_181D773:         Print 1, var_190
  loc_181D798:         var_9E = (var_9E + 1)
  loc_181D79B:       End If
  loc_181D81B:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_181D867:         var_150 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)), &H34)
  loc_181D872:         var_14C = (Chr(&HF) + "KOT No.    : ")
  loc_181D87C:         var_190 = (Space(&H14) + CVar(var_150))
  loc_181D882:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_181D8A7:         var_9E = (var_9E + 1)
  loc_181D8AA:       End If
  loc_181D8C0:       var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181D8C6:       Print 1, Space(&H14)
  loc_181D8D9:       var_9E = (var_9E + 1)
  loc_181D8DC:     End If
  loc_181D902:     var_160 = (CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C))) + Space(1))
  loc_181D91C:     var_190 = (Proc_260_2_136F49C(var_A0, var_9E, &H3C) + CVar(Proc_6_45_EADFB8("ITEM NAME", &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_181D930:     var_1B8 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_181D94A:     var_1D8 = (CVar(var_2FC & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAE084("Tax, 6)) 'String)
  loc_181D956:     var_1E8 = Space(1)
  loc_181D95E:     var_1F8 = (Space(1) + var_1E8)
  loc_181D978:     var_240 = (CVar(var_C8.Fields.Item("qty")) + CVar(Proc_6_52_EAE084("Rate", &HA)))
  loc_181D98C:     var_268 = (CVar(var_C0.Fields.Item("VDate")) + Space(1))
  loc_181D9A6:     var_288 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Rate", &HA)), "0.00")), &H12, 1)) + CVar(Proc_6_52_EAE084("Qty", &HA)))
  loc_181D9B2:     var_2A8 = Space(1)
  loc_181D9BA:     var_2D0 = (var_288 + var_2A8)
  loc_181D9D4:     var_2F8 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_181D9D9:     var_B8 = CStr(var_2F8)
  loc_181DA2E:     var_14C = (Chr(&HF) + CVar(var_B8))
  loc_181DA34:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)))
  loc_181DA57:     var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181DA5D:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)))
  loc_181DA70:     var_9E = (var_9E + 1)
  loc_181DA75:     var_BA = 1
  loc_181DA7B:     var_CC.MoveFirst
  loc_181DA80:     ' Referenced from: 181DFA4
  loc_181DA8F:     If Not(var_CC.EOF) Then
  loc_181DADF:       Proc_6_39_E7D3A0(var_1E8, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_181DB2A:       Proc_6_39_E7D3A0(var_2A8, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_181DB75:       Proc_6_39_E7D3A0(var_368, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_181DBC0:       Proc_6_39_E7D3A0(var_400, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_181DC01:       Proc_6_39_E7D3A0(var_458, CVar(var_CC.Fields.Item("Amt")))
  loc_181DC4C:       var_160 = (CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)) + Space(1))
  loc_181DC65:       var_1A8 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_181DC79:       var_1C8 = (Space(1) + Space(1))
  loc_181DC92:       var_258 = (Proc_260_2_136F49C(var_A0, var_9E, &H3C) + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), 6, CVar(Proc_6_52_EAE084("Tax, 6)) 'String)) 'String)
  loc_181DCA6:       var_278 = (Space(1) + Space(1))
  loc_181DCBF:       var_328 = (CVar(Proc_6_52_EAE084("Qty", &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2A8, "0.00")), &HA)))
  loc_181DCD3:       var_348 = (var_328 + Space(1))
  loc_181DCEC:       var_3A8 = (var_348 + CVar(Proc_6_52_EAE084(CStr(Format(var_368, "0.00")), &HA)))
  loc_181DD00:       var_3C8 = (var_3A8 + Space(1))
  loc_181DD3E:       var_4DC = (var_3C8 + IIf((var_400 = 0), CVar(Proc_6_45_EADFB8("Free", &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_458, "0.00")), &HA))))
  loc_181DDD9:       var_14C = (Chr(&HF) + CVar(CStr(var_4DC)))
  loc_181DDDF:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_181DDF6:       If (Proc_260_2_136F49C(var_A0, var_9E, &H3C) = (&H45 - var_B2)) Then
  loc_181DE0F:         var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181DE15:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_181DE28:         var_9E = (var_9E + 1)
  loc_181DE30:         Print 1, "Contd."
  loc_181DE3C:         var_9E = (var_9E + 1)
  loc_181DE51:         Print 1, Chr(&HC)
  loc_181DE60:         var_9E = (var_9E + 1)
  loc_181DE69:         var_A0 = (var_A0 + 1)
  loc_181DE6E:         var_9E = 0
  loc_181DEA0:         var_10C = Proc_260_1_10A4640(var_9C, "B", &H3C, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), &H3C, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), var_A0))
  loc_181DEA5:         Print 1, var_10C
  loc_181DEBA:         var_9E = (var_9E + 1)
  loc_181DED3:         var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181DED9:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_181DEEC:         var_9E = (var_9E + 1)
  loc_181DF05:         var_14C = (Chr(&HF) + CVar(var_B8))
  loc_181DF0B:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_181DF2E:         var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181DF34:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_181DF47:         var_9E = (var_9E + 1)
  loc_181DF4A:       End If
  loc_181DF77:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181DF7F:       var_160 = (Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)))
  loc_181DF84:       var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_181DF99:       var_BA = (var_BA + 1)
  loc_181DF9F:       var_CC.MoveNext
  loc_181DFA4:       GoTo loc_181DA80
  loc_181DFA7:     End If
  loc_181DFC7:     var_160 = (Chr(&HF) + Space(&H35))
  loc_181DFD1:     var_170 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_181DFD7:     Print 1, var_CC.Fields.Item("ItemName").Value
  loc_181DFEE:     var_9E = (var_9E + 1)
  loc_181DFF4:     var_D0.MoveFirst
  loc_181DFF9:     ' Referenced from: 181E516
  loc_181E008:     If Not(var_D0.EOF) Then
  loc_181E035:       var_4EC = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_181E053:       If (var_4EC = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_181E0A9:         var_150 = Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), var_BA, var_D8)
  loc_181E0DF:         Proc_6_39_E7D3A0(var_1E8, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181E12C:         var_160 = (Chr(&HF) + Space(&H23))
  loc_181E136:         var_1A8 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_150))
  loc_181E13D:         var_1C8 = (Space(1) + Space(4))
  loc_181E147:         var_258 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), &HA, 1, 1)))
  loc_181E14E:         var_278 = (Space(1) + Chr(&H12))
  loc_181E154:         Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_181E197:         var_9E = (var_9E + 1)
  loc_181E19D:       Else
  loc_181E1B0:         If (var_4EC = CVar(MemVar_1F95078 & "NET")) Then
  loc_181E1C8:           var_14C = Space(&H35)
  loc_181E1D3:           var_160 = (Chr(&HF) + var_14C)
  loc_181E1DD:           var_170 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_181E1E3:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_181E1FA:           var_9E = (var_9E + 1)
  loc_181E223:           Proc_6_39_E7D3A0(var_14C, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181E23D:           If (var_14C > 0) Then
  loc_181E255:             var_14C = Space(&H23)
  loc_181E293:             var_150 = Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181E2C9:             Proc_6_39_E7D3A0(var_1E8, CVar(var_D0.Fields.Item("Amount")))
  loc_181E316:             var_160 = (Chr(&HF) + var_14C)
  loc_181E320:             var_1A8 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_150))
  loc_181E327:             var_1C8 = (Space(1) + Space(4))
  loc_181E331:             var_258 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_181E338:             var_278 = (Space(1) + Chr(&H12))
  loc_181E33E:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_181E381:             var_9E = (var_9E + 1)
  loc_181E384:           End If
  loc_181E387:         Else
  loc_181E3AD:           Proc_6_39_E7D3A0(var_14C, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181E3C7:           If (var_14C > 0) Then
  loc_181E453:             Proc_6_39_E7D3A0(var_1E8, CVar(var_D0.Fields.Item("Amount")))
  loc_181E4A0:             var_160 = (Chr(&HF) + Space(&H23))
  loc_181E4AA:             var_1A8 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1)))
  loc_181E4B1:             var_1C8 = (Space(1) + Space(4))
  loc_181E4BB:             var_258 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_181E4C2:             var_278 = (Space(1) + Chr(&H12))
  loc_181E4C8:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_181E50B:             var_9E = (var_9E + 1)
  loc_181E50E:           End If
  loc_181E50E:         End If
  loc_181E50E:       End If
  loc_181E511:       var_D0.MoveNext
  loc_181E516:       GoTo loc_181DFF9
  loc_181E519:     End If
  loc_181E52F:     var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181E535:     Print 1, Space(&H23)
  loc_181E548:     var_9E = (var_9E + 1)
  loc_181E587:     If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_181E5BF:       var_10C = Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181E5DE:       var_14C = (Chr(&HF) + "Steward Name  : ")
  loc_181E5E8:       var_190 = (Space(&H23) + CVar(Proc_6_45_EADFB8(var_10C, &H14, 1)))
  loc_181E5EE:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_181E613:       var_9E = (var_9E + 1)
  loc_181E616:     End If
  loc_181E61E:     var_11C = Chr(&HF)
  loc_181E632:     var_120 = var_C0.Fields
  loc_181E65F:     var_150 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0)), &HA)
  loc_181E66A:     var_14C = (var_11C + "User Name     : ")
  loc_181E674:     var_190 = (Space(&H23) + CVar(var_150))
  loc_181E67A:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_181E69F:     var_9E = (var_9E + 1)
  loc_181E6A7:     Print 1, vbNullString
  loc_181E6B3:     var_9E = (var_9E + 1)
  loc_181E6DC:     unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_181E6E7:     Set var_F0 = var_120
  loc_181E70B:     If (var_F0.RecordCount > 0) Then
  loc_181E74E:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_181E759:         var_11C = Chr(&HF)
  loc_181E76D:         var_120 = var_F0.Fields
  loc_181E78F:         var_170 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_181E795:         Print 1, CVar(var_150)
  loc_181E7AF:         var_9E = (var_9E + 1)
  loc_181E7B2:       End If
  loc_181E7B2:     End If
  loc_181E7D8:     unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_181E7E3:     Set var_F0 = var_120
  loc_181E807:     If (var_F0.RecordCount > 0) Then
  loc_181E84A:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_181E88B:         var_170 = (Chr(&HF) + Trim(CVar(var_F0.Fields.Item("Slogan2"))))
  loc_181E891:         Print 1, CVar(var_150)
  loc_181E8AB:         var_9E = (var_9E + 1)
  loc_181E8AE:       End If
  loc_181E8AE:     End If
  loc_181E8B3:     Set var_F0 = Nothing
  loc_181E8D6:     var_160 = (Chr(&HF) + Space(&H32))
  loc_181E8DF:     var_170 = (Trim(CVar(var_F0.Fields.Item("Slogan2"))) + "Guest Signature")
  loc_181E8E5:     Print 1, CVar(var_150)
  loc_181E8FC:     var_9E = (var_9E + 1)
  loc_181E904:     Print 1, vbNullString
  loc_181E910:     var_9E = (var_9E + 1)
  loc_181E928:     var_14C = (Chr(&HF) + "# ")
  loc_181E932:     var_160 = Space(&H32) & CVar(MemVar_1F95220) 
  loc_181E93B:     var_170 = var_160 & " # " 
  loc_181E941:     Print 1, var_170
  loc_181E958:     var_9E = (var_9E + 1)
  loc_181E95E:     var_C0.MoveNext
  loc_181E968:     Print 1, vbNullString
  loc_181E974:     var_9E = (var_9E + 1)
  loc_181E97C:     Print 1, vbNullString
  loc_181E988:     var_9E = (var_9E + 1)
  loc_181E98B:     GoTo loc_181C98F
  loc_181E98E:   End If
  loc_181E990:   Close 1
  loc_181E999:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_181E9CE:   var_14C = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_181E9D4:   Print 1, var_14C
  loc_181E9EA:   Close 1
  loc_181E9F4:   If (MemVar_1F953BC = "Y") Then
  loc_181EA10:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_181EA1A:   Else
  loc_181EA33:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_181EA3A:   End If
  loc_181EA3F:   Set var_C0 = Nothing
  loc_181EA47:   Set var_CC = Nothing
  loc_181EA4F:   Set var_D0 = Nothing
  loc_181EA57:   Set var_EC = Nothing
  loc_181EA5F:   Set var_C4 = Nothing
  loc_181EA67:   Set var_C8 = Nothing
  loc_181EA6D: Else
  loc_181EA86:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_14C, var_160, var_170)
  loc_181EA96: End If
  loc_181EA96: Exit Sub
  loc_181EA97: Proc_6_60_E63754(Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181EA9C: Exit Sub
End Sub

Public Sub Proc_260_16_18CB6D4
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_13C As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_154 As String
  Dim var_C4 As Recordset15
  Dim var_BA As Integer
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C8 As Recordset15
  Dim var_140 As Fields15
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_244 As Variant
  Dim var_2D4 As Variant
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_9E As Integer
  Dim var_194 As Variant
  Dim var_1EC As Variant
  Dim var_27C As Variant
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_120 As Variant
  Dim var_CC As Recordset15
  Dim var_32C As Variant
  Dim var_34C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_4E0 As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  Dim var_F4 As Recordset15
  loc_18C8F10: On Error Goto loc_18CB6CB
  loc_18C8F1E: MemVar_629D24.Filter = "ModType='POS'"
  loc_18C8F39: If (MemVar_629D24.RecordCount > 0) Then
  loc_18C8F3F:   MemVar_1F953C4 = "N"
  loc_18C8F46:   MemVar_1F953C8 = "N"
  loc_18C8F4D:   MemVar_1F953CC = "K"
  loc_18C8F77:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_120, -1
  loc_18C8F82:   Set var_EC = var_124
  loc_18C8F9B:   var_10C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_18C8FA2:   var_8C = var_10C & "'"
  loc_18C8FAF:   var_10C = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_18C8FBF:   var_90 = var_10C & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_18C8FE0:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT,ST.SValue From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_18C8FF1:   var_10C = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_18C9001:   var_98 = var_10C & Me(12) & "' ORDER BY I.Kitchen"
  loc_18C9013:   If (var_8C = vbNullString) Then
  loc_18C9016:     Exit Sub
  loc_18C9017:   End If
  loc_18C901F:   If (var_90 = vbNullString) Then
  loc_18C9022:     Exit Sub
  loc_18C9023:   End If
  loc_18C902B:   If (var_94 = vbNullString) Then
  loc_18C902E:     Exit Sub
  loc_18C902F:   End If
  loc_18C9045:   unk_43FED1.Execute var_8C, var_120, -1
  loc_18C9050:   Set var_C0 = var_124
  loc_18C906F:   unk_43FED1.Execute var_90, var_120, -1
  loc_18C907A:   Set var_CC = var_124
  loc_18C9099:   unk_43FED1.Execute var_94, var_120, -1
  loc_18C90A4:   Set var_D0 = var_124
  loc_18C90C3:   unk_43FED1.Execute var_98, var_120, -1
  loc_18C90CE:   Set var_C4 = var_124
  loc_18C90D9:   Close 1
  loc_18C90E2:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_18C90E6:   ' Referenced from: 18CB5BF
  loc_18C90F5:   If Not(var_C0.EOF) Then
  loc_18C9100:     var_120 = Space(&H41)
  loc_18C9126:     var_DC = Replace(CStr(var_120), " ", "-", 1, -1, 0)
  loc_18C9132:     var_13C = 0
  loc_18C9161:     unk_43FED1.Execute "SELECT TOKENPrint FROM Depart where Code='" & Me(8) & "'", var_120, -1
  loc_18C9171:     var_13C = var_12C.Item(var_12C)
  loc_18C91A1:     If (Proc_6_38_E69628(CVar(var_140), var_140, var_124.Fields, var_124.Fields) = "Yes") Then
  loc_18C91B8:       If (var_C4.RecordCount > 0) Then
  loc_18C91BB:         ' Referenced from: 18C97B1
  loc_18C91CA:         If Not(var_C4.EOF) Then
  loc_18C91CF:           var_BA = 1
  loc_18C91E6:           var_10C = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_18C922C:           var_174 = CVar(var_10C & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_18C923A:           unk_43FED1.Execute CStr(var_174), var_194, -1
  loc_18C9245:           Set var_C8 = var_140
  loc_18C927B:           If (var_C8.RecordCount > 0) Then
  loc_18C92CB:             Print 1, Proc_260_1_10A4640(CStr(var_C4.Fields.Item("Department").Value), "D", &H3C, var_140)
  loc_18C9302:             var_124 = var_C0.Fields
  loc_18C9344:             Proc_6_39_E7D3A0(var_194, CVar(var_C0.Fields.Item("VNo")))
  loc_18C937A:             var_304 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_124.Item("vType")), var_BA, var_124) & "/" & MemVar_1F95168 & "/") & var_194), &H10)
  loc_18C941D:             var_150 = (Chr(&HF) + "Bill No.   : ")
  loc_18C9427:             var_1DC = (CVar(Proc_6_38_E69628(CVar(var_124.Item("vType")), var_BA, var_124) & Me(12) & "' AND I.Kitchen='") + CVar(var_304))
  loc_18C942E:             var_1FC = (var_1DC + Space(1))
  loc_18C9437:             var_21C = (var_1FC + "Dt : ")
  loc_18C9441:             var_26C = (var_21C + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_124), &HF)))
  loc_18C9448:             var_28C = (var_26C + Space(4))
  loc_18C9451:             var_2AC = (var_28C + "Time : ")
  loc_18C945B:             var_2FC = (var_2AC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_18C9461:             Print 1, var_2FC
  loc_18C94C0:             var_9E = (var_9E + 1)
  loc_18C9535:             var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_18C953C:             var_194 = (CVar(var_124.Item("vType")) + Space(1))
  loc_18C9546:             var_1BC = (var_194 + CVar(Proc_6_45_EADFB8("PARTICULARS", &H28)))
  loc_18C954D:             var_1DC = (CVar(Proc_6_38_E69628(CVar(var_124.Item("vType")), var_BA, var_124) & "/" & MemVar_1F95168 & "/") & var_194 + Space(1))
  loc_18C9557:             var_1FC = (var_1DC + CVar(Proc_6_52_EAE084("Qty", &H12)))
  loc_18C955D:             Print 1, var_1FC
  loc_18C95A1:             var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18C95A7:             Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_18C95B4:             ' Referenced from: 18C972B
  loc_18C95C3:             If Not(var_C8.EOF) Then
  loc_18C9665:               Proc_6_39_E7D3A0(var_21C, CVar(var_C8.Fields.Item("qty")))
  loc_18C96A8:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3)))
  loc_18C96AF:               var_194 = (CVar(var_C8.Fields.Item("vType")) + Space(1))
  loc_18C96B9:               var_1CC = (var_194 + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H28)))
  loc_18C96C0:               var_1EC = (Space(1) + Space(1))
  loc_18C96CA:               var_27C = (CVar(Proc_6_52_EAE084("Qty", &H12)) + CVar(Proc_6_52_EAE084(CStr(Format(var_21C, "0.00")), &H12, 1)))
  loc_18C96D0:               Print 1, Space(4)
  loc_18C9714:               var_C8.MoveNext
  loc_18C971F:               var_9E = (var_9E + 1)
  loc_18C9728:               var_BA = (var_BA + 1)
  loc_18C972B:               GoTo loc_18C95B4
  loc_18C972E:             End If
  loc_18C972E:           End If
  loc_18C9731:           var_C4.MoveNext
  loc_18C973B:           Print 1, vbNullString
  loc_18C977C:           var_110 = Replace(CStr(Space(&H41)), " ", "=", 1, -1, 0)
  loc_18C9788:           var_174 = (Chr(&HF) + CVar("PARTICULARS"))
  loc_18C978E:           Print 1, Space(1)
  loc_18C97AB:           Print 1, vbNullString
  loc_18C97B1:           GoTo loc_18C91BB
  loc_18C97B4:         End If
  loc_18C97B4:       End If
  loc_18C97B4:     End If
  loc_18C97B6:     var_9E = 0
  loc_18C97BB:     var_A0 = 1
  loc_18C9816:     var_110 = Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), var_A0, var_9E, var_BA) = "Restaurant"), var_9E)
  loc_18C9834:     If (1 Or (var_110 = "Hall")) Then
  loc_18C9845:       var_9C = "** " & "BILL" & " **"
  loc_18C984E:     Else
  loc_18C9884:       var_9C = var_9E & Proc_6_38_E69628(CVar(var_EC.Fields.Item("Name")), "** ") & " **"
  loc_18C9894:     End If
  loc_18C989A:     If (var_9E = 0) Then
  loc_18C990F:       var_194 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)))
  loc_18C9916:       var_1BC = (var_194 + Chr(&H12))
  loc_18C991C:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H28))
  loc_18C9949:       var_9E = (var_9E + 1)
  loc_18C996D:       Print 1, Proc_260_1_10A4640(var_9C, "D", &H3C)
  loc_18C9981:       Print 1, vbNullString
  loc_18C998D:       var_9E = (var_9E + 1)
  loc_18C99BE:       var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_18C99F5:       var_E0 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_18C9A4C:       var_154 = Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)), &H1E)
  loc_18C9A55:       var_164 = (Chr(&H11) + Space(&H14))
  loc_18C9A5E:       var_174 = (vbNullString & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_18C9A65:       var_194 = CVar(var_154) 'String
  loc_18C9A68:       var_1AC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)) + var_194)
  loc_18C9A6E:       Print 1, Chr(&H12)
  loc_18C9A92:       var_9E = (var_9E + 1)
  loc_18C9A9A:       Print 1, vbNullString
  loc_18C9AA6:       var_9E = (var_9E + 1)
  loc_18C9AAE:       Print 1, vbNullString
  loc_18C9ABA:       var_9E = (var_9E + 1)
  loc_18C9AF2:       var_300 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("vType")), Proc_260_2_136F49C(var_A0, var_9E, &H3C), Proc_260_2_136F49C(var_A0, var_9E, &H3C))
  loc_18C9B1B:       Proc_6_39_E7D3A0(var_194, CVar(var_C0.Fields.Item("VNo")), Proc_260_2_136F49C(var_A0, var_9E, &H3C))
  loc_18C9B9D:       var_30C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)), &HF)
  loc_18C9BF4:       var_150 = (Chr(&HF) + "Bill No.   : ")
  loc_18C9BFE:       var_1DC = (Space(&H14) + CVar(Proc_6_45_EADFB8(CStr(CVar(var_300 & "/" & MemVar_1F95168 & "/") & var_194), &H10)))
  loc_18C9C05:       var_1FC = (Space(1) + Space(1))
  loc_18C9C0E:       var_21C = (CVar(var_C8.Fields.Item("qty")) + "Dt : ")
  loc_18C9C18:       var_26C = (var_21C + CVar(var_30C))
  loc_18C9C1F:       var_28C = (CVar(Proc_6_52_EAE084(CStr(Format(var_21C, "0.00")), &H12, 1)) + Space(4))
  loc_18C9C28:       var_2AC = (var_28C + "Time : ")
  loc_18C9C32:       var_2FC = (var_2AC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_18C9C38:       Print 1, var_2FC
  loc_18C9C97:       var_9E = (var_9E + 1)
  loc_18C9CD3:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)) = "Outlet") Then
  loc_18C9D2A:         var_150 = (Chr(&HF) + "Table No.  : ")
  loc_18C9D34:         var_194 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_18C9D3A:         Print 1, var_194
  loc_18C9D5F:         var_9E = (var_9E + 1)
  loc_18C9D62:       End If
  loc_18C9D9B:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)) = "Room Service") Then
  loc_18C9DF2:         var_150 = (Chr(&HF) + "Room No.   : ")
  loc_18C9DFC:         var_194 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_18C9E02:         Print 1, var_194
  loc_18C9E27:         var_9E = (var_9E + 1)
  loc_18C9E2A:       End If
  loc_18C9E63:       If (Proc_6_38_E69628(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)) = "Hall") Then
  loc_18C9EBA:         var_150 = (Chr(&HF) + "Hall  No.  : ")
  loc_18C9EC4:         var_194 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_18C9ECA:         Print 1, var_194
  loc_18C9EEF:         var_9E = (var_9E + 1)
  loc_18C9EF2:       End If
  loc_18C9F72:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_18C9FBE:         var_154 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)), &H34)
  loc_18C9FC9:         var_150 = (Chr(&HF) + "KOT No.    : ")
  loc_18C9FD3:         var_194 = (Space(&H14) + CVar(var_154))
  loc_18C9FD9:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_18C9FFE:         var_9E = (var_9E + 1)
  loc_18CA001:       End If
  loc_18CA017:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CA01D:       Print 1, Space(&H14)
  loc_18CA030:       var_9E = (var_9E + 1)
  loc_18CA033:     End If
  loc_18CA059:     var_164 = (CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C))) + Space(1))
  loc_18CA073:     var_194 = (Proc_260_2_136F49C(var_A0, var_9E, &H3C) + CVar(Proc_6_45_EADFB8("ITEM NAME", &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_18CA087:     var_1BC = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_18CA0A1:     var_1DC = (CVar(var_300 & "/" & MemVar_1F95168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAE084("Tax, 6)) 'String)
  loc_18CA0AD:     var_1EC = Space(1)
  loc_18CA0B5:     var_1FC = (Space(1) + var_1EC)
  loc_18CA0CF:     var_244 = (CVar(var_C8.Fields.Item("qty")) + CVar(Proc_6_52_EAE084("Rate", &HA)))
  loc_18CA0E3:     var_26C = (CVar(var_C0.Fields.Item("VDate")) + Space(1))
  loc_18CA0FD:     var_28C = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Rate", &HA)), "0.00")), &H12, 1)) + CVar(Proc_6_52_EAE084("Qty", &HA)))
  loc_18CA109:     var_2AC = Space(1)
  loc_18CA111:     var_2D4 = (var_28C + var_2AC)
  loc_18CA12B:     var_2FC = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_18CA130:     var_B8 = CStr(var_2FC)
  loc_18CA185:     var_150 = (Chr(&HF) + CVar(var_B8))
  loc_18CA18B:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)))
  loc_18CA1AE:     var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CA1B4:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C), &H3C)))
  loc_18CA1C7:     var_9E = (var_9E + 1)
  loc_18CA1CC:     var_BA = 1
  loc_18CA1D2:     var_CC.MoveFirst
  loc_18CA1D7:     ' Referenced from: 18CA6FB
  loc_18CA1E6:     If Not(var_CC.EOF) Then
  loc_18CA236:       Proc_6_39_E7D3A0(var_1EC, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_18CA281:       Proc_6_39_E7D3A0(var_2AC, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_18CA2CC:       Proc_6_39_E7D3A0(var_36C, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_18CA317:       Proc_6_39_E7D3A0(var_404, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_18CA358:       Proc_6_39_E7D3A0(var_45C, CVar(var_CC.Fields.Item("Amt")))
  loc_18CA3A3:       var_164 = (CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)) + Space(1))
  loc_18CA3BC:       var_1AC = (1 + CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_18CA3D0:       var_1CC = (Space(1) + Space(1))
  loc_18CA3E9:       var_25C = (Proc_260_2_136F49C(var_A0, var_9E, &H3C) + CVar(Proc_6_52_EAE084(CStr(Format(var_1EC, "0.00")), 6, CVar(Proc_6_52_EAE084("Tax, 6)) 'String)) 'String)
  loc_18CA3FD:       var_27C = (Space(1) + Space(1))
  loc_18CA416:       var_32C = (CVar(Proc_6_52_EAE084("Qty", &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2AC, "0.00")), &HA)))
  loc_18CA42A:       var_34C = (var_32C + Space(1))
  loc_18CA443:       var_3AC = (var_34C + CVar(Proc_6_52_EAE084(CStr(Format(var_36C, "0.00")), &HA)))
  loc_18CA457:       var_3CC = (var_3AC + Space(1))
  loc_18CA495:       var_4E0 = (var_3CC + IIf((var_404 = 0), CVar(Proc_6_45_EADFB8("Free", 9, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_45C, "0.00")), &HA))))
  loc_18CA530:       var_150 = (Chr(&HF) + CVar(CStr(var_4E0)))
  loc_18CA536:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_18CA54D:       If (Proc_260_2_136F49C(var_A0, var_9E, &H3C) = (&H45 - var_B2)) Then
  loc_18CA566:         var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CA56C:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_18CA57F:         var_9E = (var_9E + 1)
  loc_18CA587:         Print 1, "Contd."
  loc_18CA593:         var_9E = (var_9E + 1)
  loc_18CA5A8:         Print 1, Chr(&HC)
  loc_18CA5B7:         var_9E = (var_9E + 1)
  loc_18CA5C0:         var_A0 = (var_A0 + 1)
  loc_18CA5C5:         var_9E = 0
  loc_18CA5F7:         var_110 = Proc_260_1_10A4640(var_9C, "B", &H3C, Proc_260_2_136F49C(var_A0, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), &H3C, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), var_A0))
  loc_18CA5FC:         Print 1, var_110
  loc_18CA611:         var_9E = (var_9E + 1)
  loc_18CA62A:         var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CA630:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_18CA643:         var_9E = (var_9E + 1)
  loc_18CA65C:         var_150 = (Chr(&HF) + CVar(var_B8))
  loc_18CA662:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_18CA685:         var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CA68B:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1))
  loc_18CA69E:         var_9E = (var_9E + 1)
  loc_18CA6A1:       End If
  loc_18CA6CE:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CA6D6:       var_164 = (Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1)))
  loc_18CA6DB:       var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_18CA6F0:       var_BA = (var_BA + 1)
  loc_18CA6F6:       var_CC.MoveNext
  loc_18CA6FB:       GoTo loc_18CA1D7
  loc_18CA6FE:     End If
  loc_18CA71E:     var_164 = (Chr(&HF) + Space(&H35))
  loc_18CA728:     var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_18CA72E:     Print 1, var_CC.Fields.Item("ItemName").Value
  loc_18CA745:     var_9E = (var_9E + 1)
  loc_18CA74B:     var_D0.MoveFirst
  loc_18CA750:     ' Referenced from: 18CAE84
  loc_18CA75F:     If Not(var_D0.EOF) Then
  loc_18CA78C:       var_4F0 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_18CA7AA:       If (var_4F0 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_18CA800:         var_154 = Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), var_BA, var_D8)
  loc_18CA836:         Proc_6_39_E7D3A0(var_1EC, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CA883:         var_164 = (Chr(&HF) + Space(&H23))
  loc_18CA88D:         var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_154))
  loc_18CA894:         var_1CC = (Space(1) + Space(4))
  loc_18CA89E:         var_25C = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1EC, "0.00")), &HA, 1, 1)))
  loc_18CA8A5:         var_27C = (Space(1) + Chr(&H12))
  loc_18CA8AB:         Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_18CA8EE:         var_9E = (var_9E + 1)
  loc_18CA8F4:       Else
  loc_18CA907:         If (var_4F0 = CVar(MemVar_1F95078 & "NET")) Then
  loc_18CA91F:           var_150 = Space(&H35)
  loc_18CA92A:           var_164 = (Chr(&HF) + var_150)
  loc_18CA934:           var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_18CA93A:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_18CA951:           var_9E = (var_9E + 1)
  loc_18CA97A:           Proc_6_39_E7D3A0(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CA994:           If (var_150 > 0) Then
  loc_18CA9AC:             var_150 = Space(&H23)
  loc_18CA9EA:             var_154 = Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CAA20:             Proc_6_39_E7D3A0(var_1EC, CVar(var_D0.Fields.Item("Amount")))
  loc_18CAA6D:             var_164 = (Chr(&HF) + var_150)
  loc_18CAA77:             var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_154))
  loc_18CAA7E:             var_1CC = (Space(1) + Space(4))
  loc_18CAA88:             var_25C = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1EC, "0.00")), &HA, 1)))
  loc_18CAA8F:             var_27C = (Space(1) + Chr(&H12))
  loc_18CAA95:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_18CAAD8:             var_9E = (var_9E + 1)
  loc_18CAADB:           End If
  loc_18CAADE:         Else
  loc_18CAAF1:           If (var_4F0 = CVar(MemVar_1F95078 & "DIS")) Then
  loc_18CAB1A:             Proc_6_39_E7D3A0(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CAB34:             If (var_150 > 0) Then
  loc_18CAB4C:               var_150 = Space(&H23)
  loc_18CAC09:               Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", &HA)), CVar(var_D0.Fields.Item("Amount")))
  loc_18CAC56:               var_164 = (Chr(&HF) + var_150)
  loc_18CAC60:               var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HA, 1)))
  loc_18CAC67:               var_1CC = (Space(1) + Space(4))
  loc_18CAC6E:               var_1EC = CVar(Proc_6_52_EAE084(CStr(var_D0.Fields.Item("SValue").Value), 3)) 'String
  loc_18CAC71:               var_1FC = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + var_1EC)
  loc_18CAC7A:               var_21C = ("0.00" + "%")
  loc_18CAC81:               var_25C = (Format(var_1EC, "0.00") + Space(1))
  loc_18CAC8B:               var_2EC = (Space(1) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Qty", &HA)), "0.00")), &HA, 1)))
  loc_18CAC92:               var_32C = (Format(Format(CVar(Proc_6_52_EAE084("Qty", &HA)), "0.00"), "0.00") + Chr(&H12))
  loc_18CAC98:               Print 1, var_32C
  loc_18CACEF:               var_9E = (var_9E + 1)
  loc_18CACF2:             End If
  loc_18CACF5:           Else
  loc_18CAD1B:             Proc_6_39_E7D3A0(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CAD35:             If (var_150 > 0) Then
  loc_18CADC1:               Proc_6_39_E7D3A0(var_1EC, CVar(var_D0.Fields.Item("Amount")))
  loc_18CAE0E:               var_164 = (Chr(&HF) + Space(&H23))
  loc_18CAE18:               var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1)))
  loc_18CAE1F:               var_1CC = (Space(1) + Space(4))
  loc_18CAE29:               var_25C = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1EC, "0.00")), &HA, 1)))
  loc_18CAE30:               var_27C = (Space(1) + Chr(&H12))
  loc_18CAE36:               Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_18CAE79:               var_9E = (var_9E + 1)
  loc_18CAE7C:             End If
  loc_18CAE7C:           End If
  loc_18CAE7C:         End If
  loc_18CAE7C:       End If
  loc_18CAE7F:       var_D0.MoveNext
  loc_18CAE84:       GoTo loc_18CA750
  loc_18CAE87:     End If
  loc_18CAE9D:     var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CAEA3:     Print 1, Space(&H23)
  loc_18CAEB6:     var_9E = (var_9E + 1)
  loc_18CAEF5:     If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_18CAF2D:       var_110 = Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CAF4C:       var_150 = (Chr(&HF) + "Steward Name  : ")
  loc_18CAF56:       var_194 = (Space(&H23) + CVar(Proc_6_45_EADFB8(var_110, &H14, 1)))
  loc_18CAF5C:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_18CAF81:       var_9E = (var_9E + 1)
  loc_18CAF84:     End If
  loc_18CAF8C:     var_120 = Chr(&HF)
  loc_18CAFA0:     var_124 = var_C0.Fields
  loc_18CAFCD:     var_154 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_124.Item("U_Name")), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0)), &HA)
  loc_18CAFD8:     var_150 = (var_120 + "User Name     : ")
  loc_18CAFE2:     var_194 = (Space(&H23) + CVar(var_154))
  loc_18CAFE8:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_18CB00D:     var_9E = (var_9E + 1)
  loc_18CB015:     Print 1, vbNullString
  loc_18CB021:     var_9E = (var_9E + 1)
  loc_18CB04A:     unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_120, -1
  loc_18CB055:     Set var_F0 = var_124
  loc_18CB079:     If (var_F0.RecordCount > 0) Then
  loc_18CB0BC:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_18CB0C7:         var_120 = Chr(&HF)
  loc_18CB0DB:         var_124 = var_F0.Fields
  loc_18CB0FD:         var_174 = (var_120 + Trim(CVar(var_124.Item("Slogan1"))))
  loc_18CB103:         Print 1, CVar(var_154)
  loc_18CB11D:         var_9E = (var_9E + 1)
  loc_18CB120:       End If
  loc_18CB120:     End If
  loc_18CB146:     unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_120, -1
  loc_18CB151:     Set var_F0 = var_124
  loc_18CB175:     If (var_F0.RecordCount > 0) Then
  loc_18CB1B8:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_18CB1D7:         var_124 = var_F0.Fields
  loc_18CB1F9:         var_174 = (Chr(&HF) + Trim(CVar(var_124.Item("Slogan2"))))
  loc_18CB1FF:         Print 1, CVar(var_154)
  loc_18CB219:         var_9E = (var_9E + 1)
  loc_18CB21C:       End If
  loc_18CB21C:     End If
  loc_18CB221:     Set var_F0 = Nothing
  loc_18CB22C:     var_120 = Chr(&HF)
  loc_18CB244:     var_164 = (var_120 + Space(&H32))
  loc_18CB24D:     var_174 = (Trim(CVar(var_124.Item("Slogan2"))) + "Guest Signature")
  loc_18CB253:     Print 1, CVar(var_154)
  loc_18CB26A:     var_9E = (var_9E + 1)
  loc_18CB293:     unk_43FED1.Execute "Select * from PayCharge  where docid='" & Me(12) & "' and Sno=1", var_120, -1
  loc_18CB29E:     Set var_F4 = var_124
  loc_18CB2AE:     ' Referenced from: 18CB4A4
  loc_18CB2BD:     If Not(var_F4.EOF) Then
  loc_18CB2D2:       var_124 = var_F4.Fields
  loc_18CB2E2:       var_120 = var_124.Item("PayType").Value
  loc_18CB2FC:       If (var_120 = "Company") Then
  loc_18CB31C:         var_110 = "Select Name from PayCharge left join Subgroup on Paycharge.CompCode=Subgroup.Subcode where docid='" & Me(12) & "'"
  loc_18CB325:         unk_43FED1.Execute var_110, var_120, -1
  loc_18CB330:         Set var_F4 = var_124
  loc_18CB34F:         var_124 = var_F4.Fields
  loc_18CB368:         var_154 = Proc_6_38_E69628(CVar(var_124.Item("Name")), var_124, var_124, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), var_124)
  loc_18CB37A:         Print 1, "Party Name : " & var_154
  loc_18CB395:         var_9E = (var_9E + 1)
  loc_18CB39B:       Else
  loc_18CB3AD:         var_124 = var_F4.Fields
  loc_18CB3BD:         var_120 = var_124.Item("PayType").Value
  loc_18CB3D7:         If (var_120 = "Room") Then
  loc_18CB40E:           unk_43FED1.Execute "Select rOOMNO from PayCharge where Paycode='" & MemVar_1F95078 & "TOUT' and docid='" & Me(12) & "'", var_120, -1
  loc_18CB419:           Set var_F4 = var_124
  loc_18CB43C:           var_124 = var_F4.Fields
  loc_18CB455:           var_154 = Proc_6_38_E69628(CVar(var_124.Item("RoomNo")), var_124, Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), var_124)
  loc_18CB467:           Print 1, "Room No :   " & var_154
  loc_18CB482:           var_9E = (var_9E + 1)
  loc_18CB488:         Else
  loc_18CB48D:           Print 1, vbNullString
  loc_18CB499:           var_9E = (var_9E + 1)
  loc_18CB49C:         End If
  loc_18CB49C:       End If
  loc_18CB49F:       var_F4.MoveNext
  loc_18CB4A4:       GoTo loc_18CB2AE
  loc_18CB4A7:     End If
  loc_18CB4BC:     var_150 = (Chr(&HF) + "# ")
  loc_18CB4C6:     var_164 = Space(&H32) & CVar(MemVar_1F95220) 
  loc_18CB4CF:     var_174 = var_164 & " # " 
  loc_18CB4D5:     Print 1, var_174
  loc_18CB4EC:     var_9E = (var_9E + 1)
  loc_18CB4F2:     var_C0.MoveNext
  loc_18CB4FC:     Print 1, vbNullString
  loc_18CB508:     var_9E = (var_9E + 1)
  loc_18CB510:     Print 1, vbNullString
  loc_18CB51C:     var_9E = (var_9E + 1)
  loc_18CB524:     Print 1, vbNullString
  loc_18CB530:     var_9E = (var_9E + 1)
  loc_18CB538:     Print 1, vbNullString
  loc_18CB544:     var_9E = (var_9E + 1)
  loc_18CB54C:     Print 1, vbNullString
  loc_18CB558:     var_9E = (var_9E + 1)
  loc_18CB560:     Print 1, vbNullString
  loc_18CB56C:     var_9E = (var_9E + 1)
  loc_18CB574:     Print 1, vbNullString
  loc_18CB580:     var_9E = (var_9E + 1)
  loc_18CB588:     Print 1, vbNullString
  loc_18CB594:     var_9E = (var_9E + 1)
  loc_18CB59C:     Print 1, vbNullString
  loc_18CB5A8:     var_9E = (var_9E + 1)
  loc_18CB5B0:     Print 1, vbNullString
  loc_18CB5BC:     var_9E = (var_9E + 1)
  loc_18CB5BF:     GoTo loc_18C90E6
  loc_18CB5C2:   End If
  loc_18CB5C4:   Close 1
  loc_18CB5CD:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18CB602:   var_150 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_18CB608:   Print 1, var_150
  loc_18CB61E:   Close 1
  loc_18CB628:   If (MemVar_1F953BC = "Y") Then
  loc_18CB644:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18CB64E:   Else
  loc_18CB667:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18CB66E:   End If
  loc_18CB673:   Set var_C0 = Nothing
  loc_18CB67B:   Set var_CC = Nothing
  loc_18CB683:   Set var_D0 = Nothing
  loc_18CB68B:   Set var_EC = Nothing
  loc_18CB693:   Set var_C4 = Nothing
  loc_18CB69B:   Set var_C8 = Nothing
  loc_18CB6A1: Else
  loc_18CB6BA:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_150, var_164, var_174)
  loc_18CB6CA: End If
  loc_18CB6CA: Exit Sub
  loc_18CB6CB: ' Referenced from: 18C8F10
  loc_18CB6CB: Proc_6_60_E63754(Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136F49C(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CB6D0: Exit Sub
End Sub

Public Sub Proc_260_17_173C860
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_E4 As Recordset15
  Dim var_114 As Fields15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_174 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_E0 As Recordset15
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2E0 As Variant
  Dim var_37C As Variant
  Dim var_244 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_354 As Variant
  Dim var_390 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_45C As Variant
  Dim var_288 As Variant
  Dim var_2B8 As Variant
  Dim var_314 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_4C8 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_173AC98: On Error Goto loc_173C85A
  loc_173ACA6: MemVar_629D24.Filter = "ModType='POS'"
  loc_173ACC1: If (MemVar_629D24.RecordCount > 0) Then
  loc_173ACC7:   MemVar_1F953C4 = "N"
  loc_173ACCE:   MemVar_1F953C8 = "N"
  loc_173ACD5:   MemVar_1F953CC = "K"
  loc_173ACFF:   unk_43FED1.Execute "Select * from Depart where code='" & Me(8) & "'", var_110, -1
  loc_173AD0A:   Set var_E4 = var_114
  loc_173AD2A:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_173AD44:   If (var_E4.RecordCount > 0) Then
  loc_173AD59:     var_114 = var_E4.Fields
  loc_173AD69:     var_110 = var_114.Item("KotYN").Value
  loc_173AD83:     If (var_110 = "Y") Then
  loc_173AD8D:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_173ADAD:       var_90 = var_FC & Me(12) & "' and KOT.CONTRADOCID='" & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_173ADBE:     Else
  loc_173ADC5:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_173ADD5:       var_90 = var_FC & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_173ADDF:     End If
  loc_173ADDF:     GoTo loc_173ADE2
  loc_173ADE2:     ' Referenced from: 173ADDF
  loc_173ADE2:   End If
  loc_173ADF9:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_173AE0B:   If (var_8C = vbNullString) Then
  loc_173AE0E:     Exit Sub
  loc_173AE0F:   End If
  loc_173AE17:   If (var_90 = vbNullString) Then
  loc_173AE1A:     Exit Sub
  loc_173AE1B:   End If
  loc_173AE23:   If (var_94 = vbNullString) Then
  loc_173AE26:     Exit Sub
  loc_173AE27:   End If
  loc_173AE3D:   unk_43FED1.Execute var_8C, var_110, -1
  loc_173AE48:   Set var_BC = var_114
  loc_173AE67:   unk_43FED1.Execute var_90, var_110, -1
  loc_173AE72:   Set var_C0 = var_114
  loc_173AE91:   unk_43FED1.Execute var_94, var_110, -1
  loc_173AE9C:   Set var_C4 = var_114
  loc_173AEA7:   var_AE = &HA
  loc_173AEAC:   Close 1
  loc_173AEB5:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_173AEDD:   unk_43FED1.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_110, -1
  loc_173AEE8:   Set var_E0 = var_114
  loc_173AEF8:   ' Referenced from: 173C6CB
  loc_173AF07:   If Not(var_BC.EOF) Then
  loc_173AF0C:     var_9A = 0
  loc_173AF1A:     If (var_9A = 0) Then
  loc_173AF5B:       var_154 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_173AF5E:       var_164 = (Chr(&HF) + var_154)
  loc_173AF72:       var_184 = (var_164 + Chr(&H12))
  loc_173AF77:       var_D0 = CStr(var_184)
  loc_173AFBA:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_173AFD2:       var_114 = var_E4.Fields
  loc_173B013:       Print 1, Proc_260_1_10A4640(Proc_6_38_E69628(CVar(var_114.Item("Name")), 1, var_9A, var_114, var_AE), "A", &H4E, var_114)
  loc_173B072:       var_138 = (Trim(MemVar_1F95134) + ", ")
  loc_173B079:       var_164 = (Space(&H88) + Trim(MemVar_1F95138))
  loc_173B082:       var_174 = (var_164 + " ")
  loc_173B089:       var_1C8 = (Chr(&H12) + Trim(MemVar_1F9513C))
  loc_173B092:       var_1E8 = (var_1C8 + " ")
  loc_173B09C:       var_208 = (var_1E8 + CVar(MemVar_1F9515C))
  loc_173B0B5:       Print 1, Proc_260_1_10A4640(CStr(var_208), "B", &H4E)
  loc_173B113:       Print 1, Proc_260_1_10A4640("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "E", 137)
  loc_173B13C:       If (var_E0.RecordCount > 0) Then
  loc_173B14E:         var_114 = var_E0.Fields
  loc_173B189:         If (Trim(CVar(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), var_114))) = vbNullString) Then
  loc_173B191:           Print 1, vbNullString
  loc_173B19A:         Else
  loc_173B1A9:           var_114 = var_E0.Fields
  loc_173B1EB:           Print 1, Proc_260_1_10A4640(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), var_114), "E")
  loc_173B204:         End If
  loc_173B207:       Else
  loc_173B20C:         Print 1, vbNullString
  loc_173B212:       End If
  loc_173B224:       Print 1, Chr(&H12)
  loc_173B298:       Proc_6_39_E7D3A0(var_1C8, CVar(var_BC.Fields.Item("VNo")))
  loc_173B2CE:       var_20C = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F95168 & "/") & var_1C8), &H10)
  loc_173B2D9:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_173B2E0:       var_164 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields)) + Chr(&H12))
  loc_173B2EA:       var_234 = (var_164 + CVar(var_20C))
  loc_173B2F0:       Print 1, var_234
  loc_173B4C9:       Proc_6_39_E7D3A0(var_438, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_173B4EC:       var_138 = (Chr(&HF) + "Date : ")
  loc_173B4F3:       var_164 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields)) + Chr(&H12))
  loc_173B4FD:       var_1C8 = (var_164 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &H12)))
  loc_173B504:       var_208 = (var_1C8 + Chr(&HF))
  loc_173B50D:       var_224 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F95168 & "/") & var_1C8 + "Time : ")
  loc_173B514:       var_244 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")))) + Chr(&H12))
  loc_173B51E:       var_278 = (var_244 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_173B525:       var_298 = (var_278 + Chr(&HF))
  loc_173B52E:       var_2A8 = (var_298 + "Steward :")
  loc_173B535:       var_2C8 = (var_2A8 + Chr(&H12))
  loc_173B53F:       var_304 = (var_2C8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_173B546:       var_324 = (var_304 + Chr(&HF))
  loc_173B54F:       var_334 = (var_324 + "Table : ")
  loc_173B556:       var_354 = (var_334 + Chr(&H12))
  loc_173B560:       var_3A0 = (var_354 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_173B567:       var_3C0 = (var_3A0 + Chr(&HF))
  loc_173B570:       var_3E0 = (var_3C0 + "Covers: ")
  loc_173B577:       var_400 = (var_3E0 + Chr(&H12))
  loc_173B581:       var_45C = (var_400 + CVar(Proc_6_45_EADFB8(CStr(var_438), 7)))
  loc_173B587:       Print 1, var_45C
  loc_173B613:       Print 1, var_D0
  loc_173B6CA:       var_3B0 = Space(&HA)
  loc_173B6D7:       var_3F0 = Chr(&H12)
  loc_173B6E2:       var_154 = (Chr(&HF) + Space(3))
  loc_173B6EB:       var_164 = (Chr(&H12) + "S.No")
  loc_173B6F2:       var_184 = (var_164 + Space(3))
  loc_173B6F9:       var_1E8 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &H12)) + Space(4))
  loc_173B702:       var_208 = (Chr(&HF) + "KOT#")
  loc_173B709:       var_234 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F95168 & "/") & Space(4) + Space(4))
  loc_173B710:       var_254 = (Chr(&H12) + Space(5))
  loc_173B719:       var_268 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_173B720:       var_288 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_173B727:       var_2A8 = (Chr(&HF) + Space(&H15))
  loc_173B730:       var_2B8 = (var_2A8 + "ITEM NAME")
  loc_173B737:       var_2E0 = (Chr(&H12) + Space(&H15))
  loc_173B73E:       var_304 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_173B747:       var_314 = (var_304 + "QTY")
  loc_173B74E:       var_334 = (Chr(&HF) + Space(5))
  loc_173B755:       var_354 = (var_334 + Space(5))
  loc_173B75E:       var_37C = (var_354 + "RATE")
  loc_173B765:       var_3A0 = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_173B76C:       var_3C0 = (var_3A0 + var_3B0)
  loc_173B775:       var_3E0 = (var_3C0 + "AMOUNT")
  loc_173B77C:       var_400 = (var_3E0 + var_3F0)
  loc_173B782:       Print 1, var_400
  loc_173B7D8:       Print 1, var_D0
  loc_173B7E0:       var_9A = &HA
  loc_173B7E3:     End If
  loc_173B7E5:     var_B6 = 1
  loc_173B7EB:     var_C0.MoveFirst
  loc_173B7F0:     ' Referenced from: 173BFDE
  loc_173B7FF:     If Not(var_C0.EOF) Then
  loc_173B808:       If (var_9A = 0) Then
  loc_173B839:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_173B870:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_173B8D7:         Proc_6_39_E7D3A0(var_164, CVar(var_BC.Fields.Item("VNo")))
  loc_173B90D:         var_20C = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F95168 & "/") & var_164), &H10)
  loc_173B919:         var_1E8 = (Space(8) + CVar(var_20C))
  loc_173B91F:         Print 1, Chr(&HF)
  loc_173B950:         Print 1
  loc_173BAB9:         Proc_6_39_E7D3A0(var_304, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_173BADD:         var_164 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_173BAE4:         var_184 = (var_164 + Space(4))
  loc_173BAEE:         var_208 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F95168 & "/") & var_164 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_173BAF5:         var_234 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F95168 & "/") & CVar(var_BC.Fields.Item("VTIME")) + Space(6))
  loc_173BAFF:         var_268 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_173BB06:         var_288 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_173BB10:         var_2B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_173BB17:         var_2E0 = (Chr(&H12) + Space(6))
  loc_173BB1E:         var_314 = CVar(Proc_6_45_EADFB8(CStr(var_304), 7)) 'String
  loc_173BB21:         var_324 = (CVar(var_BC.Fields.Item("WaiterName")) + var_314)
  loc_173BB27:         Print 1, Space(5)
  loc_173BB95:         Print 1, vbNullString
  loc_173BBA0:         Print 1, vbNullString
  loc_173BBA8:         var_9A = 5
  loc_173BBAB:       End If
  loc_173BC23:       var_244 = var_C0.Fields.Item("ItemName").Value
  loc_173BC4E:       Proc_6_39_E7D3A0(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_173BC99:       Proc_6_39_E7D3A0(var_314, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_173BCE4:       Proc_6_39_E7D3A0(var_3B0, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_173BD25:       Proc_6_39_E7D3A0(var_3F0, CVar(var_C0.Fields.Item("Amt")))
  loc_173BD70:       var_154 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) + Space(4))
  loc_173BD85:       var_174 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_173BD88:       var_184 = (1 + var_174)
  loc_173BD9C:       var_1E8 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F95168 & "/") & CVar(var_C0.Fields.Item("KOTNo")) + Space(2))
  loc_173BDB1:       var_224 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_173BDB4:       var_234 = (1 + var_224)
  loc_173BDCD:       var_268 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(CStr(var_244), &H1E)))
  loc_173BDE6:       var_2C8 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_173BDFA:       var_2F4 = (Space(6) + Space(1))
  loc_173BE13:       var_354 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(Format(var_314, "0.00")), 7)))
  loc_173BE27:       var_390 = (var_354 + Space(1))
  loc_173BE65:       var_4C8 = (Space(5) + IIf((var_3B0 = 0), CVar(Proc_6_45_EADFB8("Free", &HB, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_3F0, "0.00")), &HB))))
  loc_173BEF3:       Print 1, CStr(var_4C8)
  loc_173BEFF:       var_9A = (var_9A + 1)
  loc_173BF0C:       If (var_9A = (&H36 - var_AE)) Then
  loc_173BF15:         var_9C = (var_9C + 1)
  loc_173BF2D:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_173BF48:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..."
  loc_173BF61:         var_9A = (var_9A + 1)
  loc_173BF76:         Print 1, Chr(&HC)
  loc_173BF81:         var_9A = 0
  loc_173BF84:       End If
  loc_173BFB1:       Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_173BFB9:       var_154 = (var_9A + CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)))
  loc_173BFBE:       var_CC = CSng(CVar(CStr(1)))
  loc_173BFD3:       var_B6 = (var_B6 + 1)
  loc_173BFD9:       var_C0.MoveNext
  loc_173BFDE:       GoTo loc_173B7F0
  loc_173BFE1:     End If
  loc_173BFEB:     If (var_9A < (&H36 - var_AE)) Then
  loc_173BFEE:       ' Referenced from: 173C012
  loc_173BFFB:       If (var_9A <> ((&H36 - var_AE) + 1)) Then
  loc_173C003:         Print 1, vbNullString
  loc_173C00F:         var_9A = (var_9A + 1)
  loc_173C012:         GoTo loc_173BFEE
  loc_173C015:       End If
  loc_173C015:     End If
  loc_173C018:     var_C4.MoveFirst
  loc_173C022:     Print 1, var_D0
  loc_173C028:     ' Referenced from: 173C6C0
  loc_173C037:     If Not(var_C4.EOF) Then
  loc_173C064:       var_4D8 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_173C082:       If (var_4D8 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_173C126:         Proc_6_39_E7D3A0(var_244, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_173C13A:         var_254 = "0.00"
  loc_173C169:         var_154 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6)))
  loc_173C170:         var_174 = (CVar(CStr(1)) + Chr(&H12))
  loc_173C17A:         var_1E8 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_CC)))
  loc_173C181:         var_224 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_173C18B:         var_288 = (var_224 + CVar(Proc_6_52_EAE084(CStr(Format(var_244, var_254)), &HA, 1)))
  loc_173C191:         Print 1, Chr(&HF)
  loc_173C1D5:       Else
  loc_173C1E8:         If (var_4D8 = CVar(MemVar_1F95078 & "NET")) Then
  loc_173C201:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_173C207:           Print 1, CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6))
  loc_173C228:           If (var_E0.RecordCount > 0) Then
  loc_173C275:             If (Trim(CVar(Proc_6_38_E69628(CVar(var_E0.Fields.Item("Bill_Footer")), 1))) = vbNullString) Then
  loc_173C323:               Proc_6_39_E7D3A0(var_254, CVar(var_C4.Fields.Item("Amount")))
  loc_173C366:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Space(1)), &H54)))
  loc_173C36D:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_173C377:               var_208 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_173C37E:               var_234 = (Space(4) + Space(4))
  loc_173C388:               var_298 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(Format(var_254, "0.00")), &HA, 1)))
  loc_173C38E:               Print 1, "0.00"
  loc_173C3D4:             Else
  loc_173C400:               var_138 = CVar(var_E0.Fields.Item("Bill_Footer")) 'Address
  loc_173C49C:               Proc_6_39_E7D3A0(var_254, CVar(var_C4.Fields.Item("Amount")))
  loc_173C4DF:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_138, 1), &H54)))
  loc_173C4E6:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_173C4ED:               var_1E8 = CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)) 'String
  loc_173C4F0:               var_208 = (var_C4.Fields.Item("DispName").Value + var_1E8)
  loc_173C4F7:               var_234 = (Space(4) + Space(4))
  loc_173C501:               var_298 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(Format(var_254, "0.00")), &HA, 1)))
  loc_173C507:               Print 1, "0.00"
  loc_173C54E:             End If
  loc_173C551:           Else
  loc_173C556:             Print 1, vbNullString
  loc_173C55C:           End If
  loc_173C561:           Print 1, var_D0
  loc_173C56A:         Else
  loc_173C590:           Proc_6_39_E7D3A0(var_138, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_173C5AA:           If (var_138 > 0) Then
  loc_173C629:             Proc_6_39_E7D3A0(var_1E8, CVar(var_C4.Fields.Item("Amount")))
  loc_173C669:             var_154 = CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)) 'String
  loc_173C66C:             var_164 = (Space(&H31) + var_154)
  loc_173C673:             var_184 = (Chr(&H12) + Space(4))
  loc_173C67D:             var_244 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_173C683:             Print 1, CVar(var_C4.Fields.Item("Amount"))
  loc_173C6B8:           End If
  loc_173C6B8:         End If
  loc_173C6B8:       End If
  loc_173C6BB:       var_C4.MoveNext
  loc_173C6C0:       GoTo loc_173C028
  loc_173C6C3:     End If
  loc_173C6C6:     var_BC.MoveNext
  loc_173C6CB:     GoTo loc_173AEF8
  loc_173C6CE:   End If
  loc_173C6F5:   Print 1, Proc_260_1_10A4640("* THANKS FOR YOUR VISIT *", "A", &H4E)
  loc_173C708:   Print 1
  loc_173C710:   Print 1
  loc_173C718:   Print 1
  loc_173C733:   var_138 = (Space(&H48) + "CASHIER")
  loc_173C739:   Print 1, var_C4.Fields.Item("DispName").Value
  loc_173C758:   Print 1, Chr(&HC)
  loc_173C763:   Close 1
  loc_173C76C:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_173C7A1:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_173C7A7:   Print 1, var_138
  loc_173C7BD:   Close 1
  loc_173C7C7:   If (MemVar_1F953BC = "Y") Then
  loc_173C7E3:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_173C7ED:   Else
  loc_173C806:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_173C80D:   End If
  loc_173C812:   Set var_BC = Nothing
  loc_173C81A:   Set var_C0 = Nothing
  loc_173C822:   Set var_C4 = Nothing
  loc_173C82A:   Set var_E4 = Nothing
  loc_173C830: Else
  loc_173C849:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, var_154, Chr(&H12))
  loc_173C859: End If
  loc_173C859: Exit Sub
  loc_173C85A: ' Referenced from: 173AC98
  loc_173C85A: Proc_6_60_E63754(1, var_9A)
  loc_173C85F: Exit Sub
End Sub

Public Sub Proc_260_18_1735390
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_FC As String
  Dim var_100 As String
  Dim unk_43FED1 As Connection15
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E4 As Recordset15
  Dim var_114 As Fields15
  Dim var_110 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_164 As Variant
  Dim var_1E8 As String
  Dim var_214 As Variant
  Dim var_284 As Variant
  Dim var_1B4 As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_2AC As Variant
  Dim var_1D4 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_24C As Variant
  Dim var_2F8 As Variant
  Dim var_318 As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_4D4 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_173380C: On Error Goto loc_1735388
  loc_173381A: MemVar_629D24.Filter = "ModType='POS'"
  loc_1733835: If (MemVar_629D24.RecordCount > 0) Then
  loc_173383B:   MemVar_1F953C4 = "N"
  loc_1733842:   MemVar_1F953C8 = "N"
  loc_1733849:   MemVar_1F953CC = "K"
  loc_1733873:   unk_43FED1.Execute "Select * from Depart where code='" & Me(8) & "'", var_110, -1
  loc_173387E:   Set var_E4 = var_114
  loc_173389E:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_17338AB:   var_FC = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_17338BB:   var_90 = var_FC & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_17338DC:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_17338EE:   If (var_8C = vbNullString) Then
  loc_17338F1:     Exit Sub
  loc_17338F2:   End If
  loc_17338FA:   If (var_90 = vbNullString) Then
  loc_17338FD:     Exit Sub
  loc_17338FE:   End If
  loc_1733906:   If (var_94 = vbNullString) Then
  loc_1733909:     Exit Sub
  loc_173390A:   End If
  loc_1733920:   unk_43FED1.Execute var_8C, var_110, -1
  loc_173392B:   Set var_BC = var_114
  loc_173394A:   unk_43FED1.Execute var_90, var_110, -1
  loc_1733955:   Set var_C0 = var_114
  loc_1733974:   unk_43FED1.Execute var_94, var_110, -1
  loc_173397F:   Set var_C4 = var_114
  loc_173398A:   Close 1
  loc_1733993:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1733997:   ' Referenced from: 173528C
  loc_17339A6:   If Not(var_BC.EOF) Then
  loc_17339AB:     var_9A = 0
  loc_17339C2:     var_114 = var_E4.Fields
  loc_1733A0B:     var_100 = Proc_6_38_E69628(CVar(var_E4.Fields.Item("RestType")), (Proc_6_38_E69628(CVar(var_114.Item("RestType")), 1, var_9A, var_114) = "Restaurant"), var_114)
  loc_1733A29:     If (var_114 Or (var_100 = "Hall")) Then
  loc_1733A3A:       var_98 = "** " & "BILL" & " **"
  loc_1733A43:     Else
  loc_1733A55:       var_114 = var_E4.Fields
  loc_1733A79:       var_98 = var_114 & Proc_6_38_E69628(CVar(var_114.Item("Name")), "** ") & " **"
  loc_1733A89:     End If
  loc_1733A8F:     If (var_9A = 0) Then
  loc_1733AC0:       var_D0 = Replace(CStr(Space(&H4B)), " ", "-", 1, -1, 0)
  loc_1733AF7:       var_D4 = Replace(CStr(Space(&HF)), " ", "-", 1, -1, 0)
  loc_1733B54:       var_154 = (Chr(&H12) + Chr(&H1B))
  loc_1733B5B:       var_174 = (var_154 + Chr(&H45))
  loc_1733B65:       var_184 = (var_174 + CVar(var_98))
  loc_1733B6C:       var_1A4 = (var_184 + Chr(&H1B))
  loc_1733B73:       var_1C4 = (var_1A4 + Chr(&H46))
  loc_1733B7A:       var_1E4 = (var_1C4 + Chr(&HF))
  loc_1733B80:       Print 1, var_1E4
  loc_1733BDA:       var_164 = CVar(var_BC.Fields.Item("vType")) 'Address
  loc_1733C05:       var_174 = CVar(var_BC.Fields.Item("VNo")) 'Address
  loc_1733C0C:       Proc_6_39_E7D3A0(var_184)
  loc_1733CBD:       var_284 = CVar(var_BC.Fields.Item("RoomNo")) 'Address
  loc_1733CE3:       var_154 = (Chr(&HF) + Space(8))
  loc_1733CED:       var_1C4 = (var_154 + CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(var_164) & "/" & MemVar_1F95168 & "/") & var_184), &H10)))
  loc_1733CF4:       var_1E4 = (var_1C4 + Space(&HA))
  loc_1733CFE:       var_23C = (var_1E4 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &HC)))
  loc_1733D05:       var_25C = (var_23C + Space(&H14))
  loc_1733D0F:       var_2AC = (var_25C + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_284), 5)))
  loc_1733D15:       Print 1, var_2AC
  loc_1733DAE:       If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1733DD7:         Proc_6_39_E7D3A0(var_164, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1733E48:         var_144 = (CVar(vbNullString) + Space(&HC))
  loc_1733E61:         var_184 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(var_164), &HA)))
  loc_1733E79:         var_1B4 = (var_184 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), &H14)))
  loc_1733E85:         var_1C4 = Space(8)
  loc_1733E8D:         var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(var_164) & "/" & MemVar_1F95168 & "/") & var_184), &H10)) + var_1C4)
  loc_1733EA5:         var_22C = (Space(&HA) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_1733EAA:         var_E0 = CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &HC)))
  loc_1733EE2:       End If
  loc_1733F62:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_1733FA6:         var_144 = (CVar(var_E0) + Space(8))
  loc_1733FBE:         var_174 = (Space(8) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("KOTNo"))), &H12)))
  loc_1733FC3:         var_E0 = CStr((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0))
  loc_1733FDD:       End If
  loc_1733FF3:       var_144 = (Chr(&HF) + CVar(var_E0))
  loc_1733FF9:       Print 1, Space(8)
  loc_173401B:       var_144 = (Chr(&HF) + vbNullString)
  loc_1734021:       Print 1, Space(8)
  loc_1734043:       var_144 = (Chr(&HF) + vbNullString)
  loc_1734049:       Print 1, Space(8)
  loc_173405C:       var_9A = (var_9A + 5)
  loc_173405F:     End If
  loc_1734061:     var_B6 = 1
  loc_1734067:     var_C0.MoveFirst
  loc_173406C:     ' Referenced from: 1734BB1
  loc_173407B:     If Not(var_C0.EOF) Then
  loc_17340CB:       Proc_6_39_E7D3A0(var_1C4, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_1734116:       Proc_6_39_E7D3A0(var_284, CVar(var_C0.Fields.Item("qty")), 1)
  loc_1734161:       Proc_6_39_E7D3A0(var_348, CVar(var_C0.Fields.Item("Rate")), 1, 1)
  loc_17341AC:       Proc_6_39_E7D3A0(var_3F4, CVar(var_C0.Fields.Item("Rate")), 1, 1)
  loc_17341ED:       Proc_6_39_E7D3A0(var_450, CVar(var_C0.Fields.Item("Amt")))
  loc_1734238:       var_154 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1)) + Space(1))
  loc_1734251:       var_184 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ItemName").Value), &H24, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_1734265:       var_1A4 = (var_184 + Space(1))
  loc_173427B:       var_214 = CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), &H14)))) 'String
  loc_173427E:       var_22C = (var_9A + var_214)
  loc_1734292:       var_24C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &HC)) + Space(1))
  loc_17342AB:       var_2F8 = (Space(&H14) + CVar(Proc_6_52_EAE084(CStr(Format(var_284, "0.00")), 8)))
  loc_17342BF:       var_318 = (var_2F8 + Space(1))
  loc_17342D8:       var_39C = (var_318 + CVar(Proc_6_52_EAE084(CStr(Format(var_348, "0.00")), 8)))
  loc_17342EC:       var_3BC = (var_39C + Space(1))
  loc_173432A:       var_4D4 = (var_3BC + IIf((var_3F4 = 0), CVar(Proc_6_45_EADFB8("Free", 8, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_450, "0.00")), 8))))
  loc_17343C5:       var_144 = (Chr(&H19) + CVar(CStr(var_4D4)))
  loc_17343CB:       Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1))
  loc_17343DE:       var_9A = (var_9A + 1)
  loc_17343E7:       If (var_9A = &HF) Then
  loc_1734400:         var_144 = (Chr(&HF) + CVar(var_D0))
  loc_1734406:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1))
  loc_1734419:         var_9A = (var_9A + 1)
  loc_1734431:         var_144 = (Chr(&HF) + "Contd.")
  loc_1734437:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1))
  loc_173444A:         var_9A = (var_9A + 1)
  loc_173444D:         ' Referenced from: 1734487
  loc_1734453:         If (var_9A <= &H14) Then
  loc_173446B:           var_144 = (Chr(&HF) + vbNullString)
  loc_1734471:           Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1))
  loc_1734484:           var_9A = (var_9A + 1)
  loc_1734487:           GoTo loc_173444D
  loc_173448A:         End If
  loc_1734490:         var_9C = (var_9C + 1)
  loc_17344A8:         var_144 = (Chr(&HF) + vbNullString)
  loc_17344AE:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1))
  loc_17344C1:         var_9A = (var_9A + 1)
  loc_17344D9:         var_144 = (Chr(&HF) + vbNullString)
  loc_17344DF:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1))
  loc_17344F2:         var_9A = (var_9A + 1)
  loc_173450A:         var_144 = (Chr(&HF) + vbNullString)
  loc_1734510:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 3, 1))
  loc_1734523:         var_9A = (var_9A + 1)
  loc_173457C:         var_1E8 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("U_Name")), var_9A, var_9A, var_9A, 1), &HA, var_9A, var_9A)
  loc_1734585:         var_154 = (Chr(&HF) + Space(&HF))
  loc_173458F:         var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_1E8))
  loc_1734595:         Print 1, var_184
  loc_17345BC:         var_9A = (var_9A + 1)
  loc_17345BF:         ' Referenced from: 17345F9
  loc_17345C5:         If (var_9A <= &H24) Then
  loc_17345DD:           var_144 = (Chr(&HF) + vbNullString)
  loc_17345E3:           Print 1, Space(&HF)
  loc_17345F6:           var_9A = (var_9A + 1)
  loc_17345F9:           GoTo loc_17345BF
  loc_17345FC:         End If
  loc_1734650:         var_154 = (Chr(&H12) + Chr(&H1B))
  loc_1734657:         var_174 = (CVar(var_BC.Fields.Item("KOTNo")) + Chr(&H45))
  loc_1734661:         var_184 = (CVar(var_1E8) + CVar(var_98))
  loc_1734668:         var_1A4 = (var_184 + Chr(&H1B))
  loc_173466F:         var_1C4 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + Chr(&H46))
  loc_1734676:         var_1E4 = (var_1C4 + Chr(&HF))
  loc_173467C:         Print 1, Format(var_1C4, "0.00")
  loc_17346D6:         var_164 = CVar(var_BC.Fields.Item("vType")) 'Address
  loc_1734708:         Proc_6_39_E7D3A0(var_184, CVar(var_BC.Fields.Item("VNo")), var_9A)
  loc_17347DF:         var_154 = (Chr(&HF) + Space(8))
  loc_17347E6:         var_1B4 = CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(var_164, var_9A, var_9A) & "/" & MemVar_1F95168 & "/") & var_184), &H10)) 'String
  loc_17347E9:         var_1C4 = (CVar(var_BC.Fields.Item("KOTNo")) + var_1B4)
  loc_17347F0:         var_1E4 = (var_1C4 + Space(&HA))
  loc_17347FA:         var_23C = (Format(var_1C4, "0.00") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC)))
  loc_1734801:         var_25C = (Space(1) + Space(&H14))
  loc_173480B:         var_2AC = (CVar(var_C0.Fields.Item("qty")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_1734811:         Print 1, Format(CVar(var_BC.Fields.Item("RoomNo")), "0.00")
  loc_17348AA:         If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_17348D3:           Proc_6_39_E7D3A0(var_164, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1734944:           var_144 = (CVar(vbNullString) + Space(&HC))
  loc_173495D:           var_184 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(var_164), &HA)))
  loc_1734975:           var_1B4 = (var_184 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), &H14)))
  loc_1734981:           var_1C4 = Space(8)
  loc_1734989:           var_1D4 = (var_1B4 + var_1C4)
  loc_17349A1:           var_22C = (Space(&HA) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_17349A6:           var_E0 = CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC)))
  loc_17349DE:         End If
  loc_1734A5E:         If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_1734AA2:           var_144 = (CVar(var_E0) + Space(8))
  loc_1734ABA:           var_174 = (Space(8) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("KOTNo"))), &H12)))
  loc_1734ABF:           var_E0 = CStr((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0))
  loc_1734AD9:         End If
  loc_1734AEF:         var_144 = (Chr(&HF) + CVar(var_E0))
  loc_1734AF5:         Print 1, Space(8)
  loc_1734B17:         var_144 = (Chr(&HF) + vbNullString)
  loc_1734B1D:         Print 1, Space(8)
  loc_1734B3F:         var_144 = (Chr(&HF) + vbNullString)
  loc_1734B45:         Print 1, Space(8)
  loc_1734B54:         var_9A = 5
  loc_1734B57:       End If
  loc_1734B84:       Proc_6_39_E7D3A0(Space(8), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC))
  loc_1734B8C:       var_154 = (var_9A + Space(8))
  loc_1734B91:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_1734BA6:       var_B6 = (var_B6 + 1)
  loc_1734BAC:       var_C0.MoveNext
  loc_1734BB1:       GoTo loc_173406C
  loc_1734BB4:     End If
  loc_1734BD4:     var_154 = (Chr(&HF) + Space(&H3C))
  loc_1734BDE:     var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_1734BE4:     Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("KOTNo"))), &H12))
  loc_1734BFB:     var_9A = (var_9A + 1)
  loc_1734C01:     var_C4.MoveFirst
  loc_1734C06:     ' Referenced from: 17350DB
  loc_1734C15:     If Not(var_C4.EOF) Then
  loc_1734C42:       var_4E4 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_1734C60:       If (var_4E4 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_1734CEC:         Proc_6_39_E7D3A0(var_1C4, CVar(var_C4.Fields.Item("Amount")), var_B6)
  loc_1734D2C:         var_154 = (Chr(&HF) + Space(&H2C))
  loc_1734D36:         var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_9A)))
  loc_1734D3D:         var_1A4 = (var_184 + Space(4))
  loc_1734D47:         var_22C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), &HA, 1)))
  loc_1734D4D:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC))
  loc_1734D8C:         var_9A = (var_9A + 1)
  loc_1734D92:       Else
  loc_1734DA5:         If (var_4E4 = CVar(MemVar_1F95078 & "NET")) Then
  loc_1734DBD:           var_144 = Space(&H3C)
  loc_1734DC8:           var_154 = (Chr(&HF) + var_144)
  loc_1734DD2:           var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_1734DD8:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_1734DEF:           var_9A = (var_9A + 1)
  loc_1734E18:           Proc_6_39_E7D3A0(var_144, CVar(var_C4.Fields.Item("Amount")), var_9A, var_9A)
  loc_1734E32:           If (var_144 > 0) Then
  loc_1734E4A:             var_144 = Space(&H2C)
  loc_1734EBE:             Proc_6_39_E7D3A0(var_1C4, CVar(var_C4.Fields.Item("Amount")))
  loc_1734EFE:             var_154 = (Chr(&HF) + var_144)
  loc_1734F08:             var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_1734F0F:             var_1A4 = (var_184 + Space(4))
  loc_1734F19:             var_22C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), &HA, 1)))
  loc_1734F1F:             Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC))
  loc_1734F5E:             var_9A = (var_9A + 1)
  loc_1734F61:           End If
  loc_1734F64:         Else
  loc_1734F8A:           Proc_6_39_E7D3A0(var_144, CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_1734FA4:           If (var_144 > 0) Then
  loc_1735030:             Proc_6_39_E7D3A0(var_1C4, CVar(var_C4.Fields.Item("Amount")))
  loc_1735070:             var_154 = (Chr(&HF) + Space(&H2C))
  loc_173507A:             var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_1735081:             var_1A4 = (var_184 + Space(4))
  loc_173508B:             var_22C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), &HA, 1)))
  loc_1735091:             Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC))
  loc_17350D0:             var_9A = (var_9A + 1)
  loc_17350D3:           End If
  loc_17350D3:         End If
  loc_17350D3:       End If
  loc_17350D6:       var_C4.MoveNext
  loc_17350DB:       GoTo loc_1734C06
  loc_17350DE:       ' Referenced from: 1735118
  loc_17350DE:     End If
  loc_17350E4:     If (var_9A <= &H14) Then
  loc_17350FC:       var_144 = (Chr(&HF) + vbNullString)
  loc_1735102:       Print 1, Space(&H2C)
  loc_1735115:       var_9A = (var_9A + 1)
  loc_1735118:       GoTo loc_17350DE
  loc_173511B:     End If
  loc_1735130:     var_144 = (Chr(&HF) + vbNullString)
  loc_1735136:     Print 1, Space(&H2C)
  loc_1735149:     var_9A = (var_9A + 1)
  loc_1735161:     var_144 = (Chr(&HF) + vbNullString)
  loc_1735167:     Print 1, Space(&H2C)
  loc_173517A:     var_9A = (var_9A + 1)
  loc_1735192:     var_144 = (Chr(&HF) + vbNullString)
  loc_1735198:     Print 1, Space(&H2C)
  loc_17351AB:     var_9A = (var_9A + 1)
  loc_17351E7:     var_164 = CVar(var_BC.Fields.Item("U_Name")) 'Address
  loc_173520D:     var_154 = (Chr(&HF) + Space(&HF))
  loc_1735217:     var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_164, var_9A, var_9A, var_9A, var_9A), &HA, var_9A)))
  loc_173521D:     Print 1, var_184
  loc_1735244:     var_9A = (var_9A + 1)
  loc_1735247:     ' Referenced from: 1735281
  loc_173524D:     If (var_9A <= &H24) Then
  loc_1735265:       var_144 = (Chr(&HF) + vbNullString)
  loc_173526B:       Print 1, Space(&HF)
  loc_173527E:       var_9A = (var_9A + 1)
  loc_1735281:       GoTo loc_1735247
  loc_1735284:     End If
  loc_1735287:     var_BC.MoveNext
  loc_173528C:     GoTo loc_1733997
  loc_173528F:   End If
  loc_1735291:   Close 1
  loc_173529A:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_17352CF:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_17352D5:   Print 1, var_144
  loc_17352EB:   Close 1
  loc_17352F5:   If (MemVar_1F953BC = "Y") Then
  loc_1735311:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_173531B:   Else
  loc_1735334:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_173533B:   End If
  loc_1735340:   Set var_BC = Nothing
  loc_1735348:   Set var_C0 = Nothing
  loc_1735350:   Set var_C4 = Nothing
  loc_1735358:   Set var_E4 = Nothing
  loc_173535E: Else
  loc_1735377:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, CVar(var_BC.Fields.Item("KOTNo")), var_164)
  loc_1735387: End If
  loc_1735387: Exit Sub
  loc_1735388: ' Referenced from: 173380C
  loc_1735388: Proc_6_60_E63754(var_9A, var_9A, 1)
  loc_173538D: Exit Sub
End Sub

Public Sub Proc_260_19_172FC7C
  'Data Table: 43FECC
  Dim MemVar_629D24 As Recordset15
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_E4 As Recordset15
  Dim var_114 As Fields15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_E0 As Recordset15
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_174 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_224 As Variant
  Dim var_2D0 As Variant
  Dim var_37C As Variant
  Dim var_1B0 As Variant
  Dim var_204 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_334 As Variant
  Dim var_354 As Variant
  Dim var_390 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_45C As Variant
  Dim var_258 As Variant
  Dim var_298 As Variant
  Dim var_304 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_4C8 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_172E110: On Error Goto loc_172FC76
  loc_172E11E: MemVar_629D24.Filter = "ModType='POS'"
  loc_172E139: If (MemVar_629D24.RecordCount > 0) Then
  loc_172E13F:   MemVar_1F953C4 = "N"
  loc_172E146:   MemVar_1F953C8 = "N"
  loc_172E14D:   MemVar_1F953CC = "K"
  loc_172E177:   unk_43FED1.Execute "Select * from Depart where code='" & Me(8) & "'", var_110, -1
  loc_172E182:   Set var_E4 = var_114
  loc_172E1A2:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_172E1BC:   If (var_E4.RecordCount > 0) Then
  loc_172E1D1:     var_114 = var_E4.Fields
  loc_172E1E1:     var_110 = var_114.Item("KotYN").Value
  loc_172E1FB:     If (var_110 = "Y") Then
  loc_172E205:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_172E225:       var_90 = var_FC & Me(12) & "' and KOT.CONTRADOCID='" & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_172E236:     Else
  loc_172E23D:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_172E24D:       var_90 = var_FC & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_172E257:     End If
  loc_172E257:     GoTo loc_172E25A
  loc_172E25A:     ' Referenced from: 172E257
  loc_172E25A:   End If
  loc_172E271:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_172E283:   If (var_8C = vbNullString) Then
  loc_172E286:     Exit Sub
  loc_172E287:   End If
  loc_172E28F:   If (var_90 = vbNullString) Then
  loc_172E292:     Exit Sub
  loc_172E293:   End If
  loc_172E29B:   If (var_94 = vbNullString) Then
  loc_172E29E:     Exit Sub
  loc_172E29F:   End If
  loc_172E2B5:   unk_43FED1.Execute var_8C, var_110, -1
  loc_172E2C0:   Set var_BC = var_114
  loc_172E2DF:   unk_43FED1.Execute var_90, var_110, -1
  loc_172E2EA:   Set var_C0 = var_114
  loc_172E309:   unk_43FED1.Execute var_94, var_110, -1
  loc_172E314:   Set var_C4 = var_114
  loc_172E31F:   var_AE = &HA
  loc_172E324:   Close 1
  loc_172E32D:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_172E355:   unk_43FED1.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_110, -1
  loc_172E360:   Set var_E0 = var_114
  loc_172E370:   ' Referenced from: 172FACC
  loc_172E37F:   If Not(var_BC.EOF) Then
  loc_172E384:     var_9A = 0
  loc_172E392:     If (var_9A = 0) Then
  loc_172E3D3:       var_154 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_172E3D6:       var_164 = (Chr(&HF) + var_154)
  loc_172E3EA:       var_184 = (var_164 + Chr(&H12))
  loc_172E3EF:       var_D0 = CStr(var_184)
  loc_172E432:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_172E440:       Print 1, vbNullString
  loc_172E44B:       Print 1, vbNullString
  loc_172E456:       Print 1, vbNullString
  loc_172E461:       Print 1, vbNullString
  loc_172E46C:       Print 1, vbNullString
  loc_172E477:       Print 1, vbNullString
  loc_172E482:       Print 1, vbNullString
  loc_172E48D:       Print 1, vbNullString
  loc_172E498:       Print 1, vbNullString
  loc_172E4B2:       If (var_E0.RecordCount > 0) Then
  loc_172E4C4:         var_114 = var_E0.Fields
  loc_172E4FF:         If (Trim(CVar(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), 1, var_9A, var_114, var_AE))) = vbNullString) Then
  loc_172E507:           Print 1, vbNullString
  loc_172E510:         Else
  loc_172E51F:           var_114 = var_E0.Fields
  loc_172E561:           Print 1, Proc_260_1_10A4640(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), var_114, var_114), "E", 137)
  loc_172E57A:         End If
  loc_172E57D:       Else
  loc_172E582:         Print 1, vbNullString
  loc_172E588:       End If
  loc_172E59A:       Print 1, Chr(&H12)
  loc_172E5CC:       var_114 = var_BC.Fields
  loc_172E60E:       Proc_6_39_E7D3A0(var_1B0, CVar(var_BC.Fields.Item("VNo")))
  loc_172E644:       var_1F4 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_114.Item("vType")), var_114) & "/" & MemVar_1F95168 & "/") & var_1B0), &H10)
  loc_172E64F:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_172E656:       var_164 = (CVar(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), 1, var_9A, var_114, var_AE)) + Chr(&H12))
  loc_172E660:       var_1F0 = (var_164 + CVar(var_1F4))
  loc_172E666:       Print 1, var_1F0
  loc_172E83F:       Proc_6_39_E7D3A0(var_438, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_172E862:       var_138 = (Chr(&HF) + "Date : ")
  loc_172E869:       var_164 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Bill_Header")), 1, var_9A, var_BC.Fields, var_AE)) + Chr(&H12))
  loc_172E873:       var_1B0 = (var_164 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &H12)))
  loc_172E87A:       var_1D0 = (var_1B0 + Chr(&HF))
  loc_172E883:       var_1E0 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_BC.Fields) & "/" & MemVar_1F95168 & "/") & var_1B0 + "Time : ")
  loc_172E88A:       var_204 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")))) + Chr(&H12))
  loc_172E894:       var_248 = (var_204 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_172E89B:       var_268 = (var_248 + Chr(&HF))
  loc_172E8A4:       var_288 = (var_268 + "Steward :")
  loc_172E8AB:       var_2A8 = (var_288 + Chr(&H12))
  loc_172E8B5:       var_2F4 = (var_2A8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_172E8BC:       var_314 = (var_2F4 + Chr(&HF))
  loc_172E8C5:       var_334 = (var_314 + "Table : ")
  loc_172E8CC:       var_354 = (var_334 + Chr(&H12))
  loc_172E8D6:       var_3A0 = (var_354 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_172E8DD:       var_3C0 = (var_3A0 + Chr(&HF))
  loc_172E8E6:       var_3E0 = (var_3C0 + "Covers: ")
  loc_172E8ED:       var_400 = (var_3E0 + Chr(&H12))
  loc_172E8F7:       var_45C = (var_400 + CVar(Proc_6_45_EADFB8(CStr(var_438), 7)))
  loc_172E8FD:       Print 1, var_45C
  loc_172E989:       Print 1, var_D0
  loc_172EA40:       var_3B0 = Space(&HA)
  loc_172EA4D:       var_3F0 = Chr(&H12)
  loc_172EA58:       var_154 = (Chr(&HF) + Space(3))
  loc_172EA61:       var_164 = (Chr(&H12) + "S.No")
  loc_172EA68:       var_184 = (var_164 + Space(3))
  loc_172EA6F:       var_1C0 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate"))), &H12)) + Space(4))
  loc_172EA78:       var_1D0 = (Chr(&HF) + "KOT#")
  loc_172EA7F:       var_1F0 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_BC.Fields) & "/" & MemVar_1F95168 & "/") & Space(4) + Space(4))
  loc_172EA86:       var_224 = (Chr(&H12) + Space(5))
  loc_172EA8F:       var_238 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_172EA96:       var_258 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_172EA9D:       var_288 = (Chr(&HF) + Space(&H15))
  loc_172EAA6:       var_298 = (var_288 + "ITEM NAME")
  loc_172EAAD:       var_2D0 = (Chr(&H12) + Space(&H15))
  loc_172EAB4:       var_2F4 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_172EABD:       var_304 = (var_2F4 + "QTY")
  loc_172EAC4:       var_334 = (Chr(&HF) + Space(5))
  loc_172EACB:       var_354 = (var_334 + Space(5))
  loc_172EAD4:       var_37C = (var_354 + "RATE")
  loc_172EADB:       var_3A0 = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_172EAE2:       var_3C0 = (var_3A0 + var_3B0)
  loc_172EAEB:       var_3E0 = (var_3C0 + "AMOUNT")
  loc_172EAF2:       var_400 = (var_3E0 + var_3F0)
  loc_172EAF8:       Print 1, var_400
  loc_172EB4E:       Print 1, var_D0
  loc_172EB56:       var_9A = &H10
  loc_172EB59:     End If
  loc_172EB5B:     var_B6 = 1
  loc_172EB61:     var_C0.MoveFirst
  loc_172EB66:     ' Referenced from: 172F357
  loc_172EB75:     If Not(var_C0.EOF) Then
  loc_172EB7E:       If (var_9A = 0) Then
  loc_172EBAF:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_172EBE6:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_172EC4D:         Proc_6_39_E7D3A0(var_164, CVar(var_BC.Fields.Item("VNo")))
  loc_172EC83:         var_1F4 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F95168 & "/") & var_164), &H10)
  loc_172EC8F:         var_1C0 = (Space(8) + CVar(var_1F4))
  loc_172EC95:         Print 1, Chr(&HF)
  loc_172ECC9:         Print 1, vbNullString
  loc_172EE32:         Proc_6_39_E7D3A0(var_2F4, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_172EE56:         var_164 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_172EE5D:         var_184 = (var_164 + Space(4))
  loc_172EE67:         var_1D0 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F95168 & "/") & var_164 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_172EE6E:         var_1F0 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_BC.Fields) & "/" & MemVar_1F95168 & "/") & CVar(var_BC.Fields.Item("VTIME")) + Space(6))
  loc_172EE78:         var_238 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_172EE7F:         var_258 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_172EE89:         var_298 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_172EE90:         var_2D0 = (Chr(&H12) + Space(6))
  loc_172EE97:         var_304 = CVar(Proc_6_45_EADFB8(CStr(var_2F4), 7)) 'String
  loc_172EE9A:         var_314 = (CVar(var_BC.Fields.Item("WaiterName")) + var_304)
  loc_172EEA0:         Print 1, Space(5)
  loc_172EF0E:         Print 1, vbNullString
  loc_172EF19:         Print 1, vbNullString
  loc_172EF21:         var_9A = 5
  loc_172EF24:       End If
  loc_172EF9C:       var_204 = var_C0.Fields.Item("ItemName").Value
  loc_172EFC7:       Proc_6_39_E7D3A0(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_172F012:       Proc_6_39_E7D3A0(var_304, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_172F05D:       Proc_6_39_E7D3A0(var_3B0, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_172F09E:       Proc_6_39_E7D3A0(var_3F0, CVar(var_C0.Fields.Item("Amt")))
  loc_172F0E9:       var_154 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) + Space(4))
  loc_172F0FE:       var_174 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_172F101:       var_184 = (1 + var_174)
  loc_172F115:       var_1C0 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F95168 & "/") & CVar(var_C0.Fields.Item("KOTNo")) + Space(2))
  loc_172F12A:       var_1E0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_172F12D:       var_1F0 = (1 + var_1E0)
  loc_172F146:       var_238 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(CStr(var_204), &H1E)))
  loc_172F15F:       var_2A8 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_172F173:       var_2E4 = (Space(6) + Space(1))
  loc_172F18C:       var_354 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(Format(var_304, "0.00")), 7)))
  loc_172F1A0:       var_390 = (var_354 + Space(1))
  loc_172F1DE:       var_4C8 = (Space(5) + IIf((var_3B0 = 0), CVar(Proc_6_45_EADFB8("Free", &HB, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_3F0, "0.00")), &HB))))
  loc_172F26C:       Print 1, CStr(var_4C8)
  loc_172F278:       var_9A = (var_9A + 1)
  loc_172F285:       If (var_9A = (&H3C - var_AE)) Then
  loc_172F28E:         var_9C = (var_9C + 1)
  loc_172F2A6:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_172F2C1:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..."
  loc_172F2DA:         var_9A = (var_9A + 1)
  loc_172F2EF:         Print 1, Chr(&HC)
  loc_172F2FA:         var_9A = 0
  loc_172F2FD:       End If
  loc_172F32A:       Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_172F332:       var_154 = (var_9A + CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)))
  loc_172F337:       var_CC = CSng(CVar(CStr(1)))
  loc_172F34C:       var_B6 = (var_B6 + 1)
  loc_172F352:       var_C0.MoveNext
  loc_172F357:       GoTo loc_172EB66
  loc_172F35A:     End If
  loc_172F364:     If (var_9A < (&H3C - var_AE)) Then
  loc_172F367:       ' Referenced from: 172F38B
  loc_172F374:       If (var_9A <> ((&H3C - var_AE) + 1)) Then
  loc_172F37C:         Print 1, vbNullString
  loc_172F388:         var_9A = (var_9A + 1)
  loc_172F38B:         GoTo loc_172F367
  loc_172F38E:       End If
  loc_172F38E:     End If
  loc_172F391:     var_C4.MoveFirst
  loc_172F3C8:     Print 1, Proc_6_52_EAE084(CStr(Left(var_D0, &H37)), &H67, var_9A, var_B6)
  loc_172F3DA:     ' Referenced from: 172FAC1
  loc_172F3E9:     If Not(var_C4.EOF) Then
  loc_172F416:       var_4D8 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_172F434:       If (var_4D8 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_172F4D6:         Proc_6_39_E7D3A0(var_204, CVar(var_C4.Fields.Item("Amount")))
  loc_172F4EA:         var_224 = "0.00"
  loc_172F519:         var_154 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(vbNullString, &H54, var_CC)))
  loc_172F520:         var_174 = (CVar(CStr(1)) + Chr(&H12))
  loc_172F52A:         var_1C0 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_172F531:         var_1E0 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_172F53B:         var_258 = (var_1E0 + CVar(Proc_6_52_EAE084(CStr(Format(var_204, var_224)), &HA, 1)))
  loc_172F541:         Print 1, Chr(&HF)
  loc_172F585:       Else
  loc_172F598:         If (var_4D8 = CVar(MemVar_1F95078 & "NET")) Then
  loc_172F5B1:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_172F5B7:           Print 1, CVar(Proc_6_45_EADFB8(vbNullString, &H54, var_CC))
  loc_172F5D8:           If (var_E0.RecordCount > 0) Then
  loc_172F625:             If (Trim(CVar(Proc_6_38_E69628(CVar(var_E0.Fields.Item("Bill_Footer")), 1))) = vbNullString) Then
  loc_172F6D3:               Proc_6_39_E7D3A0(var_224, CVar(var_C4.Fields.Item("Amount")))
  loc_172F716:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Space(1)), &H54)))
  loc_172F71D:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_172F727:               var_1D0 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_172F72E:               var_1F0 = (Space(4) + Space(4))
  loc_172F738:               var_268 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(Format(var_224, "0.00")), &HA, 1)))
  loc_172F73E:               Print 1, "0.00"
  loc_172F784:             Else
  loc_172F7B0:               var_138 = CVar(var_E0.Fields.Item("Bill_Footer")) 'Address
  loc_172F821:               var_1E0 = Space(4)
  loc_172F84C:               Proc_6_39_E7D3A0(var_224, CVar(var_C4.Fields.Item("Amount")))
  loc_172F88F:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_138, 1), &H54)))
  loc_172F896:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_172F8A0:               var_1D0 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_172F8A7:               var_1F0 = (Space(4) + var_1E0)
  loc_172F8B1:               var_268 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(Format(var_224, "0.00")), &HA, 1)))
  loc_172F8B7:               Print 1, "0.00"
  loc_172F8FE:             End If
  loc_172F901:           Else
  loc_172F906:             Print 1, vbNullString
  loc_172F90C:           End If
  loc_172F93E:           Print 1, Proc_6_52_EAE084(CStr(Left(var_D0, &H37)), &H67, 1)
  loc_172F953:         Else
  loc_172F979:           Proc_6_39_E7D3A0(var_138, CVar(var_C4.Fields.Item("Amount")))
  loc_172F993:           If (var_138 > 0) Then
  loc_172F9D2:             var_164 = var_C4.Fields.Item("DispName").Value
  loc_172FA1F:             Proc_6_39_E7D3A0(var_1E0, CVar(var_C4.Fields.Item("Amount")))
  loc_172FA5F:             var_154 = (Chr(&H12) + Space(&H31))
  loc_172FA69:             var_184 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(Space(&H31), 1), &H54)) + CVar(Proc_6_45_EADFB8(CStr(var_164), &HF)))
  loc_172FA70:             var_1C0 = (var_C4.Fields.Item("DispName").Value + Space(4))
  loc_172FA7A:             var_238 = (CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)) + CVar(Proc_6_52_EAE084(CStr(Format(var_1E0, "0.00")), &HA, 1)))
  loc_172FA80:             Print 1, "0.00"
  loc_172FAB9:           End If
  loc_172FAB9:         End If
  loc_172FAB9:       End If
  loc_172FABC:       var_C4.MoveNext
  loc_172FAC1:       GoTo loc_172F3DA
  loc_172FAC4:     End If
  loc_172FAC7:     var_BC.MoveNext
  loc_172FACC:     GoTo loc_172E370
  loc_172FACF:   End If
  loc_172FB04:   var_154 = (Space(&HF) + CVar(Proc_260_1_10A4640("* THANKS FOR YOUR VISIT *", "A", &H4E)))
  loc_172FB0A:   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Proc_260_1_10A4640("* THANKS FOR YOUR VISIT *", "A", &H4E)), 1), &H54))
  loc_172FB24:   Print 1
  loc_172FB2C:   Print 1
  loc_172FB34:   Print 1
  loc_172FB4F:   var_138 = (Space(&H48) + "CASHIER")
  loc_172FB55:   Print 1, CVar(Proc_260_1_10A4640("* THANKS FOR YOUR VISIT *", "A", &H4E))
  loc_172FB74:   Print 1, Chr(&HC)
  loc_172FB7F:   Close 1
  loc_172FB88:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_172FBBD:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_629D24.Fields.Item("Printer").Value 
  loc_172FBC3:   Print 1, var_138
  loc_172FBD9:   Close 1
  loc_172FBE3:   If (MemVar_1F953BC = "Y") Then
  loc_172FBFF:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_172FC09:   Else
  loc_172FC22:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_172FC29:   End If
  loc_172FC2E:   Set var_BC = Nothing
  loc_172FC36:   Set var_C0 = Nothing
  loc_172FC3E:   Set var_C4 = Nothing
  loc_172FC46:   Set var_E4 = Nothing
  loc_172FC4C: Else
  loc_172FC65:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_138, 1), &H54)), var_164)
  loc_172FC75: End If
  loc_172FC75: Exit Sub
  loc_172FC76: ' Referenced from: 172E110
  loc_172FC76: Proc_6_60_E63754(1, var_9A)
  loc_172FC7B: Exit Sub
End Sub

Public Sub Proc_260_20_1596E88(arg_C, arg_10, arg_14) '1596E88
  'Data Table: 43FECC
  Dim var_D4 As Variant
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim unk_44009F As Connection15
  Dim MemVar_629D24 As Recordset15
  Dim var_BC As Variant
  Dim var_144 As Variant
  loc_1595CE3: Me(8) = arg_C
  loc_1595CEB: Me(12) = arg_10
  loc_1595CF8: If (arg_14 = "Y") Then
  loc_1595CFD:   Me(16) = &HFF
  loc_1595D05: Else
  loc_1595D07:   Me(16) = 0
  loc_1595D0C: End If
  loc_1595D12: var_D4 = 0
  loc_1595D4F: unk_43FED1.Execute "Select IsNull(Max(RestType),'') from Depart where SITE_CODE='" & MemVar_1F95078 & "' AND Code='" & Me(8) & "'", var_BC, -1
  loc_1595D5F: var_D4 = var_C4.Item(var_C4)
  loc_1595D67: var_D8 = var_D8.Value
  loc_1595D70: Me(4) = CStr(var_E8)
  loc_1595DC5: unk_44009F.Execute "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F95078 & "' AND RestCode='" & Me(8) & "'", var_BC, -1
  loc_1595DD0: Me(0) = var_C0.Fields
  loc_1595DFD: If (MemVar_629D24.RecordCount > 0) Then
  loc_1595E05:   MemVar_629D24.MoveFirst
  loc_1595E0A:   ' Referenced from: 1596E77
  loc_1595E0A: End If
  loc_1595E1B: If Not(MemVar_629D24.EOF) Then
  loc_1595E5C:   If (MemVar_629D24.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL CLIF TOP") Then
  loc_1595E73:     var_C0 = MemVar_629D24.Fields
  loc_1595E83:     var_BC = var_C0.Item("AutoPrint").Value
  loc_1595E9D:     If (var_BC = "Yes") Then
  loc_1595EA0:       Proc_260_8_1629FCC(var_C0)
  loc_1595ECB:       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595EE0:       arg_14 = "Y"
  loc_1595EE4:       Exit Sub
  loc_1595EE8:     Else
  loc_1595EFB:       var_BC = "Print Bill ?"
  loc_1595F17:       If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595F1A:         Proc_260_8_1629FCC(var_C0)
  loc_1595F45:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595F5A:         arg_14 = "Y"
  loc_1595F61:       Else
  loc_1595F61:         Exit Sub
  loc_1595F62:       End If
  loc_1595F62:     End If
  loc_1595F62:   End If
  loc_1595FA0:   If (MemVar_629D24.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING") Then
  loc_1595FB7:     var_C0 = MemVar_629D24.Fields
  loc_1595FC7:     var_BC = var_C0.Item("AutoPrint").Value
  loc_1595FE1:     If (var_BC = "Yes") Then
  loc_1595FE4:       Proc_260_15_181EAA0(var_C0)
  loc_159600F:       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596024:       arg_14 = "Y"
  loc_159602B:     Else
  loc_159603E:       var_BC = "Print Bill ?"
  loc_159605A:       If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_159605D:         Proc_260_15_181EAA0(var_C0)
  loc_1596088:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159609D:         arg_14 = "Y"
  loc_15960A4:       Else
  loc_15960A4:         Exit Sub
  loc_15960A5:       End If
  loc_15960A5:     End If
  loc_15960A8:   Else
  loc_15960E6:     If (MemVar_629D24.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING (WITH EJECT)") Then
  loc_15960FD:       var_C0 = MemVar_629D24.Fields
  loc_159610D:       var_BC = var_C0.Item("AutoPrint").Value
  loc_1596127:       If (var_BC = "Yes") Then
  loc_159612A:         Proc_260_16_18CB6D4(var_C0)
  loc_1596155:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159616A:         arg_14 = "Y"
  loc_1596171:       Else
  loc_1596184:         var_BC = "Print Bill ?"
  loc_15961A0:         If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_15961A3:           Proc_260_16_18CB6D4(var_C0)
  loc_15961CE:           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15961E3:           arg_14 = "Y"
  loc_15961EA:         Else
  loc_15961EA:           Exit Sub
  loc_15961EB:         End If
  loc_15961EB:       End If
  loc_15961EE:     Else
  loc_1596216:       var_E8 = Trim(CVar(MemVar_629D24.Fields.Item("ModDescription")))
  loc_1596230:       If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING") Then
  loc_1596247:         var_C0 = MemVar_629D24.Fields
  loc_1596257:         var_BC = var_C0.Item("AutoPrint").Value
  loc_1596271:         If (var_BC = "Yes") Then
  loc_1596274:           Proc_260_4_18335A4(var_C0)
  loc_159629F:           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15962B4:           arg_14 = "Y"
  loc_15962BB:         Else
  loc_15962CE:           var_BC = "Print Bill ?"
  loc_15962EA:           If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_15962ED:             Proc_260_4_18335A4(var_C0)
  loc_1596318:             unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159632D:             arg_14 = "Y"
  loc_1596334:           Else
  loc_1596334:             Exit Sub
  loc_1596335:           End If
  loc_1596335:         End If
  loc_1596338:       Else
  loc_1596360:         var_E8 = Trim(CVar(MemVar_629D24.Fields.Item("ModDescription")))
  loc_159637A:         If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING (THERMAL PRINT)") Then
  loc_1596391:           var_C0 = MemVar_629D24.Fields
  loc_15963A1:           var_BC = var_C0.Item("AutoPrint").Value
  loc_15963BB:           If (var_BC = "Yes") Then
  loc_15963BE:             Proc_260_5_195CEDC(var_C0)
  loc_15963E9:             unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15963FE:             arg_14 = "Y"
  loc_1596405:           Else
  loc_1596418:             var_BC = "Print Bill ?"
  loc_1596434:             If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1596437:               Proc_260_5_195CEDC(var_C0)
  loc_1596462:               unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596477:               arg_14 = "Y"
  loc_159647E:             Else
  loc_159647E:               Exit Sub
  loc_159647F:             End If
  loc_159647F:           End If
  loc_1596482:         Else
  loc_15964C0:           If (MemVar_629D24.Fields.Item("ModDescription").Value = "BILL DOS PRE PRINTED") Then
  loc_15964D7:             var_C0 = MemVar_629D24.Fields
  loc_15964E7:             var_BC = var_C0.Item("AutoPrint").Value
  loc_1596501:             If (var_BC = "Yes") Then
  loc_1596504:               Proc_260_6_1624904(var_C0)
  loc_159652F:               unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596544:               arg_14 = "Y"
  loc_159654B:             Else
  loc_159655E:               var_BC = "Print Bill ?"
  loc_159657A:               If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_159657D:                 Proc_260_6_1624904(var_C0)
  loc_15965A8:                 unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15965BD:                 arg_14 = "Y"
  loc_15965C4:               Else
  loc_15965C4:                 Exit Sub
  loc_15965C5:               End If
  loc_15965C5:             End If
  loc_15965C8:           Else
  loc_1596622:             var_110 = MemVar_629D24.Fields.Item("ModDescription").Value
  loc_1596634:             var_144 = (MemVar_629D24.Fields.Item("ModDescription").Value = "BILL DOS PRE PAPER RUNNING (HOTEL OMEGA)") Or (var_110 = "PREPRINTED FORMAT 1")
  loc_159664C:             If CBool(var_144) Then
  loc_1596663:               var_C0 = MemVar_629D24.Fields
  loc_1596673:               var_BC = var_C0.Item("AutoPrint").Value
  loc_159668D:               If (var_BC = "Yes") Then
  loc_1596690:                 Proc_260_18_1735390(var_C0)
  loc_15966BB:                 unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15966D0:                 arg_14 = "Y"
  loc_15966D7:               Else
  loc_15966EA:                 var_BC = "Print Bill ?"
  loc_1596706:                 If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1596709:                   Proc_260_18_1735390(var_C0)
  loc_1596734:                   unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596749:                   arg_14 = "Y"
  loc_1596750:                 Else
  loc_1596750:                   Exit Sub
  loc_1596751:                 End If
  loc_1596751:               End If
  loc_1596754:             Else
  loc_15967AE:               var_110 = MemVar_629D24.Fields.Item("ModDescription").Value
  loc_15967C0:               var_144 = (MemVar_629D24.Fields.Item("ModDescription").Value = "RESTAURANT BILL DOS PREPRINTED (HOTEL YATRIK)") Or (var_110 = "PREPRINTED FORMAT 6")
  loc_15967D8:               If CBool(var_144) Then
  loc_15967EF:                 var_C0 = MemVar_629D24.Fields
  loc_15967FF:                 var_BC = var_C0.Item("AutoPrint").Value
  loc_1596819:                 If (var_BC = "Yes") Then
  loc_159681C:                   Proc_260_19_172FC7C(var_C0)
  loc_1596847:                   unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159685C:                   arg_14 = "Y"
  loc_1596863:                 Else
  loc_1596876:                   var_BC = "Print Bill ?"
  loc_1596892:                   If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1596895:                     Proc_260_19_172FC7C(var_C0)
  loc_15968C0:                     unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15968D5:                     arg_14 = "Y"
  loc_15968DC:                   Else
  loc_15968DC:                     Exit Sub
  loc_15968DD:                   End If
  loc_15968DD:                 End If
  loc_15968E0:               Else
  loc_1596908:                 var_E8 = Trim(CVar(MemVar_629D24.Fields.Item("ModDescription")))
  loc_1596922:                 If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING (WeP TX 40)") Then
  loc_1596939:                   var_C0 = MemVar_629D24.Fields
  loc_1596949:                   var_BC = var_C0.Item("AutoPrint").Value
  loc_1596963:                   If (var_BC = "Yes") Then
  loc_1596966:                     Proc_260_9_1A82784(var_C0)
  loc_1596991:                     unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15969A6:                     arg_14 = "Y"
  loc_15969AD:                   Else
  loc_15969C0:                     var_BC = "Print Bill ?"
  loc_15969DC:                     If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_15969DF:                       Proc_260_9_1A82784(var_C0)
  loc_1596A0A:                       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596A1F:                       arg_14 = "Y"
  loc_1596A26:                     Else
  loc_1596A26:                       Exit Sub
  loc_1596A27:                     End If
  loc_1596A27:                   End If
  loc_1596A2A:                 Else
  loc_1596A52:                   var_E8 = Trim(CVar(MemVar_629D24.Fields.Item("ModDescription")))
  loc_1596A6C:                   If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)") Then
  loc_1596A83:                     var_C0 = MemVar_629D24.Fields
  loc_1596A93:                     var_BC = var_C0.Item("AutoPrint").Value
  loc_1596AAD:                     If (var_BC = "Yes") Then
  loc_1596AB0:                       Proc_260_10_1E305FC(var_C0)
  loc_1596ADB:                       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596AF0:                       arg_14 = "Y"
  loc_1596AF7:                     Else
  loc_1596B0A:                       var_BC = "Print Bill ?"
  loc_1596B26:                       If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1596B29:                         Proc_260_10_1E305FC(var_C0)
  loc_1596B54:                         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596B69:                         arg_14 = "Y"
  loc_1596B70:                       Else
  loc_1596B70:                         Exit Sub
  loc_1596B71:                       End If
  loc_1596B71:                     End If
  loc_1596B74:                   Else
  loc_1596BB2:                     If (MemVar_629D24.Fields.Item("ModDescription").Value = "BILL WINDOWS PLAIN PAPER RUNNING") Then
  loc_1596BC9:                       var_C0 = MemVar_629D24.Fields
  loc_1596BD9:                       var_BC = var_C0.Item("AutoPrint").Value
  loc_1596BF3:                       If (var_BC = "Yes") Then
  loc_1596BF6:                         Proc_260_14_1EED228(var_C0)
  loc_1596C21:                         unk_43FED1.Execute "Update SplitSale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596C59:                         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596C6E:                         arg_14 = "Y"
  loc_1596C75:                       Else
  loc_1596C88:                         var_BC = "Print Bill ?"
  loc_1596CA4:                         If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1596CA7:                           Proc_260_14_1EED228(var_C0, var_C0)
  loc_1596CD2:                           unk_43FED1.Execute "Update SplitSale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596D0A:                           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596D1F:                           arg_14 = "Y"
  loc_1596D26:                         Else
  loc_1596D26:                           Exit Sub
  loc_1596D27:                         End If
  loc_1596D27:                       End If
  loc_1596D2A:                     Else
  loc_1596D68:                       If (MemVar_629D24.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER") Then
  loc_1596D7F:                         var_C0 = MemVar_629D24.Fields
  loc_1596D8F:                         var_BC = var_C0.Item("AutoPrint").Value
  loc_1596DA9:                         If (var_BC = "Yes") Then
  loc_1596DAC:                           Proc_260_17_173C860(var_C0, var_C0)
  loc_1596DD7:                           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596DEC:                           arg_14 = "Y"
  loc_1596DF3:                         Else
  loc_1596E06:                           var_BC = "Print Bill ?"
  loc_1596E22:                           If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1596E25:                             Proc_260_17_173C860(var_C0)
  loc_1596E50:                             unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596E65:                             arg_14 = "Y"
  loc_1596E6C:                           Else
  loc_1596E6C:                             Exit Sub
  loc_1596E6D:                           End If
  loc_1596E6D:                         End If
  loc_1596E6D:                       End If
  loc_1596E6D:                     End If
  loc_1596E6D:                   End If
  loc_1596E6D:                 End If
  loc_1596E6D:               End If
  loc_1596E6D:             End If
  loc_1596E6D:           End If
  loc_1596E6D:         End If
  loc_1596E6D:       End If
  loc_1596E6D:     End If
  loc_1596E6D:   End If
  loc_1596E72:   MemVar_629D24.MoveNext
  loc_1596E77:   GoTo loc_1595E0A
  loc_1596E7A: End If
  loc_1596E7F: Me(0) = Nothing
  loc_1596E85: Exit Sub
End Sub

Public Sub Proc_260_21_1E6CEB4(arg_C) '1E6CEB4
  'Data Table: 43FECC
  Dim var_178 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_18C As String
  Dim unk_43FED1 As Connection15
  Dim var_B4 As Recordset15
  Dim var_1B0 As Variant
  Dim var_168 As Variant
  Dim var_1C8 As Variant
  Dim var_19C As Variant
  Dim var_1DC As String
  Dim var_1E0 As String
  Dim var_1E4 As String
  Dim unk_44009F As Connection15
  Dim var_114 As Recordset15
  Dim var_BC As Recordset15
  Dim var_EA As Integer
  Dim var_1E8 As Variant
  Dim var_1D8 As Variant
  Dim var_21C As Variant
  Dim var_1AC As Variant
  Dim var_EC As Integer
  Dim var_12E As Integer
  Dim var_148 As Recordset15
  Dim var_234 As Recordset15
  Dim var_1EC As Field20
  Dim var_1B8 As Variant
  Dim var_238 As Recordset15
  Dim var_D4 As Recordset15
  Dim var_134 As Recordset15
  Dim var_116 As Integer
  Dim var_248 As Variant
  Dim var_10E As Integer
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_B8 As Recordset15
  Dim var_110 As Integer
  Dim var_1FC As Variant
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_2A0 As Fields15
  Dim var_2C4 As Variant
  Dim var_348 As String
  Dim var_34C As String
  Dim var_2F4 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_3A0 As Variant
  Dim var_390 As Variant
  Dim var_268 As Variant
  Dim var_314 As Variant
  Dim var_E0 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_344 As Variant
  Dim var_380 As Variant
  Dim var_3E0 As Variant
  Dim var_42C As Variant
  loc_1E6259C: On Error Goto loc_1E5CEAC
  loc_1E625BC: Proc_6_17_EAAE40(var_168, arg_C, "SELECT Top 1 * FROM KOT WHERE DocId=")
  loc_1E625D2: unk_43FED1.Execute CStr(var_1AC & var_168), -1, var_1B0
  loc_1E625DD: Set var_B4 = var_1B0
  loc_1E62603: If (var_B4.RecordCount = 1) Then
  loc_1E6262E:   var_138 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("RestCode")))
  loc_1E6265F:   var_13C = Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")))
  loc_1E62677:   var_1B0 = var_B4.Fields
  loc_1E62687:   var_168 = CVar(var_1B0.Item("Roomtype")) 'Address
  loc_1E62698:   var_1AC = "Table"
  loc_1E626C4:   var_140 = CStr(IIf((Proc_6_38_E69628(var_168) = "RO"), "Room", var_1AC))
  loc_1E626DE: End If
  loc_1E62710: unk_44009F.Execute "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F95078 & "' AND RestCode='" & var_138 & "' And ModType='KOT'", var_168, -1
  loc_1E6271B: Set var_148 = var_1B0
  loc_1E6274C: Proc_6_17_EAAE40(var_168, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_1AC)
  loc_1E62754: var_188 = -1 & var_168 
  loc_1E62762: unk_43FED1.Execute CStr("Room"), var_1B0, var_1B0
  loc_1E6276D: Set var_114 = var_1B0
  loc_1E62793: If (var_114.RecordCount > 0) Then
  loc_1E627CD:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader1"))))))
  loc_1E62813:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader2"))))))
  loc_1E62859:   var_FC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader3"))))))
  loc_1E6289F:   var_100 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader4"))))))
  loc_1E628E5:   var_104 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTPrinting"))))))
  loc_1E62903:   var_1B0 = var_114.Fields
  loc_1E62913:   var_168 = CVar(var_1B0.Item("KOTPrintEdited")) 'Address
  loc_1E6292B:   var_10C = CStr(Trim(CVar(Proc_6_38_E69628(var_168))))
  loc_1E6293A: End If
  loc_1E6293F: Set var_114 = Nothing
  loc_1E62966: unk_43FED1.Execute "Select Name,CKOTPrintYN,PrintType,CKOTPrintPath,NoOfKot From Depart Where Code='" & var_138 & "'", var_168, -1
  loc_1E62971: Set var_BC = var_1B0
  loc_1E62995: If (var_BC.RecordCount > 0) Then
  loc_1E629C0:   var_144 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")))
  loc_1E629F1:   var_188 = CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1E62A0B:   var_E8 = CStr(Ucase(Trim(var_188)))
  loc_1E62A44:   var_12C = Proc_6_38_E69628(CVar(var_BC.Fields.Item("PrintType")))
  loc_1E62A75:   var_124 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("CKOTPrintPath")))
  loc_1E62AA4:   Proc_6_39_E7D3A0(var_188, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E62AAD:   var_EA = CInt(var_188)
  loc_1E62ABD:   var_158 = "NoOfKot"
  loc_1E62AE0:   Proc_6_39_E7D3A0(var_188, CVar(var_BC.Fields.Item(var_158)))
  loc_1E62B0B:   Proc_6_39_E7D3A0(var_1FC, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E62B1B:   var_178 = 0
  loc_1E62B25:   var_20C = (var_188 <= var_178) 'Variant
  loc_1E62B38:   var_EC = CInt(IIf(var_20C, 1, var_1FC))
  loc_1E62B53: End If
  loc_1E62B5B: If (var_E8 = "Y") Then
  loc_1E62B71:   var_12E = Proc_260_22_1BD4208(arg_C, 0, var_12C, var_124)
  loc_1E62B7A:   If (var_12E = 0) Then
  loc_1E62B7D:     Exit Sub
  loc_1E62B7E:   End If
  loc_1E62B7E: End If
  loc_1E62B82: Set var_134 = New 
  loc_1E62B8D: Set var_134 = Proc_260_23_F5DACC(var_134, var_12E, var_EC)
  loc_1E62BA4: If (var_148.RecordCount > 0) Then
  loc_1E62BAA:   var_148.MoveFirst
  loc_1E62BB2:   var_EC = var_EA
  loc_1E62BB5:   ' Referenced from: 1E62DAD
  loc_1E62BB5: End If
  loc_1E62BC4: If Not(var_148.EOF) Then
  loc_1E62BCA:   Set var_234 = var_134 
  loc_1E62BD9:   var_234.AddNew var_158, var_178
  loc_1E62C29:   var_234.Fields.Item("PrintType").Value = CVar(Proc_6_38_E69628(CVar(var_148.Fields.Item("ModDescription")), var_EC))
  loc_1E62C89:   var_234.Fields.Item("Printer").Value = CVar(Proc_6_38_E69628(CVar(var_148.Fields.Item("Printer")), var_EA))
  loc_1E62CC3:   var_234.Fields.Item("NoOfKot").Value = 1
  loc_1E62D1A:   var_234.Fields.Item("Split").Value = CVar(Proc_6_38_E69628(CVar(var_148.Fields.Item("AutoPrint"))))
  loc_1E62D32:   var_158 = "RestCode"
  loc_1E62D5E:   var_178 = "RestCode"
  loc_1E62D7A:   var_234.Fields.Item(var_178).Value = CVar(Proc_6_38_E69628(CVar(var_148.Fields.Item(var_158))))
  loc_1E62D9A:   var_234.Update var_158, var_178
  loc_1E62DA1:   Set var_234 = Nothing 
  loc_1E62DA8:   var_148.MoveNext
  loc_1E62DAD:   GoTo loc_1E62BB5
  loc_1E62DB0: End If
  loc_1E62DB3: Set var_238 = var_134 
  loc_1E62DC2: var_238.AddNew var_158, var_178
  loc_1E62DEC: var_238.Fields.Item("PrintType").Value = "Default"
  loc_1E62E1D: var_238.Fields.Item("Printer").Value = vbNullString
  loc_1E62E4F: var_238.Fields.Item("NoOfKot").Value = CVar(var_EC)
  loc_1E62E6B: var_168 = "Yes"
  loc_1E62EA8: var_238.Fields.Item("Split").Value = IIf((var_104 = "Seperate for All Kitchen"), var_168, "No")
  loc_1E62EC2: var_178 = CVar(var_138) 'String
  loc_1E62EC9: var_158 = "RestCode"
  loc_1E62ED5: var_1B0 = var_238.Fields
  loc_1E62EE5: var_1B0.Item(var_158).Value = var_178
  loc_1E62EFC: var_238.Update var_158, var_178
  loc_1E62F03: Set var_238 = Nothing 
  loc_1E62F0A: MemVar_1F953C4 = "N"
  loc_1E62F11: MemVar_1F953C8 = "N"
  loc_1E62F18: MemVar_1F953CC = "K"
  loc_1E62F23: var_18C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE, K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo,K.U_Name " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1E62F38: Proc_6_17_EAAE40(var_168, arg_C)
  loc_1E62F4E: var_88 = CStr(CVar(var_18C & "Where K.DocID=") & var_168 & vbNullString)
  loc_1E62F66: var_188 = CVar("Select K.Sno,I.Name as ItemName,I.Unit,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E62F74: Proc_6_17_EAAE40(var_168, arg_C)
  loc_1E62F7C: var_1AC = var_188 & var_168 
  loc_1E62F85: var_1D8 = var_1AC & vbNullString 
  loc_1E62F8A: var_8C = CStr(var_1D8)
  loc_1E62FA0: If (var_88 = vbNullString) Then
  loc_1E62FA3:   Exit Sub
  loc_1E62FA4: End If
  loc_1E62FAC: If (var_8C = vbNullString) Then
  loc_1E62FAF:   Exit Sub
  loc_1E62FB0: End If
  loc_1E62FD4: unk_43FED1.Execute "Select * From Depart Where Code='" & var_138 & "'", var_168, -1
  loc_1E62FDF: Set var_C8 = var_1B0
  loc_1E63018: var_1E4 = "SELECT DISTINCT DOCID FROM KOT WHERE RESTCODE='" & var_138 & "' AND ROOMNO='" & var_13C & "' AND Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ISNULL(CONTRADOCID,'')=''"
  loc_1E63021: unk_43FED1.Execute var_1E4, var_168, -1
  loc_1E63054: If (var_1B0.RecordCount > 1) Then
  loc_1E6305A:   var_CC = "Running Order"
  loc_1E63060: Else
  loc_1E63063:   var_CC = "New Order"
  loc_1E63066: End If
  loc_1E6307C: unk_43FED1.Execute var_88, var_168, -1
  loc_1E63087: Set var_B4 = var_1B0
  loc_1E6309F: var_1B0 = var_B4.Fields
  loc_1E630CF: var_1E8 = var_B4.Fields
  loc_1E630DF: var_188 = CVar(var_1E8.Item("ContraDocId")) 'Address
  loc_1E63106: If (var_1B0 And (Proc_6_38_E69628(var_188, (Proc_6_38_E69628(CVar(var_1B0.Item("NCKOT")), var_1B0, var_1B0) <> "Y")) <> vbNullString)) Then
  loc_1E63122:   MsgBox("Sale Bill Already Generated !!", &H40, var_188, var_1AC, var_1D8)
  loc_1E63132:   Exit Sub
  loc_1E63133: End If
  loc_1E63147: If (var_134.RecordCount > 0) Then
  loc_1E6314D:   var_134.MoveFirst
  loc_1E63152:   ' Referenced from: 1E6CE70
  loc_1E63152: End If
  loc_1E63161: Loop Until Not(var_134.EOF) 'do at: 1E5CE73
  loc_1E63178: If (var_B4.RecordCount > 0) Then
  loc_1E6317E:   var_B4.MoveFirst
  loc_1E63186:   var_108 = vbNullString
  loc_1E63189: End If
  loc_1E631C2: If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1E631C7:   var_116 = &HFF
  loc_1E631CA: End If
  loc_1E631D9: If ((var_116 = &HFF) And (var_10C = "No Print")) Then
  loc_1E631DC:   Exit Sub
  loc_1E631DD: End If
  loc_1E631F3: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F950B8 <= 0)) Then
  loc_1E63205:   var_1B0 = var_134.Fields
  loc_1E63215:   var_168 = CVar(var_1B0.Item("Split")) 'Address
  loc_1E6322F:   If (Proc_6_38_E69628(var_168, var_116) = "No") Then
  loc_1E63246:     var_18C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1E63256:     unk_43FED1.Execute var_18C & "MK'", var_168, -1
  loc_1E63261:     Set var_BC = var_1B0
  loc_1E63274:   Else
  loc_1E63288:     var_188 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E63296:     Proc_6_17_EAAE40(var_168, arg_C, var_188, var_1FC)
  loc_1E6329E:     var_1AC = -1 & var_168 
  loc_1E632B5:     unk_43FED1.Execute CStr(var_1AC & " And K.VoidYN='Y' Order By Depart.Name"), var_1B0, var_1B0
  loc_1E632C0:     Set var_BC = var_1B0
  loc_1E632D6:   End If
  loc_1E632D9: Else
  loc_1E632E8:   var_1B0 = var_134.Fields
  loc_1E632F0:   var_1B8 = var_1B0.Item("Split")
  loc_1E632F8:   var_168 = CVar(var_1B8) 'Address
  loc_1E63312:   If (Proc_6_38_E69628(var_168) = "No") Then
  loc_1E63329:     var_18C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1E63339:     unk_43FED1.Execute var_18C & "MK'", var_168, -1
  loc_1E63344:     Set var_BC = var_1B0
  loc_1E63357:   Else
  loc_1E6336B:     var_188 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E63379:     Proc_6_17_EAAE40(var_168, arg_C, var_188, var_1FC)
  loc_1E63381:     var_1AC = -1 & var_168 
  loc_1E6338A:     var_1D8 = var_1AC & " Order By Depart.Name" 
  loc_1E63398:     unk_43FED1.Execute CStr(var_1D8), var_1B0, var_1B0
  loc_1E633A3:     Set var_BC = var_1B0
  loc_1E633B9:   End If
  loc_1E633B9: End If
  loc_1E633D5: var_178 = "Select Count(Distinct Depart.Code) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID="
  loc_1E633E5: Proc_6_17_EAAE40(var_168, arg_C, var_178, var_1D8, -1, var_1B0)
  loc_1E63404: unk_43FED1.Execute CStr(var_1B8 & var_168 & vbNullString), 0, var_1E8
  loc_1E6340C: var_1FC = var_1B0.Fields
  loc_1E63414:  = var_1B8.Item(var_1B0)
  loc_1E6341C:  = var_1E8.Value
  loc_1E63427: Proc_6_39_E7D3A0(var_20C)
  loc_1E63430: var_10E = CInt(var_20C)
  loc_1E6344E: ' Referenced from: 1E6CE65
  loc_1E6345D: Loop Until Not(var_BC.EOF) 'do at: 1E5CE68
  loc_1E63463: var_11C = vbNullString
  loc_1E6347C: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F950B8 <= 0)) Then
  loc_1E63482:   var_11C = "CANCELLED"
  loc_1E634A4:   var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E634BE:   If (Proc_6_38_E69628(var_168, var_10E) = "Yes") Then
  loc_1E634C8:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E634D6:     Proc_6_17_EAAE40(var_168, arg_C)
  loc_1E63555:     var_278 = var_188 & var_168 & " AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value 
  loc_1E63563:     var_8C = CStr(var_278 & "' And K.VoidYN='Y'")
  loc_1E6358D:   Else
  loc_1E63594:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E635A2:     Proc_6_17_EAAE40(var_168, arg_C)
  loc_1E635B8:     var_8C = CStr(var_188 & var_168 & " And K.VoidYN='Y'")
  loc_1E635C6:   End If
  loc_1E635C9: Else
  loc_1E635E8:   var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E63602:   If (Proc_6_38_E69628(var_168) = "Yes") Then
  loc_1E6360C:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E6361A:     Proc_6_17_EAAE40(var_168, arg_C)
  loc_1E63641:     var_1B0 = var_BC.Fields
  loc_1E63699:     var_278 = var_188 & var_168 & " AND Depart.Code='" & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value 
  loc_1E636A7:     var_8C = CStr(var_278 & "'")
  loc_1E636D1:   Else
  loc_1E636D8:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E636E6:     Proc_6_17_EAAE40(var_168, arg_C)
  loc_1E636FC:     var_8C = CStr(var_188 & var_168 & vbNullString)
  loc_1E6370A:   End If
  loc_1E6370A: End If
  loc_1E63720: unk_43FED1.Execute var_8C, var_168, -1
  loc_1E6372B: Set var_B8 = var_1B0
  loc_1E6373A: var_1B4 = var_B8.RecordCount
  loc_1E63748: Loop Until (var_1B4 > 0) 'do at: 1E5CE5D
  loc_1E63787: If (var_134.Fields.Item("PrintType").Value = "Default") Then
  loc_1E637B9:   var_12C = CStr(Trim(CVar(var_BC.Fields.Item("PrintType"))))
  loc_1E637C9: Else
  loc_1E637F4:   var_12C = CStr(var_134.Fields.Item("PrintType").Value)
  loc_1E63801: End If
  loc_1E63807: var_110 = (var_110 + 1)
  loc_1E63882: var_20C = (var_134.Fields.Item("NoOfKot").Value > 0) Or (var_12C = "ADJUSTABLE WINDOWS KOT PRINT") And (var_134.Fields.Item("NoOfKot").Value = 0)
  loc_1E6389C: Loop Until CBool(var_20C) 'do at: 1E5CC87
  loc_1E638A2: var_29C = var_12C
  loc_1E638AD: If (var_29C = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1E638B4:   Set var_D8 = New 
  loc_1E638BF:   Set var_D8 = Proc_260_24_EF3164(var_D8, var_110)
  loc_1E638C5:   Me.Recordset15.MoveFirst
  loc_1E638CA:   ' Referenced from: 1E64A7E
  loc_1E638D9:   If Not(var_B4.EOF) Then
  loc_1E638DE:     var_92 = 0
  loc_1E638F5:     var_1B0 = var_B4.Fields
  loc_1E63974:     var_268 = "* NC LOT *"
  loc_1E639C1:     var_314 = "* KOT *"
  loc_1E63A06:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_1B0.Item("ShortName")), 1, var_92))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_1B0) = "Y"), var_268, "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", var_314))
  loc_1E63A0F:     var_90 = CStr(var_344)
  loc_1E63A53:     If (var_92 = 0) Then
  loc_1E63A59:       var_1E0 = vbNullString
  loc_1E63A74:       Proc_260_25_F11F48(var_D8, vbNullString, vbNullString)
  loc_1E63AB0:       var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1E63AC9:       var_1E0 = vbNullString
  loc_1E63AD8:       var_188 = (Space(1) + CVar(var_144))
  loc_1E63AED:       Proc_260_25_F11F48(var_D8, vbNullString, CStr(CVar(Proc_6_38_E69628(CVar(var_1B0.Item("ShortName")), 1, var_92))))
  loc_1E63B1A:       Proc_260_25_F11F48(var_D8, vbNullString, var_90, vbNullString)
  loc_1E63B2E:       var_1E0 = vbNullString
  loc_1E63B49:       Proc_260_25_F11F48(var_D8, vbNullString, vbNullString, var_1E0)
  loc_1E63B7D:       Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12)), CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E63BB1:       var_1E0 = vbNullString
  loc_1E63BBA:       Proc_260_25_F11F48(var_D8, var_1E0, " KOT No.   : " & Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), &HA, var_1E0))
  loc_1E63C76:       var_34C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1E63C8A:       Proc_260_25_F11F48(var_D8, vbNullString, " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_34C)
  loc_1E63D1C:       Proc_260_25_F11F48(var_D8, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks")), vbNullString), &H1E))
  loc_1E63DB3:       var_22C = CVar(var_B4.Fields.Item("GuarAtt")) 'Address
  loc_1E63DBA:       Proc_6_39_E7D3A0(var_268, var_22C)
  loc_1E63DF2:       Proc_6_39_E7D3A0(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E63E20:       var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E63E2A:       var_334 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_45_EADFB8(CStr(var_314), 7)))
  loc_1E63E45:       var_390 = IIf((var_268 <> 0), (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, 3)) = "LAU"), vbNullString)
  loc_1E63E4D:       var_348 = vbNullString
  loc_1E63E5C:       var_1AC = (Space(1) + CVar(Proc_6_45_EADFB8(var_140, &HA)))
  loc_1E63E65:       var_1D8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))) + ": ")
  loc_1E63E6F:       var_21C = (3 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)))
  loc_1E63E76:       var_3A0 = (CVar(Proc_6_45_EADFB8(var_140, &HA)) & Space(1) & " AND Depart.Code='" & var_B4.Fields.Item("Code").Value & "'" + var_390)
  loc_1E63E8B:       Proc_260_25_F11F48(var_D8, vbNullString, CStr(var_3A0))
  loc_1E63EDC:       var_1DC = vbNullString
  loc_1E63EF1:       Proc_260_25_F11F48(var_D8, vbNullString, var_C0)
  loc_1E63EFD:     End If
  loc_1E63F23:     var_1AC = (var_1DC + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1E63F37:     var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))) + Space(1))
  loc_1E63F51:     var_21C = (var_348 + CVar(Proc_6_52_EAE084("Qty", 6, CVar(var_B4.Fields.Item("TableNo")))))
  loc_1E63F56:     var_AC = CStr(CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))) & Space(1) & " AND Depart.Code='" & var_B4.Fields.Item("Code").Value & "'")
  loc_1E63F74:     var_1DC = vbNullString
  loc_1E63F89:     Proc_260_25_F11F48(var_D8, vbNullString, var_AC)
  loc_1E63F98:     var_1DC = vbNullString
  loc_1E63FAD:     Proc_260_25_F11F48(var_D8, vbNullString, var_C0)
  loc_1E63FBF:     var_92 = (var_92 + 4)
  loc_1E63FC5:     var_B8.MoveFirst
  loc_1E63FCA:     ' Referenced from: 1E64435
  loc_1E63FD9:     If Not(var_B8.EOF) Then
  loc_1E64037:       var_1DC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108, (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), &H12, var_1DC) = "Yes"))
  loc_1E64052:       If (CVar(var_B4.Fields.Item("TableNo")) And (var_1DC <> var_1DC)) Then
  loc_1E6407D:         var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E64089:         var_1E4 = vbNullString
  loc_1E64096:         var_18C = "*" & var_108
  loc_1E640AD:         Proc_260_25_F11F48(var_D8, vbNullString)
  loc_1E640C3:         var_92 = (var_92 + 1)
  loc_1E640C6:       End If
  loc_1E64113:       Proc_6_39_E7D3A0(var_22C, CVar(var_B8.Fields.Item("qty")), &H12)
  loc_1E6414A:       var_2A0 = var_B8.Fields
  loc_1E64182:       var_324 = (var_2A0.Item("Cancel").Value = "Y") 'Variant
  loc_1E641B6:       var_1D8 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1E641CA:       var_20C = (Space(1) + Space(1))
  loc_1E641E0:       var_298 = CVar(Proc_6_52_EAE084(CStr(Format(var_22C, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 6, CVar(var_B4.Fields.Item("TableNo")))))) 'String
  loc_1E641E3:       var_2C4 = (var_18C & "*" + var_298)
  loc_1E641FC:       var_3A0 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_52_EAE084(CStr(IIf(var_324, "Void", vbNullString)), 5)))
  loc_1E6425B:       Proc_260_25_F11F48(var_D8, vbNullString, CStr(var_3A0))
  loc_1E6426D:       var_92 = (var_92 + 1)
  loc_1E642A9:       If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E642DA:         var_348 = vbNullString
  loc_1E64301:         Proc_260_25_F11F48(var_D8, vbNullString, "(" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1E64321:         var_92 = (var_92 + 1)
  loc_1E64324:       End If
  loc_1E6432E:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E64349:         Proc_260_25_F11F48(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E64373:         Proc_260_25_F11F48(var_D8, vbNullString, " Contd.", vbNullString)
  loc_1E64387:         var_94 = (var_94 + 1)
  loc_1E643A7:         Proc_260_25_F11F48(var_D8, vbNullString, var_90, vbNullString, 0)
  loc_1E643D0:         Proc_260_25_F11F48(var_D8, vbNullString, var_C0, vbNullString, &H12)
  loc_1E643F4:         Proc_260_25_F11F48(var_D8, vbNullString, var_AC, vbNullString)
  loc_1E64418:         Proc_260_25_F11F48(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6442A:         var_92 = (var_92 + 4)
  loc_1E6442D:       End If
  loc_1E64430:       var_B8.MoveNext
  loc_1E64435:       GoTo loc_1E63FCA
  loc_1E64438:     End If
  loc_1E64442:     If (&H12 < (&H45 - var_A6)) Then
  loc_1E64445:       ' Referenced from: 1E64487
  loc_1E6444F:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E64470:         Proc_260_25_F11F48(var_D8, vbNullString, vbNullString, vbNullString, &H12)
  loc_1E64484:         var_92 = (var_92 + 1)
  loc_1E64487:         GoTo loc_1E64445
  loc_1E6448A:       End If
  loc_1E6448A:     End If
  loc_1E644A2:     Proc_260_25_F11F48(var_D8, vbNullString, var_C0, vbNullString, &H12)
  loc_1E644F0:     var_348 = vbNullString
  loc_1E64510:     Proc_260_25_F11F48(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1E6456B:     Proc_260_25_F11F48(var_D8, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1E645A1:     var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E645BB:     If (Proc_6_38_E69628(var_168, var_348) = "Yes") Then
  loc_1E645D2:       var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E645E0:       Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E645E8:       var_1AC = -1 & var_168 
  loc_1E6460C:       var_21C = " ***  " & Trim(var_CC) & "  ***" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E64622:       var_1B0 = var_BC.Fields
  loc_1E64683:       var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E64691:       unk_43FED1.Execute CStr(var_314), var_2A0, var_348
  loc_1E6469C:       Set var_E0 = var_2A0
  loc_1E646D3:     Else
  loc_1E646F0:       Proc_6_17_EAAE40(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_21C)
  loc_1E646F8:       var_188 = -1 & var_168 
  loc_1E6472A:       unk_43FED1.Execute CStr(var_188 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_1B0, var_1E4
  loc_1E64735:       Set var_E0 = var_1B0
  loc_1E6474F:     End If
  loc_1E6478B:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E64791:       var_1E4 = vbNullString
  loc_1E6479E:       var_18C = " ***  " & "Changed KOT"
  loc_1E647B5:       Proc_260_25_F11F48(var_D8, vbNullString)
  loc_1E647C8:     Else
  loc_1E647E7:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E64801:       If (Proc_6_38_E69628(var_168, var_18C & "  ***") = "Yes") Then
  loc_1E64818:         var_188 = CVar("Select Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E64826:         Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E6482E:         var_1AC = -1 & var_168 
  loc_1E64852:         var_21C = var_188 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E64868:         var_1B0 = var_BC.Fields
  loc_1E648D7:         unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, var_1E4
  loc_1E648E2:         Set var_E0 = var_2A0
  loc_1E64919:       Else
  loc_1E64926:         var_178 = "Select Printed from kot where docid="
  loc_1E64936:         Proc_6_17_EAAE40(var_168, arg_C, var_178)
  loc_1E64942:         var_19C = " AND SNO In (Select SNo From ("
  loc_1E64970:         unk_43FED1.Execute CStr(var_21C & var_168 & var_19C & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E6497B:         Set var_E0 = var_1B0
  loc_1E64995:       End If
  loc_1E64998:       var_158 = 0
  loc_1E649CE:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item(var_158))) = "Y") Then
  loc_1E649D4:         var_1E4 = vbNullString
  loc_1E649E1:         var_18C = " ***  " & "DUPLICATE KOT"
  loc_1E649F8:         Proc_260_25_F11F48(var_D8, vbNullString)
  loc_1E64A0B:       Else
  loc_1E64A0E:         var_1E0 = vbNullString
  loc_1E64A29:         Proc_260_25_F11F48(var_D8, vbNullString, vbNullString)
  loc_1E64A37:       End If
  loc_1E64A37:     End If
  loc_1E64A3C:     Set var_E0 = Nothing
  loc_1E64A66:     Proc_260_25_F11F48(var_D8, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1E64A79:     var_B4.MoveNext
  loc_1E64A7E:     GoTo loc_1E638CA
  loc_1E64A81:   End If
  loc_1E64A84:   var_DC = "WinKOTPrint"
  loc_1E64AA4:   var_1E4 = MemVar_1F950B4 & "\" & var_DC & ".ttx"
  loc_1E64AAB:   Set var_1B0 = var_D8 
  loc_1E64AB2:   CreateFieldDefFile(var_1B0, var_1E4, &HFF)
  loc_1E64ADD:   var_18C = MemVar_1F950B4 & "\"
  loc_1E64AEB:   var_1E0 = var_18C & var_DC & ".RPT"
  loc_1E64AF4:   Call 0.Method_arg_1C (var_1E0, var_158, var_1B0)
  loc_1E64AFF:   MemVar_1F951E8 = var_1B0
  loc_1E64B28:   Call 0.Method_arg_64 (var_1B0, CVar(var_1B0), var_178, var_19C)
  loc_1E64B30:   Call 0.Method_arg_2C (var_1E0, var_18C & "  ***")
  loc_1E64B90:   var_1DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) = "Default"))
  loc_1E64BAE:   If (var_1E4 And (var_1DC <> vbNullString)) Then
  loc_1E64BFB:     If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E64C2A:       Proc_96_98_F10508(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E64C38:     End If
  loc_1E64C3B:   Else
  loc_1E64CB1:     If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E64CFE:       If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E64D2D:         Proc_96_98_F10508(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))))
  loc_1E64D3B:       End If
  loc_1E64D3B:     End If
  loc_1E64D3B:   End If
  loc_1E64D6B:   var_178 = False
  loc_1E64D76:   Call 0.Method_Me8 (var_178, CVar(var_134.Fields.Item("NoOfKot")), var_19C)
  loc_1E64D83:   var_12E = &HFF
  loc_1E64D8B:   Set var_D8 = Nothing
  loc_1E64D8E:   GoTo loc_1E5CC87
  loc_1E64D91: End If
  loc_1E64D99: If (var_29C = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1E64D9F:   var_B4.MoveFirst
  loc_1E64DA4:   ' Referenced from: 1E65E28
  loc_1E64DB3:   If Not(var_B4.EOF) Then
  loc_1E64DB9:     var_158 = "ShortName"
  loc_1E64DD5:     var_168 = CVar(var_B4.Fields.Item(var_158)) 'Address
  loc_1E64DE9:     var_1D8 = 3
  loc_1E64E0C:     var_1C8 = "NCKOT"
  loc_1E64E18:     var_1E8 = var_B4.Fields
  loc_1E64E20:     var_1EC = var_1E8.Item(var_1C8)
  loc_1E64E55:     var_248 = (Proc_6_38_E69628(CVar(var_1EC), var_1C8) = "Y")
  loc_1E64EC2:     var_19C = "LAU"
  loc_1E64ED6:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(var_168, var_12E))), 1, var_1D8)) = var_19C), IIf(var_248, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E64EDF:     var_90 = CStr(var_344)
  loc_1E64F20:     var_DC = "KOTPrint"
  loc_1E64F47:     Set var_1B0 = var_B8 
  loc_1E64F4E:     CreateFieldDefFile(var_1B0, MemVar_1F950B4 & "\" & var_DC & ".ttx")
  loc_1E64F5A:     Set var_B8 = var_1B0
  loc_1E64F90:     Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_158, var_1B0)
  loc_1E64F9B:     MemVar_1F951E8 = var_1B0
  loc_1E64FC4:     Call 0.Method_arg_64 (var_1B0, CVar(var_B8), var_178)
  loc_1E64FCC:     Call 0.Method_arg_2C (var_19C, &HFF)
  loc_1E64FDA:     Call 0.Method_arg_150 (var_248)
  loc_1E64FFC:     Proc_6_17_EAAE40(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E6501B:     unk_43FED1.Execute CStr(var_1D8 & var_168 & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), -1, var_1B0
  loc_1E6504C:     var_1B0 = var_1B0.Fields
  loc_1E6505C:     var_168 = var_1B0.Item(0).Value
  loc_1E65076:     If (var_168 > 1) Then
  loc_1E6507C:       var_D0 = "Changed KOT"
  loc_1E65082:     Else
  loc_1E6509F:       Proc_6_17_EAAE40(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E650BE:       unk_43FED1.Execute CStr(var_1D8 & var_168 & vbNullString), -1, var_1B0
  loc_1E650EC:       var_1B0 = var_1B0.Fields
  loc_1E650F4:       var_1B8 = var_1B0.Item(0)
  loc_1E65105:       var_18C = Proc_6_38_E69628(CVar(var_1B8))
  loc_1E65116:       If (var_18C = "Y") Then
  loc_1E6511C:         var_D0 = "DUPLICATE KOT"
  loc_1E65122:       Else
  loc_1E65125:         var_D0 = vbNullString
  loc_1E65128:       End If
  loc_1E65128:     End If
  loc_1E6512D:     Set var_E0 = Nothing
  loc_1E65141:     Call 0.Method_arg_90 (var_1B0, var_1B4)
  loc_1E65149:     Call 0.Method_arg_24 (var_AE)
  loc_1E65155:     For var_3A4 =  To CInt(var_1B4): 1 = var_3A4 'Integer
  loc_1E6516E:       Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E65176:       Call 0.Method_arg_20 (var_1B8)
  loc_1E6517E:       Call 0.Method_arg_30 (var_18C)
  loc_1E65194:       var_3B4 = Ucase(CVar(var_18C)) 'Variant
  loc_1E651C4:       If (var_3B4 = Ucase("comp_name")) Then
  loc_1E651E8:         Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E651F0:         Call 0.Method_arg_20 (var_1B8)
  loc_1E651F8:         Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1E6520E:       Else
  loc_1E65230:         If (var_3B4 = Ucase("comp_add1")) Then
  loc_1E65254:           Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E6525C:           Call 0.Method_arg_20 (var_1B8)
  loc_1E65264:           Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1E6527A:         Else
  loc_1E6529C:           If (var_3B4 = Ucase("comp_pin")) Then
  loc_1E652C0:             Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E652C8:             Call 0.Method_arg_20 (var_1B8)
  loc_1E652D0:             Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1E652E6:           Else
  loc_1E65308:             If (var_3B4 = Ucase("comp_GSTIN")) Then
  loc_1E6532C:               Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E65334:               Call 0.Method_arg_20 (var_1B8)
  loc_1E6533C:               Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1E65352:             Else
  loc_1E65374:               If (var_3B4 = Ucase("RestName")) Then
  loc_1E65398:                 Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E653A0:                 Call 0.Method_arg_20 (var_1B8)
  loc_1E653A8:                 Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_1E653BE:               Else
  loc_1E653E0:                 If Not (var_3B4 = Ucase("mTitle")) Then
  loc_1E65405:                   If (var_3B4 = Ucase("Title")) Then
  loc_1E65408:                   End If
  loc_1E65429:                   Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E65431:                   Call 0.Method_arg_20 (var_1B8)
  loc_1E65439:                   Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1E6544F:                 Else
  loc_1E65452:                   Do 'loop at:             1E7531C
  loc_1E65457:                   var_168 = "Header1"
  loc_1E65471:                   If (var_3B4 = Ucase(var_168)) Then
  loc_1E6547F:                     Proc_6_17_EAAE40(var_168)
  loc_1E6549B:                     Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E654A3:                     Call 0.Method_arg_20 (CStr(var_168))
  loc_1E654AB:                     Call 0.Method_arg_38 (var_F4)
  loc_1E654C0:                   Else
  loc_1E654C8:                     var_168 = "Header2"
  loc_1E654E2:                     If (var_3B4 = Ucase(var_168)) Then
  loc_1E654F0:                       Proc_6_17_EAAE40(var_168)
  loc_1E6550C:                       Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E65514:                       Call 0.Method_arg_20 (CStr(var_168))
  loc_1E6551C:                       Call 0.Method_arg_38 (var_F8)
  loc_1E65531:                     Else
  loc_1E65539:                       var_168 = "Header3"
  loc_1E65553:                       If (var_3B4 = Ucase(var_168)) Then
  loc_1E65561:                         Proc_6_17_EAAE40(var_168)
  loc_1E6557D:                         Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E65585:                         Call 0.Method_arg_20 (CStr(var_168))
  loc_1E6558D:                         Call 0.Method_arg_38 (var_FC)
  loc_1E655A2:                       Else
  loc_1E655AA:                         var_168 = "Header4"
  loc_1E655C4:                         If (var_3B4 = Ucase(var_168)) Then
  loc_1E655D2:                           Proc_6_17_EAAE40(var_168)
  loc_1E655EE:                           Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E655F6:                           Call 0.Method_arg_20 (CStr(var_168))
  loc_1E655FE:                           Call 0.Method_arg_38 (var_100)
  loc_1E65613:                         Else
  loc_1E65624:                           var_188 = Ucase("KotNo")
  loc_1E65635:                           If (var_3B4 = var_188) Then
  loc_1E65663:                             Proc_6_39_E7D3A0(var_188, CVar(var_B4.Fields.Item("VNo")))
  loc_1E6566F:                             var_19C = "'"
  loc_1E6568C:                             Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65694:                             Call 0.Method_arg_20 (var_1EC)
  loc_1E6569C:                             Call 0.Method_arg_38 (CStr("'" & var_188 & var_19C))
  loc_1E656BB:                           Else
  loc_1E656DD:                             If (var_3B4 = Ucase("KotDate")) Then
  loc_1E65729:                               Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65731:                               Call 0.Method_arg_20 (var_1EC)
  loc_1E65739:                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1E65756:                             Else
  loc_1E65778:                               If (var_3B4 = Ucase("KotTime")) Then
  loc_1E65781:                                 var_158 = "VTIME"
  loc_1E65786:                                 ' Referenced from:                         1E756E7
  loc_1E657C4:                                 Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E657CC:                                 Call 0.Method_arg_20 (var_1EC)
  loc_1E657D4:                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_158))) & "'")
  loc_1E657F1:                               Else
  loc_1E65813:                                 If (var_3B4 = Ucase("Remarks")) Then
  loc_1E6585F:                                   Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65867:                                   Call 0.Method_arg_20 (var_1EC)
  loc_1E6586F:                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))) & "'")
  loc_1E6588C:                                 Else
  loc_1E658AE:                                   If (var_3B4 = Ucase("Card_No")) Then
  loc_1E658FA:                                     Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65902:                                     Call 0.Method_arg_20 (var_1EC)
  loc_1E6590A:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo"))) & "'")
  loc_1E65927:                                   Else
  loc_1E65949:                                     If (var_3B4 = Ucase("Member_Name")) Then
  loc_1E6595E:                                       var_1B0 = var_B4.Fields
  loc_1E65966:                                       var_1B8 = var_1B0.Item("MemName")
  loc_1E65995:                                       Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E6599D:                                       Call 0.Method_arg_20 (var_1EC)
  loc_1E659A5:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_1B8)) & "'")
  loc_1E659C2:                                     Else
  loc_1E659E4:                                       If (var_3B4 = Ucase("TableTitle")) Then
  loc_1E65A02:                                         Do 'loop at:                                 1E75926
  loc_1E65A08:                                         Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E65A10:                                         Call 0.Method_arg_20 (var_1B8)
  loc_1E65A18:                                         Call 0.Method_arg_38 ("'" & var_140 & "'")
  loc_1E65A2E:                                       Else
  loc_1E65A50:                                         If (var_3B4 = Ucase("TableNo")) Then
  loc_1E65A9C:                                           Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65AA4:                                           Call 0.Method_arg_20 (var_1EC)
  loc_1E65AAC:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1E65AC9:                                         Else
  loc_1E65AEB:                                           If (var_3B4 = Ucase("Steward")) Then
  loc_1E65B00:                                             var_1B0 = var_B4.Fields
  loc_1E65B08:                                             var_1B8 = var_1B0.Item("WaiterName")
  loc_1E65B37:                                             Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65B3F:                                             Call 0.Method_arg_20 (var_1EC)
  loc_1E65B47:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_1B8)) & "'")
  loc_1E65B64:                                           Else
  loc_1E65B86:                                             If (var_3B4 = Ucase("KotStatus")) Then
  loc_1E65BAA:                                               Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E65BB2:                                               Call 0.Method_arg_20 (var_1B8)
  loc_1E65BBA:                                               Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1E65BD0:                                             Else
  loc_1E65BF2:                                               If (var_3B4 = Ucase("KotRemark")) Then
  loc_1E65C16:                                                 Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E65C1E:                                                 Call 0.Method_arg_20 (var_1B8)
  loc_1E65C26:                                                 Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1E65C3C:                                               Else
  loc_1E65C4D:                                                 var_188 = Ucase("Covers")
  loc_1E65C5E:                                                 If (var_3B4 = var_188) Then
  loc_1E65C61:                                                   Do 'loop at:                                           1E75C03
  loc_1E65C8A:                                                   Proc_6_39_E7D3A0(var_188, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E65CB2:                                                   Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65CBA:                                                   Call 0.Method_arg_20 (var_1EC)
  loc_1E65CC2:                                                   Call 0.Method_arg_38 ("'" & CStr(var_188) & "'")
  loc_1E65CE5:                                                 Else
  loc_1E65D07:                                                   If (var_3B4 = Ucase("NCType")) Then
  loc_1E65D53:                                                     Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65D5B:                                                     Call 0.Method_arg_20 (var_1EC)
  loc_1E65D63:                                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCType"))) & "'")
  loc_1E65D80:                                                   Else
  loc_1E65DA2:                                                     If (var_3B4 = Ucase("User_Name")) Then
  loc_1E65DEE:                                                       Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E65DF6:                                                       Call 0.Method_arg_20 (var_1EC)
  loc_1E65DFE:                                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name"))) & "'")
  loc_1E65E18:                                                     End If
  loc_1E65E18:                                                   End If
  loc_1E65E18:                                                 End If
  loc_1E65E18:                                               End If
  loc_1E65E18:                                             End If
  loc_1E65E18:                                           End If
  loc_1E65E18:                                         End If
  loc_1E65E18:                                       End If
  loc_1E65E18:                                     End If
  loc_1E65E18:                                   End If
  loc_1E65E18:                                 End If
  loc_1E65E18:                               End If
  loc_1E65E18:                             End If
  loc_1E65E18:                           End If
  loc_1E65E18:                         End If
  loc_1E65E18:                       End If
  loc_1E65E18:                     End If
  loc_1E65E18:                   End If
  loc_1E65E18:                 End If
  loc_1E65E18:               End If
  loc_1E65E18:             End If
  loc_1E65E18:           End If
  loc_1E65E18:         End If
  loc_1E65E18:       End If
  loc_1E65E1B:     Next var_3A4 'Integer
  loc_1E65E23:     var_B4.MoveNext
  loc_1E65E28:     GoTo loc_1E64DA4
  loc_1E65E2B:   End If
  loc_1E65EA1:   If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E65EEE:     If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E65F1D:       Proc_96_98_F10508(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E65F2B:     End If
  loc_1E65F2E:   Else
  loc_1E65FA4:     If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E65FCF:       var_188 = CVar(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer")))) 'String
  loc_1E65FF1:       If CBool(Ucase(var_188) <> "PRN") Then
  loc_1E66020:         Proc_96_98_F10508(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))))
  loc_1E6602E:       End If
  loc_1E6602E:     End If
  loc_1E6602E:   End If
  loc_1E6604D:   var_168 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1E66054:   Proc_6_39_E7D3A0(var_188)
  loc_1E6606E:   If (var_188 = 0) Then
  loc_1E66076:     Set var_1B8 = Nothing
  loc_1E66092:     Set var_1B0 = MemVar_1F951E8 
  loc_1E6609E:     Proc_6_99_1484404(var_1B0, 0, "KOT ENTRY")
  loc_1E660A9:     MemVar_1F951E8 = var_1B0
  loc_1E660BA:   Else
  loc_1E660E0:     Proc_6_39_E7D3A0(var_188, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1E660FA:     If (var_188 > 0) Then
  loc_1E66123:       Proc_6_39_E7D3A0(var_188, CVar(var_134.Fields.Item("NoOfKot")))
  loc_1E66143:       Call 0.Method_Me8 (False, var_188, var_19C, var_1C8)
  loc_1E66152:     End If
  loc_1E66152:   End If
  loc_1E66154:   var_12E = &HFF
  loc_1E66157:   GoTo loc_1E5CC87
  loc_1E6615A: End If
  loc_1E66162: If (var_29C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1E66167:   Close 1
  loc_1E661A5:   Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E661B9:   var_B4.MoveFirst
  loc_1E661BE:   ' Referenced from: 1E6758C
  loc_1E661CD:   If Not(var_B4.EOF) Then
  loc_1E661D2:     var_92 = 0
  loc_1E661F1:     var_1B8 = var_B4.Fields.Item("ShortName")
  loc_1E662B5:     var_314 = "* KOT *"
  loc_1E662FA:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_1B8), 1, var_92, var_12E))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_248) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_1B8) = "Y"), "* NC KOT *", var_314))
  loc_1E66303:     var_90 = CStr(var_344)
  loc_1E66347:     If (var_92 = 0) Then
  loc_1E6634C:       Print 1
  loc_1E66380:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E66391:       If (var_F4 <> vbNullString) Then
  loc_1E663BA:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1E663C0:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E663D2:       End If
  loc_1E663DA:       If (var_F8 <> vbNullString) Then
  loc_1E66403:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1E66409:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E6641B:       End If
  loc_1E66423:       If (var_FC <> vbNullString) Then
  loc_1E66446:         Do 'loop at: 1E763A8
  loc_1E6644C:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1E66452:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E66464:       End If
  loc_1E6646C:       If (var_100 <> vbNullString) Then
  loc_1E66495:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H28)))
  loc_1E6649B:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E664AD:       End If
  loc_1E664E9:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E6654B:         var_1D8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E66552:         var_20C = (3 + Chr(&H12))
  loc_1E66558:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("SaleBillTokenHeader1")), 1, var_92, var_12E))), 1, 3))
  loc_1E6657B:       End If
  loc_1E6657D:       Print 1
  loc_1E665A4:       Print 1, Proc_260_1_10A4640(var_144, "D")
  loc_1E665D4:       Print 1, Proc_260_1_10A4640(var_90, "D", &H28)
  loc_1E665EA:       Print 1
  loc_1E665F2:       Print 1
  loc_1E6662B:       Proc_6_39_E7D3A0(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E6664D:       var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E66657:       var_20C = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(CStr(3), &HA)))
  loc_1E6665D:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VNo")), 1, &H12, var_12E))), 1, 3))
  loc_1E6670F:       var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E66719:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), &H28), &HC)))
  loc_1E66722:       var_20C = (CVar(Proc_6_45_EADFB8(CStr(3), &HA)) + " ")
  loc_1E6672C:       var_268 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), 1, &H12, var_12E))), 1, 3)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E66732:       Print 1, "* NC LOT *"
  loc_1E667C4:       var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E667CE:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H32)))
  loc_1E667D5:       var_21C = (CVar(Proc_6_45_EADFB8(CStr(3), &HA)) + Chr(&H12))
  loc_1E667DB:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E66880:       Proc_6_39_E7D3A0("* NC LOT *", CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E668B8:       Proc_6_39_E7D3A0(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E668E6:       var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E668F0:       var_334 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_45_EADFB8(CStr(var_314), 7)))
  loc_1E6690B:       var_390 = IIf(("* NC LOT *" <> 0), (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")), 1, &H12, var_12E))), 1, 3)) = "LAU"), vbNullString)
  loc_1E66919:       var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_140, &HA)))
  loc_1E66922:       var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E66929:       var_20C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E6692C:       var_21C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H32)) + var_20C)
  loc_1E66933:       var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + var_390)
  loc_1E66939:       Print 1, var_3A0
  loc_1E66998:       var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6699E:       Print 1, CVar(Proc_6_45_EADFB8(var_140, &HA))
  loc_1E669AB:     End If
  loc_1E669D1:     var_1AC = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1E669EB:     var_1FC = (CVar(var_B4.Fields.Item("Remarks")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E669F0:     var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1E66A1D:     var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E66A23:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E66A46:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E66A4C:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E66A5F:     var_92 = (var_92 + 4)
  loc_1E66A65:     var_B8.MoveFirst
  loc_1E66A6A:     ' Referenced from: 1E66EFC
  loc_1E66A79:     If Not(var_B8.EOF) Then
  loc_1E66A9B:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E66AA4:       Do 'loop at: 1E75F2D
  loc_1E66AF2:       If (var_168 And ((Proc_6_38_E69628(var_168, &H12) = "Yes") <> Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E66B1D:         var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E66B3B:         var_188 = (Chr(&HF) + "*")
  loc_1E66B45:         var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E66B4E:         var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + "*")
  loc_1E66B54:         Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E66B6B:         var_92 = (var_92 + 1)
  loc_1E66B6E:       End If
  loc_1E66BBB:       Proc_6_39_E7D3A0(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E66BF2:       var_2A0 = var_B8.Fields
  loc_1E66C0C:       var_324 = vbNullString
  loc_1E66C5E:       var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E66C77:       var_278 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_20C, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1E66C90:       var_380 = ("* LOT *" + CVar(Proc_6_52_EAE084(CStr(IIf((var_2A0.Item("Cancel").Value = "Y"), "Void", var_324)), 6)))
  loc_1E66CE9:       var_188 = (Chr(&HF) + CVar(CStr(vbNullString)))
  loc_1E66CEF:       Print 1, Space(3)
  loc_1E66D02:       var_92 = (var_92 + 1)
  loc_1E66D3E:       If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E66D81:         var_188 = (Chr(&HF) + "(")
  loc_1E66D8B:         var_1FC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E66D94:         var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E66D9A:         Print 1, var_20C
  loc_1E66DBB:         var_92 = (var_92 + 1)
  loc_1E66DBE:       End If
  loc_1E66DC8:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E66DE1:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E66DE7:         Print 1, Space(3)
  loc_1E66DF9:         Print 1, "Contd."
  loc_1E66E11:         Print 1, Chr(&HC)
  loc_1E66E20:         var_94 = (var_94 + 1)
  loc_1E66E25:         var_92 = 0
  loc_1E66E57:         var_1DC = Proc_260_1_10A4640(var_90, "B", &H28, Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_92, &H28, var_92), &H28, Proc_260_2_136F49C(1, var_92, &H28, var_92)))
  loc_1E66E5C:         Print 1, var_1DC
  loc_1E66E6D:         var_92 = &H12
  loc_1E66E86:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E66E8C:         Print 1, Space(3)
  loc_1E66EAF:         var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E66EB5:         Print 1, Space(3)
  loc_1E66ED8:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E66EDE:         Print 1, Space(3)
  loc_1E66EF1:         var_92 = (var_92 + 4)
  loc_1E66EF4:       End If
  loc_1E66EF7:       var_B8.MoveNext
  loc_1E66EFC:       GoTo loc_1E66A6A
  loc_1E66EFF:     End If
  loc_1E66F09:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E66F0C:       ' Referenced from: 1E66F2D
  loc_1E66F16:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E66F1E:         Print 1, vbNullString
  loc_1E66F2A:         var_92 = (var_92 + 1)
  loc_1E66F2D:         GoTo loc_1E66F0C
  loc_1E66F30:       End If
  loc_1E66F30:     End If
  loc_1E66F46:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E66F4C:     Print 1, Space(3)
  loc_1E66FAD:     var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E66FB4:     var_1D8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, 1)) 'String
  loc_1E66FB7:     var_1FC = (Space(3) + var_1D8)
  loc_1E66FBD:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E67001:     var_188 = (Chr(&HF) + "***  ")
  loc_1E67017:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E67049:     var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E67063:     If (Proc_6_38_E69628(var_168, var_92) = "Yes") Then
  loc_1E6707A:       var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E67088:       Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E67090:       var_1AC = -1 & var_168 
  loc_1E670B4:       var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E670CA:       var_1B0 = var_BC.Fields
  loc_1E6712B:       var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E67139:       unk_43FED1.Execute CStr(var_314), var_2A0, var_92
  loc_1E67144:       Set var_E0 = var_2A0
  loc_1E6717B:     Else
  loc_1E67198:       Proc_6_17_EAAE40(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E671C4:       var_20C = var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E671D2:       unk_43FED1.Execute CStr(var_20C), -1, var_1B0
  loc_1E671DD:       Set var_E0 = var_1B0
  loc_1E671F7:     End If
  loc_1E67219:     var_168 = var_E0.Fields.Item(0).Value
  loc_1E67221:     var_178 = 1
  loc_1E67233:     ' Referenced from: 1E77194
  loc_1E67233:     If (var_168 > var_178) Then
  loc_1E67271:       Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("Changed KOT"), "D")
  loc_1E67289:     Else
  loc_1E672A8:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E672C2:       If (Proc_6_38_E69628(var_168, &H28) = "Yes") Then
  loc_1E672D9:         var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E672E7:         Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E672EF:         var_1AC = -1 & var_168 
  loc_1E67313:         var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E67329:         var_1B0 = var_BC.Fields
  loc_1E67398:         unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, &H14
  loc_1E673A3:         Set var_E0 = var_2A0
  loc_1E673DA:       Else
  loc_1E673F7:         Proc_6_17_EAAE40(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E67431:         unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E6743C:         Set var_E0 = var_1B0
  loc_1E67456:       End If
  loc_1E6748F:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item(0))) = "Y") Then
  loc_1E674C8:         var_1E4 = Proc_260_1_10A4640(Proc_6_45_EADFB8("DUPLICATE KOT"), "D")
  loc_1E674CB:         ' Referenced from:   1E7742C
  loc_1E674CD:         Print 1, var_1E4
  loc_1E674E5:       Else
  loc_1E674FA:         var_188 = (Chr(&HF) + vbNullString)
  loc_1E67500:         Print 1, var_21C & Chr(&HF)
  loc_1E6750D:       End If
  loc_1E6750D:     End If
  loc_1E67512:     Set var_E0 = Nothing
  loc_1E6752A:     var_188 = (Chr(&HF) + "** ")
  loc_1E67534:     var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F95220))
  loc_1E6753D:     var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E67543:     Print 1, var_B8.Source
  loc_1E67557:     var_B4.MoveNext
  loc_1E6755E:     Print 1
  loc_1E67566:     Print 1
  loc_1E6756E:     Print 1
  loc_1E67576:     Print 1
  loc_1E6757E:     Print 1
  loc_1E67586:     Print 1
  loc_1E6758C:     GoTo loc_1E661BE
  loc_1E6758F:   End If
  loc_1E67591:   Close 1
  loc_1E675CF:   Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E67638:   var_1DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E67656:   If (&H14 And (var_1DC <> vbNullString)) Then
  loc_1E676BB:     var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E676C1:     Print 1, var_1AC
  loc_1E676E5:   Else
  loc_1E6775B:     If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E677C0:       var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E677C6:       Print 1, var_1AC
  loc_1E677EA:     Else
  loc_1E6782B:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E67840:     End If
  loc_1E67840:   End If
  loc_1E67842:   Close 1
  loc_1E6784C:   If (MemVar_1F953BC = "Y") Then
  loc_1E67891:     var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E67895:     var_A4 = var_158 'Variant
  loc_1E67899:     Do 'loop at: 1E777BD
  loc_1E67899:     
  loc_1E67899:
  loc_1E678AA:   Else
  loc_1E678E4:     For var_3BC = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3BC 'Integer
  loc_1E6792C:       var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E67930:       var_A4 = var_158 'Variant
  loc_1E67944:       var_12E = &HFF
  loc_1E6794A:     Next var_3BC 'Integer
  loc_1E6794F:   End If
  loc_1E6794F:   GoTo loc_1E5CC87
  loc_1E67952: End If
  loc_1E6795A: If (var_29C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1E6795F:   Close 1
  loc_1E6799D:   Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E679B1:   var_B4.MoveFirst
  loc_1E679B6:   ' Referenced from: 1E68DD4
  loc_1E679C5:   If Not(var_B4.EOF) Then
  loc_1E67AAD:     var_314 = "* KOT *"
  loc_1E67AF2:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", var_314))
  loc_1E67AFB:     var_90 = CStr(var_344)
  loc_1E67B3F:     If (0 = 0) Then
  loc_1E67B44:       Print 1
  loc_1E67B78:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E67B89:       If (var_F4 <> vbNullString) Then
  loc_1E67BB2:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1E67BB8:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E67BCA:       End If
  loc_1E67BD2:       If (var_F8 <> vbNullString) Then
  loc_1E67BFB:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1E67C01:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E67C13:       End If
  loc_1E67C1B:       If (var_FC <> vbNullString) Then
  loc_1E67C44:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1E67C4A:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E67C5C:       End If
  loc_1E67C5F:       ' Referenced from: 1E77BEA
  loc_1E67C5F:       Do 'loop at: 1E6E1B8
  loc_1E67C5F:       Do 'loop at: 1E77A8B
  loc_1E67C64:       If (var_100 <> vbNullString) Then
  loc_1E67C8D:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H28)))
  loc_1E67C93:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E67CA5:       End If
  loc_1E67CE1:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E67D43:         var_1D8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E67D4A:         var_20C = (3 + Chr(&H12))
  loc_1E67D50:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E67D73:       End If
  loc_1E67D75:       Print 1
  loc_1E67DB0:       Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8(var_144, &H14), "D")
  loc_1E67DF8:       Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8(var_90, &H14), "D", &H28)
  loc_1E67E12:       Print 1
  loc_1E67E1A:       Print 1
  loc_1E67E53:       Proc_6_39_E7D3A0(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E67E75:       var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E67E7F:       var_20C = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(CStr(3), &HA)))
  loc_1E67E85:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E67F37:       var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E67F41:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), &H28), &HC)))
  loc_1E67F4A:       var_20C = (CVar(Proc_6_45_EADFB8(CStr(3), &HA)) + " ")
  loc_1E67F54:       var_268 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E67F5A:       Print 1, "* NC LOT *"
  loc_1E67FEC:       var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E67FF6:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H32)))
  loc_1E67FFD:       var_21C = (CVar(Proc_6_45_EADFB8(CStr(3), &HA)) + Chr(&H12))
  loc_1E68003:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E680A8:       Proc_6_39_E7D3A0("* NC LOT *", CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E680E0:       Proc_6_39_E7D3A0(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6810E:       var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E68118:       var_334 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_45_EADFB8(CStr(var_314), 7)))
  loc_1E68133:       var_390 = IIf(("* NC LOT *" <> 0), (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), vbNullString)
  loc_1E68141:       var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_140, &HA)))
  loc_1E6814A:       var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E68151:       var_20C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E68154:       var_21C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H32)) + var_20C)
  loc_1E6815B:       var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + var_390)
  loc_1E68161:       Print 1, var_3A0
  loc_1E681C0:       var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E681C6:       Print 1, CVar(Proc_6_45_EADFB8(var_140, &HA))
  loc_1E681D3:     End If
  loc_1E681F9:     var_1AC = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1E68213:     var_1FC = (CVar(var_B4.Fields.Item("Remarks")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E68218:     var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1E68245:     var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E6824B:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E6826E:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E68274:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E68287:     var_92 = (var_92 + 4)
  loc_1E6828D:     var_B8.MoveFirst
  loc_1E68292:     ' Referenced from: 1E68724
  loc_1E682A1:     If Not(var_B8.EOF) Then
  loc_1E6831A:       If (&H12 And ((Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E68345:         var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E68363:         var_188 = (Chr(&HF) + "*")
  loc_1E6836D:         var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E68376:         var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + "*")
  loc_1E6837C:         Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E68393:         var_92 = (var_92 + 1)
  loc_1E68396:       End If
  loc_1E683E3:       Proc_6_39_E7D3A0(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E6841A:       var_2A0 = var_B8.Fields
  loc_1E68434:       var_324 = vbNullString
  loc_1E68486:       var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E6849F:       var_278 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_20C, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1E684B8:       var_380 = ("* LOT *" + CVar(Proc_6_52_EAE084(CStr(IIf((var_2A0.Item("Cancel").Value = "Y"), "Void", var_324)), 6)))
  loc_1E68511:       var_188 = (Chr(&HF) + CVar(CStr(vbNullString)))
  loc_1E68517:       Print 1, Space(3)
  loc_1E6852A:       var_92 = (var_92 + 1)
  loc_1E68566:       If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E685A9:         var_188 = (Chr(&HF) + "(")
  loc_1E685B3:         var_1FC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E685BC:         var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E685C2:         Print 1, var_20C
  loc_1E685E3:         var_92 = (var_92 + 1)
  loc_1E685E6:       End If
  loc_1E685F0:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E68609:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6860F:         Print 1, Space(3)
  loc_1E68621:         Print 1, "Contd."
  loc_1E68639:         Print 1, Chr(&HC)
  loc_1E68648:         var_94 = (var_94 + 1)
  loc_1E6864D:         var_92 = 0
  loc_1E6867F:         var_1DC = Proc_260_1_10A4640(var_90, "B", &H28, Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_92, &H28, var_92), &H28, Proc_260_2_136F49C(1, var_92, &H28, var_92)))
  loc_1E68684:         Print 1, var_1DC
  loc_1E68695:         var_92 = &H12
  loc_1E686AE:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E686B4:         Print 1, Space(3)
  loc_1E686D7:         var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E686DD:         Print 1, Space(3)
  loc_1E68700:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E68706:         Print 1, Space(3)
  loc_1E68719:         var_92 = (var_92 + 4)
  loc_1E6871C:       End If
  loc_1E6871F:       var_B8.MoveNext
  loc_1E68724:       GoTo loc_1E68292
  loc_1E68727:     End If
  loc_1E68731:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E68734:       ' Referenced from: 1E68755
  loc_1E6873E:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E68746:         Print 1, vbNullString
  loc_1E68752:         var_92 = (var_92 + 1)
  loc_1E68755:         GoTo loc_1E68734
  loc_1E68758:       End If
  loc_1E68758:     End If
  loc_1E6876E:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E68774:     Print 1, Space(3)
  loc_1E687D5:     var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E687DC:     var_1D8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, 1)) 'String
  loc_1E687DF:     var_1FC = (Space(3) + var_1D8)
  loc_1E687E5:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E68829:     var_188 = (Chr(&HF) + "***  ")
  loc_1E6883F:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E68871:     var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6888B:     If (Proc_6_38_E69628(var_168, var_92) = "Yes") Then
  loc_1E688A2:       var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E688B0:       Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E688B8:       var_1AC = -1 & var_168 
  loc_1E688DC:       var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E688F2:       var_1B0 = var_BC.Fields
  loc_1E68953:       var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E68961:       unk_43FED1.Execute CStr(var_314), var_2A0, var_92
  loc_1E6896C:       Set var_E0 = var_2A0
  loc_1E689A3:     Else
  loc_1E689C0:       Proc_6_17_EAAE40(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E689EC:       var_20C = var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E689FA:       unk_43FED1.Execute CStr(var_20C), -1, var_1B0
  loc_1E68A05:       Set var_E0 = var_1B0
  loc_1E68A1F:     End If
  loc_1E68A5B:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E68A99:       Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("Changed KOT"), "D")
  loc_1E68AB1:     Else
  loc_1E68AD0:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E68AEA:       If (Proc_6_38_E69628(var_168, &H28) = "Yes") Then
  loc_1E68B01:         var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E68B0F:         Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E68B17:         var_1AC = -1 & var_168 
  loc_1E68B3B:         var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E68B51:         var_1B0 = var_BC.Fields
  loc_1E68BC0:         unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, &H14
  loc_1E68BCB:         Set var_E0 = var_2A0
  loc_1E68C02:       Else
  loc_1E68C1F:         Proc_6_17_EAAE40(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E68C59:         unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E68C64:         Set var_E0 = var_1B0
  loc_1E68C7E:       End If
  loc_1E68CB7:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item(0))) = "Y") Then
  loc_1E68CF5:         Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("DUPLICATE KOT"), "D")
  loc_1E68D0D:       Else
  loc_1E68D22:         var_188 = (Chr(&HF) + vbNullString)
  loc_1E68D28:         Print 1, var_21C & Chr(&HF)
  loc_1E68D35:       End If
  loc_1E68D35:     End If
  loc_1E68D3A:     Set var_E0 = Nothing
  loc_1E68D52:     var_188 = (Chr(&HF) + "** ")
  loc_1E68D5C:     var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F95220))
  loc_1E68D65:     var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E68D6B:     Print 1, var_B8.Source
  loc_1E68D7F:     var_B4.MoveNext
  loc_1E68D86:     Print 1
  loc_1E68D8E:     Print 1
  loc_1E68D96:     Print 1
  loc_1E68D9E:     Print 1
  loc_1E68DA6:     Print 1
  loc_1E68DAE:     Print 1
  loc_1E68DB6:     Print 1
  loc_1E68DBE:     Print 1
  loc_1E68DC6:     Print 1
  loc_1E68DCE:     Print 1
  loc_1E68DD4:     GoTo loc_1E679B6
  loc_1E68DD7:   End If
  loc_1E68DD9:   Close 1
  loc_1E68E17:   Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E68E80:   var_1DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E68E9E:   If (&H14 And (var_1DC <> vbNullString)) Then
  loc_1E68F03:     var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E68F09:     Print 1, var_1AC
  loc_1E68F2D:   Else
  loc_1E68FA3:     If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E69008:       var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E6900E:       Print 1, var_1AC
  loc_1E69032:     Else
  loc_1E69073:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E69088:     End If
  loc_1E69088:   End If
  loc_1E6908A:   Close 1
  loc_1E69094:   If (MemVar_1F953BC = "Y") Then
  loc_1E690D9:     var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E690DD:     var_A4 = var_158 'Variant
  loc_1E690F2:   Else
  loc_1E6912C:     For var_3C0 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3C0 'Integer
  loc_1E69174:       var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E69178:       var_A4 = var_158 'Variant
  loc_1E6918C:       var_12E = &HFF
  loc_1E69192:     Next var_3C0 'Integer
  loc_1E69197:   End If
  loc_1E69197:   GoTo loc_1E5CC87
  loc_1E6919A: End If
  loc_1E691A2: Loop Until (var_29C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") 'do at: 1E5AFED
  loc_1E691A7: Close 1
  loc_1E691E5: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E691F9: var_B4.MoveFirst
  loc_1E691FE: ' Referenced from: 1E6AB8D
  loc_1E6920D: Loop Until Not(var_B4.EOF) 'do at: 1E5AB90
  loc_1E6933A: var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E69343: var_90 = CStr(var_344)
  loc_1E693AF: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E693BE: If (0 = 0) Then
  loc_1E693C3:   Print 1
  loc_1E693D1:   If (var_F4 <> vbNullString) Then
  loc_1E69407:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2A)))
  loc_1E6940E:     var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E69414:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E6942A:   End If
  loc_1E69432:   If (var_F8 <> vbNullString) Then
  loc_1E69468:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2A)))
  loc_1E6946F:     var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E69475:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E6948B:   End If
  loc_1E69493:   If (var_FC <> vbNullString) Then
  loc_1E694C9:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2A)))
  loc_1E694D0:     var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E694D6:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E694EC:   End If
  loc_1E694F4:   If (var_100 <> vbNullString) Then
  loc_1E6952A:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H2A)))
  loc_1E69531:     var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E69537:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E6954D:   End If
  loc_1E69589:   If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E695EB:     var_1D8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E695F2:     var_20C = (Chr(&H12) + Chr(&H12))
  loc_1E695F8:     Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E6961B:   End If
  loc_1E6963E:   If ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) Then
  loc_1E69643:     Print 1
  loc_1E69649:   End If
  loc_1E69672:   var_1D8 = (40 - Len(Trim(var_144)))
  loc_1E696B5:   var_2C4 = (40 - Len(Trim(var_144)))
  loc_1E696DF:   var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E696E6:   var_268 = (var_21C + Trim(var_144))
  loc_1E696ED:   var_324 = ("* NC LOT *" + Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))))
  loc_1E696F4:   var_344 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") + Chr(&H12))
  loc_1E696FA:   Print 1, var_344
  loc_1E69742:   var_1D8 = (40 - Len(Trim(var_90)))
  loc_1E69775:   var_298 = (40 - Len(Trim(var_90)))
  loc_1E6979F:   var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E697A9:   var_22C = (var_21C + CVar(var_90))
  loc_1E697B0:   var_314 = (Trim(var_144) + Space(CLng((Len(Trim(var_144)) / 2))))
  loc_1E697B7:   var_334 = (Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))) + Chr(&H12))
  loc_1E697BD:   Print 1, Chr(&H12)
  loc_1E69808:   var_1D8 = (39 - Len(Trim(var_11C)))
  loc_1E69837:   var_268 = Len(Trim(var_11C))
  loc_1E6983B:   var_278 = (39 - var_268)
  loc_1E69866:   var_21C = (Space(CLng((Chr(&H12) / 2))) + CVar(var_11C))
  loc_1E6986D:   var_2F4 = (var_21C + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E69898:   var_334 = (Chr(&H12) + IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString))
  loc_1E6989F:   var_380 = (Chr(&H12) + Chr(&H12))
  loc_1E698A5:   Print 1, vbNullString
  loc_1E69901:   If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1E69965:     var_188 = (Chr(&HF) + "Membership No.: ")
  loc_1E6996F:     var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E69976:     var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E6997C:     Print 1, var_21C
  loc_1E6999F:   End If
  loc_1E699D8:   If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1E69A3C:     var_188 = (Chr(&HF) + "Member : ")
  loc_1E69A43:     var_1D8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E69A46:     var_1FC = (Trim(var_11C) + var_1D8)
  loc_1E69A4D:     var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E69A53:     Print 1, var_21C
  loc_1E69A76:   End If
  loc_1E69AA9:   Proc_6_39_E7D3A0(var_1D8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E69B14:   Proc_6_39_E7D3A0(var_268, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E69B58:   var_2C4 = IIf((Proc_6_38_E69628(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_268), 5)), vbNullString)
  loc_1E69B72:   var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E69B7C:   var_20C = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(CStr(var_1D8), &HC)))
  loc_1E69B83:   var_2F4 = (Chr(&H12) + var_2C4)
  loc_1E69B8A:   var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + Chr(&H12))
  loc_1E69B90:   Print 1, IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString)
  loc_1E69C73:   var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E69C7D:   var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E69C86:   var_20C = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E69C90:   var_268 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E69C99:   var_278 = (var_268 + "KOT : ")
  loc_1E69CA5:   var_2C4 = (CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_268), 5)) + CVar(CStr(var_110)))
  loc_1E69CAE:   var_2F4 = (var_2C4 + "/")
  loc_1E69CB7:   var_314 = CVar(CStr(var_10E)) 'String
  loc_1E69CBA:   var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + var_314)
  loc_1E69CC1:   var_344 = (IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString) + Chr(&H12))
  loc_1E69CC7:   Print 1, Chr(&H12)
  loc_1E69D52:   If CBool(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) Then
  loc_1E69DB6:     var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E69DC0:     var_1FC = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20)))
  loc_1E69DC7:     var_21C = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20))), &HC)) + Chr(&H12))
  loc_1E69DCD:     Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E69DF0:   End If
  loc_1E69E72:   Proc_6_39_E7D3A0(var_268, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E69EAA:   Proc_6_39_E7D3A0(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E69ED8:   var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E69EE2:   var_334 = (var_2C4 + CVar(Proc_6_45_EADFB8(CStr(var_314), 7)))
  loc_1E69F18:   var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_140, &HA)))
  loc_1E69F21:   var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E69F2B:   var_21C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E69F32:   var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + IIf((var_268 <> 0), Chr(&H12), vbNullString))
  loc_1E69F39:   var_3E0 = (var_3A0 + Chr(&H12))
  loc_1E69F3F:   Print 1, var_3E0
  loc_1E69FAF:   var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E69FB6:   var_1D8 = (CVar(Proc_6_45_EADFB8(var_140, &HA)) + Chr(&H12))
  loc_1E69FBC:   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20))
  loc_1E69FCD: End If
  loc_1E69FF3: var_1AC = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Space(1))
  loc_1E6A00D: var_1FC = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1E6A019: var_20C = Space(1)
  loc_1E6A021: var_21C = (CVar(var_B4.Fields.Item("TableNo")) + var_20C)
  loc_1E6A03B: var_268 = (CVar(var_B4.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1E6A084: var_188 = (Chr(&HF) + CVar(CStr(var_268)))
  loc_1E6A08B: var_1D8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E6A091: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6A0C5: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6A0CC: var_1D8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E6A0D2: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6A0E9: var_92 = (var_92 + 4)
  loc_1E6A0EF: var_B8.MoveFirst
  loc_1E6A0F4: ' Referenced from: 1E6A4F4
  loc_1E6A103: If Not(var_B8.EOF) Then
  loc_1E6A17C:   If (&H12 And ((Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E6A1A7:     var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E6A1C5:     var_188 = (Chr(&HF) + "*")
  loc_1E6A1CF:     var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E6A1D8:     var_1D8 = (Chr(&H12) + "*")
  loc_1E6A1DE:     Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6A1F5:     var_92 = (var_92 + 1)
  loc_1E6A1F8:   End If
  loc_1E6A245:   Proc_6_39_E7D3A0(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E6A279:   var_2A0 = var_B8.Fields
  loc_1E6A290:   Proc_6_39_E7D3A0(var_314, CVar(var_2A0.Item("Rate")), 1)
  loc_1E6A2A4:   var_324 = "0.00"
  loc_1E6A333:   var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1)) + Space(1))
  loc_1E6A34C:   var_278 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_20C, "0.000")), 7, CVar(Proc_6_52_EAE084("Qty", 7)))))
  loc_1E6A360:   var_2C4 = (CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(CStr(Format(var_20C, "0.000")), 7, CVar(Proc_6_52_EAE084("Qty", 7))))), 5)) + Space(1))
  loc_1E6A379:   var_380 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_314, var_324)), 7, var_2C4)))
  loc_1E6A392:   var_42C = (vbNullString + CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)))
  loc_1E6A40C:   var_188 = (Chr(&HF) + CVar(CStr(var_42C)))
  loc_1E6A413:   var_1D8 = (Space(1) + Chr(&H12))
  loc_1E6A419:   Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6A430:   var_92 = (var_92 + 1)
  loc_1E6A46C:   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E6A4AF:     var_188 = (Chr(&HF) + "(")
  loc_1E6A4B9:     var_1FC = (Space(1) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E6A4C2:     var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E6A4C8:     Print 1, var_20C
  loc_1E6A4E9:     var_92 = (var_92 + 1)
  loc_1E6A4EC:   End If
  loc_1E6A4EF:   var_B8.MoveNext
  loc_1E6A4F4:   GoTo loc_1E6A0F4
  loc_1E6A4F7: End If
  loc_1E6A51A: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6A521: var_1D8 = (Space(1) + Chr(&H12))
  loc_1E6A527: Print 1, CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))))
  loc_1E6A599: var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E6A5A3: var_1FC = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E6A5AA: var_21C = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E6A5B0: Print 1, "0.000"
  loc_1E6A605: var_188 = (Chr(&HF) + "***  ")
  loc_1E6A618: var_20C = ("  ***" + Chr(&H12))
  loc_1E6A622: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E6A658: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6A672: Loop Until (Proc_6_38_E69628(var_168) = "Yes") 'do at: 1E5A78A
  loc_1E6A689: var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E6A697: Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E6A69F: var_1AC = -1 & var_168 
  loc_1E6A6C3: var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6A6D9: var_1B0 = var_BC.Fields
  loc_1E6A73A: var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E6A748: unk_43FED1.Execute CStr(var_314), var_2A0, &H12
  loc_1E6A753: Set var_E0 = var_2A0
  loc_1E6A787: GoTo loc_1E5A806
  loc_1E6A7A7: Proc_6_17_EAAE40(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E6A7D7: var_18C = CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')")
  loc_1E6A7E1: unk_43FED1.Execute var_18C, -1, var_1B0
  loc_1E6A842: Loop Until (var_1B0.Fields.Fields.Item(0).Value > 1) 'do at: 1E5A898
  loc_1E6A880: Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("Changed KOT"), "D")
  loc_1E6A895: GoTo loc_1E5AAF1
  loc_1E6A8B7: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6A8D1: Loop Until (Proc_6_38_E69628(var_168, &H28) = "Yes") 'do at: 1E5A9E9
  loc_1E6A8E8: var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E6A8F6: Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E6A8FE: var_1AC = -1 & var_168 
  loc_1E6A922: var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6A938: var_1B0 = var_BC.Fields
  loc_1E6A9A7: unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, &H14
  loc_1E6A9B2: Set var_E0 = var_2A0
  loc_1E6A9E6: GoTo loc_1E5AA65
  loc_1E6AA06: Proc_6_17_EAAE40(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E6AA40: unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E6AA9E: Loop Until (Proc_6_38_E69628(CVar(var_1B0.Fields.Fields.Fields.Item(0))) = "Y") 'do at: 1E5AAF1
  loc_1E6AADC: Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("DUPLICATE KOT"), "D")
  loc_1E6AAF6: Set var_E0 = Nothing
  loc_1E6AAFC: var_B4.MoveNext
  loc_1E6AB03: Print 1
  loc_1E6AB1E: var_188 = (Chr(&HF) + "** ")
  loc_1E6AB28: var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F95220))
  loc_1E6AB31: var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E6AB37: Print 1, var_B8.Source
  loc_1E6AB4A: Print 1
  loc_1E6AB52: Print 1
  loc_1E6AB78: var_1AC = (Chr(&H1B) + Chr(&H6D))
  loc_1E6AB7E: Print 1, var_21C & Chr(&H1B) & " AND SNO In (Select SNo From ("
  loc_1E6AB8D: GoTo loc_1E691FE
  loc_1E6AB92: Close 1
  loc_1E6ABEC: var_1DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E6AC0A: Loop Until (&H14 And (var_1DC <> vbNullString)) 'do at: 1E5ACE6
  loc_1E6AC49: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6ACBC: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E6ACC2: Print 1, var_1AC
  loc_1E6ACE3: GoTo loc_1E5AEDB
  loc_1E6AD5C: Loop Until ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) 'do at: 1E5AE38
  loc_1E6AD9B: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6AE0E: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E6AE14: Print 1, var_1AC
  loc_1E6AE35: GoTo loc_1E5AEDB
  loc_1E6AE74: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6AEC6: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E6AEDD: Close 1
  loc_1E6AEE7: Loop Until (MemVar_1F953BC = "Y") 'do at: 1E5AF45
  loc_1E6AF2C: var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E6AF30: var_A4 = var_158 'Variant
  loc_1E6AF42: GoTo loc_1E5AFEA
  loc_1E6AF7F: For var_430 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_430 'Integer
  loc_1E6AFC7:   var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E6AFCB:   var_A4 = var_158 'Variant
  loc_1E6AFDF:   var_12E = &HFF
  loc_1E6AFE5: Next var_430 'Integer
  loc_1E6AFEA: GoTo loc_1E5CC87
  loc_1E6AFF5: Loop Until (var_29C = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") 'do at: 1E5CC87
  loc_1E6AFFA: Close 1
  loc_1E6B038: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E6B04C: var_B4.MoveFirst
  loc_1E6B060: Loop Until Not(var_B4.EOF) 'do at: 1E5C82D
  loc_1E6B18D: var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E6B196: var_90 = CStr(var_344)
  loc_1E6B202: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E6B211: Loop Until (0 = 0) 'do at: 1E5BD52
  loc_1E6B216: Print 1
  loc_1E6B224: Loop Until (var_F4 <> vbNullString) 'do at: 1E5B27D
  loc_1E6B25A: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2A)))
  loc_1E6B261: var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E6B267: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E6B285: Loop Until (var_F8 <> vbNullString) 'do at: 1E5B2DE
  loc_1E6B2BB: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2A)))
  loc_1E6B2C2: var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E6B2C8: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E6B2E6: Loop Until (var_FC <> vbNullString) 'do at: 1E5B33F
  loc_1E6B31C: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2A)))
  loc_1E6B323: var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E6B329: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E6B347: Loop Until (var_100 <> vbNullString) 'do at: 1E5B3A0
  loc_1E6B37D: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H2A)))
  loc_1E6B384: var_1FC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E6B38A: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E6B3C3: Loop Until ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) 'do at: 1E5B3CE
  loc_1E6B3C8: Print 1
  loc_1E6B3F7: var_1D8 = (40 - Len(Trim(var_144)))
  loc_1E6B43A: var_2C4 = (40 - Len(Trim(var_144)))
  loc_1E6B464: var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E6B46B: var_268 = (var_21C + Trim(var_144))
  loc_1E6B472: var_324 = ("* NC LOT *" + Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))))
  loc_1E6B479: var_344 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") + Chr(&H12))
  loc_1E6B47F: Print 1, var_344
  loc_1E6B4C7: var_1D8 = (40 - Len(Trim(var_90)))
  loc_1E6B4FA: var_298 = (40 - Len(Trim(var_90)))
  loc_1E6B524: var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E6B52E: var_22C = (var_21C + CVar(var_90))
  loc_1E6B535: var_314 = (Trim(var_144) + Space(CLng((Len(Trim(var_144)) / 2))))
  loc_1E6B53C: var_334 = (Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))) + Chr(&H12))
  loc_1E6B542: Print 1, Chr(&H12)
  loc_1E6B58D: var_1D8 = (39 - Len(Trim(var_11C)))
  loc_1E6B5BC: var_268 = Len(Trim(var_11C))
  loc_1E6B5C0: var_278 = (39 - var_268)
  loc_1E6B5EB: var_21C = (Space(CLng((Chr(&H12) / 2))) + CVar(var_11C))
  loc_1E6B5F2: var_2F4 = (var_21C + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E6B61D: var_334 = (Chr(&H12) + IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString))
  loc_1E6B624: var_380 = (Chr(&H12) + Chr(&H12))
  loc_1E6B62A: Print 1, vbNullString
  loc_1E6B686: Loop Until (Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) 'do at: 1E5B724
  loc_1E6B6EA: var_188 = (Chr(&HF) + "Membership No.: ")
  loc_1E6B6F4: var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E6B6FB: var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E6B701: Print 1, var_21C
  loc_1E6B75D: Loop Until (Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) 'do at: 1E5B7FB
  loc_1E6B7C1: var_188 = (Chr(&HF) + "Member : ")
  loc_1E6B7C8: var_1D8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E6B7CB: var_1FC = (Trim(var_11C) + var_1D8)
  loc_1E6B7D2: var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E6B7D8: Print 1, var_21C
  loc_1E6B82E: Proc_6_39_E7D3A0(var_1D8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E6B899: Proc_6_39_E7D3A0(var_268, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E6B8DD: var_2C4 = IIf((Proc_6_38_E69628(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_268), 5)), vbNullString)
  loc_1E6B8F7: var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E6B901: var_20C = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(CStr(var_1D8), &HC)))
  loc_1E6B908: var_2F4 = (Chr(&H12) + var_2C4)
  loc_1E6B90F: var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + Chr(&H12))
  loc_1E6B915: Print 1, IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString)
  loc_1E6B9F8: var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E6BA02: var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E6BA0B: var_20C = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E6BA15: var_268 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E6BA1E: var_278 = (var_268 + "KOT : ")
  loc_1E6BA2A: var_2C4 = (CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_268), 5)) + CVar(CStr(var_110)))
  loc_1E6BA33: var_2F4 = (var_2C4 + "/")
  loc_1E6BA3C: var_314 = CVar(CStr(var_10E)) 'String
  loc_1E6BA3F: var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + var_314)
  loc_1E6BA46: var_344 = (IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString) + Chr(&H12))
  loc_1E6BA4C: Print 1, Chr(&H12)
  loc_1E6BAD7: Loop Until CBool(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) 'do at: 1E5BB75
  loc_1E6BB3B: var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E6BB45: var_1FC = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20)))
  loc_1E6BB4C: var_21C = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20))), &HC)) + Chr(&H12))
  loc_1E6BB52: Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E6BBF7: Proc_6_39_E7D3A0(var_268, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6BC2F: Proc_6_39_E7D3A0(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6BC5D: var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E6BC67: var_334 = (var_2C4 + CVar(Proc_6_45_EADFB8(CStr(var_314), 7)))
  loc_1E6BC9D: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_140, &HA)))
  loc_1E6BCA6: var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E6BCAD: var_20C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E6BCB0: var_21C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20)) + var_20C)
  loc_1E6BCB7: var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + IIf((var_268 <> 0), Chr(&H12), vbNullString))
  loc_1E6BCBE: var_3E0 = (var_3A0 + Chr(&H12))
  loc_1E6BCC4: Print 1, "Void"
  loc_1E6BD34: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6BD3B: var_1D8 = (CVar(Proc_6_45_EADFB8(var_140, &HA)) + Chr(&H12))
  loc_1E6BD41: Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20))
  loc_1E6BD78: var_1AC = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1D)) + Space(1))
  loc_1E6BD92: var_1FC = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1E6BDD1: var_188 = (Chr(&HF) + CVar(CStr(CVar(var_B4.Fields.Item("TableNo")))))
  loc_1E6BDD8: var_1D8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E6BDDE: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6BE12: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6BE19: var_1D8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E6BE1F: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6BE36: var_92 = (var_92 + 4)
  loc_1E6BE3C: var_B8.MoveFirst
  loc_1E6BE50: Loop Until Not(var_B8.EOF) 'do at: 1E5C194
  loc_1E6BEC9: Loop Until (&H12 And ((Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108))) 'do at: 1E5BF45
  loc_1E6BF12: var_188 = (Chr(&HF) + "*")
  loc_1E6BF1C: var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))))
  loc_1E6BF25: var_1D8 = (Chr(&H12) + "*")
  loc_1E6BF2B: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6BF42: var_92 = (var_92 + 1)
  loc_1E6BF92: Proc_6_39_E7D3A0(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E6BFA9: var_2A0 = var_B8.Fields
  loc_1E6C015: var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H1D)) + Space(1))
  loc_1E6C02E: var_22C = (CVar(Proc_6_52_EAE084("Qty", 7)) + CVar(Proc_6_52_EAE084(CStr(var_20C), 7)))
  loc_1E6C044: var_324 = CVar(Proc_6_52_EAE084(CStr(IIf((var_2A0.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1E6C047: var_334 = (CVar(var_B4.Fields.Item("GuarAtt")) + var_324)
  loc_1E6C0A9: var_188 = (Chr(&HF) + CVar(CStr(Chr(&H12))))
  loc_1E6C0B0: var_1D8 = (Space(1) + Chr(&H12))
  loc_1E6C0B6: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E6C0CD: var_92 = (var_92 + 1)
  loc_1E6C109: Loop Until (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) 'do at: 1E5C189
  loc_1E6C14C: var_188 = (Chr(&HF) + "(")
  loc_1E6C156: var_1FC = (Space(1) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E6C15F: var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E6C165: Print 1, var_20C
  loc_1E6C186: var_92 = (var_92 + 1)
  loc_1E6C18C: var_B8.MoveNext
  loc_1E6C191: GoTo loc_1E5BE41
  loc_1E6C1B7: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6C1BE: var_1D8 = (Space(1) + Chr(&H12))
  loc_1E6C1C4: Print 1, CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))))
  loc_1E6C236: var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E6C240: var_1FC = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E6C247: var_21C = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E6C24D: Print 1, CVar(Proc_6_52_EAE084(CStr(Chr(&H12)), 7))
  loc_1E6C2A2: var_188 = (Chr(&HF) + "***  ")
  loc_1E6C2B5: var_20C = ("  ***" + Chr(&H12))
  loc_1E6C2BF: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E6C2F5: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6C30F: Loop Until (Proc_6_38_E69628(var_168) = "Yes") 'do at: 1E5C427
  loc_1E6C326: var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E6C334: Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E6C33C: var_1AC = -1 & var_168 
  loc_1E6C360: var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6C376: var_1B0 = var_BC.Fields
  loc_1E6C3D7: var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E6C3E5: unk_43FED1.Execute CStr(var_314), var_2A0, &H12
  loc_1E6C3F0: Set var_E0 = var_2A0
  loc_1E6C424: GoTo loc_1E5C4A3
  loc_1E6C444: Proc_6_17_EAAE40(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E6C474: var_18C = CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')")
  loc_1E6C47E: unk_43FED1.Execute var_18C, -1, var_1B0
  loc_1E6C4DF: Loop Until (var_1B0.Fields.Fields.Item(0).Value > 1) 'do at: 1E5C535
  loc_1E6C51D: Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("Changed KOT"), "D")
  loc_1E6C532: GoTo loc_1E5C78E
  loc_1E6C554: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6C56E: Loop Until (Proc_6_38_E69628(var_168, &H28) = "Yes") 'do at: 1E5C686
  loc_1E6C585: var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E6C593: Proc_6_17_EAAE40(var_168, arg_C, var_188, var_324)
  loc_1E6C59B: var_1AC = -1 & var_168 
  loc_1E6C5BF: var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6C5D5: var_1B0 = var_BC.Fields
  loc_1E6C636: var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'" 
  loc_1E6C644: unk_43FED1.Execute CStr(var_314), var_2A0, &H14
  loc_1E6C64F: Set var_E0 = var_2A0
  loc_1E6C683: GoTo loc_1E5C702
  loc_1E6C6A3: Proc_6_17_EAAE40(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E6C6DD: unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E6C73B: Loop Until (Proc_6_38_E69628(CVar(var_1B0.Fields.Fields.Fields.Item(0))) = "Y") 'do at: 1E5C78E
  loc_1E6C779: Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("DUPLICATE KOT"), "D")
  loc_1E6C793: Set var_E0 = Nothing
  loc_1E6C799: var_B4.MoveNext
  loc_1E6C7A0: Print 1
  loc_1E6C7BB: var_188 = (Chr(&HF) + "** ")
  loc_1E6C7C5: var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F95220))
  loc_1E6C7CE: var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E6C7D4: Print 1, var_B8.Source
  loc_1E6C7E7: Print 1
  loc_1E6C7EF: Print 1
  loc_1E6C815: var_1AC = (Chr(&H1B) + Chr(&H6D))
  loc_1E6C81B: Print 1, var_21C & Chr(&H1B) & " AND SNO In (Select SNo From ("
  loc_1E6C82A: GoTo loc_1E5B051
  loc_1E6C82F: Close 1
  loc_1E6C889: var_1DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E6C8A7: Loop Until (&H14 And (var_1DC <> vbNullString)) 'do at: 1E5C983
  loc_1E6C8E6: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6C959: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E6C95F: Print 1, var_1AC
  loc_1E6C980: GoTo loc_1E5CB78
  loc_1E6C9F9: Loop Until ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) 'do at: 1E5CAD5
  loc_1E6CA38: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6CAAB: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E6CAB1: Print 1, var_1AC
  loc_1E6CAD2: GoTo loc_1E5CB78
  loc_1E6CB11: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6CB63: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E6CB7A: Close 1
  loc_1E6CB84: Loop Until (MemVar_1F953BC = "Y") 'do at: 1E5CBE2
  loc_1E6CBC9: var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E6CBCD: var_A4 = var_158 'Variant
  loc_1E6CBDF: GoTo loc_1E5CC87
  loc_1E6CC1C: For var_434 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_434 'Integer
  loc_1E6CC64:   var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E6CC68:   var_A4 = var_158 'Variant
  loc_1E6CC7C:   var_12E = &HFF
  loc_1E6CC82: Next var_434 'Integer
  loc_1E6CCC7: Loop Until ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (var_12E = &HFF)) 'do at: 1E5CE5D
  loc_1E6CCE9: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6CD03: Loop Until (Proc_6_38_E69628(var_168) = "Yes") 'do at: 1E5CE0B
  loc_1E6CD13: var_178 = "UPDATE KOT SET PRINTED='Y' From (KOT K Left Join ItemMast I on K.Item=I.Code) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID="
  loc_1E6CD23: Proc_6_17_EAAE40(var_168, arg_C, var_178)
  loc_1E6CD3E: var_1D8 = var_B8.Source
  loc_1E6CD65: var_1B0 = var_BC.Fields
  loc_1E6CD8F: var_278 = var_314 & var_168 & " AND SNO In (Select SNo From (" & var_1D8 & ")Q) AND Depart.Code='" & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1E6CDD4: unk_43FED1.Execute CStr(var_278 & var_BC.Fields.Item("Code").Value & "'"), -1, var_2A0
  loc_1E6CE08: GoTo loc_1E5CE5D
  loc_1E6CE28: Proc_6_17_EAAE40(var_168, arg_C, "UPDATE KOT SET PRINTED='Y' WHERE DOCID=")
  loc_1E6CE47: unk_43FED1.Execute CStr(var_1D8 & var_168 & vbNullString), -1, var_1B0
  loc_1E6CE60: var_BC.MoveNext
  loc_1E6CE65: GoTo loc_1E6344E
  loc_1E6CE6B: var_134.MoveNext
  loc_1E6CE70: GoTo loc_1E63152
  loc_1E6CE78: Set var_B4 = Nothing
  loc_1E6CE80: Set var_B8 = Nothing
  loc_1E6CE88: Set var_BC = Nothing
  loc_1E6CE90: Set var_D4 = Nothing
  loc_1E6CE98: Set var_C8 = Nothing
  loc_1E6CEA0: Set var_134 = Nothing
  loc_1E6CEA8: Set var_148 = Nothing
  loc_1E6CEAB: Exit Sub
  loc_1E6CEAC: Proc_6_60_E63754()
  loc_1E6CEB1: Exit Sub
End Sub

Public Sub Proc_260_22_1BD4208(arg_C, arg_10) '1BD4208
  'Data Table: 43FECC
  Dim var_134 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim unk_43FED1 As Connection15
  Dim var_B8 As Recordset15
  Dim var_16C As Fields15
  Dim var_124 As Variant
  Dim var_184 As Variant
  Dim var_158 As Variant
  Dim var_F4 As Recordset15
  Dim var_168 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim var_19C As String
  Dim var_1A0 As String
  Dim var_1A4 As Fields15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_284 As Variant
  Dim var_308 As String
  Dim var_30C As String
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_1EC As Variant
  Dim var_174 As Field20
  Dim var_25C As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_E0 As Recordset15
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_304 As Variant
  Dim var_33C As Variant
  Dim var_2E4 As Variant
  Dim var_2D4 As Variant
  Dim var_2F4 As Variant
  Dim var_394 As Variant
  loc_1BCEC18: On Error Goto loc_1BD4201
  loc_1BCEC38: Proc_6_17_EAAE40(var_124, arg_C, "SELECT Top 1 * FROM KOT WHERE DocId=")
  loc_1BCEC4E: unk_43FED1.Execute CStr(var_168 & var_124), -1, var_16C
  loc_1BCEC59: Set var_B8 = var_16C
  loc_1BCEC7F: If (var_B8.RecordCount = 1) Then
  loc_1BCECAA:   var_F8 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("RestCode")))
  loc_1BCECDB:   var_FC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("RoomNo")))
  loc_1BCECF3:   var_16C = var_B8.Fields
  loc_1BCED03:   var_124 = CVar(var_16C.Item("Roomtype")) 'Address
  loc_1BCED14:   var_168 = "Table"
  loc_1BCED40:   var_100 = CStr(IIf((Proc_6_38_E69628(var_124) = "RO"), "Room", var_168))
  loc_1BCED5A: End If
  loc_1BCED77: Proc_6_17_EAAE40(var_124, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BCED8D: unk_43FED1.Execute CStr(var_168 & var_124), -1, var_16C
  loc_1BCED98: Set var_F4 = var_16C
  loc_1BCEDBE: If (var_F4.RecordCount > 0) Then
  loc_1BCEDF8:   var_E4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F4.Fields.Item("KOTHeader1"))))))
  loc_1BCEE3E:   var_E8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F4.Fields.Item("KOTHeader2"))))))
  loc_1BCEE84:   var_EC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F4.Fields.Item("KOTHeader3"))))))
  loc_1BCEEA2:   var_16C = var_F4.Fields
  loc_1BCEEB2:   var_124 = CVar(var_16C.Item("KOTHeader4")) 'Address
  loc_1BCEECA:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(var_124))))
  loc_1BCEED9: End If
  loc_1BCEEDE: Set var_F4 = Nothing
  loc_1BCEEE4: MemVar_1F953C4 = "N"
  loc_1BCEEEB: MemVar_1F953C8 = "N"
  loc_1BCEEF2: MemVar_1F953CC = "K"
  loc_1BCEEFD: var_148 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BCEF12: Proc_6_17_EAAE40(var_124, arg_C)
  loc_1BCEF28: var_8C = CStr(CVar(var_148 & "Where K.DocID=") & var_124 & vbNullString)
  loc_1BCEF40: var_144 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1BCEF4E: Proc_6_17_EAAE40(var_124, arg_C)
  loc_1BCEF56: var_168 = var_144 & var_124 
  loc_1BCEF5F: var_194 = var_168 & vbNullString 
  loc_1BCEF64: var_90 = CStr(var_194)
  loc_1BCEF7A: If (var_8C = vbNullString) Then
  loc_1BCEF82:   Result 0 End Sub 'Integer
  loc_1BCEF83: End If
  loc_1BCEF8B: If (var_90 = vbNullString) Then
  loc_1BCEF93:   Result 0 End Sub 'Integer
  loc_1BCEF94: End If
  loc_1BCEFBD: var_1A0 = "SELECT DISTINCT DOCID FROM KOT WHERE RESTCODE='" & var_F8 & "' AND ROOMNO='" & var_FC & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y') AND CONTRADOCID IS NULL"
  loc_1BCEFC6: unk_43FED1.Execute var_1A0, var_124, -1
  loc_1BCEFF9: If (var_16C.RecordCount = 1) Then
  loc_1BCEFFF:   var_CC = "New Order"
  loc_1BCF005: Else
  loc_1BCF008:   var_CC = "Running Order"
  loc_1BCF00B: End If
  loc_1BCF021: unk_43FED1.Execute var_8C, var_124, -1
  loc_1BCF02C: Set var_B8 = var_16C
  loc_1BCF044: var_16C = var_B8.Fields
  loc_1BCF084: var_144 = CVar(var_B8.Fields.Item("ContraDocId")) 'Address
  loc_1BCF0AB: If (var_16C And (Proc_6_38_E69628(var_144, (Proc_6_38_E69628(CVar(var_16C.Item("NCKOT")), var_16C) <> "Y")) <> vbNullString)) Then
  loc_1BCF0C1:   var_124 = "Sale Bill Already Generated !!"
  loc_1BCF0C7:   MsgBox(var_124, &H40, var_144, var_168, var_194)
  loc_1BCF0DC:   Result 0 End Sub 'Integer
  loc_1BCF0DD: End If
  loc_1BCF0F1: var_148 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & var_F8
  loc_1BCF101: unk_43FED1.Execute var_148 & "'", var_124, -1
  loc_1BCF10C: Set var_C0 = var_16C
  loc_1BCF11C: ' Referenced from: 1BD41E0
  loc_1BCF12B: If Not(var_C0.EOF) Then
  loc_1BCF135:   var_144 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1BCF143:   Proc_6_17_EAAE40(var_124, arg_C)
  loc_1BCF17D:   unk_43FED1.Execute CStr(var_144 & var_124 & vbNullString), var_124, -1
  loc_1BCF188:   Set var_BC = var_16C
  loc_1BCF197:   var_170 = var_BC.RecordCount
  loc_1BCF1A5:   If (var_170 > 0) Then
  loc_1BCF1B7:     var_16C = var_C0.Fields
  loc_1BCF1D6:     var_1BC = Trim(CVar(var_16C.Item("PrintType"))) 'Variant
  loc_1BCF1EB:     If (var_1BC = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BCF1F2:       Set var_DC = New 
  loc_1BCF1FD:       Set var_DC = Proc_260_24_EF3164(var_DC, var_16C)
  loc_1BCF203:       Me.Recordset15.MoveFirst
  loc_1BCF208:       ' Referenced from: 1BCFF0D
  loc_1BCF217:       If Not(var_B8.EOF) Then
  loc_1BCF21C:         var_96 = 0
  loc_1BCF296:         var_1FC = CVar(var_B8.Fields.Item("NCKOT")) 'Address
  loc_1BCF344:         var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(var_1FC, var_96) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BCF34D:         var_94 = CStr(var_304)
  loc_1BCF391:         If (var_96 = 0) Then
  loc_1BCF397:           var_19C = vbNullString
  loc_1BCF3B2:           Proc_260_25_F11F48(var_DC, vbNullString, vbNullString)
  loc_1BCF3EE:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BCF407:           var_19C = vbNullString
  loc_1BCF416:           var_144 = (Space(1) + CVar(var_104))
  loc_1BCF42B:           Proc_260_25_F11F48(var_DC, vbNullString, CStr(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1))))
  loc_1BCF458:           Proc_260_25_F11F48(var_DC, vbNullString, var_94, vbNullString)
  loc_1BCF46C:           var_19C = vbNullString
  loc_1BCF487:           Proc_260_25_F11F48(var_DC, vbNullString, vbNullString, var_19C)
  loc_1BCF4BB:           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1)), CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BCF4EF:           var_19C = vbNullString
  loc_1BCF4F8:           Proc_260_25_F11F48(var_DC, var_19C, " KOT No.   : " & Proc_6_45_EADFB8(CStr(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1))), &HA, var_19C))
  loc_1BCF5B4:           var_30C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BCF5C8:           Proc_260_25_F11F48(var_DC, vbNullString, " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_30C)
  loc_1BCF63A:           var_308 = vbNullString
  loc_1BCF65A:           Proc_260_25_F11F48(var_DC, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks")), vbNullString), &H1E))
  loc_1BCF690:           var_308 = Proc_6_45_EADFB8(var_100, &HA)
  loc_1BCF6D5:           var_1A0 = vbNullString
  loc_1BCF6E4:           var_168 = (Space(1) + CVar(var_308))
  loc_1BCF6ED:           var_194 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1))) + ": ")
  loc_1BCF6F7:           var_1EC = (3 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), var_308), 5)))
  loc_1BCF70C:           Proc_260_25_F11F48(var_DC, vbNullString, CStr(var_1EC))
  loc_1BCF739:           var_198 = vbNullString
  loc_1BCF74E:           Proc_260_25_F11F48(var_DC, vbNullString, var_C4)
  loc_1BCF75A:         End If
  loc_1BCF780:         var_168 = (var_198 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1BCF794:         var_1CC = (Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1))) + Space(1))
  loc_1BCF7AE:         var_1EC = (var_1A0 + CVar(Proc_6_52_EAE084("Qty", 3, CVar(var_B8.Fields.Item("TableNo")))))
  loc_1BCF7B3:         var_B0 = CStr(var_1EC)
  loc_1BCF7D1:         var_198 = vbNullString
  loc_1BCF7E6:         Proc_260_25_F11F48(var_DC, vbNullString, var_B0)
  loc_1BCF7F5:         var_198 = vbNullString
  loc_1BCF80A:         Proc_260_25_F11F48(var_DC, vbNullString, var_C4)
  loc_1BCF81C:         var_96 = (var_96 + 4)
  loc_1BCF822:         var_BC.MoveFirst
  loc_1BCF827:         ' Referenced from: 1BCFBA8
  loc_1BCF836:         If Not(var_BC.EOF) Then
  loc_1BCF886:           Proc_6_39_E7D3A0(var_1FC, CVar(var_BC.Fields.Item("qty")), &H12)
  loc_1BCF8B1:           var_184 = "Cancel"
  loc_1BCF8EB:           var_20C = "Y"
  loc_1BCF929:           var_194 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BCF93D:           var_1DC = (Space(1) + Space(1))
  loc_1BCF953:           var_25C = CVar(Proc_6_52_EAE084(CStr(Format(var_1FC, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 3, CVar(var_B8.Fields.Item("TableNo")))))) 'String
  loc_1BCF956:           var_284 = (var_198 + var_25C)
  loc_1BCF96C:           var_350 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item(var_184).Value = var_20C), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCKOT")))) 'String
  loc_1BCF96F:           var_360 = (var_198 + var_350)
  loc_1BCF9CE:           Proc_260_25_F11F48(var_DC, vbNullString, CStr(var_360))
  loc_1BCF9E0:           var_96 = (var_96 + 1)
  loc_1BCFA1C:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BCFA4D:             var_308 = vbNullString
  loc_1BCFA74:             Proc_260_25_F11F48(var_DC, vbNullString, "(" & Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BCFA94:             var_96 = (var_96 + 1)
  loc_1BCFA97:           End If
  loc_1BCFAA1:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BCFABC:             Proc_260_25_F11F48(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BCFAE6:             Proc_260_25_F11F48(var_DC, vbNullString, " Contd.", vbNullString)
  loc_1BCFAFA:             var_98 = (var_98 + 1)
  loc_1BCFB1A:             Proc_260_25_F11F48(var_DC, vbNullString, var_94, vbNullString, 0)
  loc_1BCFB43:             Proc_260_25_F11F48(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BCFB67:             Proc_260_25_F11F48(var_DC, vbNullString, var_B0, vbNullString)
  loc_1BCFB8B:             Proc_260_25_F11F48(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BCFB9D:             var_96 = (var_96 + 4)
  loc_1BCFBA0:           End If
  loc_1BCFBA3:           var_BC.MoveNext
  loc_1BCFBA8:           GoTo loc_1BCF827
  loc_1BCFBAB:         End If
  loc_1BCFBB5:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BCFBB8:           ' Referenced from: 1BCFBFA
  loc_1BCFBC2:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BCFBE3:             Proc_260_25_F11F48(var_DC, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BCFBF7:             var_96 = (var_96 + 1)
  loc_1BCFBFA:             GoTo loc_1BCFBB8
  loc_1BCFBFD:           End If
  loc_1BCFBFD:         End If
  loc_1BCFC15:         Proc_260_25_F11F48(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BCFC30:         var_16C = var_B8.Fields
  loc_1BCFC83:         Proc_260_25_F11F48(var_DC, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C.Item("WaiterName")), 1, &H12), &H14))
  loc_1BCFCAA:         var_124 = Trim(var_CC)
  loc_1BCFCDE:         Proc_260_25_F11F48(var_DC, vbNullString, CStr(" ***  " & var_124 & "  ***"), vbNullString)
  loc_1BCFD12:         Proc_6_17_EAAE40(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", Space(1), -1)
  loc_1BCFD31:         unk_43FED1.Execute CStr(var_16C & var_124 & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), vbNullString, vbNullString
  loc_1BCFD62:         var_16C = var_16C.Fields
  loc_1BCFD72:         var_124 = var_16C.Item(0).Value
  loc_1BCFD8C:         If (var_124 > 1) Then
  loc_1BCFD92:           var_1A0 = vbNullString
  loc_1BCFDB6:           Proc_260_25_F11F48(var_DC, vbNullString, " ***  " & "Changed KOT" & "  ***")
  loc_1BCFDC9:         Else
  loc_1BCFDD6:           var_134 = "Select Printed from kot where docid="
  loc_1BCFDE6:           Proc_6_17_EAAE40(var_124, arg_C, var_134, Space(1))
  loc_1BCFDEE:           var_144 = -1 & var_124 
  loc_1BCFDF2:           var_158 = vbNullString
  loc_1BCFE05:           unk_43FED1.Execute CStr(var_16C & var_124 & var_158), var_16C, var_1A0
  loc_1BCFE27:           var_114 = 0
  loc_1BCFE5D:           If (Proc_6_38_E69628(CVar(var_16C.Fields.Fields.Fields.Item(var_114))) = "Y") Then
  loc_1BCFE63:             var_1A0 = vbNullString
  loc_1BCFE87:             Proc_260_25_F11F48(var_DC, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***")
  loc_1BCFE9A:           Else
  loc_1BCFE9D:             var_19C = vbNullString
  loc_1BCFEB8:             Proc_260_25_F11F48(var_DC, vbNullString, vbNullString)
  loc_1BCFEC6:           End If
  loc_1BCFEC6:         End If
  loc_1BCFECB:         Set var_E0 = Nothing
  loc_1BCFEF5:         Proc_260_25_F11F48(var_DC, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1BCFF08:         var_B8.MoveNext
  loc_1BCFF0D:         GoTo loc_1BCF208
  loc_1BCFF10:       End If
  loc_1BCFF13:       var_D8 = "WinKOTPrint"
  loc_1BCFF33:       var_1A0 = MemVar_1F950B4 & "\" & var_D8 & ".ttx"
  loc_1BCFF3A:       Set var_16C = var_DC 
  loc_1BCFF41:       CreateFieldDefFile(var_16C, var_1A0, &HFF)
  loc_1BCFF7A:       var_19C = MemVar_1F950B4 & "\" & var_D8 & ".RPT"
  loc_1BCFF83:       Call 0.Method_arg_1C (var_19C, var_114, var_16C)
  loc_1BCFF8E:       MemVar_1F951E8 = var_16C
  loc_1BCFFB7:       Call 0.Method_arg_64 (var_16C, CVar(var_16C), var_134, var_158)
  loc_1BCFFBF:       Call 0.Method_arg_2C (var_19C, var_1A0)
  loc_1BCFFCF:       If (arg_18 <> vbNullString) Then
  loc_1BCFFF0:         If CBool(Ucase(arg_18) <> "PRN") Then
  loc_1BCFFF6:           Proc_96_98_F10508(arg_18)
  loc_1BCFFFB:         End If
  loc_1BCFFFB:       End If
  loc_1BD0007:       var_134 = 1
  loc_1BD0018:       Call 0.Method_Me8 (False, var_134, var_158)
  loc_1BD0022:       Set var_DC = Nothing
  loc_1BD0028:     Else
  loc_1BD0033:       If (var_1BC = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BD0039:         var_B8.MoveFirst
  loc_1BD003E:         ' Referenced from:   1BD0EBE
  loc_1BD004D:         If Not(var_B8.EOF) Then
  loc_1BD0053:           var_114 = "ShortName"
  loc_1BD006F:           var_124 = CVar(var_B8.Fields.Item(var_114)) 'Address
  loc_1BD0083:           var_194 = 3
  loc_1BD00B2:           var_1A4 = var_B8.Fields
  loc_1BD00BA:           var_1A8 = var_1A4.Item("NCKOT")
  loc_1BD015C:           var_158 = "LAU"
  loc_1BD0170:           var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(var_124, "NCKOT"))), 1, var_194)) = var_158), IIf((Proc_6_38_E69628(CVar(var_1A8), var_20C) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BD0179:           var_94 = CStr(var_304)
  loc_1BD01BA:           var_D8 = "KOTPrint"
  loc_1BD01E1:           Set var_16C = var_BC 
  loc_1BD01E8:           CreateFieldDefFile(var_16C, MemVar_1F950B4 & "\" & var_D8 & ".ttx")
  loc_1BD01F4:           Set var_BC = var_16C
  loc_1BD022A:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_114, var_16C)
  loc_1BD0235:           MemVar_1F951E8 = var_16C
  loc_1BD025E:           Call 0.Method_arg_64 (var_16C, CVar(var_BC), var_134)
  loc_1BD0266:           Call 0.Method_arg_2C (var_158, &HFF)
  loc_1BD0274:           Call 0.Method_arg_150 (var_16C)
  loc_1BD0296:           Proc_6_17_EAAE40(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1BD02B5:           unk_43FED1.Execute CStr(var_194 & var_124 & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), -1, var_16C
  loc_1BD02E6:           var_16C = var_16C.Fields
  loc_1BD02F6:           var_124 = var_16C.Item(0).Value
  loc_1BD0310:           If (var_124 > 1) Then
  loc_1BD0316:             var_D0 = "Changed KOT"
  loc_1BD031C:           Else
  loc_1BD0339:             Proc_6_17_EAAE40(var_124, arg_C, "Select Printed from kot where docid=")
  loc_1BD0358:             unk_43FED1.Execute CStr(var_194 & var_124 & vbNullString), -1, var_16C
  loc_1BD0386:             var_16C = var_16C.Fields
  loc_1BD038E:             var_174 = var_16C.Item(0)
  loc_1BD039F:             var_148 = Proc_6_38_E69628(CVar(var_174))
  loc_1BD03B0:             If (var_148 = "Y") Then
  loc_1BD03B6:               var_D0 = "DUPLICATE KOT"
  loc_1BD03BC:             Else
  loc_1BD03BF:               var_D0 = vbNullString
  loc_1BD03C2:             End If
  loc_1BD03C2:           End If
  loc_1BD03C7:           Set var_E0 = Nothing
  loc_1BD03DB:           Call 0.Method_arg_90 (var_16C, var_170)
  loc_1BD03E3:           Call 0.Method_arg_24 (var_B2)
  loc_1BD03EF:           For var_364 =  To CInt(var_170):   1 = var_364 'Integer
  loc_1BD0408:             Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD0410:             Call 0.Method_arg_20 (var_174)
  loc_1BD0418:             Call 0.Method_arg_30 (var_148)
  loc_1BD042E:             var_374 = Ucase(CVar(var_148)) 'Variant
  loc_1BD045E:             If (var_374 = Ucase("comp_name")) Then
  loc_1BD0482:               Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD048A:               Call 0.Method_arg_20 (var_174)
  loc_1BD0492:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1BD04A8:             Else
  loc_1BD04CA:               If (var_374 = Ucase("comp_add1")) Then
  loc_1BD04EE:                 Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD04F6:                 Call 0.Method_arg_20 (var_174)
  loc_1BD04FE:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1BD0514:               Else
  loc_1BD0536:                 If (var_374 = Ucase("comp_pin")) Then
  loc_1BD055A:                   Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD0562:                   Call 0.Method_arg_20 (var_174)
  loc_1BD056A:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1BD0580:                 Else
  loc_1BD05A2:                   If (var_374 = Ucase("comp_GSTIN")) Then
  loc_1BD05C6:                     Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD05CE:                     Call 0.Method_arg_20 (var_174)
  loc_1BD05D6:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1BD05EC:                   Else
  loc_1BD060E:                     If (var_374 = Ucase("RestName")) Then
  loc_1BD0632:                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD063A:                       Call 0.Method_arg_20 (var_174)
  loc_1BD0642:                       Call 0.Method_arg_38 ("'" & var_104 & "'")
  loc_1BD0658:                     Else
  loc_1BD067A:                       If (var_374 = Ucase("mTitle")) Then
  loc_1BD069E:                         Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD06A6:                         Call 0.Method_arg_20 (var_174)
  loc_1BD06AE:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BD06C4:                       Else
  loc_1BD06CC:                         var_124 = "Header1"
  loc_1BD06E6:                         If (var_374 = Ucase(var_124)) Then
  loc_1BD06F4:                           Proc_6_17_EAAE40(var_124)
  loc_1BD0710:                           Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BD0718:                           Call 0.Method_arg_20 (CStr(var_124))
  loc_1BD0720:                           Call 0.Method_arg_38 (var_E4)
  loc_1BD0735:                         Else
  loc_1BD073D:                           var_124 = "Header2"
  loc_1BD0757:                           If (var_374 = Ucase(var_124)) Then
  loc_1BD0765:                             Proc_6_17_EAAE40(var_124)
  loc_1BD0781:                             Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BD0789:                             Call 0.Method_arg_20 (CStr(var_124))
  loc_1BD0791:                             Call 0.Method_arg_38 (var_E8)
  loc_1BD07A6:                           Else
  loc_1BD07AE:                             var_124 = "Header3"
  loc_1BD07C8:                             If (var_374 = Ucase(var_124)) Then
  loc_1BD07D6:                               Proc_6_17_EAAE40(var_124)
  loc_1BD07F2:                               Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BD07FA:                               Call 0.Method_arg_20 (CStr(var_124))
  loc_1BD0802:                               Call 0.Method_arg_38 (var_EC)
  loc_1BD0817:                             Else
  loc_1BD081F:                               var_124 = "Header4"
  loc_1BD0839:                               If (var_374 = Ucase(var_124)) Then
  loc_1BD0847:                                 Proc_6_17_EAAE40(var_124)
  loc_1BD0863:                                 Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BD086B:                                 Call 0.Method_arg_20 (CStr(var_124))
  loc_1BD0873:                                 Call 0.Method_arg_38 (var_F0)
  loc_1BD0888:                               Else
  loc_1BD0899:                                 var_144 = Ucase("KotNo")
  loc_1BD08AA:                                 If (var_374 = var_144) Then
  loc_1BD08D8:                                   Proc_6_39_E7D3A0(var_144, CVar(var_B8.Fields.Item("VNo")))
  loc_1BD08E4:                                   var_158 = "'"
  loc_1BD0901:                                   Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD0909:                                   Call 0.Method_arg_20 (var_1A8)
  loc_1BD0911:                                   Call 0.Method_arg_38 (CStr("'" & var_144 & var_158))
  loc_1BD0930:                                 Else
  loc_1BD0952:                                   If (var_374 = Ucase("KotDate")) Then
  loc_1BD099E:                                     Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD09A6:                                     Call 0.Method_arg_20 (var_1A8)
  loc_1BD09AE:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BD09CB:                                   Else
  loc_1BD09ED:                                     If (var_374 = Ucase("KotTime")) Then
  loc_1BD0A39:                                       Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD0A41:                                       Call 0.Method_arg_20 (var_1A8)
  loc_1BD0A49:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BD0A66:                                     Else
  loc_1BD0A88:                                       If (var_374 = Ucase("Remarks")) Then
  loc_1BD0AD4:                                         Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD0ADC:                                         Call 0.Method_arg_20 (var_1A8)
  loc_1BD0AE4:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))) & "'")
  loc_1BD0B01:                                       Else
  loc_1BD0B23:                                         If (var_374 = Ucase("Card_No")) Then
  loc_1BD0B6F:                                           Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD0B77:                                           Call 0.Method_arg_20 (var_1A8)
  loc_1BD0B7F:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("CardNo"))) & "'")
  loc_1BD0B9C:                                         Else
  loc_1BD0BBE:                                           If (var_374 = Ucase("Member_Name")) Then
  loc_1BD0BD3:                                             var_16C = var_B8.Fields
  loc_1BD0BDB:                                             var_174 = var_16C.Item("MemName")
  loc_1BD0C0A:                                             Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD0C12:                                             Call 0.Method_arg_20 (var_1A8)
  loc_1BD0C1A:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_174)) & "'")
  loc_1BD0C37:                                           Else
  loc_1BD0C59:                                             If (var_374 = Ucase("TableTitle")) Then
  loc_1BD0C7D:                                               Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD0C85:                                               Call 0.Method_arg_20 (var_174)
  loc_1BD0C8D:                                               Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_1BD0CA3:                                             Else
  loc_1BD0CC5:                                               If (var_374 = Ucase("TableNo")) Then
  loc_1BD0D11:                                                 Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD0D19:                                                 Call 0.Method_arg_20 (var_1A8)
  loc_1BD0D21:                                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BD0D3E:                                               Else
  loc_1BD0D60:                                                 If (var_374 = Ucase("Steward")) Then
  loc_1BD0D75:                                                   var_16C = var_B8.Fields
  loc_1BD0D7D:                                                   var_174 = var_16C.Item("WaiterName")
  loc_1BD0DAC:                                                   Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BD0DB4:                                                   Call 0.Method_arg_20 (var_1A8)
  loc_1BD0DBC:                                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_174)) & "'")
  loc_1BD0DD9:                                                 Else
  loc_1BD0DFB:                                                   If (var_374 = Ucase("KotStatus")) Then
  loc_1BD0E1F:                                                     Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD0E27:                                                     Call 0.Method_arg_20 (var_174)
  loc_1BD0E2F:                                                     Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BD0E45:                                                   Else
  loc_1BD0E67:                                                     If (var_374 = Ucase("KotRemark")) Then
  loc_1BD0E8B:                                                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BD0E93:                                                       Call 0.Method_arg_20 (var_174)
  loc_1BD0E9B:                                                       Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BD0EAE:                                                     End If
  loc_1BD0EAE:                                                   End If
  loc_1BD0EAE:                                                 End If
  loc_1BD0EAE:                                               End If
  loc_1BD0EAE:                                             End If
  loc_1BD0EAE:                                           End If
  loc_1BD0EAE:                                         End If
  loc_1BD0EAE:                                       End If
  loc_1BD0EAE:                                     End If
  loc_1BD0EAE:                                   End If
  loc_1BD0EAE:                                 End If
  loc_1BD0EAE:                               End If
  loc_1BD0EAE:                             End If
  loc_1BD0EAE:                           End If
  loc_1BD0EAE:                         End If
  loc_1BD0EAE:                       End If
  loc_1BD0EAE:                     End If
  loc_1BD0EAE:                   End If
  loc_1BD0EAE:                 End If
  loc_1BD0EAE:               End If
  loc_1BD0EAE:             End If
  loc_1BD0EB1:           Next var_364 'Integer
  loc_1BD0EB9:           var_B8.MoveNext
  loc_1BD0EBE:           GoTo loc_1BD003E
  loc_1BD0EC1:         End If
  loc_1BD0EC9:         If (arg_18 <> vbNullString) Then
  loc_1BD0EEA:           If CBool(Ucase(arg_18) <> "PRN") Then
  loc_1BD0EF0:             Proc_96_98_F10508(arg_18)
  loc_1BD0EF5:           End If
  loc_1BD0EF5:         End If
  loc_1BD0F12:         Call 0.Method_Me8 (False, 1, var_158)
  loc_1BD0F1A:       Else
  loc_1BD0F25:         If (var_1BC = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BD0F2A:           Close 1
  loc_1BD0F46:           Open "C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT" For Output As 1 Len = &HFF
  loc_1BD0F56:           var_B8.MoveFirst
  loc_1BD0F5B:           ' Referenced from:     1BD1DD9
  loc_1BD0F6A:           If Not(var_B8.EOF) Then
  loc_1BD0F6F:             var_96 = 0
  loc_1BD0FAA:             var_194 = 3
  loc_1BD0FCD:             var_184 = "NCKOT"
  loc_1BD108D:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_194)) = "LAU") 'Variant
  loc_1BD1097:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_184)), var_184) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BD10A0:             var_94 = CStr(var_304)
  loc_1BD10E4:             If (var_96 = 0) Then
  loc_1BD10E9:               Print 1
  loc_1BD111D:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BD112E:               If (var_E4 <> vbNullString) Then
  loc_1BD1157:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E4, &H28)))
  loc_1BD115D:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD116F:               End If
  loc_1BD1177:               If (var_E8 <> vbNullString) Then
  loc_1BD11A0:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1BD11A6:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD11B8:               End If
  loc_1BD11C0:               If (var_EC <> vbNullString) Then
  loc_1BD11E9:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BD11EF:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD1201:               End If
  loc_1BD1209:               If (var_F0 <> vbNullString) Then
  loc_1BD1232:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BD1238:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD124A:               End If
  loc_1BD124C:               Print 1
  loc_1BD1273:               Print 1, Proc_260_1_10A4640(var_104, "D")
  loc_1BD12A3:               Print 1, Proc_260_1_10A4640(var_94, "D", &H28)
  loc_1BD12B9:               Print 1
  loc_1BD12C1:               Print 1
  loc_1BD12FA:               Proc_6_39_E7D3A0(var_194, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BD131C:               var_144 = (Chr(&HF) + "KOT No.   :     ")
  loc_1BD1326:               var_1DC = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_194), &HA)))
  loc_1BD132C:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_194))
  loc_1BD13DE:               var_144 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1BD13E8:               var_1CC = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))
  loc_1BD13F1:               var_1DC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H28), &HC))), &HA)) + " ")
  loc_1BD13FB:               var_22C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BD1401:               Print 1, "* NC LOT *"
  loc_1BD1493:               var_144 = (Chr(&HF) + "Remarks :     ")
  loc_1BD149D:               var_1CC = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H32)))
  loc_1BD14A4:               var_1EC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H32))), &HA)) + Chr(&H12))
  loc_1BD14AA:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BD1532:               var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &HA)))
  loc_1BD153B:               var_194 = (CVar(var_B8.Fields.Item("Remarks")) + ":     ")
  loc_1BD1542:               var_1DC = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))), 5)) 'String
  loc_1BD1545:               var_1EC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H32)) + var_1DC)
  loc_1BD154B:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BD1586:               var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD158C:               Print 1, CVar(Proc_6_45_EADFB8(var_100, &HA))
  loc_1BD1599:             End If
  loc_1BD15BF:             var_168 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1BD15D9:             var_1CC = (CVar(var_B8.Fields.Item("Remarks")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BD15DE:             var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BD160B:             var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BD1611:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BD1634:             var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD163A:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BD164D:             var_96 = (var_96 + 4)
  loc_1BD1653:             var_BC.MoveFirst
  loc_1BD1658:             ' Referenced from:     1BD19F8
  loc_1BD1667:             If Not(var_BC.EOF) Then
  loc_1BD16B7:               Proc_6_39_E7D3A0(var_1DC, CVar(var_BC.Fields.Item("qty")))
  loc_1BD175A:               var_194 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BD1773:               var_24C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1DC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1BD1789:               var_304 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BD178C:               var_33C = (&H12 + var_304)
  loc_1BD17E5:               var_144 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BD17EB:               Print 1, Space(3)
  loc_1BD17FE:               var_96 = (var_96 + 1)
  loc_1BD183A:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BD187D:                 var_144 = (Chr(&HF) + "(")
  loc_1BD1887:                 var_1CC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BD1890:                 var_1DC = (CVar(var_BC.Fields.Item("qty")) + ")")
  loc_1BD1896:                 Print 1, var_1DC
  loc_1BD18B7:                 var_96 = (var_96 + 1)
  loc_1BD18BA:               End If
  loc_1BD18C4:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BD18DD:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD18E3:                 Print 1, Space(3)
  loc_1BD18F5:                 Print 1, "Contd."
  loc_1BD190D:                 Print 1, Chr(&HC)
  loc_1BD191C:                 var_98 = (var_98 + 1)
  loc_1BD1921:                 var_96 = 0
  loc_1BD1953:                 var_198 = Proc_260_1_10A4640(var_94, "B", &H28, Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_96, &H28, var_96), &H28, Proc_260_2_136F49C(1, var_96, &H28, var_96)))
  loc_1BD1958:                 Print 1, var_198
  loc_1BD1969:                 var_96 = &H12
  loc_1BD1982:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD1988:                 Print 1, Space(3)
  loc_1BD19AB:                 var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BD19B1:                 Print 1, Space(3)
  loc_1BD19D4:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD19DA:                 Print 1, Space(3)
  loc_1BD19ED:                 var_96 = (var_96 + 4)
  loc_1BD19F0:               End If
  loc_1BD19F3:               var_BC.MoveNext
  loc_1BD19F8:               GoTo loc_1BD1658
  loc_1BD19FB:             End If
  loc_1BD1A05:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BD1A08:               ' Referenced from:     1BD1A29
  loc_1BD1A12:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BD1A1A:                 Print 1, vbNullString
  loc_1BD1A26:                 var_96 = (var_96 + 1)
  loc_1BD1A29:                 GoTo loc_1BD1A08
  loc_1BD1A2C:               End If
  loc_1BD1A2C:             End If
  loc_1BD1A42:             var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD1A48:             Print 1, Space(3)
  loc_1BD1A71:             var_16C = var_B8.Fields
  loc_1BD1AA9:             var_144 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BD1AB0:             var_194 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C.Item("WaiterName")), var_96, var_96, var_96), &H14, 1)) 'String
  loc_1BD1AB3:             var_1CC = (Space(3) + var_194)
  loc_1BD1AB9:             Print 1, CVar(var_BC.Fields.Item("qty"))
  loc_1BD1AE0:             var_124 = Chr(&HF)
  loc_1BD1AFD:             var_144 = (var_124 + "***  ")
  loc_1BD1B04:             var_194 = Space(3) & Trim(var_CC) 
  loc_1BD1B13:             Print 1, var_194 & "  ***"
  loc_1BD1B43:             Proc_6_17_EAAE40(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_194)
  loc_1BD1B4B:             var_144 = -1 & var_124 
  loc_1BD1B62:             unk_43FED1.Execute CStr(Space(3) & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), var_16C, var_96
  loc_1BD1B93:             var_16C = var_16C.Fields
  loc_1BD1BA3:             var_124 = var_16C.Item(0).Value
  loc_1BD1BBD:             If (var_124 > 1) Then
  loc_1BD1BFB:               Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("Changed KOT", &H14), "D")
  loc_1BD1C13:             Else
  loc_1BD1C30:               Proc_6_17_EAAE40(var_124, arg_C, "Select Max(Printed) from kot where docid=", var_194)
  loc_1BD1C38:               var_144 = -1 & var_124 
  loc_1BD1C4F:               unk_43FED1.Execute CStr(Space(3) & vbNullString), var_16C, &H28
  loc_1BD1CA7:               If (Proc_6_38_E69628(CVar(var_16C.Fields.Fields.Fields.Item(0))) = "Y") Then
  loc_1BD1CE5:                 Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D")
  loc_1BD1CFD:               Else
  loc_1BD1D12:                 var_144 = (Chr(&HF) + vbNullString)
  loc_1BD1D18:                 Print 1, Space(3)
  loc_1BD1D25:               End If
  loc_1BD1D25:             End If
  loc_1BD1D2A:             Set var_E0 = Nothing
  loc_1BD1D42:             var_144 = (Chr(&HF) + "** ")
  loc_1BD1D4C:             var_168 = (Space(3) + CVar(MemVar_1F95220))
  loc_1BD1D55:             var_194 = (Space(3) & vbNullString + " **")
  loc_1BD1D5B:             Print 1, var_194
  loc_1BD1D6F:             var_B8.MoveNext
  loc_1BD1D76:             Print 1
  loc_1BD1D7E:             Print 1
  loc_1BD1D86:             Print 1
  loc_1BD1D8E:             Print 1
  loc_1BD1D96:             Print 1
  loc_1BD1D9E:             Print 1
  loc_1BD1DC4:             var_168 = (Chr(&H1B) + Chr(&H6D))
  loc_1BD1DCA:             Print 1, Space(3) & vbNullString
  loc_1BD1DD9:             GoTo loc_1BD0F5B
  loc_1BD1DDC:           End If
  loc_1BD1DDE:           Close 1
  loc_1BD1DFA:           Open "C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT" For Output As 1 Len = &HFF
  loc_1BD1E0F:           If (arg_18 <> vbNullString) Then
  loc_1BD1E31:             Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & arg_18
  loc_1BD1E45:           Else
  loc_1BD1E64:             Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & MemVar_1F953B8
  loc_1BD1E75:           End If
  loc_1BD1E77:           Close 1
  loc_1BD1E9D:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT"), 0)) 'Variant
  loc_1BD1EAE:         Else
  loc_1BD1EB9:           If (var_1BC = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BD1EBE:             Close 1
  loc_1BD1EDA:             Open "C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT" For Output As 1 Len = &HFF
  loc_1BD1EEA:             var_B8.MoveFirst
  loc_1BD1EEF:             ' Referenced from:       1BD2DB5
  loc_1BD1EFE:             If Not(var_B8.EOF) Then
  loc_1BD1F03:               var_96 = 0
  loc_1BD1F3E:               var_194 = 3
  loc_1BD2021:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_194)) = "LAU") 'Variant
  loc_1BD202B:               var_304 = IIf(var_2F4, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), &H28) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BD2034:               var_94 = CStr(var_304)
  loc_1BD2078:               If (var_96 = 0) Then
  loc_1BD207D:                 Print 1
  loc_1BD20B1:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BD20C2:                 If (var_E4 <> vbNullString) Then
  loc_1BD20EB:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E4, &H28)))
  loc_1BD20F1:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD2103:                 End If
  loc_1BD210B:                 If (var_E8 <> vbNullString) Then
  loc_1BD2134:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1BD213A:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD214C:                 End If
  loc_1BD2154:                 If (var_EC <> vbNullString) Then
  loc_1BD217D:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BD2183:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD2195:                 End If
  loc_1BD219D:                 If (var_F0 <> vbNullString) Then
  loc_1BD21C6:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BD21CC:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD21DE:                 End If
  loc_1BD21E0:                 Print 1
  loc_1BD221B:                 Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8(var_104, &H14), "D")
  loc_1BD2263:                 Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8(var_94, &H14), "D", &H28)
  loc_1BD227D:                 Print 1
  loc_1BD2285:                 Print 1
  loc_1BD22BE:                 Proc_6_39_E7D3A0(var_194, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BD22E0:                 var_144 = (Chr(&HF) + "KOT No.   :       ")
  loc_1BD22EA:                 var_1DC = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_194), &HA)))
  loc_1BD22F0:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_194))
  loc_1BD23A2:                 var_144 = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1BD23AC:                 var_1CC = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))
  loc_1BD23B5:                 var_1DC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H28), &HC))), &HA)) + " ")
  loc_1BD23BF:                 var_22C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BD23C5:                 Print 1, "* NC LOT *"
  loc_1BD2457:                 var_144 = (Chr(&HF) + "Remarks :       ")
  loc_1BD2461:                 var_1CC = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H32)))
  loc_1BD2468:                 var_1EC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H32))), &HA)) + Chr(&H12))
  loc_1BD246E:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BD24F6:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &HA)))
  loc_1BD24FF:                 var_194 = (CVar(var_B8.Fields.Item("Remarks")) + ":       ")
  loc_1BD2506:                 var_1DC = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))), 5)) 'String
  loc_1BD2509:                 var_1EC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H32)) + var_1DC)
  loc_1BD250F:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BD254A:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD2550:                 Print 1, CVar(Proc_6_45_EADFB8(var_100, &HA))
  loc_1BD255D:               End If
  loc_1BD2583:               var_168 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1BD259D:               var_1CC = (CVar(var_B8.Fields.Item("Remarks")) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BD25A2:               var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BD25CF:               var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BD25D5:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BD25F8:               var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD25FE:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BD2611:               var_96 = (var_96 + 4)
  loc_1BD2617:               var_BC.MoveFirst
  loc_1BD261C:               ' Referenced from:       1BD29BC
  loc_1BD262B:               If Not(var_BC.EOF) Then
  loc_1BD267B:                 Proc_6_39_E7D3A0(var_1DC, CVar(var_BC.Fields.Item("qty")))
  loc_1BD271E:                 var_194 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BD2737:                 var_24C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1DC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1BD274D:                 var_304 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BD2750:                 var_33C = (&H12 + var_304)
  loc_1BD27A9:                 var_144 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BD27AF:                 Print 1, Space(3)
  loc_1BD27C2:                 var_96 = (var_96 + 1)
  loc_1BD27FE:                 If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BD2841:                   var_144 = (Chr(&HF) + "(")
  loc_1BD284B:                   var_1CC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BD2854:                   var_1DC = (CVar(var_BC.Fields.Item("qty")) + ")")
  loc_1BD285A:                   Print 1, var_1DC
  loc_1BD287B:                   var_96 = (var_96 + 1)
  loc_1BD287E:                 End If
  loc_1BD2888:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BD28A1:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD28A7:                   Print 1, Space(3)
  loc_1BD28B9:                   Print 1, "Contd."
  loc_1BD28D1:                   Print 1, Chr(&HC)
  loc_1BD28E0:                   var_98 = (var_98 + 1)
  loc_1BD28E5:                   var_96 = 0
  loc_1BD2917:                   var_198 = Proc_260_1_10A4640(var_94, "B", &H28, Proc_260_2_136F49C(1, Proc_260_2_136F49C(1, var_96, &H28, var_96), &H28, Proc_260_2_136F49C(1, var_96, &H28, var_96)))
  loc_1BD291C:                   Print 1, var_198
  loc_1BD292D:                   var_96 = &H12
  loc_1BD2946:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD294C:                   Print 1, Space(3)
  loc_1BD296F:                   var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BD2975:                   Print 1, Space(3)
  loc_1BD2998:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD299E:                   Print 1, Space(3)
  loc_1BD29B1:                   var_96 = (var_96 + 4)
  loc_1BD29B4:                 End If
  loc_1BD29B7:                 var_BC.MoveNext
  loc_1BD29BC:                 GoTo loc_1BD261C
  loc_1BD29BF:               End If
  loc_1BD29C9:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BD29CC:                 ' Referenced from:       1BD29ED
  loc_1BD29D6:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BD29DE:                   Print 1, vbNullString
  loc_1BD29EA:                   var_96 = (var_96 + 1)
  loc_1BD29ED:                   GoTo loc_1BD29CC
  loc_1BD29F0:                 End If
  loc_1BD29F0:               End If
  loc_1BD2A06:               var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD2A0C:               Print 1, Space(3)
  loc_1BD2A35:               var_16C = var_B8.Fields
  loc_1BD2A6D:               var_144 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BD2A74:               var_194 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C.Item("WaiterName")), var_96, var_96, var_96), &H14, 1)) 'String
  loc_1BD2A77:               var_1CC = (Space(3) + var_194)
  loc_1BD2A7D:               Print 1, CVar(var_BC.Fields.Item("qty"))
  loc_1BD2AA4:               var_124 = Chr(&HF)
  loc_1BD2AC1:               var_144 = (var_124 + "***  ")
  loc_1BD2AC8:               var_194 = Space(3) & Trim(var_CC) 
  loc_1BD2AD7:               Print 1, var_194 & "  ***"
  loc_1BD2B07:               Proc_6_17_EAAE40(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_194)
  loc_1BD2B0F:               var_144 = -1 & var_124 
  loc_1BD2B26:               unk_43FED1.Execute CStr(Space(3) & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), var_16C, var_96
  loc_1BD2B57:               var_16C = var_16C.Fields
  loc_1BD2B67:               var_124 = var_16C.Item(0).Value
  loc_1BD2B81:               If (var_124 > 1) Then
  loc_1BD2BBF:                 Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("Changed KOT", &H14), "D")
  loc_1BD2BD7:               Else
  loc_1BD2BF4:                 Proc_6_17_EAAE40(var_124, arg_C, "Select Max(Printed) from kot where docid=", var_194)
  loc_1BD2BFC:                 var_144 = -1 & var_124 
  loc_1BD2C13:                 unk_43FED1.Execute CStr(Space(3) & vbNullString), var_16C, &H28
  loc_1BD2C6B:                 If (Proc_6_38_E69628(CVar(var_16C.Fields.Fields.Fields.Item(0))) = "Y") Then
  loc_1BD2CA9:                   Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D")
  loc_1BD2CC1:                 Else
  loc_1BD2CD6:                   var_144 = (Chr(&HF) + vbNullString)
  loc_1BD2CDC:                   Print 1, Space(3)
  loc_1BD2CE9:                 End If
  loc_1BD2CE9:               End If
  loc_1BD2CEE:               Set var_E0 = Nothing
  loc_1BD2D06:               var_144 = (Chr(&HF) + "** ")
  loc_1BD2D10:               var_168 = (Space(3) + CVar(MemVar_1F95220))
  loc_1BD2D19:               var_194 = (Space(3) & vbNullString + " **")
  loc_1BD2D1F:               Print 1, var_194
  loc_1BD2D33:               var_B8.MoveNext
  loc_1BD2D3A:               Print 1
  loc_1BD2D42:               Print 1
  loc_1BD2D4A:               Print 1
  loc_1BD2D52:               Print 1
  loc_1BD2D5A:               Print 1
  loc_1BD2D62:               Print 1
  loc_1BD2D6A:               Print 1
  loc_1BD2D72:               Print 1
  loc_1BD2D7A:               Print 1
  loc_1BD2DA0:               var_168 = (Chr(&H1B) + Chr(&H6D))
  loc_1BD2DA6:               Print 1, Space(3) & vbNullString
  loc_1BD2DB5:               GoTo loc_1BD1EEF
  loc_1BD2DB8:             End If
  loc_1BD2DBA:             Close 1
  loc_1BD2DD6:             Open "C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT" For Output As 1 Len = &HFF
  loc_1BD2DEB:             If (arg_18 <> vbNullString) Then
  loc_1BD2E0D:               Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & arg_18
  loc_1BD2E21:             Else
  loc_1BD2E40:               Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & MemVar_1F953B8
  loc_1BD2E51:             End If
  loc_1BD2E53:             Close 1
  loc_1BD2E79:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT"), 0)) 'Variant
  loc_1BD2E8A:           Else
  loc_1BD2E95:             If Not (var_1BC = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BD2EA3:               If (var_1BC = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1BD2EA6:               End If
  loc_1BD2EA8:               Close 1
  loc_1BD2EC4:               Open "C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT" For Output As 1 Len = &HFF
  loc_1BD2ED4:               var_B8.MoveFirst
  loc_1BD2ED9:               ' Referenced from:         1BD409E
  loc_1BD2EE8:               If Not(var_B8.EOF) Then
  loc_1BD2EED:                 var_96 = 0
  loc_1BD300B:                 var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BD3015:                 var_304 = IIf(var_2F4, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), &H28) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BD301E:                 var_94 = CStr(var_304)
  loc_1BD308A:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BD3099:                 If (var_96 = 0) Then
  loc_1BD309E:                   Print 1
  loc_1BD30AC:                   If (var_E4 <> vbNullString) Then
  loc_1BD30D5:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E4, &H28)))
  loc_1BD30DB:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD30ED:                   End If
  loc_1BD30F5:                   If (var_E8 <> vbNullString) Then
  loc_1BD311E:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1BD3124:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD3136:                   End If
  loc_1BD313E:                   If (var_EC <> vbNullString) Then
  loc_1BD3167:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BD316D:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD317F:                   End If
  loc_1BD3187:                   If (var_F0 <> vbNullString) Then
  loc_1BD31B0:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BD31B6:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD31C8:                   End If
  loc_1BD31CA:                   Print 1
  loc_1BD31F9:                   var_194 = (42 - Len(Trim(var_104)))
  loc_1BD323C:                   var_284 = (42 - Len(Trim(var_104)))
  loc_1BD3266:                   var_1EC = (Chr(&HF) + Space(CLng((3 / 2))))
  loc_1BD326D:                   var_22C = ("0.00" + Trim(var_104))
  loc_1BD3274:                   var_2E4 = ("* NC LOT *" + Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))))
  loc_1BD327B:                   var_304 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") + Chr(&H12))
  loc_1BD3281:                   Print 1, var_304
  loc_1BD32C9:                   var_194 = (42 - Len(Trim(var_94)))
  loc_1BD32FC:                   var_25C = (42 - Len(Trim(var_94)))
  loc_1BD3326:                   var_1EC = (Chr(&HF) + Space(CLng((3 / 2))))
  loc_1BD3330:                   var_1FC = ("0.00" + CVar(var_94))
  loc_1BD3337:                   var_2D4 = (Trim(var_104) + Space(CLng((Len(Trim(var_104)) / 2))))
  loc_1BD333E:                   var_2F4 = (Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))) + Chr(&H12))
  loc_1BD3344:                   Print 1, Chr(&H12)
  loc_1BD3368:                   Print 1
  loc_1BD3370:                   Print 1
  loc_1BD33AF:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1BD3413:                     var_144 = (Chr(&HF) + "Membership No.:         ")
  loc_1BD341D:                     var_1CC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("CardNo"))), &H1A)))
  loc_1BD3424:                     var_1EC = ((3 / 2) + Chr(&H12))
  loc_1BD342A:                     Print 1, "0.00"
  loc_1BD344D:                   End If
  loc_1BD3486:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1BD34EA:                     var_144 = (Chr(&HF) + "Member :         ")
  loc_1BD34F1:                     var_194 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("MemName"))), &H21)) 'String
  loc_1BD34F4:                     var_1CC = (Trim(var_94) + var_194)
  loc_1BD34FB:                     var_1EC = ((3 / 2) + Chr(&H12))
  loc_1BD3501:                     Print 1, "0.00"
  loc_1BD3524:                   End If
  loc_1BD3557:                   Proc_6_39_E7D3A0(var_194, CVar(var_B8.Fields.Item("VNo")))
  loc_1BD3586:                   var_144 = (Chr(&HF) + "KOT No.   :         ")
  loc_1BD3590:                   var_1DC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(var_194), &HA)))
  loc_1BD3597:                   var_1FC = (Chr(&H12) + Chr(&H12))
  loc_1BD359D:                   Print 1, Trim(var_104)
  loc_1BD3660:                   var_144 = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1BD366A:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))), &HC)))
  loc_1BD3673:                   var_1DC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))), &HC))), &HA)) + " ")
  loc_1BD367D:                   var_22C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BD3684:                   var_25C = (Trim(var_94) + Chr(&H12))
  loc_1BD368A:                   Print 1, Len(Trim(var_104))
  loc_1BD3720:                   var_144 = (Chr(&HF) + "Remarks :         ")
  loc_1BD372A:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H20)))
  loc_1BD3731:                   var_1EC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H20))), &HA)) + Chr(&H12))
  loc_1BD3737:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BD37DC:                   Proc_6_39_E7D3A0(Trim(var_94), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BD3814:                   Proc_6_39_E7D3A0(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BD3842:                   var_284 = (Space(&HA) + "Covers:         ")
  loc_1BD384C:                   var_2F4 = ((Len(Trim(var_104)) / 2) + CVar(Proc_6_45_EADFB8(CStr(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2)))), 7)))
  loc_1BD3882:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &HA)))
  loc_1BD388B:                   var_194 = (CVar(var_B8.Fields.Item("Remarks")) + ":         ")
  loc_1BD3895:                   var_1EC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H20)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BD389C:                   var_360 = (CVar(var_B8.Fields.Item("VTIME")) + IIf((Trim(var_94) <> 0), Chr(&H12), vbNullString))
  loc_1BD38A3:                   var_394 = (var_360 + Chr(&H12))
  loc_1BD38A9:                   Print 1, var_394
  loc_1BD3919:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD3920:                   var_194 = (CVar(Proc_6_45_EADFB8(var_100, &HA)) + Chr(&H12))
  loc_1BD3926:                   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))), &H20))
  loc_1BD3937:                 End If
  loc_1BD395D:                 var_168 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_1BD3977:                 var_1CC = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BD3983:                 var_1DC = Space(3)
  loc_1BD398B:                 var_1EC = (CVar(var_B8.Fields.Item("TableNo")) + var_1DC)
  loc_1BD39A5:                 var_22C = (CVar(var_B8.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1BD39EE:                 var_144 = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BD39F5:                 var_194 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BD39FB:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BD3A2F:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD3A36:                 var_194 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BD3A3C:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BD3A53:                 var_96 = (var_96 + 4)
  loc_1BD3A59:                 var_BC.MoveFirst
  loc_1BD3A5E:                 ' Referenced from:         1BD3CE6
  loc_1BD3A6D:                 If Not(var_BC.EOF) Then
  loc_1BD3ABD:                   Proc_6_39_E7D3A0(var_1DC, CVar(var_BC.Fields.Item("qty")))
  loc_1BD3B08:                   Proc_6_39_E7D3A0(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BD3B17:                   var_20C = "0.00"
  loc_1BD3B52:                   var_194 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BD3B6B:                   var_24C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1DC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1BD3B7F:                   var_284 = (Chr(&H12) + Space(3))
  loc_1BD3B95:                   var_304 = CVar(Proc_6_52_EAE084(CStr(Format(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))), var_20C)), 6, (Len(Trim(var_104)) / 2))) 'String
  loc_1BD3B98:                   var_33C = (&H12 + var_304)
  loc_1BD3BFE:                   var_144 = (Chr(&HF) + CVar(CStr(vbNullString)))
  loc_1BD3C05:                   var_194 = (Space(3) + Chr(&H12))
  loc_1BD3C0B:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BD3C22:                   var_96 = (var_96 + 1)
  loc_1BD3C5E:                   If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BD3CA1:                     var_144 = (Chr(&HF) + "(")
  loc_1BD3CAB:                     var_1CC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BD3CB4:                     var_1DC = (CVar(var_BC.Fields.Item("qty")) + ")")
  loc_1BD3CBA:                     Print 1, var_1DC
  loc_1BD3CDB:                     var_96 = (var_96 + 1)
  loc_1BD3CDE:                   End If
  loc_1BD3CE1:                   var_BC.MoveNext
  loc_1BD3CE6:                   GoTo loc_1BD3A5E
  loc_1BD3CE9:                 End If
  loc_1BD3D0C:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD3D13:                 var_194 = (Space(3) + Chr(&H12))
  loc_1BD3D19:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description"))))
  loc_1BD3D46:                 var_16C = var_B8.Fields
  loc_1BD3D8B:                 var_144 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BD3D95:                 var_1CC = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C.Item("WaiterName")), &H12), &H14)))
  loc_1BD3D9C:                 var_1EC = (CVar(var_BC.Fields.Item("qty")) + Chr(&H12))
  loc_1BD3DA2:                 Print 1, "0.00"
  loc_1BD3DCD:                 var_124 = Chr(&HF)
  loc_1BD3DEA:                 var_1CC = Chr(&H12)
  loc_1BD3DF7:                 var_144 = (var_124 + "***  ")
  loc_1BD3DFE:                 var_194 = Space(3) & Trim(var_CC) 
  loc_1BD3E0A:                 var_1DC = ("  ***" + var_1CC)
  loc_1BD3E14:                 Print 1, var_194 & Chr(&H12)
  loc_1BD3E48:                 Proc_6_17_EAAE40(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_194)
  loc_1BD3E50:                 var_144 = -1 & var_124 
  loc_1BD3E67:                 unk_43FED1.Execute CStr(Space(3) & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), var_16C, var_20C
  loc_1BD3E98:                 var_16C = var_16C.Fields
  loc_1BD3EA8:                 var_124 = var_16C.Item(0).Value
  loc_1BD3EC2:                 If (var_124 > 1) Then
  loc_1BD3F00:                   Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("Changed KOT"), "D")
  loc_1BD3F18:                 Else
  loc_1BD3F35:                   Proc_6_17_EAAE40(var_124, arg_C, "Select Max(Printed) from kot where docid=", var_194)
  loc_1BD3F3D:                   var_144 = -1 & var_124 
  loc_1BD3F54:                   unk_43FED1.Execute CStr(Space(3) & vbNullString), var_16C, &H28
  loc_1BD3FAC:                   If (Proc_6_38_E69628(CVar(var_16C.Fields.Fields.Fields.Item(0))) = "Y") Then
  loc_1BD3FEA:                     Print 1, Proc_260_1_10A4640(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D")
  loc_1BD4002:                   Else
  loc_1BD4004:                     Print 1
  loc_1BD400A:                   End If
  loc_1BD400A:                 End If
  loc_1BD400F:                 Set var_E0 = Nothing
  loc_1BD4027:                 var_144 = (Chr(&HF) + "** ")
  loc_1BD4031:                 var_168 = (Space(3) + CVar(MemVar_1F95220))
  loc_1BD403A:                 var_194 = (Space(3) & vbNullString + " **")
  loc_1BD4040:                 Print 1, var_194
  loc_1BD4054:                 var_B8.MoveNext
  loc_1BD405B:                 Print 1
  loc_1BD4063:                 Print 1
  loc_1BD4089:                 var_168 = (Chr(&H1B) + Chr(&H6D))
  loc_1BD408F:                 Print 1, Space(3) & vbNullString
  loc_1BD409E:                 GoTo loc_1BD2ED9
  loc_1BD40A1:               End If
  loc_1BD40A3:               Close 1
  loc_1BD40BF:               Open "C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT" For Output As 1 Len = &HFF
  loc_1BD40D4:               If (arg_18 <> vbNullString) Then
  loc_1BD40F6:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & arg_18
  loc_1BD410A:               Else
  loc_1BD4129:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & MemVar_1F953B8
  loc_1BD413A:               End If
  loc_1BD413C:               Close 1
  loc_1BD4162:               var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT"), 0)) 'Variant
  loc_1BD4170:             End If
  loc_1BD4170:           End If
  loc_1BD4170:         End If
  loc_1BD4170:       End If
  loc_1BD4170:     End If
  loc_1BD4173:   Else
  loc_1BD41BD:     MsgBox("Please Check Printer Setting of Central KOT For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_194, var_1CC, Chr(&H12))
  loc_1BD41D8:   End If
  loc_1BD41DB:   var_C0.MoveNext
  loc_1BD41E0:   GoTo loc_1BCF11C
  loc_1BD41E3: End If
  loc_1BD41E8: Set var_B8 = Nothing
  loc_1BD41F0: Set var_BC = Nothing
  loc_1BD41F8: Set var_C0 = Nothing
  loc_1BD4200: Result &HFF End Sub 'Integer
  loc_1BD4201: ' Referenced from: 1BCEC18
  loc_1BD4201: Proc_6_60_E63754(&H28)
  loc_1BD4206: Result &H14 End Sub 'Integer
End Sub

Public Sub Proc_260_23_F5DACC(arg_C) 'F5DACC
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_F5D9A3: Set var_8C = arg_C 
  loc_F5D9CB: var_8C.Fields.Append "PrintType", &HC8, &H4B
  loc_F5D9F7: var_8C.Fields.Append "Printer", &HC8, &H4B
  loc_F5DA23: var_8C.Fields.Append "NoOfKot", 3, 0
  loc_F5DA4F: var_8C.Fields.Append "Split", &HC8, 3
  loc_F5DA7B: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F5DA8B: var_8C.CursorType = 3
  loc_F5DA98: var_8C.LockType = 3
  loc_F5DAB7: var_8C.Open var_A0, var_B0, -1
  loc_F5DABE: Set var_8C = Nothing 
  loc_F5DAC5: Set var_88 = arg_C 
  loc_F5DAC9: Exit Sub
End Sub

Public Sub Proc_260_24_EF3164(arg_C) 'EF3164
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_EF3093: Set var_8C = arg_C 
  loc_EF30BB: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EF30E7: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EF3113: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EF3123: var_8C.CursorType = 3
  loc_EF3130: var_8C.LockType = 3
  loc_EF314F: var_8C.Open var_A0, var_B0, -1
  loc_EF3156: Set var_8C = Nothing 
  loc_EF315D: Set var_88 = arg_C 
  loc_EF3161: Exit Sub
End Sub

Public Sub Proc_260_25_F11F48(arg_C, arg_10, arg_14, arg_18) 'F11F48
  'Data Table: 43FECC
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F11E57: Set var_88 = arg_C 
  loc_F11E66: var_88.AddNew var_98, var_A8
  loc_F11E9E: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F11EE0: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F11EF2: var_98 = arg_18
  loc_F11F06: var_A8 = "Mark"
  loc_F11F22: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F11F3C: var_88.Update var_98, var_A8
  loc_F11F43: Set var_88 = Nothing 
  loc_F11F47: Exit Sub
End Sub
