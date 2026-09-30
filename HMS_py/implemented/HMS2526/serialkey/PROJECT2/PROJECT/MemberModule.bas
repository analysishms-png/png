
Public Sub Proc_272_0_F5B36C(arg_C) 'F5B36C
  'Data Table: 41ED10
  Dim var_8C As Recordset15
  Dim -1.global_-10240 As Integer
  loc_F5B243: Set var_8C = arg_C 
  loc_F5B26B: var_8C.Fields.Append "mLine", &HC8, 2
  loc_F5B297: var_8C.Fields.Append "Sno", &HC8, 3
  loc_F5B2C3: var_8C.Fields.Append "Desc", &HC8, &H4B
  loc_F5B2EF: var_8C.Fields.Append "ChargeAmt", &HC8, &HC
  loc_F5B31B: var_8C.Fields.Append "Mark", &HC8, 1
  loc_F5B32B: var_8C.CursorType = 3
  loc_F5B338: var_8C.LockType = 3
  loc_F5B357: var_8C.Open var_A0, var_B0, -1
  loc_F5B35E: Set var_8C = Nothing 
  loc_F5B365: Set var_88 = arg_C 
  loc_F5B369: Exit Sub
  loc_F5B36A: -1.global_-10240 = -1
End Sub

Public Sub Proc_272_1_19C7874(arg_C, arg_10) '19C7874
  'Data Table: 41ED10
  Dim var_184 As String
  Dim var_188 As String
  Dim unk_41ED1B As Connection15
  Dim var_158 As Recordset15
  Dim var_198 As Variant
  Dim var_1AC As Fields15
  Dim var_1A8 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As String
  Dim var_208 As String
  Dim var_21C As String
  Dim var_224 As String
  Dim var_23C As String
  Dim var_88 As Recordset15
  Dim var_1B4 As Field20
  Dim var_24C As Variant
  Dim var_1D4 As Variant
  Dim var_25C As Variant
  Dim var_1F4 As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_174 As Recordset15
  Dim var_B6 As Integer
  Dim var_2E0 As Fields15
  Dim var_2FC As Variant
  Dim var_2DC As Variant
  Dim var_2F8 As Variant
  Dim var_340 As Variant
  Dim var_178 As Recordset15
  Dim var_2E8 As Field20
  Dim var_8C As Recordset15
  Dim var_A6 As Integer
  Dim var_344 As Recordset15
  Dim var_2E2 As Integer
  Dim var_A8 As Integer
  Dim var_94 As Recordset15
  Dim var_104 As Double
  Dim var_300 As Fields15
  Dim var_380 As Field20
  Dim var_D4 As Double
  Dim var_CC As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_F0 As Double
  loc_19C4848: On Error Goto loc_19C786B
  loc_19C486F: unk_41ED1B.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F95078 & "'", var_1A8, -1
  loc_19C487A: Set var_158 = var_1AC
  loc_19C489E: If (var_158.RecordCount > 0) Then
  loc_19C48E3:   var_17C = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_158.Fields.Item("Bill_Header")))), &HFE))
  loc_19C4937:   var_180 = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_158.Fields.Item("Bill_Footer")))), &HFE))
  loc_19C498B:   var_150 = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_158.Fields.Item("BillMessage")))), &HFE))
  loc_19C49AC:   var_1AC = var_158.Fields
  loc_19C49BC:   var_1A8 = CVar(var_1AC.Item("BillPayDueDate")) 'Address
  loc_19C49EF:   var_154 = CStr(Format(CVar(Proc_6_38_E69628(var_1A8)), "dd/MMM/yyyy"))
  loc_19C4A03: End If
  loc_19C4A17: var_184 = "Select S.Name As MemName,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.Add1,S.Add2,S.Add3,City.CityName,State.ShortName StateCode,State.Name State,S.GSTIN,S.PIN,S.Phone,S.Mobile,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Left Join City On S.CityCode=City.CityCode Left Join State on City.State=State.Code Where M.DocId='" & arg_C
  loc_19C4A43: unk_41ED1B.Execute var_184 & "' And M.Site_Code='" & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078 & "' Or M.LogSite_Code='HO')", var_1A8, -1
  loc_19C4A4E: Set var_88 = var_1AC
  loc_19C4A7A: var_184 = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & arg_C
  loc_19C4A9D: var_204 = var_184 & "' And M1.Type='Facility' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') union "
  loc_19C4AA4: var_208 = var_204 & "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_19C4AC7: var_21C = var_208 & arg_C & "' And M1.Type='Revenue' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078
  loc_19C4AD5: var_224 = var_21C & "' Or M1.LogSite_Code='HO') union " & "Select Case When IsNull(D.Name,'')='' Then 'Banquet' Else D.Name End As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_19C4AFF: var_23C = var_224 & arg_C & "' And M1.Type='Outlet' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') Order by sno"
  loc_19C4B08: unk_41ED1B.Execute var_23C, var_1A8, -1
  loc_19C4B13: Set var_8C = var_1AC
  loc_19C4B62: var_188 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & arg_C & "' And MS.Site_Code='"
  loc_19C4B87: unk_41ED1B.Execute var_188 & MemVar_1F95070 & "' And (MS.LogSite_Code='" & MemVar_1F95078 & "' Or MS.LogSite_Code='HO') Order By Sno", var_1A8, -1
  loc_19C4B92: Set var_94 = var_1AC
  loc_19C4BBE: If (var_88.RecordCount > 0) Then
  loc_19C4BCE:   var_1E4 = "Select LTRIM(IsNull(M.ConPrefix,'')+' '+IsNull(M.Name,'')) As AddMemName,M.RelationShip From MemberFamily M Where M.SubCode='"
  loc_19C4BE5:   var_1AC = var_88.Fields
  loc_19C4BFD:   var_1C4 = "dd/MMM/yyyy" & var_1AC.Item("MemCode").Value 
  loc_19C4C2C:   var_2BC = var_1C4 & "' And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') Order By M.Sno" 
  loc_19C4C3A:   unk_41ED1B.Execute CStr(var_2BC), var_2DC, -1
  loc_19C4C45:   Set var_174 = var_2E0
  loc_19C4C7B:   If (var_174.RecordCount > 0) Then
  loc_19C4C81:     var_174.MoveFirst
  loc_19C4C86:   End If
  loc_19C4C86: End If
  loc_19C4C8A: Set var_C4 = New 
  loc_19C4C95: Set var_C4 = Proc_272_0_F5B36C(var_C4, var_2E0, var_1AC, var_1AC)
  loc_19C4C98: ' Referenced from: 19C782F
  loc_19C4CA7: If Not(var_88.EOF) Then
  loc_19C4CBD:   var_B0 = "** " & "MEMBER BILL" & " **"
  loc_19C4CD2:   var_1AC = var_88.Fields
  loc_19C4CE9:   Proc_6_39_E7D3A0(var_1C4, CVar(var_1AC.Item("VNo")), 0, var_1AC)
  loc_19C4CF3:   var_108 = CStr(var_1C4)
  loc_19C4D2A:   var_10C = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), 1)
  loc_19C4D5B:   var_110 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")), 1)
  loc_19C4D8C:   var_164 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")))
  loc_19C4DBD:   var_168 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPerson")))
  loc_19C4DEE:   var_16C = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_19C4E1F:   var_170 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_19C4EA5:   var_300 = var_88.Fields.Item("Add3")
  loc_19C4EDE:   var_1F4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1"))))) + ", ")
  loc_19C4EE5:   var_2DC = (CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))) & "' And M.Site_Code='" & CVar(MemVar_1F95070) + Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2"))))))
  loc_19C4EEE:   var_2F8 = (var_2DC + ", ")
  loc_19C4EF5:   var_340 = (var_2F8 + Trim(CVar(Proc_6_38_E69628(CVar(var_300)))))
  loc_19C4F02:   var_11C = Replace(CStr(var_340), ",,", ",", 1, -1, 0)
  loc_19C4F3D:   var_1AC = var_88.Fields
  loc_19C4F64:   var_1E4 = "-"
  loc_19C4F69:   var_1F4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_1AC.Item("CityName"))))) + ", ")
  loc_19C4F95:   var_29C = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin")), CVar(Proc_6_38_E69628(CVar(var_1AC.Item("CityName")))) & "' And M.Site_Code='" & CVar(MemVar_1F95070))) 'String
  loc_19C4FA3:   var_2DC = (var_1AC + Trim(var_29C))
  loc_19C4FA8:   var_120 = CStr(var_2DC)
  loc_19C4FFC:   var_124 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("StateCode"))))))
  loc_19C5042:   var_128 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("State"))))))
  loc_19C5088:   var_130 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin"))))))
  loc_19C50CE:   var_12C = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GSTIN"))))))
  loc_19C511F:   var_2E0 = var_88.Fields
  loc_19C5160:   var_1F4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile"))))) + ", ")
  loc_19C5167:   var_2DC = (CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")))) & "' And M.Site_Code='" & CVar(MemVar_1F95070) + Trim(CVar(Proc_6_38_E69628(CVar(var_2E0.Item("Phone"))))))
  loc_19C5174:   var_134 = Replace(CStr(var_2DC), ",,", ",", 1, -1, 0)
  loc_19C51E7:   unk_41ED1B.Execute CStr("Select memcode,frmonth,ToMonth from MemCatChngDetail where memcode='" & var_88.Fields.Item("MemCode").Value & "'"), "Select memcode,frmonth,ToMonth from MemCatChngDetail where memcode='" & var_88.Fields.Item("MemCode").Value & "' And M.Site_Code='" & CVar(MemVar_1F95070), -1
  loc_19C51F2:   Set var_178 = var_2E0
  loc_19C5220:   If (var_178.RecordCount > 0) Then
  loc_19C52C9:     If (CDate(Format(CVar("01/" & Proc_6_38_E69628(CVar(var_178.Fields.Item("FrMonth")))), "dd/MMM/YYYY")) > CDate(var_88.Fields.Item("VDate").Value)) Then
  loc_19C52FB:       var_1C4 = ("01/" + var_178.Fields.Item("FrMonth").Value)
  loc_19C532E:       var_144 = CStr(Format(CVar(Proc_6_38_E69628(CVar("01/" & Proc_6_38_E69628(CVar(var_178.Fields.Item("FrMonth")))), 1)), "dd/MMM/YYYY"))
  loc_19C534B:     Else
  loc_19C53A4:       var_144 = CStr(Format(CVar("01/" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C53BC:     End If
  loc_19C5462:     If (CDate(Format(CVar("01/" & Proc_6_38_E69628(CVar(var_178.Fields.Item("ToMonth")), 1, 1)), "dd/MMM/YYYY")) > CDate(var_88.Fields.Item("VDate").Value)) Then
  loc_19C5494:       var_1C4 = ("31/" + var_178.Fields.Item("ToMonth").Value)
  loc_19C54BE:       var_27C = Format(CVar(Proc_6_38_E69628(CVar("01/" & Proc_6_38_E69628(CVar(var_178.Fields.Item("ToMonth")), 1, 1)), 1, 1)), "dd/MMM/YYYY")
  loc_19C54C7:       var_148 = CStr(var_27C)
  loc_19C54E4:     Else
  loc_19C5536:       var_148 = CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C554A:     End If
  loc_19C554D:   Else
  loc_19C55A6:     var_144 = CStr(Format(CVar("01/" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C5610:     var_148 = CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C5624:   End If
  loc_19C5688:   var_14C = CStr(Format(DateAdd("m", CDbl(1), CDate(CDate(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), 1, 1)))), "dd/MMM/YYYY"))
  loc_19C56D3:   var_1E4 = "dd/MMM/YYYY"
  loc_19C56F0:   var_114 = CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Billdate")), 1, 1)), var_1E4))
  loc_19C572C:   var_118 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), 1, 1)
  loc_19C5738:   var_198 = "U_Name"
  loc_19C575D:   var_140 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_198)), 1)
  loc_19C576C:   var_B6 = (var_B6 + 1)
  loc_19C5775:   var_1B0 = var_8C.RecordCount
  loc_19C5783:   If (var_1B0 > 0) Then
  loc_19C5789:     var_8C.MoveFirst
  loc_19C5790:     var_A6 = 0
  loc_19C5793:     ' Referenced from: 19C5985
  loc_19C57A2:     If Not(var_8C.EOF) Then
  loc_19C57AB:       var_A6 = (var_A6 + 1)
  loc_19C57B1:       Set var_344 = var_C4 
  loc_19C57C0:       var_344.AddNew var_198, var_1E4
  loc_19C57EA:       var_344.Fields.Item("mLine").Value = vbNullString
  loc_19C581E:       var_344.Fields.Item("Sno").Value = CVar(CStr(var_A6))
  loc_19C5869:       var_1C4 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")), var_A6, var_A6), &H4B)) 'String
  loc_19C588C:       var_344.Fields.Item("Desc").Value = var_1C4
  loc_19C58CE:       Proc_6_39_E7D3A0(var_1C4, CVar(var_8C.Fields.Item("BaseAmt")))
  loc_19C58EE:       var_1F4 = Format(var_1C4, "0.00")
  loc_19C5905:       var_27C = CVar(Proc_6_52_EAE084(CStr(var_1F4), &HC, 1)) 'String
  loc_19C5918:       var_2E0 = var_344.Fields
  loc_19C5920:       var_2E8 = var_2E0.Item("ChargeAmt")
  loc_19C5928:       var_2E8.Value = var_27C
  loc_19C594F:       var_198 = "Mark"
  loc_19C5963:       var_1B4 = var_344.Fields.Item(var_198)
  loc_19C596B:       var_1B4.Value = "*"
  loc_19C5979:       Set var_344 = Nothing 
  loc_19C5980:       var_8C.MoveNext
  loc_19C5985:       GoTo loc_19C5793
  loc_19C5988:     End If
  loc_19C5988:   End If
  loc_19C599E:   Set var_1AC = var_C4 
  loc_19C59B4:   Set var_C4 = var_1AC
  loc_19C59D5:   var_184 = MemVar_1F950B4 & "\MemFacilityBill.RPT"
  loc_19C59DE:   Call 0.Method_arg_1C (var_184, var_198, var_1AC, CreateFieldDefFile(var_1AC, MemVar_1F950B4 & "\MemFacilityBill.ttx", &HFF))
  loc_19C59E9:   MemVar_1F951E8 = var_1AC
  loc_19C59F5:   var_A8 = 0
  loc_19C59F8:   ' Referenced from: 19C5C1A
  loc_19C59FE:   var_2E2 = var_174.EOF
  loc_19C5A07:   If Not(var_2E2) Then
  loc_19C5A10:     var_A8 = (var_A8 + 1)
  loc_19C5A24:     Call 0.Method_arg_90 (var_1AC, var_1B0, var_A6, 1, var_A8)
  loc_19C5A2C:     Call 0.Method_arg_24 (var_A8, var_2E2, 1)
  loc_19C5A38:     For var_348 = var_2E0 To CInt(var_1B0): var_B6 = var_348 'Integer
  loc_19C5A51:       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C5A59:       Call 0.Method_arg_20 (var_184)
  loc_19C5A61:       Call 0.Method_arg_30 (var_2E0)
  loc_19C5A77:       var_358 = Ucase(CVar(var_184)) 'Variant
  loc_19C5AAE:       If (var_358 = Ucase(CVar("AddMember" & CStr(var_A8)))) Then
  loc_19C5AFA:         Proc_6_17_EAAE40(var_1F4)
  loc_19C5B16:         Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C5B1E:         Call 0.Method_arg_20 (CStr(var_1F4))
  loc_19C5B26:         Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E69628(CVar(var_174.Fields.Item("AddMemName")))), 3, 0))
  loc_19C5B49:       Else
  loc_19C5B72:         If (var_358 = Ucase(CVar("AddRelation" & CStr(var_A8)))) Then
  loc_19C5BAD:           var_1C4 = CVar(Proc_6_38_E69628(CVar(var_174.Fields.Item("RelationShip")))) 'String
  loc_19C5BBE:           Proc_6_17_EAAE40(var_1F4)
  loc_19C5BC6:           var_184 = CStr(var_1F4)
  loc_19C5BDA:           Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C5BE2:           Call 0.Method_arg_20 (var_184)
  loc_19C5BEA:           Call 0.Method_arg_38 (StrConv(var_1C4, 3, 0))
  loc_19C5C0A:         End If
  loc_19C5C0A:       End If
  loc_19C5C0D:     Next var_348 'Integer
  loc_19C5C15:     var_174.MoveNext
  loc_19C5C1A:     GoTo loc_19C59F8
  loc_19C5C1D:   End If
  loc_19C5C1F:   var_A8 = 0
  loc_19C5C25:   var_94.MoveFirst
  loc_19C5C2A:   ' Referenced from: 19C6005
  loc_19C5C39:   If Not(var_94.EOF) Then
  loc_19C5C66:     var_368 = var_94.Fields.Item("SunCode").Value 'Variant
  loc_19C5C84:     If (var_368 = CVar(MemVar_1F95078 & "TOT")) Then
  loc_19C5CAD:       Proc_6_39_E7D3A0(var_1C4, CVar(var_94.Fields.Item("SunAmt")))
  loc_19C5CD6:       var_138 = CStr(Format(var_1C4, "0.00"))
  loc_19C5CEA:     Else
  loc_19C5CFD:       If (var_368 = CVar(MemVar_1F95078 & "NET")) Then
  loc_19C5D2D:         Proc_6_39_E7D3A0(var_1C4, CVar(var_94.Fields.Item("SunAmt")), CVar(var_104))
  loc_19C5D35:         var_1D4 = (1 + var_1C4)
  loc_19C5D6F:         Proc_6_39_E7D3A0(var_1C4, CVar(var_94.Fields.Item("SunAmt")), CSng("0.00"))
  loc_19C5D89:         If (var_1C4 > 0) Then
  loc_19C5D9B:           var_1AC = var_94.Fields
  loc_19C5DA3:           var_1B4 = var_1AC.Item("SunAmt")
  loc_19C5DB2:           Proc_6_39_E7D3A0(var_1C4, CVar(var_1B4))
  loc_19C5DD2:           var_1F4 = Format(var_1C4, "0.00")
  loc_19C5DDB:           var_13C = CStr(var_1F4)
  loc_19C5DEC:         End If
  loc_19C5DEF:       Else
  loc_19C5DF5:         var_A8 = (var_A8 + 1)
  loc_19C5E09:         Call 0.Method_arg_90 (var_1AC, var_1B0, var_A6, 1, var_A8)
  loc_19C5E11:         Call 0.Method_arg_24 (1, 1)
  loc_19C5E1D:         For var_36C = var_A8 To CInt(var_1B0):     1 = var_36C 'Integer
  loc_19C5E36:           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C5E3E:           Call 0.Method_arg_20 (var_184)
  loc_19C5E46:           Call 0.Method_arg_30 (var_A8)
  loc_19C5E5C:           var_37C = Ucase(CVar(var_184)) 'Variant
  loc_19C5E93:           If (var_37C = Ucase(CVar("lblTaxName" & CStr(var_A8)))) Then
  loc_19C5EDF:             Proc_6_17_EAAE40(var_1F4)
  loc_19C5EFB:             Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C5F03:             Call 0.Method_arg_20 (CStr(var_1F4))
  loc_19C5F0B:             Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_19C5F2E:           Else
  loc_19C5F43:             var_1C4 = Ucase(CVar("TaxAmt" & CStr(var_A8)))
  loc_19C5F57:             If (var_37C = var_1C4) Then
  loc_19C5F80:               Proc_6_39_E7D3A0(var_1C4)
  loc_19C5FAB:               Proc_6_17_EAAE40(var_27C, Format(var_1C4, "0.00"), 1)
  loc_19C5FC7:               Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C5FCF:               Call 0.Method_arg_20 (CStr(var_27C), 1)
  loc_19C5FD7:               Call 0.Method_arg_38 (CVar(var_94.Fields.Item("SunAmt")))
  loc_19C5FF5:             End If
  loc_19C5FF5:           End If
  loc_19C5FF8:         Next var_36C 'Integer
  loc_19C5FFD:       End If
  loc_19C5FFD:     End If
  loc_19C6000:     var_94.MoveNext
  loc_19C6005:     GoTo loc_19C5C2A
  loc_19C6008:   End If
  loc_19C606C:   var_26C = 0
  loc_19C6093:   var_27C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode"))) & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C60B0:   unk_41ED1B.Execute CStr(var_27C & Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear"))))) & "')"), var_2DC, -1
  loc_19C60B8:   var_2FC = var_2FC.Fields
  loc_19C60C0:   var_26C = var_300.Item(var_300)
  loc_19C60C8:   var_380 = var_380.Value
  loc_19C615A:   var_1F4 = Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")))))
  loc_19C6165:   var_26C = 0
  loc_19C6185:   var_188 = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), CSng(var_2F8))
  loc_19C618C:   var_27C = CVar(var_188 & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C61A9:   unk_41ED1B.Execute CStr(var_27C & var_1F4 & "')"), var_2DC, -1
  loc_19C61B1:   var_2FC = var_2FC.Fields
  loc_19C61B9:   var_26C = var_300.Item(var_300)
  loc_19C61C1:   var_380 = var_380.Value
  loc_19C625A:   Proc_6_7_F26918(var_1F4, CVar(var_2F8 & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_19C6265:   var_26C = 0
  loc_19C6285:   var_188 = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), CSng(var_2F8))
  loc_19C62A9:   unk_41ED1B.Execute CStr(CVar(var_188 & "' And V_date<") & var_1F4 & vbNullString), var_2DC, -1
  loc_19C62B1:   var_2FC = var_2FC.Fields
  loc_19C62B9:   var_26C = var_300.Item(var_300)
  loc_19C62C1:   var_380 = var_380.Value
  loc_19C62CA:   var_D4 = CSng(var_2F8)
  loc_19C635C:   Proc_6_7_F26918(var_1F4, CVar(var_2F8 & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_19C6367:   var_26C = 0
  loc_19C638E:   var_27C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_D4) & "' And V_date<") 'String
  loc_19C63AB:   unk_41ED1B.Execute CStr(var_27C & var_1F4 & vbNullString), var_2DC, -1
  loc_19C63B3:   var_2FC = var_2FC.Fields
  loc_19C63BB:   var_26C = var_300.Item(var_300)
  loc_19C63C3:   var_380 = var_380.Value
  loc_19C63CC:   var_CC = CSng(var_2F8)
  loc_19C6462:   var_26C = 0
  loc_19C6482:   var_188 = "Select isnull(Sum(AmtDr),0) From Ledger Where isnull(AmtDr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT','BREC') And SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_CC)
  loc_19C6489:   var_27C = CVar(var_188 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C64A6:   unk_41ED1B.Execute CStr(var_27C & Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_2F8))) & "')"), var_2DC, -1
  loc_19C64AE:   var_2FC = var_2FC.Fields
  loc_19C64B6:   var_26C = var_300.Item(var_300)
  loc_19C64BE:   var_380 = var_380.Value
  loc_19C64C7:   var_DC = CSng(var_2F8)
  loc_19C6506:   var_1AC = var_88.Fields
  loc_19C650E:   var_1B4 = var_1AC.Item("MemCode")
  loc_19C655B:   var_26C = 0
  loc_19C6577:   var_184 = Proc_6_38_E69628(CVar(var_1B4), var_DC)
  loc_19C657B:   var_188 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT','BREC') And SubCode='" & var_184
  loc_19C6582:   var_27C = CVar(var_188 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C658C:   var_24C = "')"
  loc_19C659F:   unk_41ED1B.Execute CStr(var_27C & Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_2F8))) & var_24C), var_2DC, -1
  loc_19C65A7:   var_2FC = var_2FC.Fields
  loc_19C65AF:   var_26C = var_300.Item(var_300)
  loc_19C65B7:   var_380 = var_380.Value
  loc_19C65C0:   var_E4 = CSng(var_2F8)
  loc_19C660C:   var_1A8 = CVar((var_CC - var_D4)) 'Double
  loc_19C6613:   var_1D4 = Format(CVar(var_1B4), "0.00")
  loc_19C661C:   var_F0 = CSng(var_1D4)
  loc_19C6639:   Call 0.Method_arg_90 (var_1AC, var_1B0, var_A6, 1, var_F0)
  loc_19C6641:   Call 0.Method_arg_24 (1, 1, var_E4)
  loc_19C664D:   For var_384 = var_2F8 To CInt(var_1B0): var_2F8 = var_384 'Integer
  loc_19C6666:     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C666E:     Call 0.Method_arg_20 (var_184)
  loc_19C6676:     Call 0.Method_arg_30 (var_2F8)
  loc_19C668C:     var_394 = Ucase(CVar(var_184)) 'Variant
  loc_19C66A2:     var_1A8 = "comp_name"
  loc_19C66BC:     If (var_394 = Ucase(var_1A8)) Then
  loc_19C66CA:       Proc_6_17_EAAE40(var_1A8)
  loc_19C66E6:       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C66EE:       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C66F6:       Call 0.Method_arg_38 (MemVar_1F95130)
  loc_19C670B:     Else
  loc_19C6713:       var_1A8 = "comp_add1"
  loc_19C672D:       If (var_394 = Ucase(var_1A8)) Then
  loc_19C673B:         Proc_6_17_EAAE40(var_1A8)
  loc_19C6757:         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C675F:         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6767:         Call 0.Method_arg_38 (MemVar_1F95134)
  loc_19C677C:       Else
  loc_19C6784:         var_1A8 = "comp_pin"
  loc_19C679E:         If (var_394 = Ucase(var_1A8)) Then
  loc_19C67AC:           Proc_6_17_EAAE40(var_1A8)
  loc_19C67C8:           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C67D0:           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C67D8:           Call 0.Method_arg_38 (MemVar_1F9513C)
  loc_19C67ED:         Else
  loc_19C680F:           If (var_394 = Ucase("comp_GSTIN")) Then
  loc_19C6833:             Call 0.Method_arg_90 (var_1AC, CLng(var_A6))
  loc_19C683B:             Call 0.Method_arg_20 (var_1B4)
  loc_19C6843:             Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_19C6859:           Else
  loc_19C686A:             var_1C4 = Ucase("Title")
  loc_19C687B:             If (var_394 = var_1C4) Then
  loc_19C688C:               Proc_6_17_EAAE40(var_1C4)
  loc_19C68A8:               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C68B0:               Call 0.Method_arg_20 (CStr(var_1C4))
  loc_19C68B8:               Call 0.Method_arg_38 ("Member Bill")
  loc_19C68D1:             Else
  loc_19C68D9:               var_1A8 = "BillNo"
  loc_19C68F3:               If (var_394 = Ucase(var_1A8)) Then
  loc_19C6901:                 Proc_6_17_EAAE40(var_1A8)
  loc_19C691D:                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6925:                 Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C692D:                 Call 0.Method_arg_38 (var_108)
  loc_19C6942:               Else
  loc_19C694A:                 var_1A8 = "CardNo"
  loc_19C6964:                 If (var_394 = Ucase(var_1A8)) Then
  loc_19C6972:                   Proc_6_17_EAAE40(var_1A8)
  loc_19C698E:                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6996:                   Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C699E:                   Call 0.Method_arg_38 (var_10C)
  loc_19C69B3:                 Else
  loc_19C69BB:                   var_1A8 = "MemName"
  loc_19C69D5:                   If (var_394 = Ucase(var_1A8)) Then
  loc_19C69E3:                     Proc_6_17_EAAE40(var_1A8)
  loc_19C69FF:                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6A07:                     Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6A0F:                     Call 0.Method_arg_38 (var_110)
  loc_19C6A24:                   Else
  loc_19C6A2C:                     var_1A8 = "ConPrefix"
  loc_19C6A46:                     If (var_394 = Ucase(var_1A8)) Then
  loc_19C6A54:                       Proc_6_17_EAAE40(var_1A8)
  loc_19C6A70:                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6A78:                       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6A80:                       Call 0.Method_arg_38 (var_164)
  loc_19C6A95:                     Else
  loc_19C6A9D:                       var_1A8 = "ConPerson"
  loc_19C6AB7:                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C6AC5:                         Proc_6_17_EAAE40(var_1A8)
  loc_19C6AE1:                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6AE9:                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6AF1:                         Call 0.Method_arg_38 (var_168)
  loc_19C6B06:                       Else
  loc_19C6B0E:                         var_1A8 = "ConPersonMName"
  loc_19C6B28:                         If (var_394 = Ucase(var_1A8)) Then
  loc_19C6B36:                           Proc_6_17_EAAE40(var_1A8)
  loc_19C6B52:                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6B5A:                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6B62:                           Call 0.Method_arg_38 (var_16C)
  loc_19C6B77:                         Else
  loc_19C6B7F:                           var_1A8 = "ConPersonLName"
  loc_19C6B99:                           If (var_394 = Ucase(var_1A8)) Then
  loc_19C6BA7:                             Proc_6_17_EAAE40(var_1A8)
  loc_19C6BC3:                             Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6BCB:                             Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6BD3:                             Call 0.Method_arg_38 (var_170)
  loc_19C6BE8:                           Else
  loc_19C6BF0:                             var_1A8 = "MemAddress"
  loc_19C6C0A:                             If (var_394 = Ucase(var_1A8)) Then
  loc_19C6C18:                               Proc_6_17_EAAE40(var_1A8)
  loc_19C6C34:                               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6C3C:                               Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6C44:                               Call 0.Method_arg_38 (var_11C)
  loc_19C6C59:                             Else
  loc_19C6C61:                               var_1A8 = "MemCityName"
  loc_19C6C7B:                               If (var_394 = Ucase(var_1A8)) Then
  loc_19C6C89:                                 Proc_6_17_EAAE40(var_1A8)
  loc_19C6CA5:                                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6CAD:                                 Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6CB5:                                 Call 0.Method_arg_38 (var_120)
  loc_19C6CCA:                               Else
  loc_19C6CD2:                                 var_1A8 = "MemStateCode"
  loc_19C6CEC:                                 If (var_394 = Ucase(var_1A8)) Then
  loc_19C6CFA:                                   Proc_6_17_EAAE40(var_1A8)
  loc_19C6D16:                                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6D1E:                                   Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6D26:                                   Call 0.Method_arg_38 (var_124)
  loc_19C6D3B:                                 Else
  loc_19C6D43:                                   var_1A8 = "MemStateName"
  loc_19C6D5D:                                   If (var_394 = Ucase(var_1A8)) Then
  loc_19C6D6B:                                     Proc_6_17_EAAE40(var_1A8)
  loc_19C6D87:                                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6D8F:                                     Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6D97:                                     Call 0.Method_arg_38 (var_128)
  loc_19C6DAC:                                   Else
  loc_19C6DB4:                                     var_1A8 = "MemPinCode"
  loc_19C6DCE:                                     If (var_394 = Ucase(var_1A8)) Then
  loc_19C6DDC:                                       Proc_6_17_EAAE40(var_1A8)
  loc_19C6DF8:                                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6E00:                                       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6E08:                                       Call 0.Method_arg_38 (var_130)
  loc_19C6E1D:                                     Else
  loc_19C6E25:                                       var_1A8 = "MemGSTIN"
  loc_19C6E3F:                                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C6E4D:                                         Proc_6_17_EAAE40(var_1A8)
  loc_19C6E69:                                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6E71:                                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6E79:                                         Call 0.Method_arg_38 (var_12C)
  loc_19C6E8E:                                       Else
  loc_19C6E96:                                         var_1A8 = "MemContactNo"
  loc_19C6EB0:                                         If (var_394 = Ucase(var_1A8)) Then
  loc_19C6EBE:                                           Proc_6_17_EAAE40(var_1A8)
  loc_19C6EDA:                                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6EE2:                                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6EEA:                                           Call 0.Method_arg_38 (var_134)
  loc_19C6EFF:                                         Else
  loc_19C6F07:                                           var_1A8 = "DateFrom"
  loc_19C6F21:                                           If (var_394 = Ucase(var_1A8)) Then
  loc_19C6F2F:                                             Proc_6_17_EAAE40(var_1A8)
  loc_19C6F4B:                                             Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6F53:                                             Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6F5B:                                             Call 0.Method_arg_38 (var_144)
  loc_19C6F70:                                           Else
  loc_19C6F78:                                             var_1A8 = "DateTo"
  loc_19C6F92:                                             If (var_394 = Ucase(var_1A8)) Then
  loc_19C6FA0:                                               Proc_6_17_EAAE40(var_1A8)
  loc_19C6FBC:                                               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6FC4:                                               Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C6FCC:                                               Call 0.Method_arg_38 (var_148)
  loc_19C6FE1:                                             Else
  loc_19C6FE9:                                               var_1A8 = "BillDate"
  loc_19C7003:                                               If (var_394 = Ucase(var_1A8)) Then
  loc_19C7011:                                                 Proc_6_17_EAAE40(var_1A8)
  loc_19C702D:                                                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7035:                                                 Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C703D:                                                 Call 0.Method_arg_38 (var_114)
  loc_19C7052:                                               Else
  loc_19C705A:                                                 var_1A8 = "DueDate"
  loc_19C7074:                                                 If (var_394 = Ucase(var_1A8)) Then
  loc_19C7082:                                                   Proc_6_17_EAAE40(var_1A8)
  loc_19C709E:                                                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C70A6:                                                   Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C70AE:                                                   Call 0.Method_arg_38 (var_14C)
  loc_19C70C3:                                                 Else
  loc_19C70CB:                                                   var_1A8 = "BillPayDueDate"
  loc_19C70E5:                                                   If (var_394 = Ucase(var_1A8)) Then
  loc_19C70F3:                                                     Proc_6_17_EAAE40(var_1A8)
  loc_19C710F:                                                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7117:                                                     Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C711F:                                                     Call 0.Method_arg_38 (var_154)
  loc_19C7134:                                                   Else
  loc_19C713C:                                                     var_1A8 = "BillHeader"
  loc_19C7156:                                                     If (var_394 = Ucase(var_1A8)) Then
  loc_19C7164:                                                       Proc_6_17_EAAE40(var_1A8)
  loc_19C7180:                                                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7188:                                                       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7190:                                                       Call 0.Method_arg_38 (var_17C)
  loc_19C71A5:                                                     Else
  loc_19C71AD:                                                       var_1A8 = "BillFooter"
  loc_19C71C7:                                                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C71D5:                                                         Proc_6_17_EAAE40(var_1A8)
  loc_19C71F1:                                                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C71F9:                                                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7201:                                                         Call 0.Method_arg_38 (var_180)
  loc_19C7216:                                                       Else
  loc_19C721E:                                                         var_1A8 = "BillMessage"
  loc_19C7238:                                                         If (var_394 = Ucase(var_1A8)) Then
  loc_19C7246:                                                           Proc_6_17_EAAE40(var_1A8)
  loc_19C7262:                                                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C726A:                                                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7272:                                                           Call 0.Method_arg_38 (var_150)
  loc_19C7287:                                                         Else
  loc_19C728F:                                                           var_1A8 = "ForMonth"
  loc_19C72A9:                                                           If (var_394 = Ucase(var_1A8)) Then
  loc_19C72B7:                                                             Proc_6_17_EAAE40(var_1A8)
  loc_19C72D3:                                                             Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C72DB:                                                             Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C72E3:                                                             Call 0.Method_arg_38 (var_118)
  loc_19C72F8:                                                           Else
  loc_19C7300:                                                             var_1A8 = "User"
  loc_19C731A:                                                             If (var_394 = Ucase(var_1A8)) Then
  loc_19C7328:                                                               Proc_6_17_EAAE40(var_1A8)
  loc_19C7344:                                                               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C734C:                                                               Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7354:                                                               Call 0.Method_arg_38 (var_140)
  loc_19C7369:                                                             Else
  loc_19C738B:                                                               If (var_394 = Ucase("PreBalance")) Then
  loc_19C73B9:                                                                 Proc_6_17_EAAE40(var_1D4, Format(var_F0, "0.00"))
  loc_19C73D5:                                                                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C73DD:                                                                 Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C73E5:                                                                 Call 0.Method_arg_38 (1)
  loc_19C7400:                                                               Else
  loc_19C7422:                                                                 If (var_394 = Ucase("OtherCredit")) Then
  loc_19C7450:                                                                   Proc_6_17_EAAE40(var_1D4, Format(var_160, "0.00"))
  loc_19C746C:                                                                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7474:                                                                   Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C747C:                                                                   Call 0.Method_arg_38 (1)
  loc_19C7497:                                                                 Else
  loc_19C74B9:                                                                   If (var_394 = Ucase("DrAmt")) Then
  loc_19C74E7:                                                                     Proc_6_17_EAAE40(var_1D4, Format(var_DC, "0.00"))
  loc_19C7503:                                                                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C750B:                                                                     Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C7513:                                                                     Call 0.Method_arg_38 (1)
  loc_19C752E:                                                                   Else
  loc_19C7550:                                                                     If (var_394 = Ucase("CrAmt")) Then
  loc_19C755D:                                                                       var_1E4 = "0.00"
  loc_19C757E:                                                                       Proc_6_17_EAAE40(var_1D4, Format(var_E4, var_1E4))
  loc_19C759A:                                                                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C75A2:                                                                       Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C75AA:                                                                       Call 0.Method_arg_38 (1)
  loc_19C75C5:                                                                     Else
  loc_19C75CD:                                                                       var_1A8 = "Total"
  loc_19C75E7:                                                                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C75F5:                                                                         Proc_6_17_EAAE40(var_1A8)
  loc_19C7611:                                                                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7619:                                                                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7621:                                                                         Call 0.Method_arg_38 (var_138)
  loc_19C7636:                                                                       Else
  loc_19C763E:                                                                         var_1A8 = "NetTotal"
  loc_19C7647:                                                                         var_1C4 = Ucase(var_1A8)
  loc_19C7658:                                                                         If (var_394 = var_1C4) Then
  loc_19C7666:                                                                           Proc_6_17_EAAE40(var_1A8)
  loc_19C7682:                                                                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C768A:                                                                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7692:                                                                           Call 0.Method_arg_38 (var_13C)
  loc_19C76A4:                                                                         End If
  loc_19C76A4:                                                                       End If
  loc_19C76A4:                                                                     End If
  loc_19C76A4:                                                                   End If
  loc_19C76A4:                                                                 End If
  loc_19C76A4:                                                               End If
  loc_19C76A4:                                                             End If
  loc_19C76A4:                                                           End If
  loc_19C76A4:                                                         End If
  loc_19C76A4:                                                       End If
  loc_19C76A4:                                                     End If
  loc_19C76A4:                                                   End If
  loc_19C76A4:                                                 End If
  loc_19C76A4:                                               End If
  loc_19C76A4:                                             End If
  loc_19C76A4:                                           End If
  loc_19C76A4:                                         End If
  loc_19C76A4:                                       End If
  loc_19C76A4:                                     End If
  loc_19C76A4:                                   End If
  loc_19C76A4:                                 End If
  loc_19C76A4:                               End If
  loc_19C76A4:                             End If
  loc_19C76A4:                           End If
  loc_19C76A4:                         End If
  loc_19C76A4:                       End If
  loc_19C76A4:                     End If
  loc_19C76A4:                   End If
  loc_19C76A4:                 End If
  loc_19C76A4:               End If
  loc_19C76A4:             End If
  loc_19C76A4:           End If
  loc_19C76A4:         End If
  loc_19C76A4:       End If
  loc_19C76A4:     End If
  loc_19C76A7:   Next var_384 'Integer
  loc_19C76C5:   Call 0.Method_arg_64 (var_1AC, CVar(var_C4))
  loc_19C76CD:   Call 0.Method_arg_2C (var_1E4)
  loc_19C76DB:   Call 0.Method_arg_150 (var_24C)
  loc_19C7706:   Proc_6_39_E7D3A0(var_1C4)
  loc_19C771B:   var_24C = arg_10
  loc_19C772D:   var_25C = (Proc_6_38_E69628(var_24C, (var_1C4 <= 0)) = "N")
  loc_19C7746:   If CBool(CVar(var_158.Fields.Item("NoOfCopy")) And var_25C) Then
  loc_19C774E:     Set var_1B4 = Nothing
  loc_19C776A:     Set var_1AC = MemVar_1F951E8 
  loc_19C7776:     Proc_6_99_1484404(var_1AC, 0, vbNullString)
  loc_19C7781:     MemVar_1F951E8 = var_1AC
  loc_19C7792:   Else
  loc_19C77AA:     If (Proc_6_38_E69628(arg_10, &HFF) = "R") Then
  loc_19C77CA:       Call 0.Method_Me8 (False, 1, var_24C)
  loc_19C77D2:     Else
  loc_19C77F8:       Proc_6_39_E7D3A0(var_1C4, CVar(var_158.Fields.Item("NoOfCopy")), var_25C)
  loc_19C7818:       Call 0.Method_Me8 (False, var_1C4, var_24C, var_25C)
  loc_19C7827:     End If
  loc_19C7827:   End If
  loc_19C782A:   var_88.MoveNext
  loc_19C782F:   GoTo loc_19C4C98
  loc_19C7832: End If
  loc_19C7837: Set var_88 = Nothing
  loc_19C783F: Set var_8C = Nothing
  loc_19C7847: Set var_90 = Nothing
  loc_19C784F: Set var_94 = Nothing
  loc_19C7857: Set var_C4 = Nothing
  loc_19C785F: Set var_158 = Nothing
  loc_19C7867: Set var_174 = Nothing
  loc_19C786A: Exit Sub
  loc_19C786B: ' Referenced from: 19C4848
  loc_19C786B: Proc_6_60_E63754(var_26C, var_26C)
  loc_19C7870: Exit Sub
End Sub

Public Sub Proc_272_2_1705054(arg_C) '1705054
  'Data Table: 41ED10
  Dim var_FC As String
  Dim var_100 As String
  Dim unk_41ED1B As Connection15
  Dim var_F4 As Recordset15
  Dim var_110 As Variant
  Dim var_124 As Fields15
  Dim var_120 As Variant
  Dim var_13C As Variant
  Dim var_150 As String
  Dim var_154 As String
  Dim var_158 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_174 As String
  Dim var_17C As String
  Dim var_194 As String
  Dim var_88 As Recordset15
  Dim var_14C As Variant
  Dim var_B0 As Integer
  Dim var_B6 As Integer
  Dim var_AE As Integer
  Dim var_1D8 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_234 As Variant
  Dim var_224 As Variant
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_2A4 As Variant
  Dim var_F0 As Double
  Dim var_264 As Variant
  Dim var_254 As Variant
  Dim var_2B4 As Variant
  Dim var_2D4 As Variant
  Dim var_2FC As Variant
  Dim var_2E8 As Recordset15
  Dim var_2EC As Fields15
  Dim var_300 As Field20
  Dim var_C8 As Double
  Dim var_C0 As Double
  Dim var_DC As Double
  Dim var_2E4 As Variant
  Dim var_D0 As Double
  Dim var_294 As Variant
  loc_170355C: On Error Goto loc_170504D
  loc_1703583: unk_41ED1B.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F95078 & "'", var_120, -1
  loc_170358E: Set var_F4 = var_124
  loc_17035B2: If (var_F4.RecordCount > 0) Then
  loc_17035C4:   var_124 = var_F4.Fields
  loc_17035D4:   var_120 = CVar(var_124.Item("BillMessage")) 'Address
  loc_17035E8:   var_13C = CVar(Proc_6_38_E69628(var_120)) 'String
  loc_17035F7:   var_F8 = CStr(Left(var_13C, &HFE))
  loc_1703609: End If
  loc_1703624: var_100 = "Select S.Name As MemName,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.DocId='" & arg_C & "' And M.Site_Code='"
  loc_1703649: unk_41ED1B.Execute var_100 & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078 & "' Or M.LogSite_Code='HO')", var_120, -1
  loc_1703654: Set var_88 = var_124
  loc_1703680: var_FC = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & arg_C
  loc_17036A3: var_15C = var_FC & "' And M1.Type='Facility' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') union "
  loc_17036AA: var_160 = var_15C & "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_17036CD: var_174 = var_160 & arg_C & "' And M1.Type='Revenue' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078
  loc_17036DB: var_17C = var_174 & "' Or M1.LogSite_Code='HO') union " & "Select D.Name As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_1703705: var_194 = var_17C & arg_C & "' And M1.Type='Outlet' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') Order by sno"
  loc_170370E: unk_41ED1B.Execute var_194, var_120, -1
  loc_1703719: Set var_8C = var_124
  loc_1703768: var_100 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & arg_C & "' And MS.Site_Code='"
  loc_170378D: unk_41ED1B.Execute var_100 & MemVar_1F95070 & "' And (MS.LogSite_Code='" & MemVar_1F95078 & "' Or MS.LogSite_Code='HO') Order By Sno", var_120, -1
  loc_1703798: Set var_94 = var_124
  loc_17037C4: If (var_88.RecordCount > 0) Then
  loc_17037C7: End If
  loc_17037DB: var_124 = var_88.Fields
  loc_17037F2: Proc_6_39_E7D3A0(var_13C, CVar(var_124.Item("VNo")), "MBILL", var_124)
  loc_17037FA: var_14C = var_124 & var_13C 
  loc_17037FE: var_1B4 = var_14C 'Variant
  loc_170380E: Close 1
  loc_170382D: Open CStr("C:\reptmp\" & var_1B4 & ".TXT") For Output As 1 Len = &HFF
  loc_170383D: var_B0 = 1
  loc_1703842: var_B6 = &H14
  loc_1703845: ' Referenced from: 1704F85
  loc_1703854: If Not(var_88.EOF) Then
  loc_1703859:   var_AE = 0
  loc_170386A:   var_A8 = "** " & "MEMBER BILL" & " **"
  loc_1703876:   If (var_AE = 0) Then
  loc_17038B1:     Proc_6_39_E7D3A0(var_14C, CVar(var_88.Fields.Item("VNo")), "Bill No.  : ", var_AE)
  loc_17038E2:     var_1F8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_B6 & var_14C, var_B0), &H28)))
  loc_17038E8:     Print 1, var_1F8
  loc_170390F:     var_AE = (var_AE + 1)
  loc_170396E:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("M. S. No. : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28)))
  loc_1703974:     Print 1, var_B6 & CVar(Proc_6_45_EADFB8("M. S. No. : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28))
  loc_1703999:     var_AE = (var_AE + 1)
  loc_17039F8:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("Name      : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")), var_AE), &H32)))
  loc_17039FE:     Print 1, var_B6 & CVar(Proc_6_45_EADFB8("Name      : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")), var_AE), &H32))
  loc_1703A23:     var_AE = (var_AE + 1)
  loc_1703A82:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("Bill Date : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28)))
  loc_1703A88:     Print 1, var_B6 & CVar(Proc_6_45_EADFB8("Bill Date : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28))
  loc_1703AAD:     var_AE = (var_AE + 1)
  loc_1703B0C:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28)))
  loc_1703B12:     Print 1, var_B6 & CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28))
  loc_1703B37:     var_AE = (var_AE + 1)
  loc_1703B68:     var_AC = Replace(CStr(Space(&H46)), " ", "-", 1, -1, 0)
  loc_1703B97:     var_14C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_F8, &H46, var_AE)))
  loc_1703B9D:     Print 1, CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28))
  loc_1703BB5:     var_AE = (var_AE + 1)
  loc_1703BCE:     var_13C = (Chr(&H12) + CVar(var_AC))
  loc_1703BD4:     Print 1, CVar(Proc_6_45_EADFB8(var_F8, &H46, var_AE))
  loc_1703BE7:     var_AE = (var_AE + 1)
  loc_1703BEA:   End If
  loc_1703BED:   var_8C.MoveFirst
  loc_1703BF2:   ' Referenced from: 17040F7
  loc_1703C01:   If Not(var_8C.EOF) Then
  loc_1703C55:     Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28)), CVar(var_8C.Fields.Item("BaseAmt")))
  loc_1703C75:     var_1E8 = Format(CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28)), "0.00")
  loc_1703CA0:     var_154 = Proc_6_52_EAE084(CStr(var_1E8), &H14, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")), var_AE, var_AE), &H32, 1))
  loc_1703CEB:     var_13C = (Chr(&H12) + CVar(1 & var_154))
  loc_1703CF2:     var_1D8 = (CVar(var_8C.Fields.Item("BaseAmt")) + Chr(&H12))
  loc_1703CF8:     Print 1, "0.00"
  loc_1703D0F:     var_AE = (var_AE + 1)
  loc_1703D1C:     If (var_AE = (&H30 - var_B6)) Then
  loc_1703D35:       var_13C = (Chr(&H12) + CVar(var_AC))
  loc_1703D3B:       Print 1, CVar(var_8C.Fields.Item("BaseAmt"))
  loc_1703D4E:       var_AE = (var_AE + 1)
  loc_1703D57:       var_B0 = (var_B0 + 1)
  loc_1703D72:       var_14C = "Contd. to Page No. " & Trim(CVar(CStr(var_B0))) 
  loc_1703D78:       Print 1, var_14C
  loc_1703D8D:       var_AE = (var_AE + 1)
  loc_1703D90:       ' Referenced from: 1703DAD
  loc_1703D96:       If (var_AE <= &H3B) Then
  loc_1703D9E:         Print 1, vbNullString
  loc_1703DAA:         var_AE = (var_AE + 1)
  loc_1703DAD:         GoTo loc_1703D90
  loc_1703DB0:       End If
  loc_1703DB2:       var_AE = 0
  loc_1703DED:       Proc_6_39_E7D3A0(var_14C, CVar(var_88.Fields.Item("VNo")), "Bill No.  : ", var_AE, var_AE, var_AE)
  loc_1703E1E:       var_1F8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_B0 & var_14C, var_AE, var_AE), &H28)))
  loc_1703E24:       Print 1, var_1F8
  loc_1703E4B:       var_AE = (var_AE + 1)
  loc_1703EAA:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("M. S. No. : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28)))
  loc_1703EB0:       Print 1, var_B0 & CVar(Proc_6_45_EADFB8("M. S. No. : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28))
  loc_1703ED5:       var_AE = (var_AE + 1)
  loc_1703F34:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("Name      : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")), var_AE), &H32)))
  loc_1703F3A:       Print 1, var_B0 & CVar(Proc_6_45_EADFB8("Name      : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")), var_AE), &H32))
  loc_1703F5F:       var_AE = (var_AE + 1)
  loc_1703FBE:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("Bill Date : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28)))
  loc_1703FC4:       Print 1, var_B0 & CVar(Proc_6_45_EADFB8("Bill Date : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28))
  loc_1703FE9:       var_AE = (var_AE + 1)
  loc_1704048:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)))
  loc_170404E:       Print 1, var_B0 & CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28))
  loc_1704073:       var_AE = (var_AE + 1)
  loc_170409C:       var_14C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_F8, &H46, var_AE)))
  loc_17040A2:       Print 1, CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28))
  loc_17040BA:       var_AE = (var_AE + 1)
  loc_17040D3:       var_13C = (Chr(&H12) + CVar(var_AC))
  loc_17040D9:       Print 1, CVar(Proc_6_45_EADFB8(var_F8, &H46, var_AE))
  loc_17040EC:       var_AE = (var_AE + 1)
  loc_17040EF:     End If
  loc_17040F2:     var_8C.MoveNext
  loc_17040F7:     GoTo loc_1703BF2
  loc_17040FA:     ' Referenced from: 1704117
  loc_17040FA:   End If
  loc_1704100:   If (var_AE < &H1C) Then
  loc_1704108:     Print 1, vbNullString
  loc_1704114:     var_AE = (var_AE + 1)
  loc_1704117:     GoTo loc_17040FA
  loc_170411A:   End If
  loc_1704130:   var_13C = (Chr(&H12) + CVar(var_AC))
  loc_1704136:   Print 1, CVar(Proc_6_45_EADFB8(var_F8, &H46, var_AE))
  loc_1704149:   var_AE = (var_AE + 1)
  loc_170414F:   var_94.MoveFirst
  loc_1704154:   ' Referenced from: 1704634
  loc_1704163:   If Not(var_94.EOF) Then
  loc_1704190:     var_214 = var_94.Fields.Item("SunCode").Value 'Variant
  loc_17041AE:     If (var_214 = CVar(MemVar_1F95078 & "TOT")) Then
  loc_17041C6:       var_13C = Space(&H28)
  loc_1704214:       Proc_6_39_E7D3A0(var_244, CVar(var_94.Fields.Item("SunAmt")), var_AE)
  loc_1704261:       var_14C = (Chr(&H12) + var_13C)
  loc_170426B:       var_1E8 = (CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)) + CVar(Proc_6_45_EADFB8("Total", &HF, var_AE, var_AE)))
  loc_1704272:       var_224 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_B0 & CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)), var_AE, var_AE), &H28)) + Space(4))
  loc_170427C:       var_284 = (var_224 + CVar(Proc_6_52_EAE084(CStr(Format(var_244, "0.00")), &HB, 1, 1)))
  loc_1704283:       var_2A4 = (var_284 + Chr(&H12))
  loc_1704289:       Print 1, var_2A4
  loc_17042C4:       var_AE = (var_AE + 1)
  loc_17042CA:     Else
  loc_17042DD:       If (var_214 = CVar(MemVar_1F95078 & "NET")) Then
  loc_170430D:         Proc_6_39_E7D3A0(var_13C, CVar(var_94.Fields.Item("SunAmt")), CVar(var_F0), var_AE)
  loc_1704315:         var_14C = (var_AE + var_13C)
  loc_170431A:         var_F0 = CSng(CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)))
  loc_170434F:         Proc_6_39_E7D3A0(var_13C, CVar(var_94.Fields.Item("SunAmt")), var_F0)
  loc_1704369:         If (var_13C > 0) Then
  loc_1704381:           var_13C = Space(&H28)
  loc_17043CF:           Proc_6_39_E7D3A0(var_244, CVar(var_94.Fields.Item("SunAmt")))
  loc_170441C:           var_14C = (Chr(&H12) + var_13C)
  loc_1704426:           var_1E8 = (CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)) + CVar(Proc_6_45_EADFB8("Total With Tax", &HF)))
  loc_170442D:           var_224 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_B0 & CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)), var_AE, var_AE), &H28)) + Space(4))
  loc_1704434:           var_274 = CVar(Proc_6_52_EAE084(CStr(Format(var_244, "0.00")), &HB, 1)) 'String
  loc_1704437:           var_284 = (var_224 + var_274)
  loc_170443E:           var_2A4 = (var_284 + Chr(&H12))
  loc_1704444:           Print 1, var_2A4
  loc_170447F:           var_AE = (var_AE + 1)
  loc_1704482:         End If
  loc_1704485:       Else
  loc_17044AB:         Proc_6_39_E7D3A0(var_13C, CVar(var_94.Fields.Item("SunAmt")), var_AE)
  loc_17044C5:         If (var_13C > 0) Then
  loc_1704501:           var_1D8 = CVar(var_94.Fields.Item("SunName")) 'Address
  loc_1704542:           var_244 = Space(4)
  loc_170456D:           Proc_6_39_E7D3A0(var_274, CVar(var_94.Fields.Item("SunAmt")))
  loc_17045BA:           var_14C = (Chr(&H12) + Space(&H28))
  loc_17045C4:           var_234 = (CVar(Proc_6_45_EADFB8("For Month : " & Proc_6_38_E69628(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)) + CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(Proc_6_38_E69628(var_1D8, 1)), 3, 0)), &HF)))
  loc_17045CB:           var_254 = (CVar(var_94.Fields.Item("SunAmt")) + var_244)
  loc_17045D5:           var_2B4 = ("0.00" + CVar(Proc_6_52_EAE084(CStr(Format(var_274, "0.00")), &HB, 1)))
  loc_17045DC:           var_2D4 = (var_2B4 + Chr(&H12))
  loc_17045E2:           Print 1, var_2D4
  loc_1704629:           var_AE = (var_AE + 1)
  loc_170462C:         End If
  loc_170462C:       End If
  loc_170462C:     End If
  loc_170462F:     var_94.MoveNext
  loc_1704634:     GoTo loc_1704154
  loc_1704637:   End If
  loc_1704646:   var_124 = var_88.Fields
  loc_1704697:   Proc_6_7_F26918(var_1D8, CVar(var_124 & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_17046A2:   var_2FC = 0
  loc_17046C9:   var_1E8 = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_124.Item("MemCode")), var_AE, 1) & "' And V_date<") 'String
  loc_17046E6:   unk_41ED1B.Execute CStr(var_1E8 & var_1D8 & vbNullString), CVar(var_94.Fields.Item("SunAmt")), -1
  loc_17046EE:   var_2E8 = var_2E8.Fields
  loc_17046F6:   var_2FC = var_2EC.Item(var_2EC)
  loc_17046FE:   var_300 = var_300.Value
  loc_1704707:   var_C8 = CSng(var_244)
  loc_1704799:   Proc_6_7_F26918(var_1D8, CVar(var_244 & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_17047A4:   var_2FC = 0
  loc_17047CB:   var_1E8 = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_C8) & "' And V_date<") 'String
  loc_17047E8:   unk_41ED1B.Execute CStr(var_1E8 & var_1D8 & vbNullString), CVar(var_94.Fields.Item("SunAmt")), -1
  loc_17047F0:   var_2E8 = var_2E8.Fields
  loc_17047F8:   var_2FC = var_2EC.Item(var_2EC)
  loc_1704800:   var_300 = var_300.Value
  loc_1704809:   var_C0 = CSng(var_244)
  loc_1704857:   var_120 = CVar((var_C0 - var_C8)) 'Double
  loc_170485E:   var_14C = Format(CVar(var_88.Fields.Item("MemCode")), "0.00")
  loc_1704867:   var_DC = CSng(var_14C)
  loc_17048CF:   var_2E4 = 0
  loc_17048EF:   var_100 = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_DC, 1, 1)
  loc_17048F6:   var_150 = var_100 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_1704900:   var_158 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/") & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_C0)
  loc_1704910:   unk_41ED1B.Execute var_158 & "'", var_14C, -1
  loc_1704918:   var_2E8 = var_2E8.Fields
  loc_1704920:   var_2E4 = var_2EC.Item(var_2EC)
  loc_1704928:   var_300 = var_300.Value
  loc_1704931:   var_C8 = CSng(var_1D8)
  loc_17049BB:   var_2E4 = 0
  loc_17049DB:   var_100 = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCode")), var_C8, var_1D8)
  loc_17049E2:   var_150 = var_100 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_17049EC:   var_158 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), "01/") & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), var_244)
  loc_17049FC:   unk_41ED1B.Execute var_158 & "'", var_14C, -1
  loc_1704A04:   var_2E8 = var_2E8.Fields
  loc_1704A0C:   var_2E4 = var_2EC.Item(var_2EC)
  loc_1704A14:   var_300 = var_300.Value
  loc_1704A1D:   var_C0 = CSng(var_1D8)
  loc_1704A4E:   var_D0 = var_C8
  loc_1704A58:   If (var_DC < CDbl(0)) Then
  loc_1704A63:     var_D0 = (var_D0 + Abs(var_DC))
  loc_1704A69:     var_DC = CDbl(0)
  loc_1704A6C:   End If
  loc_1704AF6:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1704B00:   var_1E8 = (var_14C + CVar(Proc_6_45_EADFB8("O.P.Balance", &HF, var_DC, var_D0)))
  loc_1704B07:   var_224 = (var_1E8 + Space(4))
  loc_1704B11:   var_264 = (var_1E8 & CVar(Proc_6_45_EADFB8("O.P.Balance", &HF, var_DC, var_D0)) & vbNullString + CVar(Proc_6_52_EAE084(CStr(Format(var_DC, "0.00")), &HB, 1, 1)))
  loc_1704B18:   var_284 = (CVar(var_94.Fields.Item("SunAmt")) + Chr(&H12))
  loc_1704B1E:   Print 1, "0.00"
  loc_1704B52:   var_AE = (var_AE + 1)
  loc_1704BAE:   var_234 = CVar((var_F0 + var_DC)) 'Double
  loc_1704BE2:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1704BEC:   var_1E8 = (var_14C + CVar(Proc_6_45_EADFB8("Grand Total", &HF, var_AE, var_D0)))
  loc_1704BF3:   var_224 = (var_1E8 + Space(4))
  loc_1704BFD:   var_274 = (var_1E8 & CVar(Proc_6_45_EADFB8("Grand Total", &HF, var_AE, var_D0)) & vbNullString + CVar(Proc_6_52_EAE084(CStr(Format("0.00", "0.00")), &HB, 1, 1)))
  loc_1704C04:   var_294 = (Chr(&H12) + Chr(&H12))
  loc_1704C0A:   Print 1, Format(Chr(&H12), "0.00")
  loc_1704C40:   var_AE = (var_AE + 1)
  loc_1704CCD:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1704CD7:   var_1E8 = (var_14C + CVar(Proc_6_45_EADFB8("Credit Balance", &HF, var_AE)))
  loc_1704CDE:   var_224 = (var_1E8 + Space(4))
  loc_1704CE8:   var_264 = (var_1E8 & CVar(Proc_6_45_EADFB8("Credit Balance", &HF, var_AE)) & vbNullString + CVar(Proc_6_52_EAE084(CStr(Format(var_D0, "0.00")), &HB, 1, 1)))
  loc_1704CEF:   var_284 = (CVar(Proc_6_52_EAE084(CStr(Format("0.00", "0.00")), &HB, 1, 1)) + Chr(&H12))
  loc_1704CF5:   Print 1, Chr(&H12)
  loc_1704D29:   var_AE = (var_AE + 1)
  loc_1704D52:   var_110 = (CDbl(((var_F0 + var_DC) - var_D0)) > CDbl(0))
  loc_1704D7C:   var_2E4 = (CDbl(((var_F0 + var_DC) - var_D0)) = CDbl(0))
  loc_1704DFE:   var_234 = CVar(Abs(((var_F0 + var_DC) - var_D0))) 'Double
  loc_1704E32:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1704E3C:   var_1E8 = (IIf(var_D0, " Dr", " Cr") + CVar(Proc_6_45_EADFB8("Net Amount", &HF, var_AE)))
  loc_1704E43:   var_224 = (IIf(var_2E4, vbNullString, IIf(var_D0, " Dr", " Cr")) + Space(4))
  loc_1704E4D:   var_274 = (IIf(var_2E4, vbNullString, IIf(var_D0, " Dr", " Cr")) & CVar(Proc_6_45_EADFB8("Net Amount", &HF, var_AE)) & vbNullString + CVar(Proc_6_52_EAE084(CStr(Format("0.00", "0.00")), &HB, 1, 1)))
  loc_1704E57:   var_284 = (Chr(&H12) + CVar(CStr(IIf(var_2E4, vbNullString, IIf(var_D0, " Dr", " Cr")))))
  loc_1704E5E:   var_2A4 = (Chr(&H12) + Chr(&H12))
  loc_1704E64:   Print 1, CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), &HB, 1))
  loc_1704E9C:   var_AE = (var_AE + 1)
  loc_1704E9F:   ' Referenced from: 1704EBC
  loc_1704EA5:   If (var_AE < &H2E) Then
  loc_1704EAD:     Print 1, vbNullString
  loc_1704EB9:     var_AE = (var_AE + 1)
  loc_1704EBC:     GoTo loc_1704E9F
  loc_1704EBF:   End If
  loc_1704EFF:   var_1D8 = Chr(&H12)
  loc_1704F0C:   var_13C = (Chr(&H12) + "User : ")
  loc_1704F19:   var_1F8 = (CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_AE, var_AE)) + var_1D8)
  loc_1704F23:   Print 1, Space(&H28) & Space(4)
  loc_1704F46:   var_AE = (var_AE + 1)
  loc_1704F4E:   Print 1, vbNullString
  loc_1704F5A:   var_AE = (var_AE + 1)
  loc_1704F5D:   ' Referenced from: 1704F7A
  loc_1704F63:   If (var_AE <= &H3B) Then
  loc_1704F6B:     Print 1, vbNullString
  loc_1704F77:     var_AE = (var_AE + 1)
  loc_1704F7A:     GoTo loc_1704F5D
  loc_1704F7D:   End If
  loc_1704F80:   var_88.MoveNext
  loc_1704F85:   GoTo loc_1703845
  loc_1704F88: End If
  loc_1704F8A: Close 1
  loc_1704F93: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1704FB7: Print 1, "TYPE C:\reptmp\" & var_1B4 & ".TXT>" & "PRN"
  loc_1704FC8: Close 1
  loc_1704FD2: If (MemVar_1F953BC = "Y") Then
  loc_1704FEE:   var_A4 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1704FF8: Else
  loc_1705011:   var_A4 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_170501F:   Proc_96_21_E587E0(CDbl(2), var_AE, var_AE, var_AE)
  loc_1705024: End If
  loc_1705029: Set var_88 = Nothing
  loc_1705031: Set var_8C = Nothing
  loc_1705039: Set var_90 = Nothing
  loc_1705041: Set var_94 = Nothing
  loc_1705049: Set var_F4 = Nothing
  loc_170504C: Exit Sub
  loc_170504D: ' Referenced from: 170355C
  loc_170504D: Proc_6_60_E63754(var_C0, var_1D8)
  loc_1705052: Exit Sub
End Sub

Public Sub Proc_272_3_FB7AC8(arg_C) 'FB7AC8
  'Data Table: 41ED10
  Dim var_8C As Recordset15
  loc_FB791B: Set var_8C = arg_C 
  loc_FB7943: var_8C.Fields.Append "mLine", &HC8, 2
  loc_FB796F: var_8C.Fields.Append "Sno", &HC8, 3
  loc_FB799B: var_8C.Fields.Append "Desc", &HC8, &H4B
  loc_FB79C7: var_8C.Fields.Append "ChargeAmt", 5, &H13
  loc_FB79F3: var_8C.Fields.Append "FrPeriod", 7, 0
  loc_FB7A1F: var_8C.Fields.Append "ToPeriod", 7, 0
  loc_FB7A4B: var_8C.Fields.Append "Days", 3, &HB
  loc_FB7A77: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FB7A87: var_8C.CursorType = 3
  loc_FB7A94: var_8C.LockType = 3
  loc_FB7AB3: var_8C.Open var_A0, var_B0, -1
  loc_FB7ABA: Set var_8C = Nothing 
  loc_FB7AC1: Set var_88 = arg_C 
  loc_FB7AC5: Exit Sub
End Sub

Public Sub Proc_272_4_1851B60(arg_C, arg_10) '1851B60
  'Data Table: 41ED10
  Dim var_16C As String
  Dim var_170 As String
  Dim unk_41ED1B As Connection15
  Dim var_14C As Recordset15
  Dim var_180 As Variant
  Dim var_194 As Fields15
  Dim var_190 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_204 As String
  Dim var_20C As String
  Dim var_224 As String
  Dim var_88 As Recordset15
  Dim var_19C As Field20
  Dim var_234 As Variant
  Dim var_1BC As Variant
  Dim var_244 As Variant
  Dim var_1DC As Variant
  Dim var_254 As String
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_2A4 As Variant
  Dim var_168 As Recordset15
  Dim var_B6 As Integer
  Dim var_2C8 As Fields15
  Dim var_2C4 As Variant
  Dim var_2E0 As Variant
  Dim var_328 As Variant
  Dim var_8C As Recordset15
  Dim var_A6 As Integer
  Dim var_32C As Recordset15
  Dim var_2D0 As Field20
  Dim var_2CA As Integer
  Dim var_A8 As Integer
  Dim var_94 As Recordset15
  Dim var_104 As Double
  loc_184F704: On Error Goto loc_1851B59
  loc_184F72B: unk_41ED1B.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F95078 & "'", var_190, -1
  loc_184F736: Set var_14C = var_194
  loc_184F75A: If (var_14C.RecordCount > 0) Then
  loc_184F79F:   var_144 = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_14C.Fields.Item("BillMessage")))), &HFE))
  loc_184F7C0:   var_194 = var_14C.Fields
  loc_184F7D0:   var_190 = CVar(var_194.Item("BillPayDueDate")) 'Address
  loc_184F803:   var_148 = CStr(Format(CVar(Proc_6_38_E69628(var_190)), "dd/MMM/yyyy"))
  loc_184F817: End If
  loc_184F82B: var_16C = "Select S.Name As MemName,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.Add1,S.Add2,S.Add3,City.CityName,S.PIN,S.Phone,S.Mobile,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Left Join City On S.CityCode=City.CityCode Where M.DocId='" & arg_C
  loc_184F857: unk_41ED1B.Execute var_16C & "' And M.Site_Code='" & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078 & "' Or M.LogSite_Code='HO')", var_190, -1
  loc_184F862: Set var_88 = var_194
  loc_184F88E: var_16C = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & arg_C
  loc_184F8B1: var_1EC = var_16C & "' And M1.Type='Facility' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') union "
  loc_184F8B8: var_1F0 = var_1EC & "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_184F8DB: var_204 = var_1F0 & arg_C & "' And M1.Type='Revenue' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078
  loc_184F8E9: var_20C = var_204 & "' Or M1.LogSite_Code='HO') union " & "Select Case When IsNull(D.Name,'')='' Then 'Banquet' Else D.Name End As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_184F913: var_224 = var_20C & arg_C & "' And M1.Type='Outlet' And M1.Site_Code='" & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') Order by sno"
  loc_184F91C: unk_41ED1B.Execute var_224, var_190, -1
  loc_184F927: Set var_8C = var_194
  loc_184F976: var_170 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & arg_C & "' And MS.Site_Code='"
  loc_184F99B: unk_41ED1B.Execute var_170 & MemVar_1F95070 & "' And (MS.LogSite_Code='" & MemVar_1F95078 & "' Or MS.LogSite_Code='HO') Order By Sno", var_190, -1
  loc_184F9A6: Set var_94 = var_194
  loc_184F9D2: If (var_88.RecordCount > 0) Then
  loc_184F9E2:   var_1CC = "Select LTRIM(IsNull(M.ConPrefix,'')+' '+IsNull(M.Name,'')) As AddMemName,M.RelationShip From MemberFamily M Where M.SubCode='"
  loc_184F9F9:   var_194 = var_88.Fields
  loc_184FA11:   var_1AC = "dd/MMM/yyyy" & var_194.Item("MemCode").Value 
  loc_184FA40:   var_2A4 = var_1AC & "' And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') Order By M.Sno" 
  loc_184FA4E:   unk_41ED1B.Execute CStr(var_2A4), var_2C4, -1
  loc_184FA59:   Set var_168 = var_2C8
  loc_184FA8F:   If (var_168.RecordCount > 0) Then
  loc_184FA95:     var_168.MoveFirst
  loc_184FA9A:   End If
  loc_184FA9A: End If
  loc_184FA9E: Set var_C4 = New 
  loc_184FAA9: Set var_C4 = Proc_272_3_FB7AC8(var_C4, var_2C8, var_194, var_194)
  loc_184FAAC: ' Referenced from: 1851B1D
  loc_184FABB: If Not(var_88.EOF) Then
  loc_184FAD1:   var_B0 = "** " & "MEMBER BILL" & " **"
  loc_184FAE6:   var_194 = var_88.Fields
  loc_184FAFD:   Proc_6_39_E7D3A0(var_1AC, CVar(var_194.Item("VNo")), 0, var_194)
  loc_184FB07:   var_108 = CStr(var_1AC)
  loc_184FB3E:   var_10C = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), 1)
  loc_184FB6F:   var_110 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")), 1)
  loc_184FBA0:   var_158 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")))
  loc_184FBD1:   var_15C = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPerson")))
  loc_184FC02:   var_160 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_184FC33:   var_164 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_184FCF2:   var_1DC = (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1"))))) + ", ")
  loc_184FCF9:   var_2C4 = (CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))) & "' And M.Site_Code='" & CVar(MemVar_1F95070) + Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2"))))))
  loc_184FD02:   var_2E0 = (var_2C4 + ", ")
  loc_184FD09:   var_328 = (var_2E0 + Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add3"))))))
  loc_184FD16:   var_11C = Replace(CStr(var_328), ",,", ",", 1, -1, 0)
  loc_184FD51:   var_194 = var_88.Fields
  loc_184FD78:   var_1CC = "-"
  loc_184FD7D:   var_1DC = (Trim(CVar(Proc_6_38_E69628(CVar(var_194.Item("CityName"))))) + ", ")
  loc_184FDA9:   var_284 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin")), CVar(Proc_6_38_E69628(CVar(var_194.Item("CityName")))) & "' And M.Site_Code='" & CVar(MemVar_1F95070))) 'String
  loc_184FDB7:   var_2C4 = (var_194 + Trim(var_284))
  loc_184FDBC:   var_120 = CStr(var_2C4)
  loc_184FE10:   var_124 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin"))))))
  loc_184FEA2:   var_1DC = (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile"))))) + ", ")
  loc_184FEA9:   var_2C4 = (CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")))) & "' And M.Site_Code='" & CVar(MemVar_1F95070) + Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Phone"))))))
  loc_184FEB6:   var_128 = Replace(CStr(var_2C4), ",,", ",", 1, -1, 0)
  loc_184FF2F:   var_138 = CStr(Format(CVar("01/" & Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")))), "dd/MMM/YYYY"))
  loc_184FF99:   var_13C = CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), 1)), "dd/MMM/YYYY"))
  loc_1850011:   var_140 = CStr(Format(DateAdd("m", CDbl(1), CDate(CDate(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), 1)))), "dd/MMM/YYYY"))
  loc_185005C:   var_1CC = "dd/MMM/YYYY"
  loc_1850079:   var_114 = CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Billdate")), 1, 1)), var_1CC))
  loc_18500B5:   var_118 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), 1, 1)
  loc_18500C1:   var_180 = "U_Name"
  loc_18500E6:   var_134 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_180)), 1)
  loc_18500F5:   var_B6 = (var_B6 + 1)
  loc_18500FE:   var_198 = var_8C.RecordCount
  loc_185010C:   If (var_198 > 0) Then
  loc_1850112:     var_8C.MoveFirst
  loc_1850119:     var_A6 = 0
  loc_185011C:     ' Referenced from: 18504C8
  loc_185012B:     If Not(var_8C.EOF) Then
  loc_1850134:       var_A6 = (var_A6 + 1)
  loc_185013A:       Set var_32C = var_C4 
  loc_1850149:       var_32C.AddNew var_180, var_1CC
  loc_1850173:       var_32C.Fields.Item("mLine").Value = vbNullString
  loc_18501A7:       var_32C.Fields.Item("Sno").Value = CVar(CStr(var_A6))
  loc_18501F2:       var_1AC = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Facility")), var_A6, var_A6), &H4B)) 'String
  loc_1850215:       var_32C.Fields.Item("Desc").Value = var_1AC
  loc_1850257:       Proc_6_39_E7D3A0(var_1AC, CVar(var_8C.Fields.Item("BaseAmt")))
  loc_18502B1:       var_32C.Fields.Item("ChargeAmt").Value = CVar(Proc_6_52_EAE084(CStr(Format(var_1AC, "0.00")), &HC, 1))
  loc_1850332:       var_32C.Fields.Item("FrPeriod").Value = Format(CVar(var_8C.Fields.Item("FrPeriod")), "dd/MMM/yyyy")
  loc_18503AC:       var_32C.Fields.Item("ToPeriod").Value = Format(CVar(var_8C.Fields.Item("ToPeriod")), "dd/MMM/yyyy")
  loc_18503EE:       var_2C8 = var_8C.Fields
  loc_18503F6:       var_2D0 = var_2C8.Item("ToPeriod")
  loc_185042D:       var_264 = "0"
  loc_1850436:       var_234 = 1
  loc_185043B:       var_1DC = (DateDiff("d", CVar(var_8C.Fields.Item("FrPeriod")), CVar(var_2D0), 1, 1) + var_234)
  loc_185044E:       var_254 = "Days"
  loc_185046A:       var_32C.Fields.Item(var_254).Value = Format(Format(CVar(var_2D0), "0.00"), var_264)
  loc_1850492:       var_180 = "Mark"
  loc_18504A6:       var_19C = var_32C.Fields.Item(var_180)
  loc_18504AE:       var_19C.Value = "*"
  loc_18504BC:       Set var_32C = Nothing 
  loc_18504C3:       var_8C.MoveNext
  loc_18504C8:       GoTo loc_185011C
  loc_18504CB:     End If
  loc_18504CB:   End If
  loc_18504E1:   Set var_194 = var_C4 
  loc_18504ED:   var_2CA = CreateFieldDefFile(var_194, MemVar_1F950B4 & "\MemRevenueBill.ttx", &HFF, 1, 1, 1)
  loc_18504F7:   Set var_C4 = var_194
  loc_1850518:   var_16C = MemVar_1F950B4 & "\MemRevenueBill.RPT"
  loc_1850521:   Call 0.Method_arg_1C (var_16C, var_180, var_194, var_2CA, var_2CA, 1)
  loc_185052C:   MemVar_1F951E8 = var_194
  loc_1850538:   var_A8 = 0
  loc_185053B:   ' Referenced from: 185075D
  loc_185054A:   If Not(var_168.EOF) Then
  loc_1850553:     var_A8 = (var_A8 + 1)
  loc_1850567:     Call 0.Method_arg_90 (var_194, var_198, var_A6, 1, var_A8, var_A8)
  loc_185056F:     Call 0.Method_arg_24 (1, 1, 1)
  loc_185057B:     For var_330 = 1 To CInt(var_198): var_B6 = var_330 'Integer
  loc_1850594:       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185059C:       Call 0.Method_arg_20 (var_16C)
  loc_18505A4:       Call 0.Method_arg_30 (1)
  loc_18505BA:       var_340 = Ucase(CVar(var_16C)) 'Variant
  loc_18505F1:       If (var_340 = Ucase(CVar("AddMember" & CStr(var_A8)))) Then
  loc_185063D:         Proc_6_17_EAAE40(Format(CVar(Proc_6_38_E69628(CVar(var_168.Fields.Item("AddMemName")))), "0.00"))
  loc_1850659:         Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_1850661:         Call 0.Method_arg_20 (CStr(Format(CVar(Proc_6_38_E69628(CVar(var_168.Fields.Item("AddMemName")))), "0.00")))
  loc_1850669:         Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E69628(CVar(var_168.Fields.Item("AddMemName")))), 3, 0))
  loc_185068C:       Else
  loc_18506B5:         If (var_340 = Ucase(CVar("AddRelation" & CStr(var_A8)))) Then
  loc_18506F0:           var_1AC = CVar(Proc_6_38_E69628(CVar(var_168.Fields.Item("RelationShip")))) 'String
  loc_1850701:           Proc_6_17_EAAE40(Format(var_1AC, "0.00"))
  loc_1850709:           var_16C = CStr(Format(var_1AC, "0.00"))
  loc_185071D:           Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_1850725:           Call 0.Method_arg_20 (var_16C)
  loc_185072D:           Call 0.Method_arg_38 (StrConv(var_1AC, 3, 0))
  loc_185074D:         End If
  loc_185074D:       End If
  loc_1850750:     Next var_330 'Integer
  loc_1850758:     var_168.MoveNext
  loc_185075D:     GoTo loc_185053B
  loc_1850760:   End If
  loc_1850762:   var_A8 = 0
  loc_1850768:   var_94.MoveFirst
  loc_185076D:   ' Referenced from: 1850B48
  loc_185077C:   If Not(var_94.EOF) Then
  loc_18507A9:     var_350 = var_94.Fields.Item("SunCode").Value 'Variant
  loc_18507C7:     If (var_350 = CVar(MemVar_1F95078 & "TOT")) Then
  loc_18507F0:       Proc_6_39_E7D3A0(var_1AC, CVar(var_94.Fields.Item("SunAmt")))
  loc_1850819:       var_12C = CStr(Format(var_1AC, "0.00"))
  loc_185082D:     Else
  loc_1850840:       If (var_350 = CVar(MemVar_1F95078 & "NET")) Then
  loc_1850870:         Proc_6_39_E7D3A0(var_1AC, CVar(var_94.Fields.Item("SunAmt")), CVar(var_104))
  loc_1850878:         var_1BC = (1 + var_1AC)
  loc_18508B2:         Proc_6_39_E7D3A0(var_1AC, CVar(var_94.Fields.Item("SunAmt")), CSng("0.00"))
  loc_18508CC:         If (var_1AC > 0) Then
  loc_18508DE:           var_194 = var_94.Fields
  loc_18508E6:           var_19C = var_194.Item("SunAmt")
  loc_18508F5:           Proc_6_39_E7D3A0(var_1AC, CVar(var_19C))
  loc_1850915:           var_1DC = Format(var_1AC, "0.00")
  loc_185091E:           var_130 = CStr(var_1DC)
  loc_185092F:         End If
  loc_1850932:       Else
  loc_1850938:         var_A8 = (var_A8 + 1)
  loc_185094C:         Call 0.Method_arg_90 (var_194, var_198, var_A6, 1, var_A8)
  loc_1850954:         Call 0.Method_arg_24 (1, 1)
  loc_1850960:         For var_354 = var_A8 To CInt(var_198):     1 = var_354 'Integer
  loc_1850979:           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850981:           Call 0.Method_arg_20 (var_16C)
  loc_1850989:           Call 0.Method_arg_30 (var_A8)
  loc_185099F:           var_364 = Ucase(CVar(var_16C)) 'Variant
  loc_18509D6:           If (var_364 = Ucase(CVar("lblTaxName" & CStr(var_A8)))) Then
  loc_1850A22:             Proc_6_17_EAAE40(var_1DC)
  loc_1850A3E:             Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_1850A46:             Call 0.Method_arg_20 (CStr(var_1DC))
  loc_1850A4E:             Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_1850A71:           Else
  loc_1850A86:             var_1AC = Ucase(CVar("TaxAmt" & CStr(var_A8)))
  loc_1850A9A:             If (var_364 = var_1AC) Then
  loc_1850AAC:               var_194 = var_94.Fields
  loc_1850AB4:               var_19C = var_194.Item("SunAmt")
  loc_1850AC3:               Proc_6_39_E7D3A0(var_1AC)
  loc_1850AD7:               var_1BC = "0.00"
  loc_1850AEE:               Proc_6_17_EAAE40(var_264, Format(var_1AC, var_1BC), 1)
  loc_1850AF6:               var_16C = CStr(var_264)
  loc_1850B0A:               Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_1850B12:               Call 0.Method_arg_20 (var_16C, 1)
  loc_1850B1A:               Call 0.Method_arg_38 (CVar(var_19C))
  loc_1850B38:             End If
  loc_1850B38:           End If
  loc_1850B3B:         Next var_354 'Integer
  loc_1850B40:       End If
  loc_1850B40:     End If
  loc_1850B43:     var_94.MoveNext
  loc_1850B48:     GoTo loc_185076D
  loc_1850B4B:   End If
  loc_1850B5C:   Call 0.Method_arg_90 (var_194, var_198)
  loc_1850B64:   Call 0.Method_arg_24 (var_A6)
  loc_1850B70:   For var_368 =  To CInt(var_198): 1 = var_368 'Integer
  loc_1850B89:     Call 0.Method_arg_90 (var_194, CLng(var_A6))
  loc_1850B91:     Call 0.Method_arg_20 (var_19C)
  loc_1850B99:     Call 0.Method_arg_30 (var_16C)
  loc_1850BAF:     var_378 = Ucase(CVar(var_16C)) 'Variant
  loc_1850BC5:     var_190 = "comp_name"
  loc_1850BDF:     If (var_378 = Ucase(var_190)) Then
  loc_1850BED:       Proc_6_17_EAAE40(var_190)
  loc_1850C09:       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850C11:       Call 0.Method_arg_20 (CStr(var_190))
  loc_1850C19:       Call 0.Method_arg_38 (MemVar_1F95130)
  loc_1850C2E:     Else
  loc_1850C36:       var_190 = "comp_add1"
  loc_1850C50:       If (var_378 = Ucase(var_190)) Then
  loc_1850C5E:         Proc_6_17_EAAE40(var_190)
  loc_1850C7A:         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850C82:         Call 0.Method_arg_20 (CStr(var_190))
  loc_1850C8A:         Call 0.Method_arg_38 (MemVar_1F95134)
  loc_1850C9F:       Else
  loc_1850CA7:         var_190 = "comp_pin"
  loc_1850CC1:         If (var_378 = Ucase(var_190)) Then
  loc_1850CCF:           Proc_6_17_EAAE40(var_190)
  loc_1850CEB:           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850CF3:           Call 0.Method_arg_20 (CStr(var_190))
  loc_1850CFB:           Call 0.Method_arg_38 (MemVar_1F9513C)
  loc_1850D10:         Else
  loc_1850D32:           If (var_378 = Ucase("comp_GSTIN")) Then
  loc_1850D56:             Call 0.Method_arg_90 (var_194, CLng(var_A6))
  loc_1850D5E:             Call 0.Method_arg_20 (var_19C)
  loc_1850D66:             Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1850D7C:           Else
  loc_1850D8D:             var_1AC = Ucase("Title")
  loc_1850D9E:             If (var_378 = var_1AC) Then
  loc_1850DAF:               Proc_6_17_EAAE40(var_1AC)
  loc_1850DCB:               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850DD3:               Call 0.Method_arg_20 (CStr(var_1AC))
  loc_1850DDB:               Call 0.Method_arg_38 ("Member Bill")
  loc_1850DF4:             Else
  loc_1850DFC:               var_190 = "BillNo"
  loc_1850E16:               If (var_378 = Ucase(var_190)) Then
  loc_1850E24:                 Proc_6_17_EAAE40(var_190)
  loc_1850E40:                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850E48:                 Call 0.Method_arg_20 (CStr(var_190))
  loc_1850E50:                 Call 0.Method_arg_38 (var_108)
  loc_1850E65:               Else
  loc_1850E6D:                 var_190 = "CardNo"
  loc_1850E87:                 If (var_378 = Ucase(var_190)) Then
  loc_1850E95:                   Proc_6_17_EAAE40(var_190)
  loc_1850EB1:                   Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850EB9:                   Call 0.Method_arg_20 (CStr(var_190))
  loc_1850EC1:                   Call 0.Method_arg_38 (var_10C)
  loc_1850ED6:                 Else
  loc_1850EDE:                   var_190 = "MemName"
  loc_1850EF8:                   If (var_378 = Ucase(var_190)) Then
  loc_1850F06:                     Proc_6_17_EAAE40(var_190)
  loc_1850F22:                     Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850F2A:                     Call 0.Method_arg_20 (CStr(var_190))
  loc_1850F32:                     Call 0.Method_arg_38 (var_110)
  loc_1850F47:                   Else
  loc_1850F4F:                     var_190 = "ConPrefix"
  loc_1850F69:                     If (var_378 = Ucase(var_190)) Then
  loc_1850F77:                       Proc_6_17_EAAE40(var_190)
  loc_1850F93:                       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1850F9B:                       Call 0.Method_arg_20 (CStr(var_190))
  loc_1850FA3:                       Call 0.Method_arg_38 (var_158)
  loc_1850FB8:                     Else
  loc_1850FC0:                       var_190 = "ConPerson"
  loc_1850FDA:                       If (var_378 = Ucase(var_190)) Then
  loc_1850FE8:                         Proc_6_17_EAAE40(var_190)
  loc_1851004:                         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185100C:                         Call 0.Method_arg_20 (CStr(var_190))
  loc_1851014:                         Call 0.Method_arg_38 (var_15C)
  loc_1851029:                       Else
  loc_1851031:                         var_190 = "ConPersonMName"
  loc_185104B:                         If (var_378 = Ucase(var_190)) Then
  loc_1851059:                           Proc_6_17_EAAE40(var_190)
  loc_1851075:                           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185107D:                           Call 0.Method_arg_20 (CStr(var_190))
  loc_1851085:                           Call 0.Method_arg_38 (var_160)
  loc_185109A:                         Else
  loc_18510A2:                           var_190 = "ConPersonLName"
  loc_18510BC:                           If (var_378 = Ucase(var_190)) Then
  loc_18510CA:                             Proc_6_17_EAAE40(var_190)
  loc_18510E6:                             Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18510EE:                             Call 0.Method_arg_20 (CStr(var_190))
  loc_18510F6:                             Call 0.Method_arg_38 (var_164)
  loc_185110B:                           Else
  loc_1851113:                             var_190 = "MemAddress"
  loc_185112D:                             If (var_378 = Ucase(var_190)) Then
  loc_185113B:                               Proc_6_17_EAAE40(var_190)
  loc_1851157:                               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185115F:                               Call 0.Method_arg_20 (CStr(var_190))
  loc_1851167:                               Call 0.Method_arg_38 (var_11C)
  loc_185117C:                             Else
  loc_1851184:                               var_190 = "MemCityName"
  loc_185119E:                               If (var_378 = Ucase(var_190)) Then
  loc_18511AC:                                 Proc_6_17_EAAE40(var_190)
  loc_18511C8:                                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18511D0:                                 Call 0.Method_arg_20 (CStr(var_190))
  loc_18511D8:                                 Call 0.Method_arg_38 (var_120)
  loc_18511ED:                               Else
  loc_18511F5:                                 var_190 = "MemPinCode"
  loc_185120F:                                 If (var_378 = Ucase(var_190)) Then
  loc_185121D:                                   Proc_6_17_EAAE40(var_190)
  loc_1851239:                                   Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851241:                                   Call 0.Method_arg_20 (CStr(var_190))
  loc_1851249:                                   Call 0.Method_arg_38 (var_124)
  loc_185125E:                                 Else
  loc_1851266:                                   var_190 = "MemContactNo"
  loc_1851280:                                   If (var_378 = Ucase(var_190)) Then
  loc_185128E:                                     Proc_6_17_EAAE40(var_190)
  loc_18512AA:                                     Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18512B2:                                     Call 0.Method_arg_20 (CStr(var_190))
  loc_18512BA:                                     Call 0.Method_arg_38 (var_128)
  loc_18512CF:                                   Else
  loc_18512D7:                                     var_190 = "DateFrom"
  loc_18512F1:                                     If (var_378 = Ucase(var_190)) Then
  loc_18512FF:                                       Proc_6_17_EAAE40(var_190)
  loc_185131B:                                       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851323:                                       Call 0.Method_arg_20 (CStr(var_190))
  loc_185132B:                                       Call 0.Method_arg_38 (var_138)
  loc_1851340:                                     Else
  loc_1851348:                                       var_190 = "DateTo"
  loc_1851362:                                       If (var_378 = Ucase(var_190)) Then
  loc_1851370:                                         Proc_6_17_EAAE40(var_190)
  loc_185138C:                                         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851394:                                         Call 0.Method_arg_20 (CStr(var_190))
  loc_185139C:                                         Call 0.Method_arg_38 (var_13C)
  loc_18513B1:                                       Else
  loc_18513B9:                                         var_190 = "BillDate"
  loc_18513D3:                                         If (var_378 = Ucase(var_190)) Then
  loc_18513E1:                                           Proc_6_17_EAAE40(var_190)
  loc_18513FD:                                           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851405:                                           Call 0.Method_arg_20 (CStr(var_190))
  loc_185140D:                                           Call 0.Method_arg_38 (var_114)
  loc_1851422:                                         Else
  loc_185142A:                                           var_190 = "DueDate"
  loc_1851444:                                           If (var_378 = Ucase(var_190)) Then
  loc_1851452:                                             Proc_6_17_EAAE40(var_190)
  loc_185146E:                                             Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851476:                                             Call 0.Method_arg_20 (CStr(var_190))
  loc_185147E:                                             Call 0.Method_arg_38 (var_140)
  loc_1851493:                                           Else
  loc_185149B:                                             var_190 = "BillPayDueDate"
  loc_18514B5:                                             If (var_378 = Ucase(var_190)) Then
  loc_18514C3:                                               Proc_6_17_EAAE40(var_190)
  loc_18514DF:                                               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18514E7:                                               Call 0.Method_arg_20 (CStr(var_190))
  loc_18514EF:                                               Call 0.Method_arg_38 (var_148)
  loc_1851504:                                             Else
  loc_185150C:                                               var_190 = "BillMessage"
  loc_1851526:                                               If (var_378 = Ucase(var_190)) Then
  loc_1851534:                                                 Proc_6_17_EAAE40(var_190)
  loc_1851550:                                                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851558:                                                 Call 0.Method_arg_20 (CStr(var_190))
  loc_1851560:                                                 Call 0.Method_arg_38 (var_144)
  loc_1851575:                                               Else
  loc_185157D:                                                 var_190 = "ForMonth"
  loc_1851597:                                                 If (var_378 = Ucase(var_190)) Then
  loc_18515A5:                                                   Proc_6_17_EAAE40(var_190)
  loc_18515C1:                                                   Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18515C9:                                                   Call 0.Method_arg_20 (CStr(var_190))
  loc_18515D1:                                                   Call 0.Method_arg_38 (var_118)
  loc_18515E6:                                                 Else
  loc_18515EE:                                                   var_190 = "User"
  loc_1851608:                                                   If (var_378 = Ucase(var_190)) Then
  loc_1851616:                                                     Proc_6_17_EAAE40(var_190)
  loc_1851632:                                                     Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185163A:                                                     Call 0.Method_arg_20 (CStr(var_190))
  loc_1851642:                                                     Call 0.Method_arg_38 (var_134)
  loc_1851657:                                                   Else
  loc_1851679:                                                     If (var_378 = Ucase("PreBalance")) Then
  loc_18516A7:                                                       Proc_6_17_EAAE40(var_1BC, Format(var_F0, "0.00"))
  loc_18516C3:                                                       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18516CB:                                                       Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_18516D3:                                                       Call 0.Method_arg_38 (1)
  loc_18516EE:                                                     Else
  loc_1851710:                                                       If (var_378 = Ucase("OtherCredit")) Then
  loc_185173E:                                                         Proc_6_17_EAAE40(var_1BC, Format(var_154, "0.00"))
  loc_185175A:                                                         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851762:                                                         Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_185176A:                                                         Call 0.Method_arg_38 (1)
  loc_1851785:                                                       Else
  loc_18517A7:                                                         If (var_378 = Ucase("DrAmt")) Then
  loc_18517D5:                                                           Proc_6_17_EAAE40(var_1BC, Format(var_DC, "0.00"))
  loc_18517F1:                                                           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18517F9:                                                           Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_1851801:                                                           Call 0.Method_arg_38 (1)
  loc_185181C:                                                         Else
  loc_185183E:                                                           If (var_378 = Ucase("CrAmt")) Then
  loc_185184B:                                                             var_1CC = "0.00"
  loc_185186C:                                                             Proc_6_17_EAAE40(var_1BC, Format(var_E4, var_1CC))
  loc_1851888:                                                             Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851890:                                                             Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_1851898:                                                             Call 0.Method_arg_38 (1)
  loc_18518B3:                                                           Else
  loc_18518BB:                                                             var_190 = "Total"
  loc_18518D5:                                                             If (var_378 = Ucase(var_190)) Then
  loc_18518E3:                                                               Proc_6_17_EAAE40(var_190)
  loc_18518FF:                                                               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851907:                                                               Call 0.Method_arg_20 (CStr(var_190))
  loc_185190F:                                                               Call 0.Method_arg_38 (var_12C)
  loc_1851924:                                                             Else
  loc_185192C:                                                               var_190 = "NetTotal"
  loc_1851935:                                                               var_1AC = Ucase(var_190)
  loc_1851946:                                                               If (var_378 = var_1AC) Then
  loc_1851954:                                                                 Proc_6_17_EAAE40(var_190)
  loc_1851970:                                                                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851978:                                                                 Call 0.Method_arg_20 (CStr(var_190))
  loc_1851980:                                                                 Call 0.Method_arg_38 (var_130)
  loc_1851992:                                                               End If
  loc_1851992:                                                             End If
  loc_1851992:                                                           End If
  loc_1851992:                                                         End If
  loc_1851992:                                                       End If
  loc_1851992:                                                     End If
  loc_1851992:                                                   End If
  loc_1851992:                                                 End If
  loc_1851992:                                               End If
  loc_1851992:                                             End If
  loc_1851992:                                           End If
  loc_1851992:                                         End If
  loc_1851992:                                       End If
  loc_1851992:                                     End If
  loc_1851992:                                   End If
  loc_1851992:                                 End If
  loc_1851992:                               End If
  loc_1851992:                             End If
  loc_1851992:                           End If
  loc_1851992:                         End If
  loc_1851992:                       End If
  loc_1851992:                     End If
  loc_1851992:                   End If
  loc_1851992:                 End If
  loc_1851992:               End If
  loc_1851992:             End If
  loc_1851992:           End If
  loc_1851992:         End If
  loc_1851992:       End If
  loc_1851992:     End If
  loc_1851995:   Next var_368 'Integer
  loc_18519B3:   Call 0.Method_arg_64 (var_194, CVar(var_C4))
  loc_18519BB:   Call 0.Method_arg_2C (var_1CC)
  loc_18519C9:   Call 0.Method_arg_150 (var_234)
  loc_18519F4:   Proc_6_39_E7D3A0(var_1AC)
  loc_1851A09:   var_234 = arg_10
  loc_1851A1B:   var_244 = (Proc_6_38_E69628(var_234, (var_1AC <= 0)) = "N")
  loc_1851A34:   If CBool(CVar(var_14C.Fields.Item("NoOfCopy")) And var_244) Then
  loc_1851A3C:     Set var_19C = Nothing
  loc_1851A58:     Set var_194 = MemVar_1F951E8 
  loc_1851A64:     Proc_6_99_1484404(var_194, 0, vbNullString)
  loc_1851A6F:     MemVar_1F951E8 = var_194
  loc_1851A80:   Else
  loc_1851A98:     If (Proc_6_38_E69628(arg_10, &HFF) = "R") Then
  loc_1851AB8:       Call 0.Method_Me8 (False, 1, var_234)
  loc_1851AC0:     Else
  loc_1851AE6:       Proc_6_39_E7D3A0(var_1AC, CVar(var_14C.Fields.Item("NoOfCopy")), var_244)
  loc_1851B06:       Call 0.Method_Me8 (False, var_1AC, var_234, var_244)
  loc_1851B15:     End If
  loc_1851B15:   End If
  loc_1851B18:   var_88.MoveNext
  loc_1851B1D:   GoTo loc_184FAAC
  loc_1851B20: End If
  loc_1851B25: Set var_88 = Nothing
  loc_1851B2D: Set var_8C = Nothing
  loc_1851B35: Set var_90 = Nothing
  loc_1851B3D: Set var_94 = Nothing
  loc_1851B45: Set var_C4 = Nothing
  loc_1851B4D: Set var_14C = Nothing
  loc_1851B55: Set var_168 = Nothing
  loc_1851B58: Exit Sub
  loc_1851B59: ' Referenced from: 184F704
  loc_1851B59: Proc_6_60_E63754(var_254, var_254)
  loc_1851B5E: Exit Sub
End Sub
