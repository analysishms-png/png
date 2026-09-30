Private var_154 As New CGZipFiles

Public Sub Proc_165_0_14CCDD8(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '14CCDD8
  'Data Table: 4E88A8
  Dim var_90 As Integer
  Dim var_A4 As String
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim unk_4E88AE As Connection15
  Dim var_A0 As Recordset15
  Dim var_D4 As Variant
  Dim var_158 As Variant
  Dim var_15C As Recordset15
  Dim var_1A4 As Fields15
  Dim var_1B8 As Field20
  Dim var_1EC As String
  Dim var_92 As Integer
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim var_94 As Integer
  Dim var_200 As String
  Dim var_204 As String
  Dim var_96 As Integer
  Dim var_9C As Long
  Dim var_1E8 As Variant
  Dim var_348 As Variant
  Dim var_2A8 As Variant
  Dim var_3E0 As Variant
  loc_14CC10C: On Error Resume Next
  loc_14CC115: var_90 = CInt(arg_10)
  loc_14CC123: If (arg_28 = 0) Then
  loc_14CC15C:   Proc_6_17_EAAE40(var_D4, Trim(arg_C), CVar("Select * from UserModule where  OutletCode='" & arg_2C & "' and [OPtion]="), var_158)
  loc_14CC164:   var_F4 = -1 & var_D4 
  loc_14CC185:   unk_4E88AE.Execute CStr(var_F4 & " and OPT1=" & CVar(var_90)), var_15C, var_90
  loc_14CC190:   Set var_A0 = var_15C
  loc_14CC1B1: Else
  loc_14CC1D2:   var_C4 = Trim(arg_C)
  loc_14CC1DD:   Proc_6_17_EAAE40(var_D4, var_C4, "Select * from UserModule where[OPtion]=")
  loc_14CC201:   var_134 = var_158 & var_D4 & " and OPT1=" & CVar(var_90) & " and Flag<>'N'" 
  loc_14CC20F:   unk_4E88AE.Execute CStr(var_134), -1, var_15C
  loc_14CC21A:   Set var_A0 = var_15C
  loc_14CC234: End If
  loc_14CC24C: If (var_A0.RecordCount > 0) Then
  loc_14CC258:   Result 0 End Sub 'Integer
  loc_14CC259: End If
  loc_14CC289: Proc_6_17_EAAE40(var_C4, arg_2C, "Select Count(opt1) from UserModule Where OutletCode=", var_1A0, -1)
  loc_14CC291: var_D4 = var_15C & var_C4 
  loc_14CC2BC: Proc_6_17_EAAE40(var_134, arg_C, var_D4 & " And OPT1=" & CVar(var_90) & " And [Option]=", var_1A4)
  loc_14CC2D2: unk_4E88AE.Execute CStr(0 & var_134), var_1B8, var_1C8
  loc_14CC2DA:  = var_15C.Fields
  loc_14CC2E2:  = var_1A4.Item()
  loc_14CC2EA:  = var_1B8.Value
  loc_14CC31B: If (var_1C8 > 0) Then
  loc_14CC327:   Result 0 End Sub 'Integer
  loc_14CC328: End If
  loc_14CC348: If CBool(Trim(arg_18) <> vbNullString) Then
  loc_14CC36B:   If CBool(Trim(arg_1C) <> vbNullString) Then
  loc_14CC3B5:     Proc_6_17_EAAE40(var_D4, Trim(arg_18), CVar("Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & " And [Option]="), var_134, -1)
  loc_14CC3D4:     unk_4E88AE.Execute CStr(var_15C & var_D4 & vbNullString), var_1A4, 0
  loc_14CC3DC:     var_1B8 = var_15C.Fields
  loc_14CC3E4:      = var_1A4.Item()
  loc_14CC3F3:     Proc_6_39_E7D3A0(var_1A0)
  loc_14CC463:     var_E4 = CVar("Select Max(opt3) from UserModule where OPT2=" & CStr(CInt(var_1A0)) & " And OPT1=" & CStr(var_90) & " And [Option]=") 'String
  loc_14CC471:     var_C4 = Trim(arg_1C)
  loc_14CC47C:     Proc_6_17_EAAE40(var_D4, var_C4, var_E4, var_134, -1, var_15C)
  loc_14CC49B:     unk_4E88AE.Execute CStr(var_1A4 & var_D4 & vbNullString), 0, var_1B8
  loc_14CC4AB:      = var_1A4.Item(CVar(var_1B8))
  loc_14CC4B3:     var_158 = CVar(var_1B8) 'Address
  loc_14CC4BA:     Proc_6_39_E7D3A0(var_1A0)
  loc_14CC4C3:     var_94 = CInt(var_1A0)
  loc_14CC4F4:     var_104 = 0
  loc_14CC53C:     var_200 = "Select Max(opt4) from UserModule where OPT3=" & CStr(var_94) & " And OPT2=" & CStr(var_15C.Fields) & " And OPT1=" & CStr(var_90)
  loc_14CC54C:     unk_4E88AE.Execute var_200 & vbNullString, var_C4, -1
  loc_14CC554:     var_15C = var_15C.Fields
  loc_14CC55C:     var_104 = var_1A4.Item(var_1A4)
  loc_14CC56B:     Proc_6_39_E7D3A0(var_E4, CVar(var_1B8), var_1B8)
  loc_14CC578:     var_F4 = (var_E4 + 1)
  loc_14CC57D:     var_96 = CInt(var_1A4 & CVar(var_1B8))
  loc_14CC5AA:   Else
  loc_14CC5B7:     If (arg_14 = 3) Then
  loc_14CC5BF:       var_104 = 0
  loc_14CC5EA:       unk_4E88AE.Execute "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90), var_C4, -1
  loc_14CC5F2:       var_15C = var_15C.Fields
  loc_14CC5FA:       var_104 = var_1A4.Item(var_1A4)
  loc_14CC602:       var_D4 = CVar(var_1B8) 'Address
  loc_14CC609:       Proc_6_39_E7D3A0(var_E4, var_D4, var_1B8)
  loc_14CC616:       var_F4 = (var_E4 + 1)
  loc_14CC61B:       var_92 = CInt(var_1A4 & var_D4)
  loc_14CC63A:     Else
  loc_14CC66A:       var_E4 = CVar("Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & " And [Option]=") 'String
  loc_14CC678:       var_C4 = Trim(arg_18)
  loc_14CC683:       Proc_6_17_EAAE40(var_D4, var_C4, var_E4, var_134, -1, var_15C, var_1A4)
  loc_14CC6A2:       unk_4E88AE.Execute CStr(0 & var_D4 & vbNullString), var_1B8, var_92
  loc_14CC6AA:       var_96 = var_15C.Fields
  loc_14CC6B2:       var_158 = var_1A4.Item(var_94)
  loc_14CC6BA:       var_158 = CVar(var_1B8) 'Address
  loc_14CC6C1:       Proc_6_39_E7D3A0(var_1A0)
  loc_14CC6F5:       var_104 = 0
  loc_14CC733:       unk_4E88AE.Execute "Select Max(opt3) from UserModule where OPT2=" & CStr(CInt(var_1A0)) & " And OPT1=" & CStr(var_90), var_C4, -1
  loc_14CC73B:       var_15C = var_15C.Fields
  loc_14CC743:       var_104 = var_1A4.Item(var_1A4)
  loc_14CC752:       Proc_6_39_E7D3A0(var_E4, CVar(var_1B8), var_1B8)
  loc_14CC75F:       var_F4 = (var_E4 + 1)
  loc_14CC764:       var_94 = CInt(0 & CVar(var_1B8))
  loc_14CC786:     End If
  loc_14CC788:   End If
  loc_14CC78D: Else
  loc_14CC79A:   If (arg_14 = 4) Then
  loc_14CC7A1:     var_92 = 0
  loc_14CC7A7:   Else
  loc_14CC7AE:     var_104 = 0
  loc_14CC7E0:     unk_4E88AE.Execute "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & vbNullString, var_C4, -1
  loc_14CC7E8:     var_15C = var_15C.Fields
  loc_14CC7F0:     var_104 = var_1A4.Item(var_1A4)
  loc_14CC7FF:     Proc_6_39_E7D3A0(var_E4, CVar(var_1B8), var_1B8, var_92)
  loc_14CC80C:     var_F4 = (var_E4 + 1)
  loc_14CC811:     var_92 = CInt(0 & CVar(var_1B8))
  loc_14CC82F:   End If
  loc_14CC831: End If
  loc_14CC83B: If (var_92 = 1) Then
  loc_14CC842:   var_92 = &HB
  loc_14CC845: End If
  loc_14CC84D: If (var_94 = 1) Then
  loc_14CC854:   var_94 = &HB
  loc_14CC857: End If
  loc_14CC85F: If (var_96 = 1) Then
  loc_14CC866:   var_96 = &HB
  loc_14CC869: End If
  loc_14CC86E: var_104 = 0
  loc_14CC897: var_1EC = "Select Cast(" & CStr(var_90) & "*1000000+"
  loc_14CC8AA: var_1F8 = "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & vbNullString & CStr(var_92) & "*10000+"
  loc_14CC8B6: var_200 = "Select Max(opt4) from UserModule where OPT3=" & CStr(var_94) & " And OPT2=" & CStr(var_15C.Fields) & " And OPT1=" & CStr(var_94)
  loc_14CC8BD: var_204 = var_200 & "*100+"
  loc_14CC8D9: unk_4E88AE.Execute var_200 & vbNullString & CStr(var_96) & " As Int)", var_C4, -1
  loc_14CC8E1: var_15C = var_15C.Fields
  loc_14CC8E9: var_104 = var_1A4.Item(var_1A4)
  loc_14CC8F8: Proc_6_39_E7D3A0(var_E4, CVar(var_1B8), var_1B8, var_96, var_94)
  loc_14CC902: var_9C = CLng(var_E4)
  loc_14CC93D: Proc_6_17_EAAE40(var_C4, arg_C, var_9C, var_92)
  loc_14CCA57: var_1F4 = "Insert Into UserModule (OPT1,OPT2,OPT3,OPT4,Code,[OPTION],PARAM_STR,flag,OutletCode) Values(" & CStr(var_90) & "," & CStr(var_92)
  loc_14CCAAD: var_1E8 = CVar(var_1F4 & "," & CStr(var_94) & "," & CStr(var_96) & "," & CStr(var_9C) & ",") & var_C4 & ",'" & IIf((arg_14 = 0), "AEDP", IIf((arg_14 = 1), "***P", vbNullString)) 
  loc_14CCABD: var_348 = var_1E8 & "','" & IIf((arg_14 = 0), "E", IIf((arg_14 = 1), "R", IIf((arg_14 = 3), "N", IIf(((arg_14 = 4) And (var_90 <= &H2D)), "N", "V")))) 
  loc_14CCAE7: unk_4E88AE.Execute CStr(var_348 & "','" & CVar(arg_2C) & "')"), var_3CC, -1
  loc_14CCB5E: Proc_6_17_EAAE40(var_C4, arg_C, var_15C, var_92)
  loc_14CCC70: var_A4 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,[OPTION],Menu_Index,PARAM_STR,Module_Name,flag,ShowInlist,OutletCode) Values('" & MemVar_1F95128
  loc_14CCCD6: var_D4 = CVar(var_A4 & "','SA'," & CStr(var_90) & "," & CStr(var_92) & "," & CStr(var_94) & "," & CStr(var_96) & "," & CStr(var_9C) & ",") 'String
  loc_14CCD0F: var_2A8 = var_D4 & var_C4 & "," & CVar(arg_20) & ",'" & IIf((arg_14 = 0), "AEDP", IIf((arg_14 = 1), "***P", vbNullString)) & "','" & Trim(arg_24) 
  loc_14CCD1F: var_3E0 = var_2A8 & "','" & IIf((arg_14 = 0), "E", IIf((arg_14 = 1), "R", IIf((arg_14 = 3), "N", IIf(((arg_14 = 4) And (var_90 <= &H2D)), "N", "V")))) 
  loc_14CCD49: unk_4E88AE.Execute CStr(var_3E0 & "','N','" & CVar(arg_2C) & "')"), var_464, -1
  loc_14CCDCF: Set var_A0 = Nothing
  loc_14CCDD4: Result &HFF End Sub 'Integer
  loc_14CCDD7: Result var_15C End Sub 'Integer
End Sub

Public Sub Proc_165_1_1EFA190
  'Data Table: 4E88A8
  Dim var_BC As Integer
  Dim MemVar_1F95228 As Integer
  Dim var_100 As String
  Dim var_124 As String
  Dim unk_4E88AE As Connection15
  Dim var_12C As Fields15
  loc_1EED44E: If (Len(MemVar_1F9522C) = 1) Then
  loc_1EED451:   Exit Sub
  loc_1EED452: End If
  loc_1EED47A: var_EC = Ucase(Mid(MemVar_1F9522C, 1, 1)) 'Variant
  loc_1EED490: If (var_EC = "A") Then
  loc_1EED495:   MemVar_1F95228 = 1
  loc_1EED49B: Else
  loc_1EED4A6:   If (var_EC = "B") Then
  loc_1EED4AB:     MemVar_1F95228 = 4
  loc_1EED4B1:   Else
  loc_1EED4BC:     If (var_EC = "C") Then
  loc_1EED4C1:       MemVar_1F95228 = 6
  loc_1EED4C7:     Else
  loc_1EED4D2:       If (var_EC = "D") Then
  loc_1EED4D7:         MemVar_1F95228 = 2
  loc_1EED4DD:       Else
  loc_1EED4E8:         If (var_EC = "E") Then
  loc_1EED4ED:           MemVar_1F95228 = 9
  loc_1EED4F3:         Else
  loc_1EED4FE:           If (var_EC = "F") Then
  loc_1EED503:             MemVar_1F95228 = 5
  loc_1EED509:           Else
  loc_1EED514:             If (var_EC = "G") Then
  loc_1EED519:               MemVar_1F95228 = 8
  loc_1EED51F:             Else
  loc_1EED52A:               If (var_EC = "H") Then
  loc_1EED52F:                 MemVar_1F95228 = 3
  loc_1EED535:               Else
  loc_1EED540:                 If (var_EC = "I") Then
  loc_1EED545:                   MemVar_1F95228 = &HA
  loc_1EED54B:                 Else
  loc_1EED556:                   If (var_EC = "J") Then
  loc_1EED55B:                     MemVar_1F95228 = 7
  loc_1EED561:                   Else
  loc_1EED563:                     MemVar_1F95228 = 0
  loc_1EED566:                   End If
  loc_1EED566:                 End If
  loc_1EED566:               End If
  loc_1EED566:             End If
  loc_1EED566:           End If
  loc_1EED566:         End If
  loc_1EED566:       End If
  loc_1EED566:     End If
  loc_1EED566:   End If
  loc_1EED566: End If
  loc_1EED570: For var_F0 = 2 To CInt(Len(MemVar_1F9522C)): var_8A = var_F0 'Integer
  loc_1EED57B:   var_100 = "XW+GB*Q!JI#L$"
  loc_1EED580:   var_BC = 1
  loc_1EED5B6:   If CBool(InStr(1, var_100, Mid(MemVar_1F9522C, CLng(var_8A), var_BC), 0) <> 0) Then
  loc_1EED5B9:     GoTo loc_1EED5C5
  loc_1EED5BC:   End If
  loc_1EED5BF: Next var_F0 'Integer
  loc_1EED5C4: Exit Sub
  loc_1EED5C5: ' Referenced from: 1EED5B9
  loc_1EED5E9: unk_4E88AE.Execute "Delete From MenuHelp Where CompCode='" & MemVar_1F95128 & "' And UserName='SA'", var_BC, -1
  loc_1EED611: unk_4E88AE.Execute "Delete From UserModule", var_BC, -1
  loc_1EED634: If (InStr(2, MemVar_1F9522C, "$", 0) <> 0) Then
  loc_1EED63C:   var_148 = 0
  loc_1EED64D:   var_140 = "FA"
  loc_1EED683:   Proc_165_0_14CCDD8("Financial Setup", &HB, 4, vbNullString, vbNullString, 0)
  loc_1EED69A:   var_148 = 0
  loc_1EED6E1:   Proc_165_0_14CCDD8("Transaction", &HB, 3, vbNullString, vbNullString, &HFF, "FAT")
  loc_1EED6F8:   var_148 = 0
  loc_1EED73F:   Proc_165_0_14CCDD8("Voucher Entry", &HB, 0, "Transaction", vbNullString, 0, "fate", 1)
  loc_1EED756:   var_148 = 0
  loc_1EED79D:   Proc_165_0_14CCDD8("Adjustment Entry", &HB, 0, "Transaction", vbNullString, 1, "fate", 1)
  loc_1EED7B4:   var_148 = 0
  loc_1EED7FB:   Proc_165_0_14CCDD8("Delete Adjustment Entry", &HB, 0, "Transaction", vbNullString, 2, "fate", 1)
  loc_1EED812:   var_148 = 0
  loc_1EED859:   Proc_165_0_14CCDD8("Bank Reconciliation", &HB, 0, "Transaction", vbNullString, 3, "fate", 1)
  loc_1EED870:   var_148 = 0
  loc_1EED8B7:   Proc_165_0_14CCDD8("T.D.S. Challan Entry", &HB, 0, "Transaction", vbNullString, 4, "fate", 1)
  loc_1EED8CE:   var_148 = 0
  loc_1EED915:   Proc_165_0_14CCDD8("T.D.S. Certificate Entry", &HB, 0, "Transaction", vbNullString, 5, "fate", 1)
  loc_1EED92C:   var_148 = 0
  loc_1EED973:   Proc_165_0_14CCDD8("Expense Voucher", &HB, 0, "Transaction", vbNullString, 6, "fate", 1)
  loc_1EED98A:   var_148 = 0
  loc_1EED9D1:   Proc_165_0_14CCDD8("Reports", &HB, 3, vbNullString, vbNullString, &HFF, "farp", 1)
  loc_1EED9E8:   var_148 = 0
  loc_1EEDA2F:   Proc_165_0_14CCDD8("Day Book", &HB, 1, "Reports", vbNullString, 0, "FAREPORT", 1)
  loc_1EEDA46:   var_148 = 0
  loc_1EEDA8D:   Proc_165_0_14CCDD8("Trial Balance", &HB, 1, "Reports", vbNullString, 1, "FAREPORT", 1)
  loc_1EEDAA4:   var_148 = 0
  loc_1EEDAEB:   Proc_165_0_14CCDD8("Ledger", &HB, 1, "Reports", vbNullString, 3, "FAREPORT", 1)
  loc_1EEDB02:   var_148 = 0
  loc_1EEDB49:   Proc_165_0_14CCDD8("Interest Ledger", &HB, 1, "Reports", vbNullString, 4, "FAREPORT", 1)
  loc_1EEDB60:   var_148 = 0
  loc_1EEDBA7:   Proc_165_0_14CCDD8("Cash Book", &HB, 1, "Reports", vbNullString, 5, "FAREPORT", 1)
  loc_1EEDBBE:   var_148 = 0
  loc_1EEDC05:   Proc_165_0_14CCDD8("Bank Book", &HB, 1, "Reports", vbNullString, 6, "FAREPORT", 1)
  loc_1EEDC1C:   var_148 = 0
  loc_1EEDC63:   Proc_165_0_14CCDD8("Journal Books", &HB, 1, "Reports", vbNullString, 7, "FAREPORT", 1)
  loc_1EEDC7A:   var_148 = 0
  loc_1EEDCC1:   Proc_165_0_14CCDD8("Annexure", &HB, 1, "Reports", vbNullString, &HA, "FAREPORT", 1)
  loc_1EEDCD8:   var_148 = 0
  loc_1EEDD1F:   Proc_165_0_14CCDD8("Bank Register", &HB, 1, "Reports", vbNullString, &HD, "FAREPORT", 1)
  loc_1EEDD36:   var_148 = 0
  loc_1EEDD7D:   Proc_165_0_14CCDD8("Ageing Analysis for Debtors", &HB, 1, "Reports", vbNullString, &HE, "FAREPORT", 1)
  loc_1EEDD94:   var_148 = 0
  loc_1EEDDDB:   Proc_165_0_14CCDD8("Ageing Analysis for Creditors", &HB, 1, "Reports", vbNullString, &HF, "FAREPORT", 1)
  loc_1EEDDF2:   var_148 = 0
  loc_1EEDE39:   Proc_165_0_14CCDD8("Cheque Cleared Register", &HB, 1, "Reports", vbNullString, &H17, "FAREPORT", 1)
  loc_1EEDE50:   var_148 = 0
  loc_1EEDE97:   Proc_165_0_14CCDD8("Cheque Not Cleared Register", &HB, 1, "Reports", vbNullString, &H18, "FAREPORT", 1)
  loc_1EEDEAE:   var_148 = 0
  loc_1EEDEF5:   Proc_165_0_14CCDD8("Detailed Trial Ledger", &HB, 1, "Reports", vbNullString, &H1F, "FAREPORT", 1)
  loc_1EEDF0C:   var_148 = 0
  loc_1EEDF53:   Proc_165_0_14CCDD8("Bill Wise Outstanding Report For Debtors", &HB, 1, "Reports", vbNullString, &H21, "FAREPORT", 1)
  loc_1EEDF6A:   var_148 = 0
  loc_1EEDFB1:   Proc_165_0_14CCDD8("Day  Book", &HB, 1, "Reports", vbNullString, &H23, "FAREPORT", 1)
  loc_1EEDFC3: End If
  loc_1EEDFC8: var_148 = 0
  loc_1EEE00F: Proc_165_0_14CCDD8("Main Setup", &HC, 4, vbNullString, vbNullString, 0, "Mast", 1)
  loc_1EEE026: var_148 = 0
  loc_1EEE06D: Proc_165_0_14CCDD8("General Setup", &HC, 3, vbNullString, vbNullString, &HFF, "GEN", 1)
  loc_1EEE084: var_148 = 0
  loc_1EEE0CB: Proc_165_0_14CCDD8("Tax Master", &HC, 0, "General Setup", vbNullString, 0, "GENMas", 1)
  loc_1EEE0E2: var_148 = 0
  loc_1EEE129: Proc_165_0_14CCDD8("Tax Structure", &HC, 0, "General Setup", vbNullString, 1, "GENMas", 1)
  loc_1EEE140: var_148 = 0
  loc_1EEE187: Proc_165_0_14CCDD8("Payment Type", &HC, 0, "General Setup", vbNullString, 2, "GENMas", 1)
  loc_1EEE19E: var_148 = 0
  loc_1EEE1E5: Proc_165_0_14CCDD8("Parameter", &HC, 0, "General Setup", vbNullString, 3, "GENMas", 1)
  loc_1EEE1FC: var_148 = 0
  loc_1EEE243: Proc_165_0_14CCDD8("Revenue Group Setting", &HC, 0, "General Setup", vbNullString, 4, "GENMas", 1)
  loc_1EEE25A: var_148 = 0
  loc_1EEE2A1: Proc_165_0_14CCDD8("Printing Parameters", &HC, 0, "General Setup", vbNullString, 5, "GENMas", 1)
  loc_1EEE2B8: var_148 = 0
  loc_1EEE2FF: Proc_165_0_14CCDD8("Printing Setup", &HC, 0, "General Setup", vbNullString, 6, "GENMas", 1)
  loc_1EEE316: var_148 = 0
  loc_1EEE35D: Proc_165_0_14CCDD8("Revenue Wise Budget Entry", &HC, 2, "General Setup", vbNullString, 7, "GENMas", 1)
  loc_1EEE3A0: If ((InStr(2, MemVar_1F9522C, "L", 0) <> 0) Or (InStr(2, MemVar_1F9522C, "#", 0) <> 0)) Then
  loc_1EEE3A8:   var_148 = 0
  loc_1EEE3EF:   Proc_165_0_14CCDD8("Front Office Setup", &HC, 3, vbNullString, vbNullString, &HFF, "FO", 1)
  loc_1EEE406:   var_148 = 0
  loc_1EEE44D:   Proc_165_0_14CCDD8("Country Master", &HC, 0, "Front Office Setup", vbNullString, 0, "Mas", 1)
  loc_1EEE464:   var_148 = 0
  loc_1EEE4AB:   Proc_165_0_14CCDD8("State Master", &HC, 0, "Front Office Setup", vbNullString, 1, "Mas", 1)
  loc_1EEE4C2:   var_148 = 0
  loc_1EEE509:   Proc_165_0_14CCDD8("City Master", &HC, 0, "Front Office Setup", vbNullString, 2, "Mas", 1)
  loc_1EEE520:   var_148 = 0
  loc_1EEE567:   Proc_165_0_14CCDD8("Market Segment", &HC, 0, "Front Office Setup", vbNullString, 4, "Mas", 1)
  loc_1EEE57E:   var_148 = 0
  loc_1EEE5C5:   Proc_165_0_14CCDD8("Business Source", &HC, 0, "Front Office Setup", vbNullString, 5, "Mas", 1)
  loc_1EEE5DC:   var_148 = 0
  loc_1EEE623:   Proc_165_0_14CCDD8("Guest Status", &HC, 0, "Front Office Setup", vbNullString, 6, "Mas", 1)
  loc_1EEE63A:   var_148 = 0
  loc_1EEE681:   Proc_165_0_14CCDD8("Charge Master", &HC, 0, "Front Office Setup", vbNullString, 7, "Mas", 1)
  loc_1EEE698:   var_148 = 0
  loc_1EEE6DF:   Proc_165_0_14CCDD8("Fixed Charge", &HC, 0, "Front Office Setup", vbNullString, 8, "Mas", 1)
  loc_1EEE6F6:   var_148 = 0
  loc_1EEE73D:   Proc_165_0_14CCDD8("Package Master", &HC, 0, "Front Office Setup", vbNullString, 9, "Mas", 1)
  loc_1EEE754:   var_148 = 0
  loc_1EEE79B:   Proc_165_0_14CCDD8("Plan Master", &HC, 0, "Front Office Setup", vbNullString, &HC, "Mas", 1)
  loc_1EEE7B2:   var_148 = 0
  loc_1EEE7F9:   Proc_165_0_14CCDD8("Season Master", &HC, 0, "Front Office Setup", vbNullString, &HD, "Mas", 1)
  loc_1EEE810:   var_148 = 0
  loc_1EEE857:   Proc_165_0_14CCDD8("Room Features", &HC, 0, "Front Office Setup", vbNullString, &HE, "Mas", 1)
  loc_1EEE86E:   var_148 = 0
  loc_1EEE8B5:   Proc_165_0_14CCDD8("Room Category", &HC, 0, "Front Office Setup", vbNullString, &HF, "Mas", 1)
  loc_1EEE8CC:   var_148 = 0
  loc_1EEE913:   Proc_165_0_14CCDD8("Room Master", &HC, 0, "Front Office Setup", vbNullString, &H10, "Mas", 1)
  loc_1EEE92A:   var_148 = 0
  loc_1EEE971:   Proc_165_0_14CCDD8("Company Master", &HC, 0, "Front Office Setup", vbNullString, &H11, "Mas", 1)
  loc_1EEE988:   var_148 = 0
  loc_1EEE9CF:   Proc_165_0_14CCDD8("Forex Master", &HC, 0, "Front Office Setup", vbNullString, &H14, "Mas", 1)
  loc_1EEE9E6:   var_148 = 0
  loc_1EEEA2D:   Proc_165_0_14CCDD8("Guest History", &HC, 0, "Front Office Setup", vbNullString, &H15, "Mas", 1)
  loc_1EEEA44:   var_148 = 0
  loc_1EEEA8B:   Proc_165_0_14CCDD8("Room Display", &HC, 0, "Front Office Setup", vbNullString, &H17, "Mas", 1)
  loc_1EEEA9D: End If
  loc_1EEEAB5: If (InStr(2, MemVar_1F9522C, "!", 0) <> 0) Then
  loc_1EEEABD:   var_148 = 0
  loc_1EEEB04:   Proc_165_0_14CCDD8("Point of Sale Setup", &HC, 3, vbNullString, vbNullString, &HFF, "POS", 1)
  loc_1EEEB1B:   var_148 = 0
  loc_1EEEB62:   Proc_165_0_14CCDD8("Item List", &HC, 0, "Point of Sale Setup", vbNullString, 2, "POSMas", 1)
  loc_1EEEB79:   var_148 = 0
  loc_1EEEBC0:   Proc_165_0_14CCDD8("Scheme Master", &HC, 0, "Point of Sale Setup", vbNullString, 3, "POSMas", 1)
  loc_1EEEBD7:   var_148 = 0
  loc_1EEEC1E:   Proc_165_0_14CCDD8("Server Master", &HC, 0, "Point of Sale Setup", vbNullString, 4, "POSMas", 1)
  loc_1EEEC35:   var_148 = 0
  loc_1EEEC7C:   Proc_165_0_14CCDD8("Setup Outlet", &HC, 0, "Point of Sale Setup", vbNullString, 6, "POSMas", 1)
  loc_1EEEC93:   var_148 = 0
  loc_1EEECDA:   Proc_165_0_14CCDD8("Table Master", &HC, 0, "Point of Sale Setup", vbNullString, 7, "POSMas", 1)
  loc_1EEECF1:   var_148 = 0
  loc_1EEED38:   Proc_165_0_14CCDD8("Menu Group", &HC, 0, "Point of Sale Setup", vbNullString, 8, "POSMas", 1)
  loc_1EEED4F:   var_148 = 0
  loc_1EEED96:   Proc_165_0_14CCDD8("Menu Category", &HC, 0, "Point of Sale Setup", vbNullString, 9, "POSMas", 1)
  loc_1EEEDAD:   var_148 = 0
  loc_1EEEDF4:   Proc_165_0_14CCDD8("Menu Item", &HC, 0, "Point of Sale Setup", vbNullString, &HA, "POSMas", 1)
  loc_1EEEE0B:   var_148 = 0
  loc_1EEEE52:   Proc_165_0_14CCDD8("Outlet Bill Sundry Setting", &HC, 0, "Point of Sale Setup", vbNullString, &HB, "POSMas", 1)
  loc_1EEEE69:   var_148 = 0
  loc_1EEEEB0:   Proc_165_0_14CCDD8("Menu Item Rate", &HC, 0, "Point of Sale Setup", vbNullString, &HC, "POSMas", 1)
  loc_1EEEEC7:   var_148 = 0
  loc_1EEEF0E:   Proc_165_0_14CCDD8("Session Master", &HC, 0, "Point of Sale Setup", vbNullString, &HD, "POSMas", 1)
  loc_1EEEF25:   var_148 = 0
  loc_1EEEF6C:   Proc_165_0_14CCDD8("Open Item Consumption", &HC, 0, "Point of Sale Setup", vbNullString, &HE, "POSMas", 1)
  loc_1EEEF83:   var_148 = 0
  loc_1EEEFCA:   Proc_165_0_14CCDD8("Happy Hours", &HC, 0, "Point of Sale Setup", vbNullString, &HF, "POSMas", 1)
  loc_1EEEFE1:   var_148 = 0
  loc_1EEF028:   Proc_165_0_14CCDD8("Happy Hours [ Fee Items ]", &HC, 0, "Point of Sale Setup", vbNullString, &H10, "POSMas", 1)
  loc_1EEF03F:   var_148 = 0
  loc_1EEF086:   Proc_165_0_14CCDD8("Combo Pack", &HC, 0, "Point of Sale Setup", vbNullString, &H11, "POSMas", 1)
  loc_1EEF09D:   var_148 = 0
  loc_1EEF0E4:   Proc_165_0_14CCDD8("NC Type", &HC, 0, "Point of Sale Setup", vbNullString, &H12, "POSMas", 1)
  loc_1EEF0FB:   var_148 = 0
  loc_1EEF142:   Proc_165_0_14CCDD8("Customer History", &HC, 0, "Point of Sale Setup", vbNullString, &H13, "POSMas", 1)
  loc_1EEF154: End If
  loc_1EEF16C: If (InStr(2, MemVar_1F9522C, "Q", 0) <> 0) Then
  loc_1EEF174:   var_148 = 0
  loc_1EEF1BB:   Proc_165_0_14CCDD8("Banquet", &HC, 3, vbNullString, vbNullString, &HFF, "HL", 1)
  loc_1EEF1D0:   var_148 = "BANQ"
  loc_1EEF217:   Proc_165_0_14CCDD8("Events", &HC, 0, "Indoor Catering", vbNullString, 0, "HallM", 1)
  loc_1EEF22C:   var_148 = "BANQ"
  loc_1EEF273:   Proc_165_0_14CCDD8("Venue Features", &HC, 0, "Indoor Catering", vbNullString, 1, "HallM", 1)
  loc_1EEF288:   var_148 = "BANQ"
  loc_1EEF2CF:   Proc_165_0_14CCDD8("Venue Master", &HC, 0, "Indoor Catering", vbNullString, 2, "HallM", 1)
  loc_1EEF2E4:   var_148 = "BANQ"
  loc_1EEF32B:   Proc_165_0_14CCDD8("Menu Category", &HC, 0, "Indoor Catering", vbNullString, 3, "HallM", 1)
  loc_1EEF340:   var_148 = "BANQ"
  loc_1EEF387:   Proc_165_0_14CCDD8("Item Group", &HC, 0, "Indoor Catering", vbNullString, 4, "HallM", 1)
  loc_1EEF39C:   var_148 = "BANQ"
  loc_1EEF3E3:   Proc_165_0_14CCDD8("Menu Item", &HC, 0, "Indoor Catering", vbNullString, 5, "HallM", 1)
  loc_1EEF3F8:   var_148 = "BANQ"
  loc_1EEF43F:   Proc_165_0_14CCDD8("Catalog Master", &HC, 0, "Indoor Catering", vbNullString, 6, "HallM", 1)
  loc_1EEF454:   var_148 = "BANQ"
  loc_1EEF49B:   Proc_165_0_14CCDD8("Banquet Bill Sundry Setting", &HC, 0, "Indoor Catering", vbNullString, 7, "HallM", 1)
  loc_1EEF4AD: End If
  loc_1EEF4C5: If (InStr(2, MemVar_1F9522C, "G", 0) <> 0) Then
  loc_1EEF4CD:   var_148 = 0
  loc_1EEF514:   Proc_165_0_14CCDD8("Members Mgmt Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "Mem", 1)
  loc_1EEF52B:   var_148 = 0
  loc_1EEF572:   Proc_165_0_14CCDD8("Category Master", &HC, 0, "Members Mgmt Setup", vbNullString, 0, "MemMas", 1)
  loc_1EEF589:   var_148 = 0
  loc_1EEF5D0:   Proc_165_0_14CCDD8("Member Master", &HC, 0, "Members Mgmt Setup", vbNullString, 1, "MemMas", 1)
  loc_1EEF5E7:   var_148 = 0
  loc_1EEF62E:   Proc_165_0_14CCDD8("Corporate Member Master", &HC, 0, "Members Mgmt Setup", vbNullString, 2, "MemMas", 1)
  loc_1EEF645:   var_148 = 0
  loc_1EEF68C:   Proc_165_0_14CCDD8("Revenue Master", &HC, 0, "Members Mgmt Setup", vbNullString, 3, "MemMas", 1)
  loc_1EEF6A3:   var_148 = 0
  loc_1EEF6EA:   Proc_165_0_14CCDD8("Facility Master", &HC, 0, "Members Mgmt Setup", vbNullString, 4, "MemMas", 1)
  loc_1EEF701:   var_148 = 0
  loc_1EEF748:   Proc_165_0_14CCDD8("Category wise Revenue", &HC, 0, "Members Mgmt Setup", vbNullString, 5, "MemMas", 1)
  loc_1EEF75F:   var_148 = 0
  loc_1EEF7A6:   Proc_165_0_14CCDD8("Category wise Facility", &HC, 0, "Members Mgmt Setup", vbNullString, 6, "MemMas", 1)
  loc_1EEF7BD:   var_148 = 0
  loc_1EEF804:   Proc_165_0_14CCDD8("Member Bill Sundry Setting", &HC, 2, "Members Mgmt Setup", vbNullString, 7, "MemMas", 1)
  loc_1EEF81B:   var_148 = 0
  loc_1EEF862:   Proc_165_0_14CCDD8("Environment Settings", &HC, 0, "Members Mgmt Setup", vbNullString, 8, "MemMas", 1)
  loc_1EEF879:   var_148 = 0
  loc_1EEF8C0:   Proc_165_0_14CCDD8("Member Age Wise Revenue", &HC, 0, "Members Mgmt Setup", vbNullString, 9, "MemMas", 1)
  loc_1EEF8D2: End If
  loc_1EEF8EA: If (InStr(2, MemVar_1F9522C, "J", 0) <> 0) Then
  loc_1EEF8F2:   var_148 = 0
  loc_1EEF939:   Proc_165_0_14CCDD8("Material Mgmt Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "CCenter", 1)
  loc_1EEF950:   var_148 = 0
  loc_1EEF997:   Proc_165_0_14CCDD8("Party Master", &HC, 0, "Material Mgmt Setup", vbNullString, 0, "CCenterMas", 1)
  loc_1EEF9AE:   var_148 = 0
  loc_1EEF9F5:   Proc_165_0_14CCDD8("Department", &HC, 0, "Material Mgmt Setup", vbNullString, 1, "CCenterMas", 1)
  loc_1EEFA0C:   var_148 = 0
  loc_1EEFA53:   Proc_165_0_14CCDD8("Item Group", &HC, 0, "Material Mgmt Setup", vbNullString, 2, "CCenterMas", 1)
  loc_1EEFA6A:   var_148 = 0
  loc_1EEFAB1:   Proc_165_0_14CCDD8("Item Category", &HC, 0, "Material Mgmt Setup", vbNullString, 3, "CCenterMas", 1)
  loc_1EEFAC8:   var_148 = 0
  loc_1EEFB0F:   Proc_165_0_14CCDD8("Item Entry", &HC, 0, "Material Mgmt Setup", vbNullString, 4, "CCenterMas", 1)
  loc_1EEFB26:   var_148 = 0
  loc_1EEFB6D:   Proc_165_0_14CCDD8("Consumption Master", &HC, 2, "Material Mgmt Setup", vbNullString, 5, "CCenterMas", 1)
  loc_1EEFB84:   var_148 = 0
  loc_1EEFBCB:   Proc_165_0_14CCDD8("Purchase Sundry Setting", &HC, 0, "Material Mgmt Setup", vbNullString, 6, "CCenterMas", 1)
  loc_1EEFBE2:   var_148 = 0
  loc_1EEFC29:   Proc_165_0_14CCDD8("Opening Stock", &HC, 0, "Material Mgmt Setup", vbNullString, 8, "CCenterMas", 1)
  loc_1EEFC40:   var_148 = 0
  loc_1EEFC87:   Proc_165_0_14CCDD8("Item  List", &HC, 0, "Material Mgmt Setup", vbNullString, 9, "CCenterMas", 1)
  loc_1EEFC9E:   var_148 = 0
  loc_1EEFCE5:   Proc_165_0_14CCDD8("Enviro Inventry", &HC, 0, "Material Mgmt Setup", vbNullString, &HB, "CCenterMas", 1)
  loc_1EEFCF7: End If
  loc_1EEFD0F: If (InStr(2, MemVar_1F9522C, "*", 0) <> 0) Then
  loc_1EEFD17:   var_148 = 0
  loc_1EEFD5E:   Proc_165_0_14CCDD8("PayRoll Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "PR", 1)
  loc_1EEFD75:   var_148 = 0
  loc_1EEFDBC:   Proc_165_0_14CCDD8("Designation Master", &HC, 0, "PayRoll Setup", vbNullString, 0, "PRM", 1)
  loc_1EEFDD3:   var_148 = 0
  loc_1EEFE1A:   Proc_165_0_14CCDD8("Category Master", &HC, 0, "PayRoll Setup", vbNullString, 1, "PRM", 1)
  loc_1EEFE31:   var_148 = 0
  loc_1EEFE78:   Proc_165_0_14CCDD8("Holiday Master", &HC, 0, "PayRoll Setup", vbNullString, 2, "PRM", 1)
  loc_1EEFE8F:   var_148 = 0
  loc_1EEFED6:   Proc_165_0_14CCDD8("Employee Master", &HC, 0, "PayRoll Setup", vbNullString, 3, "PRM", 1)
  loc_1EEFEE8: End If
  loc_1EEFF00: If (InStr(2, MemVar_1F9522C, "B", 0) <> 0) Then
  loc_1EEFF08:   var_148 = 0
  loc_1EEFF4F:   Proc_165_0_14CCDD8("EPABX Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "Tel", 1)
  loc_1EEFF66:   var_148 = 0
  loc_1EEFFAD:   Proc_165_0_14CCDD8("Call Type Master", &HC, 0, "EPABX Setup", vbNullString, 1, "TelMaast", 1)
  loc_1EEFFC4:   var_148 = 0
  loc_1EF000B:   Proc_165_0_14CCDD8("Extension Master", &HC, 0, "EPABX Setup", vbNullString, 2, "TelMaast", 1)
  loc_1EF0022:   var_148 = 0
  loc_1EF0069:   Proc_165_0_14CCDD8("Call Codes Master", &HC, 0, "EPABX Setup", vbNullString, 3, "TelMaast", 1)
  loc_1EF007B: End If
  loc_1EF0093: If (InStr(2, MemVar_1F9522C, "$", 0) <> 0) Then
  loc_1EF009B:   var_148 = 0
  loc_1EF00E2:   Proc_165_0_14CCDD8("Financial Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "fae", 1)
  loc_1EF00F9:   var_148 = 0
  loc_1EF0140:   Proc_165_0_14CCDD8("Group Accounts", &HC, 0, "Financial Setup", vbNullString, 0, "fame", 1)
  loc_1EF0157:   var_148 = 0
  loc_1EF019E:   Proc_165_0_14CCDD8("Ledger Accounts", &HC, 0, "Financial Setup", vbNullString, 1, "fame", 1)
  loc_1EF01B5:   var_148 = 0
  loc_1EF01FC:   Proc_165_0_14CCDD8("Narration Master", &HC, 0, "Financial Setup", vbNullString, 2, "fame", 1)
  loc_1EF0213:   var_148 = 0
  loc_1EF025A:   Proc_165_0_14CCDD8("T.D.S. Category", &HC, 0, "Financial Setup", vbNullString, 3, "fame", 1)
  loc_1EF0271:   var_148 = 0
  loc_1EF02B8:   Proc_165_0_14CCDD8("FA Environment", &HC, 0, "Financial Setup", vbNullString, 4, "fame", 1)
  loc_1EF02CF:   var_148 = 0
  loc_1EF0316:   Proc_165_0_14CCDD8("Voucher Environment", &HC, 0, "Financial Setup", vbNullString, 5, "fame", 1)
  loc_1EF032D:   var_148 = 0
  loc_1EF0374:   Proc_165_0_14CCDD8("Year End Updation", &HC, 0, "Financial Setup", vbNullString, 7, "fame", 1)
  loc_1EF038B:   var_148 = 0
  loc_1EF03D2:   Proc_165_0_14CCDD8("Current Balance Updation", &HC, 0, "Financial Setup", vbNullString, 8, "fame", 1)
  loc_1EF03E9:   var_148 = 0
  loc_1EF0430:   Proc_165_0_14CCDD8("Country Master", &HC, 0, "Financial Setup", vbNullString, 9, "fame", 1)
  loc_1EF0447:   var_148 = 0
  loc_1EF048E:   Proc_165_0_14CCDD8("State Master", &HC, 0, "Financial Setup", vbNullString, &HA, "fame", 1)
  loc_1EF04A5:   var_148 = 0
  loc_1EF04EC:   Proc_165_0_14CCDD8("City Master", &HC, 0, "Financial Setup", vbNullString, &HB, "fame", 1)
  loc_1EF0503:   var_148 = 0
  loc_1EF054A:   Proc_165_0_14CCDD8("Delete Message", &HC, 0, "Financial Setup", vbNullString, &HC, "fame", 1)
  loc_1EF0561:   var_148 = 0
  loc_1EF05A8:   Proc_165_0_14CCDD8("Account Merging", &HC, 0, "Financial Setup", vbNullString, &HD, "fame", 1)
  loc_1EF05BF:   var_148 = 0
  loc_1EF0606:   Proc_165_0_14CCDD8("Voucher Serialisation", &HC, 0, "Financial Setup", vbNullString, &HE, "fame", 1)
  loc_1EF0618: End If
  loc_1EF061D: var_148 = 0
  loc_1EF0664: Proc_165_0_14CCDD8("Utility", &HC, 3, "Main Setup", vbNullString, &HFF, "Util", 1)
  loc_1EF067B: var_148 = 0
  loc_1EF06C2: Proc_165_0_14CCDD8("User Master", &HC, 0, "Utility", vbNullString, 0, "UTL", 1)
  loc_1EF06D9: var_148 = 0
  loc_1EF0720: Proc_165_0_14CCDD8("Permissions", &HC, 0, "Utility", vbNullString, 1, "UTL", 1)
  loc_1EF0737: var_148 = 0
  loc_1EF077E: Proc_165_0_14CCDD8("Backup Data", &HC, 0, "Utility", vbNullString, 8, "UTL", 1)
  loc_1EF0795: var_148 = 0
  loc_1EF07DC: Proc_165_0_14CCDD8("Sundry Master", &HC, 0, "Utility", vbNullString, &HC, "UTL", 1)
  loc_1EF07F3: var_148 = 0
  loc_1EF083A: Proc_165_0_14CCDD8("Inconsistency Check", &HC, 0, "Utility", vbNullString, &H10, "UTL", 1)
  loc_1EF0851: var_148 = 0
  loc_1EF0898: Proc_165_0_14CCDD8("Year End Updation", &HC, 0, "Utility", vbNullString, &H11, "UTL", 1)
  loc_1EF08AF: var_148 = 0
  loc_1EF08F6: Proc_165_0_14CCDD8("Data Transfer", &HC, 2, "Utility", vbNullString, &H12, "UTL", 1)
  loc_1EF090D: var_148 = 0
  loc_1EF0954: Proc_165_0_14CCDD8("Menu Item Copy", &HC, 0, "Utility", vbNullString, &H14, "UTL", 1)
  loc_1EF096B: var_148 = 0
  loc_1EF09B2: Proc_165_0_14CCDD8("POS Bill Deletion", &HC, 2, "Utility", vbNullString, &H15, "UTL", 1)
  loc_1EF09C9: var_148 = 0
  loc_1EF0A10: Proc_165_0_14CCDD8("Guest B'Day/Anniversary LookUp", &HC, 0, "Utility", vbNullString, &H16, "UTL", 1)
  loc_1EF0A54: If Not(((InStr(2, MemVar_1F9522C, "L", 0) <> 0) Or (InStr(2, MemVar_1F9522C, "#", 0) <> 0))) Then
  loc_1EF0A5C:   var_148 = 0
  loc_1EF0AA3:   Proc_165_0_14CCDD8("Country Master", &HC, 0, "Utility", vbNullString, &H17, "UTL", 1)
  loc_1EF0ABA:   var_148 = 0
  loc_1EF0B01:   Proc_165_0_14CCDD8("State Master", &HC, 0, "Utility", vbNullString, &H18, "UTL", 1)
  loc_1EF0B18:   var_148 = 0
  loc_1EF0B5F:   Proc_165_0_14CCDD8("City Master", &HC, 0, "Utility", vbNullString, &H19, "UTL", 1)
  loc_1EF0B76:   var_148 = 0
  loc_1EF0BBD:   Proc_165_0_14CCDD8("Company Master", &HC, 0, "Utility", vbNullString, &H1A, "UTL", 1)
  loc_1EF0BCF: End If
  loc_1EF0BE8: If Not((InStr(2, MemVar_1F9522C, "J", 0) <> 0)) Then
  loc_1EF0BF0:   var_148 = 0
  loc_1EF0C37:   Proc_165_0_14CCDD8("Department", &HC, 0, "Utility", vbNullString, &H1B, "UTL", 1)
  loc_1EF0C49: End If
  loc_1EF0C62: If Not((InStr(2, MemVar_1F9522C, "$", 0) <> 0)) Then
  loc_1EF0C6A:   var_148 = 0
  loc_1EF0CB1:   Proc_165_0_14CCDD8("Ledger Accounts", &HC, 0, "Utility", vbNullString, &H1C, "UTL", 1)
  loc_1EF0CC3: End If
  loc_1EF0CC8: var_148 = 0
  loc_1EF0D0F: Proc_165_0_14CCDD8("Data Transfer (POS)", &HC, 2, "Utility", vbNullString, &H1D, "UTL", 1)
  loc_1EF0D26: var_148 = 0
  loc_1EF0D6D: Proc_165_0_14CCDD8("PLU File (W.Scale)", &HC, 2, "Utility", vbNullString, &H1E, "UTL", 1)
  loc_1EF0D84: var_148 = 0
  loc_1EF0DCB: Proc_165_0_14CCDD8("POS Recycle", &HC, 2, "Utility", vbNullString, &H20, "UTL", 1)
  loc_1EF0DE2: var_148 = 0
  loc_1EF0E29: Proc_165_0_14CCDD8("Unit Master", &HC, 0, "Utility", vbNullString, &H21, "UTL", 1)
  loc_1EF0E53: If (InStr(2, MemVar_1F9522C, "L", 0) <> 0) Then
  loc_1EF0E5B:   var_148 = 0
  loc_1EF0EA2:   Proc_165_0_14CCDD8("Reservation", &HD, 4, vbNullString, vbNullString, 0, "Reserv", 1)
  loc_1EF0EB9:   var_148 = 0
  loc_1EF0F00:   Proc_165_0_14CCDD8("Reservation Operations", &HD, 3, vbNullString, vbNullString, &HFF, "ResOpEnt", 1)
  loc_1EF0F17:   var_148 = 0
  loc_1EF0F5E:   Proc_165_0_14CCDD8("Reservation/Cancellation", &HD, 0, "Reservation Operations", vbNullString, 0, "ResOpEnt", 1)
  loc_1EF0F75:   var_148 = 0
  loc_1EF0FBC:   Proc_165_0_14CCDD8("Look Up Room types", &HD, 0, "Reservation Operations", vbNullString, 2, "ResOpEnt", 1)
  loc_1EF0FD3:   var_148 = 0
  loc_1EF101A:   Proc_165_0_14CCDD8("Look Up Rooms", &HD, 0, "Reservation Operations", vbNullString, 3, "ResOpEnt", 1)
  loc_1EF1031:   var_148 = 0
  loc_1EF1078:   Proc_165_0_14CCDD8("Reservation with History", &HD, 0, "Reservation Operations", vbNullString, 4, "ResOpEnt", 1)
  loc_1EF108F:   var_148 = 0
  loc_1EF10D6:   Proc_165_0_14CCDD8("Advance Deposit", &HD, 0, "Reservation Operations", vbNullString, 5, "ResOpEnt", 1)
  loc_1EF10ED:   var_148 = 0
  loc_1EF1134:   Proc_165_0_14CCDD8("Confirmation Letters", &HD, 0, "Reservation Operations", vbNullString, 6, "ResOpEnt", 1)
  loc_1EF114B:   var_148 = 0
  loc_1EF1192:   Proc_165_0_14CCDD8("Cancellation Letters", &HD, 0, "Reservation Operations", vbNullString, 7, "ResOpEnt", 1)
  loc_1EF11A9:   var_148 = 0
  loc_1EF11F0:   Proc_165_0_14CCDD8("Registration Card", &HD, 0, "Reservation Operations", vbNullString, 8, "ResOpEnt", 1)
  loc_1EF1207:   var_148 = 0
  loc_1EF124E:   Proc_165_0_14CCDD8("Reservation Status Screen", &HD, 0, "Reservation Operations", vbNullString, 9, "ResOpEnt", 1)
  loc_1EF1265:   var_148 = 0
  loc_1EF12AC:   Proc_165_0_14CCDD8("Reservation Status Report", &HD, 3, vbNullString, vbNullString, &HFF, "ReservationEnt", 1)
  loc_1EF12C3:   var_148 = 0
  loc_1EF130A:   Proc_165_0_14CCDD8("Reservation Status", &HD, 1, "Reservation Status Report", vbNullString, 0, "ResStatusRpt", 1)
  loc_1EF1321:   var_148 = 0
  loc_1EF1368:   Proc_165_0_14CCDD8("Reservation Status Arrival", &HD, 1, "Reservation Status Report", vbNullString, 1, "ResStatusRpt", 1)
  loc_1EF137F:   var_148 = 0
  loc_1EF13C0:   var_124 = "Reservation Status In-House"
  loc_1EF13C6:   Proc_165_0_14CCDD8("Reservation Status Arrival", &HD, 1, "Reservation Status Report", vbNullString, 2, "ResStatusRpt", 1)
  loc_1EF13DD:   var_148 = 0
  loc_1EF1424:   Proc_165_0_14CCDD8("Arrival List", &HD, 1, "Reservation Status Report", vbNullString, 5, "ResStatusRpt", 1)
  loc_1EF143B:   var_148 = 0
  loc_1EF1482:   Proc_165_0_14CCDD8("Advance Recd. Report", &HD, 3, vbNullString, vbNullString, &HFF, "ReservationEnt", 1)
  loc_1EF1499:   var_148 = 0
  loc_1EF14E0:   Proc_165_0_14CCDD8("Advance Recd.", &HD, 1, "Advance Recd. Report", vbNullString, 0, "AdvRecdRpt", 1)
  loc_1EF14F7:   var_148 = 0
  loc_1EF153E:   Proc_165_0_14CCDD8("Advance Recd. Arrival", &HD, 1, "Advance Recd. Report", vbNullString, 1, "AdvRecdRpt", 1)
  loc_1EF1555:   var_148 = 0
  loc_1EF1596:   var_124 = "Advance Recd. In-House"
  loc_1EF159C:   Proc_165_0_14CCDD8("Advance Recd. Arrival", &HD, 1, "Advance Recd. Report", vbNullString, 2, "AdvRecdRpt", 1)
  loc_1EF15B3:   var_148 = 0
  loc_1EF15FA:   Proc_165_0_14CCDD8("M.I.S.", &HD, 3, vbNullString, vbNullString, &HFF, "ReservationEnt", 1)
  loc_1EF1611:   var_148 = 0
  loc_1EF1652:   var_124 = "7-730 Days Forecast"
  loc_1EF1658:   Proc_165_0_14CCDD8("M.I.S.", &HD, 0, "M.I.S.", vbNullString, 0, "ReservationMIS", 1)
  loc_1EF166F:   var_148 = 0
  loc_1EF16B6:   Proc_165_0_14CCDD8("23 Day Room Availability Forecast", &HD, 0, "M.I.S.", vbNullString, 1, "ReservationMIS", 1)
  loc_1EF16CD:   var_148 = 0
  loc_1EF1714:   Proc_165_0_14CCDD8("23 Day Room Type Availability Forecast", &HD, 0, "M.I.S.", vbNullString, 2, "ReservationMIS", 1)
  loc_1EF172B:   var_148 = 0
  loc_1EF1772:   Proc_165_0_14CCDD8("Package Forecast", &HD, 0, "M.I.S.", vbNullString, 3, "ReservationMIS", 1)
  loc_1EF1784: End If
  loc_1EF179C: If (InStr(2, MemVar_1F9522C, "#", 0) <> 0) Then
  loc_1EF17A4:   var_148 = 0
  loc_1EF17EB:   Proc_165_0_14CCDD8("Front Desk", &HE, 4, vbNullString, vbNullString, 0, "FrontDesk", 1)
  loc_1EF1802:   var_148 = 0
  loc_1EF1849:   Proc_165_0_14CCDD8("Front Desk Operations", &HE, 3, vbNullString, vbNullString, &HFF, "FDO", 1)
  loc_1EF1860:   var_148 = 0
  loc_1EF18A7:   Proc_165_0_14CCDD8("WalkIn CheckIn", &HE, 0, "Front Desk Operations", vbNullString, 0, "FDOMenu", 1)
  loc_1EF18BE:   var_148 = 0
  loc_1EF1905:   Proc_165_0_14CCDD8("Room Status", &HE, 0, "Front Desk Operations", vbNullString, 2, "FDOMenu", 1)
  loc_1EF191C:   var_148 = 0
  loc_1EF1963:   Proc_165_0_14CCDD8("Expense Entry", &HE, 0, "Front Desk Operations", vbNullString, 8, "FDOMenu", 1)
  loc_1EF197A:   var_148 = 0
  loc_1EF19C1:   Proc_165_0_14CCDD8("Forex Receive Entry", &HE, 0, "Front Desk Operations", vbNullString, &HD, "FDOMenu", 1)
  loc_1EF19D8:   var_148 = 0
  loc_1EF1A1F:   Proc_165_0_14CCDD8("Display Rack", &HE, 0, "Front Desk Operations", vbNullString, &H10, "FDOMenu", 1)
  loc_1EF1A36:   var_148 = 0
  loc_1EF1A7D:   Proc_165_0_14CCDD8("House Keeping Screen", &HE, 0, "Front Desk Operations", vbNullString, &H11, "FDOMenu", 1)
  loc_1EF1A94:   var_148 = 0
  loc_1EF1ADB:   Proc_165_0_14CCDD8("Travel Agency Posting", &HE, 0, "Front Desk Operations", vbNullString, &H12, "FDOMenu", 1)
  loc_1EF1AF2:   var_148 = 0
  loc_1EF1B39:   Proc_165_0_14CCDD8("Bill Reprint", &HE, 0, "Front Desk Operations", vbNullString, &H13, "FDOMenu", 1)
  loc_1EF1B50:   var_148 = 0
  loc_1EF1B97:   Proc_165_0_14CCDD8("Reverse Check Out", &HE, 0, "Front Desk Operations", vbNullString, &H14, "FDOMenu", 1)
  loc_1EF1BAE:   var_148 = 0
  loc_1EF1BF5:   Proc_165_0_14CCDD8("Merge Room", &HE, 0, "Front Desk Operations", vbNullString, &H15, "FDOMenu", 1)
  loc_1EF1C0C:   var_148 = 0
  loc_1EF1C4D:   var_124 = "Bill Re-Settlement"
  loc_1EF1C53:   Proc_165_0_14CCDD8("Merge Room", &HE, 0, "Front Desk Operations", vbNullString, &H16, "FDOMenu", 1)
  loc_1EF1C6A:   var_148 = 0
  loc_1EF1CB1:   Proc_165_0_14CCDD8("Reverse Room Merge", &HE, 0, "Front Desk Operations", vbNullString, &H17, "FDOMenu", 1)
  loc_1EF1CC8:   var_148 = 0
  loc_1EF1D0F:   Proc_165_0_14CCDD8("Reports", &HE, 3, vbNullString, vbNullString, &HFF, "FDOReports", 1)
  loc_1EF1D26:   var_148 = 0
  loc_1EF1D6D:   Proc_165_0_14CCDD8("Instant House Count", &HE, 1, "Reports", vbNullString, 2, "FDORep", 1)
  loc_1EF1D84:   var_148 = 0
  loc_1EF1DCB:   Proc_165_0_14CCDD8("Room Inventory", &HE, 1, "Reports", vbNullString, 3, "FDORep", 1)
  loc_1EF1DE2:   var_148 = 0
  loc_1EF1E29:   Proc_165_0_14CCDD8("Guest In House", &HE, 1, "Reports", vbNullString, 4, "FDORep", 1)
  loc_1EF1E40:   var_148 = 0
  loc_1EF1E87:   Proc_165_0_14CCDD8("House Keeping Report", &HE, 1, "Reports", vbNullString, 5, "FDORep", 1)
  loc_1EF1E9E:   var_148 = 0
  loc_1EF1EE5:   Proc_165_0_14CCDD8("Arrival & Departure List", &HE, 2, "Reports", vbNullString, 6, "FDORep", 1)
  loc_1EF1EFC:   var_148 = 0
  loc_1EF1F43:   Proc_165_0_14CCDD8("Charge Payment Detail", &HE, 1, "Reports", vbNullString, 7, "FDORep", 1)
  loc_1EF1F5A:   var_148 = 0
  loc_1EF1FA1:   Proc_165_0_14CCDD8("Payments By Cashier", &HE, 1, "Reports", vbNullString, 8, "FDORep", 1)
  loc_1EF1FB8:   var_148 = 0
  loc_1EF1FFF:   Proc_165_0_14CCDD8("Cashier Report", &HE, 1, "Reports", vbNullString, 9, "FDORep", 1)
  loc_1EF2016:   var_148 = 0
  loc_1EF205D:   Proc_165_0_14CCDD8("Settlement Report", &HE, 1, "Reports", vbNullString, &HA, "FDORep", 1)
  loc_1EF2074:   var_148 = 0
  loc_1EF20BB:   Proc_165_0_14CCDD8("Cancel Bill Details", &HE, 1, "Reports", vbNullString, &HB, "FDORep", 1)
  loc_1EF20D2:   var_148 = 0
  loc_1EF2119:   Proc_165_0_14CCDD8("Room Change History", &HE, 1, "Reports", vbNullString, &HC, "FDORep", 1)
  loc_1EF2130:   var_148 = 0
  loc_1EF2177:   Proc_165_0_14CCDD8("Arrival And Departure Register", &HE, 1, "Reports", vbNullString, &HD, "FDORep", 1)
  loc_1EF218E:   var_148 = 0
  loc_1EF21D5:   Proc_165_0_14CCDD8("FOM Sales Register", &HE, 1, "Reports", vbNullString, &HE, "FDORep", 1)
  loc_1EF21EC:   var_148 = 0
  loc_1EF2233:   Proc_165_0_14CCDD8("Room Wise Plan Detail", &HE, 1, "Reports", vbNullString, &HF, "FDORep", 1)
  loc_1EF224A:   var_148 = 0
  loc_1EF2291:   Proc_165_0_14CCDD8("Expected Plan/Package F&B Details", &HE, 1, "Reports", vbNullString, &H10, "FDORep", 1)
  loc_1EF22A8:   var_148 = 0
  loc_1EF22EF:   Proc_165_0_14CCDD8("Occupancy Report", &HE, 1, "Reports", vbNullString, &H11, "FDORep", 1)
  loc_1EF2306:   var_148 = 0
  loc_1EF234D:   Proc_165_0_14CCDD8("Company wise Nights", &HE, 1, "Reports", vbNullString, &H12, "FDORep", 1)
  loc_1EF2364:   var_148 = 0
  loc_1EF23AB:   Proc_165_0_14CCDD8("Revenue During the stay", &HE, 1, "Reports", vbNullString, &H13, "FDORep", 1)
  loc_1EF23C2:   var_148 = 0
  loc_1EF2409:   Proc_165_0_14CCDD8("Bill Change Report", &HE, 1, "Reports", vbNullString, &H14, "FDORep", 1)
  loc_1EF2420:   var_148 = 0
  loc_1EF2467:   Proc_165_0_14CCDD8("Check In Register", &HE, 1, "Reports", vbNullString, &H16, "FDORep", 1)
  loc_1EF247E:   var_148 = 0
  loc_1EF24C5:   Proc_165_0_14CCDD8("Expected Check Out", &HE, 1, "Reports", vbNullString, &H17, "FDORep", 1)
  loc_1EF24DC:   var_148 = 0
  loc_1EF2523:   Proc_165_0_14CCDD8("GRC Printing", &HE, 1, "Reports", vbNullString, &H18, "FDORep", 1)
  loc_1EF253A:   var_148 = 0
  loc_1EF2581:   Proc_165_0_14CCDD8("Check Out Register", &HE, 1, "Reports", vbNullString, &H19, "FDORep", 1)
  loc_1EF2598:   var_148 = 0
  loc_1EF25DF:   Proc_165_0_14CCDD8("Extra Charges During Stay", &HE, 1, "Reports", vbNullString, &H1A, "FDORep", 1)
  loc_1EF25F6:   var_148 = 0
  loc_1EF263D:   Proc_165_0_14CCDD8("Plan Meal Tokens", &HE, 1, "Reports", vbNullString, &H1B, "FDORep", 1)
  loc_1EF2654:   var_148 = 0
  loc_1EF269B:   Proc_165_0_14CCDD8("FOM Tax Detail", &HE, 1, "Reports", vbNullString, &H1C, "FDORep", 1)
  loc_1EF26B2:   var_148 = 0
  loc_1EF26F9:   Proc_165_0_14CCDD8("Checked In Guest Detail", &HE, 1, "Reports", vbNullString, &H1D, "FDORep", 1)
  loc_1EF2710:   var_148 = 0
  loc_1EF2757:   Proc_165_0_14CCDD8("Room Rent Audit Report", &HE, 1, "Reports", vbNullString, &H1E, "FDORep", 1)
  loc_1EF276E:   var_148 = 0
  loc_1EF27B5:   Proc_165_0_14CCDD8("Sales Report", &HE, 1, "Reports", vbNullString, &H1F, "FDORep", 1)
  loc_1EF27CC:   var_148 = 0
  loc_1EF2813:   Proc_165_0_14CCDD8("Tax Wise Charge Detail", &HE, 1, "Reports", vbNullString, &H20, "FDORep", 1)
  loc_1EF282A:   var_148 = 0
  loc_1EF2871:   Proc_165_0_14CCDD8("Tourism Forms", &HE, 3, vbNullString, vbNullString, &HFF, "TFDOForms", 1)
  loc_1EF2888:   var_148 = 0
  loc_1EF2899:   var_140 = "FDOForms"
  loc_1EF28A7:   ' Referenced from: 1F026EC
  loc_1EF28CF:   Proc_165_0_14CCDD8("Form  C", &HE, 1, "Tourism Forms", vbNullString, 0, var_140, 1)
  loc_1EF28E6:   var_148 = 0
  loc_1EF292D:   Proc_165_0_14CCDD8("Tourism Form 1", &HE, 1, "Tourism Forms", vbNullString, 1, "FDOForms", 1)
  loc_1EF2944:   var_148 = 0
  loc_1EF298B:   Proc_165_0_14CCDD8("Tourism Form 2", &HE, 1, "Tourism Forms", vbNullString, 2, "FDOForms", 1)
  loc_1EF29A2:   var_148 = 0
  loc_1EF29E9:   Proc_165_0_14CCDD8("Tourism Form 5", &HE, 1, "Tourism Forms", vbNullString, 3, "FDOForms", 1)
  loc_1EF2A00:   var_148 = 0
  loc_1EF2A14:   Do 'loop at: 1F02A10
  loc_1EF2A41:   var_124 = "Form -3 (Luxury Tax Register)"
  loc_1EF2A47:   Proc_165_0_14CCDD8("Tourism Form 5", &HE, 1, "Tourism Forms", vbNullString, 4, "FDOForms", 1)
  loc_1EF2A5E:   var_148 = 0
  loc_1EF2AA5:   Proc_165_0_14CCDD8("Tourism Form 6", &HE, 1, "Tourism Forms", vbNullString, 5, "FDOForms", 1)
  loc_1EF2ABC:   var_148 = 0
  loc_1EF2B03:   Proc_165_0_14CCDD8("Tourism Form 4", &HE, 1, "Tourism Forms", vbNullString, 6, "FDOForms", 1)
  loc_1EF2B1A:   var_148 = 0
  loc_1EF2B61:   Proc_165_0_14CCDD8("Luxury Tax Report", &HE, 1, "Tourism Forms", vbNullString, 7, "FDOForms", 1)
  loc_1EF2B78:   var_148 = 0
  loc_1EF2BBF:   Proc_165_0_14CCDD8("Monthly Return", &HE, 2, "Tourism Forms", vbNullString, 8, "FDOForms", 1)
  loc_1EF2BD6:   var_148 = 0
  loc_1EF2C1D:   Proc_165_0_14CCDD8("M.I.S.", &HE, 3, vbNullString, vbNullString, &HFF, "FDOMIS", 1)
  loc_1EF2C34:   var_148 = 0
  loc_1EF2C7B:   Proc_165_0_14CCDD8("Occupancy Display", &HE, 1, "M.I.S.", vbNullString, 0, "FDOMISRep", 1)
  loc_1EF2C92:   var_148 = 0
  loc_1EF2CD9:   Proc_165_0_14CCDD8("Guest wise Analysis", &HE, 1, "M.I.S.", vbNullString, 1, "FDOMISRep", 1)
  loc_1EF2CF0:   var_148 = 0
  loc_1EF2D37:   Proc_165_0_14CCDD8("Company wise Analysis", &HE, 1, "M.I.S.", vbNullString, 2, "FDOMISRep", 1)
  loc_1EF2D4E:   var_148 = 0
  loc_1EF2D95:   Proc_165_0_14CCDD8("Revenue During the stay", &HE, 1, "M.I.S.", vbNullString, 3, "FDOMISRep", 1)
  loc_1EF2DAC:   var_148 = 0
  loc_1EF2DF3:   Proc_165_0_14CCDD8("Room Occupancy", &HE, 1, "M.I.S.", vbNullString, 4, "FDOMISRep", 1)
  loc_1EF2E0A:   var_148 = 0
  loc_1EF2E51:   Proc_165_0_14CCDD8("Room Type Occupancy", &HE, 1, "M.I.S.", vbNullString, 5, "FDOMISRep", 1)
  loc_1EF2E68:   var_148 = 0
  loc_1EF2EAF:   Proc_165_0_14CCDD8("Room Wise Room Revenue", &HE, 1, "M.I.S.", vbNullString, 6, "FDOMISRep", 1)
  loc_1EF2EC1: End If
  loc_1EF2ED9: If (InStr(2, MemVar_1F9522C, "I", 0) <> 0) Then
  loc_1EF2EE1:   var_148 = 0
  loc_1EF2F28:   Proc_165_0_14CCDD8("House Keeping", &HF, 4, vbNullString, vbNullString, 0, "HouseKeeping", 1)
  loc_1EF2F3F:   var_148 = 0
  loc_1EF2F86:   Proc_165_0_14CCDD8("Transactions", &HF, 3, vbNullString, vbNullString, &HFF, "SetHK", 1)
  loc_1EF2F9D:   var_148 = 0
  loc_1EF2FE4:   Proc_165_0_14CCDD8("Block Master", &HF, 0, "Setup", vbNullString, 0, "HouseSet", 1)
  loc_1EF2FFB:   var_148 = 0
  loc_1EF3042:   Proc_165_0_14CCDD8("Transactions", &HF, 3, vbNullString, vbNullString, &HFF, "TransHK", 1)
  loc_1EF3059:   var_148 = 0
  loc_1EF30A0:   Proc_165_0_14CCDD8("Complaint Master", &HF, 0, "Transactions", vbNullString, 0, "HouseEnt", 1)
  loc_1EF30B7:   var_148 = 0
  loc_1EF30FE:   Proc_165_0_14CCDD8("Complaint Clearance", &HF, 0, "Transactions", vbNullString, 1, "HouseEnt", 1)
  loc_1EF3115:   var_148 = 0
  loc_1EF315C:   Proc_165_0_14CCDD8("Lost / Found Entry", &HF, 0, "Transactions", vbNullString, 2, "HouseEnt", 1)
  loc_1EF3173:   var_148 = 0
  loc_1EF31BA:   Proc_165_0_14CCDD8("Claim Entry", &HF, 0, "Transactions", vbNullString, 3, "HouseEnt", 1)
  loc_1EF31D1:   var_148 = 0
  loc_1EF3218:   Proc_165_0_14CCDD8("House Keeping Op.Stock Entry", &HF, 2, "Transactions", vbNullString, 4, "HouseEnt", 1)
  loc_1EF322F:   var_148 = 0
  loc_1EF3276:   Proc_165_0_14CCDD8("Issue/Recd. Entry", &HF, 0, "Transactions", vbNullString, 5, "HouseEnt", 1)
  loc_1EF328D:   var_148 = 0
  loc_1EF32D4:   Proc_165_0_14CCDD8("House Keeping Screen", &HF, 0, "Transactions", vbNullString, 6, "HouseEnt", 1)
  loc_1EF32EB:   var_148 = 0
  loc_1EF3332:   Proc_165_0_14CCDD8("Item Issued On Cleaning", &HF, 0, "Transactions", vbNullString, 7, "HouseEnt", 1)
  loc_1EF3349:   var_148 = 0
  loc_1EF3390:   Proc_165_0_14CCDD8("Check Out Clearance Screen", &HF, 0, "Transactions", vbNullString, 8, "HouseEnt", 1)
  loc_1EF33A7:   var_148 = 0
  loc_1EF33EE:   Proc_165_0_14CCDD8("Room Block", &HF, 0, "Transactions", vbNullString, 9, "HouseEnt", 1)
  loc_1EF3405:   var_148 = 0
  loc_1EF344C:   Proc_165_0_14CCDD8("Reports", &HF, 3, vbNullString, vbNullString, &HFF, "ReportsHK", 1)
  loc_1EF3463:   var_148 = 0
  loc_1EF34AA:   Proc_165_0_14CCDD8("Room Status Report", &HF, 1, "Reports", vbNullString, 3, "HouseREP", 1)
  loc_1EF34C1:   var_148 = 0
  loc_1EF3508:   Proc_165_0_14CCDD8("Complaint Detail", &HF, 1, "Reports", vbNullString, 4, "HouseREP", 1)
  loc_1EF351A: End If
  loc_1EF3532: If (InStr(2, MemVar_1F9522C, "J", 0) <> 0) Then
  loc_1EF353A:   var_148 = 0
  loc_1EF3581:   Proc_165_0_14CCDD8("Material Mgmt", &H10, 4, vbNullString, vbNullString, 0, "Purchase", 1)
  loc_1EF3598:   var_148 = 0
  loc_1EF35DF:   Proc_165_0_14CCDD8("Transactions", &H10, 3, vbNullString, vbNullString, &HFF, "TransPurch", 1)
  loc_1EF35F6:   var_148 = 0
  loc_1EF363D:   Proc_165_0_14CCDD8("Gravy Item Entry", &H10, 0, "Transactions", vbNullString, 0, "Purch", 1)
  loc_1EF3654:   var_148 = 0
  loc_1EF369B:   Proc_165_0_14CCDD8("Indent", &H10, 0, "Transactions", vbNullString, 1, "Purch", 1)
  loc_1EF36B2:   var_148 = 0
  loc_1EF36D7:   Do 'loop at: 1F03688
  loc_1EF36F9:   Proc_165_0_14CCDD8("Purchase Order", &H10, 0, "Transactions", vbNullString, 2, "Purch", 1)
  loc_1EF3710:   var_148 = 0
  loc_1EF3757:   Proc_165_0_14CCDD8("M.R. Entry", &H10, 0, "Transactions", vbNullString, 3, "Purch", 1)
  loc_1EF376E:   var_148 = 0
  loc_1EF37B5:   Proc_165_0_14CCDD8("Purchase Bill", &H10, 0, "Transactions", vbNullString, 4, "Purch", 1)
  loc_1EF37CC:   var_148 = 0
  loc_1EF3813:   Proc_165_0_14CCDD8("Requisition Slip", &H10, 0, "Transactions", vbNullString, 5, "Purch", 1)
  loc_1EF382A:   var_148 = 0
  loc_1EF3871:   Proc_165_0_14CCDD8("Stock Issue on Requisition", &H10, 0, "Transactions", vbNullString, 6, "Purch", 1)
  loc_1EF3888:   var_148 = 0
  loc_1EF38CF:   Proc_165_0_14CCDD8("Kitchen Closing Stock", &H10, 0, "Transactions", vbNullString, 7, "Purch", 1)
  loc_1EF38E6:   var_148 = 0
  loc_1EF392D:   Proc_165_0_14CCDD8("Stock Transfer", &H10, 0, "Transactions", vbNullString, 8, "Purch", 1)
  loc_1EF3944:   var_148 = 0
  loc_1EF398B:   Proc_165_0_14CCDD8("Finish Material Receive Entry", &H10, 0, "Transactions", vbNullString, 9, "Purch", 1)
  loc_1EF39A2:   var_148 = 0
  loc_1EF39E9:   Proc_165_0_14CCDD8("Excise Invoice Cum Gate Pass", &H10, 0, "Transactions", vbNullString, &HA, "Purch", 1)
  loc_1EF3A00:   var_148 = 0
  loc_1EF3A47:   Proc_165_0_14CCDD8("Reports", &H10, 3, vbNullString, vbNullString, &HFF, "MatReports", 1)
  loc_1EF3A5E:   var_148 = 0
  loc_1EF3AA5:   Proc_165_0_14CCDD8("Kitchen Stock Report I/R Basis", &H10, 1, "Reports", vbNullString, &H15, "Purch", 1)
  loc_1EF3ABC:   var_148 = 0
  loc_1EF3B03:   Proc_165_0_14CCDD8("Purchase Register", &H10, 1, "Reports", vbNullString, &H16, "Purch", 1)
  loc_1EF3B1A:   var_148 = 0
  loc_1EF3B61:   Proc_165_0_14CCDD8("Purchase Summary", &H10, 1, "Reports", vbNullString, &H17, "Purch", 1)
  loc_1EF3B78:   var_148 = 0
  loc_1EF3BBF:   Proc_165_0_14CCDD8("Cash/Credit Purchase", &H10, 1, "Reports", vbNullString, &H18, "Purch", 1)
  loc_1EF3BD6:   var_148 = 0
  loc_1EF3C1D:   Proc_165_0_14CCDD8("Stock Register", &H10, 1, "Reports", vbNullString, &H19, "Purch", 1)
  loc_1EF3C34:   var_148 = 0
  loc_1EF3C7B:   Proc_165_0_14CCDD8("Stock Summary", &H10, 1, "Reports", vbNullString, &H1A, "Purch", 1)
  loc_1EF3C92:   var_148 = 0
  loc_1EF3CD9:   Proc_165_0_14CCDD8("Stock In Hand", &H10, 1, "Reports", vbNullString, &H1B, "Purch", 1)
  loc_1EF3CF0:   var_148 = 0
  loc_1EF3D37:   Proc_165_0_14CCDD8("Excess Consumption Report", &H10, 1, "Reports", vbNullString, &H1C, "Purch", 1)
  loc_1EF3D4E:   var_148 = 0
  loc_1EF3D95:   Proc_165_0_14CCDD8("Store Issue Register", &H10, 1, "Reports", vbNullString, &H1E, "Purch", 1)
  loc_1EF3DAC:   var_148 = 0
  loc_1EF3DF3:   Proc_165_0_14CCDD8("Indent Register", &H10, 1, "Reports", vbNullString, &H20, "Purch", 1)
  loc_1EF3E0A:   var_148 = 0
  loc_1EF3E51:   Proc_165_0_14CCDD8("Purchase Order Register", &H10, 1, "Reports", vbNullString, &H21, "Purch", 1)
  loc_1EF3E68:   var_148 = 0
  loc_1EF3EAF:   Proc_165_0_14CCDD8("Daily Store Issue Reports", &H10, 1, "Reports", vbNullString, &H22, "Purch", 1)
  loc_1EF3EC6:   var_148 = 0
  loc_1EF3F0D:   Proc_165_0_14CCDD8("VAT Register", &H10, 1, "Reports", vbNullString, &H23, "Purch", 1)
  loc_1EF3F24:   var_148 = 0
  loc_1EF3F6B:   Proc_165_0_14CCDD8("Purchase Ledger", &H10, 1, "Reports", vbNullString, &H24, "Purch", 1)
  loc_1EF3F82:   var_148 = 0
  loc_1EF3FC9:   Proc_165_0_14CCDD8("Issue CheckList", &H10, 1, "Reports", vbNullString, &H25, "Purch", 1)
  loc_1EF3FE0:   var_148 = 0
  loc_1EF4027:   Proc_165_0_14CCDD8("M.R. Register", &H10, 1, "Reports", vbNullString, &H26, "Purch", 1)
  loc_1EF403E:   var_148 = 0
  loc_1EF4085:   Proc_165_0_14CCDD8("Stock Summary P/S Basis", &H10, 1, "Reports", vbNullString, &H27, "Purch", 1)
  loc_1EF409C:   var_148 = 0
  loc_1EF40B0:   Do 'loop at: 1F04012
  loc_1EF40E3:   Proc_165_0_14CCDD8("ABC Analysis", &H10, 1, "Reports", vbNullString, &H28, "Purch", 1)
  loc_1EF40FA:   var_148 = 0
  loc_1EF4141:   Proc_165_0_14CCDD8("Production Report I/R Basis", &H10, 1, "Reports", vbNullString, 1, "MatRep", 1)
  loc_1EF4158:   var_148 = 0
  loc_1EF419F:   Proc_165_0_14CCDD8("VAT Register II", &H10, 1, "Reports", vbNullString, &HA, "MatRep", 1)
  loc_1EF41B6:   var_148 = 0
  loc_1EF41FD:   Proc_165_0_14CCDD8("VAT Register III", &H10, 1, "Reports", vbNullString, &HB, "MatRep", 1)
  loc_1EF4214:   var_148 = 0
  loc_1EF4255:   var_124 = "Form24 Annexure-A"
  loc_1EF425B:   Proc_165_0_14CCDD8("VAT Register III", &H10, 1, "Reports", vbNullString, &HC, "MatRep", 1)
  loc_1EF4272:   var_148 = 0
  loc_1EF427D:   Do 'loop at: 1F0422E
  loc_1EF42B9:   Proc_165_0_14CCDD8("Form III", &H10, 1, "Reports", vbNullString, &HF, "MatRep", 1)
  loc_1EF42D0:   var_148 = 0
  loc_1EF42E9:   Do 'loop at: 1F0429F
  loc_1EF4317:   Proc_165_0_14CCDD8("UPVAT XXIV", &H10, 1, "Reports", vbNullString, &H10, "MatRep", 1)
  loc_1EF4329: End If
  loc_1EF4341: Loop Until (InStr(2, MemVar_1F9522C, "!", 0) <> 0) 'do at: 1EE65AE
  loc_1EF4349: var_148 = 0
  loc_1EF4387: Do 'loop at: 1F0430B
  loc_1EF4390: Proc_165_0_14CCDD8("Point Of Sale", &H11, 4, vbNullString, vbNullString, 0, "Restaurant", 1)
  loc_1EF43A7: var_148 = 0
  loc_1EF43EE: Proc_165_0_14CCDD8("Restaurant Change", &H11, 2, vbNullString, vbNullString, &H1E, "Rest", 1)
  loc_1EF4405: var_148 = 0
  loc_1EF444C: Proc_165_0_14CCDD8("POS Status", &H11, 0, vbNullString, vbNullString, &H1F, "Rest", 1)
  loc_1EF4463: var_148 = 0
  loc_1EF44AA: Proc_165_0_14CCDD8("POS Operations", &H11, 2, vbNullString, vbNullString, &HFF, "POSOperations", 1)
  loc_1EF44C1: var_148 = 0
  loc_1EF4508: Proc_165_0_14CCDD8("KOT Entry", &H11, 2, "POS Operations", vbNullString, 0, "POSEnt", 1)
  loc_1EF451F: var_148 = 0
  loc_1EF4566: Proc_165_0_14CCDD8("Table Change Entry", &H11, 2, "POS Operations", vbNullString, 1, "POSEnt", 1)
  loc_1EF457D: var_148 = 0
  loc_1EF45C4: Proc_165_0_14CCDD8("Sale Bill Entry", &H11, 2, "POS Operations", vbNullString, 2, "POSEnt", 1)
  loc_1EF45DB: var_148 = 0
  loc_1EF4622: Proc_165_0_14CCDD8("Settlement Entry", &H11, 2, "POS Operations", vbNullString, 3, "POSEnt", 1)
  loc_1EF4639: var_148 = 0
  loc_1EF4680: Proc_165_0_14CCDD8("POS Bill Reprint", &H11, 2, "POS Operations", vbNullString, 4, "POSEnt", 1)
  loc_1EF4697: var_148 = 0
  loc_1EF46DE: Proc_165_0_14CCDD8("Split Sale Bill", &H11, 2, "POS Operations", vbNullString, 5, "POSEnt", 1)
  loc_1EF46F5: var_148 = 0
  loc_1EF473C: Proc_165_0_14CCDD8("Display Table", &H11, 2, "POS Operations", vbNullString, 6, "POSEnt", 1)
  loc_1EF4753: var_148 = 0
  loc_1EF479A: Proc_165_0_14CCDD8("Order Booking", &H11, 2, "POS Operations", vbNullString, 7, "POSEnt", 1)
  loc_1EF47B1: var_148 = 0
  loc_1EF47F8: Proc_165_0_14CCDD8("Bill Lookup", &H11, 2, "POS Operations", vbNullString, 8, "POSEnt", 1)
  loc_1EF480F: var_148 = 0
  loc_1EF4856: Proc_165_0_14CCDD8("Order Booking Advance", &H11, 2, "POS Operations", vbNullString, 9, "POSEnt", 1)
  loc_1EF486D: var_148 = 0
  loc_1EF48B4: Proc_165_0_14CCDD8("KOT Transfer", &H11, 2, "POS Operations", vbNullString, &HA, "POSEnt", 1)
  loc_1EF48CB: var_148 = 0
  loc_1EF4912: Proc_165_0_14CCDD8("Token Entry", &H11, 2, "POS Operations", vbNullString, &HB, "POSEnt", 1)
  loc_1EF4929: var_148 = 0
  loc_1EF4970: Proc_165_0_14CCDD8("POS Reports", &H11, 3, vbNullString, vbNullString, &HFF, "POSReports", 1)
  loc_1EF4987: Do 'loop at: 1F04929
  loc_1EF4987: var_148 = 0
  loc_1EF49CE: Proc_165_0_14CCDD8("Sales Register", &H11, 1, "POS Reports", vbNullString, 0, "POSRep", 1)
  loc_1EF49E5: var_148 = 0
  loc_1EF4A07: Do 'loop at: 1F049A9
  loc_1EF4A2C: Proc_165_0_14CCDD8("Stewardwise Sale", &H11, 1, "POS Reports", vbNullString, 1, "POSRep", 1)
  loc_1EF4A43: var_148 = 0
  loc_1EF4A87: Do 'loop at: 1F04A29
  loc_1EF4A8A: Proc_165_0_14CCDD8("Tablewise Sales", &H11, 1, "POS Reports", vbNullString, 2, "POSRep", 1)
  loc_1EF4AA1: var_148 = 0
  loc_1EF4AE8: Proc_165_0_14CCDD8("Settlement Summary", &H11, 1, "POS Reports", vbNullString, 3, "POSRep", 1)
  loc_1EF4AFF: var_148 = 0
  loc_1EF4B0D: Do 'loop at: 1F04AA9
  loc_1EF4B46: Proc_165_0_14CCDD8("Tax Report", &H11, 1, "POS Reports", vbNullString, 4, "POSRep", 1)
  loc_1EF4B5D: var_148 = 0
  loc_1EF4B93: Do 'loop at: 1F04B2F
  loc_1EF4BA4: Proc_165_0_14CCDD8("KOT Wise Details", &H11, 1, "POS Reports", vbNullString, 5, "POSRep", 1)
  loc_1EF4BBB: var_148 = 0
  loc_1EF4C02: Proc_165_0_14CCDD8("Discount Register", &H11, 1, "POS Reports", vbNullString, 6, "POSRep", 1)
  loc_1EF4C19: Do 'loop at: 1F04BB5
  loc_1EF4C19: var_148 = 0
  loc_1EF4C60: Proc_165_0_14CCDD8("Cover Analysis", &H11, 1, "POS Reports", vbNullString, 7, "POSRep", 1)
  loc_1EF4C77: var_148 = 0
  loc_1EF4C9F: Do 'loop at: 1F04C3B
  loc_1EF4CBE: Proc_165_0_14CCDD8("Pending KOT", &H11, 1, "POS Reports", vbNullString, 8, "POSRep", 1)
  loc_1EF4CD5: var_148 = 0
  loc_1EF4D1C: Proc_165_0_14CCDD8("Item wise Sale", &H11, 1, "POS Reports", vbNullString, 9, "POSRep", 1)
  loc_1EF4D33: var_148 = 0
  loc_1EF4D7A: Proc_165_0_14CCDD8("Deleted Unsettled Bill", &H11, 1, "POS Reports", vbNullString, &HA, "POSRep", 1)
  loc_1EF4D91: var_148 = 0
  loc_1EF4DD8: Proc_165_0_14CCDD8("NC KOT Detail", &H11, 1, "POS Reports", vbNullString, &HB, "POSRep", 1)
  loc_1EF4DEF: var_148 = 0
  loc_1EF4E36: Proc_165_0_14CCDD8("Sales Day Book", &H11, 1, "POS Reports", vbNullString, &HC, "POSRep", 1)
  loc_1EF4E4D: var_148 = 0
  loc_1EF4E94: Proc_165_0_14CCDD8("Tax Register", &H11, 1, "POS Reports", vbNullString, &HD, "POSRep", 1)
  loc_1EF4EAB: var_148 = 0
  loc_1EF4EF2: Proc_165_0_14CCDD8("Order Detail Report", &H11, 1, "POS Reports", vbNullString, &HE, "POSRep", 1)
  loc_1EF4F09: var_148 = 0
  loc_1EF4F50: Proc_165_0_14CCDD8("Taxwise Details", &H11, 1, "POS Reports", vbNullString, &HF, "POSRep", 1)
  loc_1EF4F67: var_148 = 0
  loc_1EF4FAE: Proc_165_0_14CCDD8("NC KOT Summary", &H11, 1, "POS Reports", vbNullString, &H10, "POSRep", 1)
  loc_1EF4FC5: var_148 = 0
  loc_1EF500C: Proc_165_0_14CCDD8("Discount Register (PartyWise)", &H11, 1, "POS Reports", vbNullString, &H12, "POSRep", 1)
  loc_1EF5023: var_148 = 0
  loc_1EF506A: Proc_165_0_14CCDD8("Not Delivered Order", &H11, 1, "POS Reports", vbNullString, &H13, "POSRep", 1)
  loc_1EF5081: var_148 = 0
  loc_1EF50C8: Proc_165_0_14CCDD8("Group Wise Sale", &H11, 1, "POS Reports", vbNullString, &H14, "POSRep", 1)
  loc_1EF50DF: var_148 = 0
  loc_1EF5126: Proc_165_0_14CCDD8("Customer Detail", &H11, 1, "POS Reports", vbNullString, &H15, "POSRep", 0)
  loc_1EF513D: Do 'loop at: 1F050DF
  loc_1EF513D: var_148 = 0
  loc_1EF5184: Proc_165_0_14CCDD8("Denomination Detail", &H11, 0, "POS Reports", vbNullString, &H29, "POSRep", 0)
  loc_1EF519B: var_148 = 0
  loc_1EF51BD: Do 'loop at: 1F0515F
  loc_1EF51E2: Proc_165_0_14CCDD8("POS M.I.S.", &H11, 3, vbNullString, vbNullString, &HFF, "POSMIS", 1)
  loc_1EF51F9: var_148 = 0
  loc_1EF523D: Do 'loop at: 1F051DF
  loc_1EF5240: Proc_165_0_14CCDD8("Collection Summary", &H11, 1, "POS M.I.S.", vbNullString, 0, "MISREP", 1)
  loc_1EF5257: var_148 = 0
  loc_1EF529E: Proc_165_0_14CCDD8("Open Item Sales", &H11, 1, "POS M.I.S.", vbNullString, 1, "MISREP", 1)
  loc_1EF52B5: var_148 = 0
  loc_1EF52FC: Proc_165_0_14CCDD8("Void Bills", &H11, 1, "POS M.I.S.", vbNullString, 2, "MISREP", 1)
  loc_1EF5313: var_148 = 0
  loc_1EF535A: Proc_165_0_14CCDD8("KOT Change Report", &H11, 1, "POS M.I.S.", vbNullString, 3, "MISREP", 1)
  loc_1EF5371: var_148 = 0
  loc_1EF53B8: Proc_165_0_14CCDD8("Tax Summary", &H11, 1, "POS M.I.S.", vbNullString, 4, "MISREP", 1)
  loc_1EF53BD: Do 'loop at: 1F0535F
  loc_1EF53BD: 
  loc_1EF53BD:
  loc_1EF53CF: var_148 = 0
  loc_1EF5416: Proc_165_0_14CCDD8("Discount Summary", &H11, 1, "POS M.I.S.", vbNullString, 5, "MISREP", 1)
  loc_1EF542D: var_148 = 0
  loc_1EF5474: Proc_165_0_14CCDD8("Monthwise Sales", &H11, 1, "POS M.I.S.", vbNullString, 6, "MISREP", 1)
  loc_1EF548B: var_148 = 0
  loc_1EF54D2: Proc_165_0_14CCDD8("ABC  Analysis", &H11, 1, "POS M.I.S.", vbNullString, 7, "MISREP", 1)
  loc_1EF54E9: var_148 = 0
  loc_1EF5530: Proc_165_0_14CCDD8("Sale Summary", &H11, 1, "POS M.I.S.", vbNullString, 8, "MISREP", 1)
  loc_1EF5547: var_148 = 0
  loc_1EF558E: Proc_165_0_14CCDD8("Tax Invoice Detail", &H11, 1, "POS M.I.S.", vbNullString, 9, "MISREP", 1)
  loc_1EF55A5: var_148 = 0
  loc_1EF55EC: Proc_165_0_14CCDD8("Edited Bills", &H11, 1, "POS M.I.S.", vbNullString, &HA, "MISREP", 1)
  loc_1EF5622: unk_4E88AE.Execute "Select Code,Name,KOTYN,Order_Booking from depart where OutletYN='Y' And LogSite_Code='" & MemVar_1F95078 & "'", var_BC, -1
  loc_1EF562D: Set var_88 = var_12C
  loc_1EF564F: Do 'loop at: 1F055DF
  loc_1EF564F: Loop Until Not(Me.Recordset15.EOF) 'do at: 1EE65AE
  loc_1EF56A1: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF56EE: Proc_165_0_14CCDD8(CStr(Me.Recordset15.Fields.Item("Name").Value), &H11, 3, vbNullString, vbNullString, &HFF, vbNullString, 0)
  loc_1EF5751: Loop Until (Me.Recordset15.Fields.Item("KotYN").Value = "Y") 'do at: 1EE5A57
  loc_1EF57A3: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF57CF: Do 'loop at: 1F05771
  loc_1EF57F0: Proc_165_0_14CCDD8("KOT Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 0, vbNullString, 0)
  loc_1EF5863: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF58B0: Proc_165_0_14CCDD8("Table Change Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 1, vbNullString, 0)
  loc_1EF5923: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF594F: Do 'loop at: 1F058F1
  loc_1EF5970: Proc_165_0_14CCDD8("KOT Transfer", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HA, vbNullString, 0)
  loc_1EF59E3: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5A30: Proc_165_0_14CCDD8("Token Entry", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HB, vbNullString, 0)
  loc_1EF5A54: GoTo loc_1EE5D99
  loc_1EF5A96: Loop Until (Me.Recordset15.Fields.Item("KotYN").Value = "N") 'do at: 1EE5D99
  loc_1EF5ACF: Do 'loop at: 1F05A71
  loc_1EF5AE8: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5B35: Proc_165_0_14CCDD8("KOT Entry", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 0, vbNullString, 0)
  loc_1EF5BA8: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5BF5: Proc_165_0_14CCDD8("Table Change Entry", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 1, vbNullString, 0)
  loc_1EF5C4F: Do 'loop at: 1F05BF1
  loc_1EF5C68: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5CB5: Proc_165_0_14CCDD8("KOT Transfer", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HA, vbNullString, 0)
  loc_1EF5D28: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5D75: Proc_165_0_14CCDD8("Token Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HB, vbNullString, 0)
  loc_1EF5DE8: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5E35: Proc_165_0_14CCDD8("Sale Bill Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 2, vbNullString, 0)
  loc_1EF5EA8: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5EF5: Proc_165_0_14CCDD8("Settlement Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 3, vbNullString, 0)
  loc_1EF5F68: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF5FB5: Proc_165_0_14CCDD8("POS Bill Reprint", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 4, vbNullString, 0)
  loc_1EF6028: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF6075: Proc_165_0_14CCDD8("Split Sale Bill", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 5, vbNullString, 0)
  loc_1EF60E8: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF6135: Proc_165_0_14CCDD8("Display Table", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 6, vbNullString, 0)
  loc_1EF6198: Loop Until (Me.Recordset15.Fields.Item("Order_Booking").Value = "Y") 'do at: 1EE631E
  loc_1EF61EA: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF6237: Proc_165_0_14CCDD8("Order Booking", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 7, vbNullString, 0)
  loc_1EF62A2: Do 'loop at: 1F06244
  loc_1EF62AA: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF62F7: Proc_165_0_14CCDD8("Order Booking Advance", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 9, vbNullString, 0)
  loc_1EF631B: GoTo loc_1EE64E0
  loc_1EF635D: Loop Until (Me.Recordset15.Fields.Item("Order_Booking").Value = "N") 'do at: 1EE64E0
  loc_1EF63AF: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF63FC: Proc_165_0_14CCDD8("Order Booking", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 7, vbNullString, 0)
  loc_1EF646F: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF64BC: Proc_165_0_14CCDD8("Order Booking Advance", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 9, vbNullString, 0)
  loc_1EF652F: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF657C: Proc_165_0_14CCDD8("Bill Lookup", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 8, vbNullString, 0)
  loc_1EF65A6: Me.Recordset15.MoveNext
  loc_1EF65AB: GoTo loc_1EE563D
  loc_1EF65C6: Loop Until (InStr(2, MemVar_1F9522C, "Q", 0) <> 0) 'do at: 1EE7D29
  loc_1EF65CE: var_148 = 0
  loc_1EF6615: Proc_165_0_14CCDD8("Banquet", &H12, 4, vbNullString, vbNullString, 0, "Banquet", 1)
  loc_1EF662A: var_148 = "BANQ"
  loc_1EF6671: Proc_165_0_14CCDD8("Banquet Operation", &H12, 0, "Indoor Catering", vbNullString, &HFF, "oper", 0)
  loc_1EF6686: var_148 = "BANQ"
  loc_1EF66A2: Do 'loop at: 1F06644
  loc_1EF66CD: Proc_165_0_14CCDD8("Booking Inquiry", &H12, 0, "Indoor Catering", vbNullString, 0, "Hallop", 0)
  loc_1EF66E2: var_148 = "BANQ"
  loc_1EF671D: Do 'loop at: 1F066C4
  loc_1EF6729: Proc_165_0_14CCDD8("Banquet Booking", &H12, 0, "Indoor Catering", vbNullString, 1, "Hallop", 0)
  loc_1EF673E: var_148 = "BANQ"
  loc_1EF6785: Proc_165_0_14CCDD8("Catalog Selection", &H12, 0, "Indoor Catering", vbNullString, 2, "Hallop", 0)
  loc_1EF679A: var_148 = "BANQ"
  loc_1EF67DB: var_124 = "Chef Pre-Costing"
  loc_1EF67E1: Proc_165_0_14CCDD8("Catalog Selection", &H12, 0, "Indoor Catering", vbNullString, 3, "Hallop", 0)
  loc_1EF67F6: var_148 = "BANQ"
  loc_1EF683D: Proc_165_0_14CCDD8("Banquet Billing", &H12, 0, "Indoor Catering", vbNullString, 4, "Hallop", 0)
  loc_1EF6852: var_148 = "BANQ"
  loc_1EF6893: Do 'loop at: 1F06835
  loc_1EF6899: Proc_165_0_14CCDD8("Banquet Settlement", &H12, 2, "Indoor Catering", vbNullString, 5, "Hallop", 0)
  loc_1EF68AE: var_148 = "BANQ"
  loc_1EF68F5: Proc_165_0_14CCDD8("Venue Availability", &H12, 0, "Indoor Catering", vbNullString, 6, "Hallop", 0)
  loc_1EF690A: var_148 = "BANQ"
  loc_1EF6951: Proc_165_0_14CCDD8("Guest Comments", &H12, 0, "Indoor Catering", vbNullString, 7, "Hallop", 0)
  loc_1EF6966: var_148 = "BANQ"
  loc_1EF69AD: Proc_165_0_14CCDD8("Banquet Estimate Billing", &H12, 0, "Indoor Catering", vbNullString, 8, "Hallop", 0)
  loc_1EF69C2: var_148 = "BANQ"
  loc_1EF6A09: Proc_165_0_14CCDD8("Banquet Booking Advance", &H12, 0, "Indoor Catering", vbNullString, 9, "Hallop", 0)
  loc_1EF6A1E: var_148 = "BANQ"
  loc_1EF6A65: Proc_165_0_14CCDD8("Reports", &H12, 0, "Indoor Catering", vbNullString, &HFF, "HallReport", 0)
  loc_1EF6A7A: var_148 = "BANQ"
  loc_1EF6A93: Do 'loop at: 1F06A35
  loc_1EF6AC1: Proc_165_0_14CCDD8("Sales Register", &H12, 1, "Indoor Catering", "Banquet Reports", 0, "BanqRep", 0)
  loc_1EF6AD6: var_148 = "BANQ"
  loc_1EF6B1D: Proc_165_0_14CCDD8("OutStanding Report", &H12, 1, "Indoor Catering", "Banquet Reports", 1, "BanqRep", 0)
  loc_1EF6B32: var_148 = "BANQ"
  loc_1EF6B79: Proc_165_0_14CCDD8("Party wise OutStanding", &H12, 1, "Indoor Catering", "Banquet Reports", 2, "BanqRep", 0)
  loc_1EF6B8E: var_148 = "BANQ"
  loc_1EF6BD5: Proc_165_0_14CCDD8("Cashier  Report", &H12, 1, "Indoor Catering", "Banquet Reports", 3, "BanqRep", 0)
  loc_1EF6BEA: var_148 = "BANQ"
  loc_1EF6C31: Proc_165_0_14CCDD8("Booking Inquiry Detail", &H12, 1, "Indoor Catering", "Banquet Reports", 4, "BanqRep", 0)
  loc_1EF6C46: var_148 = "BANQ"
  loc_1EF6C8D: Proc_165_0_14CCDD8("Settlement  Report", &H12, 1, "Indoor Catering", "Banquet Reports", 5, "BanqRep", 0)
  loc_1EF6CA2: var_148 = "BANQ"
  loc_1EF6CE9: Proc_165_0_14CCDD8("Daily Function Sheet", &H12, 1, "Indoor Catering", "Banquet Reports", 6, "BanqRep", 0)
  loc_1EF6CFE: var_148 = "BANQ"
  loc_1EF6D45: Proc_165_0_14CCDD8("Item Wise Sales Report", &H12, 1, "Indoor Catering", "Banquet Reports", 7, "BanqRep", 0)
  loc_1EF6D5A: var_148 = "BANQ"
  loc_1EF6DA1: Proc_165_0_14CCDD8("Company Wise Sale Report", &H12, 1, "Indoor Catering", "Banquet Reports", 8, "BanqRep", 0)
  loc_1EF6DB6: var_148 = "BANQ"
  loc_1EF6DD8: Do 'loop at: 1EFABBB
  loc_1EF6DFD: Proc_165_0_14CCDD8("Function Wise Item Detail", &H12, 1, "Indoor Catering", "Banquet Reports", 9, "BanqRep", 0)
  loc_1EF6E12: var_148 = "BANQ"
  loc_1EF6E59: Proc_165_0_14CCDD8("Banquet Reports (MIS)", &H12, 0, "Indoor Catering", vbNullString, &HFF, "HallMIS", 0)
  loc_1EF6E6E: var_148 = "BANQ"
  loc_1EF6EB5: Proc_165_0_14CCDD8("Cover Analysis", &H12, 1, "Indoor Catering", "Banquet Reports (MIS)", 0, "BanqRepMIS", 0)
  loc_1EF6ECA: var_148 = "BANQ"
  loc_1EF6F11: Proc_165_0_14CCDD8("Collection Summary", &H12, 1, "Indoor Catering", "Banquet Reports (MIS)", 1, "BanqRepMIS", 0)
  loc_1EF6F26: var_148 = "BANQ"
  loc_1EF6F6D: Proc_165_0_14CCDD8("Banquet Tax Reports", &H12, 0, "Indoor Catering", vbNullString, &HFF, "HallTax", 0)
  loc_1EF6F82: var_148 = "BANQ"
  loc_1EF6FC9: Proc_165_0_14CCDD8("Tax Report", &H12, 1, "Indoor Catering", "Banquet Tax Reports", 0, "HallTaxP", 0)
  loc_1EF6FDE: var_148 = "BANQ"
  loc_1EF7025: Proc_165_0_14CCDD8("Tax Summary", &H12, 1, "Indoor Catering", "Banquet Tax Reports", 1, "HallTaxP", 0)
  loc_1EF703A: var_148 = "BANQ"
  loc_1EF7081: Proc_165_0_14CCDD8("Banquet Taxwise Details", &H12, 1, "Indoor Catering", "Banquet Tax Reports", 2, "HallTaxP", 0)
  loc_1EF7098: var_148 = 0
  loc_1EF70DF: Proc_165_0_14CCDD8("OutDoor Catering", &H12, 3, vbNullString, vbNullString, &HFF, "Banq1", 1)
  loc_1EF70F4: var_148 = "ODC"
  loc_1EF713B: Proc_165_0_14CCDD8("Venue Master", &H12, 0, "OutDoor Catering", vbNullString, 2, "OdcEnt1", 0)
  loc_1EF7150: var_148 = "ODC"
  loc_1EF7197: Proc_165_0_14CCDD8("Menu Category", &H12, 0, "OutDoor Catering", vbNullString, 3, "OdcEnt1", 0)
  loc_1EF71AC: var_148 = "ODC"
  loc_1EF71F3: Proc_165_0_14CCDD8("Item Group", &H12, 0, "OutDoor Catering", vbNullString, 4, "OdcEnt1", 0)
  loc_1EF7208: var_148 = "ODC"
  loc_1EF724F: Proc_165_0_14CCDD8("Menu Item", &H12, 0, "OutDoor Catering", vbNullString, 5, "OdcEnt1", 0)
  loc_1EF7264: var_148 = "ODC"
  loc_1EF72AB: Proc_165_0_14CCDD8("Banquet Bill Sundry Setting", &H12, 0, "OutDoor Catering", vbNullString, 7, "OdcEnt1", 0)
  loc_1EF72C0: var_148 = "ODC"
  loc_1EF7307: Proc_165_0_14CCDD8("Operation", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcOPer", 0)
  loc_1EF731C: var_148 = "ODC"
  loc_1EF7363: Proc_165_0_14CCDD8("Booking Inquiry", &H12, 0, "OutDoor Catering", vbNullString, 0, "OdcOP", 0)
  loc_1EF7378: var_148 = "ODC"
  loc_1EF73BF: Proc_165_0_14CCDD8("Banquet Booking", &H12, 0, "OutDoor Catering", vbNullString, 1, "OdcOP", 0)
  loc_1EF73D4: var_148 = "ODC"
  loc_1EF741B: Proc_165_0_14CCDD8("Catalog Selection", &H12, 0, "OutDoor Catering", vbNullString, 2, "OdcOP", 0)
  loc_1EF7430: var_148 = "ODC"
  loc_1EF7471: var_124 = "Chef Pre-Costing"
  loc_1EF7477: Proc_165_0_14CCDD8("Catalog Selection", &H12, 0, "OutDoor Catering", vbNullString, 3, "OdcOP", 0)
  loc_1EF748C: var_148 = "ODC"
  loc_1EF74D3: Proc_165_0_14CCDD8("Banquet Billing", &H12, 0, "OutDoor Catering", vbNullString, 4, "OdcOP", 0)
  loc_1EF74E8: var_148 = "ODC"
  loc_1EF752F: Proc_165_0_14CCDD8("Banquet Settlement", &H12, 2, "OutDoor Catering", vbNullString, 5, "OdcOP", 0)
  loc_1EF7544: var_148 = "ODC"
  loc_1EF758B: Proc_165_0_14CCDD8("Venue Availability", &H12, 0, "OutDoor Catering", vbNullString, 6, "OdcOP", 0)
  loc_1EF75A0: var_148 = "ODC"
  loc_1EF75E7: Proc_165_0_14CCDD8("Guest Comments", &H12, 0, "OutDoor Catering", vbNullString, 7, "OdcOP", 0)
  loc_1EF75FC: var_148 = "ODC"
  loc_1EF7643: Proc_165_0_14CCDD8("Banquet Estimate Billing", &H12, 0, "OutDoor Catering", vbNullString, 8, "OdcOP", 0)
  loc_1EF7658: var_148 = "ODC"
  loc_1EF769F: Proc_165_0_14CCDD8("Banquet Booking Advance", &H12, 0, "OutDoor Catering", vbNullString, 9, "OdcOP", 0)
  loc_1EF76B4: var_148 = "ODC"
  loc_1EF76FB: Proc_165_0_14CCDD8("Reports", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcRepo", 0)
  loc_1EF7710: var_148 = "ODC"
  loc_1EF7757: Proc_165_0_14CCDD8("Sales Register", &H12, 1, "OutDoor Catering", "Banquet Reports", 0, "OdcRep", 0)
  loc_1EF776C: var_148 = "ODC"
  loc_1EF77B3: Proc_165_0_14CCDD8("OutStanding Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 1, "OdcRep", 0)
  loc_1EF77C8: var_148 = "ODC"
  loc_1EF780F: Proc_165_0_14CCDD8("Party wise OutStanding", &H12, 1, "OutDoor Catering", "Banquet Reports", 2, "OdcRep", 0)
  loc_1EF7824: var_148 = "ODC"
  loc_1EF786B: Proc_165_0_14CCDD8("Cashier  Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 3, "OdcRep", 0)
  loc_1EF7880: var_148 = "ODC"
  loc_1EF78C7: Proc_165_0_14CCDD8("Booking Inquiry Detail", &H12, 1, "OutDoor Catering", "Banquet Reports", 4, "OdcRep", 0)
  loc_1EF78DC: var_148 = "ODC"
  loc_1EF7923: Proc_165_0_14CCDD8("Settlement  Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 5, "OdcRep", 0)
  loc_1EF7938: var_148 = "ODC"
  loc_1EF797F: Proc_165_0_14CCDD8("Daily Function Sheet", &H12, 1, "OutDoor Catering", "Banquet Reports", 7, "OdcRep", 0)
  loc_1EF7994: var_148 = "ODC"
  loc_1EF79DB: Proc_165_0_14CCDD8("Item Wise Sales Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 9, "OdcRep", 0)
  loc_1EF79F0: var_148 = "ODC"
  loc_1EF7A37: Proc_165_0_14CCDD8("Company Wise Sale Report", &H12, 1, "OutDoor Catering", "Banquet Reports", &HA, "OdcRep", 0)
  loc_1EF7A4C: var_148 = "ODC"
  loc_1EF7A93: Proc_165_0_14CCDD8("Function Wise Item Detail", &H12, 1, "OutDoor Catering", "Banquet Reports", &HB, "OdcRep", 0)
  loc_1EF7AA8: var_148 = "ODC"
  loc_1EF7AEF: Proc_165_0_14CCDD8("Banquet Reports (MIS)", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcMisR", 0)
  loc_1EF7B04: var_148 = "ODC"
  loc_1EF7B4B: Proc_165_0_14CCDD8("Cover Analysis", &H12, 1, "OutDoor Catering", "Banquet Reports (MIS)", 0, "OdcRep", 0)
  loc_1EF7B60: var_148 = "ODC"
  loc_1EF7BA7: Proc_165_0_14CCDD8("Collection Summary", &H12, 1, "OutDoor Catering", "Banquet Reports (MIS)", 1, "OdcMis", 0)
  loc_1EF7BBC: var_148 = "ODC"
  loc_1EF7C03: Proc_165_0_14CCDD8("Banquet Tax Reports", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcTax", 0)
  loc_1EF7C18: var_148 = "ODC"
  loc_1EF7C5F: Proc_165_0_14CCDD8("Tax Report", &H12, 1, "OutDoor Catering", "Banquet Tax Reports", 0, "OdcTaxR", 0)
  loc_1EF7C74: var_148 = "ODC"
  loc_1EF7CBB: Proc_165_0_14CCDD8("Tax Summary", &H12, 1, "OutDoor Catering", "Banquet Tax Reports", 1, "OdcTaxR", 0)
  loc_1EF7CD0: var_148 = "ODC"
  loc_1EF7D17: Proc_165_0_14CCDD8("Banquet Taxwise Details", &H12, 1, "OutDoor Catering", "Banquet Tax Reports", 2, "OdcTaxR", 0)
  loc_1EF7D2E: var_148 = 0
  loc_1EF7D75: Proc_165_0_14CCDD8("Night Audit", &H13, 4, vbNullString, vbNullString, 0, "NightAudit", 1)
  loc_1EF7D8C: var_148 = 0
  loc_1EF7DD3: Proc_165_0_14CCDD8("Night Audit Process", &H13, 0, vbNullString, vbNullString, 2, "NightAuditMenu", 1)
  loc_1EF7DEA: var_148 = 0
  loc_1EF7E31: Proc_165_0_14CCDD8("Reverse Night Audit", &H13, 0, vbNullString, vbNullString, &HD, "NightAuditMenu", 1)
  loc_1EF7E48: var_148 = 0
  loc_1EF7E8F: Proc_165_0_14CCDD8("Daily Report", &H13, 1, vbNullString, vbNullString, 6, "NightAuditMenu", 1)
  loc_1EF7EB9: Loop Until (InStr(2, MemVar_1F9522C, "#", 0) <> 0) 'do at: 1EE83E0
  loc_1EF7EC1: var_148 = 0
  loc_1EF7F02: var_124 = "Daily Report-II"
  loc_1EF7F08: Proc_165_0_14CCDD8("Daily Report", &H13, 1, vbNullString, vbNullString, 5, "NightAuditMenu", 1)
  loc_1EF7F1F: var_148 = 0
  loc_1EF7F66: Proc_165_0_14CCDD8("Charges Posting", &H13, 0, vbNullString, vbNullString, 1, "NightAuditMenu", 1)
  loc_1EF7F7D: var_148 = 0
  loc_1EF7FC4: Proc_165_0_14CCDD8("Room Inventory", &H13, 1, vbNullString, vbNullString, 0, "NightAuditMenu", 1)
  loc_1EF7FDB: var_148 = 0
  loc_1EF8022: Proc_165_0_14CCDD8("Charge Payment Detail", &H13, 1, vbNullString, vbNullString, 3, "NightAuditMenu", 1)
  loc_1EF8039: var_148 = 0
  loc_1EF8080: Proc_165_0_14CCDD8("Guest Trail", &H13, 1, vbNullString, vbNullString, 4, "NightAuditMenu", 1)
  loc_1EF8097: var_148 = 0
  loc_1EF80DE: Proc_165_0_14CCDD8("Occupancy Analysis", &H13, 1, vbNullString, vbNullString, 7, "NightAuditMenu", 1)
  loc_1EF80F5: var_148 = 0
  loc_1EF813C: Proc_165_0_14CCDD8("Market Segment Analysis", &H13, 1, vbNullString, vbNullString, 8, "NightAuditMenu", 1)
  loc_1EF8153: var_148 = 0
  loc_1EF819A: Proc_165_0_14CCDD8("Business Source Analysis", &H13, 1, vbNullString, vbNullString, 9, "NightAuditMenu", 1)
  loc_1EF81B1: var_148 = 0
  loc_1EF81F8: Proc_165_0_14CCDD8("Company Analysis", &H13, 1, vbNullString, vbNullString, &HA, "NightAuditMenu", 1)
  loc_1EF820F: var_148 = 0
  loc_1EF8256: Proc_165_0_14CCDD8("Travel Agent Analysis", &H13, 1, vbNullString, vbNullString, &HB, "NightAuditMenu", 1)
  loc_1EF826D: var_148 = 0
  loc_1EF82B4: Proc_165_0_14CCDD8("Guest Audit Ledger", &H13, 1, vbNullString, vbNullString, &H14, "NightAuditMenu", 1)
  loc_1EF82CB: var_148 = 0
  loc_1EF8312: Proc_165_0_14CCDD8("Charges Remove Log", &H13, 1, vbNullString, vbNullString, &H16, "NightAuditMenu", 1)
  loc_1EF8329: var_148 = 0
  loc_1EF8370: Proc_165_0_14CCDD8("FOCC Report", &H13, 1, vbNullString, vbNullString, &H10, "NightAuditMenu", 1)
  loc_1EF8387: var_148 = 0
  loc_1EF83CE: Proc_165_0_14CCDD8("Checkout Analysis", &H13, 1, vbNullString, vbNullString, &H15, "NightAuditMenu", 1)
  loc_1EF83E5: var_148 = 0
  loc_1EF842C: Proc_165_0_14CCDD8("Account Posting", &H13, 0, vbNullString, vbNullString, &HC, "NightAuditMenu", 1)
  loc_1EF8443: var_148 = 0
  loc_1EF848A: Proc_165_0_14CCDD8("Food Costing Report", &H13, 1, vbNullString, vbNullString, &HE, "NightAuditMenu", 1)
  loc_1EF84A1: var_148 = 0
  loc_1EF84E8: Proc_165_0_14CCDD8("Revenue Analysis", &H13, 1, vbNullString, vbNullString, &HF, "NightAuditMenu", 1)
  loc_1EF84FF: var_148 = 0
  loc_1EF8546: Proc_165_0_14CCDD8("F&&B Cost Statement", &H13, 1, vbNullString, vbNullString, &H11, "NightAuditMenu", 1)
  loc_1EF855D: var_148 = 0
  loc_1EF85A4: Proc_165_0_14CCDD8("Budget Analysis", &H13, 1, vbNullString, vbNullString, &H12, "NightAuditMenu", 1)
  loc_1EF85BB: var_148 = 0
  loc_1EF8602: Proc_165_0_14CCDD8("Night Audit Log", &H13, 1, vbNullString, vbNullString, &H13, "NightAuditMenu", 1)
  loc_1EF8619: var_148 = 0
  loc_1EF8660: Proc_165_0_14CCDD8("Ageing Analysis (Debtors)", &H13, 1, vbNullString, vbNullString, &H29, "NightAuditMenu", 1)
  loc_1EF8677: var_148 = 0
  loc_1EF86BE: Proc_165_0_14CCDD8("Ageing Analysis (Creditors)", &H13, 1, vbNullString, vbNullString, &H2A, "NightAuditMenu", 1)
  loc_1EF86E8: Loop Until (InStr(2, MemVar_1F9522C, "*", 0) <> 0) 'do at: 1EE8CCB
  loc_1EF86F0: var_148 = 0
  loc_1EF8737: Proc_165_0_14CCDD8("PayRoll", &H14, 4, vbNullString, vbNullString, 0, "PayRoll", 1)
  loc_1EF874E: var_148 = 0
  loc_1EF8795: Proc_165_0_14CCDD8("Leave Entry", &H14, 0, vbNullString, vbNullString, 4, "Pay", 1)
  loc_1EF87AC: var_148 = 0
  loc_1EF87F3: Proc_165_0_14CCDD8("Loan/Advance Entry", &H14, 0, vbNullString, vbNullString, 6, "Pay", 1)
  loc_1EF880A: var_148 = 0
  loc_1EF8851: Proc_165_0_14CCDD8("Salary Creation", &H14, 0, vbNullString, vbNullString, 7, "Pay", 1)
  loc_1EF8868: var_148 = 0
  loc_1EF88AF: Proc_165_0_14CCDD8("Leave Encashment", &H14, 0, vbNullString, vbNullString, 8, "Pay", 1)
  loc_1EF88C6: var_148 = 0
  loc_1EF890D: Proc_165_0_14CCDD8("Over Time Entry", &H14, 0, vbNullString, vbNullString, 9, "Pay", 1)
  loc_1EF8924: var_148 = 0
  loc_1EF8965: var_124 = "-"
  loc_1EF896B: Proc_165_0_14CCDD8("Over Time Entry", &H14, 0, vbNullString, vbNullString, &HA, "Pay", 1)
  loc_1EF8982: var_148 = 0
  loc_1EF89C9: Proc_165_0_14CCDD8("Attendence Report", &H14, 1, vbNullString, vbNullString, &HB, "Pay", 1)
  loc_1EF89E0: var_148 = 0
  loc_1EF8A27: Proc_165_0_14CCDD8("Pay Slip", &H14, 1, vbNullString, vbNullString, &HC, "Pay", 1)
  loc_1EF8A3E: var_148 = 0
  loc_1EF8A85: Proc_165_0_14CCDD8("Loan Register", &H14, 1, vbNullString, vbNullString, &HD, "Pay", 1)
  loc_1EF8A9C: var_148 = 0
  loc_1EF8AE3: Proc_165_0_14CCDD8("Loan Advance Summary", &H14, 1, vbNullString, vbNullString, &HE, "Pay", 1)
  loc_1EF8AFA: var_148 = 0
  loc_1EF8B41: Proc_165_0_14CCDD8("Payroll Register", &H14, 1, vbNullString, vbNullString, &HF, "Pay", 1)
  loc_1EF8B58: var_148 = 0
  loc_1EF8B9F: Proc_165_0_14CCDD8("PF Statement", &H14, 1, vbNullString, vbNullString, &H10, "Pay", 1)
  loc_1EF8BB6: var_148 = 0
  loc_1EF8BFD: Proc_165_0_14CCDD8("Loan/Advance Ledger", &H14, 1, vbNullString, vbNullString, &H11, "Pay", 1)
  loc_1EF8C14: var_148 = 0
  loc_1EF8C5B: Proc_165_0_14CCDD8("Form C", &H14, 1, vbNullString, vbNullString, &H12, "Pay", 1)
  loc_1EF8C72: var_148 = 0
  loc_1EF8CB9: Proc_165_0_14CCDD8("Gratuity Report", &H14, 1, vbNullString, vbNullString, &H13, "Pay", 1)
  loc_1EF8CE3: Loop Until (InStr(2, MemVar_1F9522C, "B", 0) <> 0) 'do at: 1EE8DA2
  loc_1EF8CEB: var_148 = 0
  loc_1EF8D32: Proc_165_0_14CCDD8("EPABX", &H15, 4, vbNullString, vbNullString, 0, "Telephone", 1)
  loc_1EF8D49: var_148 = 0
  loc_1EF8D90: Proc_165_0_14CCDD8("EPBAX Call Report", &H15, 1, vbNullString, vbNullString, 0, "mnuTelRep", 1)
  loc_1EF8DA7: var_148 = 0
  loc_1EF8DEE: Proc_165_0_14CCDD8("Messaging", &H16, 4, vbNullString, vbNullString, 0, "Message", 1)
  loc_1EF8E05: var_148 = 0
  loc_1EF8E4C: Proc_165_0_14CCDD8("InBox", &H16, 0, vbNullString, vbNullString, 0, "mnuMSG", 1)
  loc_1EF8E63: var_148 = 0
  loc_1EF8EAA: Proc_165_0_14CCDD8("OutBox", &H16, 0, vbNullString, vbNullString, 1, "mnuMSG", 1)
  loc_1EF8ED4: Loop Until (InStr(2, MemVar_1F9522C, "G", 0) <> 0) 'do at: 1EE9749
  loc_1EF8EDC: var_148 = 0
  loc_1EF8F23: Proc_165_0_14CCDD8("Members Mgmt", &H17, 4, vbNullString, vbNullString, 0, "Member", 1)
  loc_1EF8F3A: var_148 = 0
  loc_1EF8F81: Proc_165_0_14CCDD8("Operations", &H17, 3, vbNullString, vbNullString, &HFF, "MembOpr", 1)
  loc_1EF8F98: var_148 = 0
  loc_1EF8FDF: Proc_165_0_14CCDD8("Member Visit Entry", &H17, 0, "Operations", vbNullString, 0, "MemOpr", 1)
  loc_1EF8FF6: var_148 = 0
  loc_1EF903D: Proc_165_0_14CCDD8("Member Renewal Entry", &H17, 2, "Operations", vbNullString, 1, "MemOpr", 1)
  loc_1EF9054: var_148 = 0
  loc_1EF909B: Proc_165_0_14CCDD8("Member Used Facility Entry", &H17, 0, "Operations", vbNullString, 2, "MemOpr", 1)
  loc_1EF90B2: var_148 = 0
  loc_1EF90F9: Proc_165_0_14CCDD8("Member Facility Billing", &H17, 0, "Operations", vbNullString, 3, "MemOpr", 1)
  loc_1EF9110: var_148 = 0
  loc_1EF9157: Proc_165_0_14CCDD8("Member Bill Printing", &H17, 0, "Operations", vbNullString, 4, "MemOpr", 1)
  loc_1EF916E: var_148 = 0
  loc_1EF91B5: Proc_165_0_14CCDD8("Member Assistant", &H17, 0, "Operations", vbNullString, 5, "MemOpr", 1)
  loc_1EF91CC: var_148 = 0
  loc_1EF9213: Proc_165_0_14CCDD8("Outstation Member Entry", &H17, 0, "Operations", vbNullString, 6, "MemOpr", 1)
  loc_1EF922A: var_148 = 0
  loc_1EF9271: Proc_165_0_14CCDD8("Member Category Change Entry", &H17, 0, "Operations", vbNullString, 7, "MemOpr", 1)
  loc_1EF9288: var_148 = 0
  loc_1EF92CF: Proc_165_0_14CCDD8("Payment Receive Entry", &H17, 0, "Operations", vbNullString, 8, "MemOpr", 1)
  loc_1EF92E6: var_148 = 0
  loc_1EF932D: Proc_165_0_14CCDD8("Revenue Change Entry", &H17, 0, "Operations", vbNullString, 9, "MemOpr", 1)
  loc_1EF9344: var_148 = 0
  loc_1EF938B: Proc_165_0_14CCDD8("Payment Due Letter Entry", &H17, 0, "Operations", vbNullString, &HA, "MemOpr", 1)
  loc_1EF93A2: var_148 = 0
  loc_1EF93E9: Proc_165_0_14CCDD8("Member Category Change (Conditional)", &H17, 0, "Operations", vbNullString, &HB, "MemOpr", 1)
  loc_1EF9400: var_148 = 0
  loc_1EF9447: Proc_165_0_14CCDD8("Reports", &H17, 3, vbNullString, vbNullString, &HFF, "MembRpt", 1)
  loc_1EF945E: var_148 = 0
  loc_1EF94A5: Proc_165_0_14CCDD8("Member Visit Details", &H17, 1, "Reports", vbNullString, 0, "MemRpt", 1)
  loc_1EF94BC: var_148 = 0
  loc_1EF9503: Proc_165_0_14CCDD8("Member Mailing Labels", &H17, 1, "Reports", vbNullString, 1, "MemRpt", 1)
  loc_1EF951A: var_148 = 0
  loc_1EF9561: Proc_165_0_14CCDD8("Member Bill Missing Report", &H17, 1, "Reports", vbNullString, 2, "MemRpt", 1)
  loc_1EF9578: var_148 = 0
  loc_1EF95BF: Proc_165_0_14CCDD8("Member Sales Register", &H17, 1, "Reports", vbNullString, 3, "MemRpt", 1)
  loc_1EF95D6: var_148 = 0
  loc_1EF961D: Proc_165_0_14CCDD8("Member Ledger", &H17, 1, "Reports", vbNullString, 4, "MemRpt", 1)
  loc_1EF9634: var_148 = 0
  loc_1EF967B: Proc_165_0_14CCDD8("Member Tax Report", &H17, 1, "Reports", vbNullString, 5, "MemRpt", 1)
  loc_1EF9692: var_148 = 0
  loc_1EF96D9: Proc_165_0_14CCDD8("Payment Due Letter Report", &H17, 1, "Reports", vbNullString, 6, "MemRpt", 1)
  loc_1EF96F0: var_148 = 0
  loc_1EF9737: Proc_165_0_14CCDD8("Member Birthday/Anniversary Details", &H17, 1, "Reports", vbNullString, 7, "MemRpt", 1)
  loc_1EF9761: Loop Until (InStr(2, MemVar_1F9522C, "+", 0) <> 0) 'do at: 1EE9998
  loc_1EF9769: var_148 = 0
  loc_1EF97B0: Proc_165_0_14CCDD8("SMS", &H18, 4, vbNullString, vbNullString, 0, "SMS", 1)
  loc_1EF97C7: var_148 = 0
  loc_1EF980E: Proc_165_0_14CCDD8("General Setup", &H18, 3, vbNullString, vbNullString, &HFF, "SMSG", 1)
  loc_1EF9825: var_148 = 0
  loc_1EF986C: Proc_165_0_14CCDD8("SMS Center Settings", &H18, 0, "General Setup", vbNullString, 1, "SMSGEN", 1)
  loc_1EF9883: var_148 = 0
  loc_1EF98CA: Proc_165_0_14CCDD8("SMS Environment Settings", &H18, 0, "General Setup", vbNullString, 2, "SMSGEN", 1)
  loc_1EF98E1: var_148 = 0
  loc_1EF9928: Proc_165_0_14CCDD8("Send SMS", &H18, 3, vbNullString, vbNullString, &HFF, "SMSSD", 1)
  loc_1EF993F: var_148 = 0
  loc_1EF9986: Proc_165_0_14CCDD8("Multiple SMS Type", &H18, 0, "Send SMS", vbNullString, 1, "SMSSEND", 1)
  loc_1EF99B0: Loop Until (InStr(2, MemVar_1F9522C, "W", 0) <> 0) 'do at: 1EE9DBD
  loc_1EF99B8: var_148 = 0
  loc_1EF99FF: Proc_165_0_14CCDD8("Mall Management", &H19, 4, vbNullString, vbNullString, 0, "MallManage", 1)
  loc_1EF9A16: var_148 = 0
  loc_1EF9A5D: Proc_165_0_14CCDD8("Operations", &H19, 3, vbNullString, vbNullString, &HFF, "MallOpr", 1)
  loc_1EF9A74: var_148 = 0
  loc_1EF9AB5: var_124 = "Location-Master"
  loc_1EF9ABB: Proc_165_0_14CCDD8("Operations", &H19, 0, "Operations", vbNullString, 0, "MallMgmt", 1)
  loc_1EF9AD2: var_148 = 0
  loc_1EF9B19: Proc_165_0_14CCDD8("Facility Master", &H19, 0, "Operations", vbNullString, 1, "MallMgmt", 1)
  loc_1EF9B30: var_148 = 0
  loc_1EF9B77: Proc_165_0_14CCDD8("Location Facilities", &H19, 0, "Operations", vbNullString, 2, "MallMgmt", 1)
  loc_1EF9B8E: var_148 = 0
  loc_1EF9BD5: Proc_165_0_14CCDD8("Party Locations", &H19, 0, "Operations", vbNullString, 3, "MallMgmt", 1)
  loc_1EF9BEC: var_148 = 0
  loc_1EF9C33: Proc_165_0_14CCDD8("Meter Reading", &H19, 0, "Operations", vbNullString, 4, "MallMgmt", 1)
  loc_1EF9C4A: var_148 = 0
  loc_1EF9C91: Proc_165_0_14CCDD8("Facility Billing", &H19, 0, "Operations", vbNullString, 5, "MallMgmt", 1)
  loc_1EF9CA8: var_148 = 0
  loc_1EF9CEF: Proc_165_0_14CCDD8("Facility Sundry Setting", &H19, 2, "Operations", vbNullString, 6, "MallMgmt", 1)
  loc_1EF9D06: var_148 = 0
  loc_1EF9D4D: Proc_165_0_14CCDD8("Reports", &H19, 3, vbNullString, vbNullString, &HFF, "MallMgmtRpt", 1)
  loc_1EF9D64: var_148 = 0
  loc_1EF9DAB: Proc_165_0_14CCDD8("Facility Bill Register", &H19, 1, "Reports", vbNullString, 0, "MallRep", 1)
  loc_1EF9DD5: Loop Until (InStr(2, MemVar_1F9522C, "X", 0) <> 0) 'do at: 1EEA06A
  loc_1EF9DDD: var_148 = 0
  loc_1EF9E24: Proc_165_0_14CCDD8("Smart Card", &H1A, 4, vbNullString, vbNullString, 0, "SCard", 1)
  loc_1EF9E3B: var_148 = 0
  loc_1EF9E82: Proc_165_0_14CCDD8("Registration Entry", &H1A, 0, vbNullString, vbNullString, 1, "SCRD", 1)
  loc_1EF9E99: var_148 = 0
  loc_1EF9EE0: Proc_165_0_14CCDD8("Recharge/Refund Entry", &H1A, 0, vbNullString, vbNullString, 2, "SCRD", 1)
  loc_1EF9EF7: var_148 = 0
  loc_1EF9F38: var_124 = "-"
  loc_1EF9F3E: Proc_165_0_14CCDD8("Recharge/Refund Entry", &H1A, 0, vbNullString, vbNullString, &H28, "SCRD", 0)
  loc_1EF9F55: var_148 = 0
  loc_1EF9F9C: Proc_165_0_14CCDD8("Cash Card Transaction Report", &H1A, 1, vbNullString, vbNullString, &H29, "SCRD", 1)
  loc_1EF9FB3: var_148 = 0
  loc_1EF9FFA: Proc_165_0_14CCDD8("Cash Card Collection Summary", &H1A, 1, vbNullString, vbNullString, &H2A, "SCRD", 1)
  loc_1EFA011: var_148 = 0
  loc_1EFA058: Proc_165_0_14CCDD8("Card Status Report", &H1A, 1, vbNullString, vbNullString, &H2B, "SCRD", 1)
  loc_1EFA06F: var_148 = 0
  loc_1EFA0B6: Proc_165_0_14CCDD8("Windows", &H2E, 2, vbNullString, vbNullString, 0, "mnuWindow", 1)
  loc_1EFA0CD: var_148 = 0
  loc_1EFA114: Proc_165_0_14CCDD8("Exit", &H2F, 2, vbNullString, vbNullString, 0, "mnuExit", 1)
  loc_1EFA12B: var_148 = 0
  loc_1EFA172: Proc_165_0_14CCDD8("MDI", &H32, 2, vbNullString, vbNullString, 0, "mnuMdI", 1)
  loc_1EFA189: Set var_88 = Nothing
  loc_1EFA18C: Exit Sub
End Sub

Public Sub Proc_165_2_1E4D9D4(arg_C, arg_10) '1E4D9D4
  'Data Table: 4E88A8
  Dim unk_4E8B19 As Connection15
  Dim var_F0 As Variant
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4E88AE As Connection15
  Dim var_B8 As Recordset15
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim MemVar_1F95210 As String
  Dim var_130 As Long
  Dim var_114 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_174 As String
  Dim var_178 As String
  Dim var_88 As Recordset15
  Dim var_B0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_124 As Variant
  Dim MemVar_1F951A8 As String
  loc_1E43E7C: On Error Resume Next
  loc_1E43E97: unk_4E8B19.Execute "Select * from Enviro", var_DC, -1
  loc_1E43EA2: Set var_B8 = var_E0
  loc_1E43ECA: Proc_6_17_EAAE40(var_DC, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_124)
  loc_1E43ED2: var_100 = -1 & var_DC 
  loc_1E43EE0: unk_4E88AE.Execute CStr(var_100), var_E0, var_E0
  loc_1E43EEB: Set var_BC = var_E0
  loc_1E43F13: If (var_B8.RecordCount > 0) Then
  loc_1E43F27:   var_E0 = var_B8.Fields
  loc_1E43F40:   MemVar_1F95210 = Proc_6_38_E69628(CVar(var_E0.Item("TouchScreen")))
  loc_1E43F4A: End If
  loc_1E43F4E: Close 1
  loc_1E43F59: Open "C:\moduleFILE.TXT" For Append As 1 Len = &HFF
  loc_1E43F62: var_130 = arg_C
  loc_1E43F70: If (var_130 = 0) Then
  loc_1E43F73:   GoTo loc_1E3D9A9
  loc_1E43F76: End If
  loc_1E43F91: var_94 = CStr(Trim(CVar(Proc_165_3_EF1F5C(arg_C, var_130))))
  loc_1E43FA8: var_100 = " > "
  loc_1E43FB3: var_DC = vbNullString
  loc_1E43FC8: var_124 = IIf((arg_10 = vbNullString), var_DC, var_100)
  loc_1E43FD0: var_150 = (CVar(arg_10) + var_124)
  loc_1E43FDA: var_170 = (var_150 + CVar(var_94))
  loc_1E43FDF: arg_10 = CStr(var_170)
  loc_1E44016: var_178 = "SELECT Param_Str AS UPrivilege,Module_Name,OutletCode FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_1E44032: unk_4E88AE.Execute var_178 & "' AND Code=" & CStr(arg_C), var_DC, -1
  loc_1E4403D: Set var_88 = var_E0
  loc_1E4406B: If (var_88.RecordCount > 0) Then
  loc_1E440D3:   var_A8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Module_name")), CStr(var_88.Fields.Item("UPrivilege").Value))
  loc_1E440ED:   var_E0 = var_88.Fields
  loc_1E44106:   var_AC = Proc_6_38_E69628(CVar(var_E0.Item("OutletCode")), var_E0)
  loc_1E4410F: End If
  loc_1E44118: Set var_88 = Nothing
  loc_1E44120: var_188 = var_94
  loc_1E4412D: If (var_188 = "Exit") Then
  loc_1E44132:   End
  loc_1E44134:   GoTo loc_1E3D9A1
  loc_1E44137: End If
  loc_1E44141: If (var_188 = "Sales Day Book") Then
  loc_1E4414A:   Set var_90 = New rPOSRepView
  loc_1E44158:   var_90.GRepFormName = "SalesDayBook"
  loc_1E44168:   var_90.CAPTION = CVar(arg_10)
  loc_1E44171:   Call var_90.Show
  loc_1E44177:   GoTo loc_1E3D9A1
  loc_1E4417A: End If
  loc_1E44184: If (var_188 = "Daily Report-II") Then
  loc_1E4418D:   Set var_90 = New rFomRepView
  loc_1E44192:   var_CC = "Daily Report-II"
  loc_1E4419B:   var_90.GRepFormName = CVar(arg_10)
  loc_1E441AB:   var_90.CAPTION = CVar(arg_10)
  loc_1E441B4:   Call var_90.Show
  loc_1E441BA:   GoTo loc_1E3D9A1
  loc_1E441BD: End If
  loc_1E441C7: If (var_188 = "Night Audit Control Panel") Then
  loc_1E441D0:   Set var_90 = New FrmControlPanel
  loc_1E441DF:   var_90.CAPTION = CVar(arg_10)
  loc_1E441E8:   Call var_90.Show
  loc_1E441EE:   GoTo loc_1E3D9A1
  loc_1E441F1: End If
  loc_1E441FB: If Not (var_188 = "Food Costing") Then
  loc_1E44206:   If (var_188 = "Food Costing Report") Then
  loc_1E44209:   End If
  loc_1E4420F:   Set var_90 = New rFomRepView
  loc_1E4421D:   var_90.GRepFormName = "FoodCost"
  loc_1E4422D:   var_90.CAPTION = CVar(arg_10)
  loc_1E44236:   Call var_90.Show
  loc_1E4423C:   GoTo loc_1E3D9A1
  loc_1E4423F: End If
  loc_1E44249: If (var_188 = "Revenue Analysis") Then
  loc_1E44252:   Set var_90 = New rFomRepView
  loc_1E44260:   var_90.GRepFormName = "RevAnalysis"
  loc_1E44270:   var_90.CAPTION = CVar(arg_10)
  loc_1E44279:   Call var_90.Show
  loc_1E4427F:   GoTo loc_1E3D9A1
  loc_1E44282: End If
  loc_1E4428C: If (var_188 = "FOCC Report") Then
  loc_1E44295:   Set var_90 = New rFomRepView
  loc_1E442A3:   var_90.GRepFormName = "FOCC Report"
  loc_1E442B3:   var_90.CAPTION = CVar(arg_10)
  loc_1E442BC:   Call var_90.Show
  loc_1E442C2:   GoTo loc_1E3D9A1
  loc_1E442C5: End If
  loc_1E442CF: If (var_188 = "Budget Analysis") Then
  loc_1E442D8:   Set var_90 = New rFomRepView
  loc_1E442E6:   var_90.GRepFormName = "BudgetAnalysis"
  loc_1E442F6:   var_90.CAPTION = CVar(arg_10)
  loc_1E442FF:   Call var_90.Show
  loc_1E44305:   GoTo loc_1E3D9A1
  loc_1E44308: End If
  loc_1E44312: If (var_188 = "Night Audit Log") Then
  loc_1E4431B:   Set var_90 = New rFomRepView
  loc_1E44329:   var_90.GRepFormName = "NightAuditReport"
  loc_1E44339:   var_90.CAPTION = CVar(arg_10)
  loc_1E44342:   Call var_90.Show
  loc_1E44348:   GoTo loc_1E3D9A1
  loc_1E4434B: End If
  loc_1E44355: If (var_188 = "Guest Audit Ledger") Then
  loc_1E4435E:   Set var_90 = New rFomRepView
  loc_1E4436C:   var_90.GRepFormName = "GuestLedger"
  loc_1E4437C:   var_90.CAPTION = CVar(arg_10)
  loc_1E44385:   Call var_90.Show
  loc_1E4438B:   GoTo loc_1E3D9A1
  loc_1E4438E: End If
  loc_1E44398: If (var_188 = "Checkout Analysis") Then
  loc_1E443A1:   Set var_90 = New rFomRepView
  loc_1E443AF:   var_90.GRepFormName = "NightAuditReportI"
  loc_1E443BF:   var_90.CAPTION = CVar(arg_10)
  loc_1E443C8:   Call var_90.Show
  loc_1E443CE:   GoTo loc_1E3D9A1
  loc_1E443D1: End If
  loc_1E443DB: If (var_188 = "Charges Remove Log") Then
  loc_1E443E4:   Set var_90 = New rFomRepView
  loc_1E443F2:   var_90.GRepFormName = "GuestChgJournalLog"
  loc_1E44402:   var_90.CAPTION = CVar(arg_10)
  loc_1E4440B:   Call var_90.Show
  loc_1E44411:   GoTo loc_1E3D9A1
  loc_1E44414: End If
  loc_1E4441E: If (var_188 = "Ageing Analysis (Debtors)") Then
  loc_1E44427:   Set var_90 = New FaReports
  loc_1E44435:   var_90.GRepFormName = "AgingRepDr"
  loc_1E44445:   var_90.CAPTION = CVar(arg_10)
  loc_1E4444B:   var_114 = False
  loc_1E44461:   var_90.BTNPRINT.Visible = 1
  loc_1E4446D:   Call var_90.Show
  loc_1E44473:   GoTo loc_1E3D9A1
  loc_1E44476: End If
  loc_1E44480: If (var_188 = "Ageing Analysis (Creditors)") Then
  loc_1E44489:   Set var_90 = New FaReports
  loc_1E44497:   var_90.GRepFormName = "AgingRepCr"
  loc_1E444A7:   var_90.CAPTION = CVar(arg_10)
  loc_1E444AD:   var_114 = False
  loc_1E444BB:   var_DC = var_90.BTNPRINT
  loc_1E444C3:   var_DC.Visible = 1
  loc_1E444CF:   Call var_90.Show
  loc_1E444D5:   GoTo loc_1E3D9A1
  loc_1E444D8: End If
  loc_1E444E2: If Not (var_188 = "F&&B Cost Statement") Then
  loc_1E444ED:   If (var_188 = "FB Cost Statement") Then
  loc_1E444F0:   End If
  loc_1E444F6:   Set var_90 = New rFomRepView
  loc_1E44504:   var_90.GRepFormName = "FBCostStatement"
  loc_1E44514:   var_90.CAPTION = CVar(arg_10)
  loc_1E4451D:   Call var_90.Show
  loc_1E44523:   GoTo loc_1E3D9A1
  loc_1E44526: End If
  loc_1E44530: If (var_188 = "Tally POS Report") Then
  loc_1E44539:   Set var_90 = New rFomRepView
  loc_1E44547:   var_90.GRepFormName = "TallyPOSReport"
  loc_1E44557:   var_90.CAPTION = CVar(arg_10)
  loc_1E44560:   Call var_90.Show
  loc_1E44566:   GoTo loc_1E3D9A1
  loc_1E44569: End If
  loc_1E44573: If (var_188 = "GSTR-1") Then
  loc_1E4457C:   Set var_90 = New rFomRepView
  loc_1E4458A:   var_90.GRepFormName = "GSTR1"
  loc_1E4459A:   var_90.CAPTION = CVar(arg_10)
  loc_1E445A3:   Call var_90.Show
  loc_1E445A9:   GoTo loc_1E3D9A1
  loc_1E445AC: End If
  loc_1E445B6: If (var_188 = "GSTR-2(3)") Then
  loc_1E445BF:   Set var_90 = New rFomRepView
  loc_1E445CD:   var_90.GRepFormName = "GSTR2(3)"
  loc_1E445DD:   var_90.CAPTION = CVar(arg_10)
  loc_1E445E6:   Call var_90.Show
  loc_1E445EC:   GoTo loc_1E3D9A1
  loc_1E445EF: End If
  loc_1E445F9: If (var_188 = "GSTR-2(4A)") Then
  loc_1E44602:   Set var_90 = New rFomRepView
  loc_1E44610:   var_90.GRepFormName = "GSTR2(4A)"
  loc_1E44620:   var_90.CAPTION = CVar(arg_10)
  loc_1E44629:   Call var_90.Show
  loc_1E4462F:   GoTo loc_1E3D9A1
  loc_1E44632: End If
  loc_1E4463C: If (var_188 = "GSTR-2(4B)") Then
  loc_1E44645:   Set var_90 = New rFomRepView
  loc_1E44653:   var_90.GRepFormName = "GSTR2(4B)"
  loc_1E44663:   var_90.CAPTION = CVar(arg_10)
  loc_1E4466C:   Call var_90.Show
  loc_1E44672:   GoTo loc_1E3D9A1
  loc_1E44675: End If
  loc_1E4467F: If (var_188 = "Reconciliation (GSTR-2A)") Then
  loc_1E44688:   Set var_90 = New rFomRepView
  loc_1E44696:   var_90.GRepFormName = "Reconciliation(R2A)"
  loc_1E446A6:   var_90.CAPTION = CVar(arg_10)
  loc_1E446AF:   Call var_90.Show
  loc_1E446B5:   GoTo loc_1E3D9A1
  loc_1E446B8: End If
  loc_1E446C2: If (var_188 = "Upload Process") Then
  loc_1E446CB:   Set var_90 = New FrmUploadProcess
  loc_1E446DA:   var_90.CAPTION = CVar(arg_10)
  loc_1E446E3:   Call var_90.Show
  loc_1E446E9:   GoTo loc_1E3D9A1
  loc_1E446EC: End If
  loc_1E446F6: If (var_188 = "Package Master") Then
  loc_1E446FF:   Set var_90 = New FrmPackageMast
  loc_1E4470D:   var_90.MyType = "Package"
  loc_1E4471D:   var_90.CAPTION = CVar(arg_10)
  loc_1E44726:   Call var_90.Show
  loc_1E4472C:   GoTo loc_1E3D9A1
  loc_1E4472F: End If
  loc_1E44739: If Not (var_188 = "Year End Updation ") Then
  loc_1E44744:   If (var_188 = "Year End Updation") Then
  loc_1E44747:   End If
  loc_1E4474D:   Set var_90 = New frmYearEnd
  loc_1E4475C:   var_90.CAPTION = CVar(arg_10)
  loc_1E44765:   Call var_90.Show
  loc_1E4476B:   GoTo loc_1E3D9A1
  loc_1E4476E: End If
  loc_1E44778: If (var_188 = "Plan Master") Then
  loc_1E447A1:   unk_4E88AE.Execute "Select PlanMastType from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_DC, -1
  loc_1E447FA:   If (var_E0.Fields.Fields.Item("PlanMastType").Value = "Advanced") Then
  loc_1E44803:     Set var_90 = New FrmPackageMast
  loc_1E44811:     var_90.MyType = "Plan"
  loc_1E44821:     var_90.CAPTION = CVar(arg_10)
  loc_1E4482A:     Call var_90.Show
  loc_1E44833:   Else
  loc_1E4483B:     Set var_90 = New FrmPlanPackMast
  loc_1E4484A:     var_90.CAPTION = CVar(arg_10)
  loc_1E44853:     Call var_90.Show
  loc_1E44859:   End If
  loc_1E4485B:   GoTo loc_1E3D9A1
  loc_1E4485E: End If
  loc_1E44868: If (var_188 = "Account Posting") Then
  loc_1E44871:   Set var_90 = New fdNDAcPostChrg
  loc_1E44880:   var_90.CAPTION = CVar(arg_10)
  loc_1E44889:   Call var_90.Show
  loc_1E4488F:   GoTo loc_1E3D9A1
  loc_1E44892: End If
  loc_1E4489C: If (var_188 = "Voucher Entry") Then
  loc_1E448A5:   Set var_90 = New FaVrEnt
  loc_1E448B4:   var_90.CAPTION = CVar(arg_10)
  loc_1E448BD:   Call var_90.Show
  loc_1E448CE:   var_90.WindowState = 2
  loc_1E448D2:   GoTo loc_1E3D9A1
  loc_1E448D5: End If
  loc_1E448DF: If (var_188 = "Adjustment Entry") Then
  loc_1E448E8:   Set var_90 = New FaAdjust
  loc_1E448F7:   var_90.CAPTION = CVar(arg_10)
  loc_1E44900:   Call var_90.Show
  loc_1E44911:   var_90.WindowState = 2
  loc_1E44915:   GoTo loc_1E3D9A1
  loc_1E44918: End If
  loc_1E44922: If (var_188 = "Delete Adjustment Entry") Then
  loc_1E4492B:   Set var_90 = New FaAdjustDel
  loc_1E4493A:   var_90.CAPTION = CVar(arg_10)
  loc_1E44943:   Call var_90.Show
  loc_1E44954:   var_90.WindowState = 2
  loc_1E44958:   GoTo loc_1E3D9A1
  loc_1E4495B: End If
  loc_1E44965: If (var_188 = "Bank Reconciliation") Then
  loc_1E4496E:   Set var_90 = New FaChqClear
  loc_1E4497D:   var_90.CAPTION = CVar(arg_10)
  loc_1E44986:   Call var_90.Show
  loc_1E44997:   var_90.WindowState = 2
  loc_1E4499B:   GoTo loc_1E3D9A1
  loc_1E4499E: End If
  loc_1E449A8: If (var_188 = "T.D.S. Challan Entry") Then
  loc_1E449B1:   Set var_90 = New FaTDSChal
  loc_1E449C0:   var_90.CAPTION = CVar(arg_10)
  loc_1E449C9:   Call var_90.Show
  loc_1E449DA:   var_90.WindowState = 2
  loc_1E449DE:   GoTo loc_1E3D9A1
  loc_1E449E1: End If
  loc_1E449EB: If (var_188 = "T.D.S. Certificate Entry") Then
  loc_1E449F4:   Set var_90 = New FaTDSCertificate
  loc_1E44A03:   var_90.CAPTION = CVar(arg_10)
  loc_1E44A0C:   Call var_90.Show
  loc_1E44A1D:   var_90.WindowState = 2
  loc_1E44A21:   GoTo loc_1E3D9A1
  loc_1E44A24: End If
  loc_1E44A2E: If (var_188 = "Balance Sheet") Then
  loc_1E44A36:   var_A0 = "BALSHEET"
  loc_1E44A43:   If (var_A0 <> vbNullString) Then
  loc_1E44A4C:     Set var_90 = New FaMagic
  loc_1E44A58:     var_90.ShowSiteWise = True
  loc_1E44A68:     var_90.OpenType = CVar(var_A0)
  loc_1E44A78:     var_90.CAPTION = CVar(arg_10)
  loc_1E44A81:     Call var_90.Show
  loc_1E44A92:     var_90.WindowState = 2
  loc_1E44A96:   End If
  loc_1E44A98:   GoTo loc_1E3D9A1
  loc_1E44A9B: End If
  loc_1E44AA5: If (var_188 = "Profit And Loss Account") Then
  loc_1E44AAD:   var_A0 = "PROFLOSS"
  loc_1E44ABA:   If (var_A0 <> vbNullString) Then
  loc_1E44AC3:     Set var_90 = New FaMagic
  loc_1E44ACF:     var_90.ShowSiteWise = True
  loc_1E44ADF:     var_90.OpenType = CVar(var_A0)
  loc_1E44AEF:     var_90.CAPTION = CVar(arg_10)
  loc_1E44AF8:     Call var_90.Show
  loc_1E44B09:     var_90.WindowState = 2
  loc_1E44B0D:   End If
  loc_1E44B0F:   GoTo loc_1E3D9A1
  loc_1E44B12: End If
  loc_1E44B1C: If (var_188 = "Trial Balance (Group)") Then
  loc_1E44B24:   var_A0 = "GROUPTRIAL"
  loc_1E44B31:   If (var_A0 <> vbNullString) Then
  loc_1E44B3A:     Set var_90 = New FaMagic
  loc_1E44B46:     var_90.ShowSiteWise = True
  loc_1E44B56:     var_90.OpenType = CVar(var_A0)
  loc_1E44B66:     var_90.CAPTION = CVar(arg_10)
  loc_1E44B6F:     Call var_90.Show
  loc_1E44B80:     var_90.WindowState = 2
  loc_1E44B84:   End If
  loc_1E44B86:   GoTo loc_1E3D9A1
  loc_1E44B89: End If
  loc_1E44B93: If (var_188 = "Trial Balance") Then
  loc_1E44B9B:   var_A0 = "LEDTRIAL"
  loc_1E44BA8:   If (var_A0 <> vbNullString) Then
  loc_1E44BB1:     Set var_90 = New FaMagic
  loc_1E44BBD:     var_90.ShowSiteWise = True
  loc_1E44BCD:     var_90.OpenType = CVar(var_A0)
  loc_1E44BDD:     var_90.CAPTION = CVar(arg_10)
  loc_1E44BE6:     Call var_90.Show
  loc_1E44BF7:     var_90.WindowState = 2
  loc_1E44BFB:   End If
  loc_1E44BFD:   GoTo loc_1E3D9A1
  loc_1E44C00: End If
  loc_1E44C0A: If (var_188 = "Cash Flow") Then
  loc_1E44C12:   var_A0 = "CASHFLOW"
  loc_1E44C1F:   If (var_A0 <> vbNullString) Then
  loc_1E44C28:     Set var_90 = New FaMagic
  loc_1E44C34:     var_90.ShowSiteWise = True
  loc_1E44C44:     var_90.OpenType = CVar(var_A0)
  loc_1E44C54:     var_90.CAPTION = CVar(arg_10)
  loc_1E44C5D:     Call var_90.Show
  loc_1E44C6E:     var_90.WindowState = 2
  loc_1E44C72:   End If
  loc_1E44C74:   GoTo loc_1E3D9A1
  loc_1E44C77: End If
  loc_1E44C81: If (var_188 = "Fund Flow") Then
  loc_1E44C89:   var_A0 = "FUNDFLOW"
  loc_1E44C96:   If (var_A0 <> vbNullString) Then
  loc_1E44C9F:     Set var_90 = New FaMagic
  loc_1E44CAB:     var_90.ShowSiteWise = True
  loc_1E44CBB:     var_90.OpenType = CVar(var_A0)
  loc_1E44CCB:     var_90.CAPTION = CVar(arg_10)
  loc_1E44CD4:     Call var_90.Show
  loc_1E44CE5:     var_90.WindowState = 2
  loc_1E44CE9:   End If
  loc_1E44CEB:   GoTo loc_1E3D9A1
  loc_1E44CEE: End If
  loc_1E44CF8: If (var_188 = "Cash And Bank Books") Then
  loc_1E44D00:   var_A0 = "CASHBANKSUM"
  loc_1E44D0D:   If (var_A0 <> vbNullString) Then
  loc_1E44D16:     Set var_90 = New FaMagic
  loc_1E44D22:     var_90.ShowSiteWise = True
  loc_1E44D32:     var_90.OpenType = CVar(var_A0)
  loc_1E44D42:     var_90.CAPTION = CVar(arg_10)
  loc_1E44D4B:     Call var_90.Show
  loc_1E44D5C:     var_90.WindowState = 2
  loc_1E44D60:   End If
  loc_1E44D62:   GoTo loc_1E3D9A1
  loc_1E44D65: End If
  loc_1E44D6F: If (var_188 = "Day Book") Then
  loc_1E44D78:   Set var_90 = New FaReports
  loc_1E44D86:   var_90.GRepFormName = "DayBook"
  loc_1E44D96:   var_90.CAPTION = CVar(arg_10)
  loc_1E44D9F:   Call var_90.Show
  loc_1E44DA5:   GoTo loc_1E3D9A1
  loc_1E44DA8: End If
  loc_1E44DB2: If (var_188 = "Ledger") Then
  loc_1E44DBB:   Set var_90 = New FaReports
  loc_1E44DC9:   var_90.GRepFormName = "Led"
  loc_1E44DDB:   var_90.BtnParam.Visible = True
  loc_1E44DEE:   var_90.CAPTION = CVar(arg_10)
  loc_1E44DF7:   Call var_90.Show
  loc_1E44DFD:   GoTo loc_1E3D9A1
  loc_1E44E00: End If
  loc_1E44E0A: If (var_188 = "Interest Ledger") Then
  loc_1E44E13:   Set var_90 = New FaReports
  loc_1E44E21:   var_90.GRepFormName = "LedInt"
  loc_1E44E27:   var_114 = False
  loc_1E44E3D:   var_90.BTNPRINT.Visible = 1
  loc_1E44E52:   var_90.BtnParam.Visible = True
  loc_1E44E65:   var_90.CAPTION = CVar(arg_10)
  loc_1E44E6E:   Call var_90.Show
  loc_1E44E74:   GoTo loc_1E3D9A1
  loc_1E44E77: End If
  loc_1E44E81: If (var_188 = "Cash Book") Then
  loc_1E44E8A:   Set var_90 = New FaReports
  loc_1E44E98:   var_90.GRepFormName = "CashBook"
  loc_1E44EA8:   var_90.CAPTION = CVar(arg_10)
  loc_1E44EB1:   Call var_90.Show
  loc_1E44EB7:   GoTo loc_1E3D9A1
  loc_1E44EBA: End If
  loc_1E44EC4: If (var_188 = "Bank Book") Then
  loc_1E44ECD:   Set var_90 = New FaReports
  loc_1E44EDB:   var_90.GRepFormName = "BankBook"
  loc_1E44EEB:   var_90.CAPTION = CVar(arg_10)
  loc_1E44EF4:   Call var_90.Show
  loc_1E44EFA:   GoTo loc_1E3D9A1
  loc_1E44EFD: End If
  loc_1E44F07: If (var_188 = "Journal Books") Then
  loc_1E44F10:   Set var_90 = New FaReports
  loc_1E44F1E:   var_90.GRepFormName = "JournalBook"
  loc_1E44F2E:   var_90.CAPTION = CVar(arg_10)
  loc_1E44F37:   Call var_90.Show
  loc_1E44F3D:   GoTo loc_1E3D9A1
  loc_1E44F40: End If
  loc_1E44F4A: If (var_188 = "Annexure") Then
  loc_1E44F53:   Set var_90 = New FaReports
  loc_1E44F61:   var_90.GRepFormName = "Annexure"
  loc_1E44F71:   var_90.CAPTION = CVar(arg_10)
  loc_1E44F7A:   Call var_90.Show
  loc_1E44F80:   GoTo loc_1E3D9A1
  loc_1E44F83: End If
  loc_1E44F8D: If (var_188 = "Bank Register") Then
  loc_1E44F96:   Set var_90 = New FaReports
  loc_1E44FA4:   var_90.GRepFormName = "BankReg"
  loc_1E44FB4:   var_90.CAPTION = CVar(arg_10)
  loc_1E44FBA:   var_114 = False
  loc_1E44FD0:   var_90.BTNPRINT.Visible = 1
  loc_1E44FDC:   Call var_90.Show
  loc_1E44FE2:   GoTo loc_1E3D9A1
  loc_1E44FE5: End If
  loc_1E44FEF: If (var_188 = "Ageing Analysis for Debtors") Then
  loc_1E44FF8:   Set var_90 = New FaReports
  loc_1E45006:   var_90.GRepFormName = "AgingDr"
  loc_1E45016:   var_90.CAPTION = CVar(arg_10)
  loc_1E4501C:   var_114 = False
  loc_1E45032:   var_90.BTNPRINT.Visible = 1
  loc_1E4503E:   Call var_90.Show
  loc_1E45044:   GoTo loc_1E3D9A1
  loc_1E45047: End If
  loc_1E45051: If (var_188 = "Ageing Analysis for Creditors") Then
  loc_1E4505A:   Set var_90 = New FaReports
  loc_1E45068:   var_90.GRepFormName = "AgingCr"
  loc_1E45078:   var_90.CAPTION = CVar(arg_10)
  loc_1E4507E:   var_114 = False
  loc_1E45094:   var_90.BTNPRINT.Visible = 1
  loc_1E450A0:   Call var_90.Show
  loc_1E450A6:   GoTo loc_1E3D9A1
  loc_1E450A9: End If
  loc_1E450B3: If (var_188 = "Cheque Cleared Register") Then
  loc_1E450BC:   Set var_90 = New FaReports
  loc_1E450CA:   var_90.GRepFormName = "Clg"
  loc_1E450DA:   var_90.CAPTION = CVar(arg_10)
  loc_1E450E0:   var_114 = False
  loc_1E450F6:   var_90.BTNPRINT.Visible = 1
  loc_1E45102:   Call var_90.Show
  loc_1E45108:   GoTo loc_1E3D9A1
  loc_1E4510B: End If
  loc_1E45115: If (var_188 = "Cheque Not Cleared Register") Then
  loc_1E4511E:   Set var_90 = New FaReports
  loc_1E4512C:   var_90.GRepFormName = "ClgNot"
  loc_1E4513C:   var_90.CAPTION = CVar(arg_10)
  loc_1E45142:   var_114 = False
  loc_1E45158:   var_90.BTNPRINT.Visible = 1
  loc_1E45164:   Call var_90.Show
  loc_1E4516A:   GoTo loc_1E3D9A1
  loc_1E4516D: End If
  loc_1E45177: If (var_188 = "Outstanding Report For Debtors") Then
  loc_1E45180:   Set var_90 = New FaReports
  loc_1E4518E:   var_90.GRepFormName = "LedDeb"
  loc_1E45194:   var_114 = "Letter"
  loc_1E451AB:   var_90.BTNPRINT.CAPTION = 1
  loc_1E451B4:   var_114 = True
  loc_1E451C9:   var_90.BTNPRINT.Visible = 1
  loc_1E451DC:   var_90.CAPTION = CVar(arg_10)
  loc_1E451EE:   var_90.BtnParam.Visible = True
  loc_1E451FA:   Call var_90.Show
  loc_1E45200:   GoTo loc_1E3D9A1
  loc_1E45203: End If
  loc_1E4520D: If (var_188 = "Outstanding Report For Creditors") Then
  loc_1E45216:   Set var_90 = New FaReports
  loc_1E45224:   var_90.GRepFormName = "LedCred"
  loc_1E45234:   var_90.CAPTION = CVar(arg_10)
  loc_1E4523A:   var_114 = False
  loc_1E45250:   var_90.BTNPRINT.Visible = 1
  loc_1E45265:   var_90.BtnParam.Visible = True
  loc_1E45271:   Call var_90.Show
  loc_1E45277:   GoTo loc_1E3D9A1
  loc_1E4527A: End If
  loc_1E45284: If (var_188 = "Daily Transaction Summary") Then
  loc_1E4528D:   Set var_90 = New FaReports
  loc_1E4529B:   var_90.GRepFormName = "DailySumm"
  loc_1E452AB:   var_90.CAPTION = CVar(arg_10)
  loc_1E452B4:   Call var_90.Show
  loc_1E452BA:   GoTo loc_1E3D9A1
  loc_1E452BD: End If
  loc_1E452C7: If (var_188 = "Non Transaction Report") Then
  loc_1E452D0:   Set var_90 = New FaReports
  loc_1E452DE:   var_90.GRepFormName = "NonTrans"
  loc_1E452EE:   var_90.CAPTION = CVar(arg_10)
  loc_1E452F4:   var_114 = False
  loc_1E4530A:   var_90.BTNPRINT.Visible = 1
  loc_1E45316:   Call var_90.Show
  loc_1E4531C:   GoTo loc_1E3D9A1
  loc_1E4531F: End If
  loc_1E45329: If (var_188 = "Reference Report") Then
  loc_1E45332:   Set var_90 = New FaReports
  loc_1E45340:   var_90.GRepFormName = "RefReport"
  loc_1E45350:   var_90.CAPTION = CVar(arg_10)
  loc_1E45356:   var_114 = False
  loc_1E4536C:   var_90.BTNPRINT.Visible = 1
  loc_1E45378:   Call var_90.Show
  loc_1E4537E:   GoTo loc_1E3D9A1
  loc_1E45381: End If
  loc_1E4538B: If (var_188 = "Detailed Trial Ledger") Then
  loc_1E45394:   Set var_90 = New FaReports
  loc_1E453A2:   var_90.GRepFormName = "DetailedTrial"
  loc_1E453B2:   var_90.CAPTION = CVar(arg_10)
  loc_1E453B8:   var_114 = False
  loc_1E453CE:   var_90.BTNPRINT.Visible = 1
  loc_1E453DA:   Call var_90.Show
  loc_1E453E0:   GoTo loc_1E3D9A1
  loc_1E453E3: End If
  loc_1E453ED: If (var_188 = "A/c Check List") Then
  loc_1E453F6:   Set var_90 = New FaReports
  loc_1E45404:   var_90.GRepFormName = "AcCheckList"
  loc_1E45414:   var_90.CAPTION = CVar(arg_10)
  loc_1E45426:   var_90.BtnParam.Visible = True
  loc_1E45432:   Call var_90.Show
  loc_1E45438:   GoTo loc_1E3D9A1
  loc_1E4543B: End If
  loc_1E45445: If (var_188 = "Bill Wise Outstanding Report For Debtors") Then
  loc_1E4544E:   Set var_90 = New FaReports
  loc_1E4545C:   var_90.GRepFormName = "DUELIST"
  loc_1E4546C:   var_90.CAPTION = CVar(arg_10)
  loc_1E45475:   Call var_90.Show
  loc_1E4547B:   GoTo loc_1E3D9A1
  loc_1E4547E: End If
  loc_1E45488: If (var_188 = "Control Ledger") Then
  loc_1E45491:   Set var_90 = New FaReports
  loc_1E4549F:   var_90.GRepFormName = "CONTROLLED"
  loc_1E454AF:   var_90.CAPTION = CVar(arg_10)
  loc_1E454B8:   Call var_90.Show
  loc_1E454BE:   GoTo loc_1E3D9A1
  loc_1E454C1: End If
  loc_1E454CB: If (var_188 = "Day  Book") Then
  loc_1E454D4:   Set var_90 = New FaReports
  loc_1E454E2:   var_90.GRepFormName = "RozNamcha"
  loc_1E454F2:   var_90.CAPTION = CVar(arg_10)
  loc_1E454FB:   Call var_90.Show
  loc_1E45501:   GoTo loc_1E3D9A1
  loc_1E45504: End If
  loc_1E4550E: If (var_188 = "Journal Books Log") Then
  loc_1E45517:   Set var_90 = New FaReports
  loc_1E45525:   var_90.GRepFormName = "JournalBookLog"
  loc_1E45535:   var_90.CAPTION = CVar(arg_10)
  loc_1E4553E:   Call var_90.Show
  loc_1E45544:   GoTo loc_1E3D9A1
  loc_1E45547: End If
  loc_1E45551: If (var_188 = "Tax Master") Then
  loc_1E4555A:   Set var_90 = New FrmTaxMast
  loc_1E45569:   var_90.CAPTION = CVar(arg_10)
  loc_1E45572:   Call var_90.Show
  loc_1E45578:   GoTo loc_1E3D9A1
  loc_1E4557B: End If
  loc_1E45585: If (var_188 = "Tax Structure") Then
  loc_1E4558E:   Set var_90 = New FrmTaxStruMast
  loc_1E4559D:   var_90.CAPTION = CVar(arg_10)
  loc_1E455A6:   Call var_90.Show
  loc_1E455AC:   GoTo loc_1E3D9A1
  loc_1E455AF: End If
  loc_1E455B9: If (var_188 = "Payment Type") Then
  loc_1E455C2:   Set var_90 = New FrmPayTypeMast
  loc_1E455D1:   var_90.CAPTION = CVar(arg_10)
  loc_1E455DA:   Call var_90.Show
  loc_1E455E0:   GoTo loc_1E3D9A1
  loc_1E455E3: End If
  loc_1E455ED: If (var_188 = "Parameter") Then
  loc_1E455F6:   Set var_90 = New frmEnviro
  loc_1E45605:   var_90.CAPTION = CVar(arg_10)
  loc_1E4560E:   Call var_90.Show
  loc_1E45614:   GoTo loc_1E3D9A1
  loc_1E45617: End If
  loc_1E45621: If (var_188 = "Revenue Group Setting") Then
  loc_1E4562A:   Set var_90 = New frmRevGroup
  loc_1E45639:   var_90.CAPTION = CVar(arg_10)
  loc_1E45642:   Call var_90.Show
  loc_1E45648:   GoTo loc_1E3D9A1
  loc_1E4564B: End If
  loc_1E45655: If (var_188 = "Country Master") Then
  loc_1E4565E:   Set var_90 = New FaCountryMast
  loc_1E4566D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45676:   Call var_90.Show
  loc_1E4567C:   GoTo loc_1E3D9A1
  loc_1E4567F: End If
  loc_1E45689: If (var_188 = "State Master") Then
  loc_1E45692:   Set var_90 = New FaStateMast
  loc_1E456A1:   var_90.CAPTION = CVar(arg_10)
  loc_1E456AA:   Call var_90.Show
  loc_1E456B0:   GoTo loc_1E3D9A1
  loc_1E456B3: End If
  loc_1E456BD: If (var_188 = "City Master") Then
  loc_1E456C6:   Set var_90 = New FaCityMast
  loc_1E456D5:   var_90.CAPTION = CVar(arg_10)
  loc_1E456DE:   Call var_90.Show
  loc_1E456E4:   GoTo loc_1E3D9A1
  loc_1E456E7: End If
  loc_1E456F1: If (var_188 = "Market Segment") Then
  loc_1E456FA:   Set var_90 = New FrmMarketSeg
  loc_1E45709:   var_90.CAPTION = CVar(arg_10)
  loc_1E45712:   Call var_90.Show
  loc_1E45718:   GoTo loc_1E3D9A1
  loc_1E4571B: End If
  loc_1E45725: If (var_188 = "Business Source") Then
  loc_1E4572E:   Set var_90 = New FrmBusinessSrc
  loc_1E4573D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45746:   Call var_90.Show
  loc_1E4574C:   GoTo loc_1E3D9A1
  loc_1E4574F: End If
  loc_1E45759: If (var_188 = "Guest Status") Then
  loc_1E45762:   Set var_90 = New FrmGuestStat
  loc_1E45771:   var_90.CAPTION = CVar(arg_10)
  loc_1E4577A:   Call var_90.Show
  loc_1E45780:   GoTo loc_1E3D9A1
  loc_1E45783: End If
  loc_1E4578D: If (var_188 = "Charge Master") Then
  loc_1E45796:   Set var_90 = New FrmChargeMast
  loc_1E457A5:   var_90.CAPTION = CVar(arg_10)
  loc_1E457AE:   Call var_90.Show
  loc_1E457B4:   GoTo loc_1E3D9A1
  loc_1E457B7: End If
  loc_1E457C1: If (var_188 = "Plan/Package Master") Then
  loc_1E457CA:   Set var_90 = New FrmPlanPackMast
  loc_1E457D9:   var_90.CAPTION = CVar(arg_10)
  loc_1E457E2:   Call var_90.Show
  loc_1E457E8:   GoTo loc_1E3D9A1
  loc_1E457EB: End If
  loc_1E457F5: If (var_188 = "Season Master") Then
  loc_1E457FE:   Set var_90 = New frmSeasonMast
  loc_1E4580D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45816:   Call var_90.Show
  loc_1E4581C:   GoTo loc_1E3D9A1
  loc_1E4581F: End If
  loc_1E45829: If (var_188 = "Room Features") Then
  loc_1E45832:   Set var_90 = New FrmRoomFeatureMast
  loc_1E45841:   var_90.CAPTION = CVar(arg_10)
  loc_1E4584A:   Call var_90.Show
  loc_1E45850:   GoTo loc_1E3D9A1
  loc_1E45853: End If
  loc_1E4585D: If (var_188 = "Room Category") Then
  loc_1E45866:   Set var_90 = New FrmRoomCatMast
  loc_1E45875:   var_90.CAPTION = CVar(arg_10)
  loc_1E4587E:   Call var_90.Show
  loc_1E45884:   GoTo loc_1E3D9A1
  loc_1E45887: End If
  loc_1E45891: If (var_188 = "Room Master") Then
  loc_1E4589A:   Set var_90 = New FrmRoomMast
  loc_1E458A9:   var_90.CAPTION = CVar(arg_10)
  loc_1E458B2:   Call var_90.Show
  loc_1E458B8:   GoTo loc_1E3D9A1
  loc_1E458BB: End If
  loc_1E458C5: If (var_188 = "Company Master") Then
  loc_1E458CE:   Set var_90 = New CompMast
  loc_1E458DD:   var_90.CAPTION = CVar(arg_10)
  loc_1E458E6:   Call var_90.Show
  loc_1E458EC:   GoTo loc_1E3D9A1
  loc_1E458EF: End If
  loc_1E458F9: If (var_188 = "Forex Master") Then
  loc_1E45902:   Set var_90 = New FrmForeignExMast
  loc_1E45911:   var_90.CAPTION = CVar(arg_10)
  loc_1E4591A:   Call var_90.Show
  loc_1E45920:   GoTo loc_1E3D9A1
  loc_1E45923: End If
  loc_1E4592D: If (var_188 = "Guest Profile") Then
  loc_1E45936:   Set var_90 = New GuestProfile
  loc_1E45945:   var_90.CAPTION = CVar(arg_10)
  loc_1E4594E:   Call var_90.Show
  loc_1E45954:   GoTo loc_1E3D9A1
  loc_1E45957: End If
  loc_1E45961: If (var_188 = "Group Profile") Then
  loc_1E4596A:   Set var_90 = New GroupProfile
  loc_1E45979:   var_90.CAPTION = CVar(arg_10)
  loc_1E45982:   Call var_90.Show
  loc_1E45988:   GoTo loc_1E3D9A1
  loc_1E4598B: End If
  loc_1E45995: If Not (var_188 = "Item List") Then
  loc_1E459A0:   If (var_188 = "Item  List") Then
  loc_1E459A3:   End If
  loc_1E459A9:   Set var_90 = New FrmItemMast
  loc_1E459B8:   var_90.CAPTION = CVar(arg_10)
  loc_1E459C1:   Call var_90.Show
  loc_1E459C7:   GoTo loc_1E3D9A1
  loc_1E459CA: End If
  loc_1E459D4: If (var_188 = "Scheme Master") Then
  loc_1E459DD:   Set var_90 = New SchemeMast
  loc_1E459EC:   var_90.CAPTION = CVar(arg_10)
  loc_1E459F5:   Call var_90.Show
  loc_1E459FB:   GoTo loc_1E3D9A1
  loc_1E459FE: End If
  loc_1E45A08: If (var_188 = "Server Master") Then
  loc_1E45A11:   Set var_90 = New FrmWaiterMast
  loc_1E45A20:   var_90.CAPTION = CVar(arg_10)
  loc_1E45A29:   Call var_90.Show
  loc_1E45A2F:   GoTo loc_1E3D9A1
  loc_1E45A32: End If
  loc_1E45A3C: If (var_188 = "Rate Group Master") Then
  loc_1E45A4B:   var_90.CAPTION = CVar(arg_10)
  loc_1E45A4F:   GoTo loc_1E3D9A1
  loc_1E45A52: End If
  loc_1E45A5C: If (var_188 = "Fixed Charge") Then
  loc_1E45A65:   Set var_90 = New frmFixedChargeMast
  loc_1E45A74:   var_90.CAPTION = CVar(arg_10)
  loc_1E45A7D:   Call var_90.Show
  loc_1E45A83:   GoTo loc_1E3D9A1
  loc_1E45A86: End If
  loc_1E45A90: If (var_188 = "Guest History") Then
  loc_1E45A99:   Set var_90 = New GuestProfile
  loc_1E45AA8:   var_90.CAPTION = CVar(arg_10)
  loc_1E45AB1:   Call var_90.Show
  loc_1E45AB7:   GoTo loc_1E3D9A1
  loc_1E45ABA: End If
  loc_1E45AC4: If (var_188 = "Room Display") Then
  loc_1E45ACD:   Set var_90 = New FdRoomDisplay
  loc_1E45ADC:   var_90.CAPTION = CVar(arg_10)
  loc_1E45AE5:   Call var_90.Show
  loc_1E45AEB:   GoTo loc_1E3D9A1
  loc_1E45AEE: End If
  loc_1E45AF8: If (var_188 = "Open Item Consumption") Then
  loc_1E45B01:   Set var_90 = New FrmConsumMast9999
  loc_1E45B10:   var_90.CAPTION = CVar(arg_10)
  loc_1E45B19:   Call var_90.Show
  loc_1E45B1F:   GoTo loc_1E3D9A1
  loc_1E45B22: End If
  loc_1E45B2C: If (var_188 = "Member Master") Then
  loc_1E45B35:   Set var_90 = New MembershipMast
  loc_1E45B44:   var_90.CAPTION = CVar(arg_10)
  loc_1E45B4D:   Call var_90.Show
  loc_1E45B53:   GoTo loc_1E3D9A1
  loc_1E45B56: End If
  loc_1E45B60: If (var_188 = "Purchase Sundry Setting") Then
  loc_1E45B69:   Set var_90 = New DepartSundry
  loc_1E45B78:   var_90.CAPTION = CVar(arg_10)
  loc_1E45B81:   Call var_90.Show
  loc_1E45B87:   GoTo loc_1E3D9A1
  loc_1E45B8A: End If
  loc_1E45B94: If (var_188 = "Location Master") Then
  loc_1E45B9D:   Set var_90 = New Godown
  loc_1E45BAC:   var_90.CAPTION = CVar(arg_10)
  loc_1E45BB5:   Call var_90.Show
  loc_1E45BBB:   GoTo loc_1E3D9A1
  loc_1E45BBE: End If
  loc_1E45BC8: If (var_188 = "Opening Stock") Then
  loc_1E45BD1:   Set var_90 = New FrmOPStock
  loc_1E45BE0:   var_90.CAPTION = CVar(arg_10)
  loc_1E45BE9:   Call var_90.Show
  loc_1E45BEF:   GoTo loc_1E3D9A1
  loc_1E45BF2: End If
  loc_1E45BFC: If (var_188 = "Delete Message") Then
  loc_1E45C05:   Set var_90 = New EmptyInbox
  loc_1E45C14:   var_90.CAPTION = CVar(arg_10)
  loc_1E45C1D:   Call var_90.Show
  loc_1E45C23:   GoTo loc_1E3D9A1
  loc_1E45C26: End If
  loc_1E45C30: If (var_188 = "Inconsistency Check") Then
  loc_1E45C39:   Set var_90 = New FrmInc
  loc_1E45C48:   var_90.CAPTION = CVar(arg_10)
  loc_1E45C51:   Call var_90.Show
  loc_1E45C57:   GoTo loc_1E3D9A1
  loc_1E45C5A: End If
  loc_1E45C64: If (var_188 = "Advance Deposit") Then
  loc_1E45C6F:   Set var_90 = MemVar_1F96550 
  loc_1E45C81:   var_90.OpenType = 1
  loc_1E45C93:   var_90.OpenMode = 2
  loc_1E45CA2:   var_90.AdvType = "ADRES"
  loc_1E45CB2:   var_90.CAPTION = CVar(arg_10)
  loc_1E45CBB:   Call var_90.Show
  loc_1E45CC1:   GoTo loc_1E3D9A1
  loc_1E45CC4: End If
  loc_1E45CCE: If (var_188 = "WalkIn CheckIn") Then
  loc_1E45CD7:   Set var_90 = New fdWalkInEntry
  loc_1E45CE6:   var_90.CAPTION = CVar(arg_10)
  loc_1E45CEF:   Call var_90.Show
  loc_1E45CF5:   GoTo loc_1E3D9A1
  loc_1E45CF8: End If
  loc_1E45D02: If (var_188 = "Reverse Check Out") Then
  loc_1E45D0B:   Set var_90 = New FdRevCheckOut
  loc_1E45D1A:   var_90.CAPTION = CVar(arg_10)
  loc_1E45D23:   Call var_90.Show
  loc_1E45D29:   GoTo loc_1E3D9A1
  loc_1E45D2C: End If
  loc_1E45D36: If (var_188 = "Merge Room") Then
  loc_1E45D3F:   Set var_90 = New FrmMergeCharge
  loc_1E45D4E:   var_90.CAPTION = CVar(arg_10)
  loc_1E45D57:   Call var_90.Show
  loc_1E45D5D:   GoTo loc_1E3D9A1
  loc_1E45D60: End If
  loc_1E45D6A: If (var_188 = "Bill Re-Settlement") Then
  loc_1E45D73:   Set var_90 = New FdReSetlement
  loc_1E45D81:   var_90.ParentForm = "Check Out"
  loc_1E45D91:   var_90.CAPTION = CVar(arg_10)
  loc_1E45D9A:   Call var_90.Show
  loc_1E45DA0:   GoTo loc_1E3D9A1
  loc_1E45DA3: End If
  loc_1E45DA8: ' Referenced from: 1E55BF5
  loc_1E45DA8: Do 'loop at: 1E55C4B
  loc_1E45DAD: If (var_188 = "Reverse Room Merge") Then
  loc_1E45DB0:   ' Referenced from: 1E55A3C
  loc_1E45DB6:   Set var_90 = New FrmRevMergeCharge
  loc_1E45DBB:   Do 'loop at: 1E54EE2
  loc_1E45DC5:   var_90.CAPTION = CVar(arg_10)
  loc_1E45DCE:   Call var_90.Show
  loc_1E45DD4:   GoTo loc_1E3D9A1
  loc_1E45DD7: End If
  loc_1E45DE1: If (var_188 = "Setup Outlet") Then
  loc_1E45DEA:   Set var_90 = New OutLetMast
  loc_1E45DF9:   var_90.CAPTION = CVar(arg_10)
  loc_1E45E02:   Call var_90.Show
  loc_1E45E08:   GoTo loc_1E3D9A1
  loc_1E45E0B: End If
  loc_1E45E15: If (var_188 = "Table Master") Then
  loc_1E45E1E:   Set var_90 = New RsTableMast
  loc_1E45E2D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45E36:   Call var_90.Show
  loc_1E45E3C:   GoTo loc_1E3D9A1
  loc_1E45E3F: End If
  loc_1E45E49: If (var_188 = "Menu Category") Then
  loc_1E45E5F:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E45E68:     Set var_90 = New FrmHallItemCatMast
  loc_1E45E86:     var_90.MDIRestCode = CVar(var_114 & Proc_165_4_10300B4(arg_C, MemVar_1F95078, var_114, var_114, var_114, var_114, var_114, var_114))
  loc_1E45E95:     Call var_90.Show
  loc_1E45E9E:   Else
  loc_1E45EA6:     Set var_90 = New FrmItemCatMast
  loc_1E45EB5:     var_90.CAPTION = CVar(arg_10)
  loc_1E45EBE:     Call var_90.Show
  loc_1E45EC4:   End If
  loc_1E45EC6:   GoTo loc_1E3D9A1
  loc_1E45EC9: End If
  loc_1E45ED3: If (var_188 = "Menu Group") Then
  loc_1E45EDC:   Set var_90 = New FrmItemGroupMast
  loc_1E45EEA:   var_90.RestType = "='Finish'"
  loc_1E45EF0:   var_114 = False
  loc_1E45F06:   var_90.Txt.Visible = 3
  loc_1E45F0F:   var_114 = False
  loc_1E45F25:   var_90.Label1.Visible = 1
  loc_1E45F2E:   var_114 = True
  loc_1E45F43:   var_90.Txt.Visible = 1
  loc_1E45F4C:   var_114 = True
  loc_1E45F61:   var_90.LblName.Visible = 1
  loc_1E45F71:   Do 'loop at: 1E55F27
  loc_1E45F74:   var_90.CAPTION = CVar(arg_10)
  loc_1E45F7D:   Call var_90.Show
  loc_1E45F83:   GoTo loc_1E3D9A1
  loc_1E45F86: End If
  loc_1E45F90: If (var_188 = "Menu Item") Then
  loc_1E45FB3:   If (Trim(var_AC) = "BANQ") Then
  loc_1E45FBC:     Set var_90 = New HallMenuItemEntry
  loc_1E45FDA:     var_90.MDIRestCode = CVar(var_114 & Proc_165_4_10300B4(arg_C, MemVar_1F95078, var_114, var_114, var_114, var_114))
  loc_1E45FF0:     var_90.CAPTION = CVar(arg_10)
  loc_1E45FF9:     Call var_90.Show
  loc_1E46002:   Else
  loc_1E46022:     If (Trim(var_AC) = "ODC") Then
  loc_1E4602B:       Set var_90 = New HallMenuItemEntry
  loc_1E46049:       var_90.MDIRestCode = CVar(var_114 & Proc_165_4_10300B4(arg_C, MemVar_1F95078, var_114, var_114))
  loc_1E4605F:       var_90.CAPTION = CVar(arg_10)
  loc_1E46068:       Call var_90.Show
  loc_1E46071:     Else
  loc_1E46079:       Set var_90 = New RsMenuItemEntry
  loc_1E46088:       var_90.CAPTION = CVar(arg_10)
  loc_1E46091:       Call var_90.Show
  loc_1E46097:     End If
  loc_1E46097:   End If
  loc_1E46099:   GoTo loc_1E3D9A1
  loc_1E4609C: End If
  loc_1E460A6: If (var_188 = "Outlet Sundry Setting") Then
  loc_1E460AF:   Set var_90 = New OutLetSundry
  loc_1E460BE:   var_90.CAPTION = CVar(arg_10)
  loc_1E460C7:   Call var_90.Show
  loc_1E460CD:   GoTo loc_1E3D9A1
  loc_1E460D0: End If
  loc_1E460DA: If (var_188 = "Menu Item Rate") Then
  loc_1E460E3:   Set var_90 = New FrmMenuRate
  loc_1E460EF:   Do 'loop at: 1E56088
  loc_1E460F2:   var_90.CAPTION = CVar(arg_10)
  loc_1E460FB:   Call var_90.Show
  loc_1E46101:   GoTo loc_1E3D9A1
  loc_1E46104: End If
  loc_1E4610E: If (var_188 = "Session Master") Then
  loc_1E46117:   Set var_90 = New frmSessionMast
  loc_1E46126:   var_90.CAPTION = CVar(arg_10)
  loc_1E4612F:   Call var_90.Show
  loc_1E46135:   GoTo loc_1E3D9A1
  loc_1E46138: End If
  loc_1E46142: If (var_188 = "NC Type") Then
  loc_1E4614B:   Set var_90 = New FrmNCType
  loc_1E4615A:   var_90.CAPTION = CVar(arg_10)
  loc_1E46163:   Call var_90.Show
  loc_1E46169:   GoTo loc_1E3D9A1
  loc_1E4616C: End If
  loc_1E46176: If (var_188 = "Customer History") Then
  loc_1E4617F:   Set var_90 = New frmGuestInfo
  loc_1E4618E:   var_90.CAPTION = CVar(arg_10)
  loc_1E46197:   Call var_90.Show
  loc_1E4619D:   GoTo loc_1E3D9A1
  loc_1E461A0: End If
  loc_1E461AA: If (var_188 = "Delivery Boy") Then
  loc_1E461B3:   Set var_90 = New FrmDeliveryBoyMast
  loc_1E461C2:   var_90.CAPTION = CVar(arg_10)
  loc_1E461CB:   Call var_90.Show
  loc_1E461D1:   GoTo loc_1E3D9A1
  loc_1E461D4: End If
  loc_1E461DE: If (var_188 = "Reward Points Parameter I") Then
  loc_1E461E7:   Set var_90 = New RewardPointParam1
  loc_1E461F6:   var_90.CAPTION = CVar(arg_10)
  loc_1E461FF:   Call var_90.Show
  loc_1E46205:   GoTo loc_1E3D9A1
  loc_1E46208: End If
  loc_1E46212: If (var_188 = "Party Master") Then
  loc_1E4621B:   Set var_90 = New FrmParty
  loc_1E4622A:   var_90.CAPTION = CVar(arg_10)
  loc_1E46233:   Call var_90.Show
  loc_1E46239:   GoTo loc_1E3D9A1
  loc_1E4623C: End If
  loc_1E46246: If (var_188 = "Department") Then
  loc_1E4624F:   Set var_90 = New DepartMast
  loc_1E4625E:   var_90.CAPTION = CVar(arg_10)
  loc_1E46267:   Call var_90.Show
  loc_1E4626D:   GoTo loc_1E3D9A1
  loc_1E46270: End If
  loc_1E4627A: If (var_188 = "Item Group") Then
  loc_1E4628A:   Do 'loop at: 1E56223
  loc_1E46290:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E46299:     Set var_90 = New HallItemGroupMast
  loc_1E462B7:     var_90.MDIRestCode = CVar(var_114 & Proc_165_4_10300B4(arg_C, MemVar_1F95078))
  loc_1E462C6:     Call var_90.Show
  loc_1E462CF:   Else
  loc_1E462D7:     Set var_90 = New FrmItemGroupMastRaw
  loc_1E462E5:     var_90.RestType = "<>'Finish'"
  loc_1E462F5:     var_90.CAPTION = CVar(arg_10)
  loc_1E462FE:     Call var_90.Show
  loc_1E46304:   End If
  loc_1E46306:   GoTo loc_1E3D9A1
  loc_1E46309: End If
  loc_1E46313: Do 'loop at: 1E562AC
  loc_1E46313: If (var_188 = "Item Category") Then
  loc_1E4631C:   Set var_90 = New FrmItemCatRaw
  loc_1E4632B:   var_90.CAPTION = CVar(arg_10)
  loc_1E46334:   Call var_90.Show
  loc_1E4633A:   GoTo loc_1E3D9A1
  loc_1E4633D: End If
  loc_1E46347: If Not (var_188 = "Item Entry") Then
  loc_1E46352:   If (var_188 = "Item Entry ") Then
  loc_1E46355:   End If
  loc_1E4635B:   Set var_90 = New FrmItemMastRaw
  loc_1E4636A:   var_90.CAPTION = CVar(arg_10)
  loc_1E46373:   Call var_90.Show
  loc_1E46379:   GoTo loc_1E3D9A1
  loc_1E4637C: End If
  loc_1E46386: If (var_188 = "Consumption Master") Then
  loc_1E4638F:   Set var_90 = New FrmConsumMast
  loc_1E4639E:   var_90.CAPTION = CVar(arg_10)
  loc_1E463A7:   Call var_90.Show
  loc_1E463AD:   GoTo loc_1E3D9A1
  loc_1E463B0: End If
  loc_1E463BA: If (var_188 = "Enviro Inventry") Then
  loc_1E463C3:   Set var_90 = New frmPurEnviro
  loc_1E463D2:   var_90.CAPTION = CVar(arg_10)
  loc_1E463DB:   Call var_90.Show
  loc_1E463E1:   GoTo loc_1E3D9A1
  loc_1E463E4: End If
  loc_1E463EE: If (var_188 = "FOM Bill Deletion") Then
  loc_1E463F7:   Set var_90 = New FrmFomBillDeletion
  loc_1E46406:   var_90.CAPTION = CVar(arg_10)
  loc_1E4640F:   Call var_90.Show
  loc_1E46415:   GoTo loc_1E3D9A1
  loc_1E46418: End If
  loc_1E46422: If (var_188 = "Designation Master") Then
  loc_1E4642B:   Set var_90 = New PrDesigMast
  loc_1E4643A:   var_90.CAPTION = CVar(arg_10)
  loc_1E46443:   Call var_90.Show
  loc_1E46449:   GoTo loc_1E3D9A1
  loc_1E4644C: End If
  loc_1E46456: If (var_188 = "Category  Master") Then
  loc_1E4645F:   Set var_90 = New PrCategoryMast
  loc_1E4646E:   var_90.CAPTION = CVar(arg_10)
  loc_1E46477:   Call var_90.Show
  loc_1E4647D:   GoTo loc_1E3D9A1
  loc_1E46480: End If
  loc_1E4648A: If (var_188 = "Holiday Master") Then
  loc_1E46493:   Set var_90 = New prHoliday
  loc_1E464A2:   var_90.CAPTION = CVar(arg_10)
  loc_1E464AB:   Call var_90.Show
  loc_1E464B1:   GoTo loc_1E3D9A1
  loc_1E464B4: End If
  loc_1E464BE: If (var_188 = "Employee Master") Then
  loc_1E464C7:   Set var_90 = New PrEmployee
  loc_1E464D6:   var_90.CAPTION = CVar(arg_10)
  loc_1E464DF:   Call var_90.Show
  loc_1E464E5:   GoTo loc_1E3D9A1
  loc_1E464E8: End If
  loc_1E464F2: If (var_188 = "Call Type Master") Then
  loc_1E464FD:   Set var_90 = MemVar_1F96370 
  loc_1E4650D:   var_90.CAPTION = CVar(arg_10)
  loc_1E46516:   Call var_90.Show
  loc_1E4651C:   GoTo loc_1E3D9A1
  loc_1E4651F: End If
  loc_1E46529: If (var_188 = "Extension Master") Then
  loc_1E4652E:   Do 'loop at: 1E564C7
  loc_1E46534:   Set var_90 = MemVar_1F96384 
  loc_1E46544:   var_90.CAPTION = CVar(arg_10)
  loc_1E4654D:   Call var_90.Show
  loc_1E46553:   GoTo loc_1E3D9A1
  loc_1E46556: End If
  loc_1E46560: If (var_188 = "Call Codes Master") Then
  loc_1E4656B:   Set var_90 = MemVar_1F96398 
  loc_1E4657B:   var_90.CAPTION = CVar(arg_10)
  loc_1E46584:   Call var_90.Show
  loc_1E4658A:   GoTo loc_1E3D9A1
  loc_1E4658D: End If
  loc_1E46597: If (var_188 = "Call Control Master") Then
  loc_1E465A2:   Set var_90 = MemVar_1F963AC 
  loc_1E465B2:   var_90.CAPTION = CVar(arg_10)
  loc_1E465BB:   Call var_90.Show
  loc_1E465C1:   GoTo loc_1E3D9A1
  loc_1E465C4: End If
  loc_1E465CE: If (var_188 = "Group Accounts") Then
  loc_1E465D7:   Set var_90 = New FaGrEnt
  loc_1E465E6:   var_90.CAPTION = CVar(arg_10)
  loc_1E465EF:   Call var_90.Show
  loc_1E46600:   var_90.WindowState = 2
  loc_1E46604:   GoTo loc_1E3D9A1
  loc_1E46607: End If
  loc_1E46611: If (var_188 = "Ledger Accounts") Then
  loc_1E4661A:   Set var_90 = New FaSubGroup
  loc_1E46629:   var_90.CAPTION = CVar(arg_10)
  loc_1E46632:   Call var_90.Show
  loc_1E46640:   Do 'loop at: 1E565D9
  loc_1E46643:   var_90.WindowState = 2
  loc_1E46647:   GoTo loc_1E3D9A1
  loc_1E4664A: End If
  loc_1E46654: If (var_188 = "Data Transfer (POS)") Then
  loc_1E4665D:   Set var_90 = New FrmPOSSaleDataTransfer
  loc_1E4666C:   var_90.CAPTION = CVar(arg_10)
  loc_1E46675:   Call var_90.Show
  loc_1E4667B:   GoTo loc_1E3D9A1
  loc_1E4667E: End If
  loc_1E46688: If (var_188 = "PLU File (W.Scale)") Then
  loc_1E46691:   Set var_90 = New rPOSRepView
  loc_1E4669F:   var_90.GRepFormName = "PLUFile"
  loc_1E466AF:   var_90.CAPTION = CVar(arg_10)
  loc_1E466C2:   Me.Global.Unload var_90
  loc_1E466CA:   GoTo loc_1E3D9A1
  loc_1E466CD: End If
  loc_1E466D7: If (var_188 = "POS Recycle") Then
  loc_1E466E2:   If (MemVar_1F950B8 = 1) Then
  loc_1E466EB:     Set var_90 = New FrmPOSRecycleData
  loc_1E466FA:     var_90.CAPTION = CVar(arg_10)
  loc_1E46703:     Call var_90.Show
  loc_1E4670C:   Else
  loc_1E4672E:     MsgBox("Only Supervisor is Authorised.", &H10, var_94, var_100, var_124)
  loc_1E4673C:   End If
  loc_1E4673E:   GoTo loc_1E3D9A1
  loc_1E46741: End If
  loc_1E4674B: If (var_188 = "Card Initialization") Then
  loc_1E46756:   Set var_90 = MemVar_1F95334 
  loc_1E46768:   var_90.CAPTION = CVar(New SmartCardMast)
  loc_1E46774:   Call var_90.Show
  loc_1E4677A:   GoTo loc_1E3D9A1
  loc_1E4677D: End If
  loc_1E46787: If (var_188 = "Guest Registration") Then
  loc_1E46792:   Set var_90 = MemVar_1F95348 
  loc_1E467A1:   var_90.SmartCardApplicable = "No"
  loc_1E467B3:   var_90.CAPTION = CVar(New SmartCardRegistration)
  loc_1E467BF:   Call var_90.Show
  loc_1E467C5:   GoTo loc_1E3D9A1
  loc_1E467C8: End If
  loc_1E467D2: If (var_188 = "Card Registration") Then
  loc_1E467E6:   var_E0 = var_BC.Fields
  loc_1E4680A:   var_F0 = "CashCardCreditAc"
  loc_1E46826:   var_100 = CVar(var_BC.Fields.Item(var_F0)) 'Address
  loc_1E46857:   var_124 = CVar(var_BC.Fields.Item("CashCardSecurityAc")) 'Address
  loc_1E46884:   If ((var_E0 Or (Proc_6_38_E69628(var_100, (Proc_6_38_E69628(CVar(var_E0.Item("CashCardDebitAc"))) = vbNullString)) = vbNullString)) Or (Proc_6_38_E69628(var_124) = vbNullString)) Then
  loc_1E468A2:     MsgBox("Parameter Settings are not set.", &H40, var_100, var_124, var_150)
  loc_1E468B5:   Else
  loc_1E468BF:     Set var_90 = MemVar_1F95348 
  loc_1E468CE:     var_90.SmartCardApplicable = "Yes"
  loc_1E468E0:     var_90.CAPTION = CVar(New SmartCardRegistration)
  loc_1E468E4:     Do 'loop at:   1E56880
  loc_1E468EC:     Call var_90.Show
  loc_1E468F2:   End If
  loc_1E468F4:   GoTo loc_1E3D9A1
  loc_1E468F7: End If
  loc_1E46901: If (var_188 = "Card Recharge") Then
  loc_1E4690C:   Set var_90 = MemVar_1F9535C 
  loc_1E4691E:   var_90.CAPTION = CVar(New SmartCardRecharge)
  loc_1E4692A:   Call var_90.Show
  loc_1E46930:   GoTo loc_1E3D9A1
  loc_1E46933: End If
  loc_1E4693D: If (var_188 = "Card Refund") Then
  loc_1E46948:   Set var_90 = MemVar_1F95370 
  loc_1E4695A:   var_90.CAPTION = CVar(New SmartCardRefund)
  loc_1E46966:   Call var_90.Show
  loc_1E4696C:   GoTo loc_1E3D9A1
  loc_1E4696F: End If
  loc_1E46979: If (var_188 = "Card Re-Issue") Then
  loc_1E46984:   Set var_90 = MemVar_1F95384 
  loc_1E46996:   var_90.CAPTION = CVar(New SmartCardLostReIssue)
  loc_1E469A2:   Call var_90.Show
  loc_1E469A8:   GoTo loc_1E3D9A1
  loc_1E469AB: End If
  loc_1E469B5: If (var_188 = "User Collection") Then
  loc_1E469C0:   Set var_90 = MemVar_1F95398 
  loc_1E469D2:   var_90.CAPTION = CVar(New FrmUserPaymentCollection)
  loc_1E469DE:   Call var_90.Show
  loc_1E469E4:   GoTo loc_1E3D9A1
  loc_1E469E7: End If
  loc_1E469F1: If (var_188 = "Card Statement (MINI)") Then
  loc_1E469F9:   Proc_275_18_150214C(MemVar_1F953B8)
  loc_1E469FE:   GoTo loc_1E3D9A1
  loc_1E46A01: End If
  loc_1E46A0B: If (var_188 = "Card Statement (FULL)") Then
  loc_1E46A10:   Proc_275_22_10E6198()
  loc_1E46A15:   GoTo loc_1E3D9A1
  loc_1E46A18: End If
  loc_1E46A22: If (var_188 = "Card Transaction Report") Then
  loc_1E46A2B:   Set var_90 = New rPOSRepView
  loc_1E46A39:   var_90.GRepFormName = "CashCardTransRep"
  loc_1E46A49:   var_90.CAPTION = CVar(arg_10)
  loc_1E46A52:   Call var_90.Show
  loc_1E46A58:   GoTo loc_1E3D9A1
  loc_1E46A5B: End If
  loc_1E46A65: If (var_188 = "Card Collection Summary") Then
  loc_1E46A6E:   Set var_90 = New rPOSRepView
  loc_1E46A7C:   var_90.GRepFormName = "CashCardCollectSumm"
  loc_1E46A8C:   var_90.CAPTION = CVar(arg_10)
  loc_1E46A95:   Call var_90.Show
  loc_1E46A9B:   GoTo loc_1E3D9A1
  loc_1E46A9E: End If
  loc_1E46AA8: If (var_188 = "Card Status Report") Then
  loc_1E46AB1:   Set var_90 = New rPOSRepView
  loc_1E46ABF:   var_90.GRepFormName = "CardStatusReport"
  loc_1E46ACF:   var_90.CAPTION = CVar(arg_10)
  loc_1E46AD8:   Call var_90.Show
  loc_1E46ADE:   GoTo loc_1E3D9A1
  loc_1E46AE1: End If
  loc_1E46AEB: If (var_188 = "Narration Master") Then
  loc_1E46AF4:   Set var_90 = New FaNarrMast
  loc_1E46AFC:   Do 'loop at: 1E56A98
  loc_1E46B03:   var_90.CAPTION = CVar(arg_10)
  loc_1E46B0C:   Call var_90.Show
  loc_1E46B1D:   var_90.WindowState = 2
  loc_1E46B21:   GoTo loc_1E3D9A1
  loc_1E46B24: End If
  loc_1E46B2E: If (var_188 = "T.D.S. Category") Then
  loc_1E46B37:   Set var_90 = New FaTDSCat
  loc_1E46B46:   var_90.CAPTION = CVar(arg_10)
  loc_1E46B4F:   Call var_90.Show
  loc_1E46B57:   var_CC = 2
  loc_1E46B60:   var_90.WindowState = var_CC
  loc_1E46B64:   GoTo loc_1E3D9A1
  loc_1E46B67: End If
  loc_1E46B71: If (var_188 = "FA Environment") Then
  loc_1E46B7F:   Call 0.Method_arg_54 (var_94)
  loc_1E46B94:   Call 0.Method_arg_2B0 (var_CC)
  loc_1E46BA0:   MemVar_1F9581C = Nothing
  loc_1E46BA4:   GoTo loc_1E3D9A1
  loc_1E46BA7: End If
  loc_1E46BB1: If (var_188 = "Voucher Environment") Then
  loc_1E46BBF:   Call 0.Method_arg_54 (var_94)
  loc_1E46BD4:   Call 0.Method_arg_2B0 (var_CC, var_F0)
  loc_1E46BE0:   MemVar_1F95830 = Nothing
  loc_1E46BE4:   GoTo loc_1E3D9A1
  loc_1E46BE7: End If
  loc_1E46BF1: If (var_188 = "Opening Balance Updation") Then
  loc_1E46BF4:   GoTo loc_1E3D9A1
  loc_1E46BF7: End If
  loc_1E46C01: If (var_188 = "Year End Updation") Then
  loc_1E46C04:   GoTo loc_1E3D9A1
  loc_1E46C07: End If
  loc_1E46C11: If (var_188 = "Account Merging") Then
  loc_1E46C1A:   Set var_90 = New AccountMerg
  loc_1E46C28:   var_90.ParentForm = "Check Out"
  loc_1E46C38:   var_90.CAPTION = CVar(arg_10)
  loc_1E46C41:   Call var_90.Show
  loc_1E46C47:   GoTo loc_1E3D9A1
  loc_1E46C4A: End If
  loc_1E46C54: If (var_188 = "Voucher Serialisation") Then
  loc_1E46C5D:   Set var_90 = New FrmSerialiseVr
  loc_1E46C6C:   var_90.CAPTION = CVar(arg_10)
  loc_1E46C72:   var_CC = 1
  loc_1E46C7E:   Call var_90.Show
  loc_1E46C84:   GoTo loc_1E3D9A1
  loc_1E46C87: End If
  loc_1E46C91: Do 'loop at: 1E56C2A
  loc_1E46C91: If (var_188 = "User Master") Then
  loc_1E46C9A:   Set var_90 = New UserMast
  loc_1E46CA9:   var_90.CAPTION = CVar(arg_10)
  loc_1E46CB2:   Call var_90.Show
  loc_1E46CB8:   GoTo loc_1E3D9A1
  loc_1E46CBB: End If
  loc_1E46CC5: If (var_188 = "Permissions") Then
  loc_1E46CCE:   Set var_90 = New UserPermission
  loc_1E46CD6:   var_CC = CVar(arg_10) 'String
  loc_1E46CDD:   var_90.CAPTION = var_CC
  loc_1E46CE6:   Call var_90.Show
  loc_1E46CEC:   GoTo loc_1E3D9A1
  loc_1E46CEF: End If
  loc_1E46CF9: If (var_188 = "Update Database Nulls") Then
  loc_1E46CFC:   GoTo loc_1E3D9A1
  loc_1E46CFF: End If
  loc_1E46D09: If (var_188 = "Backup Data") Then
  loc_1E46D0E:   Proc_165_6_134E8B4(var_CC)
  loc_1E46D13:   GoTo loc_1E3D9A1
  loc_1E46D16: End If
  loc_1E46D20: If (var_188 = "Account Merging") Then
  loc_1E46D23:   GoTo loc_1E3D9A1
  loc_1E46D26: End If
  loc_1E46D30: If (var_188 = "Guest Parameters Setting") Then
  loc_1E46D39:   Set var_90 = New frmGuestParamMast
  loc_1E46D48:   var_90.CAPTION = CVar(arg_10)
  loc_1E46D57:   var_90.Tag = "11"
  loc_1E46D67:   var_90.CAPTION = CVar(arg_10)
  loc_1E46D70:   Call var_90.Show
  loc_1E46D76:   GoTo loc_1E3D9A1
  loc_1E46D79: End If
  loc_1E46D83: If (var_188 = "Sundry Master") Then
  loc_1E46D8C:   Set var_90 = New SundryMast
  loc_1E46D9B:   var_90.CAPTION = CVar(arg_10)
  loc_1E46DA4:   Call var_90.Show
  loc_1E46DAA:   GoTo loc_1E3D9A1
  loc_1E46DAD: End If
  loc_1E46DB7: If (var_188 = "Voucher Wise Sundry Entry") Then
  loc_1E46DC0:   Set var_90 = New VoucherSundrySetting
  loc_1E46DCF:   var_90.CAPTION = CVar(arg_10)
  loc_1E46DD8:   Call var_90.Show
  loc_1E46DDE:   GoTo loc_1E3D9A1
  loc_1E46DE1: End If
  loc_1E46DEB: If (var_188 = "Guest BirthDates/Anniversary") Then
  loc_1E46DF4:   Set var_90 = New frmWelcome
  loc_1E46E03:   var_90.CAPTION = CVar(arg_10)
  loc_1E46E0C:   Call var_90.Show
  loc_1E46E12:   GoTo loc_1E3D9A1
  loc_1E46E15: End If
  loc_1E46E1F: If (var_188 = "WalkIn CheckIn") Then
  loc_1E46E28:   Set var_90 = New fdWalkInEntry
  loc_1E46E37:   var_90.CAPTION = CVar(arg_10)
  loc_1E46E40:   Call var_90.Show
  loc_1E46E46:   GoTo loc_1E3D9A1
  loc_1E46E49: End If
  loc_1E46E53: If (var_188 = "Check In Entry") Then
  loc_1E46E5C:   Set var_90 = New fdCheckIn
  loc_1E46E6B:   var_90.CAPTION = CVar(arg_10)
  loc_1E46E74:   Call var_90.Show
  loc_1E46E7A:   GoTo loc_1E3D9A1
  loc_1E46E7D: End If
  loc_1E46E87: If (var_188 = "Check In Group With Reservation") Then
  loc_1E46E96:   var_90.CAPTION = CVar(arg_10)
  loc_1E46E9A:   GoTo loc_1E3D9A1
  loc_1E46E9D: End If
  loc_1E46EA7: If (var_188 = "Check In With Walk In History") Then
  loc_1E46EB0:   Set var_90 = New HWIHistory
  loc_1E46EBF:   var_90.CAPTION = CVar(arg_10)
  loc_1E46EC8:   Call var_90.Show
  loc_1E46ECE:   GoTo loc_1E3D9A1
  loc_1E46ED1: End If
  loc_1E46EDB: If (var_188 = "Duplicate Last Guest Check In") Then
  loc_1E46EE4:   Set var_90 = New fdWalkInEntry
  loc_1E46EF3:   var_90.CAPTION = CVar(arg_10)
  loc_1E46F02:   var_90.FrmOpenType = "Last Guest"
  loc_1E46F0B:   Call var_90.Show
  loc_1E46F11:   GoTo loc_1E3D9A1
  loc_1E46F14: End If
  loc_1E46F1E: If (var_188 = "Look-up Room") Then
  loc_1E46F27:   Set var_90 = New FdLookUpRoom
  loc_1E46F2C:   Do 'loop at: 1E56EC5
  loc_1E46F36:   var_90.CAPTION = CVar(arg_10)
  loc_1E46F3F:   Call var_90.Show
  loc_1E46F45:   GoTo loc_1E3D9A1
  loc_1E46F48: End If
  loc_1E46F52: If (var_188 = "Look-up Guest by Name or Room") Then
  loc_1E46F81:   var_9C = InputBox("Inter Full or Partial name of the Guest", "Guest Name", var_124, var_150, var_170, var_1B8, var_1D8)
  loc_1E46F9F:   If (var_9C = vbNullString) Then
  loc_1E46FB8:     var_100 = "Room No."
  loc_1E46FCE:     var_A4 = InputBox("Inter Room No. of the Guest", var_100, var_124, var_150, var_170, var_1B8, var_1D8)
  loc_1E46FE2:   End If
  loc_1E46FE8:   Set var_90 = New InHouseGuestFolio
  loc_1E46FF7:   var_90.PGuestName = CVar(var_9C)
  loc_1E47007:   var_90.PRoomNo = CVar(var_A4)
  loc_1E47017:   var_90.CAPTION = CVar(arg_10)
  loc_1E47020:   Call var_90.Show
  loc_1E47026:   GoTo loc_1E3D9A1
  loc_1E47029: End If
  loc_1E47033: If (var_188 = "Change Guest Information") Then
  loc_1E47042:   var_90.CAPTION = CVar(arg_10)
  loc_1E47046:   GoTo loc_1E3D9A1
  loc_1E47049: End If
  loc_1E47053: If (var_188 = "Post Charges/Payments") Then
  loc_1E4705C:   Set var_90 = New fdPaymentCharge
  loc_1E4706B:   var_90.CAPTION = CVar(arg_10)
  loc_1E47074:   Call var_90.Show
  loc_1E4707A:   GoTo loc_1E3D9A1
  loc_1E4707D: End If
  loc_1E47087: If (var_188 = "Display Folio") Then
  loc_1E47090:   Set var_90 = New fdDisplayFolio
  loc_1E4709F:   var_90.CAPTION = CVar(arg_10)
  loc_1E470A8:   Call var_90.Show
  loc_1E470AE:   GoTo loc_1E3D9A1
  loc_1E470B1: End If
  loc_1E470BB: If (var_188 = "Room Change Entry") Then
  loc_1E470C4:   Set var_90 = New fdRoomChange
  loc_1E470D3:   var_90.CAPTION = CVar(arg_10)
  loc_1E470DC:   Call var_90.Show
  loc_1E470E2:   GoTo loc_1E3D9A1
  loc_1E470E5: End If
  loc_1E470EF: If (var_188 = "Amend Stay") Then
  loc_1E470F8:   Set var_90 = New fdAmendEntry
  loc_1E47107:   var_90.CAPTION = CVar(arg_10)
  loc_1E47110:   Call var_90.Show
  loc_1E47116:   GoTo loc_1E3D9A1
  loc_1E47119: End If
  loc_1E47123: If (var_188 = "Expense Entry") Then
  loc_1E4712C:   Set var_90 = New FrmExpense
  loc_1E4713B:   var_90.CAPTION = CVar(arg_10)
  loc_1E47144:   Call var_90.Show
  loc_1E4714A:   GoTo loc_1E3D9A1
  loc_1E4714D: End If
  loc_1E47157: If (var_188 = "Blank GRC") Then
  loc_1E47160:   Set var_90 = New FrmGrcBlank
  loc_1E4716F:   var_90.CAPTION = CVar(arg_10)
  loc_1E47178:   Call var_90.Show
  loc_1E4717E:   GoTo loc_1E3D9A1
  loc_1E47181: End If
  loc_1E4718B: If (var_188 = "In House Guest Message") Then
  loc_1E47194:   Set var_90 = New FrmHouGuestMsg
  loc_1E471A3:   var_90.CAPTION = CVar(arg_10)
  loc_1E471AC:   Call var_90.Show
  loc_1E471B2:   GoTo loc_1E3D9A1
  loc_1E471B5: End If
  loc_1E471BF: If (var_188 = "Register Wake up Calls") Then
  loc_1E471C8:   Set var_90 = New FrmGuestWakeUp
  loc_1E471D7:   var_90.CAPTION = CVar(arg_10)
  loc_1E471E0:   Call var_90.Show
  loc_1E471E6:   GoTo loc_1E3D9A1
  loc_1E471E9: End If
  loc_1E471F3: If (var_188 = "Forex Receive Entry") Then
  loc_1E471FC:   Set var_90 = New FrmForExRec
  loc_1E4720B:   var_90.CAPTION = CVar(arg_10)
  loc_1E47214:   Call var_90.Show
  loc_1E4721A:   GoTo loc_1E3D9A1
  loc_1E4721D: End If
  loc_1E47227: If (var_188 = "Check-out/reverse check-out") Then
  loc_1E47230:   Set var_90 = New FdCheckOut
  loc_1E4723F:   var_90.CAPTION = CVar(arg_10)
  loc_1E47248:   Call var_90.Show
  loc_1E4724E:   GoTo loc_1E3D9A1
  loc_1E47251: End If
  loc_1E4725B: If (var_188 = "Cashier Report") Then
  loc_1E47264:   Set var_90 = New rFomRepView
  loc_1E47272:   var_90.GRepFormName = "HtCashierSumm"
  loc_1E47282:   var_90.CAPTION = CVar(arg_10)
  loc_1E4728B:   Call var_90.Show
  loc_1E47291:   GoTo loc_1E3D9A1
  loc_1E47294: End If
  loc_1E4729E: If (var_188 = "Settlement Report") Then
  loc_1E472A7:   Set var_90 = New rFomRepView
  loc_1E472B5:   var_90.GRepFormName = "SettleRep"
  loc_1E472C5:   var_90.CAPTION = CVar(arg_10)
  loc_1E472CE:   Call var_90.Show
  loc_1E472D4:   GoTo loc_1E3D9A1
  loc_1E472D7: End If
  loc_1E472E1: If (var_188 = "Cancel Bill Details") Then
  loc_1E472EA:   Set var_90 = New rFomRepView
  loc_1E472F8:   var_90.GRepFormName = "CancelBillDetails"
  loc_1E47308:   var_90.CAPTION = CVar(arg_10)
  loc_1E47311:   Call var_90.Show
  loc_1E47317:   GoTo loc_1E3D9A1
  loc_1E4731A: End If
  loc_1E47324: If (var_188 = "FOM Sales Register") Then
  loc_1E4732D:   Set var_90 = New rFomRepView
  loc_1E4733B:   var_90.GRepFormName = "SaleRegister"
  loc_1E4734B:   var_90.CAPTION = CVar(arg_10)
  loc_1E47354:   Call var_90.Show
  loc_1E4735A:   GoTo loc_1E3D9A1
  loc_1E4735D: End If
  loc_1E47367: If (var_188 = "Room Wise Plan Detail") Then
  loc_1E47370:   Set var_90 = New rFomRepView
  loc_1E4737E:   var_90.GRepFormName = "PlanPackSchedule"
  loc_1E4738E:   var_90.CAPTION = CVar(arg_10)
  loc_1E47397:   Call var_90.Show
  loc_1E4739D:   GoTo loc_1E3D9A1
  loc_1E473A0: End If
  loc_1E473AA: If (var_188 = "Expected Plan/Package F&B Details") Then
  loc_1E473B3:   Set var_90 = New rFomRepView
  loc_1E473C1:   var_90.GRepFormName = "PlanPackService"
  loc_1E473D1:   var_90.CAPTION = CVar(arg_10)
  loc_1E473DA:   Call var_90.Show
  loc_1E473E0:   GoTo loc_1E3D9A1
  loc_1E473E3: End If
  loc_1E473ED: If (var_188 = "Occupancy Report") Then
  loc_1E473F6:   Set var_90 = New rFomRepView
  loc_1E47404:   var_90.GRepFormName = "OccupancyReport"
  loc_1E47414:   var_90.CAPTION = CVar(arg_10)
  loc_1E4741D:   Call var_90.Show
  loc_1E47423:   GoTo loc_1E3D9A1
  loc_1E47426: End If
  loc_1E47430: If (var_188 = "Company wise Nights") Then
  loc_1E47439:   Set var_90 = New rFomRepView
  loc_1E47447:   var_90.GRepFormName = "RoomNights"
  loc_1E47457:   var_90.CAPTION = CVar(arg_10)
  loc_1E47460:   Call var_90.Show
  loc_1E47466:   GoTo loc_1E3D9A1
  loc_1E47469: End If
  loc_1E47473: If (var_188 = "Revenue During the stay") Then
  loc_1E4747C:   Set var_90 = New rFomRepView
  loc_1E4748A:   var_90.GRepFormName = "GuestwiseRevenue"
  loc_1E4749A:   var_90.CAPTION = CVar(arg_10)
  loc_1E474A3:   Call var_90.Show
  loc_1E474A9:   GoTo loc_1E3D9A1
  loc_1E474AC: End If
  loc_1E474B6: If (var_188 = "EPBAX Call Report") Then
  loc_1E474BF:   Set var_90 = New rRepTelPreview
  loc_1E474CD:   var_90.GRepFormName = "EpabxCallRep"
  loc_1E474DD:   var_90.CAPTION = CVar(arg_10)
  loc_1E474E6:   Call var_90.Show
  loc_1E474EC:   GoTo loc_1E3D9A1
  loc_1E474EF: End If
  loc_1E474F9: If Not (var_188 = "Instant House Count") Then
  loc_1E47504:   If (var_188 = "Instant House Count ") Then
  loc_1E47507:   End If
  loc_1E4750D:   Set var_90 = New rFomRepView
  loc_1E4751B:   var_90.GRepFormName = "InsHouseCount"
  loc_1E4752B:   var_90.CAPTION = CVar(arg_10)
  loc_1E47534:   Call var_90.Show
  loc_1E4753A:   GoTo loc_1E3D9A1
  loc_1E4753D: End If
  loc_1E47547: If (var_188 = "Cancel Bill Details") Then
  loc_1E47550:   Set var_90 = New rFomRepView
  loc_1E4755E:   var_90.GRepFormName = "cancelBillDetails"
  loc_1E4756E:   var_90.CAPTION = CVar(arg_10)
  loc_1E47577:   Do 'loop at: 1E57510
  loc_1E47577:   Call var_90.Show
  loc_1E4757D:   GoTo loc_1E3D9A1
  loc_1E47580: End If
  loc_1E4758A: If (var_188 = "Room Change History") Then
  loc_1E47593:   Set var_90 = New rFomRepView
  loc_1E475A1:   var_90.GRepFormName = "RoomChangeHistory"
  loc_1E475B1:   var_90.CAPTION = CVar(arg_10)
  loc_1E475BA:   Call var_90.Show
  loc_1E475C0:   GoTo loc_1E3D9A1
  loc_1E475C3: End If
  loc_1E475CD: If (var_188 = "Arrival And Departure Register") Then
  loc_1E475D6:   Set var_90 = New rFomRepView
  loc_1E475E4:   var_90.GRepFormName = "ArrDepReg"
  loc_1E475F4:   var_90.CAPTION = CVar(arg_10)
  loc_1E475FD:   Call var_90.Show
  loc_1E47603:   GoTo loc_1E3D9A1
  loc_1E47606: End If
  loc_1E47610: If (var_188 = "FOM Sales Register") Then
  loc_1E47619:   Set var_90 = New rFomRepView
  loc_1E47627:   var_90.GRepFormName = "SalesRegister"
  loc_1E47637:   var_90.CAPTION = CVar(arg_10)
  loc_1E47640:   Call var_90.Show
  loc_1E47646:   GoTo loc_1E3D9A1
  loc_1E47649: End If
  loc_1E47653: If (var_188 = "Occupancy Display") Then
  loc_1E4765C:   Set var_90 = New rFomRepView
  loc_1E4766A:   var_90.GRepFormName = "RoomOccDisp"
  loc_1E4767A:   var_90.CAPTION = CVar(arg_10)
  loc_1E47683:   Call var_90.Show
  loc_1E47689:   Do 'loop at: 1E57622
  loc_1E47689:   GoTo loc_1E3D9A1
  loc_1E4768C: End If
  loc_1E47696: If (var_188 = "Guest wise Analysis") Then
  loc_1E4769F:   Set var_90 = New rFomRepView
  loc_1E476AD:   var_90.GRepFormName = "GuestWiseAnalysis"
  loc_1E476BD:   var_90.CAPTION = CVar(arg_10)
  loc_1E476C6:   Call var_90.Show
  loc_1E476CC:   GoTo loc_1E3D9A1
  loc_1E476CF: End If
  loc_1E476D9: If (var_188 = "Company wise Analysis") Then
  loc_1E476E2:   Set var_90 = New rFomRepView
  loc_1E476F0:   var_90.GRepFormName = "CompanySumm"
  loc_1E47700:   var_90.CAPTION = CVar(arg_10)
  loc_1E47709:   Do 'loop at: 1E576AB
  loc_1E47709:   Call var_90.Show
  loc_1E4770F:   GoTo loc_1E3D9A1
  loc_1E47712: End If
  loc_1E4771C: If (var_188 = "Guestwise Charges Detail") Then
  loc_1E47725:   Set var_90 = New rFomRepView
  loc_1E47733:   var_90.GRepFormName = "GuestChargesMIS"
  loc_1E47743:   var_90.CAPTION = CVar(arg_10)
  loc_1E4774C:   Call var_90.Show
  loc_1E47752:   GoTo loc_1E3D9A1
  loc_1E47755: End If
  loc_1E4775F: If (var_188 = "Room Occupancy") Then
  loc_1E47768:   Set var_90 = New rFomRepView
  loc_1E47776:   var_90.GRepFormName = "RoomOccupancyReportSummary"
  loc_1E47786:   var_90.CAPTION = CVar(arg_10)
  loc_1E4778F:   Call var_90.Show
  loc_1E47795:   GoTo loc_1E3D9A1
  loc_1E47798: End If
  loc_1E477A2: If (var_188 = "Room Type Occupancy") Then
  loc_1E477AB:   Set var_90 = New rFomRepView
  loc_1E477B9:   var_90.GRepFormName = "RoomTypeOccupancyReport"
  loc_1E477C9:   var_90.CAPTION = CVar(arg_10)
  loc_1E477D2:   Call var_90.Show
  loc_1E477D8:   GoTo loc_1E3D9A1
  loc_1E477DB: End If
  loc_1E477E5: If (var_188 = "Room Wise Room Revenue") Then
  loc_1E477EE:   Set var_90 = New rFomRepView
  loc_1E477FC:   var_90.GRepFormName = "RoomWiseRoomRevenueReport"
  loc_1E47809:   Do 'loop at: 1E577AB
  loc_1E4780C:   var_90.CAPTION = CVar(arg_10)
  loc_1E47815:   Call var_90.Show
  loc_1E4781B:   GoTo loc_1E3D9A1
  loc_1E4781E: End If
  loc_1E47828: If (var_188 = "Occupancy Analysis") Then
  loc_1E47831:   Set var_90 = New rFomRepView
  loc_1E4783F:   var_90.GRepFormName = "RoomOccupancyAnalysisReport"
  loc_1E4784F:   var_90.CAPTION = CVar(arg_10)
  loc_1E47858:   Call var_90.Show
  loc_1E4785E:   GoTo loc_1E3D9A1
  loc_1E47861: End If
  loc_1E4786B: If (var_188 = "Room Status Report") Then
  loc_1E47874:   Set var_90 = New rRepHousePreview
  loc_1E47882:   var_90.GRepFormName = "RoomStatus"
  loc_1E47892:   Do 'loop at: 1E5782B
  loc_1E47892:   var_90.CAPTION = CVar(arg_10)
  loc_1E4789B:   Call var_90.Show
  loc_1E478A1:   GoTo loc_1E3D9A1
  loc_1E478A4: End If
  loc_1E478AE: If (var_188 = "Complaint Detail") Then
  loc_1E478B7:   Set var_90 = New rRepHousePreview
  loc_1E478C5:   var_90.GRepFormName = "ComplaintList"
  loc_1E478D5:   var_90.CAPTION = CVar(arg_10)
  loc_1E478DE:   Call var_90.Show
  loc_1E478E4:   GoTo loc_1E3D9A1
  loc_1E478E7: End If
  loc_1E478F1: If Not (var_188 = "Stock Register") Then
  loc_1E478FC:   If (var_188 = "Stock Register ") Then
  loc_1E478FF:   End If
  loc_1E47905:   Set var_90 = New rInventRepView
  loc_1E47913:   var_90.GRepFormName = "StockRegStore"
  loc_1E47923:   var_90.CAPTION = CVar(arg_10)
  loc_1E4792C:   Call var_90.Show
  loc_1E47932:   GoTo loc_1E3D9A1
  loc_1E47935: End If
  loc_1E4793F: If Not (var_188 = "Stock Summary") Then
  loc_1E4794A:   If (var_188 = "Stock Summary ") Then
  loc_1E4794D:   End If
  loc_1E47953:   Set var_90 = New rInventRepView
  loc_1E47961:   var_90.GRepFormName = "StockSummStore"
  loc_1E47971:   var_90.CAPTION = CVar(arg_10)
  loc_1E4797A:   Call var_90.Show
  loc_1E47980:   GoTo loc_1E3D9A1
  loc_1E47983: End If
  loc_1E4798D: If (var_188 = "VAT Register") Then
  loc_1E47996:   Set var_90 = New rInventRepView
  loc_1E479A4:   Do 'loop at: 1E5793D
  loc_1E479A4:   var_90.GRepFormName = "VATRegister"
  loc_1E479B4:   var_90.CAPTION = CVar(arg_10)
  loc_1E479BD:   Call var_90.Show
  loc_1E479C3:   GoTo loc_1E3D9A1
  loc_1E479C6: End If
  loc_1E479D0: If (var_188 = "Purchase Ledger") Then
  loc_1E479D9:   Set var_90 = New rInventRepView
  loc_1E479E7:   var_90.GRepFormName = "PurchaseLedger"
  loc_1E479F7:   var_90.CAPTION = CVar(arg_10)
  loc_1E47A00:   Call var_90.Show
  loc_1E47A06:   GoTo loc_1E3D9A1
  loc_1E47A09: End If
  loc_1E47A13: If Not (var_188 = "Issue Checklist") Then
  loc_1E47A1E:   If (var_188 = "Issue CheckList") Then
  loc_1E47A21:   End If
  loc_1E47A27:   Set var_90 = New rInventRepView
  loc_1E47A35:   var_90.GRepFormName = "IssueReg"
  loc_1E47A45:   var_90.CAPTION = CVar(arg_10)
  loc_1E47A4E:   Call var_90.Show
  loc_1E47A54:   GoTo loc_1E3D9A1
  loc_1E47A57: End If
  loc_1E47A61: If (var_188 = "Store Issue Report") Then
  loc_1E47A6A:   Set var_90 = New rInventRepView
  loc_1E47A78:   var_90.GRepFormName = "StoreIssueReport"
  loc_1E47A88:   var_90.CAPTION = CVar(arg_10)
  loc_1E47A91:   Call var_90.Show
  loc_1E47A97:   GoTo loc_1E3D9A1
  loc_1E47A9A: End If
  loc_1E47AA4: If (var_188 = "Pending M.R.") Then
  loc_1E47AAD:   Do 'loop at: 1E57A4F
  loc_1E47AAD:   Set var_90 = New rInventRepView
  loc_1E47ABB:   var_90.GRepFormName = "PurchBill"
  loc_1E47ACB:   var_90.CAPTION = CVar(arg_10)
  loc_1E47AD4:   Call var_90.Show
  loc_1E47ADA:   GoTo loc_1E3D9A1
  loc_1E47ADD: End If
  loc_1E47AE7: If (var_188 = "Stock Summary P/S Basis") Then
  loc_1E47AF0:   Set var_90 = New rInventRepView
  loc_1E47AFE:   var_90.GRepFormName = "StockSummaryP/SBasis"
  loc_1E47B0E:   var_90.CAPTION = CVar(arg_10)
  loc_1E47B17:   Call var_90.Show
  loc_1E47B1D:   GoTo loc_1E3D9A1
  loc_1E47B20: End If
  loc_1E47B2A: If (var_188 = "ABC Analysis") Then
  loc_1E47B33:   ' Referenced from: 1E57AAA
  loc_1E47B33:   ' Referenced from: 1E57A2A
  loc_1E47B33:   ' Referenced from: 1E579A1
  loc_1E47B33:   ' Referenced from: 1E57918
  loc_1E47B33:   ' Referenced from: 1E5788F
  loc_1E47B33:   ' Referenced from: 1E57806
  loc_1E47B33:   ' Referenced from: 1E57786
  loc_1E47B33:   ' Referenced from: 1E57706
  loc_1E47B33:   ' Referenced from: 1E57686
  loc_1E47B33:   ' Referenced from: 1E575FD
  loc_1E47B33:   ' Referenced from: 1E57574
  loc_1E47B33:   ' Referenced from: 1E574EB
  loc_1E47B33:   ' Referenced from: 1E57462
  loc_1E47B33:   ' Referenced from: 1E573D9
  loc_1E47B33:   ' Referenced from: 1E57350
  loc_1E47B33:   ' Referenced from: 1E572C7
  loc_1E47B33:   ' Referenced from: 1E5723B
  loc_1E47B33:   ' Referenced from: 1E571BB
  loc_1E47B33:   ' Referenced from: 1E5713B
  loc_1E47B33:   ' Referenced from: 1E570B2
  loc_1E47B33:   ' Referenced from: 1E57032
  loc_1E47B33:   ' Referenced from: 1E56FA9
  loc_1E47B33:   ' Referenced from: 1E56F29
  loc_1E47B33:   ' Referenced from: 1E56EA0
  loc_1E47B33:   ' Referenced from: 1E56E20
  loc_1E47B33:   ' Referenced from: 1E56DA0
  loc_1E47B33:   ' Referenced from: 1E56D17
  loc_1E47B33:   ' Referenced from: 1E56C8E
  loc_1E47B33:   ' Referenced from: 1E56C05
  loc_1E47B33:   ' Referenced from: 1E56B7F
  loc_1E47B33:   ' Referenced from: 1E56AF9
  loc_1E47B33:   ' Referenced from: 1E56A73
  loc_1E47B33:   ' Referenced from: 1E569ED
  loc_1E47B33:   ' Referenced from: 1E56967
  loc_1E47B33:   ' Referenced from: 1E568E1
  loc_1E47B33:   ' Referenced from: 1E5685B
  loc_1E47B33:   ' Referenced from: 1E567D5
  loc_1E47B33:   ' Referenced from: 1E5674F
  loc_1E47B33:   ' Referenced from: 1E566C6
  loc_1E47B33:   ' Referenced from: 1E5663D
  loc_1E47B33:   ' Referenced from: 1E565B4
  loc_1E47B33:   ' Referenced from: 1E5652B
  loc_1E47B33:   ' Referenced from: 1E564A2
  loc_1E47B33:   ' Referenced from: 1E56419
  loc_1E47B33:   ' Referenced from: 1E56390
  loc_1E47B33:   ' Referenced from: 1E56310
  loc_1E47B33:   ' Referenced from: 1E56287
  loc_1E47B33:   ' Referenced from: 1E561FE
  loc_1E47B33:   ' Referenced from: 1E56175
  loc_1E47B33:   ' Referenced from: 1E560EC
  loc_1E47B33:   ' Referenced from: 1E56063
  loc_1E47B33:   ' Referenced from: 1E55FDA
  loc_1E47B33:   ' Referenced from: 1E55F6E
  loc_1E47B33:   ' Referenced from: 1E55F02
  loc_1E47B33:   ' Referenced from: 1E55E96
  loc_1E47B33:   Do 'loop at: 1E57ACF
  loc_1E47B33:   Set var_90 = New rInventRepView
  loc_1E47B41:   var_90.GRepFormName = "ABCAnalysis"
  loc_1E47B51:   var_90.CAPTION = CVar(arg_10)
  loc_1E47B5A:   Call var_90.Show
  loc_1E47B60:   GoTo loc_1E3D9A1
  loc_1E47B63: End If
  loc_1E47B6D: If (var_188 = "Production Report I/R Basis") Then
  loc_1E47B76:   Set var_90 = New rInventRepView
  loc_1E47B84:   var_90.GRepFormName = "ProductionReport"
  loc_1E47B94:   var_90.CAPTION = CVar(arg_10)
  loc_1E47B9D:   Call var_90.Show
  loc_1E47BA3:   GoTo loc_1E3D9A1
  loc_1E47BA6: End If
  loc_1E47BB0: If (var_188 = "VAT Register II") Then
  loc_1E47BB9:   Set var_90 = New rInventRepView
  loc_1E47BBE:   Do 'loop at: 1E57B7B
  loc_1E47BC7:   var_90.GRepFormName = "VATRegisterII"
  loc_1E47BD7:   var_90.CAPTION = CVar(arg_10)
  loc_1E47BE0:   Call var_90.Show
  loc_1E47BE6:   GoTo loc_1E3D9A1
  loc_1E47BE9: End If
  loc_1E47BF3: If (var_188 = "VAT Register III") Then
  loc_1E47BFC:   Set var_90 = New rInventRepView
  loc_1E47C0A:   var_90.GRepFormName = "VATRegisterIII"
  loc_1E47C13:   ' Referenced from: 1E57BBB
  loc_1E47C1A:   var_90.CAPTION = CVar(arg_10)
  loc_1E47C23:   Call var_90.Show
  loc_1E47C29:   GoTo loc_1E3D9A1
  loc_1E47C2C:   Do 'loop at: 1E4E63A
  loc_1E47C2C: End If
  loc_1E47C36: If (var_188 = "Form24 Annexure-A") Then
  loc_1E47C3F:   Set var_90 = New rInventRepView
  loc_1E47C4D:   var_90.GRepFormName = "Form24AnnexureA"
  loc_1E47C5D:   var_90.CAPTION = CVar(arg_10)
  loc_1E47C66:   Call var_90.Show
  loc_1E47C6C:   GoTo loc_1E3D9A1
  loc_1E47C6F: End If
  loc_1E47C79: If (var_188 = "Form III") Then
  loc_1E47C82:   Set var_90 = New rInventRepView
  loc_1E47C90:   var_90.GRepFormName = "FormIII"
  loc_1E47CA0:   var_90.CAPTION = CVar(arg_10)
  loc_1E47CA9:   Call var_90.Show
  loc_1E47CAF:   GoTo loc_1E3D9A1
  loc_1E47CB2: End If
  loc_1E47CBC: If (var_188 = "UPVAT XXIV") Then
  loc_1E47CC5:   Set var_90 = New rInventRepView
  loc_1E47CD3:   var_90.GRepFormName = "UPVATXXIV"
  loc_1E47CE3:   var_90.CAPTION = CVar(arg_10)
  loc_1E47CEC:   Call var_90.Show
  loc_1E47CF2:   GoTo loc_1E3D9A1
  loc_1E47CF5: End If
  loc_1E47CFF: If (var_188 = "Pending Indent") Then
  loc_1E47D08:   Set var_90 = New rInventRepView
  loc_1E47D16:   var_90.GRepFormName = "IndentReg"
  loc_1E47D26:   var_90.CAPTION = CVar(arg_10)
  loc_1E47D2F:   Call var_90.Show
  loc_1E47D35:   GoTo loc_1E3D9A1
  loc_1E47D38: End If
  loc_1E47D42: If (var_188 = "KOT Wise Details") Then
  loc_1E47D4B:   Set var_90 = New rPOSRepView
  loc_1E47D59:   var_90.GRepFormName = "KOTWiseDetails"
  loc_1E47D69:   var_90.CAPTION = CVar(arg_10)
  loc_1E47D72:   Call var_90.Show
  loc_1E47D78:   GoTo loc_1E3D9A1
  loc_1E47D7B: End If
  loc_1E47D85: If (var_188 = "Deleted Unsettled Bill") Then
  loc_1E47D8E:   Set var_90 = New rPOSRepView
  loc_1E47D9C:   var_90.GRepFormName = "DelBillUnsetBill"
  loc_1E47DAC:   var_90.CAPTION = CVar(arg_10)
  loc_1E47DB5:   Call var_90.Show
  loc_1E47DBB:   GoTo loc_1E3D9A1
  loc_1E47DBE: End If
  loc_1E47DC8: If (var_188 = "Requisition Slip") Then
  loc_1E47DD1:   Set var_90 = New pReqSlip
  loc_1E47DE0:   var_90.CAPTION = CVar(arg_10)
  loc_1E47DE9:   Call var_90.Show
  loc_1E47DEF:   GoTo loc_1E3D9A1
  loc_1E47DF2: End If
  loc_1E47DFC: If (var_188 = "Stock Transfer") Then
  loc_1E47E05:   Set var_90 = New RsKitchenStk
  loc_1E47E14:   var_90.CAPTION = CVar(arg_10)
  loc_1E47E1D:   Call var_90.Show
  loc_1E47E23:   GoTo loc_1E3D9A1
  loc_1E47E26: End If
  loc_1E47E30: If (var_188 = "Finish Material Receive Entry") Then
  loc_1E47E39:   Set var_90 = New RsStoreRecEntry
  loc_1E47E48:   var_90.CAPTION = CVar(arg_10)
  loc_1E47E51:   Call var_90.Show
  loc_1E47E57:   GoTo loc_1E3D9A1
  loc_1E47E5A: End If
  loc_1E47E64: If (var_188 = "Excise Invoice Cum Gate Pass") Then
  loc_1E47E6D:   Set var_90 = New RsKitchenMaterial
  loc_1E47E7C:   var_90.CAPTION = CVar(arg_10)
  loc_1E47E85:   Call var_90.Show
  loc_1E47E8B:   GoTo loc_1E3D9A1
  loc_1E47E8E: End If
  loc_1E47E98: If (var_188 = "Block Master") Then
  loc_1E47EA1:   Set var_90 = New frmBlockMast
  loc_1E47EB0:   var_90.CAPTION = CVar(arg_10)
  loc_1E47EB9:   Call var_90.Show
  loc_1E47EBF:   GoTo loc_1E3D9A1
  loc_1E47EC2: End If
  loc_1E47ECC: If (var_188 = "Complaint Master") Then
  loc_1E47ED5:   Set var_90 = New FrmComplaintMast
  loc_1E47EE4:   var_90.CAPTION = CVar(arg_10)
  loc_1E47EED:   Call var_90.Show
  loc_1E47EF3:   GoTo loc_1E3D9A1
  loc_1E47EF6: End If
  loc_1E47F00: If (var_188 = "Complaint Clearance") Then
  loc_1E47F09:   Set var_90 = New FrmComplaintClearing
  loc_1E47F18:   var_90.CAPTION = CVar(arg_10)
  loc_1E47F21:   Call var_90.Show
  loc_1E47F27:   GoTo loc_1E3D9A1
  loc_1E47F2A: End If
  loc_1E47F34: If (var_188 = "Lost / Found Entry") Then
  loc_1E47F3D:   Set var_90 = New FrmLostFound
  loc_1E47F4C:   var_90.CAPTION = CVar(arg_10)
  loc_1E47F55:   Call var_90.Show
  loc_1E47F5B:   GoTo loc_1E3D9A1
  loc_1E47F5E: End If
  loc_1E47F68: If (var_188 = "Claim Entry") Then
  loc_1E47F71:   Set var_90 = New FrmClaimEntry
  loc_1E47F80:   var_90.CAPTION = CVar(arg_10)
  loc_1E47F89:   Call var_90.Show
  loc_1E47F8F:   GoTo loc_1E3D9A1
  loc_1E47F92: End If
  loc_1E47F9C: If (var_188 = "Display Rack") Then
  loc_1E47FA5:   Set var_90 = New FdLookUpRoomNo
  loc_1E47FB4:   var_90.CAPTION = CVar(arg_10)
  loc_1E47FBD:   Call var_90.Show
  loc_1E47FC3:   GoTo loc_1E3D9A1
  loc_1E47FC6: End If
  loc_1E47FD0: If (var_188 = "House Keeping Screen") Then
  loc_1E47FD9:   Set var_90 = New HHouseKeeping
  loc_1E47FE8:   var_90.CAPTION = CVar(arg_10)
  loc_1E47FF1:   Call var_90.Show
  loc_1E47FF7:   GoTo loc_1E3D9A1
  loc_1E47FFA: End If
  loc_1E48004: If (var_188 = "Check Out Clearance Screen") Then
  loc_1E4800D:   Set var_90 = New HRoomCheckOutClearance
  loc_1E4801C:   var_90.CAPTION = CVar(arg_10)
  loc_1E48025:   Call var_90.Show
  loc_1E4802B:   GoTo loc_1E3D9A1
  loc_1E4802E: End If
  loc_1E48038: If (var_188 = "Room Block") Then
  loc_1E48041:   Set var_90 = New HKRoomBlock
  loc_1E48050:   var_90.CAPTION = CVar(arg_10)
  loc_1E48059:   Call var_90.Show
  loc_1E4805F:   GoTo loc_1E3D9A1
  loc_1E48062: End If
  loc_1E4806C: If (var_188 = "Travel Agency Posting") Then
  loc_1E48075:   Set var_90 = New TravelAgencyPost
  loc_1E48084:   var_90.CAPTION = CVar(arg_10)
  loc_1E4808D:   Call var_90.Show
  loc_1E48093:   GoTo loc_1E3D9A1
  loc_1E48096: End If
  loc_1E480A0: If (var_188 = "Instant House Count") Then
  loc_1E480A9:   Set var_90 = New rFomRepView
  loc_1E480B7:   var_90.GRepFormName = "InsHouseCount"
  loc_1E480C7:   var_90.CAPTION = CVar(arg_10)
  loc_1E480D0:   Call var_90.Show
  loc_1E480D6:   GoTo loc_1E3D9A1
  loc_1E480D9: End If
  loc_1E480E3: If (var_188 = "Room Inventory") Then
  loc_1E480EC:   Set var_90 = New rFomRepView
  loc_1E480FA:   var_90.GRepFormName = "RoomInventory"
  loc_1E4810A:   var_90.CAPTION = CVar(arg_10)
  loc_1E48113:   Call var_90.Show
  loc_1E48119:   GoTo loc_1E3D9A1
  loc_1E4811C: End If
  loc_1E48126: If (var_188 = "Guest In House") Then
  loc_1E4812F:   Set var_90 = New rFomRepView
  loc_1E4813D:   var_90.GRepFormName = "GuestInHouse"
  loc_1E4814D:   var_90.CAPTION = CVar(arg_10)
  loc_1E48156:   Call var_90.Show
  loc_1E4815C:   GoTo loc_1E3D9A1
  loc_1E4815F: End If
  loc_1E48169: If (var_188 = "House Keeping Report") Then
  loc_1E48172:   Set var_90 = New rFomRepView
  loc_1E48180:   var_90.GRepFormName = "HouseKeeping"
  loc_1E48190:   var_90.CAPTION = CVar(arg_10)
  loc_1E48199:   Call var_90.Show
  loc_1E4819F:   GoTo loc_1E3D9A1
  loc_1E481A2: End If
  loc_1E481AC: If (var_188 = "Arrival & Departure List") Then
  loc_1E481B5:   Set var_90 = New rFomRepView
  loc_1E481C3:   var_90.GRepFormName = "ArrivalDepList"
  loc_1E481D3:   var_90.CAPTION = CVar(arg_10)
  loc_1E481DC:   Call var_90.Show
  loc_1E481E2:   GoTo loc_1E3D9A1
  loc_1E481E5: End If
  loc_1E481EF: If (var_188 = "Charge Payment Detail") Then
  loc_1E481F8:   Set var_90 = New rFomRepView
  loc_1E48206:   var_90.GRepFormName = "GuestChgJournal"
  loc_1E48216:   var_90.CAPTION = CVar(arg_10)
  loc_1E4821F:   Call var_90.Show
  loc_1E48225:   GoTo loc_1E3D9A1
  loc_1E48228: End If
  loc_1E48232: If (var_188 = "Payments By Cashier") Then
  loc_1E4823B:   Set var_90 = New rFomRepView
  loc_1E48249:   var_90.GRepFormName = "PmtByCashier"
  loc_1E48259:   var_90.CAPTION = CVar(arg_10)
  loc_1E48262:   Call var_90.Show
  loc_1E48268:   GoTo loc_1E3D9A1
  loc_1E4826B: End If
  loc_1E48275: If (var_188 = "Form  C") Then
  loc_1E4827E:   Set var_90 = New rRepReserv
  loc_1E4828C:   var_90.GRepFormName = "FormCReport"
  loc_1E4829C:   var_90.CAPTION = CVar(arg_10)
  loc_1E482A5:   Call var_90.Show
  loc_1E482AB:   GoTo loc_1E3D9A1
  loc_1E482AE: End If
  loc_1E482B8: If (var_188 = "Tourism Form 1") Then
  loc_1E482C1:   Set var_90 = New rRepReserv
  loc_1E482CF:   var_90.GRepFormName = "Form1TourismReport"
  loc_1E482DF:   var_90.CAPTION = CVar(arg_10)
  loc_1E482E8:   Call var_90.Show
  loc_1E482EE:   GoTo loc_1E3D9A1
  loc_1E482F1: End If
  loc_1E482FB: If (var_188 = "Tourism Form 2") Then
  loc_1E48304:   Set var_90 = New rRepReserv
  loc_1E48312:   var_90.GRepFormName = "Form2TourismReport"
  loc_1E48322:   var_90.CAPTION = CVar(arg_10)
  loc_1E4832B:   Call var_90.Show
  loc_1E48331:   GoTo loc_1E3D9A1
  loc_1E48334: End If
  loc_1E4833E: If (var_188 = "Tourism Form 5") Then
  loc_1E48347:   Set var_90 = New rRepReserv
  loc_1E48355:   var_90.GRepFormName = "Form5TourismReport"
  loc_1E48365:   var_90.CAPTION = CVar(arg_10)
  loc_1E4836E:   Call var_90.Show
  loc_1E48374:   GoTo loc_1E3D9A1
  loc_1E48377: End If
  loc_1E48381: If (var_188 = "Form -3 (Luxury Tax Register)") Then
  loc_1E4838A:   Set var_90 = New rRepReserv
  loc_1E48398:   var_90.GRepFormName = "LuxuryTaxRegister"
  loc_1E483A8:   var_90.CAPTION = CVar(arg_10)
  loc_1E483B1:   Call var_90.Show
  loc_1E483B7:   GoTo loc_1E3D9A1
  loc_1E483BA: End If
  loc_1E483C4: If (var_188 = "Tourism Form 6") Then
  loc_1E483CD:   Set var_90 = New rRepReserv
  loc_1E483DB:   var_90.GRepFormName = "Form6TourismReport"
  loc_1E483EB:   var_90.CAPTION = CVar(arg_10)
  loc_1E483F4:   Call var_90.Show
  loc_1E483FA:   GoTo loc_1E3D9A1
  loc_1E483FD: End If
  loc_1E48407: If (var_188 = "Tourism Form 4") Then
  loc_1E48410:   Set var_90 = New rRepReserv
  loc_1E4841E:   var_90.GRepFormName = "Form4TourismReport"
  loc_1E4842E:   var_90.CAPTION = CVar(arg_10)
  loc_1E48437:   Call var_90.Show
  loc_1E4843D:   GoTo loc_1E3D9A1
  loc_1E48440: End If
  loc_1E4844A: If (var_188 = "Luxury Tax Report") Then
  loc_1E48453:   Set var_90 = New rRepReserv
  loc_1E48461:   var_90.GRepFormName = "LuxuryTaxRegisterI"
  loc_1E48471:   var_90.CAPTION = CVar(arg_10)
  loc_1E4847A:   Call var_90.Show
  loc_1E48480:   GoTo loc_1E3D9A1
  loc_1E48483: End If
  loc_1E4848D: If (var_188 = "Monthly Return") Then
  loc_1E48496:   Set var_90 = New rRepReserv
  loc_1E484A4:   var_90.GRepFormName = "MonthlyStatisticalReturn"
  loc_1E484B4:   var_90.CAPTION = CVar(arg_10)
  loc_1E484BD:   Call var_90.Show
  loc_1E484C3:   GoTo loc_1E3D9A1
  loc_1E484C6: End If
  loc_1E484D0: If (var_188 = "L.T. FORM II") Then
  loc_1E484D9:   Set var_90 = New rRepReserv
  loc_1E484E7:   var_90.GRepFormName = "LTFORMII"
  loc_1E484F7:   var_90.CAPTION = CVar(arg_10)
  loc_1E48500:   Call var_90.Show
  loc_1E48506:   GoTo loc_1E3D9A1
  loc_1E48509: End If
  loc_1E48513: If (var_188 = "L.T. FORM IV") Then
  loc_1E4851C:   Set var_90 = New rRepReserv
  loc_1E4852A:   var_90.GRepFormName = "LTFORMIV"
  loc_1E4853A:   var_90.CAPTION = CVar(arg_10)
  loc_1E48543:   Call var_90.Show
  loc_1E48549:   GoTo loc_1E3D9A1
  loc_1E4854C: End If
  loc_1E48556: If (var_188 = "Reservation/Cancellation") Then
  loc_1E48561:   Set var_90 = MemVar_1F964EC 
  loc_1E48571:   var_90.CAPTION = CVar(arg_10)
  loc_1E4857A:   Call var_90.Show
  loc_1E48580:   GoTo loc_1E3D9A1
  loc_1E48583: End If
  loc_1E4858D: If (var_188 = "Reservation Status Screen") Then
  loc_1E48596:   Set var_90 = New FrmReservationStatus
  loc_1E485A5:   var_90.CAPTION = CVar(arg_10)
  loc_1E485AE:   Call var_90.Show
  loc_1E485B4:   GoTo loc_1E3D9A1
  loc_1E485B7: End If
  loc_1E485C1: If (var_188 = "Add/Edit/Delete Group With Reservation") Then
  loc_1E485CC:   Set var_90 = MemVar_1F96500 
  loc_1E485DC:   var_90.CAPTION = CVar(arg_10)
  loc_1E485E5:   Call var_90.Show
  loc_1E485EB:   GoTo loc_1E3D9A1
  loc_1E485EE: End If
  loc_1E485F8: If (var_188 = "Look Up Room types") Then
  loc_1E48603:   Set var_90 = MemVar_1F96514 
  loc_1E48613:   var_90.CAPTION = CVar(arg_10)
  loc_1E4861C:   Call var_90.Show
  loc_1E48622:   GoTo loc_1E3D9A1
  loc_1E48625: End If
  loc_1E4862F: If (var_188 = "Look Up Rooms") Then
  loc_1E4863A:   Set var_90 = MemVar_1F96528 
  loc_1E4864A:   var_90.CAPTION = CVar(arg_10)
  loc_1E48653:   Call var_90.Show
  loc_1E48659:   GoTo loc_1E3D9A1
  loc_1E4865C: End If
  loc_1E48666: If (var_188 = "Reservation With History") Then
  loc_1E48671:   Set var_90 = MemVar_1F9653C 
  loc_1E48681:   var_90.CAPTION = CVar(arg_10)
  loc_1E4868A:   Call var_90.Show
  loc_1E48690:   GoTo loc_1E3D9A1
  loc_1E48693: End If
  loc_1E4869D: If (var_188 = "Advance Deposite") Then
  loc_1E486A8:   Set var_90 = MemVar_1F96550 
  loc_1E486BA:   var_90.OpenType = 1
  loc_1E486CC:   var_90.OpenMode = 2
  loc_1E486DB:   var_90.AdvType = "ADRES"
  loc_1E486EB:   var_90.CAPTION = CVar(arg_10)
  loc_1E486F4:   Call var_90.Show
  loc_1E486FA:   GoTo loc_1E3D9A1
  loc_1E486FD: End If
  loc_1E48707: If (var_188 = "Confirmation Letters") Then
  loc_1E48710:   Set var_90 = New rRepReserv
  loc_1E4871E:   var_90.GRepFormName = "ConfirmLetter"
  loc_1E4872E:   var_90.CAPTION = CVar(arg_10)
  loc_1E48737:   Call var_90.Show
  loc_1E4873D:   GoTo loc_1E3D9A1
  loc_1E48740: End If
  loc_1E4874A: If (var_188 = "Cancellation Letters") Then
  loc_1E48753:   Set var_90 = New rRepReserv
  loc_1E48761:   var_90.GRepFormName = "CancellLetter"
  loc_1E48771:   var_90.CAPTION = CVar(arg_10)
  loc_1E4877A:   Call var_90.Show
  loc_1E48780:   GoTo loc_1E3D9A1
  loc_1E48783: End If
  loc_1E4878D: If (var_188 = "Registration Card") Then
  loc_1E48796:   Set var_90 = New rRepReserv
  loc_1E487A4:   var_90.GRepFormName = "RegistrationCard"
  loc_1E487B4:   var_90.CAPTION = CVar(arg_10)
  loc_1E487BD:   Call var_90.Show
  loc_1E487C3:   GoTo loc_1E3D9A1
  loc_1E487C6: End If
  loc_1E487D0: If (var_188 = "Reservation Status") Then
  loc_1E487D9:   Set var_90 = New rFomRepView
  loc_1E487E7:   var_90.GRepFormName = "ReservationStatus"
  loc_1E487F7:   var_90.CAPTION = CVar(arg_10)
  loc_1E48800:   Call var_90.Show
  loc_1E48806:   GoTo loc_1E3D9A1
  loc_1E48809: End If
  loc_1E48813: If (var_188 = "Reservation Status Arrival") Then
  loc_1E4881C:   Set var_90 = New rFomRepView
  loc_1E4882A:   var_90.GRepFormName = "ReservStatusArrival"
  loc_1E4883A:   var_90.CAPTION = CVar(arg_10)
  loc_1E48843:   Call var_90.Show
  loc_1E48849:   GoTo loc_1E3D9A1
  loc_1E4884C: End If
  loc_1E48856: If (var_188 = "Reservation Status In-House") Then
  loc_1E4885F:   Set var_90 = New rFomRepView
  loc_1E4886D:   var_90.GRepFormName = "ReservStatusInHouse"
  loc_1E4887D:   var_90.CAPTION = CVar(arg_10)
  loc_1E48886:   Call var_90.Show
  loc_1E4888C:   GoTo loc_1E3D9A1
  loc_1E4888F: End If
  loc_1E48899: If (var_188 = "Group Pickup Report") Then
  loc_1E4889C:   GoTo loc_1E3D9A1
  loc_1E4889F: End If
  loc_1E488A9: If (var_188 = "Group Arrival Report") Then
  loc_1E488AC:   GoTo loc_1E3D9A1
  loc_1E488AF: End If
  loc_1E488B9: If (var_188 = "Movement List") Then
  loc_1E488C2:   Set var_90 = New rFomRepView
  loc_1E488D0:   var_90.GRepFormName = "MovementList"
  loc_1E488E0:   var_90.CAPTION = CVar(arg_10)
  loc_1E488E9:   Call var_90.Show
  loc_1E488EF:   GoTo loc_1E3D9A1
  loc_1E488F2: End If
  loc_1E488FC: If (var_188 = "Arrival List") Then
  loc_1E48905:   Set var_90 = New rFomRepView
  loc_1E48913:   var_90.GRepFormName = "MovementList"
  loc_1E48923:   var_90.CAPTION = CVar(arg_10)
  loc_1E4892C:   Call var_90.Show
  loc_1E48932:   GoTo loc_1E3D9A1
  loc_1E48935: End If
  loc_1E4893F: If (var_188 = "Bill Change Report") Then
  loc_1E48948:   Set var_90 = New rFomRepView
  loc_1E48956:   var_90.GRepFormName = "FOMBillChangeReport"
  loc_1E48966:   var_90.CAPTION = CVar(arg_10)
  loc_1E4896F:   Call var_90.Show
  loc_1E48975:   GoTo loc_1E3D9A1
  loc_1E48978: End If
  loc_1E48982: If (var_188 = "Check In Register") Then
  loc_1E4898B:   Set var_90 = New rFomRepView
  loc_1E48999:   var_90.GRepFormName = "ChkInRegister"
  loc_1E489A9:   var_90.CAPTION = CVar(arg_10)
  loc_1E489B2:   Call var_90.Show
  loc_1E489B8:   GoTo loc_1E3D9A1
  loc_1E489BB: End If
  loc_1E489C5: If (var_188 = "Expected Check Out") Then
  loc_1E489CE:   Set var_90 = New rFomRepView
  loc_1E489DC:   var_90.GRepFormName = "ExpectedDeparture"
  loc_1E489EC:   var_90.CAPTION = CVar(arg_10)
  loc_1E489F5:   Call var_90.Show
  loc_1E489FB:   GoTo loc_1E3D9A1
  loc_1E489FE: End If
  loc_1E48A08: If (var_188 = "Advance Recd.") Then
  loc_1E48A11:   Set var_90 = New rFomRepView
  loc_1E48A1F:   var_90.GRepFormName = "ResvAdvRecd"
  loc_1E48A2F:   var_90.CAPTION = CVar(arg_10)
  loc_1E48A38:   Call var_90.Show
  loc_1E48A3E:   GoTo loc_1E3D9A1
  loc_1E48A41: End If
  loc_1E48A4B: If (var_188 = "Advance Recd. Arrival") Then
  loc_1E48A54:   Set var_90 = New rFomRepView
  loc_1E48A62:   var_90.GRepFormName = "ResvAdvRecdArr"
  loc_1E48A72:   var_90.CAPTION = CVar(arg_10)
  loc_1E48A7B:   Call var_90.Show
  loc_1E48A81:   GoTo loc_1E3D9A1
  loc_1E48A84: End If
  loc_1E48A8E: If (var_188 = "Advance Recd. In-House") Then
  loc_1E48A97:   Set var_90 = New rFomRepView
  loc_1E48AA5:   var_90.GRepFormName = "ResvAdvRecdInHouse"
  loc_1E48AB5:   var_90.CAPTION = CVar(arg_10)
  loc_1E48ABE:   Call var_90.Show
  loc_1E48AC4:   GoTo loc_1E3D9A1
  loc_1E48AC7: End If
  loc_1E48AD1: If (var_188 = "7-730 Days Forecast") Then
  loc_1E48ADA:   Set var_90 = New rFomRepView
  loc_1E48AE8:   var_90.GRepFormName = "DaysForecastRep"
  loc_1E48AF8:   var_90.CAPTION = CVar(arg_10)
  loc_1E48B01:   Call var_90.Show
  loc_1E48B07:   GoTo loc_1E3D9A1
  loc_1E48B0A: End If
  loc_1E48B14: If (var_188 = "23 Day Room Availability Forecast") Then
  loc_1E48B1D:   Set var_90 = New resRoomNo
  loc_1E48B2C:   var_90.CAPTION = CVar(arg_10)
  loc_1E48B3E:   var_90.Frame2.Visible = True
  loc_1E48B45:   GoTo loc_1E3D9A1
  loc_1E48B48: End If
  loc_1E48B52: If (var_188 = "23 Day Room Type Availability Forecast") Then
  loc_1E48B5B:   Set var_90 = New resRoomType
  loc_1E48B6A:   var_90.CAPTION = CVar(arg_10)
  loc_1E48B7C:   var_90.Frame2.Visible = True
  loc_1E48B83:   GoTo loc_1E3D9A1
  loc_1E48B86: End If
  loc_1E48B90: If Not (var_188 = "Package Forecast") Then
  loc_1E48B9B:   If (var_188 = "Package Forecast ") Then
  loc_1E48B9E:   End If
  loc_1E48BA4:   Set var_90 = New rFomRepView
  loc_1E48BB2:   var_90.GRepFormName = "PackageForecast"
  loc_1E48BC2:   var_90.CAPTION = CVar(arg_10)
  loc_1E48BCB:   Call var_90.Show
  loc_1E48BD1:   GoTo loc_1E3D9A1
  loc_1E48BD4: End If
  loc_1E48BDE: If (var_188 = "Rooms Op.Stock Entry") Then
  loc_1E48BEB:   If (MemVar_1F951BC = vbNullString) Then
  loc_1E48BF4:     Set var_90 = New FrmChangeDepart
  loc_1E48BF9:     var_CC = 1
  loc_1E48C02:     Call var_90.Show
  loc_1E48C0A:     var_CC = 0
  loc_1E48C13:     Call var_90.ZOrder
  loc_1E48C19:   End If
  loc_1E48C21:   Set var_90 = New HKRoomOpStk
  loc_1E48C30:   var_90.CAPTION = CVar(arg_10)
  loc_1E48C39:   Call var_90.Show
  loc_1E48C3F:   GoTo loc_1E3D9A1
  loc_1E48C42: End If
  loc_1E48C4C: If (var_188 = "House Keeping Op.Stock Entry") Then
  loc_1E48C59:   If (MemVar_1F951BC = vbNullString) Then
  loc_1E48C62:     Set var_90 = New FrmChangeDepart
  loc_1E48C67:     var_CC = 1
  loc_1E48C70:     Call var_90.Show
  loc_1E48C78:     var_CC = 0
  loc_1E48C81:     Call var_90.ZOrder
  loc_1E48C87:   End If
  loc_1E48C8F:   Set var_90 = New HKHouseOpStk
  loc_1E48C9E:   var_90.CAPTION = CVar(arg_10)
  loc_1E48CA7:   Call var_90.Show
  loc_1E48CAD:   GoTo loc_1E3D9A1
  loc_1E48CB0: End If
  loc_1E48CBA: If (var_188 = "Issue/Recd. Entry") Then
  loc_1E48CC3:   Set var_90 = New FrmStockTransfer
  loc_1E48CD2:   var_90.CAPTION = CVar(arg_10)
  loc_1E48CDB:   Call var_90.Show
  loc_1E48CE1:   GoTo loc_1E3D9A1
  loc_1E48CE4: End If
  loc_1E48CEE: If (var_188 = "House Keeping Screen") Then
  loc_1E48CF7:   Set var_90 = New HHouseKeeping
  loc_1E48D06:   var_90.CAPTION = CVar(arg_10)
  loc_1E48D0F:   Call var_90.Show
  loc_1E48D15:   GoTo loc_1E3D9A1
  loc_1E48D18: End If
  loc_1E48D22: If (var_188 = "Issue Register") Then
  loc_1E48D2B:   Set var_90 = New rRepHousePreview
  loc_1E48D39:   var_90.GRepFormName = "IssueRegister"
  loc_1E48D49:   var_90.CAPTION = CVar(arg_10)
  loc_1E48D52:   Call var_90.Show
  loc_1E48D58:   GoTo loc_1E3D9A1
  loc_1E48D5B: End If
  loc_1E48D65: If (var_188 = "Changes Department") Then
  loc_1E48D6E:   Set var_90 = New FrmChangeDepart
  loc_1E48D7D:   var_90.CAPTION = CVar(arg_10)
  loc_1E48D86:   Call var_90.Show
  loc_1E48D8C:   GoTo loc_1E3D9A1
  loc_1E48D8F: End If
  loc_1E48D99: If (var_188 = "Godown Master") Then
  loc_1E48DA2:   Set var_90 = New Godown
  loc_1E48DB1:   var_90.CAPTION = CVar(arg_10)
  loc_1E48DBA:   Call var_90.Show
  loc_1E48DC0:   GoTo loc_1E3D9A1
  loc_1E48DC3: End If
  loc_1E48DCD: If (var_188 = "Gravy Item Entry") Then
  loc_1E48DD6:   Set var_90 = New RsGravyItemEntry
  loc_1E48DE5:   var_90.CAPTION = CVar(arg_10)
  loc_1E48DEE:   Call var_90.Show
  loc_1E48DF4:   GoTo loc_1E3D9A1
  loc_1E48DF7: End If
  loc_1E48E01: If (var_188 = "Indent") Then
  loc_1E48E0A:   Set var_90 = New PIndent
  loc_1E48E19:   var_90.CAPTION = CVar(arg_10)
  loc_1E48E22:   Call var_90.Show
  loc_1E48E28:   GoTo loc_1E3D9A1
  loc_1E48E2B: End If
  loc_1E48E35: If (var_188 = "Purchase Order") Then
  loc_1E48E3E:   Set var_90 = New pPOrder
  loc_1E48E4D:   var_90.CAPTION = CVar(arg_10)
  loc_1E48E56:   Call var_90.Show
  loc_1E48E5C:   GoTo loc_1E3D9A1
  loc_1E48E5F: End If
  loc_1E48E69: If (var_188 = "M.R. Entry") Then
  loc_1E48E72:   Set var_90 = New pMREntry
  loc_1E48E81:   var_90.CAPTION = CVar(arg_10)
  loc_1E48E8A:   Call var_90.Show
  loc_1E48E90:   GoTo loc_1E3D9A1
  loc_1E48E93: End If
  loc_1E48E9D: If (var_188 = "Purchase Bill") Then
  loc_1E48EA6:   Set var_90 = New pPBill
  loc_1E48EB5:   var_90.CAPTION = CVar(arg_10)
  loc_1E48EBE:   Call var_90.Show
  loc_1E48EC4:   GoTo loc_1E3D9A1
  loc_1E48EC7: End If
  loc_1E48ED1: If (var_188 = "Expense Voucher") Then
  loc_1E48EDA:   Set var_90 = New FaTaxVoucher
  loc_1E48EE8:   var_90.OpenAs = "Expense"
  loc_1E48EF8:   var_90.CAPTION = CVar(arg_10)
  loc_1E48F01:   Call var_90.Show
  loc_1E48F07:   GoTo loc_1E3D9A1
  loc_1E48F0A: End If
  loc_1E48F14: If (var_188 = "Requistion Slip Entry") Then
  loc_1E48F1D:   Set var_90 = New pReqSlip
  loc_1E48F2C:   var_90.CAPTION = CVar(arg_10)
  loc_1E48F35:   Call var_90.Show
  loc_1E48F3B:   GoTo loc_1E3D9A1
  loc_1E48F3E: End If
  loc_1E48F48: If (var_188 = "Stock Issue on Requisition") Then
  loc_1E48F51:   Set var_90 = New pGIss
  loc_1E48F60:   var_90.CAPTION = CVar(arg_10)
  loc_1E48F69:   Call var_90.Show
  loc_1E48F6F:   GoTo loc_1E3D9A1
  loc_1E48F72: End If
  loc_1E48F7C: If (var_188 = "Kitchen Closing Stock") Then
  loc_1E48F85:   Set var_90 = New kClStk
  loc_1E48F94:   var_90.CAPTION = CVar(arg_10)
  loc_1E48F9D:   Call var_90.Show
  loc_1E48FA3:   GoTo loc_1E3D9A1
  loc_1E48FA6: End If
  loc_1E48FB0: If (var_188 = "Kitchen stock Transfer") Then
  loc_1E48FB9:   Set var_90 = New RsKitchenStk
  loc_1E48FC8:   var_90.CAPTION = CVar(arg_10)
  loc_1E48FD1:   Call var_90.Show
  loc_1E48FD7:   GoTo loc_1E3D9A1
  loc_1E48FDA: End If
  loc_1E48FE4: If (var_188 = "Kitchen Stock Report I/R Basis") Then
  loc_1E48FED:   Set var_90 = New rInventRepView
  loc_1E48FFB:   var_90.GRepFormName = "KitchenStkRep"
  loc_1E4900B:   var_90.CAPTION = CVar(arg_10)
  loc_1E49014:   Call var_90.Show
  loc_1E4901A:   GoTo loc_1E3D9A1
  loc_1E4901D: End If
  loc_1E49027: If Not (var_188 = "Purchase Register") Then
  loc_1E49032:   If (var_188 = "Purchase Register ") Then
  loc_1E49035:   End If
  loc_1E4903B:   Set var_90 = New rInventRepView
  loc_1E49049:   var_90.GRepFormName = "PurchaseReg"
  loc_1E49059:   var_90.CAPTION = CVar(arg_10)
  loc_1E49062:   Call var_90.Show
  loc_1E49068:   GoTo loc_1E3D9A1
  loc_1E4906B: End If
  loc_1E49075: If Not (var_188 = "Purchase Summary") Then
  loc_1E49080:   If (var_188 = "Purchase Summary ") Then
  loc_1E49083:   End If
  loc_1E49089:   Set var_90 = New rInventRepView
  loc_1E49097:   var_90.GRepFormName = "PurchaseSumm"
  loc_1E490A7:   var_90.CAPTION = CVar(arg_10)
  loc_1E490B0:   Call var_90.Show
  loc_1E490B6:   GoTo loc_1E3D9A1
  loc_1E490B9: End If
  loc_1E490C3: If (var_188 = "Pending Purchase Order") Then
  loc_1E490CC:   Set var_90 = New rInventRepView
  loc_1E490DA:   var_90.GRepFormName = "PurchOrder"
  loc_1E490EA:   var_90.CAPTION = CVar(arg_10)
  loc_1E490F3:   Call var_90.Show
  loc_1E490F9:   GoTo loc_1E3D9A1
  loc_1E490FC: End If
  loc_1E49106: If (var_188 = "Cash/Credit Purchase") Then
  loc_1E4910F:   Set var_90 = New rInventRepView
  loc_1E4911D:   var_90.GRepFormName = "CashCreditPurch"
  loc_1E4912D:   var_90.CAPTION = CVar(arg_10)
  loc_1E49136:   Call var_90.Show
  loc_1E4913C:   GoTo loc_1E3D9A1
  loc_1E4913F: End If
  loc_1E49149: If Not (var_188 = "Stock Register") Then
  loc_1E49154:   If Not (var_188 = "Stock Register  ") Then
  loc_1E4915F:     If (var_188 = "Stock Register ") Then
  loc_1E49162:     End If
  loc_1E49162:   End If
  loc_1E49168:   Set var_90 = New rInventRepView
  loc_1E49176:   var_90.GRepFormName = "StockRegStore"
  loc_1E49186:   var_90.CAPTION = CVar(arg_10)
  loc_1E4918F:   Call var_90.Show
  loc_1E49195:   GoTo loc_1E3D9A1
  loc_1E49198: End If
  loc_1E491A2: If Not (var_188 = "Stock Summary") Then
  loc_1E491AD:   If (var_188 = "Stock Summary  ") Then
  loc_1E491B0:   End If
  loc_1E491B6:   Set var_90 = New rInventRepView
  loc_1E491C4:   var_90.GRepFormName = "StockSummStore"
  loc_1E491D4:   var_90.CAPTION = CVar(arg_10)
  loc_1E491DD:   Call var_90.Show
  loc_1E491E3:   GoTo loc_1E3D9A1
  loc_1E491E6: End If
  loc_1E491F0: If (var_188 = "Daily Store Issue Reports") Then
  loc_1E491F9:   Set var_90 = New rInventRepView
  loc_1E49207:   var_90.GRepFormName = "DailyStoreIssRpt"
  loc_1E49217:   var_90.CAPTION = CVar(arg_10)
  loc_1E49220:   Call var_90.Show
  loc_1E49226:   GoTo loc_1E3D9A1
  loc_1E49229: End If
  loc_1E49233: If Not (var_188 = "Stock In Hand") Then
  loc_1E4923E:   If (var_188 = "Stock In Hand ") Then
  loc_1E49241:   End If
  loc_1E49247:   Set var_90 = New rInventRepView
  loc_1E49255:   var_90.GRepFormName = "StockINHand"
  loc_1E49265:   var_90.CAPTION = CVar(arg_10)
  loc_1E4926E:   Call var_90.Show
  loc_1E49274:   GoTo loc_1E3D9A1
  loc_1E49277: End If
  loc_1E49281: If (var_188 = "Excess Consumption Report") Then
  loc_1E4928A:   Set var_90 = New rInventRepView
  loc_1E49298:   var_90.GRepFormName = "ExcessConsumption"
  loc_1E492A8:   var_90.CAPTION = CVar(arg_10)
  loc_1E492B1:   Call var_90.Show
  loc_1E492B7:   GoTo loc_1E3D9A1
  loc_1E492BA: End If
  loc_1E492C4: If (var_188 = "Restaurant Issue Report") Then
  loc_1E492CD:   Set var_90 = New rInventRepView
  loc_1E492DB:   var_90.GRepFormName = "RestIssue"
  loc_1E492EB:   var_90.CAPTION = CVar(arg_10)
  loc_1E492F4:   Call var_90.Show
  loc_1E492FA:   GoTo loc_1E3D9A1
  loc_1E492FD: End If
  loc_1E49307: If (var_188 = "Store Issue Register") Then
  loc_1E49310:   Set var_90 = New rInventRepView
  loc_1E4931E:   var_90.GRepFormName = "StoreIssReg"
  loc_1E4932E:   var_90.CAPTION = CVar(arg_10)
  loc_1E49337:   Call var_90.Show
  loc_1E4933D:   GoTo loc_1E3D9A1
  loc_1E49340: End If
  loc_1E4934A: If (var_188 = "Liquor Sale Report") Then
  loc_1E49353:   Set var_90 = New rInventRepView
  loc_1E49361:   var_90.GRepFormName = "LiquorSaleRep"
  loc_1E49371:   var_90.CAPTION = CVar(arg_10)
  loc_1E4937A:   Call var_90.Show
  loc_1E49380:   GoTo loc_1E3D9A1
  loc_1E49383: End If
  loc_1E4938D: If (var_188 = "Change Kitchen/Store") Then
  loc_1E49396:   Set var_90 = New FrmChangeKitch
  loc_1E4939E:   var_CC = CVar(arg_10) 'String
  loc_1E493A5:   var_90.CAPTION = var_CC
  loc_1E493AE:   Call var_90.Show
  loc_1E493B4:   GoTo loc_1E3D9A1
  loc_1E493B7: End If
  loc_1E493C1: If Not (var_188 = "KOT Entry") Then
  loc_1E493CC:   If (var_188 = "LOT Entry") Then
  loc_1E493CF:   End If
  loc_1E493D5:   Set var_90 = New RsKOTEntry
  loc_1E493FE:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, var_CC, var_CC)))
  loc_1E4940A:   var_CC = CVar(arg_10) 'String
  loc_1E49411:   var_90.CAPTION = var_CC
  loc_1E4941A:   Call var_90.Show
  loc_1E49420:   GoTo loc_1E3D9A1
  loc_1E49423: End If
  loc_1E4942D: If (var_188 = "Table Change Entry") Then
  loc_1E49436:   Set var_90 = New RsTbChange
  loc_1E4945F:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8, var_CC)))
  loc_1E49472:   var_90.CAPTION = CVar(arg_10)
  loc_1E4947B:   Call var_90.Show
  loc_1E49481:   GoTo loc_1E3D9A1
  loc_1E49484: End If
  loc_1E4948E: If Not (var_188 = "Sale Bill Entry") Then
  loc_1E49499:   If (var_188 = "Laundry Memo") Then
  loc_1E4949C:   End If
  loc_1E494A2:   Set var_90 = New RSSaleBill
  loc_1E494CB:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E494DE:   var_90.CAPTION = CVar(arg_10)
  loc_1E494E7:   Call var_90.Show
  loc_1E494ED:   GoTo loc_1E3D9A1
  loc_1E494F0: End If
  loc_1E494FA: If (var_188 = "Split Sale Bill") Then
  loc_1E49503:   Set var_90 = New RsSaleBillSplit
  loc_1E4952C:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4953F:   var_90.CAPTION = CVar(arg_10)
  loc_1E49548:   Call var_90.Show
  loc_1E4954E:   GoTo loc_1E3D9A1
  loc_1E49551: End If
  loc_1E4955B: If Not (var_188 = "POS Bill Reprint") Then
  loc_1E49566:   If (var_188 = "Memo Reprint") Then
  loc_1E49569:   End If
  loc_1E4956F:   Set var_90 = New POSBillReprint
  loc_1E49598:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E495AB:   var_90.CAPTION = CVar(arg_10)
  loc_1E495B4:   Call var_90.Show
  loc_1E495BA:   GoTo loc_1E3D9A1
  loc_1E495BD: End If
  loc_1E495C7: If (var_188 = "Display Table") Then
  loc_1E495D4:   If (MemVar_1F95210 = "Yes") Then
  loc_1E495DD:     Set var_90 = New RsTouchDisplayTB
  loc_1E49606:     MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49619:     var_90.CAPTION = CVar(arg_10)
  loc_1E49622:     Call var_90.Show
  loc_1E4962B:   Else
  loc_1E49633:     Set var_90 = New RsPOSDisplay
  loc_1E4965C:     MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49671:     var_90.OpenMode = 2
  loc_1E4967A:     Call var_90.Show
  loc_1E49680:   End If
  loc_1E49691:   If CBool(var_90.ptabpos) Then
  loc_1E496AF:     MsgBox("Tables are not defined in this Outlet", &H40, var_100, var_124, var_150)
  loc_1E496C4:     var_E0 = var_90
  loc_1E496CE:     Me.Global.Unload var_E0
  loc_1E496D8:     Exit Sub
  loc_1E496D9:   End If
  loc_1E496DB:   GoTo loc_1E3D9A1
  loc_1E496DE: End If
  loc_1E496E8: If (var_188 = "Order Booking") Then
  loc_1E496F1:   Set var_90 = New RsBookingEntry
  loc_1E49708:   var_90.LocalRestCode = CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8))
  loc_1E4971A:   MemVar_1F951A8 = CStr(var_90.LocalRestCode)
  loc_1E4972F:   var_90.OpenMode = 2
  loc_1E4974F:   var_100 = "Select * from Voucher_Type Where Ncat='ORDER' and  RestCode='" & var_90.LocalRestCode 
  loc_1E49758:   var_124 = var_100 & "'" 
  loc_1E49766:   var_90.Connection15.Execute CStr(var_124), var_150, -1
  loc_1E49771:   Set var_8C = var_E0
  loc_1E4979E:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1E497B5:     var_E0 = Me.Recordset15.Fields
  loc_1E497CD:     var_90.oVType = CVar(var_E0.Item("V_Type"))
  loc_1E497DA:   Else
  loc_1E497F7:     MsgBox("Contact to your S/w vendor", &H40, var_100, var_124, var_150)
  loc_1E49809:     Exit Sub
  loc_1E4980A:   End If
  loc_1E49818:   var_90.CAPTION = CVar(arg_10)
  loc_1E49821:   Call var_90.Show
  loc_1E49827:   GoTo loc_1E3D9A1
  loc_1E4982A: End If
  loc_1E49834: If (var_188 = "Bill Lookup") Then
  loc_1E4983D:   Set var_90 = New RSSaleBillDisplay
  loc_1E49854:   var_90.LocalRestCode = CVar(Proc_165_4_10300B4(arg_C, var_E0, MemVar_1F951A8))
  loc_1E49866:   MemVar_1F951A8 = CStr(var_90.LocalRestCode)
  loc_1E49879:   var_90.CAPTION = CVar(arg_10)
  loc_1E49882:   Call var_90.Show
  loc_1E49888:   GoTo loc_1E3D9A1
  loc_1E4988B: End If
  loc_1E49895: If (var_188 = "Order Booking Advance") Then
  loc_1E4989E:   Set var_90 = New POSAdvanceDepDialog
  loc_1E498B5:   var_90.MDIRestCode = CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8))
  loc_1E498CA:   var_90.OpenMode = 2
  loc_1E498D9:   var_90.OpenType = 5
  loc_1E498F9:   var_100 = "Select V_Type from Voucher_Type Where Ncat='PADV' And RestCode='" & var_90.LocalRestCode 
  loc_1E498FD:   var_F0 = "'"
  loc_1E49902:   var_124 = var_100 & var_F0 
  loc_1E49910:   var_90.Connection15.Execute CStr(var_124), var_150, -1
  loc_1E4991B:   Set var_8C = var_E0
  loc_1E49948:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1E4995F:     var_E0 = Me.Recordset15.Fields
  loc_1E49977:     var_90.oVType = CVar(var_E0.Item("V_Type"))
  loc_1E49984:   Else
  loc_1E499A1:     MsgBox("Contact to your S/w vendor", &H40, var_100, var_124, var_150)
  loc_1E499B3:     Exit Sub
  loc_1E499B4:   End If
  loc_1E499C2:   var_90.CAPTION = CVar(arg_10)
  loc_1E499CB:   Call var_90.Show
  loc_1E499D1:   GoTo loc_1E3D9A1
  loc_1E499D4: End If
  loc_1E499DE: If Not (var_188 = "KOT Transfer") Then
  loc_1E499E9:   If (var_188 = "LOT Transfer") Then
  loc_1E499EC:   End If
  loc_1E499F2:   Set var_90 = New RsKOTTransfer
  loc_1E49A1B:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, var_E0)))
  loc_1E49A2E:   var_90.CAPTION = CVar(arg_10)
  loc_1E49A37:   Call var_90.Show
  loc_1E49A3D:   GoTo loc_1E3D9A1
  loc_1E49A40: End If
  loc_1E49A4A: If (var_188 = "Token Entry") Then
  loc_1E49A57:   If (MemVar_1F95210 = "Yes") Then
  loc_1E49A60:     Set var_90 = New RsTouchScreenTOKENEntry
  loc_1E49A66:   Else
  loc_1E49A6E:     Set var_90 = New RsTokenEntry
  loc_1E49A71:   End If
  loc_1E49A99:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49AAC:   var_90.CAPTION = CVar(arg_10)
  loc_1E49AB5:   Call var_90.Show
  loc_1E49ABB:   GoTo loc_1E3D9A1
  loc_1E49ABE: End If
  loc_1E49AC8: If (var_188 = "Assign Delivery") Then
  loc_1E49AD1:   Set var_90 = New RsAssignDelivery
  loc_1E49AFA:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49B0D:   var_90.CAPTION = CVar(arg_10)
  loc_1E49B16:   Call var_90.Show
  loc_1E49B1C:   GoTo loc_1E3D9A1
  loc_1E49B1F: End If
  loc_1E49B29: If (var_188 = "Payment Receive") Then
  loc_1E49B32:   Set var_90 = New RsPaymentReceice
  loc_1E49B5B:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49B6E:   var_90.CAPTION = CVar(arg_10)
  loc_1E49B77:   Call var_90.Show
  loc_1E49B7D:   GoTo loc_1E3D9A1
  loc_1E49B80: End If
  loc_1E49B8A: If (var_188 = "Stewardwise Sale") Then
  loc_1E49B93:   Set var_90 = New rPOSRepView
  loc_1E49BA1:   var_90.GRepFormName = "WaiterWiseSale"
  loc_1E49BCB:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49BDE:   var_90.CAPTION = CVar(arg_10)
  loc_1E49BE7:   Call var_90.Show
  loc_1E49BED:   GoTo loc_1E3D9A1
  loc_1E49BF0: End If
  loc_1E49BFA: If (var_188 = "Table wise Sale") Then
  loc_1E49C03:   Set var_90 = New rPOSRepView
  loc_1E49C11:   var_90.GRepFormName = "TableWiseSale"
  loc_1E49C3B:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49C4E:   var_90.CAPTION = CVar(arg_10)
  loc_1E49C57:   Call var_90.Show
  loc_1E49C5D:   GoTo loc_1E3D9A1
  loc_1E49C60: End If
  loc_1E49C6A: If (var_188 = "Payment Receive Entry (POS)") Then
  loc_1E49C73:   Set var_90 = New RsPaymentReceice
  loc_1E49C82:   var_90.CAPTION = CVar(arg_10)
  loc_1E49C8B:   Call var_90.Show
  loc_1E49C91:   GoTo loc_1E3D9A1
  loc_1E49C94: End If
  loc_1E49C9E: If (var_188 = "Settlement Summary") Then
  loc_1E49CA7:   Set var_90 = New rPOSRepView
  loc_1E49CB5:   var_90.GRepFormName = "CashierSettlement"
  loc_1E49CDF:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49CF2:   var_90.CAPTION = CVar(arg_10)
  loc_1E49CFB:   Call var_90.Show
  loc_1E49D01:   GoTo loc_1E3D9A1
  loc_1E49D04: End If
  loc_1E49D0E: If (var_188 = "Tax Register") Then
  loc_1E49D17:   Set var_90 = New rPOSRepView
  loc_1E49D25:   var_90.GRepFormName = "TaxRegister"
  loc_1E49D2E:   var_CC = CVar(arg_10) 'String
  loc_1E49D35:   var_90.CAPTION = var_CC
  loc_1E49D3E:   Call var_90.Show
  loc_1E49D44:   GoTo loc_1E3D9A1
  loc_1E49D47: End If
  loc_1E49D51: If (var_188 = "Tax Report") Then
  loc_1E49D67:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E49D87:     Call 0.Method_arg_1C4 (var_CC & Proc_165_4_10300B4(arg_C, MemVar_1F95078, MemVar_1F951A8))
  loc_1E49D99:     Set var_90 = New rHallRepView
  loc_1E49DA7:     var_90.GRepFormName = "TaxReportHall"
  loc_1E49DB7:     var_90.CAPTION = CVar(arg_10)
  loc_1E49DC0:     Call var_90.Show
  loc_1E49DC9:   Else
  loc_1E49DD1:     Set var_90 = New rPOSRepView
  loc_1E49DDF:     var_90.GRepFormName = "TaxReport"
  loc_1E49E09:     MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C)))
  loc_1E49E1C:     var_90.CAPTION = CVar(arg_10)
  loc_1E49E25:     Call var_90.Show
  loc_1E49E2B:   End If
  loc_1E49E2D:   GoTo loc_1E3D9A1
  loc_1E49E30: End If
  loc_1E49E3A: If Not (var_188 = "Taxwise Details") Then
  loc_1E49E45:   If (var_188 = "Taxwise  Details") Then
  loc_1E49E48:   End If
  loc_1E49E4E:   Set var_90 = New rPOSRepView
  loc_1E49E5C:   var_90.GRepFormName = "TaxDetails"
  loc_1E49E6C:   var_90.CAPTION = CVar(arg_10)
  loc_1E49E75:   Call var_90.Show
  loc_1E49E7B:   GoTo loc_1E3D9A1
  loc_1E49E7E: End If
  loc_1E49E88: If (var_188 = "NC KOT Summary") Then
  loc_1E49E91:   Set var_90 = New rPOSRepView
  loc_1E49E9F:   var_90.GRepFormName = "NCKOTSummary"
  loc_1E49EAF:   var_90.CAPTION = CVar(arg_10)
  loc_1E49EB8:   Call var_90.Show
  loc_1E49EBE:   GoTo loc_1E3D9A1
  loc_1E49EC1: End If
  loc_1E49ECB: If (var_188 = "Daily DIET Report") Then
  loc_1E49ED4:   Set var_90 = New rPOSRepView
  loc_1E49EE2:   var_90.GRepFormName = "DailyDiet"
  loc_1E49EF2:   var_90.CAPTION = CVar(arg_10)
  loc_1E49EFB:   Call var_90.Show
  loc_1E49F01:   GoTo loc_1E3D9A1
  loc_1E49F04: End If
  loc_1E49F0E: If (var_188 = "KOT Wise Details") Then
  loc_1E49F17:   Set var_90 = New rPOSRepView
  loc_1E49F25:   var_90.GRepFormName = "KOTWiseDetails"
  loc_1E49F4F:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49F62:   var_90.CAPTION = CVar(arg_10)
  loc_1E49F6B:   Call var_90.Show
  loc_1E49F71:   GoTo loc_1E3D9A1
  loc_1E49F74: End If
  loc_1E49F7E: If (var_188 = "Discount Register") Then
  loc_1E49F87:   Set var_90 = New rPOSRepView
  loc_1E49F95:   var_90.GRepFormName = "DiscountReg"
  loc_1E49FBF:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E49FD2:   var_90.CAPTION = CVar(arg_10)
  loc_1E49FDB:   Call var_90.Show
  loc_1E49FE1:   GoTo loc_1E3D9A1
  loc_1E49FE4: End If
  loc_1E49FEE: If (var_188 = "Not Delivered Order") Then
  loc_1E49FF7:   Set var_90 = New FrmDeliveredItemDetail
  loc_1E4A006:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A00F:   Call var_90.Show
  loc_1E4A015:   GoTo loc_1E3D9A1
  loc_1E4A018: End If
  loc_1E4A022: If (var_188 = "Group Wise Sale") Then
  loc_1E4A02B:   Set var_90 = New rPOSRepView
  loc_1E4A039:   var_90.GRepFormName = "ItemWiseGroupWiseSaleReport"
  loc_1E4A051:   var_90.LocalRestCode = CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8))
  loc_1E4A063:   MemVar_1F951A8 = CStr(var_90.LocalRestCode)
  loc_1E4A076:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A07F:   Call var_90.Show
  loc_1E4A085:   GoTo loc_1E3D9A1
  loc_1E4A088: End If
  loc_1E4A092: If (var_188 = "Customer Detail") Then
  loc_1E4A09B:   Set var_90 = New rPOSRepView
  loc_1E4A0A9:   var_90.GRepFormName = "CustomerDetail"
  loc_1E4A0B9:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A0C2:   Call var_90.Show
  loc_1E4A0C8:   GoTo loc_1E3D9A1
  loc_1E4A0CB: End If
  loc_1E4A0D5: If (var_188 = "Registered Guest Detail") Then
  loc_1E4A0DE:   Set var_90 = New rPOSRepView
  loc_1E4A0EC:   var_90.GRepFormName = "RegisteredGuestDetail"
  loc_1E4A0FC:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A105:   Call var_90.Show
  loc_1E4A10B:   GoTo loc_1E3D9A1
  loc_1E4A10E: End If
  loc_1E4A118: If (var_188 = "Delivery Status") Then
  loc_1E4A121:   Set var_90 = New rPOSRepView
  loc_1E4A12F:   var_90.GRepFormName = "DeliveryStatus"
  loc_1E4A13E:   MemVar_1F951A8 = CStr(var_90.LocalRestCode)
  loc_1E4A151:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A15A:   Call var_90.Show
  loc_1E4A160:   GoTo loc_1E3D9A1
  loc_1E4A163: End If
  loc_1E4A16D: If (var_188 = "Denomination Detail") Then
  loc_1E4A176:   Set var_90 = New FrmDenomination
  loc_1E4A185:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A18E:   Call var_90.Show
  loc_1E4A194:   GoTo loc_1E3D9A1
  loc_1E4A197: End If
  loc_1E4A1A1: If (var_188 = "Bill Wise Adjustment Report") Then
  loc_1E4A1AA:   Set var_90 = New rPOSRepView
  loc_1E4A1B8:   var_90.GRepFormName = "BillWiseAdjustmentReport"
  loc_1E4A1C8:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A1D1:   Call var_90.Show
  loc_1E4A1D7:   GoTo loc_1E3D9A1
  loc_1E4A1DA: End If
  loc_1E4A1E4: If (var_188 = "Monthwise Sales") Then
  loc_1E4A1ED:   Set var_90 = New rPOSRepView
  loc_1E4A1FB:   var_90.GRepFormName = "MonthOutletWiseSale"
  loc_1E4A20B:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A214:   Call var_90.Show
  loc_1E4A21A:   GoTo loc_1E3D9A1
  loc_1E4A21D: End If
  loc_1E4A227: If (var_188 = "ABC  Analysis") Then
  loc_1E4A230:   Set var_90 = New rPOSRepView
  loc_1E4A23E:   var_90.GRepFormName = "ABCAnalysisSale"
  loc_1E4A24E:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A257:   Call var_90.Show
  loc_1E4A25D:   GoTo loc_1E3D9A1
  loc_1E4A260: End If
  loc_1E4A26A: If (var_188 = "Sale Summary") Then
  loc_1E4A273:   Set var_90 = New rPOSRepView
  loc_1E4A281:   var_90.GRepFormName = "SaleSumm"
  loc_1E4A291:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A29A:   Call var_90.Show
  loc_1E4A2A0:   GoTo loc_1E3D9A1
  loc_1E4A2A3: End If
  loc_1E4A2AD: If (var_188 = "Edited Bills") Then
  loc_1E4A2B6:   Set var_90 = New rPOSRepView
  loc_1E4A2C4:   var_90.GRepFormName = "EditedBills"
  loc_1E4A2D4:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A2DD:   Call var_90.Show
  loc_1E4A2E3:   GoTo loc_1E3D9A1
  loc_1E4A2E6: End If
  loc_1E4A2F0: If (var_188 = "Cover Analysis") Then
  loc_1E4A306:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E4A326:     Call 0.Method_arg_1C4 (MemVar_1F951A8 & Proc_165_4_10300B4(arg_C, MemVar_1F95078, MemVar_1F951A8))
  loc_1E4A338:     Set var_90 = New rHallRepView
  loc_1E4A346:     var_90.GRepFormName = "CoverAnalysis"
  loc_1E4A356:     var_90.CAPTION = CVar(arg_10)
  loc_1E4A35F:     Call var_90.Show
  loc_1E4A368:   Else
  loc_1E4A370:     Set var_90 = New rPOSRepView
  loc_1E4A37E:     var_90.GRepFormName = "CoverAnalysis"
  loc_1E4A3A8:     MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C)))
  loc_1E4A3BB:     var_90.CAPTION = CVar(arg_10)
  loc_1E4A3C4:     Call var_90.Show
  loc_1E4A3CA:   End If
  loc_1E4A3CC:   GoTo loc_1E3D9A1
  loc_1E4A3CF: End If
  loc_1E4A3D9: If (var_188 = "Pending KOT") Then
  loc_1E4A3E2:   Set var_90 = New rPOSRepView
  loc_1E4A3F0:   var_90.GRepFormName = "PendingKot"
  loc_1E4A41A:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A42D:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A436:   Call var_90.Show
  loc_1E4A43C:   GoTo loc_1E3D9A1
  loc_1E4A43F: End If
  loc_1E4A449: If (var_188 = "Item wise Sale") Then
  loc_1E4A452:   Set var_90 = New rPOSRepView
  loc_1E4A460:   var_90.GRepFormName = "ItemWiseSale"
  loc_1E4A48A:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A49D:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A4A6:   Call var_90.Show
  loc_1E4A4AC:   GoTo loc_1E3D9A1
  loc_1E4A4AF: End If
  loc_1E4A4B9: If (var_188 = "Deleted Unsettled Bill") Then
  loc_1E4A4C2:   Set var_90 = New rPOSRepView
  loc_1E4A4D0:   var_90.GRepFormName = "DelBillUnsetBill"
  loc_1E4A4FA:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A50D:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A516:   Call var_90.Show
  loc_1E4A51C:   GoTo loc_1E3D9A1
  loc_1E4A51F: End If
  loc_1E4A529: If (var_188 = "NC KOT Detail") Then
  loc_1E4A532:   Set var_90 = New rPOSRepView
  loc_1E4A540:   var_90.GRepFormName = "NCKOTWiseDetails"
  loc_1E4A56A:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A57D:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A586:   Call var_90.Show
  loc_1E4A58C:   GoTo loc_1E3D9A1
  loc_1E4A58F: End If
  loc_1E4A599: If (var_188 = "Order Detail Report") Then
  loc_1E4A5A2:   Set var_90 = New rPOSRepView
  loc_1E4A5B0:   var_90.GRepFormName = "OrderDetailReport"
  loc_1E4A5C0:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A5C9:   Call var_90.Show
  loc_1E4A5CF:   GoTo loc_1E3D9A1
  loc_1E4A5D2: End If
  loc_1E4A5DC: If (var_188 = "Discount Register (PartyWise)") Then
  loc_1E4A5E5:   Set var_90 = New rPOSRepView
  loc_1E4A5F3:   var_90.GRepFormName = "DiscountPartyWiseReg"
  loc_1E4A603:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A60C:   Call var_90.Show
  loc_1E4A612:   GoTo loc_1E3D9A1
  loc_1E4A615: End If
  loc_1E4A61F: If (var_188 = "Collection Summary") Then
  loc_1E4A635:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E4A655:     Call 0.Method_arg_1C4 (MemVar_1F951A8 & Proc_165_4_10300B4(arg_C, MemVar_1F95078))
  loc_1E4A667:     Set var_90 = New rHallRepView
  loc_1E4A675:     var_90.GRepFormName = "CashierCollection"
  loc_1E4A685:     var_90.CAPTION = CVar(arg_10)
  loc_1E4A68E:     Call var_90.Show
  loc_1E4A697:   Else
  loc_1E4A69F:     Set var_90 = New rPOSRepView
  loc_1E4A6AD:     var_90.GRepFormName = "CashierCollection"
  loc_1E4A6D7:     MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C)))
  loc_1E4A6EA:     var_90.CAPTION = CVar(arg_10)
  loc_1E4A6F3:     Call var_90.Show
  loc_1E4A6F9:   End If
  loc_1E4A6FB:   GoTo loc_1E3D9A1
  loc_1E4A6FE: End If
  loc_1E4A708: If (var_188 = "Open Item Sales") Then
  loc_1E4A711:   Set var_90 = New rPOSRepView
  loc_1E4A71F:   var_90.GRepFormName = "OpenItemSale"
  loc_1E4A749:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A75C:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A765:   Call var_90.Show
  loc_1E4A76B:   GoTo loc_1E3D9A1
  loc_1E4A76E: End If
  loc_1E4A778: If (var_188 = "Void Bills") Then
  loc_1E4A781:   Set var_90 = New rPOSRepView
  loc_1E4A78F:   var_90.GRepFormName = "VoidBills"
  loc_1E4A7B9:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A7CC:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A7D5:   Call var_90.Show
  loc_1E4A7DB:   GoTo loc_1E3D9A1
  loc_1E4A7DE: End If
  loc_1E4A7E8: If Not (var_188 = "KOT Rate Change Report") Then
  loc_1E4A7F3:   If (var_188 = "KOT Change Report") Then
  loc_1E4A7F6:   End If
  loc_1E4A7FC:   Set var_90 = New rPOSRepView
  loc_1E4A80A:   var_90.GRepFormName = "KOTRateChange"
  loc_1E4A834:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A847:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A850:   Call var_90.Show
  loc_1E4A856:   GoTo loc_1E3D9A1
  loc_1E4A859: End If
  loc_1E4A863: If (var_188 = "Tax Summary") Then
  loc_1E4A879:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E4A899:     Call 0.Method_arg_1C4 (MemVar_1F951A8 & Proc_165_4_10300B4(arg_C, MemVar_1F95078))
  loc_1E4A8AB:     Set var_90 = New rHallRepView
  loc_1E4A8B9:     var_90.GRepFormName = "TaxSummaryHall"
  loc_1E4A8C9:     var_90.CAPTION = CVar(arg_10)
  loc_1E4A8D2:     Call var_90.Show
  loc_1E4A8DB:   Else
  loc_1E4A8E3:     Set var_90 = New rPOSRepView
  loc_1E4A8F1:     var_90.GRepFormName = "TaxSumm"
  loc_1E4A91B:     MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C)))
  loc_1E4A92E:     var_90.CAPTION = CVar(arg_10)
  loc_1E4A937:     Call var_90.Show
  loc_1E4A93D:   End If
  loc_1E4A93F:   GoTo loc_1E3D9A1
  loc_1E4A942: End If
  loc_1E4A94C: If (var_188 = "Discount Summary") Then
  loc_1E4A955:   Set var_90 = New rPOSRepView
  loc_1E4A963:   var_90.GRepFormName = "DiscountSumm"
  loc_1E4A98D:   MemVar_1F951A8 = CStr(CVar(Proc_165_4_10300B4(arg_C, MemVar_1F951A8)))
  loc_1E4A9A0:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A9A9:   Call var_90.Show
  loc_1E4A9AF:   GoTo loc_1E3D9A1
  loc_1E4A9B2: End If
  loc_1E4A9BC: If (var_188 = "Events") Then
  loc_1E4A9C5:   Set var_90 = New FrmEventMast
  loc_1E4A9D4:   var_90.CAPTION = CVar(arg_10)
  loc_1E4A9DD:   Call var_90.Show
  loc_1E4A9E3:   GoTo loc_1E3D9A1
  loc_1E4A9E6: End If
  loc_1E4A9F0: If (var_188 = "Venue Features") Then
  loc_1E4A9F9:   Set var_90 = New FrmVenueFeat
  loc_1E4AA08:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AA11:   Call var_90.Show
  loc_1E4AA17:   GoTo loc_1E3D9A1
  loc_1E4AA1A: End If
  loc_1E4AA24: If (var_188 = "Venue Master") Then
  loc_1E4AA2D:   Set var_90 = New FrmVenueMast
  loc_1E4AA4B:   var_90.MDIRestCode = CVar(MemVar_1F951A8 & Proc_165_4_10300B4(arg_C, MemVar_1F95078))
  loc_1E4AA61:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AA6A:   Call var_90.Show
  loc_1E4AA70:   GoTo loc_1E3D9A1
  loc_1E4AA73: End If
  loc_1E4AA7D: If (var_188 = "Catalog Master") Then
  loc_1E4AA86:   Set var_90 = New HallMenuCatalog
  loc_1E4AAA4:   var_90.MDIRestCode = CVar(var_F0 & Proc_165_4_10300B4(arg_C, MemVar_1F95078))
  loc_1E4AABA:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AAC3:   Call var_90.Show
  loc_1E4AAC9:   GoTo loc_1E3D9A1
  loc_1E4AACC: End If
  loc_1E4AAD6: If (var_188 = "Banquet Bill Sundry Setting") Then
  loc_1E4AADF:   Set var_90 = New HallSundry
  loc_1E4AAFD:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AB13:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AB1C:   Call var_90.Show
  loc_1E4AB22:   GoTo loc_1E3D9A1
  loc_1E4AB25: End If
  loc_1E4AB2F: If (var_188 = "Booking Inquiry") Then
  loc_1E4AB38:   Set var_90 = New FrmBookingInquiry
  loc_1E4AB56:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AB6C:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AB75:   Call var_90.Show
  loc_1E4AB7B:   GoTo loc_1E3D9A1
  loc_1E4AB7E: End If
  loc_1E4AB88: If (var_188 = "Banquet Booking") Then
  loc_1E4AB91:   Set var_90 = New HallBooking
  loc_1E4ABAF:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4ABC7:   var_90.OpenMode = 2
  loc_1E4ABD7:   var_90.CAPTION = CVar(arg_10)
  loc_1E4ABE0:   Call var_90.Show
  loc_1E4ABE6:   GoTo loc_1E3D9A1
  loc_1E4ABE9: End If
  loc_1E4ABF3: If (var_188 = "Catalog Selection") Then
  loc_1E4ABFC:   Set var_90 = New CateringBooking
  loc_1E4AC1A:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AC30:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AC39:   Call var_90.Show
  loc_1E4AC3F:   GoTo loc_1E3D9A1
  loc_1E4AC42: End If
  loc_1E4AC4C: If (var_188 = "Chef Pre-Costing") Then
  loc_1E4AC55:   Set var_90 = New HallChefPreCosting
  loc_1E4AC73:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AC89:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AC92:   Call var_90.Show
  loc_1E4AC98:   GoTo loc_1E3D9A1
  loc_1E4AC9B: End If
  loc_1E4ACA5: If (var_188 = "Banquet Billing") Then
  loc_1E4ACAE:   Set var_90 = New HallBill
  loc_1E4ACCC:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4ACE2:   var_90.CAPTION = CVar(arg_10)
  loc_1E4ACEB:   Call var_90.Show
  loc_1E4ACF1:   GoTo loc_1E3D9A1
  loc_1E4ACF4: End If
  loc_1E4ACFE: If (var_188 = "Banquet Settlement") Then
  loc_1E4AD07:   Set var_90 = New HallAdvanceDepDialog
  loc_1E4AD25:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AD3B:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AD44:   Call var_90.Show
  loc_1E4AD4A:   GoTo loc_1E3D9A1
  loc_1E4AD4D: End If
  loc_1E4AD57: If (var_188 = "Booking Chart") Then
  loc_1E4AD5A:   GoTo loc_1E3D9A1
  loc_1E4AD5D: End If
  loc_1E4AD67: If (var_188 = "Venue Availability") Then
  loc_1E4AD70:   Set var_90 = New BanqAvailability
  loc_1E4AD8E:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4ADA4:   var_90.CAPTION = CVar(arg_10)
  loc_1E4ADAD:   Call var_90.Show
  loc_1E4ADB3:   GoTo loc_1E3D9A1
  loc_1E4ADB6: End If
  loc_1E4ADC0: If (var_188 = "Guest Comments") Then
  loc_1E4ADC9:   Set var_90 = New frmGuestComments
  loc_1E4ADE7:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4ADFD:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AE06:   Call var_90.Show
  loc_1E4AE0C:   GoTo loc_1E3D9A1
  loc_1E4AE0F: End If
  loc_1E4AE19: If (var_188 = "Banquet Estimate Billing") Then
  loc_1E4AE22:   Set var_90 = New HallBillEstimate
  loc_1E4AE40:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AE56:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AE5F:   Call var_90.Show
  loc_1E4AE65:   GoTo loc_1E3D9A1
  loc_1E4AE68: End If
  loc_1E4AE72: If (var_188 = "Banquet Booking Advance") Then
  loc_1E4AE7B:   Set var_90 = New HallAdvanceDepDialog
  loc_1E4AE89:   var_90.AdvType = "AD"
  loc_1E4AE9B:   var_90.OpenMode = 2
  loc_1E4AEAD:   var_90.OpenType = 6
  loc_1E4AECC:   var_90.MDIRestCode = CVar(MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AEE2:   var_90.CAPTION = CVar(arg_10)
  loc_1E4AEE8:   var_CC = 1
  loc_1E4AEF4:   Call var_90.Show
  loc_1E4AEFA:   GoTo loc_1E3D9A1
  loc_1E4AEFD: End If
  loc_1E4AF07: If (var_188 = "Sales Register") Then
  loc_1E4AF1D:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E4AF3D:     Call 0.Method_arg_1C4 (var_CC & Proc_165_4_10300B4(arg_C, MemVar_1F95078))
  loc_1E4AF4F:     Set var_90 = New rHallRepView
  loc_1E4AF5D:     var_90.GRepFormName = "SalesRegister"
  loc_1E4AF6D:     var_90.CAPTION = CVar(arg_10)
  loc_1E4AF76:     Call var_90.Show
  loc_1E4AF7F:   Else
  loc_1E4AF87:     Set var_90 = New rPOSRepView
  loc_1E4AF95:     var_90.GRepFormName = "SalesRegister"
  loc_1E4AFA5:     var_90.CAPTION = CVar(arg_10)
  loc_1E4AFAE:     Call var_90.Show
  loc_1E4AFB4:   End If
  loc_1E4AFB6:   GoTo loc_1E3D9A1
  loc_1E4AFB9: End If
  loc_1E4AFC3: If (var_188 = "OutStanding Report") Then
  loc_1E4AFE3:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4AFF5:   Set var_90 = New rHallRepView
  loc_1E4B003:   var_90.GRepFormName = "PartyOutStanding"
  loc_1E4B013:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B01C:   Call var_90.Show
  loc_1E4B022:   GoTo loc_1E3D9A1
  loc_1E4B025: End If
  loc_1E4B02F: If (var_188 = "Party wise OutStanding") Then
  loc_1E4B04F:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B061:   Set var_90 = New rHallRepView
  loc_1E4B06F:   var_90.GRepFormName = "PartyWiseOutStanding"
  loc_1E4B07F:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B088:   Call var_90.Show
  loc_1E4B08E:   GoTo loc_1E3D9A1
  loc_1E4B091: End If
  loc_1E4B09B: If (var_188 = "Cashier  Report") Then
  loc_1E4B0BB:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B0CD:   Set var_90 = New rHallRepView
  loc_1E4B0DB:   var_90.GRepFormName = "CashierCollection"
  loc_1E4B0EB:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B0F4:   Call var_90.Show
  loc_1E4B0FA:   GoTo loc_1E3D9A1
  loc_1E4B0FD: End If
  loc_1E4B107: If (var_188 = "Booking Inquiry Detail") Then
  loc_1E4B127:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B139:   Set var_90 = New rHallRepView
  loc_1E4B147:   var_90.GRepFormName = "BookingDetail"
  loc_1E4B157:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B160:   Call var_90.Show
  loc_1E4B166:   GoTo loc_1E3D9A1
  loc_1E4B169: End If
  loc_1E4B173: If Not (var_188 = "Settlement  Report") Then
  loc_1E4B17E:   If (var_188 = "Banquet Settlement Report") Then
  loc_1E4B181:   End If
  loc_1E4B19E:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B1B0:   Set var_90 = New rHallRepView
  loc_1E4B1BE:   var_90.GRepFormName = "SettleRepHall"
  loc_1E4B1CE:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B1D7:   Call var_90.Show
  loc_1E4B1DD:   GoTo loc_1E3D9A1
  loc_1E4B1E0: End If
  loc_1E4B1EA: If (var_188 = "Daily Function Sheet") Then
  loc_1E4B20A:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B21C:   Set var_90 = New rHallRepView
  loc_1E4B22A:   var_90.GRepFormName = "DailyFuncSheet"
  loc_1E4B23A:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B243:   Call var_90.Show
  loc_1E4B249:   GoTo loc_1E3D9A1
  loc_1E4B24C: End If
  loc_1E4B256: If (var_188 = "Item Wise Sales Report") Then
  loc_1E4B276:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B288:   Set var_90 = New rHallRepView
  loc_1E4B296:   var_90.GRepFormName = "ItemWiseSaleHall"
  loc_1E4B2A6:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B2AF:   Call var_90.Show
  loc_1E4B2B5:   GoTo loc_1E3D9A1
  loc_1E4B2B8: End If
  loc_1E4B2C2: If (var_188 = "Company Wise Sale Report") Then
  loc_1E4B2E2:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B2F4:   Set var_90 = New rHallRepView
  loc_1E4B302:   var_90.GRepFormName = "CompanyWiseSaleHall"
  loc_1E4B312:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B31B:   Call var_90.Show
  loc_1E4B321:   GoTo loc_1E3D9A1
  loc_1E4B324: End If
  loc_1E4B32E: If (var_188 = "Function Wise Item Detail") Then
  loc_1E4B34E:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B360:   Set var_90 = New rHallRepView
  loc_1E4B36E:   var_90.GRepFormName = "FunctionWiseItemDetail"
  loc_1E4B37E:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B387:   Call var_90.Show
  loc_1E4B38D:   GoTo loc_1E3D9A1
  loc_1E4B390: End If
  loc_1E4B39A: If (var_188 = "Banquet Taxwise Details") Then
  loc_1E4B3BA:   Call 0.Method_arg_1C4 (MemVar_1F95078 & Proc_165_4_10300B4(arg_C))
  loc_1E4B3CC:   Set var_90 = New rHallRepView
  loc_1E4B3DA:   var_90.GRepFormName = "TaxwiseDetailReportHall"
  loc_1E4B3EA:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B3F3:   Call var_90.Show
  loc_1E4B3F9:   GoTo loc_1E3D9A1
  loc_1E4B3FC: End If
  loc_1E4B406: If (var_188 = "Telephone Call Entry") Then
  loc_1E4B40F:   Set var_90 = New TelCallEntry
  loc_1E4B41E:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B427:   Call var_90.Show
  loc_1E4B42D:   GoTo loc_1E3D9A1
  loc_1E4B430: End If
  loc_1E4B43A: If (var_188 = "EPBAX Call Report") Then
  loc_1E4B443:   Set var_90 = New rHallRepView
  loc_1E4B451:   var_90.GRepFormName = "EpabxCallRep"
  loc_1E4B461:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B46A:   Call var_90.Show
  loc_1E4B470:   GoTo loc_1E3D9A1
  loc_1E4B473: End If
  loc_1E4B47D: If (var_188 = "Settlement Entry") Then
  loc_1E4B488:   Set var_90 = MemVar_1F95F68 
  loc_1E4B499:   var_DC = CVar(Proc_165_5_104AE30(arg_C)) 'String
  loc_1E4B4A0:   var_90.LocalRestCode = var_DC
  loc_1E4B4B2:   var_90.OpenType = 5
  loc_1E4B4C4:   var_90.OpenMode = 2
  loc_1E4B4E5:   var_104 = Proc_165_5_104AE30(arg_C, "Select 'B'+ShortName as Adv_Type From Depart Where Code='", var_DC)
  loc_1E4B4E9:   var_174 = -1 & Proc_165_4_10300B4(arg_C)
  loc_1E4B4F9:   var_90.Connection15.Execute MemVar_1F95078 & Proc_165_4_10300B4(arg_C) & "'", var_E0, 
  loc_1E4B504:   Set var_B0 = var_E0
  loc_1E4B52C:   If (var_B0.RecordCount > 0) Then
  loc_1E4B540:     var_E0 = var_B0.Fields
  loc_1E4B558:     var_90.AdvType = CVar(var_E0.Item("Adv_type"))
  loc_1E4B565:   Else
  loc_1E4B57C:     var_DC = "Voucher Type for this Department not Found"
  loc_1E4B582:     MsgBox(var_DC, &H10, var_100, var_124, var_150)
  loc_1E4B594:     Exit Sub
  loc_1E4B595:   End If
  loc_1E4B5A3:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B5AC:   Call var_90.Show
  loc_1E4B5B2:   GoTo loc_1E3D9A1
  loc_1E4B5B5: End If
  loc_1E4B5BF: If (var_188 = "Sale Summary") Then
  loc_1E4B5CC:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B5D5:     Set var_90 = New FrmChangeRest
  loc_1E4B5DA:     var_CC = 1
  loc_1E4B5E3:     Call var_90.Show
  loc_1E4B5EB:     var_CC = 0
  loc_1E4B5F4:     Call var_90.ZOrder
  loc_1E4B5FA:   End If
  loc_1E4B602:   Set var_90 = New rPOSRepView
  loc_1E4B610:   var_90.GRepFormName = "SalesSummary"
  loc_1E4B620:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B629:   Call var_90.Show
  loc_1E4B62F:   GoTo loc_1E3D9A1
  loc_1E4B632: End If
  loc_1E4B63C: If (var_188 = "Sale Summary Consolidated") Then
  loc_1E4B649:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B652:     Set var_90 = New FrmChangeRest
  loc_1E4B657:     var_CC = 1
  loc_1E4B660:     Call var_90.Show
  loc_1E4B668:     var_CC = 0
  loc_1E4B671:     Call var_90.ZOrder
  loc_1E4B677:   End If
  loc_1E4B67F:   Set var_90 = New rPOSRepView
  loc_1E4B68D:   var_90.GRepFormName = "SaleSummConsolidated"
  loc_1E4B69D:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B6A6:   Call var_90.Show
  loc_1E4B6AC:   GoTo loc_1E3D9A1
  loc_1E4B6AF: End If
  loc_1E4B6B9: If (var_188 = "Taxwise Sale Report") Then
  loc_1E4B6C6:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B6CF:     Set var_90 = New FrmChangeRest
  loc_1E4B6D4:     var_CC = 1
  loc_1E4B6DD:     Call var_90.Show
  loc_1E4B6E5:     var_CC = 0
  loc_1E4B6EE:     Call var_90.ZOrder
  loc_1E4B6F4:   End If
  loc_1E4B6FC:   Set var_90 = New rPOSRepView
  loc_1E4B70A:   var_90.GRepFormName = "TaxWiseSale"
  loc_1E4B71A:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B723:   Call var_90.Show
  loc_1E4B729:   GoTo loc_1E3D9A1
  loc_1E4B72C: End If
  loc_1E4B736: If (var_188 = "KOT Edit/Delete Report") Then
  loc_1E4B743:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B74C:     Set var_90 = New FrmChangeRest
  loc_1E4B751:     var_CC = 1
  loc_1E4B75A:     Call var_90.Show
  loc_1E4B762:     var_CC = 0
  loc_1E4B76B:     Call var_90.ZOrder
  loc_1E4B771:   End If
  loc_1E4B779:   Set var_90 = New rPOSRepView
  loc_1E4B787:   var_90.GRepFormName = "KotEditDelete"
  loc_1E4B797:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B7A0:   Call var_90.Show
  loc_1E4B7A6:   GoTo loc_1E3D9A1
  loc_1E4B7A9: End If
  loc_1E4B7B3: If (var_188 = "Pending KOT") Then
  loc_1E4B7C0:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B7C9:     Set var_90 = New FrmChangeRest
  loc_1E4B7CE:     var_CC = 1
  loc_1E4B7D7:     Call var_90.Show
  loc_1E4B7DF:     var_CC = 0
  loc_1E4B7E8:     Call var_90.ZOrder
  loc_1E4B7EE:   End If
  loc_1E4B7F6:   Set var_90 = New rPOSRepView
  loc_1E4B804:   var_90.GRepFormName = "PendingKot"
  loc_1E4B814:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B81D:   Call var_90.Show
  loc_1E4B823:   GoTo loc_1E3D9A1
  loc_1E4B826: End If
  loc_1E4B830: If (var_188 = "Cashier Summary") Then
  loc_1E4B83D:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B846:     Set var_90 = New FrmChangeRest
  loc_1E4B84B:     var_CC = 1
  loc_1E4B854:     Call var_90.Show
  loc_1E4B85C:     var_CC = 0
  loc_1E4B865:     Call var_90.ZOrder
  loc_1E4B86B:   End If
  loc_1E4B873:   Set var_90 = New rPOSRepView
  loc_1E4B881:   var_90.GRepFormName = "CashierSummary"
  loc_1E4B891:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B89A:   Call var_90.Show
  loc_1E4B8A0:   GoTo loc_1E3D9A1
  loc_1E4B8A3: End If
  loc_1E4B8AD: If (var_188 = "Cashier Sale") Then
  loc_1E4B8BA:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B8C3:     Set var_90 = New FrmChangeRest
  loc_1E4B8C8:     var_CC = 1
  loc_1E4B8D1:     Call var_90.Show
  loc_1E4B8D9:     var_CC = 0
  loc_1E4B8E2:     Call var_90.ZOrder
  loc_1E4B8E8:   End If
  loc_1E4B8F0:   Set var_90 = New rPOSRepView
  loc_1E4B8FE:   var_90.GRepFormName = "CashierSale"
  loc_1E4B90E:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B917:   Call var_90.Show
  loc_1E4B91D:   GoTo loc_1E3D9A1
  loc_1E4B920: End If
  loc_1E4B92A: If (var_188 = "Item wise Sale") Then
  loc_1E4B937:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B940:     Set var_90 = New FrmChangeRest
  loc_1E4B945:     var_CC = 1
  loc_1E4B94E:     Call var_90.Show
  loc_1E4B956:     var_CC = 0
  loc_1E4B95F:     Call var_90.ZOrder
  loc_1E4B965:   End If
  loc_1E4B96D:   Set var_90 = New rPOSRepView
  loc_1E4B97B:   var_90.GRepFormName = "ItemWiseSale"
  loc_1E4B98B:   var_90.CAPTION = CVar(arg_10)
  loc_1E4B994:   Call var_90.Show
  loc_1E4B99A:   GoTo loc_1E3D9A1
  loc_1E4B99D: End If
  loc_1E4B9A7: If (var_188 = "Sales Register per cover") Then
  loc_1E4B9B4:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4B9BD:     Set var_90 = New FrmChangeRest
  loc_1E4B9C2:     var_CC = 1
  loc_1E4B9CB:     Call var_90.Show
  loc_1E4B9D3:     var_CC = 0
  loc_1E4B9DC:     Call var_90.ZOrder
  loc_1E4B9E2:   End If
  loc_1E4B9EA:   Set var_90 = New rPOSRepView
  loc_1E4B9F8:   var_90.GRepFormName = "SalRegPerCover"
  loc_1E4BA08:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BA11:   Call var_90.Show
  loc_1E4BA17:   GoTo loc_1E3D9A1
  loc_1E4BA1A: End If
  loc_1E4BA24: If (var_188 = "Tablewise Sales") Then
  loc_1E4BA31:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4BA3A:     Set var_90 = New FrmChangeRest
  loc_1E4BA3F:     var_CC = 1
  loc_1E4BA48:     Call var_90.Show
  loc_1E4BA50:     var_CC = 0
  loc_1E4BA59:     Call var_90.ZOrder
  loc_1E4BA5F:   End If
  loc_1E4BA67:   Set var_90 = New rPOSRepView
  loc_1E4BA75:   var_90.GRepFormName = "TableWiseSale"
  loc_1E4BA85:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BA8E:   Call var_90.Show
  loc_1E4BA94:   GoTo loc_1E3D9A1
  loc_1E4BA97: End If
  loc_1E4BAA1: If (var_188 = "Stewardwise Sale") Then
  loc_1E4BAAE:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4BAB7:     Set var_90 = New FrmChangeRest
  loc_1E4BABC:     var_CC = 1
  loc_1E4BAC5:     Call var_90.Show
  loc_1E4BACD:     var_CC = 0
  loc_1E4BAD6:     Call var_90.ZOrder
  loc_1E4BADC:   End If
  loc_1E4BAE4:   Set var_90 = New rPOSRepView
  loc_1E4BAF2:   var_90.GRepFormName = "WaiterWiseSale"
  loc_1E4BB02:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BB0B:   Call var_90.Show
  loc_1E4BB11:   GoTo loc_1E3D9A1
  loc_1E4BB14: End If
  loc_1E4BB1E: If (var_188 = "Cost Analysis") Then
  loc_1E4BB2B:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4BB34:     Set var_90 = New FrmChangeRest
  loc_1E4BB39:     var_CC = 1
  loc_1E4BB42:     Call var_90.Show
  loc_1E4BB4A:     var_CC = 0
  loc_1E4BB53:     Call var_90.ZOrder
  loc_1E4BB59:   End If
  loc_1E4BB61:   Set var_90 = New rPOSRepView
  loc_1E4BB6F:   var_90.GRepFormName = "CostAnalysis"
  loc_1E4BB7F:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BB88:   Call var_90.Show
  loc_1E4BB8E:   GoTo loc_1E3D9A1
  loc_1E4BB91: End If
  loc_1E4BB9B: If (var_188 = "Stock Register") Then
  loc_1E4BBA8:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4BBB1:     Set var_90 = New FrmChangeRest
  loc_1E4BBB6:     var_CC = 1
  loc_1E4BBBF:     Call var_90.Show
  loc_1E4BBC7:     var_CC = 0
  loc_1E4BBD0:     Call var_90.ZOrder
  loc_1E4BBD6:   End If
  loc_1E4BBDE:   Set var_90 = New rPOSRepView
  loc_1E4BBEC:   var_90.GRepFormName = "RStockRegister"
  loc_1E4BBFC:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BC05:   Call var_90.Show
  loc_1E4BC0B:   GoTo loc_1E3D9A1
  loc_1E4BC0E: End If
  loc_1E4BC18: If (var_188 = "Stock Summary") Then
  loc_1E4BC25:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4BC2E:     Set var_90 = New FrmChangeRest
  loc_1E4BC33:     var_CC = 1
  loc_1E4BC3C:     Call var_90.Show
  loc_1E4BC44:     var_CC = 0
  loc_1E4BC4D:     Call var_90.ZOrder
  loc_1E4BC53:   End If
  loc_1E4BC5B:   Set var_90 = New rPOSRepView
  loc_1E4BC69:   var_90.GRepFormName = "RStockSummary"
  loc_1E4BC79:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BC82:   Call var_90.Show
  loc_1E4BC88:   GoTo loc_1E3D9A1
  loc_1E4BC8B: End If
  loc_1E4BC95: If (var_188 = "Deletion of Cash Bill") Then
  loc_1E4BC98:   GoTo loc_1E3D9A1
  loc_1E4BC9B: End If
  loc_1E4BCA5: If (var_188 = "Kitchen Stock Summary") Then
  loc_1E4BCB2:   If (MemVar_1F951A8 = vbNullString) Then
  loc_1E4BCBB:     Set var_90 = New FrmChangeRest
  loc_1E4BCC0:     var_CC = 1
  loc_1E4BCC9:     Call var_90.Show
  loc_1E4BCD1:     var_CC = 0
  loc_1E4BCDA:     Call var_90.ZOrder
  loc_1E4BCE0:   End If
  loc_1E4BCE8:   Set var_90 = New rPOSRepView
  loc_1E4BCF6:   var_90.GRepFormName = "KitchenStkSumm"
  loc_1E4BD06:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BD0F:   Call var_90.Show
  loc_1E4BD15:   GoTo loc_1E3D9A1
  loc_1E4BD18: End If
  loc_1E4BD22: If (var_188 = "Restaurant Change") Then
  loc_1E4BD33:   Call New FrmChangeRest.Show
  loc_1E4BD39:   GoTo loc_1E3D9A1
  loc_1E4BD3C: End If
  loc_1E4BD46: If (var_188 = "POS Status") Then
  loc_1E4BD57:   Call New RsStatusScreen.Show
  loc_1E4BD5D:   GoTo loc_1E3D9A1
  loc_1E4BD60: End If
  loc_1E4BD6A: If (var_188 = "Item Sale Report") Then
  loc_1E4BD73:   Set var_90 = New rHallRepView
  loc_1E4BD81:   var_90.GRepFormName = "ItemSale"
  loc_1E4BD91:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BD9A:   Call var_90.Show
  loc_1E4BDA0:   GoTo loc_1E3D9A1
  loc_1E4BDA3: End If
  loc_1E4BDAD: If (var_188 = "Account Posting") Then
  loc_1E4BDB0:   GoTo loc_1E3D9A1
  loc_1E4BDB3: End If
  loc_1E4BDBD: If (var_188 = "Birthday/Marriage Report") Then
  loc_1E4BDC6:   Set var_90 = New rHallRepView
  loc_1E4BDD4:   var_90.GRepFormName = "BirthMarrRep"
  loc_1E4BDE4:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BDED:   Call var_90.Show
  loc_1E4BDF3:   GoTo loc_1E3D9A1
  loc_1E4BDF6: End If
  loc_1E4BE00: If (var_188 = "Guest Observation Report") Then
  loc_1E4BE09:   Set var_90 = New rHallRepView
  loc_1E4BE17:   var_90.GRepFormName = "GuestObservRep"
  loc_1E4BE27:   var_90.CAPTION = CVar(arg_10)
  loc_1E4BE30:   Call var_90.Show
  loc_1E4BE36:   GoTo loc_1E3D9A1
  loc_1E4BE39: End If
  loc_1E4BE43: Loop Until (var_188 = "Room Inventory") 'do at: 1E3BE7C
  loc_1E4BE4C: Set var_90 = New rFomRepView
  loc_1E4BE5A: var_90.GRepFormName = "RoomInventory"
  loc_1E4BE6A: var_90.CAPTION = CVar(arg_10)
  loc_1E4BE73: Call var_90.Show
  loc_1E4BE79: GoTo loc_1E3D9A1
  loc_1E4BE86: Loop Until (var_188 = "Charges Posting") 'do at: 1E3BEB0
  loc_1E4BE8F: Set var_90 = New fdPostChrg
  loc_1E4BE9E: var_90.CAPTION = CVar(arg_10)
  loc_1E4BEA7: Call var_90.Show
  loc_1E4BEAD: GoTo loc_1E3D9A1
  loc_1E4BEBA: Loop Until (var_188 = "Charge Payment Detail") 'do at: 1E3BEF3
  loc_1E4BEC3: Set var_90 = New rFomRepView
  loc_1E4BED1: var_90.GRepFormName = "GuestChgJournal"
  loc_1E4BEE1: var_90.CAPTION = CVar(arg_10)
  loc_1E4BEEA: Call var_90.Show
  loc_1E4BEF0: GoTo loc_1E3D9A1
  loc_1E4BEFD: Loop Until (var_188 = "Guest Trail") 'do at: 1E3BF36
  loc_1E4BF06: Set var_90 = New rFomRepView
  loc_1E4BF14: var_90.GRepFormName = "GuestTrialBalance"
  loc_1E4BF24: var_90.CAPTION = CVar(arg_10)
  loc_1E4BF2D: Call var_90.Show
  loc_1E4BF33: GoTo loc_1E3D9A1
  loc_1E4BF40: Loop Until (var_188 = "Occupancy Analysis") 'do at: 1E3BF79
  loc_1E4BF49: Set var_90 = New rFomRepView
  loc_1E4BF57: var_90.GRepFormName = "OccAnalysis"
  loc_1E4BF67: var_90.CAPTION = CVar(arg_10)
  loc_1E4BF70: Call var_90.Show
  loc_1E4BF76: GoTo loc_1E3D9A1
  loc_1E4BF83: Loop Until (var_188 = "Market Segment Analysis") 'do at: 1E3BFBC
  loc_1E4BF8C: Set var_90 = New rFomRepView
  loc_1E4BF9A: var_90.GRepFormName = "MarketSegAnalysis"
  loc_1E4BFAA: var_90.CAPTION = CVar(arg_10)
  loc_1E4BFB3: Call var_90.Show
  loc_1E4BFB9: GoTo loc_1E3D9A1
  loc_1E4BFC6: Loop Until (var_188 = "Business Source Analysis") 'do at: 1E3BFFF
  loc_1E4BFCF: Set var_90 = New rFomRepView
  loc_1E4BFDD: var_90.GRepFormName = "BusinessAnalysis"
  loc_1E4BFED: var_90.CAPTION = CVar(arg_10)
  loc_1E4BFF6: Call var_90.Show
  loc_1E4BFFC: GoTo loc_1E3D9A1
  loc_1E4C009: Loop Until (var_188 = "Company Analysis") 'do at: 1E3C042
  loc_1E4C012: Set var_90 = New rFomRepView
  loc_1E4C020: var_90.GRepFormName = "CompanyAnalysis"
  loc_1E4C030: var_90.CAPTION = CVar(arg_10)
  loc_1E4C039: Call var_90.Show
  loc_1E4C03F: GoTo loc_1E3D9A1
  loc_1E4C04C: Loop Until (var_188 = "Travel Agent Analysis") 'do at: 1E3C085
  loc_1E4C055: Set var_90 = New rFomRepView
  loc_1E4C063: var_90.GRepFormName = "TravelAgentAnalysis"
  loc_1E4C073: var_90.CAPTION = CVar(arg_10)
  loc_1E4C07C: Call var_90.Show
  loc_1E4C082: GoTo loc_1E3D9A1
  loc_1E4C08F: Loop Until (var_188 = "Night Audit Report") 'do at: 1E3C095
  loc_1E4C092: GoTo loc_1E3D9A1
  loc_1E4C09F: Loop Until (var_188 = "A/C Posting") 'do at: 1E3C0C9
  loc_1E4C0A8: Set var_90 = New fdAcPostChrg
  loc_1E4C0B7: var_90.CAPTION = CVar(arg_10)
  loc_1E4C0C0: Call var_90.Show
  loc_1E4C0C6: GoTo loc_1E3D9A1
  loc_1E4C0D3: Loop Until (var_188 = "Automated Morning Report (A.M.R.)") 'do at: 1E3C10C
  loc_1E4C0DC: Set var_90 = New rFomRepView
  loc_1E4C0EA: var_90.GRepFormName = "AMRMorningReport"
  loc_1E4C0FA: var_90.CAPTION = CVar(arg_10)
  loc_1E4C103: Call var_90.Show
  loc_1E4C109: GoTo loc_1E3D9A1
  loc_1E4C116: Loop Until Not (var_188 = "Daily Report") 'do at: 1E3C124
  loc_1E4C121: Loop Until (var_188 = "Daily Report ") 'do at: 1E3C15A
  loc_1E4C12A: Set var_90 = New rFomRepView
  loc_1E4C138: var_90.GRepFormName = "DailyReport"
  loc_1E4C148: var_90.CAPTION = CVar(arg_10)
  loc_1E4C151: Call var_90.Show
  loc_1E4C157: GoTo loc_1E3D9A1
  loc_1E4C164: Loop Until (var_188 = "Leave") 'do at: 1E3C18E
  loc_1E4C16D: Set var_90 = New prAttend
  loc_1E4C17C: var_90.CAPTION = CVar(arg_10)
  loc_1E4C185: Call var_90.Show
  loc_1E4C18B: GoTo loc_1E3D9A1
  loc_1E4C198: Loop Until (var_188 = "Attendance") 'do at: 1E3C1C2
  loc_1E4C1A1: Set var_90 = New PrAttend1
  loc_1E4C1B0: var_90.CAPTION = CVar(arg_10)
  loc_1E4C1B9: Call var_90.Show
  loc_1E4C1BF: GoTo loc_1E3D9A1
  loc_1E4C1CC: Loop Until (var_188 = "Loan/Advance") 'do at: 1E3C1F6
  loc_1E4C1D5: Set var_90 = New PrLoan
  loc_1E4C1E4: var_90.CAPTION = CVar(arg_10)
  loc_1E4C1ED: Call var_90.Show
  loc_1E4C1F3: GoTo loc_1E3D9A1
  loc_1E4C200: Loop Until (var_188 = "Salary Creation") 'do at: 1E3C22A
  loc_1E4C209: Set var_90 = New prSalCreate
  loc_1E4C218: var_90.CAPTION = CVar(arg_10)
  loc_1E4C221: Call var_90.Show
  loc_1E4C227: GoTo loc_1E3D9A1
  loc_1E4C234: Loop Until (var_188 = "Leave Encashment") 'do at: 1E3C25E
  loc_1E4C23D: Set var_90 = New PrLeavench
  loc_1E4C24C: var_90.CAPTION = CVar(arg_10)
  loc_1E4C255: Call var_90.Show
  loc_1E4C25B: GoTo loc_1E3D9A1
  loc_1E4C268: Loop Until (var_188 = "Over Time") 'do at: 1E3C292
  loc_1E4C271: Set var_90 = New prOverTime
  loc_1E4C280: var_90.CAPTION = CVar(arg_10)
  loc_1E4C289: Call var_90.Show
  loc_1E4C28F: GoTo loc_1E3D9A1
  loc_1E4C29C: Loop Until (var_188 = "Attendence Report") 'do at: 1E3C2D5
  loc_1E4C2A5: Set var_90 = New rRepPayRoll
  loc_1E4C2B3: var_90.GRepFormName = "AttendanceRep"
  loc_1E4C2C3: var_90.CAPTION = CVar(arg_10)
  loc_1E4C2CC: Call var_90.Show
  loc_1E4C2D2: GoTo loc_1E3D9A1
  loc_1E4C2DF: Loop Until (var_188 = "Pay Slip") 'do at: 1E3C318
  loc_1E4C2E8: Set var_90 = New rRepPayRoll
  loc_1E4C2F6: var_90.GRepFormName = "PaySlip"
  loc_1E4C306: var_90.CAPTION = CVar(arg_10)
  loc_1E4C30F: Call var_90.Show
  loc_1E4C315: GoTo loc_1E3D9A1
  loc_1E4C322: Loop Until (var_188 = "Loan Register") 'do at: 1E3C35B
  loc_1E4C32B: Set var_90 = New rRepPayRoll
  loc_1E4C339: var_90.GRepFormName = "LoanReg"
  loc_1E4C349: var_90.CAPTION = CVar(arg_10)
  loc_1E4C352: Call var_90.Show
  loc_1E4C358: GoTo loc_1E3D9A1
  loc_1E4C365: Loop Until (var_188 = "Loan/Advance Summary") 'do at: 1E3C39E
  loc_1E4C36E: Set var_90 = New rRepPayRoll
  loc_1E4C37C: var_90.GRepFormName = "LoanAdvSumm"
  loc_1E4C38C: var_90.CAPTION = CVar(arg_10)
  loc_1E4C395: Call var_90.Show
  loc_1E4C39B: GoTo loc_1E3D9A1
  loc_1E4C3A8: Loop Until (var_188 = "Payroll Register") 'do at: 1E3C3E1
  loc_1E4C3B1: Set var_90 = New rRepPayRoll
  loc_1E4C3BF: var_90.GRepFormName = "PayrollReg"
  loc_1E4C3CF: var_90.CAPTION = CVar(arg_10)
  loc_1E4C3D8: Call var_90.Show
  loc_1E4C3DE: GoTo loc_1E3D9A1
  loc_1E4C3EB: Loop Until (var_188 = "PF Statement") 'do at: 1E3C424
  loc_1E4C3F4: Set var_90 = New rRepPayRoll
  loc_1E4C402: var_90.GRepFormName = "PFStatement"
  loc_1E4C412: var_90.CAPTION = CVar(arg_10)
  loc_1E4C41B: Call var_90.Show
  loc_1E4C421: GoTo loc_1E3D9A1
  loc_1E4C42E: Loop Until (var_188 = "Loan/Advance Ledger") 'do at: 1E3C467
  loc_1E4C437: Set var_90 = New rRepPayRoll
  loc_1E4C445: var_90.GRepFormName = "LoanLedg"
  loc_1E4C455: var_90.CAPTION = CVar(arg_10)
  loc_1E4C45E: Call var_90.Show
  loc_1E4C464: GoTo loc_1E3D9A1
  loc_1E4C471: Loop Until (var_188 = "Form C") 'do at: 1E3C4AA
  loc_1E4C47A: Set var_90 = New rRepPayRoll
  loc_1E4C488: var_90.GRepFormName = "FormC"
  loc_1E4C498: var_90.CAPTION = CVar(arg_10)
  loc_1E4C4A1: Call var_90.Show
  loc_1E4C4A7: GoTo loc_1E3D9A1
  loc_1E4C4B4: Loop Until (var_188 = "Gratuity Report") 'do at: 1E3C4ED
  loc_1E4C4BD: Set var_90 = New rRepPayRoll
  loc_1E4C4CB: var_90.GRepFormName = "GratuityReport"
  loc_1E4C4DB: var_90.CAPTION = CVar(arg_10)
  loc_1E4C4E4: Call var_90.Show
  loc_1E4C4EA: GoTo loc_1E3D9A1
  loc_1E4C4F7: Loop Until (var_188 = "Telephone") 'do at: 1E3C4FD
  loc_1E4C4FA: GoTo loc_1E3D9A1
  loc_1E4C507: Loop Until (var_188 = "Printing Parameters") 'do at: 1E3C531
  loc_1E4C510: Set var_90 = New frmPrintModule
  loc_1E4C51F: var_90.CAPTION = CVar(arg_10)
  loc_1E4C528: Call var_90.Show
  loc_1E4C52E: GoTo loc_1E3D9A1
  loc_1E4C53B: Loop Until (var_188 = "Printing Setup") 'do at: 1E3C565
  loc_1E4C544: Set var_90 = New frmMod_Print
  loc_1E4C553: var_90.CAPTION = CVar(arg_10)
  loc_1E4C55C: Call var_90.Show
  loc_1E4C562: GoTo loc_1E3D9A1
  loc_1E4C56F: Loop Until (var_188 = "Revenue Wise Budget Entry") 'do at: 1E3C599
  loc_1E4C578: Set var_90 = New FrmRevenueWiseBudget
  loc_1E4C587: var_90.CAPTION = CVar(arg_10)
  loc_1E4C590: Call var_90.Show
  loc_1E4C596: GoTo loc_1E3D9A1
  loc_1E4C5A3: Loop Until (var_188 = "Outlet Bill Sundry Setting") 'do at: 1E3C5CD
  loc_1E4C5AC: Set var_90 = New OutLetSundry
  loc_1E4C5BB: var_90.CAPTION = CVar(arg_10)
  loc_1E4C5C4: Call var_90.Show
  loc_1E4C5CA: GoTo loc_1E3D9A1
  loc_1E4C5D7: Loop Until (var_188 = "Room Status") 'do at: 1E3C621
  loc_1E4C5E0: Set var_90 = New InHouseGuestFolio
  loc_1E4C5EF: var_90.CAPTION = CVar(arg_10)
  loc_1E4C5FF: var_90.PGuestName = CVar(var_9C)
  loc_1E4C60F: var_90.PRoomNo = CVar(var_A4)
  loc_1E4C618: Call var_90.Show
  loc_1E4C61E: GoTo loc_1E3D9A1
  loc_1E4C62B: Loop Until (var_188 = "Bill Reprint") 'do at: 1E3C655
  loc_1E4C634: Set var_90 = New frmFomB
  loc_1E4C643: var_90.CAPTION = CVar(arg_10)
  loc_1E4C64C: Call var_90.Show
  loc_1E4C652: GoTo loc_1E3D9A1
  loc_1E4C65F: Loop Until (var_188 = "Reverse check-out") 'do at: 1E3C689
  loc_1E4C668: Set var_90 = New FdRevCheckOut
  loc_1E4C677: var_90.CAPTION = CVar(arg_10)
  loc_1E4C680: Call var_90.Show
  loc_1E4C686: GoTo loc_1E3D9A1
  loc_1E4C693: Loop Until (var_188 = "Settelment Report") 'do at: 1E3C6CC
  loc_1E4C69C: Set var_90 = New rFomRepView
  loc_1E4C6AA: var_90.GRepFormName = "SettleRep"
  loc_1E4C6BA: var_90.CAPTION = CVar(arg_10)
  loc_1E4C6C3: Call var_90.Show
  loc_1E4C6C9: GoTo loc_1E3D9A1
  loc_1E4C6D6: Loop Until (var_188 = "Night Audit Process") 'do at: 1E3C81C
  loc_1E4C6FF: var_90.Connection15.Execute "Select KOTAtNightAudit,POSBillAtNightAudit from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_DC, -1
  loc_1E4C70A: Set var_B0 = var_E0
  loc_1E4C730: Loop Until (var_B0.RecordCount > 0) 'do at: 1E3C7DB
  loc_1E4C738: var_CC = "KOTAtNightAudit"
  loc_1E4C744: var_E0 = var_B0.Fields
  loc_1E4C76E: Loop Until (Proc_6_38_E69628(CVar(var_E0.Item(var_CC)), var_E0, var_CC, var_CC, var_CC, var_CC, var_CC) = "Yes") 'do at: 1E3C785
  loc_1E4C77B: Loop Until (Proc_96_47_10207DC(var_CC, var_CC, var_CC) = 0) 'do at: 1E3C785
  loc_1E4C78C: var_CC = "POSBillAtNightAudit"
  loc_1E4C7C2: Loop Until (Proc_6_38_E69628(CVar(var_B0.Fields.Item(var_CC)), &HFF, var_CC) = "Yes") 'do at: 1E3C7D9
  loc_1E4C7CF: Loop Until (Proc_96_46_110C538(var_CC) = 0) 'do at: 1E3C7D9
  loc_1E4C7E5: Loop Until (&HFF = &HFF) 'do at: 1E3C7F5
  loc_1E4C7EF: Set var_B0 = Nothing
  loc_1E4C7F4: Exit Sub
  loc_1E4C7FB: Set var_90 = New fdAcPostChrg
  loc_1E4C80A: var_90.CAPTION = CVar(arg_10)
  loc_1E4C813: Call var_90.Show
  loc_1E4C819: GoTo loc_1E3D9A1
  loc_1E4C826: Loop Until (var_188 = "Reverse Night Audit") 'do at: 1E3C850
  loc_1E4C82F: Set var_90 = New frmReNightAudit
  loc_1E4C83E: var_90.CAPTION = CVar(arg_10)
  loc_1E4C847: Call var_90.Show
  loc_1E4C84D: GoTo loc_1E3D9A1
  loc_1E4C85A: Loop Until (var_188 = "Data Transfer") 'do at: 1E3C891
  loc_1E4C865: Loop Until (MemVar_1F950B8 >= 1) 'do at: 1E3C88C
  loc_1E4C86E: Set var_90 = New Transfer
  loc_1E4C87D: var_90.CAPTION = CVar(arg_10)
  loc_1E4C886: Call var_90.Show
  loc_1E4C88E: GoTo loc_1E3D9A1
  loc_1E4C89B: Loop Until (var_188 = "Transfer (Offline)") 'do at: 1E3C8E4
  loc_1E4C8A6: Loop Until (MemVar_1F950B8 >= 1) 'do at: 1E3C8DF
  loc_1E4C8AF: Set var_90 = New Transfer
  loc_1E4C8C0: var_90.OpenMode = 2
  loc_1E4C8D0: var_90.CAPTION = CVar(var_94)
  loc_1E4C8D9: Call var_90.Show
  loc_1E4C8E1: GoTo loc_1E3D9A1
  loc_1E4C8EE: Loop Until (var_188 = "Transfer (Online)") 'do at: 1E3C937
  loc_1E4C8F9: Loop Until (MemVar_1F950B8 >= 1) 'do at: 1E3C932
  loc_1E4C902: Set var_90 = New Transfer
  loc_1E4C913: var_90.OpenMode = 1
  loc_1E4C923: var_90.CAPTION = CVar(var_94)
  loc_1E4C92C: Call var_90.Show
  loc_1E4C934: GoTo loc_1E3D9A1
  loc_1E4C941: Loop Until (var_188 = "Tally Export(XML)") 'do at: 1E3C970
  loc_1E4C94C: Loop Until (MemVar_1F950B8 >= 1) 'do at: 1E3C96B
  loc_1E4C95D: Call New frmTallyExport.Show
  loc_1E4C967: Set var_90 = Nothing 
  loc_1E4C96D: GoTo loc_1E3D9A1
  loc_1E4C97A: Loop Until (var_188 = "Godrej Locks") 'do at: 1E3C9A5
  loc_1E4C988: var_CC = 1
  loc_1E4C994: Call New frmGodrejLockSettings.Show
  loc_1E4C99E: Set var_90 = Nothing 
  loc_1E4C9A2: GoTo loc_1E3D9A1
  loc_1E4C9AF: Loop Until (var_188 = "Current Balance Updation") 'do at: 1E3C9D9
  loc_1E4C9B8: Set var_90 = New FaCurrBalUpdate
  loc_1E4C9C7: var_90.CAPTION = CVar(arg_10)
  loc_1E4C9D0: Call var_90.Show
  loc_1E4C9D6: GoTo loc_1E3D9A1
  loc_1E4C9E3: Loop Until (var_188 = "Menu Item Copy") 'do at: 1E3CA0D
  loc_1E4C9EC: Set var_90 = New frmMenuItemCopy
  loc_1E4C9FB: var_90.CAPTION = CVar(arg_10)
  loc_1E4CA04: Call var_90.Show
  loc_1E4CA0A: GoTo loc_1E3D9A1
  loc_1E4CA17: Loop Until (var_188 = "Unit Master") 'do at: 1E3CA41
  loc_1E4CA20: Set var_90 = New frmUnitMast
  loc_1E4CA2F: var_90.CAPTION = CVar(arg_10)
  loc_1E4CA38: Call var_90.Show
  loc_1E4CA3E: GoTo loc_1E3D9A1
  loc_1E4CA4B: Loop Until (var_188 = "Task Scheduler") 'do at: 1E3CA75
  loc_1E4CA54: Set var_90 = New FrmJobScheduler
  loc_1E4CA63: var_90.CAPTION = CVar(arg_10)
  loc_1E4CA6C: Call var_90.Show
  loc_1E4CA72: GoTo loc_1E3D9A1
  loc_1E4CA7F: Loop Until (var_188 = "POS Bill Deletion") 'do at: 1E3CAA9
  loc_1E4CA88: Set var_90 = New FrmPOSBillDeletion
  loc_1E4CA97: var_90.CAPTION = CVar(arg_10)
  loc_1E4CAA0: Call var_90.Show
  loc_1E4CAA6: GoTo loc_1E3D9A1
  loc_1E4CAB3: Loop Until (var_188 = "Category Master") 'do at: 1E3CADD
  loc_1E4CABC: Set var_90 = New MemCatMast
  loc_1E4CACB: var_90.CAPTION = CVar(arg_10)
  loc_1E4CAD4: Call var_90.Show
  loc_1E4CADA: GoTo loc_1E3D9A1
  loc_1E4CAE7: Loop Until (var_188 = "Member Master") 'do at: 1E3CB11
  loc_1E4CAF0: Set var_90 = New MemCatMast
  loc_1E4CAFF: var_90.CAPTION = CVar(arg_10)
  loc_1E4CB08: Call var_90.Show
  loc_1E4CB0E: GoTo loc_1E3D9A1
  loc_1E4CB1B: Loop Until (var_188 = "Revenue Master") 'do at: 1E3CB45
  loc_1E4CB24: Set var_90 = New MemberShipRevenueMast
  loc_1E4CB33: var_90.CAPTION = CVar(arg_10)
  loc_1E4CB3C: Call var_90.Show
  loc_1E4CB42: GoTo loc_1E3D9A1
  loc_1E4CB4F: Loop Until (var_188 = "Facility Master") 'do at: 1E3CBA1
  loc_1E4CB5C: Loop Until (var_A8 = "MemMas") 'do at: 1E3CB6B
  loc_1E4CB65: Set var_90 = New memFacilityMast
  loc_1E4CB68: GoTo loc_1E3CB81
  loc_1E4CB75: Loop Until (var_A8 = "MallMgmt") 'do at: 1E3CB81
  loc_1E4CB7E: Set var_90 = New FrmFacilityMast
  loc_1E4CB8F: var_90.CAPTION = CVar(arg_10)
  loc_1E4CB98: Call var_90.Show
  loc_1E4CB9E: GoTo loc_1E3D9A1
  loc_1E4CBAB: Loop Until (var_188 = "Category wise Revenue") 'do at: 1E3CBD5
  loc_1E4CBB4: Set var_90 = New memCatRevMast
  loc_1E4CBC3: var_90.CAPTION = CVar(arg_10)
  loc_1E4CBCC: Call var_90.Show
  loc_1E4CBD2: GoTo loc_1E3D9A1
  loc_1E4CBDF: Loop Until (var_188 = "Category wise Facility") 'do at: 1E3CC09
  loc_1E4CBE8: Set var_90 = New memCategoryFacilities
  loc_1E4CBF7: var_90.CAPTION = CVar(arg_10)
  loc_1E4CC00: Call var_90.Show
  loc_1E4CC06: GoTo loc_1E3D9A1
  loc_1E4CC13: Loop Until (var_188 = "Member Age Wise Revenue") 'do at: 1E3CC3D
  loc_1E4CC1C: Set var_90 = New memAgeRevMast
  loc_1E4CC2B: var_90.CAPTION = CVar(arg_10)
  loc_1E4CC34: Call var_90.Show
  loc_1E4CC3A: GoTo loc_1E3D9A1
  loc_1E4CC47: Loop Until (var_188 = "Member Select Category") 'do at: 1E3CC71
  loc_1E4CC50: Set var_90 = New MemSelectCategory
  loc_1E4CC5F: var_90.CAPTION = CVar(arg_10)
  loc_1E4CC68: Call var_90.Show
  loc_1E4CC6E: GoTo loc_1E3D9A1
  loc_1E4CC7B: Loop Until (var_188 = "Environment Settings") 'do at: 1E3CCA5
  loc_1E4CC84: Set var_90 = New MemberEnviro
  loc_1E4CC93: var_90.CAPTION = CVar(arg_10)
  loc_1E4CC9C: Call var_90.Show
  loc_1E4CCA2: GoTo loc_1E3D9A1
  loc_1E4CCAF: Loop Until (var_188 = "Member Visit Entry") 'do at: 1E3CCD9
  loc_1E4CCB8: Set var_90 = New MemVisitEntry
  loc_1E4CCC7: var_90.CAPTION = CVar(arg_10)
  loc_1E4CCD0: Call var_90.Show
  loc_1E4CCD6: GoTo loc_1E3D9A1
  loc_1E4CCE3: Loop Until (var_188 = "Member Renewal Entry") 'do at: 1E3CD0D
  loc_1E4CCEC: Set var_90 = New MemRenewalEntry
  loc_1E4CCFB: var_90.CAPTION = CVar(arg_10)
  loc_1E4CD04: Call var_90.Show
  loc_1E4CD0A: GoTo loc_1E3D9A1
  loc_1E4CD17: Loop Until (var_188 = "Member Used Facility Entry") 'do at: 1E3CD41
  loc_1E4CD20: Set var_90 = New MemFacilityEntry
  loc_1E4CD2F: var_90.CAPTION = CVar(arg_10)
  loc_1E4CD38: Call var_90.Show
  loc_1E4CD3E: GoTo loc_1E3D9A1
  loc_1E4CD4B: Loop Until (var_188 = "Member Facility Billing") 'do at: 1E3CD75
  loc_1E4CD54: Set var_90 = New MemFacilityBilling
  loc_1E4CD63: var_90.CAPTION = CVar(arg_10)
  loc_1E4CD6C: Call var_90.Show
  loc_1E4CD72: GoTo loc_1E3D9A1
  loc_1E4CD7F: Loop Until (var_188 = "Member Bill Printing") 'do at: 1E3CDA9
  loc_1E4CD88: Set var_90 = New MemBillPrintingModule
  loc_1E4CD97: var_90.CAPTION = CVar(arg_10)
  loc_1E4CDA0: Call var_90.Show
  loc_1E4CDA6: GoTo loc_1E3D9A1
  loc_1E4CDB3: Loop Until (var_188 = "Member Assistant") 'do at: 1E3CDDD
  loc_1E4CDBC: Set var_90 = New MemAssistant
  loc_1E4CDCB: var_90.CAPTION = CVar(arg_10)
  loc_1E4CDD4: Call var_90.Show
  loc_1E4CDDA: GoTo loc_1E3D9A1
  loc_1E4CDE7: Loop Until (var_188 = "Outstation Member Entry") 'do at: 1E3CE11
  loc_1E4CDF0: Set var_90 = New memOutStationEntry
  loc_1E4CDFF: var_90.CAPTION = CVar(arg_10)
  loc_1E4CE08: Call var_90.Show
  loc_1E4CE0E: GoTo loc_1E3D9A1
  loc_1E4CE1B: Loop Until (var_188 = "Member Category Change Entry") 'do at: 1E3CE45
  loc_1E4CE24: Set var_90 = New memCatChngEntry
  loc_1E4CE33: var_90.CAPTION = CVar(arg_10)
  loc_1E4CE3C: Call var_90.Show
  loc_1E4CE42: GoTo loc_1E3D9A1
  loc_1E4CE4F: Loop Until (var_188 = "Payment Receive Entry") 'do at: 1E3CE79
  loc_1E4CE58: Set var_90 = New MemPaymentReceive
  loc_1E4CE67: var_90.CAPTION = CVar(arg_10)
  loc_1E4CE70: Call var_90.Show
  loc_1E4CE76: GoTo loc_1E3D9A1
  loc_1E4CE83: Loop Until (var_188 = "Auto Settle Card Balance") 'do at: 1E3CEAD
  loc_1E4CE8C: Set var_90 = New MemAutoSettleCardBalance
  loc_1E4CE9B: var_90.CAPTION = CVar(arg_10)
  loc_1E4CEA4: Call var_90.Show
  loc_1E4CEAA: GoTo loc_1E3D9A1
  loc_1E4CEB7: Loop Until (var_188 = "Payment Due Letter Entry") 'do at: 1E3CEE1
  loc_1E4CEC0: Set var_90 = New MemTagadaLetter
  loc_1E4CECF: var_90.CAPTION = CVar(arg_10)
  loc_1E4CED8: Call var_90.Show
  loc_1E4CEDE: GoTo loc_1E3D9A1
  loc_1E4CEEB: Loop Until (var_188 = "Member Category Change (Conditional)") 'do at: 1E3CF15
  loc_1E4CEF4: Set var_90 = New memCatChngCond
  loc_1E4CF03: var_90.CAPTION = CVar(arg_10)
  loc_1E4CF0C: Call var_90.Show
  loc_1E4CF12: GoTo loc_1E3D9A1
  loc_1E4CF1F: Loop Until Not (var_188 = "Member Visit Details") 'do at: 1E3CF2D
  loc_1E4CF2A: Loop Until (var_188 = "Member Visit Detail") 'do at: 1E3CF63
  loc_1E4CF33: Set var_90 = New rMemberRepView
  loc_1E4CF41: var_90.GRepFormName = "MemVisitDetail"
  loc_1E4CF51: var_90.CAPTION = CVar(arg_10)
  loc_1E4CF5A: Call var_90.Show
  loc_1E4CF60: GoTo loc_1E3D9A1
  loc_1E4CF6D: Loop Until (var_188 = "Member Mailing Labels") 'do at: 1E3CFA6
  loc_1E4CF76: Set var_90 = New rMemberRepView
  loc_1E4CF84: var_90.GRepFormName = "MemMalingLabels"
  loc_1E4CF94: var_90.CAPTION = CVar(arg_10)
  loc_1E4CF9D: Call var_90.Show
  loc_1E4CFA3: GoTo loc_1E3D9A1
  loc_1E4CFB0: Loop Until (var_188 = "Member Bill Missing Report") 'do at: 1E3CFE9
  loc_1E4CFB9: Set var_90 = New rMemberRepView
  loc_1E4CFC7: var_90.GRepFormName = "MemBillMissingReport"
  loc_1E4CFD7: var_90.CAPTION = CVar(arg_10)
  loc_1E4CFE0: Call var_90.Show
  loc_1E4CFE6: GoTo loc_1E3D9A1
  loc_1E4CFF3: Loop Until (var_188 = "Member Sales Register") 'do at: 1E3D02C
  loc_1E4CFFC: Set var_90 = New rMemberRepView
  loc_1E4D00A: var_90.GRepFormName = "MemSalesRegister"
  loc_1E4D01A: var_90.CAPTION = CVar(arg_10)
  loc_1E4D023: Call var_90.Show
  loc_1E4D029: GoTo loc_1E3D9A1
  loc_1E4D036: Loop Until (var_188 = "Member Ledger") 'do at: 1E3D084
  loc_1E4D03F: Set var_90 = New FaReports
  loc_1E4D04D: var_90.GRepFormName = "MemLed"
  loc_1E4D05F: var_90.BtnParam.Visible = True
  loc_1E4D072: var_90.CAPTION = CVar(arg_10)
  loc_1E4D07B: Call var_90.Show
  loc_1E4D081: GoTo loc_1E3D9A1
  loc_1E4D08E: Loop Until (var_188 = "Member Tax Report") 'do at: 1E3D0C7
  loc_1E4D097: Set var_90 = New rMemberRepView
  loc_1E4D0A5: var_90.GRepFormName = "MemTaxReport"
  loc_1E4D0B5: var_90.CAPTION = CVar(arg_10)
  loc_1E4D0BE: Call var_90.Show
  loc_1E4D0C4: GoTo loc_1E3D9A1
  loc_1E4D0D1: Loop Until (var_188 = "Payment Due Letter Report") 'do at: 1E3D10A
  loc_1E4D0DA: Set var_90 = New rMemberRepView
  loc_1E4D0E8: var_90.GRepFormName = "PaymentDueLetterReport"
  loc_1E4D0F8: var_90.CAPTION = CVar(arg_10)
  loc_1E4D101: Call var_90.Show
  loc_1E4D107: GoTo loc_1E3D9A1
  loc_1E4D114: Loop Until (var_188 = "Member Birthday/Anniversary Details") 'do at: 1E3D14D
  loc_1E4D11D: Set var_90 = New rMemberRepView
  loc_1E4D12B: var_90.GRepFormName = "MemBirthAnnvDtls"
  loc_1E4D13B: var_90.CAPTION = CVar(arg_10)
  loc_1E4D144: Call var_90.Show
  loc_1E4D14A: GoTo loc_1E3D9A1
  loc_1E4D157: Loop Until (var_188 = "SMS Center Settings") 'do at: 1E3D184
  loc_1E4D162: Set var_90 = MemVar_1F95468 
  loc_1E4D172: var_90.CAPTION = CVar(arg_10)
  loc_1E4D17B: Call var_90.Show
  loc_1E4D181: GoTo loc_1E3D9A1
  loc_1E4D18E: Loop Until (var_188 = "SMS Environment Settings") 'do at: 1E3D1BB
  loc_1E4D199: Set var_90 = MemVar_1F95440 
  loc_1E4D1A9: var_90.CAPTION = CVar(arg_10)
  loc_1E4D1B2: Call var_90.Show
  loc_1E4D1B8: GoTo loc_1E3D9A1
  loc_1E4D1C5: Loop Until (var_188 = "Multiple SMS Type") 'do at: 1E3D1F2
  loc_1E4D1D0: Set var_90 = MemVar_1F95454 
  loc_1E4D1E0: var_90.CAPTION = CVar(arg_10)
  loc_1E4D1E9: Call var_90.Show
  loc_1E4D1EF: GoTo loc_1E3D9A1
  loc_1E4D1FC: Loop Until (var_188 = "GRC Printing") 'do at: 1E3D235
  loc_1E4D205: Set var_90 = New rRepReserv
  loc_1E4D213: var_90.GRepFormName = "GRC"
  loc_1E4D223: var_90.CAPTION = CVar(arg_10)
  loc_1E4D22C: Call var_90.Show
  loc_1E4D232: GoTo loc_1E3D9A1
  loc_1E4D23F: Loop Until (var_188 = "Check Out Register") 'do at: 1E3D278
  loc_1E4D248: Set var_90 = New rFomRepView
  loc_1E4D256: var_90.GRepFormName = "GuestBillDetails"
  loc_1E4D266: var_90.CAPTION = CVar(arg_10)
  loc_1E4D26F: Call var_90.Show
  loc_1E4D275: GoTo loc_1E3D9A1
  loc_1E4D282: Loop Until (var_188 = "Credit Report") 'do at: 1E3D2BB
  loc_1E4D28B: Set var_90 = New rFomRepView
  loc_1E4D299: var_90.GRepFormName = "CreditReport"
  loc_1E4D2A9: var_90.CAPTION = CVar(arg_10)
  loc_1E4D2B2: Call var_90.Show
  loc_1E4D2B8: GoTo loc_1E3D9A1
  loc_1E4D2C5: Loop Until (var_188 = "EInvoice Report") 'do at: 1E3D2FE
  loc_1E4D2CE: Set var_90 = New rFomRepView
  loc_1E4D2DC: var_90.GRepFormName = "EInvoiceReport"
  loc_1E4D2EC: var_90.CAPTION = CVar(arg_10)
  loc_1E4D2F5: Call var_90.Show
  loc_1E4D2FB: GoTo loc_1E3D9A1
  loc_1E4D308: Loop Until (var_188 = "TDS Report") 'do at: 1E3D341
  loc_1E4D311: Set var_90 = New rFomRepView
  loc_1E4D31F: var_90.GRepFormName = "TDSReport"
  loc_1E4D32F: var_90.CAPTION = CVar(arg_10)
  loc_1E4D338: Call var_90.Show
  loc_1E4D33E: GoTo loc_1E3D9A1
  loc_1E4D34B: Loop Until (var_188 = "Guest Extra Charges") 'do at: 1E3D384
  loc_1E4D354: Set var_90 = New rFomRepView
  loc_1E4D362: var_90.GRepFormName = "ExtraChargesDuringStay"
  loc_1E4D372: var_90.CAPTION = CVar(arg_10)
  loc_1E4D37B: Call var_90.Show
  loc_1E4D381: GoTo loc_1E3D9A1
  loc_1E4D38E: Loop Until (var_188 = "Room Type Occupancy Analysis") 'do at: 1E3D3C7
  loc_1E4D397: Set var_90 = New rFomRepView
  loc_1E4D3A5: var_90.GRepFormName = "RoomTypeOccupancyAnalysis"
  loc_1E4D3B5: var_90.CAPTION = CVar(arg_10)
  loc_1E4D3BE: Call var_90.Show
  loc_1E4D3C4: GoTo loc_1E3D9A1
  loc_1E4D3D1: Loop Until (var_188 = "Plan Report") 'do at: 1E3D40A
  loc_1E4D3DA: Set var_90 = New rFomRepView
  loc_1E4D3E8: var_90.GRepFormName = "PlanReport"
  loc_1E4D3F8: var_90.CAPTION = CVar(arg_10)
  loc_1E4D401: Call var_90.Show
  loc_1E4D407: GoTo loc_1E3D9A1
  loc_1E4D414: Loop Until (var_188 = "Business Source Occupancy Report") 'do at: 1E3D44D
  loc_1E4D41D: Set var_90 = New rFomRepView
  loc_1E4D42B: var_90.GRepFormName = "BussSourceOccupancyReport"
  loc_1E4D43B: var_90.CAPTION = CVar(arg_10)
  loc_1E4D444: Call var_90.Show
  loc_1E4D44A: GoTo loc_1E3D9A1
  loc_1E4D457: Loop Until (var_188 = "Plan Meal Tokens") 'do at: 1E3D485
  loc_1E4D460: Set var_90 = New rFomRepView
  loc_1E4D46E: var_90.GRepFormName = "PlanMealTokens"
  loc_1E4D47E: var_90.CAPTION = CVar(arg_10)
  loc_1E4D482: GoTo loc_1E3D9A1
  loc_1E4D48F: Loop Until (var_188 = "FOM Tax Detail") 'do at: 1E3D4C8
  loc_1E4D498: Set var_90 = New rFomRepView
  loc_1E4D4A6: var_90.GRepFormName = "FOMTaxDetail"
  loc_1E4D4B6: var_90.CAPTION = CVar(arg_10)
  loc_1E4D4BF: Call var_90.Show
  loc_1E4D4C5: GoTo loc_1E3D9A1
  loc_1E4D4D2: Loop Until (var_188 = "Checked In Guest Detail") 'do at: 1E3D50B
  loc_1E4D4DB: Set var_90 = New rRepReserv
  loc_1E4D4E9: var_90.GRepFormName = "CheckedInGuestDtl"
  loc_1E4D4F9: var_90.CAPTION = CVar(arg_10)
  loc_1E4D502: Call var_90.Show
  loc_1E4D508: GoTo loc_1E3D9A1
  loc_1E4D515: Loop Until (var_188 = "Room Rent Audit Report") 'do at: 1E3D54E
  loc_1E4D51E: Set var_90 = New rFomRepView
  loc_1E4D52C: var_90.GRepFormName = "RoomRentAuditRpt"
  loc_1E4D53C: var_90.CAPTION = CVar(arg_10)
  loc_1E4D545: Call var_90.Show
  loc_1E4D54B: GoTo loc_1E3D9A1
  loc_1E4D558: Loop Until (var_188 = "Sales Report") 'do at: 1E3D591
  loc_1E4D561: Set var_90 = New rFomRepView
  loc_1E4D56F: var_90.GRepFormName = "SaleRegisterI"
  loc_1E4D57F: var_90.CAPTION = CVar(arg_10)
  loc_1E4D588: Call var_90.Show
  loc_1E4D58E: GoTo loc_1E3D9A1
  loc_1E4D59B: Loop Until (var_188 = "Guest Payments") 'do at: 1E3D5D4
  loc_1E4D5A4: Set var_90 = New rFomRepView
  loc_1E4D5B2: var_90.GRepFormName = "GuestPayments"
  loc_1E4D5C2: var_90.CAPTION = CVar(arg_10)
  loc_1E4D5CB: Call var_90.Show
  loc_1E4D5D1: GoTo loc_1E3D9A1
  loc_1E4D5DE: Loop Until (var_188 = "Tax Wise Charge Detail") 'do at: 1E3D617
  loc_1E4D5E7: Set var_90 = New rFomRepView
  loc_1E4D5F5: var_90.GRepFormName = "FOMTaxWiseChargeDetail"
  loc_1E4D605: var_90.CAPTION = CVar(arg_10)
  loc_1E4D60E: Call var_90.Show
  loc_1E4D614: GoTo loc_1E3D9A1
  loc_1E4D621: Loop Until (var_188 = "Company Profile") 'do at: 1E3D65A
  loc_1E4D62A: Set var_90 = New salmarCompProfile
  loc_1E4D639: var_90.CAPTION = CVar(arg_10)
  loc_1E4D642: Call var_90.Show
  loc_1E4D653: var_90.WindowState = 2
  loc_1E4D657: GoTo loc_1E3D9A1
  loc_1E4D664: Loop Until (var_188 = "Happy Hours") 'do at: 1E3D68E
  loc_1E4D66D: Set var_90 = New pHappyHours
  loc_1E4D67C: var_90.CAPTION = CVar(arg_10)
  loc_1E4D685: Call var_90.Show
  loc_1E4D68B: GoTo loc_1E3D9A1
  loc_1E4D698: Loop Until Not (var_188 = "Happy Hours [ Fee Items ]") 'do at: 1E3D6A6
  loc_1E4D6A3: Loop Until (var_188 = "Happy Hours [ Free Items ]") 'do at: 1E3D6CD
  loc_1E4D6AC: Set var_90 = New NewHappyHours
  loc_1E4D6BB: var_90.CAPTION = CVar(arg_10)
  loc_1E4D6C4: Call var_90.Show
  loc_1E4D6CA: GoTo loc_1E3D9A1
  loc_1E4D6D7: Loop Until (var_188 = "Combo Pack") 'do at: 1E3D701
  loc_1E4D6E0: Set var_90 = New frmComboMast
  loc_1E4D6EF: var_90.CAPTION = CVar(arg_10)
  loc_1E4D6F8: Call var_90.Show
  loc_1E4D6FE: GoTo loc_1E3D9A1
  loc_1E4D70B: Loop Until (var_188 = "Guest LookUp") 'do at: 1E3D73E
  loc_1E4D714: Set var_90 = New FrmBdayLookup
  loc_1E4D723: var_90.CAPTION = CVar(arg_10)
  loc_1E4D729: var_CC = 1
  loc_1E4D735: Call var_90.Show
  loc_1E4D73B: GoTo loc_1E3D9A1
  loc_1E4D748: Loop Until (var_188 = "SMS (API)") 'do at: 1E3D775
  loc_1E4D753: Set var_90 = MemVar_1F95468 
  loc_1E4D763: var_90.CAPTION = CVar(arg_10)
  loc_1E4D76C: Call var_90.Show
  loc_1E4D772: GoTo loc_1E3D9A1
  loc_1E4D77F: Loop Until (var_188 = "SMS (Scheduled)") 'do at: 1E3D7AC
  loc_1E4D78A: Set var_90 = MemVar_1F95440 
  loc_1E4D79A: var_90.CAPTION = CVar(arg_10)
  loc_1E4D7A3: Call var_90.Show
  loc_1E4D7A9: GoTo loc_1E3D9A1
  loc_1E4D7B6: Loop Until (var_188 = "SMS (Conditional)") 'do at: 1E3D7E3
  loc_1E4D7C1: Set var_90 = MemVar_1F95454 
  loc_1E4D7D1: var_90.CAPTION = CVar(arg_10)
  loc_1E4D7DA: Call var_90.Show
  loc_1E4D7E0: GoTo loc_1E3D9A1
  loc_1E4D7ED: Loop Until (var_188 = "Location-Master") 'do at: 1E3D817
  loc_1E4D7F6: Set var_90 = New FrmLocationMast
  loc_1E4D805: var_90.CAPTION = CVar(arg_10)
  loc_1E4D80E: Call var_90.Show
  loc_1E4D814: GoTo loc_1E3D9A1
  loc_1E4D821: Loop Until (var_188 = "Facility Master") 'do at: 1E3D84B
  loc_1E4D82A: Set var_90 = New FrmFacilityMast
  loc_1E4D839: var_90.CAPTION = CVar(arg_10)
  loc_1E4D842: Call var_90.Show
  loc_1E4D848: GoTo loc_1E3D9A1
  loc_1E4D855: Loop Until (var_188 = "Location Facilities") 'do at: 1E3D87F
  loc_1E4D85E: Set var_90 = New FrmLocationFacilities
  loc_1E4D86D: var_90.CAPTION = CVar(arg_10)
  loc_1E4D876: Call var_90.Show
  loc_1E4D87C: GoTo loc_1E3D9A1
  loc_1E4D889: Loop Until (var_188 = "Party Locations") 'do at: 1E3D8B3
  loc_1E4D892: Set var_90 = New FrmPartyLocations
  loc_1E4D8A1: var_90.CAPTION = CVar(arg_10)
  loc_1E4D8AA: Call var_90.Show
  loc_1E4D8B0: GoTo loc_1E3D9A1
  loc_1E4D8BD: Loop Until (var_188 = "Meter Reading") 'do at: 1E3D8E7
  loc_1E4D8C6: Set var_90 = New FrmMeterReading
  loc_1E4D8D5: var_90.CAPTION = CVar(arg_10)
  loc_1E4D8DE: Call var_90.Show
  loc_1E4D8E4: GoTo loc_1E3D9A1
  loc_1E4D8F1: Loop Until (var_188 = "Facility Billing") 'do at: 1E3D91B
  loc_1E4D8FA: Set var_90 = New frmFacilityBillAdv
  loc_1E4D909: var_90.CAPTION = CVar(arg_10)
  loc_1E4D912: Call var_90.Show
  loc_1E4D918: GoTo loc_1E3D9A1
  loc_1E4D925: Loop Until (var_188 = "Facility Sundry Setting") 'do at: 1E3D94F
  loc_1E4D92E: Set var_90 = New FacilitySundry
  loc_1E4D93D: var_90.CAPTION = CVar(arg_10)
  loc_1E4D946: Call var_90.Show
  loc_1E4D94C: GoTo loc_1E3D9A1
  loc_1E4D959: Loop Until (var_188 = "Facility Bill Register") 'do at: 1E3D992
  loc_1E4D962: Set var_90 = New rFomRepView
  loc_1E4D970: var_90.GRepFormName = "FacilityBillReg"
  loc_1E4D980: var_90.CAPTION = CVar(arg_10)
  loc_1E4D989: Call var_90.Show
  loc_1E4D98F: GoTo loc_1E3D9A1
  loc_1E4D99B: Print 1, var_94
  loc_1E4D9A7: Close 1
  loc_1E4D9AF: Set var_90 = Nothing 
  loc_1E4D9BA: Set var_B0 = Nothing
  loc_1E4D9C4: Set var_B8 = Nothing
  loc_1E4D9CE: Set var_BC = Nothing
  loc_1E4D9D3: Exit Sub
End Sub

Public Sub Proc_165_3_EF1F5C(arg_C) 'EF1F5C
  'Data Table: 4E88A8
  Dim var_DC As Integer
  Dim var_A0 As String
  Dim unk_4E88AE As Connection15
  Dim var_C8 As Recordset15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  loc_EF1EB8: On Error Resume Next
  loc_EF1EC3: var_DC = 0
  loc_EF1F01: var_A0 = "Select [Option] From MenuHelp Where Code=" & CStr(arg_C) & " AND UserName='" & MemVar_1F950C8 & "' and compcode='" & MemVar_1F95128
  loc_EF1F11: unk_4E88AE.Execute var_A0 & "'", var_C4, -1
  loc_EF1F19: var_C8 = var_C8.Fields
  loc_EF1F21: var_DC = var_CC.Item(var_CC)
  loc_EF1F29: var_E0 = var_E0.Value
  loc_EF1F32: var_88 = CStr(var_F0)
  loc_EF1F58: Exit Sub
End Sub

Public Sub Proc_165_4_10300B4(arg_C) '10300B4
  'Data Table: 4E88A8
  Dim var_A8 As String
  Dim unk_4E88AE As Connection15
  Dim var_90 As Recordset15
  Dim var_D0 As Fields15
  Dim MemVar_1F951AC As String
  Dim MemVar_1F951B0 As String
  loc_102FEA8: On Error Resume Next
  loc_102FEE2: var_A8 = "Select OutletCode From MenuHelp Where Code=" & CStr(arg_C) & " AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_102FEF2: unk_4E88AE.Execute var_A8 & "'", var_CC, -1
  loc_102FEFD: Set var_90 = var_D0
  loc_102FF2D: If (var_90.RecordCount > 0) Then
  loc_102FF68:   var_88 = CStr(Trim(var_90.Fields.Item(0).Value))
  loc_102FFD9:   unk_4E88AE.Execute CStr("Select RestType,BackColor From Depart Where Code='" & Trim(var_90.Fields.Item(0).Value) & "'"), var_148, -1
  loc_102FFE4:   Set var_90 = var_14C
  loc_1030016:   If (var_90.RecordCount > 0) Then
  loc_1030046:     MemVar_1F951AC = CStr(var_90.Fields.Item(0).Value)
  loc_1030081:     MemVar_1F951B0 = CStr(var_90.Fields.Item(1).Value)
  loc_103008F:   End If
  loc_1030093:   DoEvents()
  loc_1030098: End If
  loc_10300A1: Set var_90 = Nothing
  loc_10300AB: Set var_8C = Nothing
  loc_10300B0: Exit Sub
End Sub

Public Sub Proc_165_5_104AE30(arg_C) '104AE30
  'Data Table: 4E88A8
  Dim var_F8 As Variant
  Dim unk_4E88AE As Connection15
  Dim var_8C As Recordset15
  Dim var_170 As Fields15
  Dim var_90 As Recordset15
  Dim MemVar_1F951AC As String
  Dim MemVar_1F951B0 As String
  loc_104ABFC: On Error Resume Next
  loc_104AC40: var_F8 = CVar("Select OutletCode From MenuHelp Where Code=" & CStr(arg_C) & " AND cOMPcODE='") & Trim(MemVar_1F95128) & "' AND UserName='" 
  loc_104AC6E: unk_4E88AE.Execute CStr(var_F8 & Trim(MemVar_1F950C8) & "'"), var_16C, -1
  loc_104AC79: Set var_8C = var_170
  loc_104ACB1: If (var_8C.RecordCount > 0) Then
  loc_104ACE1:   var_88 = CStr(var_8C.Fields.Item(0).Value)
  loc_104AD43:   unk_4E88AE.Execute CStr("Select RestType,BackColor From Depart Where Code='" & var_8C.Fields.Item(0).Value & "'"), var_F8, -1
  loc_104AD4E:   Set var_90 = var_17C
  loc_104AD7E:   If (var_90.RecordCount > 0) Then
  loc_104ADB9:     MemVar_1F951AC = CStr(Trim(var_90.Fields.Item(0).Value))
  loc_104AE03:     MemVar_1F951B0 = CStr(Trim(var_90.Fields.Item(1).Value))
  loc_104AE15:   End If
  loc_104AE17: End If
  loc_104AE20: Set var_8C = Nothing
  loc_104AE2A: Set var_90 = Nothing
  loc_104AE2F: Exit Sub
End Sub

Public Sub Proc_165_6_134E8B4
  'Data Table: 4E88A8
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_13C As String
  Dim unk_4E88AE As Connection15
  Dim var_F4 As Variant
  Dim var_138 As Recordset15
  Dim var_144 As Fields15
  Dim var_148 As Field20
  Dim var_114 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1D4 As Variant
  Dim var_234 As Variant
  Dim var_134 As Variant
  loc_134E108: On Error Resume Next
  loc_134E123: var_B4 = "Creating the ZIP at '" & MemVar_1F9509C 
  loc_134E148: If (MsgBox(var_B4 & " '", 4, var_F4, var_114, var_134) = 6) Then
  loc_134E161:   Set var_138 = MemVar_1F95248.Picture3
  loc_134E167:   MDIForm1.Picture3.Visible = True
  loc_134E179:   Call 0.Method_arg_94 (0)
  loc_134E18C:   Set var_138 = MemVar_1F95248.Label1
  loc_134E192:   MDIForm1.Label1.Caption = vbNullString
  loc_134E1A5:   Set var_138 = MemVar_1F95248.Label1
  loc_134E1AB:   MDIForm1.Label1.Refresh
  loc_134E1BC:   var_13C = "Backing Up Database [DATA] From Sql-Server " & vbCrLf
  loc_134E1C8:   Set var_138 = MemVar_1F95248.Label1
  loc_134E1CE:   MDIForm1.Label1.Caption = var_13C
  loc_134E1EE:   Set var_138 = MemVar_1F95248.Label1
  loc_134E1F4:   MDIForm1.Label1.Caption = "Please Wait..............." & vbCrLf
  loc_134E20A:   Set var_138 = MemVar_1F95248.Label1
  loc_134E210:   MDIForm1.Label1.Refresh
  loc_134E230:   unk_4E88AE.Execute "sp_dropdevice  'HOTELBKUP'", var_B4, -1
  loc_134E257:   var_B4 = (MemVar_1F9509C + "\HOTELBKUP")
  loc_134E25B:   var_D4 = "sp_addumpdevice  'Disk' , 'HOTELBKUP' ,'" & var_B4 
  loc_134E272:   unk_4E88AE.Execute CStr(var_D4 & "',2"), var_114, -1
  loc_134E2A2:   var_C4 = 0
  loc_134E2CF:   unk_4E88AE.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128 & "'", var_B4, -1
  loc_134E2D7:   var_138 = var_138.Fields
  loc_134E2DF:   var_C4 = var_144.Item(var_144)
  loc_134E2E7:   var_148 = var_148.Value
  loc_134E306:   unk_4E88AE.Execute CStr(var_D4 & var_D4 & " to HOTELBKUP"), "Backup Database ", var_134
  loc_134E331:   Set var_154 = New CGZipFiles 
  loc_134E358:   var_184 = Date
  loc_134E398:   var_164 = CVar("DATA-" & MemVar_1F95128) 'String
  loc_134E3BE:   var_174 = (1 + Format(Str(Year(Date)), "0000"))
  loc_134E3E5:   var_1D4 = (1 + Format(Str(Month(var_184)), "00"))
  loc_134E40C:   var_234 = (1 + Format(Str(Day(Date)), "00"))
  loc_134E411:   var_90 = CStr(var_234)
  loc_134E478:   var_154.ZipFileName = CStr(MemVar_1F9509C & "\" & CVar(MemVar_1F95130) & "(" & CVar(var_90) & ").ZIP")
  loc_134E494:   var_154.UpdatingZip = 0
  loc_134E4B5:   var_F4 = "Creating " & MemVar_1F9509C & "\" & "(" 
  loc_134E4BF:   var_114 = var_F4 & CVar(var_90) 
  loc_134E4CD:   var_164 = var_114 & CVar(").ZIP" & vbCrLf) 
  loc_134E4DE:   Set var_138 = MemVar_1F95248.Label1
  loc_134E4E4:   MDIForm1.Label1.Caption = CStr(var_164)
  loc_134E509:   Set var_138 = MemVar_1F95248.Label1
  loc_134E50F:   MDIForm1.Label1.Refresh
  loc_134E554:   If (var_154.MakeZipFile() <> 0) Then
  loc_134E578:     MsgBox(CVar(var_154.GetLastMessage()), 0, var_154.AddFile(CStr(MemVar_1F9509C & "\HOTELBKUP")), var_F4, var_114)
  loc_134E58B:   Else
  loc_134E599:     var_B4 = (MemVar_1F9509C + "\HOTELBKUP")
  loc_134E5A7:     Call 0.Method_arg_5C (CStr(CVar(var_154.GetLastMessage())), 0, 1, var_1D4, 1, var_174)
  loc_134E5CA:     var_B4 = MemVar_1F9509C & "\" 
  loc_134E5D4:     var_D4 = var_B4 & CVar(MemVar_1F95130) 
  loc_134E5F0:     var_134 = var_D4 & "(" & CVar(var_90) & ").ZIP Created Successfully" 
  loc_134E5F4:     MsgBox(var_134, 0, var_164, var_174, var_184)
  loc_134E60C:   End If
  loc_134E612:   Set var_154 = Nothing 
  loc_134E61D:   Set var_88 = Nothing
  loc_134E626:   Set var_88 = New CGZipFiles
  loc_134E637:   Set var_138 = MemVar_1F95248.Label1
  loc_134E63D:   MDIForm1.Label1.Caption = vbNullString
  loc_134E650:   Set var_138 = MemVar_1F95248.Label1
  loc_134E656:   MDIForm1.Label1.Refresh
  loc_134E661: Else
  loc_134E663: End If
  loc_134E67F: var_C4 = 0
  loc_134E6AC: unk_4E88AE.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128 & "'", var_B4, -1
  loc_134E6B4: var_138 = var_138.Fields
  loc_134E6BC: var_C4 = var_144.Item(var_144)
  loc_134E6C4: var_148 = var_148.Value
  loc_134E6E3: unk_4E88AE.Execute CStr(var_D4 & var_D4 & " WITH TRUNCATE_ONLY"), "BACKUP LOG ", var_134
  loc_134E723: var_C4 = 0
  loc_134E750: unk_4E88AE.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128 & "'", var_B4, -1
  loc_134E758: var_138 = var_138.Fields
  loc_134E760: var_C4 = var_144.Item(var_144)
  loc_134E768: var_148 = var_148.Value
  loc_134E787: unk_4E88AE.Execute CStr(var_D4 & var_D4 & " WITH NO_LOG"), "BACKUP LOG ", var_134
  loc_134E7C7: var_C4 = 0
  loc_134E7F4: unk_4E88AE.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F95128 & "'", var_B4, -1
  loc_134E7FC: var_138 = var_138.Fields
  loc_134E804: var_C4 = var_144.Item(var_144)
  loc_134E80C: var_148 = var_148.Value
  loc_134E82B: unk_4E88AE.Execute CStr(var_D4 & var_D4 & " , 0, TRUNCATEONLY)"), "DBCC SHRINKDATABASE( ", var_134
  loc_134E85E: Set var_138 = MemVar_1F95248.Picture3
  loc_134E864: MDIForm1.Picture3.Visible = False
  loc_134E876: Call 0.Method_arg_94 (&HFF, -1, var_150)
  loc_134E87D: Exit Sub
  loc_134E880: Proc_6_60_E63754(-1, var_150)
  loc_134E892: Set var_138 = MemVar_1F95248.Picture3
  loc_134E898: MDIForm1.Picture3.Visible = False
  loc_134E8AA: Call 0.Method_arg_94 (&HFF)
  loc_134E8B1: Exit Sub
End Sub
