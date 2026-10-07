
Public Sub Proc_233_0_EDA0F8
  'Data Table: 430AD8
  Dim var_90 As Long
  Dim var_86 As Integer
  loc_EDA05C: On Error Goto loc_EDA0B5
  loc_EDA06D: var_94 = var_8C
  loc_EDA08B: var_8C = var_98
  loc_EDA091: var_90 = InternetGetConnectedStateEx(var_90, var_94)
  loc_EDA0A4: If (var_90 = 1) Then
  loc_EDA0A9:   var_86 = &HFF
  loc_EDA0AF: Else
  loc_EDA0B1:   var_86 = 0
  loc_EDA0B4: End If
  loc_EDA0B4: Result var_86 End Sub 'Integer
  loc_EDA0B5: ' Referenced from: EDA05C
  loc_EDA0BD: Set var_A0 = Err()
  loc_EDA0C3: Call 0.Method_arg_2C (var_94, var_86, var_90, StrConv(var_98, vbUnicode))
  loc_EDA0E4: MsgBox(CVar(var_94), &H10, "Wininet.dll", var_F0, var_110)
  loc_EDA0F7: Result var_94 End Sub 'Integer
End Sub

Public Sub Proc_233_1_EBBCD0(arg_C) 'EBBCD0
  'Data Table: 430AD8
  Dim var_90 As Long
  Dim var_94 As Long
  Dim var_98 As Long
  loc_EBBC57: var_90 = gethostbyname(arg_C & vbNullString)
  loc_EBBC6A: If (var_90 <> 0) Then
  loc_EBBC70:   var_94 = var_90
  loc_EBBC7C:   var_98 = (var_90 + &HC)
  loc_EBBC8A:   CopyMemory(var_94, var_94, 4)
  loc_EBBC9B:   CopyMemory(var_98, var_98, 4)
  loc_EBBCAC:   CopyMemory(var_9C, var_98, 4)
  loc_EBBCBD:   CopyMemory(var_A0, var_9C, 4)
  loc_EBBCCB:   var_88 = Proc_233_2_E17A1C(var_A0, var_98, var_94)
  loc_EBBCCE: End If
  loc_EBBCCE: Exit Sub
  loc_EBBCCF: Result var_90 End Sub 'Integer
End Sub

Public Sub Proc_233_2_E17A1C(arg_C) 'E17A1C
  'Data Table: 430AD8
  loc_E17A18: var_88 = Proc_233_3_E5E6C4(inet_ntoa(arg_C))
  loc_E17A1B: Exit Sub
End Sub

Public Sub Proc_233_3_E5E6C4(arg_C) 'E5E6C4
  'Data Table: 430AD8
  loc_E5E6B0: lstrcpy(String$(lstrlen(arg_C), 0), arg_C)
  loc_E5E6C1: Exit Sub
End Sub

Public Sub Proc_233_4_E63B7C(arg_C) 'E63B7C
  'Data Table: 430AD8
  loc_E63B79: Result (GetRTTAndHopCount(inet_addr(arg_C), var_90, &H14, var_94, inet_addr(arg_C)) = 1) End Sub 'Integer
End Sub

Public Sub Proc_233_5_11B7BF4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '11B7BF4
  'Data Table: 430AD8
  Dim var_C8 As Variant
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_430AEB As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Fields15
  Dim var_CC As Field20
  Dim arg_18 As Integer
  Dim var_EC As String
  Dim var_DC As Variant
  Dim var_230 As Variant
  Dim var_2F0 As Variant
  Dim var_3B0 As Variant
  Dim var_500 As Variant
  Dim var_620 As Variant
  loc_11B7894: On Error Resume Next
  loc_11B789F: var_C8 = 0
  loc_11B78BC: var_8C = "Select IsNull(Max(SNo),0)+1 From DBSendSMS With (NoLock) Where DocId='" & arg_C
  loc_11B78CC: unk_430AEB.Execute var_8C & "'", var_B0, -1
  loc_11B78D4: var_B4 = var_B4.Fields
  loc_11B78DC: var_C8 = var_B8.Item(var_B8)
  loc_11B78E4: var_CC = var_CC.Value
  loc_11B78ED: arg_18 = CInt(var_DC)
  loc_11B7927: var_90 = "insert into DBSendSMS (DocId,VType,VDate,VNo,SNo, " & "SubCode,Mobile1,Mobile2," & "TxtMsg,SMSDt,SMSTm,DelvDt,DelvTm,SenderName,PartyName,"
  loc_11B7943: var_EC = var_90 & "U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,RoomNo,BillAmount,SendTF,Comp_Code,MsgType) " & "values  ('" & arg_C & "','"
  loc_11B795F: Proc_6_7_F26918(var_B0, MemVar_1F950EC, CVar(var_EC & arg_10 & "',"))
  loc_11B79C7: var_230 = arg_18 & var_B0 & "," & CVar(arg_14) & "," & CVar(arg_18) & ",'" & CVar(arg_1C) & "','" & CVar(arg_20) & "','" & CVar(arg_24) 
  loc_11B79DF: Proc_6_17_EAAE40(var_270, arg_28)
  loc_11B79FF: Proc_6_7_F26918(var_2C0, MemVar_1F950EC)
  loc_11B7A10: var_2F0 = var_230 & "'," & var_270 & "," & var_2C0 & ",'" 
  loc_11B7A4F: Proc_6_7_F26918(var_380, MemVar_1F950EC, 1 & Format(Now, "hh:mm") & "',")
  loc_11B7A60: var_3B0 = 1 & var_380 & ",'" 
  loc_11B7AD2: var_500 = 1 & Format(Now, "hh:mm") & "','" & CVar(arg_2C) & "','" & CVar(arg_30) & "'," & "'A','" & CVar(MemVar_1F950C8) & "',GetDate(),'" 
  loc_11B7B29: var_620 = var_500 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "','" & CVar(arg_34) & "'," & CVar(arg_38) & ",'FALSE','" & CVar(MemVar_1F95128) 
  loc_11B7BE1: unk_430AEB.Execute CStr(var_620 & "','" & CVar(arg_3C) & "')"), var_B0, -1
  loc_11B7BEE: Exit Sub
  loc_11B7BF1: Exit Sub
  loc_11B7BF2: DOC
End Sub

Public Sub Proc_233_6_1344A7C
  'Data Table: 430AD8
  Dim var_C0 As String
  Dim unk_430AEB As Connection15
  Dim var_94 As Recordset15
  Dim var_98 As Recordset15
  Dim var_F4 As Fields15
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_9C As Recordset15
  Dim var_170 As Variant
  Dim var_9E As Integer
  Dim var_1C0 As Variant
  Dim var_1E4 As Variant
  loc_13442F0: On Error Resume Next
  loc_1344316: var_C0 = -1 & Proc_6_38_E69628(arg_24, "Select MsgType from DBSENDSMS With (NoLock) Where ISNULL(SENDTF,'')<>'TRUE' And DocId='", var_F0)
  loc_1344339: unk_430AEB.Execute var_C0 & "' And IsNull(SNo,0)=" & CStr(arg_28) & vbNullString, var_F4, 
  loc_1344344: Set var_94 = var_F4
  loc_1344372: If (var_94.RecordCount > 0) Then
  loc_134438D:   unk_430AEB.Execute "Select * from SMSEnviro With (NoLock)", var_F0, -1
  loc_1344398:   Set var_98 = var_F4
  loc_13443C9:   If ((var_98.RecordCount > 0) And (var_98.EOF = 0)) Then
  loc_13443F6:     Me(8) = Proc_6_38_E69628(CVar(var_98.Fields.Item("SmsCenterUserName")))
  loc_134442C:     Me(12) = Proc_6_38_E69628(CVar(var_98.Fields.Item("SmsCenterPassword")))
  loc_1344462:     Me(16) = Proc_6_38_E69628(CVar(var_98.Fields.Item("SmsDisplayName")))
  loc_134447F:     var_F4 = var_98.Fields
  loc_1344498:     Me(20) = Proc_6_38_E69628(CVar(var_F4.Item("SmsURL")))
  loc_13444A7:   Else
  loc_13444BE:     var_F0 = "Plz Set SMS Enviro Setting ........"
  loc_13444C4:     MsgBox(var_F0, 0, var_110, var_130, var_150)
  loc_13444D6:     Result var_F4 End Sub 'Integer
  loc_13444D7:   End If
  loc_13444F8:   Proc_6_17_EAAE40(var_F0, MemVar_1F95078, "Select MobileNo from EmailSMSForward With (NoLock) Where LogSite_Code=")
  loc_1344535:   var_160 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("MsgType")), var_1C0 & var_F0 & " And Len(MobileNo)>=10 And IsNull(TxtMsg,'')='' And Type=")) 'String
  loc_134453B:   Proc_6_17_EAAE40(var_170, var_160)
  loc_1344543:   var_180 = -1 & var_170 
  loc_134455A:   unk_430AEB.Execute CStr(var_180 & " And Type Not In ('Check In','Check Out','Outlet Bill')"), var_1C4, 
  loc_1344565:   Set var_9C = var_1C4
  loc_134458F:   var_F8 = var_9C.RecordCount
  loc_134459D:   If (var_F8 > 0) Then
  loc_13445FA:     var_170 = (IIf((var_A4 <> vbNullString), ",", vbNullString) + CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("MobileNo")))))
  loc_13445FF:     var_A4 = CStr(var_170)
  loc_1344616:   End If
  loc_1344640:   var_A8 = Proc_6_38_E69628(CVar(var_98.Fields.Item("SmsURL")))
  loc_134467A:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("TUser")))
  loc_13446B7:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("SmsCenterUserName")))
  loc_13446F4:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("TPassword")))
  loc_1344731:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("SmsCenterPassword")))
  loc_134476E:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("TFromSend")))
  loc_13447AB:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("SmsDisplayName")))
  loc_13447E8:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("TPhNo")))
  loc_1344811:   var_A8 = var_A8 & Proc_6_38_E69628(arg_14) & var_A4
  loc_134484C:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_98.Fields.Item("TMessage")))
  loc_134486E:   var_A8 = var_A8 & Proc_6_38_E69628(arg_1C)
  loc_1344888:   var_F4 = var_98.Fields
  loc_13448A5:   var_A8 = var_A8 & Proc_6_38_E69628(CVar(var_F4.Item("TExtra")))
  loc_13448BB:   If (Proc_233_0_EDA0F8() = &HFF) Then
  loc_13448BE:     ' Referenced from: 13448DB
  loc_13448CF:     If CBool(MemVar_431388.Busy) Then
  loc_13448D4:       DoEvents()
  loc_13448DB:       GoTo loc_13448BE
  loc_13448DE:     End If
  loc_13448EC:     Call MemVar_431388.NAVIGATE
  loc_13448F2:     ' Referenced from: 134490F
  loc_13448F9:     var_F0 = MemVar_431388.Busy
  loc_1344903:     If CBool(var_F0) Then
  loc_1344908:       DoEvents()
  loc_134490F:       GoTo loc_13448F2
  loc_1344912:     End If
  loc_134491D:     unk_430AEB.BeginTrans var_F8
  loc_1344926:     var_9E = &HFF
  loc_1344936:     Proc_6_7_F26918(var_F0, MemVar_1F950EC)
  loc_13449B3:     var_1E4 = "Update DBSENDSMS Set DelvDT=" & var_F0 & ",DelvTM='" & Format(Now, "HH:MM") & "',SenderName='" & "Analysis" & "',SendTF='TRUE' Where DocId='" 
  loc_13449E7:     unk_430AEB.Execute CStr(var_1E4 & CVar(Proc_6_38_E69628(arg_24, 1, 1)) & "' And IsNull(SNo,0)=" & CVar(arg_28) & vbNullString), var_294, -1
  loc_1344A21:     unk_430AEB.CommitTrans
  loc_1344A2A:     var_9E = 0
  loc_1344A2D:   End If
  loc_1344A2F: End If
  loc_1344A3F: Set var_94 = Nothing
  loc_1344A49: Set var_98 = Nothing
  loc_1344A53: Set var_9C = Nothing
  loc_1344A58: Result &HFF End Sub 'Integer
  loc_1344A61: If (var_9E = &HFF) Then
  loc_1344A6C:   unk_430AEB.RollbackTrans
  loc_1344A71: End If
  loc_1344A73: Proc_6_60_E63754(var_9E, var_F4)
  loc_1344A7A: Result var_9E End Sub 'Integer
End Sub

Public Sub Proc_233_7_EE0400(arg_C) 'EE0400
  'Data Table: 430AD8
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE0374: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE0393: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE03B6:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE03D2:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE03DA:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE03DF:   var_8C = CStr(var_108)
  loc_EE03F3: Next var_B8 'Integer
  loc_EE03FB: var_88 = var_8C
  loc_EE03FE: Exit Sub
End Sub

Public Sub Proc_233_8_EEA708(arg_C) 'EEA708
  'Data Table: 430AD8
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EEA653: Randomize(var_B0)
  loc_EEA674: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EEA684: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EEA69D: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EEA6D9:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EEA6E1:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EEA6E6:   var_8C = CStr(var_10C)
  loc_EEA6FA: Next var_B8 'Integer
  loc_EEA702: var_88 = var_8C
  loc_EEA705: Exit Sub
End Sub

Public Sub Proc_233_9_13A013C
  'Data Table: 430AD8
  Dim var_94 As Double
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim unk_430AEB As Connection15
  Dim var_8C As Recordset15
  Dim var_17C As Fields15
  Dim var_C8 As Variant
  Dim var_128 As Variant
  Dim var_86 As Integer
  Dim var_19C As Fields15
  Dim var_178 As Variant
  Dim var_1E8 As Variant
  loc_139F88E: var_94 = CDate(Proc_6_14_EF402C())
  loc_139F8A1: var_D8 = "Select JS.*,JD.Job_Id,JD.JobName From JobSchedule JS Inner Join JobScheduledDetail JD On JS.Schedule_Id=JD.Schedule_Id Where JS.LogSite_Code="
  loc_139F8B1: Proc_6_17_EAAE40(var_C8, MemVar_1F95078, var_D8, var_178)
  loc_139F8B9: var_E8 = -1 & var_C8 
  loc_139F8D1: Proc_6_7_F26918(var_128, var_94, var_E8 & " And ")
  loc_139F8D9: var_138 = var_17C & var_128 
  loc_139F8F0: unk_430AEB.Execute CStr(var_138 & " Between JS.ScheduleStartDate And JS.ScheduleEndDate And JS.ScheduleEnabled=1"), var_94, 
  loc_139F929: If (var_17C.RecordCount = 0) Then
  loc_139F931:   Set var_8C = Nothing
  loc_139F934:   Result  End Sub 'Integer
  loc_139F935: End If
  loc_139F938: var_B8 = var_94
  loc_139F940: Proc_6_10_E8EAAC(var_C8)
  loc_139F949: var_A0 = CStr(var_C8)
  loc_139F95A: Proc_6_11_F0B3DC(var_C8, var_94)
  loc_139F963: var_98 = CStr(var_C8)
  loc_139F974: Proc_6_12_E8DE4C(var_C8, var_94)
  loc_139F97D: var_9C = CStr(var_C8)
  loc_139F983: ' Referenced from: 13A0138
  loc_139F992: If Not(var_8C.EOF) Then
  loc_139F9BF:   var_198 = var_8C.Fields.Item("ScheduleType").Value 'Variant
  loc_139F9D5:   If (var_198 = "One Time") Then
  loc_139F9F7:     var_C8 = CVar(var_8C.Fields.Item("OneTimeOccur")) 'Address
  loc_139F9FE:     Proc_6_10_E8EAAC(var_E8, var_C8)
  loc_139FA1A:     If (CDate(var_E8) = CDate(var_A0)) Then
  loc_139FA32:       var_B8 = var_94
  loc_139FA3A:       Proc_6_7_F26918(var_C8, var_B8, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_178)
  loc_139FA42:       var_E8 = -1 & var_C8 
  loc_139FA75:       Proc_6_17_EAAE40(var_138, CVar(var_8C.Fields.Item("Job_Id")), var_E8 & " Where Job_Id=")
  loc_139FA8B:       unk_430AEB.Execute CStr(var_19C & var_138), var_B8, 
  loc_139FAAD:       var_86 = &HFF
  loc_139FAB0:     End If
  loc_139FAB3:   Else
  loc_139FABE:     If (var_198 = "Recurring") Then
  loc_139FAEB:       var_1AC = var_8C.Fields.Item("FreqOccurs").Value 'Variant
  loc_139FB01:       If (var_1AC = "Daily") Then
  loc_139FB2F:         var_E8 = CDate(CDate(var_98))
  loc_139FB5A:         var_19C = var_8C.Fields
  loc_139FB92:         If ((DateDiff("d", CVar(var_8C.Fields.Item("ScheduleStartDate")), var_E8, 1, 1) Mod var_19C.Item("FreqRecurs").Value) = 0) Then
  loc_139FBD1:           If (var_8C.Fields.Item("DFreq").Value = 0) Then
  loc_139FBF3:             var_C8 = CVar(var_8C.Fields.Item("DFreqOccursOnce")) 'Address
  loc_139FBFA:             Proc_6_12_E8DE4C(var_E8, var_C8)
  loc_139FC16:             If (CDate(var_E8) = CDate(var_9C)) Then
  loc_139FC36:               Proc_6_7_F26918(var_C8, var_94, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_178)
  loc_139FC3E:               var_E8 = -1 & var_C8 
  loc_139FC47:               var_108 = var_E8 & " Where Job_Id=" 
  loc_139FC71:               Proc_6_17_EAAE40(var_138, CVar(var_8C.Fields.Item("Job_Id")), var_108)
  loc_139FC87:               unk_430AEB.Execute CStr(var_19C & var_138), var_86, 
  loc_139FCA9:               var_86 = &HFF
  loc_139FCAC:             End If
  loc_139FCAF:           Else
  loc_139FCEB:             If (var_8C.Fields.Item("DFreq").Value = 1) Then
  loc_139FD2A:               If (var_8C.Fields.Item("DFreqOccursType").Value = "hour(s)") Then
  loc_139FD70:                 Proc_6_12_E8DE4C(var_108, CVar(var_8C.Fields.Item("DFreqOccursStartTime")))
  loc_139FE01:                 Proc_6_12_E8DE4C(var_210, CVar(var_8C.Fields.Item("DFreqOccursStartTime")))
  loc_139FE0F:                 var_138 = (DatePart("h", var_9C, 1, 1) - DatePart("h", var_108, 1, 1))
  loc_139FE21:                 var_1E8 = (Int((var_138 / var_8C.Fields.Item("DFreqOccursEvery").Value)) * var_8C.Fields.Item("DFreqOccursEvery").Value)
  loc_139FE38:                 Proc_6_12_E8DE4C(var_230, DateAdd("h", CSng(var_1E8), var_210))
  loc_139FE41:                 var_A4 = CStr(var_230)
  loc_139FE6D:               Else
  loc_139FEA9:                 If (var_8C.Fields.Item("DFreqOccursType").Value = "minute(s)") Then
  loc_139FEE8:                   var_E8 = CVar(var_8C.Fields.Item("DFreqOccursStartTime")) 'Address
  loc_139FEEF:                   Proc_6_12_E8DE4C(var_108, var_E8)
  loc_139FF07:                   var_128 = DatePart("n", var_108, 1, 1)
  loc_139FF80:                   Proc_6_12_E8DE4C(var_210, CVar(var_8C.Fields.Item("DFreqOccursStartTime")))
  loc_139FF8E:                   var_138 = (DatePart("n", var_9C, 1, 1) - var_128)
  loc_139FF95:                   var_178 = (var_138 / var_8C.Fields.Item("DFreqOccursEvery").Value)
  loc_139FFB7:                   Proc_6_12_E8DE4C(var_230, DateAdd("n", CSng((Int(var_178) * var_8C.Fields.Item("DFreqOccursEvery").Value)), var_210))
  loc_139FFC0:                   var_A4 = CStr(var_230)
  loc_139FFE9:                 End If
  loc_139FFE9:               End If
  loc_13A0008:               var_C8 = CVar(var_8C.Fields.Item("DFreqOccursStartTime")) 'Address
  loc_13A000F:               Proc_6_12_E8DE4C(var_E8, var_C8)
  loc_13A0023:               var_19C = var_8C.Fields
  loc_13A003A:               Proc_6_12_E8DE4C(var_128, CVar(var_19C.Item("DFreqOccursEndTime")))
  loc_13A0078:               If (((CDate(var_A4) >= CDate(var_E8)) And (CDate(var_A4) <= CDate(var_128))) And (CDate(var_A4) = CDate(var_9C))) Then
  loc_13A0098:                 Proc_6_7_F26918(var_C8, var_94, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_178)
  loc_13A00A0:                 var_E8 = -1 & var_C8 
  loc_13A00D3:                 Proc_6_17_EAAE40(var_138, CVar(var_8C.Fields.Item("Job_Id")), var_E8 & " Where Job_Id=")
  loc_13A00E9:                 unk_430AEB.Execute CStr(var_19C & var_138), var_86, 
  loc_13A010B:                 var_86 = &HFF
  loc_13A010E:               End If
  loc_13A010E:             End If
  loc_13A010E:           End If
  loc_13A010E:         End If
  loc_13A0111:       Else
  loc_13A011C:         If (var_1AC = "Weekly") Then
  loc_13A011F:           GoTo loc_13A0130
  loc_13A0122:         End If
  loc_13A012D:         If (var_1AC = "Monthly") Then
  loc_13A0130:           ' Referenced from:     13A011F
  loc_13A0130:         End If
  loc_13A0130:       End If
  loc_13A0130:     End If
  loc_13A0130:   End If
  loc_13A0133:   var_8C.MoveNext
  loc_13A0138:   GoTo loc_139F983
  loc_13A013B: End If
  loc_13A013B: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_233_10_117EF68
  'Data Table: 430AD8
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_A8 As Variant
  Dim var_EC As Variant
  loc_117EBAE: unk_430AEB.Execute "Select * from JOBScheduledDetail Where JobEnabled=1 And JobScheduledOn Is Not Null", var_A8, -1
  loc_117EBB9: Set var_88 = var_AC
  loc_117EBC2: ' Referenced from: 117EF61
  loc_117EBD1: If Not(var_88.EOF) Then
  loc_117EC0F:   If (Len(Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")))) >= &HA) Then
  loc_117EC26:     var_AC = var_88.Fields
  loc_117EC5B:     If (InStr(var_AC, Proc_6_38_E69628(CVar(var_AC.Item("ScheduledJob")), 1), "<FOM Sale&Collection>", 0) <> 0) Then
  loc_117EC7D:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EC93:       Proc_233_11_1A17BC8("FOM Sale&Collection")
  loc_117ECA5:     End If
  loc_117ECC9:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117ECEE:     If (InStr(Proc_6_38_E69628(var_A8), Proc_6_38_E69628(var_A8, 1), "<POS Sale&Collection>", 0) <> 0) Then
  loc_117ED10:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117ED26:       Proc_233_11_1A17BC8("POS Sale&Collection")
  loc_117ED38:     End If
  loc_117ED5C:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117ED81:     If (InStr(Proc_6_38_E69628(var_A8), Proc_6_38_E69628(var_A8, 1), "<BANQ Sale&Collection>", 0) <> 0) Then
  loc_117EDA3:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EDB9:       Proc_233_11_1A17BC8("BANQ Sale&Collection")
  loc_117EDCB:     End If
  loc_117EDEF:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117EE14:     If (InStr(Proc_6_38_E69628(var_A8), Proc_6_38_E69628(var_A8, 1), "<POS&BANQ Sale&Collection>", 0) <> 0) Then
  loc_117EE36:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EE4C:       Proc_233_11_1A17BC8("POS&BANQ Sale&Collection")
  loc_117EE5E:     End If
  loc_117EE82:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117EEA7:     If (InStr(Proc_6_38_E69628(var_A8), Proc_6_38_E69628(var_A8, 1), "<Total Collection>", 0) <> 0) Then
  loc_117EEC9:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EEDF:       Proc_233_11_1A17BC8("Total Collection")
  loc_117EEF1:     End If
  loc_117EEF1:   End If
  loc_117EF22:   var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EF29:   Proc_6_17_EAAE40(var_CC, var_A8, "Update JOBScheduledDetail Set JobEnabled=0,JobScheduledOn=Null Where Job_Id=", var_10C)
  loc_117EF31:   var_EC = -1 & var_CC 
  loc_117EF3F:   unk_430AEB.Execute CStr(var_EC), var_110, Proc_6_38_E69628(var_A8)
  loc_117EF5C:   var_88.MoveNext
  loc_117EF61:   GoTo loc_117EBC2
  loc_117EF64: End If
  loc_117EF64: Exit Sub
End Sub

Public Sub Proc_233_11_1A17BC8(arg_C, arg_10) '1A17BC8
  'Data Table: 430AD8
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_E4 As String
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_108 As Variant
  Dim var_C0 As Variant
  Dim var_15A As Integer
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_9C As Double
  Dim var_104 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_250 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_110 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2D0 As Variant
  Dim var_2F0 As String
  Dim var_320 As Variant
  Dim var_330 As String
  Dim var_360 As Variant
  Dim var_380 As Variant
  Dim var_3A0 As Variant
  Dim var_3C4 As String
  Dim var_118 As Recordset15
  Dim var_3E8 As Fields15
  Dim var_3FC As Field20
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_2C0 As Variant
  Dim var_3E4 As Variant
  Dim var_210 As Variant
  Dim var_450 As String
  Dim var_454 As String
  Dim var_164 As Recordset15
  Dim var_160 As Recordset15
  Dim var_16A As Integer
  Dim unk_430C03 As Connection15
  loc_1A1471D: Proc_6_17_EAAE40(var_C0, arg_10, "Select * from JOBScheduledDetail Where Job_Id=")
  loc_1A14733: unk_430AEB.Execute CStr(var_104 & var_C0), -1, var_108
  loc_1A1473E: Set var_88 = var_108
  loc_1A14764: If (var_88.RecordCount > 0) Then
  loc_1A1478F:   var_8C = Proc_6_38_E69628(CVar(var_88.Fields.Item("MsgHeader")))
  loc_1A147C0:   var_90 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MsgFooter")))
  loc_1A147F1:   var_94 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")))
  loc_1A14834:   var_114 = var_88.Fields
  loc_1A1483C:   var_118 = var_114.Item("JobScheduledOn")
  loc_1A1485A:   var_104 = IIf(IsNull(CVar(var_88.Fields.Item("JobScheduledOn"))), MemVar_1F950EC, CVar(var_118))
  loc_1A14884:   var_9C = CDate(Format(var_104, "dd/MMM/yyyy"))
  loc_1A148AC:   var_108 = var_88.Fields
  loc_1A148B4:   var_110 = var_108.Item("TemplateId")
  loc_1A148BC:   var_C0 = CVar(var_110) 'Address
  loc_1A148C5:   var_A0 = Proc_6_38_E69628(var_C0, var_9C, 1)
  loc_1A148D1: Else
  loc_1A148D6:   Set var_88 = Nothing
  loc_1A148D9:   Exit Sub
  loc_1A148DA: End If
  loc_1A148F7: Proc_6_17_EAAE40(var_C0, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_104)
  loc_1A148FF: var_E0 = -1 & var_C0 
  loc_1A1490D: unk_430AEB.Execute CStr(CVar(var_118)), var_108, 1
  loc_1A14918: Set var_160 = var_108
  loc_1A1492D: Me(60) = arg_C
  loc_1A14935: var_170 = arg_C
  loc_1A14940: If (var_170 = "FOM Sale&Collection") Then
  loc_1A1495E:   var_104 = CVar(var_168 & var_8C & "\n" & "DSR: (FOM) ") 'String
  loc_1A14970:   var_C0 = "dd/MMM/yyyy"
  loc_1A149AE:   var_250 = CVar(CStr(1 & Format(var_9C, var_C0) & "\n") & "Room Charge.: ") 'String
  loc_1A149CD:   var_D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate="
  loc_1A149DD:   Proc_6_7_F26918(var_C0, var_9C, "dd/MMM/yyyy", var_210, -1, var_108, var_110)
  loc_1A149FC:   var_138 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Room Charge' And Code<>'"
  loc_1A14A1E:   var_1D0 = 0 & var_C0 & " And RestCode='" & CVar(MemVar_1F95078) & var_138 & CVar(MemVar_1F95078) & "EXTB') And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_1A14A35:   unk_430AEB.Execute CStr(var_1D0 & "'"), var_114, var_230
  loc_1A14A3D:   var_250 = var_108.Fields
  loc_1A14A45:   var_104 = var_110.Item(1)
  loc_1A14A4D:   var_15A = var_114.Value
  loc_1A14A58:   Proc_6_50_EF6120(var_240)
  loc_1A14A92:   var_2D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate<="
  loc_1A14AA2:   Proc_6_7_F26918(var_2C0, var_9C, var_2D0, var_3E4, -1, var_118)
  loc_1A14AC1:   var_330 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Room Charge' And Code<>'"
  loc_1A14AD9:   var_380 = var_3E8 & var_2C0 & " And RestCode='" & CVar(MemVar_1F95078) & var_330 & CVar(MemVar_1F95078) & "EXTB') And LogSite_Code='" 
  loc_1A14AFA:   unk_430AEB.Execute CStr(var_380 & CVar(MemVar_1F95078) & "' And SettleDate Is Null"), 0, var_3FC
  loc_1A14B0A:    = var_3E8.Item(var_230 & var_240 & "\n" & " UnBilled: ")
  loc_1A14B12:    = var_3FC.Value
  loc_1A14B1D:   Proc_6_50_EF6120(var_41C)
  loc_1A14BB1:   var_D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate="
  loc_1A14BC1:   Proc_6_7_F26918(var_C0, var_9C, "dd/MMM/yyyy", var_210, -1, var_108)
  loc_1A14BF8:   var_1B0 = var_110 & var_C0 & " And RestCode='" & CVar(MemVar_1F95078) & "FOM' And PayCode='" & CVar(MemVar_1F95078) & "EXTB' And LogSite_Code='" 
  loc_1A14C02:   var_1D0 = var_1B0 & CVar(MemVar_1F95078) 
  loc_1A14C19:   unk_430AEB.Execute CStr(var_1D0 & "'"), 0, var_114
  loc_1A14C29:    = var_110.Item(CVar(CStr(var_118.Fields & var_41C & "\n") & "Extra Bed.: "))
  loc_1A14C31:    = var_114.Value
  loc_1A14C3C:   Proc_6_50_EF6120(var_240)
  loc_1A14C4D:   var_280 = var_108.Fields & var_240 & "\n" 
  loc_1A14C76:   var_2D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate<="
  loc_1A14C86:   Proc_6_7_F26918(var_2C0, var_9C, var_2D0, var_3E4, -1, var_118)
  loc_1A14CB4:   var_360 = var_3E8 & var_2C0 & " And RestCode='" & CVar(MemVar_1F95078) & "FOM' And PayCode='" & CVar(MemVar_1F95078) 
  loc_1A14CC7:   var_3A0 = var_360 & "EXTB' And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_1A14CDE:   unk_430AEB.Execute CStr(var_3A0 & "' And SettleDate Is Null"), 0, var_3FC
  loc_1A14CEE:    = var_3E8.Item(var_280 & " UnBilled: ")
  loc_1A14CF6:    = var_3FC.Value
  loc_1A14D01:   Proc_6_50_EF6120(var_41C)
  loc_1A14D95:   var_D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate="
  loc_1A14DA5:   Proc_6_7_F26918(var_C0, var_9C, "dd/MMM/yyyy", var_1D0, -1, var_108)
  loc_1A14DC4:   var_138 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Meal Charge') And LogSite_Code='"
  loc_1A14DC9:   var_158 = var_110 & var_C0 & " And RestCode='" & CVar(MemVar_1F95078) & var_138 
  loc_1A14DEA:   unk_430AEB.Execute CStr(var_158 & CVar(MemVar_1F95078) & "'"), 0, var_114
  loc_1A14DF2:   var_1F0 = var_108.Fields
  loc_1A14DFA:    = var_110.Item(CVar(CStr(var_118.Fields & var_41C & "\n") & "Meal Charge.: "))
  loc_1A14E02:    = var_114.Value
  loc_1A14E0D:   Proc_6_50_EF6120(var_210)
  loc_1A14E47:   var_290 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate<="
  loc_1A14E57:   Proc_6_7_F26918(var_280, var_9C, " UnBilled: ", var_360, -1, var_118)
  loc_1A14E68:   var_2C0 = var_3E8 & var_280 & " And RestCode='" 
  loc_1A14E76:   var_2F0 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Meal Charge') And LogSite_Code='"
  loc_1A14E85:   var_320 = var_2C0 & CVar(MemVar_1F95078) & var_2F0 & CVar(MemVar_1F95078) 
  loc_1A14E9C:   unk_430AEB.Execute CStr(var_320 & "' And SettleDate Is Null"), 0, var_3FC
  loc_1A14EAC:    = var_3E8.Item(var_1F0 & var_210 & "\n" & " UnBilled: ")
  loc_1A14EB4:    = var_3FC.Value
  loc_1A14EBF:   Proc_6_50_EF6120(var_3A0)
  loc_1A14F52:   var_E4 = "SELECT ISNULL(SUM(Q.PAY1),0) As PAY1 From (SELECT ISNULL(SUM(PC.AmtCr)-SUM(PC.AmtDr),0) PAY1,PC.PayType FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F95078
  loc_1A14F59:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F95078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A14F67:   Proc_6_7_F26918(var_C0, var_9C, var_E0, var_1D0, -1, var_108)
  loc_1A14F73:   var_D0 = " And PC.PAYTYPE IN ('Cash') Group by PC.PayType Having (sum(PC.AmtCr)-sum(PC.AmtDr))<>0 Union SELECT IsNull(Sum(E.Amount),0) PAY1,'Cash' as PayType FROM ExpSheet E WHERE E.VDate="
  loc_1A14F87:   Proc_6_7_F26918(var_158, var_9C, var_110 & var_C0 & "dd/MMM/yyyy", 0)
  loc_1A14F98:   var_1B0 = var_114 & var_158 & " And E.VTYPE='HTSAL' And E.Amount>0)Q Where Q.PayType IN ('Cash')" 
  loc_1A14FA6:   unk_430AEB.Execute CStr(var_1B0), var_1F0, CVar(CStr(var_118.Fields & var_3A0 & "\n") & "Cash.: ")
  loc_1A14FAE:    = var_108.Fields
  loc_1A14FB6:    = var_110.Item()
  loc_1A14FBE:    = var_114.Value
  loc_1A14FC9:   Proc_6_50_EF6120(var_210)
  loc_1A1503C:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F95078
  loc_1A15043:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F95078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A15051:   Proc_6_7_F26918(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A1505D:   var_D0 = " And PC.PAYTYPE IN ('Cheque','Credit Card','Cash Card') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A15070:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A15080:    = var_110.Item(CVar(CStr(var_1F0 & var_210 & "\n") & "Card.: "))
  loc_1A15088:    = var_114.Value
  loc_1A15093:   Proc_6_50_EF6120(var_1B0)
  loc_1A15100:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr)-SUM(PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F95078
  loc_1A15107:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F95078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A15115:   Proc_6_7_F26918(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A15121:   var_D0 = " And PC.PAYTYPE IN ('Company','Member') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A15134:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A15144:    = var_110.Item(CVar(CStr(var_108.Fields & var_1B0 & "\n") & "BTC.: "))
  loc_1A1514C:    = var_114.Value
  loc_1A15157:   Proc_6_50_EF6120(var_1B0)
  loc_1A151C4:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F95078
  loc_1A151CB:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F95078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A151D9:   Proc_6_7_F26918(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A151E5:   var_D0 = " And PC.PAYTYPE IN ('UPI') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A151F8:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A15208:    = var_110.Item(CVar(CStr(var_108.Fields & var_1B0 & "\n") & "UPI.: "))
  loc_1A15210:    = var_114.Value
  loc_1A1521B:   Proc_6_50_EF6120(var_1B0)
  loc_1A15288:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F95078
  loc_1A1528F:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F95078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A1529D:   Proc_6_7_F26918(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A152A9:   var_D0 = " And PC.PAYTYPE IN ('Other') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A152BC:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A152CC:    = var_110.Item(CVar(CStr(var_108.Fields & var_1B0 & "\n") & "Other.: "))
  loc_1A152D4:    = var_114.Value
  loc_1A152DF:   Proc_6_50_EF6120(var_1B0)
  loc_1A1531B:   var_1D0 = CVar(CStr(var_108.Fields & var_1B0) & " Compl.: ") 'String
  loc_1A15341:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F95078
  loc_1A15348:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F95078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A15356:   Proc_6_7_F26918(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A15362:   var_D0 = " And PC.PAYTYPE IN ('Complementary') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A15375:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A1537D:   var_190 = var_108.Fields
  loc_1A15385:    = var_110.Item(var_1D0)
  loc_1A1538D:    = var_114.Value
  loc_1A15398:   Proc_6_50_EF6120(var_1B0)
  loc_1A1540E:   Proc_6_7_F26918(var_C0, var_9C, "SELECT IsNull(SUM(E.Amount),0) As NetSale FROM ExpSheet E WHERE E.VDate=", var_190, -1, var_108)
  loc_1A15440:   unk_430AEB.Execute CStr(var_110 & var_C0 & " And E.VTYPE='HTEXP' And E.Amount>0 And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), 0, var_114
  loc_1A15450:    = var_110.Item(CVar(CStr(var_190 & var_108.Fields & "\n") & "Expenses.: "))
  loc_1A15458:    = var_114.Value
  loc_1A15463:   Proc_6_50_EF6120(var_1D0)
  loc_1A154A8:   var_1F0 = CVar(CStr(var_108.Fields & var_1D0 & "\n") & "Cancel.: ") 'String
  loc_1A154D7:   Proc_6_7_F26918(var_C0, var_9C, "SELECT COUNT(*) From FOMBillDetails Where Bill_Date=", var_190, -1, var_108)
  loc_1A154E8:   var_104 = var_110 & var_C0 & " And Status='CANCEL' And LogSite_Code='" 
  loc_1A154F2:   var_148 = var_104 & CVar(MemVar_1F95078) 
  loc_1A15509:   unk_430AEB.Execute CStr(var_148 & "'"), 0, var_114
  loc_1A15519:    = var_110.Item(var_1F0)
  loc_1A15521:    = var_114.Value
  loc_1A1552C:   Proc_6_49_EF6010(var_1D0)
  loc_1A15534:   var_210 = var_108.Fields & var_1D0 
  loc_1A15571:   var_240 = CVar(CStr(var_210 & "\n") & "Vacant Room.: ") 'String
  loc_1A15577:   var_D0 = 0
  loc_1A155A4:   unk_430AEB.Execute "Select Count(*) From RoomMast RM WHERE RM.Type='RO' And RM.InclCount='Y' And LogSite_Code='" & MemVar_1F95078 & "'", var_C0, -1
  loc_1A155AC:   var_108 = var_108.Fields
  loc_1A155B4:   var_D0 = var_110.Item(var_110)
  loc_1A155C3:   Proc_6_49_EF6010(var_104, CVar(var_114))
  loc_1A155EE:   var_450 = "select count(Distinct Convert(Varchar(11),Vdate,102)+RoomNo) from paycharge where Amtdr>0 and PayCode In (Select Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature='Room Charge') And PayCode Not In ('" & MemVar_1F95078
  loc_1A15611:   Proc_6_7_F26918(var_148, var_9C, CVar(var_450 & "DISC','" & MemVar_1F95078 & "EXTB') And vdate="), var_1D0, -1, var_118, var_3E8)
  loc_1A15622:   var_1B0 = 0 & var_148 & vbNullString 
  loc_1A15630:   unk_430AEB.Execute CStr(var_1B0), var_3FC, var_1F0
  loc_1A15638:   var_104 = var_118.Fields
  loc_1A15640:   var_240 = var_3E8.Item(var_114)
  loc_1A15648:    = var_3FC.Value
  loc_1A15653:   Proc_6_39_E7D3A0(var_210)
  loc_1A1565B:   var_230 = (var_1F0 - var_210)
  loc_1A156D6:   var_E4 = "Select count(Distinct Convert(Varchar(11),Vdate,102)+RoomNo) from paycharge where Amtdr>0 and PayCode In (Select Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature='Room Charge') And PayCode Not In ('" & MemVar_1F95078
  loc_1A156E4:   var_450 = "Select Count(*) From RoomMast RM WHERE RM.Type='RO' And RM.InclCount='Y' And LogSite_Code='" & MemVar_1F95078 & "DISC','" & MemVar_1F95078
  loc_1A156F9:   Proc_6_7_F26918(var_C0, var_9C, CVar(var_450 & "EXTB') And vdate="), var_1B0, -1, var_108)
  loc_1A1571D:   var_190 = var_110 & var_C0 & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'" 
  loc_1A1572B:   unk_430AEB.Execute CStr(var_190), 0, var_114
  loc_1A15733:   var_1D0 = var_108.Fields
  loc_1A1573B:    = var_110.Item(CVar(CStr(var_210 & "\n" & "\n") & "Occupied Room.: "))
  loc_1A15743:    = var_114.Value
  loc_1A1574E:   Proc_6_49_EF6010(var_1F0)
  loc_1A1575F:   var_240 = var_1D0 & var_1F0 & "\n" 
  loc_1A157CC:   Proc_6_7_F26918(var_C0, var_9C, "Select Count(*) From RoomOccDet Where ChkINDt=ChkOutDt And Type='O' And ChkInDt=", var_190, -1, var_108)
  loc_1A157FE:   unk_430AEB.Execute CStr(var_110 & var_C0 & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), 0, var_114
  loc_1A1580E:    = var_110.Item(CVar(CStr(var_240) & "Day Use.: "))
  loc_1A15816:    = var_114.Value
  loc_1A15821:   Proc_6_49_EF6010(var_1D0)
  loc_1A15829:   var_210 = var_108.Fields & var_1D0 
  loc_1A15866:   var_250 = CVar(CStr(var_210 & "\n") & "Complementary.: ") 'String
  loc_1A15885:   var_D0 = "SELECT Count(Distinct Convert(Varchar(11),Vdate,102)+Case When RelatedFolionoDocid='' Then FolionoDocId Else RelatedFolionoDocid End) RoomOcc FROM PayCharge Where AmtDr<=1 And vdate="
  loc_1A15895:   Proc_6_7_F26918(var_C0, var_9C, "Select Count(*) From RoomOccDet Where ChkINDt=ChkOutDt And Type='O' And ChkInDt=", var_210, -1, var_108)
  loc_1A158CC:   var_1B0 = var_110 & var_C0 & " And PayCode Not In ('" & CVar(MemVar_1F95078) & "DISC','" & CVar(MemVar_1F95078) & "EXTB') And RestCode='" 
  loc_1A158DA:   var_1E0 = "FOM' And PayCode In (Select Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature='Room Charge')"
  loc_1A158DF:   var_1F0 = var_1B0 & CVar(MemVar_1F95078) & var_1E0 
  loc_1A158ED:   unk_430AEB.Execute CStr(var_1F0), 0, var_114
  loc_1A158FD:    = var_110.Item(var_250)
  loc_1A15905:    = var_114.Value
  loc_1A15910:   Proc_6_49_EF6010(var_240)
  loc_1A15970:   var_168 = Proc_6_14_EF402C(CStr(var_108.Fields & var_240 & "\n") & "Last Synced On ") & " "
  loc_1A15983:   var_168 = var_168 & var_90
  loc_1A1598D:   var_168 = var_168 & var_A0
  loc_1A15993: Else
  loc_1A1599B:   If (var_170 = "POSSaleCollection") Then
  loc_1A159B2:     var_E4 = "SELECT Depart.Name as DepartName,Max(Depart.ShortName) ShortName, Max(S.VNo) LastBillNo, Sum(S.NetAmt) As SaleAmt, Sum(S.DiscAmt) As DiscAmt, IsNull(Sum(P.AmtCr),0) SettleAmt FROM Sale1 AS S Left Join Depart On S.RestCode=Depart.Code Left Join (Select DocId,Sum(AmtCr) AmtCr From PayCharge Where LogSite_Code='" & MemVar_1F95078
  loc_1A159C7:     Proc_6_7_F26918(var_C0, var_9C, CVar(var_E4 & "' AND VDate="))
  loc_1A159EB:     var_190 = var_240 & var_C0 & " And IsNull(PAYCODE,'') NOT IN ('" & CVar(MemVar_1F95078) & "TOUT') Group By DocId) P On S.DocId=P.DocId Where S.DelFlag='N' and S.LogSite_Code='" 
  loc_1A15A0D:     Proc_6_7_F26918(var_1F0, var_9C, var_190 & CVar(MemVar_1F95078) & "' AND S.VDate=")
  loc_1A15A15:     var_210 = -1 & var_1F0 
  loc_1A15A2C:     unk_430AEB.Execute CStr(var_210 & " Group by Depart.Name Order by Depart.Name"), var_108, 
  loc_1A15A37:     Set var_164 = var_108
  loc_1A15A73:     If (var_164.RecordCount >= 0) Then
  loc_1A15AB0:       If (var_9C = CDate(var_160.Fields.Item("Ncur").Value)) Then
  loc_1A15ABB:         var_D0 = "Upto:   "
  loc_1A15AE6:         var_148 = (1 + Format(CVar(Proc_6_14_EF402C()), "dd/MMM/yy hh:nn"))
  loc_1A15AFA:         var_190 = (var_240 & CVar(Proc_6_14_EF402C()) & " And IsNull(PAYCODE,'') NOT IN ('" + Chr(&HD))
  loc_1A15B0E:         var_1D0 = (var_190 + Chr(&HA))
  loc_1A15B13:         var_168 = CStr(var_190 & CVar(MemVar_1F95078) & "' AND S.VDate=")
  loc_1A15B2F:       Else
  loc_1A15B2F:         var_F4 = "Of Date:     "
  loc_1A15B5C:         var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A15B70:         var_158 = (Format(CVar(Proc_6_14_EF402C()), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A15B84:         var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A15B89:         var_168 = CStr(Chr(&HA))
  loc_1A15B9D:         ' Referenced from:     1A15EE8
  loc_1A15B9D:       End If
  loc_1A15BAC:       If Not(var_164.EOF) Then
  loc_1A15BE3:         var_F4 = ":-"
  loc_1A15BF8:         var_148 = (var_F4 + Chr(&HD))
  loc_1A15C0C:         var_190 = (Chr(&HD) + Chr(&HA))
  loc_1A15C8C:         var_158 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(var_164.Fields.Item("LastBillNo")), "0")), &HA, CVar(CStr(CVar(var_168) & var_164.Fields.Item("DEPARTNAME").Value & Chr(&HA)) & "Cur Bill:   "), 1, 1)) 'String
  loc_1A15C9F:         var_190 = (var_158 + Chr(&HD))
  loc_1A15CB3:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A15D38:         var_158 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_164.Fields.Item("SaleAmt")), "0.00")), &HA, CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Net Sale:   "), 1)) 'String
  loc_1A15D4B:         var_190 = (var_158 + Chr(&HD))
  loc_1A15D5F:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A15DE4:         var_158 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_164.Fields.Item("DiscAmt")), "0.00")), &HA, CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Discount:   "), 1)) 'String
  loc_1A15DF7:         var_190 = (var_158 + Chr(&HD))
  loc_1A15E0B:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A15E43:         var_108 = var_164.Fields
  loc_1A15E68:         var_C0 = CVar(var_108.Item("SettleAmt")) 'Address
  loc_1A15E90:         var_158 = CVar(Proc_6_52_EAE084(CStr(Format(var_C0, "0.00")), &HA, CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :   "), 1)) 'String
  loc_1A15EA3:         var_190 = (var_158 + Chr(&HD))
  loc_1A15EB7:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A15EC0:         var_168 = CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=")
  loc_1A15EE3:         var_164.MoveNext
  loc_1A15EE8:         GoTo loc_1A15B9D
  loc_1A15EEB:       End If
  loc_1A15EEB:     End If
  loc_1A15EEE:   Else
  loc_1A15EF6:     If (var_170 = "FOMPOSSaleCollection") Then
  loc_1A15F0D:       var_E4 = "SELECT  max(Revmast.name) as RevenueName, sum(PayCharge.AmtDr-PayCharge.AmtCr) as SaleAmt " & " FROM (PayCharge LEFT JOIN RevMast ON PayCharge.PayCode = RevMast.Code) LEFT JOIN (RoomOcc LEFT JOIN GuestProf ON RoomOcc.GuestProf = GuestProf.Code) ON PayCharge.FolioNoDocid = RoomOcc.Docid "
  loc_1A15F14:       var_3C4 = Proc_6_14_EF402C() & " where paycharge.AmtDr-paycharge.AMTCR<>0  and paycharge.FOliono<>0 and paycharge.RoomType='RO' and roomocc.type='O' and SettleDate is not NULL and (((Bill_No is Not Null and Bill_No<>'') OR PAYCODE='"
  loc_1A15F1B:       var_450 = CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=" & " Group by Depart.Name Order by Depart.Name") & MemVar_1F95078
  loc_1A15F30:       Proc_6_7_F26918(var_C0, var_9C, CVar(var_450 & "ROFF') and SettleDate ="), Chr(&HA), -1)
  loc_1A15F3C:       var_D0 = ")"
  loc_1A15F45:       var_F4 = " Group by Paycharge.PayCode Order By Max(RevMast.FieldType)"
  loc_1A15F58:       unk_430AEB.Execute CStr(var_108 & var_C0 & var_D0 & var_F4), var_F4, 1
  loc_1A15F63:       Set var_164 = var_108
  loc_1A15F97:       If (var_164.RecordCount >= 0) Then
  loc_1A15FD4:         If (var_9C = CDate(var_160.Fields.Item("Ncur").Value)) Then
  loc_1A15FDF:           var_D0 = "Upto:     "
  loc_1A1600A:           var_148 = (1 + Format(CVar(Proc_6_14_EF402C(var_D0)), "dd/MMM/yy hh:nn"))
  loc_1A1601E:           var_190 = (var_160.Fields & CVar(Proc_6_14_EF402C(var_D0)) & var_D0 + Chr(&HD))
  loc_1A16032:           var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A16037:           var_168 = CStr(Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=")
  loc_1A16053:         Else
  loc_1A16053:           var_F4 = "Of Date:       "
  loc_1A16080:           var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A16094:           var_158 = (Format(CVar(Proc_6_14_EF402C("dd/MMM/yy")), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A160A8:           var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A160AD:           var_168 = CStr(Chr(&HA))
  loc_1A160C1:         End If
  loc_1A160DC:         var_E0 = ("**CHARGES SUMMARY**" + Chr(&HD))
  loc_1A160F0:         var_148 = (Format(var_9C, "dd/MMM/yy") + Chr(&HA))
  loc_1A160F9:         var_168 = CStr(CVar(var_168) & Chr(&HD))
  loc_1A16109:         ' Referenced from:     1A1620A
  loc_1A16118:         If Not(var_164.EOF) Then
  loc_1A16141:           var_F4 = "0.00"
  loc_1A1616D:           var_108 = var_164.Fields
  loc_1A1617D:           var_C0 = CVar(var_108.Item("RevenueName")) 'Address
  loc_1A161A6:           var_190 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_164.Fields.Item("SaleAmt")), var_F4)), &HA, CVar(1 & Proc_6_38_E69628(var_C0, var_168, 1, 1) & ":     "))) 'String
  loc_1A161B9:           var_1B0 = (var_190 + Chr(&HD))
  loc_1A161CD:           var_1F0 = (Chr(&HA) + Chr(&HA))
  loc_1A161D6:           var_168 = CStr(var_F4 & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :   "))
  loc_1A16205:           var_164.MoveNext
  loc_1A1620A:           GoTo loc_1A16109
  loc_1A1620D:         End If
  loc_1A1620D:       End If
  loc_1A16221:       var_E4 = "SELECT MAX(PC.VDATE) AS VDATE,sum(PC.AmtCr)-sum(PC.AmtDr) as NetSale,Sum(TipAmt) As TipAmt1,MAX(PC.PAYCODE) AS PAYCODE,Max(PC.PayType) AS PType,MAX(PC.U_NAME) AS UNAME,MAX(PC.Comments) AS COMMENT,'PAYMENT RECD.' AS DEPARTNAME,1 AS AA FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) " & "Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') and (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='"
  loc_1A1622F:       var_E0 = CVar(Proc_6_38_E69628(var_C0, var_168, 1, 1) & MemVar_1F95070 & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A1623D:       Proc_6_7_F26918(var_C0, var_9C, var_E0, var_320)
  loc_1A16245:       var_104 = -1 & var_C0 
  loc_1A16249:       var_D0 = " And PC.PAYTYPE IN ('Cash','Cheque','Complementary','Company','Member','Credit Card','Cash Card','Hold','Other','Room','Staff') Group by PC.PayType Having (sum(PC.AmtCr)-sum(PC.AmtDr))>0 "
  loc_1A16252:       var_F4 = "Union SELECT MAX(PC.VDATE) AS VDATE,sum(PC.AmtCr)-sum(PC.AmtDr) as NetSale,Sum(TipAmt) As TipAmt1,MAX(PC.PAYCODE) AS PAYCODE,Max(PC.PayType) AS PType,MAX(PC.U_NAME) AS UNAME,MAX(PC.Comments) AS COMMENT,'PAYMENT MADE' AS DEPARTNAME,2 AS AA FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) "
  loc_1A1625B:       var_128 = "Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') and (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='"
  loc_1A16273:       var_1D0 = var_F4 & "SaleAmt" & var_F4 & var_128 & CVar(MemVar_1F95070) & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=" 
  loc_1A16282:       Proc_6_7_F26918(CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :   "), var_9C, var_1D0)
  loc_1A1628E:       var_1C0 = " And PC.PAYTYPE IN ('Cash','Cheque','Complementary','Company','Member','Credit Card','Cash Card','Hold','Other','Room','Staff') Group by PC.PayType Having (sum(PC.AmtCr)-sum(PC.AmtDr))<0 "
  loc_1A16293:       var_230 = var_108 & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :   ") & " Group by Depart.Name Order by Depart.Name" 
  loc_1A16297:       var_1E0 = "Union SELECT Max(E.VDATE) AS VDATE,-Max(E.Amount) as NetSale,0 As TipAmt1,'' AS PAYCODE,'Cash' as PType, Max(E.U_NAME) AS UNAME,Max(E.Remarks) AS COMMENT,'MISC.PAYMENT' AS DEPARTNAME,3 AS AA FROM ExpSheet E WHERE E.VDate="
  loc_1A1629C:       var_240 = var_230 & var_1E0 
  loc_1A162AB:       Proc_6_7_F26918(var_250, var_9C, var_240)
  loc_1A162B3:       var_260 = 1 & var_250 
  loc_1A162BC:       var_280 = var_260 & " And E.VTYPE='HTEXP' And E.Amount >0 " 
  loc_1A162C0:       var_270 = "Union SELECT Max(E.VDATE) AS VDATE, Max(E.Amount) as NetSale,0 As TipAmt1,'' AS PAYCODE,'Cash' as PType, Max(E.U_NAME) AS UNAME,Max(E.Remarks) AS COMMENT,'MISC.RECEIPT' AS DEPARTNAME,4 AS AA FROM ExpSheet E WHERE E.VDate="
  loc_1A162C5:       var_2A0 = var_280 & var_270 
  loc_1A162D4:       Proc_6_7_F26918(var_2C0, var_9C)
  loc_1A162F3:       unk_430AEB.Execute CStr(var_2A0 & var_2C0 & " And E.VTYPE='HTSAL' And E.Amount >0 Order BY AA,PType"), "SaleAmt", 
  loc_1A162FE:       Set var_164 = var_108
  loc_1A1634C:       If (var_164.RecordCount >= 0) Then
  loc_1A16365:         var_E0 = (CVar(var_168) + Chr(&HD))
  loc_1A16379:         var_148 = (var_E0 + Chr(&HA))
  loc_1A163A7:         var_E0 = ("**COLLECTION SUMMARY**" + Chr(&HD))
  loc_1A163BB:         var_148 = (var_E0 + Chr(&HA))
  loc_1A163C4:         var_168 = CStr(CVar(CStr(var_F4 & "SaleAmt")) & var_F4 & "SaleAmt")
  loc_1A163D4:         ' Referenced from:     1A1660E
  loc_1A163E3:         If Not(var_164.EOF) Then
  loc_1A16405:           var_C0 = CVar(var_164.Fields.Item("NetSale")) 'Address
  loc_1A1640C:           Proc_6_39_E7D3A0(var_E0)
  loc_1A16426:           If CBool(var_E0 <> 0) Then
  loc_1A16466:             If CBool(CVar(var_16A) <> var_164.Fields.Item("AA").Value) Then
  loc_1A1648B:               var_C0 = CVar(var_164.Fields.Item("DEPARTNAME")) 'Address
  loc_1A1649B:               var_D0 = ":- "
  loc_1A164B0:               var_104 = (CVar(var_16A) + Chr(&HD))
  loc_1A164C4:               var_158 = (Chr(&HA) + Chr(&HA))
  loc_1A164CD:               var_168 = CStr(CVar(var_C0 & Proc_6_38_E69628(var_C0, var_168)) & CVar(CStr(var_F4 & "SaleAmt")) & var_F4 & "SaleAmt")
  loc_1A16512:               var_16A = CInt(var_164.Fields.Item("AA").Value)
  loc_1A1651F:             End If
  loc_1A1652E:             var_114 = var_164.Fields
  loc_1A16571:             var_108 = var_164.Fields
  loc_1A16581:             var_C0 = CVar(var_108.Item("pType")) 'Address
  loc_1A165BD:             var_1B0 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_114.Item("NetSale")), "0.00")), &HA)) + Chr(&HD))
  loc_1A165D1:             var_1F0 = (CVar(var_C0 & Proc_6_38_E69628(var_C0, var_168)) & CVar(CStr("0.00" & "SaleAmt")) & "0.00" & "SaleAmt" + Chr(&HA))
  loc_1A165D5:             var_230 = CVar(1 & Proc_6_38_E69628(var_C0, var_168, 1) & ":     ") & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :   ") 
  loc_1A165DA:             var_168 = CStr(var_230)
  loc_1A16606:           End If
  loc_1A16609:           var_164.MoveNext
  loc_1A1660E:           GoTo loc_1A163D4
  loc_1A16611:         End If
  loc_1A16611:       End If
  loc_1A16625:       var_E4 = "SELECT Depart.Name as DepartName,Max(Depart.ShortName) ShortName, Max(S.VNo) LastBillNo, Sum(S.NetAmt) As SaleAmt, Sum(S.DiscAmt) As DiscAmt, IsNull(Sum(P.AmtCr),0) SettleAmt FROM Sale1 AS S Left Join Depart On S.RestCode=Depart.Code Left Join (Select DocId,Sum(AmtCr) AmtCr From PayCharge Where LogSite_Code='" & MemVar_1F95078
  loc_1A1663A:       Proc_6_7_F26918(var_C0, var_9C, CVar(var_E4 & "' AND VDate="), var_240)
  loc_1A16642:       var_104 = -1 & var_C0 
  loc_1A1665E:       var_190 = "0.00" & " And IsNull(PAYCODE,'') NOT IN ('" & CVar(MemVar_1F95078) & "TOUT') Group By DocId) P On S.DocId=P.DocId Where S.DelFlag='N' and S.LogSite_Code='" 
  loc_1A16680:       Proc_6_7_F26918(CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :   "), var_9C, var_190 & CVar(MemVar_1F95078) & "' AND S.VDate=")
  loc_1A16691:       var_230 = var_108 & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :   ") & " Group by Depart.Name Order by Depart.Name" 
  loc_1A1669F:       unk_430AEB.Execute CStr(var_230), var_16A, 
  loc_1A166AA:       Set var_164 = var_108
  loc_1A166E6:       If (var_164.RecordCount >= 0) Then
  loc_1A166FF:         var_E0 = (CVar(var_168) + Chr(&HD))
  loc_1A16713:         var_148 = (CVar(var_E4 & "' AND VDate=") + Chr(&HA))
  loc_1A16741:         var_E0 = ("**POS SUMMARY**" + Chr(&HD))
  loc_1A16755:         var_148 = (CVar(var_E4 & "' AND VDate=") + Chr(&HA))
  loc_1A1675E:         var_168 = CStr(CVar(CStr("0.00" & " And IsNull(PAYCODE,'') NOT IN ('")) & "0.00" & " And IsNull(PAYCODE,'') NOT IN ('")
  loc_1A1676E:         ' Referenced from:     1A16AB9
  loc_1A1677D:         If Not(var_164.EOF) Then
  loc_1A167B4:           var_F4 = ":-"
  loc_1A167C9:           var_148 = (CVar(MemVar_1F95078) + Chr(&HD))
  loc_1A167DD:           var_190 = ("0.00" & " And IsNull(PAYCODE,'') NOT IN ('" + Chr(&HA))
  loc_1A1685D:           var_158 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(var_164.Fields.Item("LastBillNo")), "0")), &HA, CVar(CStr(CVar(CStr(CVar(var_168) & var_164.Fields.Item("DEPARTNAME").Value & var_190)) & var_164.Fields.Item("DEPARTNAME").Value & var_190) & "Cur Bill:     "))) 'String
  loc_1A16870:           var_190 = (var_158 + Chr(&HD))
  loc_1A16884:           var_1D0 = (var_190 + Chr(&HA))
  loc_1A16909:           var_158 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_164.Fields.Item("SaleAmt")), "0.00")), &HA, CVar(CStr(1 & var_190 & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Net Sale:     "))) 'String
  loc_1A1691C:           var_190 = (var_158 + Chr(&HD))
  loc_1A16930:           var_1D0 = (var_190 + Chr(&HA))
  loc_1A169B5:           var_158 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(var_164.Fields.Item("DiscAmt")), "0.00")), &HA, CVar(CStr(1 & var_190 & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Discount:     "), 1)) 'String
  loc_1A169C8:           var_190 = (var_158 + Chr(&HD))
  loc_1A169DC:           var_1D0 = (var_190 + Chr(&HA))
  loc_1A16A14:           var_108 = var_164.Fields
  loc_1A16A1C:           var_110 = var_108.Item("SettleAmt")
  loc_1A16A39:           var_C0 = CVar(var_110) 'Address
  loc_1A16A61:           var_158 = CVar(Proc_6_52_EAE084(CStr(Format(var_C0, "0.00")), &HA, CVar(CStr(1 & var_190 & CVar(MemVar_1F95078) & "' AND S.VDate=") & "Collect :     "), 1)) 'String
  loc_1A16A74:           var_190 = (var_158 + Chr(&HD))
  loc_1A16A80:           var_1B0 = Chr(&HA)
  loc_1A16A88:           var_1D0 = (var_190 + var_1B0)
  loc_1A16A91:           var_168 = CStr(1 & var_190 & CVar(MemVar_1F95078) & "' AND S.VDate=")
  loc_1A16AB4:           var_164.MoveNext
  loc_1A16AB9:           GoTo loc_1A1676E
  loc_1A16ABC:         End If
  loc_1A16ABC:       End If
  loc_1A16ABF:     Else
  loc_1A16AC7:       If (var_170 = "POS&BANQ Sale&Collection") Then
  loc_1A16ADE:         var_E4 = "SELECT ROW_NUMBER() OVER (ORDER BY D.NAME) As Seq_No,Substring(D.Name,1,25)+':       '+Cast(Round(ISNULL(SUM(S.Total)-SUM(S.DiscAmt),0),2) AS VarChar) PAY1 FROM  Sale1 S Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A16AF3:         Proc_6_7_F26918(var_C0, var_9C, CVar(var_E4 & "' And S.DELFLAG<>'D' And S.VDate="), var_158)
  loc_1A16AFB:         var_104 = -1 & var_C0 
  loc_1A16B12:         unk_430AEB.Execute CStr(Format(var_C0, "0.00") & " And D.RestType In ('Outlet') Group By D.Name"), var_108, 1
  loc_1A16B1D:         Set var_164 = var_108
  loc_1A16B52:         var_104 = CVar(var_168 & var_8C & "\n" & "DSR:       (POS/BANQ) ") 'String
  loc_1A16B64:         var_C0 = "dd/MMM/yyyy"
  loc_1A16B86:         var_158 = 1 & Format(var_9C, var_C0) & "\n" 
  loc_1A16BA2:         var_1D0 = CVar(CStr(var_158) & "Room Service.:       ") 'String
  loc_1A16BC8:         var_E4 = "SELECT ISNULL(SUM(S.Total)-SUM(S.DiscAmt),0) AS PAY1 FROM Sale1 S Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A16BDD:         Proc_6_7_F26918(var_C0, var_9C, CVar(CStr(var_158) & var_8C & "' And S.DELFLAG<>'D' And S.VDate="), var_158, -1, var_108, var_110)
  loc_1A16BFC:         unk_430AEB.Execute CStr(0 & var_C0 & " And D.RestType In ('Room Service')"), var_114, var_190
  loc_1A16C04:         var_1D0 = var_108.Fields
  loc_1A16C0C:         var_104 = var_110.Item(1)
  loc_1A16C14:         1 = var_114.Value
  loc_1A16C1F:         Proc_6_50_EF6120(var_1B0)
  loc_1A16C70:         If (var_164.EOF = 0) Then
  loc_1A16CB5:           var_168 = CStr(CVar(CStr(var_190 & var_1B0 & "\n") & "Outlet1.") & var_164.Fields.Item("PAY1").Value & "\n")
  loc_1A16CCD:           var_164.MoveNext
  loc_1A16CD5:         Else
  loc_1A16CEA:           var_168 = var_168 & "Outlet1.:         " & "NA" & "\n"
  loc_1A16CF4:         End If
  loc_1A16D05:         If (var_164.EOF = 0) Then
  loc_1A16D24:           var_108 = var_164.Fields
  loc_1A16D2C:           var_110 = var_108.Item("PAY1")
  loc_1A16D34:           var_C0 = var_110.Value
  loc_1A16D4A:           var_168 = CStr(CVar(var_168 & "Outlet2.") & var_C0 & "\n")
  loc_1A16D62:           var_164.MoveNext
  loc_1A16D6A:         Else
  loc_1A16D7F:           var_168 = var_168 & "Outlet2.:         " & "NA" & "\n"
  loc_1A16D89:         End If
  loc_1A16DB6:         var_E4 = "SELECT ISNULL(SUM(Amount)-SUM(Discount),0) PAY1 From (Select S.DocId,Case When S.SunCode='" & MemVar_1F95078
  loc_1A16DCB:         var_454 = var_168 & "Outlet2.:         " & "TOT' Then Amt Else 0 End As Amount,Case When S.SunCode='" & MemVar_1F95078 & "DIS' Then Amt Else 0 End As Discount from SunTransaction S Where S.SunCode In ('"
  loc_1A16DF5:         Proc_6_7_F26918(var_C0, var_9C, CVar(var_454 & MemVar_1F95078 & "TOT','" & MemVar_1F95078 & "DIS') And S.VDate="), var_158, -1, var_108)
  loc_1A16E14:         unk_430AEB.Execute CStr(var_110 & var_C0 & ")Q"), 0, var_114
  loc_1A16E24:          = var_110.Item(CVar(var_168 & "Banquet.:       "))
  loc_1A16E2C:          = var_114.Value
  loc_1A16E37:         Proc_6_50_EF6120(var_1B0)
  loc_1A16EB0:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A16EC5:         Proc_6_7_F26918(var_C0, var_9C, CVar(CStr(var_108.Fields & var_1B0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A16EE0:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F95078) 
  loc_1A16EE4:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A16F1E:         Proc_6_7_F26918(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F95078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F95078) & "BANQ') AND PH.VDate=", 0)
  loc_1A16F3D:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Cash')"), var_280, CVar(CStr(var_108.Fields & var_158 & 0 & CVar(MemVar_1F95078) & "\n") & "Cash.:       ")
  loc_1A16F45:          = var_108.Fields
  loc_1A16F4D:          = var_110.Item()
  loc_1A16F55:          = var_114.Value
  loc_1A16F60:         Proc_6_50_EF6120(var_2A0)
  loc_1A16FDF:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A16FF4:         Proc_6_7_F26918(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A1700F:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F95078) 
  loc_1A17013:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A1704D:         Proc_6_7_F26918(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F95078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F95078) & "BANQ') AND PH.VDate=", 0)
  loc_1A1706C:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Cheque','Credit Card','Cash Card')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "Card.:       ")
  loc_1A17074:          = var_108.Fields
  loc_1A1707C:          = var_110.Item()
  loc_1A17084:          = var_114.Value
  loc_1A1708F:         Proc_6_50_EF6120(var_2A0)
  loc_1A1710E:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A17123:         Proc_6_7_F26918(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A1713E:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F95078) 
  loc_1A17142:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A1717C:         Proc_6_7_F26918(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F95078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F95078) & "BANQ') AND PH.VDate=", 0)
  loc_1A1719B:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Company','Member')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "BTC.:       ")
  loc_1A171A3:          = var_108.Fields
  loc_1A171AB:          = var_110.Item()
  loc_1A171B3:          = var_114.Value
  loc_1A171BE:         Proc_6_50_EF6120(var_2A0)
  loc_1A1723D:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A17252:         Proc_6_7_F26918(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A1726D:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F95078) 
  loc_1A17271:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A172AB:         Proc_6_7_F26918(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F95078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F95078) & "BANQ') AND PH.VDate=", 0)
  loc_1A172CA:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('UPI')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "UPI.:       ")
  loc_1A172D2:          = var_108.Fields
  loc_1A172DA:          = var_110.Item()
  loc_1A172E2:          = var_114.Value
  loc_1A172ED:         Proc_6_50_EF6120(var_2A0)
  loc_1A1736C:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A17381:         Proc_6_7_F26918(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A1739C:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F95078) 
  loc_1A173A0:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A173DA:         Proc_6_7_F26918(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F95078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F95078) & "BANQ') AND PH.VDate=", 0)
  loc_1A173F9:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Other')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "Other.:       ")
  loc_1A17401:          = var_108.Fields
  loc_1A17409:          = var_110.Item()
  loc_1A17411:          = var_114.Value
  loc_1A1741C:         Proc_6_50_EF6120(var_2A0)
  loc_1A17490:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A174A5:         Proc_6_7_F26918(var_C0, var_9C, CVar(CStr(var_280 & var_2A0) & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A174C0:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F95078) 
  loc_1A174C4:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A174D3:         var_1B0 = var_158 & 0 & CVar(MemVar_1F95078) 
  loc_1A174FE:         Proc_6_7_F26918(var_230, var_9C, var_1B0 & "' AND PH.RestCode IN ('" & CVar(MemVar_1F95078) & "BANQ') AND PH.VDate=", 0)
  loc_1A1751D:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Complementary')"), var_280, CVar(CStr(var_280 & var_2A0) & " Compl.:       ")
  loc_1A17525:          = var_108.Fields
  loc_1A1752D:          = var_110.Item()
  loc_1A17535:          = var_114.Value
  loc_1A17540:         Proc_6_50_EF6120(var_2A0)
  loc_1A175BF:         var_E4 = "SELECT Count(Distinct S.DocId) FROM  Sale1 S Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_1A175D4:         Proc_6_7_F26918(var_C0, var_9C, CVar(var_E4 & "' And S.DELFLAG='D' And S.VDate="), var_158, -1, var_108)
  loc_1A175F3:         unk_430AEB.Execute CStr(var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet')"), 0, var_114
  loc_1A17603:          = var_110.Item(CVar(CStr(var_280 & var_2A0 & "\n") & "Cancel.:       "))
  loc_1A1760B:          = var_114.Value
  loc_1A17616:         Proc_6_49_EF6010(var_1B0)
  loc_1A17627:         var_210 = var_108.Fields & var_1B0 & "\n" 
  loc_1A17670:         var_168 = Proc_6_14_EF402C(CStr(var_210) & "Last Synced On ") & " "
  loc_1A17683:         var_168 = var_168 & var_90
  loc_1A1768D:         var_168 = var_168 & var_A0
  loc_1A17693:       Else
  loc_1A1769B:         If (var_170 = "TotalCollection") Then
  loc_1A176D8:           If (var_9C = CDate(var_160.Fields.Item("Ncur").Value)) Then
  loc_1A176E3:             var_D0 = "Upto:         "
  loc_1A1770E:             var_148 = (1 + Format(CVar(Proc_6_14_EF402C()), "dd/MMM/yy hh:nn"))
  loc_1A17722:             var_190 = (var_160.Fields.Item("Ncur") & CVar(Proc_6_14_EF402C()) & " And D.RestType In ('Room Service','Outlet')" + Chr(&HD))
  loc_1A17736:             var_1D0 = (var_160.Fields.Fields + Chr(&HA))
  loc_1A1773B:             var_168 = CStr(CVar(CStr(var_280 & var_2A0 & "\n") & "Cancel.:       "))
  loc_1A17757:           Else
  loc_1A17757:             var_F4 = "Of Date:           "
  loc_1A17784:             var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A17798:             var_158 = (Format(CVar(Proc_6_14_EF402C()), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A177AC:             var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A177B1:             var_168 = CStr(Chr(&HA))
  loc_1A177C5:           End If
  loc_1A177E0:           var_E0 = ("**TOTAL COLLECTION**" + Chr(&HD))
  loc_1A177F4:           var_148 = (Format(var_9C, "dd/MMM/yy") + Chr(&HA))
  loc_1A1781C:           var_168 = var_F4 & Proc_233_13_188E76C(var_9C, CStr(CVar(var_168) & Chr(&HD)), 1)
  loc_1A17825:         Else
  loc_1A1782D:           If (var_170 = "BANQSaleCollection") Then
  loc_1A17842:             var_108 = var_160.Fields
  loc_1A1784A:             var_110 = var_108.Item("Ncur")
  loc_1A1786A:             If (var_9C = CDate(var_110.Value)) Then
  loc_1A17875:               var_D0 = "Upto:           "
  loc_1A178A0:               var_148 = (1 + Format(CVar(Proc_6_14_EF402C(1)), "dd/MMM/yy hh:nn"))
  loc_1A178B4:               var_190 = (Chr(&HD) + Chr(&HD))
  loc_1A178C8:               var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A178CD:               var_168 = CStr(CVar(CStr(var_280 & var_2A0 & "\n") & "Cancel.:       "))
  loc_1A178E9:             Else
  loc_1A178E9:               var_F4 = "Of Date:             "
  loc_1A17916:               var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A1792A:               var_158 = (Format(CVar(Proc_6_14_EF402C(1)), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A1793E:               var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A17943:               var_168 = CStr(Chr(&HA))
  loc_1A17957:             End If
  loc_1A1796A:             var_C0 = Chr(&HD)
  loc_1A17972:             var_E0 = ("**BANQUET SUMMARY**" + var_C0)
  loc_1A17986:             var_148 = (Format(var_9C, "dd/MMM/yy") + Chr(&HA))
  loc_1A179AE:             var_168 = 1 & Proc_233_14_156570C(var_9C, CStr(CVar(var_168) & Chr(&HD)), 1, var_F4)
  loc_1A179B4:           End If
  loc_1A179B4:         End If
  loc_1A179B4:       End If
  loc_1A179B4:     End If
  loc_1A179B4:   End If
  loc_1A179B4: End If
  loc_1A179BE: If (Len(var_168) <> 0) Then
  loc_1A179C4:   Me(28) = "SCHDL"
  loc_1A179CC:   Me(36) = MemVar_1F9512C
  loc_1A179ED:   var_D0 = "Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS With (NoLock) Where VType="
  loc_1A179FF:   Proc_6_17_EAAE40(var_C0, Me(28), CVar(var_168), var_210, -1, var_108)
  loc_1A17A38:   var_1B0 = var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)) & "' And SITE_CODE='" & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" 
  loc_1A17A59:   unk_430C03.Execute CStr(var_1B0 & CVar(MemVar_1F95078) & "'"), 0, var_114
  loc_1A17A69:   var_D0 = var_110.Item(var_D0)
  loc_1A17A71:    = var_114.Value
  loc_1A17A7B:   Me(32) = CLng(var_108.Fields)
  loc_1A17AD4:   var_C0 = Space((5 - Len(Me(28))))
  loc_1A17ADC:   var_104 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & Me(28)) + var_C0)
  loc_1A17AEF:   var_148 = Space((5 - Len(Me(36))))
  loc_1A17AF7:   var_158 = (var_110 & var_C0 & " And SubString(Docid,10,4)='" + var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)))
  loc_1A17B03:   var_190 = (var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)) & "' And SITE_CODE='" + CVar(Me(36)))
  loc_1A17B1B:   var_1B0 = Space((8 - Len(CStr(Me(32)))))
  loc_1A17B23:   var_1D0 = (var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)) & "' And SITE_CODE='" & CVar(MemVar_1F95070) + var_1B0)
  loc_1A17B31:   var_210 = (var_1B0 & CVar(MemVar_1F95078) + CVar(CStr(Me(32))))
  loc_1A17B36:   Me(24) = CStr(var_210)
  loc_1A17B5F:   var_450 = "SCHEDULED MSG"
  loc_1A17B79:   var_3C4 = "Auto"
  loc_1A17BA7:   Proc_233_5_11B7BF4(Me(24), Me(28), Me(32), 0, Me(40), var_94, vbNullString)
  loc_1A17BB5: End If
  loc_1A17BBA: Set var_160 = Nothing
  loc_1A17BC2: Set var_164 = Nothing
  loc_1A17BC5: Exit Sub
End Sub

Public Sub Proc_233_12_EF5BE4(arg_C) 'EF5BE4
  'Data Table: 430AD8
  Dim var_8C As Recordset15
  loc_EF5B13: Set var_8C = arg_C 
  loc_EF5B3B: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_EF5B67: var_8C.Fields.Append "SMSSTR", &HC8, &H96
  loc_EF5B93: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EF5BA3: var_8C.CursorType = 3
  loc_EF5BB0: var_8C.LockType = 3
  loc_EF5BCF: var_8C.Open var_A0, var_B0, -1
  loc_EF5BD6: Set var_8C = Nothing 
  loc_EF5BDD: Set var_88 = arg_C 
  loc_EF5BE1: Exit Sub
End Sub

Public Sub Proc_233_13_188E76C(arg_C) '188E76C
  'Data Table: 430AD8
  Dim var_144 As String
  Dim unk_430AEB As Connection15
  Dim var_180 As Variant
  Dim var_158 As Variant
  Dim var_170 As Recordset15
  Dim var_16C As Fields15
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_94 As Recordset15
  Dim var_220 As Recordset15
  Dim var_168 As Variant
  Dim var_C0 As Recordset15
  Dim var_230 As Recordset15
  Dim var_214 As Variant
  Dim var_240 As Variant
  Dim var_10C As Recordset15
  Dim var_254 As Recordset15
  Dim var_264 As Variant
  Dim var_270 As Recordset15
  Dim var_90 As Recordset15
  Dim var_274 As Recordset15
  Dim var_278 As Recordset15
  Dim var_290 As String
  Dim var_2A8 As Variant
  Dim var_2B0 As Recordset15
  Dim var_138 As Recordset15
  Dim var_250 As Variant
  Dim var_304 As Recordset15
  Dim var_308 As Recordset15
  Dim var_30C As Recordset15
  Dim var_310 As Recordset15
  Dim var_314 As Recordset15
  Dim var_318 As Recordset15
  Dim var_31C As Recordset15
  Dim var_320 As Recordset15
  Dim var_324 As Recordset15
  Dim var_328 As Recordset15
  Dim var_32C As Recordset15
  Dim var_330 As Recordset15
  Dim var_334 As Recordset15
  Dim var_338 As Recordset15
  Dim var_33C As Recordset15
  Dim var_340 As Recordset15
  Dim var_344 As Recordset15
  Dim var_348 As Recordset15
  Dim var_34C As Recordset15
  Dim var_8C As Recordset15
  loc_188C0FC: On Error Goto loc_188E74E
  loc_188C123: unk_430AEB.Execute "Select * from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_168, -1
  loc_188C12E: Set var_138 = var_16C
  loc_188C142: Set var_8C = New 
  loc_188C14D: Set var_8C = Proc_233_12_EF5BE4(var_8C)
  loc_188C153: Set var_170 = var_8C 
  loc_188C162: Me.Recordset15.AddNew var_158, var_180
  loc_188C167: var_180 = "CASH:-"
  loc_188C170: var_158 = "SMSSTR"
  loc_188C17C: var_16C = var_170.Fields
  loc_188C18C: var_16C.Item(var_158).Value = var_180
  loc_188C1A3: var_170.Update var_158, var_180
  loc_188C1AA: Set var_170 = Nothing 
  loc_188C1BB: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) As Amount FROM (PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188C1C3: var_158 = arg_C
  loc_188C1CB: Proc_6_7_F26918(var_168, var_158, var_180, var_214)
  loc_188C1D3: var_194 = -1 & var_168 
  loc_188C1EF: var_1F4 = var_194 & " AND P.RESTCODE='" & CVar(MemVar_1F95078) & "FOM' and PY.FieldType='P'  and P.PayType='Cash'  and P.Vtype<>'CHK' Group By P.VTYPE,P.PayType" 
  loc_188C1FD: unk_430AEB.Execute CStr(var_1F4), var_16C, var_16C
  loc_188C208: Set var_94 = var_16C
  loc_188C234: If (var_94.RecordCount > 0) Then
  loc_188C237:   ' Referenced from: 188C372
  loc_188C246:   If Not(var_94.EOF) Then
  loc_188C24C:     Set var_220 = var_8C 
  loc_188C25B:     var_220.AddNew var_158, var_180
  loc_188C285:     var_220.Fields.Item("mLine").Value = vbNullString
  loc_188C2B0:     var_168 = CVar(var_94.Fields.Item("Amount")) 'Address
  loc_188C2B7:     Proc_6_39_E7D3A0(var_194)
  loc_188C2BC:     var_1A4 = "FOM: "
  loc_188C2E4:     var_1F4 = (1 + Format(var_194, "0.00"))
  loc_188C308:     var_220.Fields.Item("SMSSTR").Value = var_1F4
  loc_188C323:     var_180 = "*"
  loc_188C32C:     var_158 = "Mark"
  loc_188C338:     var_16C = var_220.Fields
  loc_188C348:     var_16C.Item(var_158).Value = var_180
  loc_188C35F:     var_220.Update var_158, var_180
  loc_188C366:     Set var_220 = Nothing 
  loc_188C36D:     var_94.MoveNext
  loc_188C372:     GoTo loc_188C237
  loc_188C375:   End If
  loc_188C375: End If
  loc_188C39D: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F95078 & "BANQ','" & MemVar_1F95078 & "ODC') AND P.VDate =") 'String
  loc_188C3A3: var_158 = arg_C
  loc_188C3AB: Proc_6_7_F26918(var_168, var_158, var_194, CDbl(0))
  loc_188C3E1: var_144 = "SELECT P.VTYPE,P.PayType, Sum(P.AmtCr) AS Amount FROM PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId " & CStr(CDbl(0) & var_168)
  loc_188C3F1: unk_430AEB.Execute var_144 & " And P.PayType='Cash' Group By P.VTYPE,P.PayType", var_168, -1
  loc_188C3FC: Set var_C0 = var_16C
  loc_188C420: If (var_C0.RecordCount > 0) Then
  loc_188C426:   var_C0.MoveFirst
  loc_188C42B:   ' Referenced from: 188C504
  loc_188C43A:   If Not(var_C0.EOF) Then
  loc_188C440:     Set var_230 = var_8C 
  loc_188C44F:     var_230.AddNew var_158, var_180
  loc_188C457:     var_158 = "Amount"
  loc_188C463:     var_16C = var_C0.Fields
  loc_188C473:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188C47A:     Proc_6_39_E7D3A0(var_194, var_168, var_16C)
  loc_188C47F:     var_1A4 = "BANQ: "
  loc_188C48E:     var_180 = "0.00"
  loc_188C4A7:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188C4CB:     var_230.Fields.Item("SMSSTR").Value = var_1F4
  loc_188C4F1:     var_230.Update var_158, var_180
  loc_188C4F8:     Set var_230 = Nothing 
  loc_188C4FF:     var_C0.MoveNext
  loc_188C504:     GoTo loc_188C42B
  loc_188C507:   End If
  loc_188C507: End If
  loc_188C50A: var_9C = vbNullString
  loc_188C521: var_144 = "SELECT SUM(S.NetAmt) AS NetAmt,sum(PC.AmtCr)-sum(PC.AmtDr) as NetSale,MAX(PC.PAYCODE) AS PAYCODE,Max(PC.PayType) AS PType,MAX(D.NAME) AS DEPARTNAME FROM (SAle1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F95078
  loc_188C52E: var_158 = arg_C
  loc_188C536: Proc_6_7_F26918(var_168, var_158, CVar(var_144 & "' AND D.RestType in('Outlet', 'Room Service') And D.POS IN('Y') And PC.VDATE ="), var_250, -1, var_16C)
  loc_188C542: var_180 = " and  PC.PAYCODE NOT IN ('"
  loc_188C54E: var_1A4 = CVar(MemVar_1F95078) 'String
  loc_188C55A: var_214 = 1 & var_168 & var_180 & var_1A4 & "TOUT" 
  loc_188C571: unk_430AEB.Execute CStr(var_214 & "') AND PC.PAYTYPE ='Cash' Group by S.RESTCODE Order By MAX(D.NAME)"), var_1A4, 1
  loc_188C57C: Set var_10C = var_16C
  loc_188C5B0: If (var_10C.RecordCount > 0) Then
  loc_188C5B6:   var_10C.MoveFirst
  loc_188C5BB:   ' Referenced from: 188C6D8
  loc_188C5CA:   If Not(var_10C.EOF) Then
  loc_188C5D0:     Set var_254 = var_8C 
  loc_188C5DF:     var_254.AddNew var_158, var_180
  loc_188C5E7:     var_1A4 = "NetSale"
  loc_188C603:     var_1F4 = CVar(var_10C.Fields.Item(var_1A4)) 'Address
  loc_188C60A:     Proc_6_39_E7D3A0(var_214, var_1F4)
  loc_188C612:     var_158 = "DEPARTNAME"
  loc_188C61E:     var_16C = var_10C.Fields
  loc_188C62E:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188C645:     var_180 = ": "
  loc_188C64A:     var_1D4 = (Ucase(CVar(Proc_6_38_E69628(var_168, var_1A4))) + var_180)
  loc_188C671:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188C695:     var_254.Fields.Item("SMSSTR").Value = var_264
  loc_188C6C5:     var_254.Update var_158, var_180
  loc_188C6CC:     Set var_254 = Nothing 
  loc_188C6D3:     var_10C.MoveNext
  loc_188C6D8:     GoTo loc_188C5BB
  loc_188C6DB:   End If
  loc_188C6DB: End If
  loc_188C6EF: var_144 = "Select Q.VType,Q.PayType,Max(Depart.Name) DEPARTNAME,IsNull(Sum(Q.AmtCr),0) Advance From (Select RestCode,vType,PayType,AmtCr,Case When AmtCr>0 Then 'D' Else 'R' End PayType1 From PayCharge Where Vtype In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F95078
  loc_188C6FC: var_158 = arg_C
  loc_188C704: Proc_6_7_F26918(var_168, var_158, CVar(var_144 & "') And PayType='Cash' AND VDate="), var_1F4, -1)
  loc_188C710: var_180 = ") Q Left Join Depart On Depart.Code=Q.RestCode Group By Q.VType,Q.PayType"
  loc_188C715: var_1D4 = var_16C & var_168 & var_180 
  loc_188C723: unk_430AEB.Execute CStr(var_1D4), 1, var_1D4
  loc_188C72E: Set var_10C = var_16C
  loc_188C75C: If (var_10C.RecordCount > 0) Then
  loc_188C762:   var_10C.MoveFirst
  loc_188C767:   ' Referenced from: 188C884
  loc_188C776:   If Not(var_10C.EOF) Then
  loc_188C77C:     Set var_270 = var_8C 
  loc_188C78B:     var_270.AddNew var_158, var_180
  loc_188C7B6:     Proc_6_39_E7D3A0(var_214, CVar(var_10C.Fields.Item("Advance")))
  loc_188C7BE:     var_158 = "DEPARTNAME"
  loc_188C7CA:     var_16C = var_10C.Fields
  loc_188C7DA:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188C7F1:     var_180 = "(ADV.): "
  loc_188C7F6:     var_1D4 = (Ucase(CVar(Proc_6_38_E69628(var_168))) + var_180)
  loc_188C809:     var_240 = "0.00"
  loc_188C81D:     var_264 = (1 + Format(var_214, var_240))
  loc_188C841:     var_270.Fields.Item("SMSSTR").Value = var_264
  loc_188C871:     var_270.Update var_158, var_180
  loc_188C878:     Set var_270 = Nothing 
  loc_188C87F:     var_10C.MoveNext
  loc_188C884:     GoTo loc_188C767
  loc_188C887:   End If
  loc_188C887: End If
  loc_188C894: var_180 = "Select max(Name)as CurName,sum(Qty)as Qty,sum(Amount) as [Value] from ForExTrans left join ForEx on ForEx.Code=ForExTrans.ForExCode where ForExTrans.VDate="
  loc_188C89C: var_158 = arg_C
  loc_188C8A4: Proc_6_7_F26918(var_168, var_158, var_180, var_214, -1)
  loc_188C8B5: var_1B4 = var_16C & var_168 & " And ForExTrans.PayMode='Cash' And ForExTrans.logSite_Code= '" 
  loc_188C8BF: var_1D4 = var_1B4 & CVar(MemVar_1F95078) 
  loc_188C8D6: unk_430AEB.Execute CStr(var_1D4 & "' Group by Code"), 1, var_1D4
  loc_188C8E1: Set var_90 = var_16C
  loc_188C90D: If (var_90.RecordCount > 0) Then
  loc_188C913:   Set var_274 = var_8C 
  loc_188C922:   var_274.AddNew var_158, var_180
  loc_188C927:   var_180 = "FOREX:-"
  loc_188C930:   var_158 = "SMSSTR"
  loc_188C94C:   var_274.Fields.Item(var_158).Value = var_180
  loc_188C963:   var_274.Update var_158, var_180
  loc_188C96A:   Set var_274 = Nothing 
  loc_188C971:   var_90.MoveFirst
  loc_188C976:   ' Referenced from: 188CB20
  loc_188C985:   If Not(var_90.EOF) Then
  loc_188C98B:     Set var_278 = var_8C 
  loc_188C99A:     var_278.AddNew var_158, var_180
  loc_188C9A2:     var_158 = "CurName"
  loc_188C9AE:     var_16C = var_90.Fields
  loc_188C9BE:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188C9CD:     var_180 = "qty"
  loc_188C9F0:     Proc_6_39_E7D3A0(var_1B4, CVar(var_90.Fields.Item(var_180)))
  loc_188CA34:     var_214 = CVar(var_90.Fields.Item("Value")) 'Address
  loc_188CA3B:     Proc_6_39_E7D3A0(var_240, var_214, 1)
  loc_188CA9F:     var_290 = Proc_6_52_EAE084(CStr(Format(var_240, "0.00")), &HB, 1 & Proc_6_52_EAE084(CStr(Format(var_1B4, "0.00")), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(var_168), &H12, 1)))
  loc_188CAC6:     var_278.Fields.Item("SMSSTR").Value = CVar(1 & var_290)
  loc_188CB0D:     var_278.Update var_158, var_180
  loc_188CB14:     Set var_278 = Nothing 
  loc_188CB1B:     var_90.MoveNext
  loc_188CB20:     GoTo loc_188C976
  loc_188CB23:   End If
  loc_188CB23: End If
  loc_188CB30: var_180 = "Select Sum(Amount)Amount From ExpSheet Left join SubGroup on ExpSheet.AgAc=SubGroup.subcode where Vtype='HTSAL' And ExpSheet.VDate="
  loc_188CB40: Proc_6_7_F26918(var_168, arg_C, var_180, var_214)
  loc_188CB48: var_194 = -1 & var_168 
  loc_188CB64: var_1F4 = CVar(var_90.Fields.Item(var_180)) & " And (ExpSheet.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or ExpSheet.LOGSITE_CODE='HO')" 
  loc_188CB72: unk_430AEB.Execute CStr(var_1F4), var_16C, var_168
  loc_188CB7D: Set var_90 = var_16C
  loc_188CBA9: If (var_90.RecordCount > 0) Then
  loc_188CBAF:   var_158 = "Amount"
  loc_188CBCB:   var_168 = CVar(var_90.Fields.Item(var_158)) 'Address
  loc_188CBD2:   Proc_6_39_E7D3A0(CVar(var_90.Fields.Item(var_180)))
  loc_188CBDA:   var_180 = 0
  loc_188CBEC:   If CBool(CVar(var_90.Fields.Item(var_180)) <> var_180) Then
  loc_188CBF2:     Set var_2B0 = var_8C 
  loc_188CC01:     var_2B0.AddNew var_158, var_180
  loc_188CC09:     var_158 = "Amount"
  loc_188CC2C:     Proc_6_39_E7D3A0(CVar(var_90.Fields.Item(var_180)), CVar(var_90.Fields.Item(var_158)))
  loc_188CC31:     var_1A4 = "MISC. REC: "
  loc_188CC40:     var_180 = "0.00"
  loc_188CC59:     var_1F4 = (1 + Format(CVar(var_90.Fields.Item(var_180)), var_180))
  loc_188CC7D:     var_2B0.Fields.Item("SMSSTR").Value = var_1F4
  loc_188CCA3:     var_2B0.Update var_158, var_180
  loc_188CCAA:     Set var_2B0 = Nothing 
  loc_188CCAE:   End If
  loc_188CCAE: End If
  loc_188CCBD: var_16C = var_138.Fields
  loc_188CCCD: var_168 = CVar(var_16C.Item("IncCashPurchInFOCC")) 'Address
  loc_188CCEE: If (Ucase(var_168) = "YES") Then
  loc_188CCFE:   var_180 = "Select Sum(Amount)Amount From ExpSheet Left join SubGroup on ExpSheet.AgAc=SubGroup.subcode where Vtype='HTEXP' And ExpSheet.VDate="
  loc_188CD0E:   Proc_6_7_F26918(var_168, arg_C, var_180, var_300, -1)
  loc_188CD1A:   var_1A4 = " And (ExpSheet.LOGSITE_CODE='"
  loc_188CD32:   var_1F4 = var_16C & var_168 & var_1A4 & CVar(MemVar_1F95078) & "' or ExpSheet.LOGSITE_CODE='HO') UNION SELECT Sum(NetAmt) from Purch1 where VDate=" 
  loc_188CD41:   Proc_6_7_F26918(var_214, arg_C, var_1F4)
  loc_188CD65:   var_2A8 = 1 & var_214 & " And (LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') and vtype='PBPC'" 
  loc_188CD73:   unk_430AEB.Execute CStr(var_2A8), var_1A4, var_168
  loc_188CD7E:   Set var_90 = var_16C
  loc_188CDA3: Else
  loc_188CDB0:   var_180 = "Select Sum(Amount)Amount From ExpSheet Left join SubGroup on ExpSheet.AgAc=SubGroup.subcode where Vtype='HTEXP' And ExpSheet.VDate="
  loc_188CDC0:   Proc_6_7_F26918(var_168, arg_C, var_180)
  loc_188CDC8:   var_194 = var_214 & var_168 
  loc_188CDF2:   unk_430AEB.Execute CStr(var_194 & " And (ExpSheet.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or ExpSheet.LOGSITE_CODE='HO')"), -1, var_16C
  loc_188CDFD:   Set var_90 = var_16C
  loc_188CE15: End If
  loc_188CE29: If (var_90.RecordCount > 0) Then
  loc_188CE2F:   var_158 = "Amount"
  loc_188CE4B:   var_168 = CVar(var_90.Fields.Item(var_158)) 'Address
  loc_188CE52:   Proc_6_39_E7D3A0(var_194)
  loc_188CE5A:   var_180 = 0
  loc_188CE6C:   If CBool(var_194 <> var_180) Then
  loc_188CE72:     Set var_304 = var_8C 
  loc_188CE81:     var_304.AddNew var_158, var_180
  loc_188CE89:     var_158 = "Amount"
  loc_188CEA5:     var_168 = CVar(var_90.Fields.Item(var_158)) 'Address
  loc_188CEAC:     Proc_6_39_E7D3A0(var_194, var_168)
  loc_188CEB1:     var_1A4 = "MISC. PAY: "
  loc_188CEC0:     var_180 = "0.00"
  loc_188CED9:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188CEFD:     var_304.Fields.Item("SMSSTR").Value = var_194 & " And (ExpSheet.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or ExpSheet.LOGSITE_CODE='HO')"
  loc_188CF23:     var_304.Update var_158, var_180
  loc_188CF2A:     Set var_304 = Nothing 
  loc_188CF2E:   End If
  loc_188CF2E: End If
  loc_188CF31: Set var_308 = var_8C 
  loc_188CF40: var_308.AddNew var_158, var_180
  loc_188CF45: var_180 = "COMPANY:-"
  loc_188CF4E: var_158 = "SMSSTR"
  loc_188CF5A: var_16C = var_308.Fields
  loc_188CF6A: var_16C.Item(var_158).Value = var_180
  loc_188CF81: var_308.Update var_158, var_180
  loc_188CF88: Set var_308 = Nothing 
  loc_188CF99: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188CFA1: var_158 = arg_C
  loc_188CFA9: Proc_6_7_F26918(var_168, var_158, var_180, var_214, -1)
  loc_188CFB5: var_1A4 = " and p.modeset='S' AND P.RESTCODE='"
  loc_188CFCD: var_1F4 = var_16C & var_168 & var_1A4 & CVar(MemVar_1F95070) & "FOM' and PY.FieldType='P'  and P.PayType='Company' and P.Vtype<>'CHK' Group By P.VTYPE,P.PayType" 
  loc_188CFDB: unk_430AEB.Execute CStr(var_1F4), 1, var_1A4
  loc_188CFE6: Set var_94 = var_16C
  loc_188D012: If (var_94.RecordCount > 0) Then
  loc_188D015:   ' Referenced from: 188D0E1
  loc_188D024:   If Not(var_94.EOF) Then
  loc_188D02A:     Set var_30C = var_8C 
  loc_188D039:     var_30C.AddNew var_158, var_180
  loc_188D041:     var_158 = "Amount"
  loc_188D04D:     var_16C = var_94.Fields
  loc_188D05A:     var_1A4 = "FOM: "
  loc_188D069:     var_180 = "0.00"
  loc_188D077:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188D086:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188D0AA:     var_30C.Fields.Item("SMSSTR").Value = var_16C & var_168 & var_1A4 & CVar(MemVar_1F95070)
  loc_188D0CE:     var_30C.Update var_158, var_180
  loc_188D0D5:     Set var_30C = Nothing 
  loc_188D0DC:     var_94.MoveNext
  loc_188D0E1:     GoTo loc_188D015
  loc_188D0E4:   End If
  loc_188D0E4: End If
  loc_188D100: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F95078 & "BANQ','" & MemVar_1F95078 & "ODC') AND P.VDate =") 'String
  loc_188D106: var_158 = arg_C
  loc_188D10E: Proc_6_7_F26918(var_168, var_158, var_194)
  loc_188D144: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(1 & var_168)
  loc_188D154: unk_430AEB.Execute var_144 & " And P.PayType='Company' Group By P.VTYPE,P.PayType", var_168, -1
  loc_188D15F: Set var_C0 = var_16C
  loc_188D183: If (var_C0.RecordCount > 0) Then
  loc_188D186:   ' Referenced from: 188D25F
  loc_188D195:   If Not(var_C0.EOF) Then
  loc_188D19B:     Set var_310 = var_8C 
  loc_188D1AA:     var_310.AddNew var_158, var_180
  loc_188D1B2:     var_158 = "Amount"
  loc_188D1BE:     var_16C = var_C0.Fields
  loc_188D1CE:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188D1D5:     Proc_6_39_E7D3A0(var_194, var_168, var_16C)
  loc_188D1DA:     var_1A4 = "BANQ: "
  loc_188D1E9:     var_180 = "0.00"
  loc_188D202:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188D226:     var_310.Fields.Item("SMSSTR").Value = var_1F4
  loc_188D24C:     var_310.Update var_158, var_180
  loc_188D253:     Set var_310 = Nothing 
  loc_188D25A:     var_C0.MoveNext
  loc_188D25F:     GoTo loc_188D186
  loc_188D262:   End If
  loc_188D262: End If
  loc_188D265: var_9C = vbNullString
  loc_188D27C: var_144 = "SELECT P.VType,P.PayType,Max(D.Name) DEPARTMENT,Sum(P.AmtCr-P.AmtDr) Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.LogSite_Code='" & MemVar_1F95078
  loc_188D289: var_158 = arg_C
  loc_188D291: Proc_6_7_F26918(var_168, var_158, CVar(var_144 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE ="), var_1F4, -1)
  loc_188D29D: var_180 = " and P.PAYTYPE ='Company' Group By P.VType,P.PayType"
  loc_188D2B0: unk_430AEB.Execute CStr(var_16C & var_168 & var_180), 1, var_1A4
  loc_188D2BB: Set var_10C = var_16C
  loc_188D2E9: If (var_10C.RecordCount > 0) Then
  loc_188D2EC:   ' Referenced from: 188D409
  loc_188D2FB:   If Not(var_10C.EOF) Then
  loc_188D301:     Set var_314 = var_8C 
  loc_188D310:     var_314.AddNew var_158, var_180
  loc_188D318:     var_1A4 = "Amount"
  loc_188D33B:     Proc_6_39_E7D3A0(var_214, CVar(var_10C.Fields.Item(var_1A4)))
  loc_188D343:     var_158 = "Department"
  loc_188D35F:     var_168 = CVar(var_10C.Fields.Item(var_158)) 'Address
  loc_188D376:     var_180 = ": "
  loc_188D37B:     var_1D4 = (Ucase(CVar(Proc_6_38_E69628(var_168, var_1A4))) + var_180)
  loc_188D3A2:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188D3C6:     var_314.Fields.Item("SMSSTR").Value = 1 & var_214 & " And (LOGSITE_CODE='" & CVar(MemVar_1F95078)
  loc_188D3F6:     var_314.Update var_158, var_180
  loc_188D3FD:     Set var_314 = Nothing 
  loc_188D404:     var_10C.MoveNext
  loc_188D409:     GoTo loc_188D2EC
  loc_188D40C:   End If
  loc_188D40C: End If
  loc_188D40F: Set var_318 = var_8C 
  loc_188D41E: var_318.AddNew var_158, var_180
  loc_188D423: var_180 = "HOLD:-"
  loc_188D42C: var_158 = "SMSSTR"
  loc_188D438: var_16C = var_318.Fields
  loc_188D448: var_16C.Item(var_158).Value = var_180
  loc_188D45F: var_318.Update var_158, var_180
  loc_188D466: Set var_318 = Nothing 
  loc_188D47D: var_180 = "SELECT P.VTYPE,P.PayType,Sum(p.AmtCr) As Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188D485: var_158 = arg_C
  loc_188D48D: Proc_6_7_F26918(var_168, var_158, var_180, var_214, -1)
  loc_188D4B1: var_1F4 = var_16C & var_168 & " and p.modeset='S'AND P.RESTCODE='" & CVar(MemVar_1F95070) & "FOM' and PY.FieldType='P'  and P.PayType='Hold' and P.Vtype<>'CHK' Group by P.VTYPE,P.PayType" 
  loc_188D4BF: unk_430AEB.Execute CStr(var_1F4), CDbl(0), 1
  loc_188D4CA: Set var_94 = var_16C
  loc_188D4F6: If (var_94.RecordCount > 0) Then
  loc_188D4F9:   ' Referenced from: 188D5C5
  loc_188D508:   If Not(var_94.EOF) Then
  loc_188D50E:     Set var_31C = var_8C 
  loc_188D51D:     var_31C.AddNew var_158, var_180
  loc_188D525:     var_158 = "Amount"
  loc_188D531:     var_16C = var_94.Fields
  loc_188D53E:     var_1A4 = "FOM: "
  loc_188D54D:     var_180 = "0.00"
  loc_188D55B:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188D56A:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188D58E:     var_31C.Fields.Item("SMSSTR").Value = var_16C & var_168 & " and p.modeset='S'AND P.RESTCODE='" & CVar(MemVar_1F95070)
  loc_188D5B2:     var_31C.Update var_158, var_180
  loc_188D5B9:     Set var_31C = Nothing 
  loc_188D5C0:     var_94.MoveNext
  loc_188D5C5:     GoTo loc_188D4F9
  loc_188D5C8:   End If
  loc_188D5C8: End If
  loc_188D5E4: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F95078 & "BANQ','" & MemVar_1F95078 & "ODC') AND P.VDate =") 'String
  loc_188D5EA: var_158 = arg_C
  loc_188D5F2: Proc_6_7_F26918(var_168, var_158, var_194, 1)
  loc_188D628: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) AS Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(var_1A4 & var_168)
  loc_188D638: unk_430AEB.Execute var_144 & " And P.PayType='Hold' Group By P.VType,P.PayType", var_168, -1
  loc_188D643: Set var_C0 = var_16C
  loc_188D667: If (var_C0.RecordCount > 0) Then
  loc_188D66A:   ' Referenced from: 188D743
  loc_188D679:   If Not(var_C0.EOF) Then
  loc_188D67F:     Set var_320 = var_8C 
  loc_188D68E:     var_320.AddNew var_158, var_180
  loc_188D696:     var_158 = "Amount"
  loc_188D6A2:     var_16C = var_C0.Fields
  loc_188D6B2:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188D6B9:     Proc_6_39_E7D3A0(var_194, var_168, var_16C)
  loc_188D6BE:     var_1A4 = "BANQ: "
  loc_188D6CD:     var_180 = "0.00"
  loc_188D6E6:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188D70A:     var_320.Fields.Item("SMSSTR").Value = var_1F4
  loc_188D730:     var_320.Update var_158, var_180
  loc_188D737:     Set var_320 = Nothing 
  loc_188D73E:     var_C0.MoveNext
  loc_188D743:     GoTo loc_188D66A
  loc_188D746:   End If
  loc_188D746: End If
  loc_188D749: var_9C = vbNullString
  loc_188D760: var_144 = "SELECT P.VType,P.PayType,Max(D.Name) DEPARTMENT,Sum(P.AmtCr-P.AmtDr) Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.LogSite_Code='" & MemVar_1F95078
  loc_188D76D: var_158 = arg_C
  loc_188D775: Proc_6_7_F26918(var_168, var_158, CVar(var_144 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE ="), var_1F4, -1)
  loc_188D781: var_180 = " and P.PAYTYPE ='Hold' Group By P.VType,P.PayType"
  loc_188D786: var_1D4 = var_16C & var_168 & var_180 
  loc_188D794: unk_430AEB.Execute CStr(var_1D4), 1, var_1A4
  loc_188D79F: Set var_10C = var_16C
  loc_188D7CD: If (var_10C.RecordCount > 0) Then
  loc_188D7D0:   ' Referenced from: 188D8ED
  loc_188D7DF:   If Not(var_10C.EOF) Then
  loc_188D7E5:     Set var_324 = var_8C 
  loc_188D7F4:     var_324.AddNew var_158, var_180
  loc_188D81F:     Proc_6_39_E7D3A0(var_214, CVar(var_10C.Fields.Item("Amount")))
  loc_188D827:     var_158 = "Department"
  loc_188D843:     var_168 = CVar(var_10C.Fields.Item(var_158)) 'Address
  loc_188D85A:     var_180 = ": "
  loc_188D85F:     var_1D4 = (Ucase(CVar(Proc_6_38_E69628(var_168, var_1D4))) + var_180)
  loc_188D872:     var_240 = "0.00"
  loc_188D886:     var_264 = (1 + Format(var_214, var_240))
  loc_188D8AA:     var_324.Fields.Item("SMSSTR").Value = 1 & var_214 & " And (LOGSITE_CODE='" & CVar(MemVar_1F95078)
  loc_188D8DA:     var_324.Update var_158, var_180
  loc_188D8E1:     Set var_324 = Nothing 
  loc_188D8E8:     var_10C.MoveNext
  loc_188D8ED:     GoTo loc_188D7D0
  loc_188D8F0:   End If
  loc_188D8F0: End If
  loc_188D8F3: Set var_328 = var_8C 
  loc_188D902: var_328.AddNew var_158, var_180
  loc_188D907: var_180 = "CHEQUE:-"
  loc_188D910: var_158 = "SMSSTR"
  loc_188D91C: var_16C = var_328.Fields
  loc_188D92C: var_16C.Item(var_158).Value = var_180
  loc_188D943: var_328.Update var_158, var_180
  loc_188D94A: Set var_328 = Nothing 
  loc_188D961: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) As Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188D969: var_158 = arg_C
  loc_188D971: Proc_6_7_F26918(var_168, var_158, var_180, var_214, -1)
  loc_188D995: var_1F4 = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F95070) & "FOM' and PY.FieldType='P'  and P.PayType='Cheque' and P.Vtype<>'CHK' Group By P.VTYPE,P.PayType" 
  loc_188D9A3: unk_430AEB.Execute CStr(var_1F4), CDbl(0), 1
  loc_188D9AE: Set var_94 = var_16C
  loc_188D9DA: If (var_94.RecordCount > 0) Then
  loc_188D9DD:   ' Referenced from: 188DAA9
  loc_188D9EC:   If Not(var_94.EOF) Then
  loc_188D9F2:     Set var_32C = var_8C 
  loc_188DA01:     var_32C.AddNew var_158, var_180
  loc_188DA09:     var_158 = "Amount"
  loc_188DA15:     var_16C = var_94.Fields
  loc_188DA22:     var_1A4 = "FOM: "
  loc_188DA31:     var_180 = "0.00"
  loc_188DA3F:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188DA4E:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188DA72:     var_32C.Fields.Item("SMSSTR").Value = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F95070)
  loc_188DA96:     var_32C.Update var_158, var_180
  loc_188DA9D:     Set var_32C = Nothing 
  loc_188DAA4:     var_94.MoveNext
  loc_188DAA9:     GoTo loc_188D9DD
  loc_188DAAC:   End If
  loc_188DAAC: End If
  loc_188DAC8: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F95078 & "BANQ','" & MemVar_1F95078 & "ODC') AND P.VDate =") 'String
  loc_188DACE: var_158 = arg_C
  loc_188DAD6: Proc_6_7_F26918(var_168, var_158, var_194, 1)
  loc_188DB0C: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(var_1A4 & var_168)
  loc_188DB1C: unk_430AEB.Execute var_144 & " And P.PayType='Cheque' Group By P.VTYPE,P.PayType", var_168, -1
  loc_188DB27: Set var_C0 = var_16C
  loc_188DB4B: If (var_C0.RecordCount > 0) Then
  loc_188DB4E:   ' Referenced from: 188DC27
  loc_188DB5D:   If Not(var_C0.EOF) Then
  loc_188DB63:     Set var_330 = var_8C 
  loc_188DB72:     var_330.AddNew var_158, var_180
  loc_188DB7A:     var_158 = "Amount"
  loc_188DB86:     var_16C = var_C0.Fields
  loc_188DB96:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188DB9D:     Proc_6_39_E7D3A0(var_194, var_168, var_16C)
  loc_188DBA2:     var_1A4 = "BANQ: "
  loc_188DBB1:     var_180 = "0.00"
  loc_188DBCA:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188DBEE:     var_330.Fields.Item("SMSSTR").Value = var_1F4
  loc_188DC14:     var_330.Update var_158, var_180
  loc_188DC1B:     Set var_330 = Nothing 
  loc_188DC22:     var_C0.MoveNext
  loc_188DC27:     GoTo loc_188DB4E
  loc_188DC2A:   End If
  loc_188DC2A: End If
  loc_188DC2D: var_9C = vbNullString
  loc_188DC44: var_144 = "SELECT P.VType,P.PayType,Max(D.Name)DEPARTMENT,Sum(P.AmtCr-P.AmtDr) AS Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.Vtype Not In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F95078
  loc_188DC51: var_158 = arg_C
  loc_188DC59: Proc_6_7_F26918(var_168, var_158, CVar(var_144 & "') And PayType='Cheque' AND VDate="), var_2A8, -1)
  loc_188DC65: var_180 = " And P.LogSite_Code='"
  loc_188DC6A: var_1D4 = var_16C & var_168 & var_180 
  loc_188DC71: var_1A4 = CVar(MemVar_1F95078) 'String
  loc_188DC7D: var_214 = var_1D4 & var_1A4 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE =" 
  loc_188DC8C: Proc_6_7_F26918(var_240, arg_C, var_214, 1)
  loc_188DCAB: unk_430AEB.Execute CStr(var_1A4 & var_240 & " and P.PAYTYPE ='Cheque' Group By P.VTYPE,P.PayType"), var_1D4, var_168
  loc_188DCB6: Set var_10C = var_16C
  loc_188DCEE: If (var_10C.RecordCount > 0) Then
  loc_188DCF1:   ' Referenced from: 188DE0E
  loc_188DD00:   If Not(var_10C.EOF) Then
  loc_188DD06:     Set var_334 = var_8C 
  loc_188DD15:     var_334.AddNew var_158, var_180
  loc_188DD39:     var_1F4 = CVar(var_10C.Fields.Item("Amount")) 'Address
  loc_188DD40:     Proc_6_39_E7D3A0(var_214)
  loc_188DD48:     var_158 = "Department"
  loc_188DD54:     var_16C = var_10C.Fields
  loc_188DD64:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188DD7B:     var_180 = ": "
  loc_188DD80:     var_1D4 = (Ucase(CVar(Proc_6_38_E69628(var_168))) + var_180)
  loc_188DDA7:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188DDCB:     var_334.Fields.Item("SMSSTR").Value = "Amount" & "0.00" & " and P.PAYTYPE ='Cheque' Group By P.VTYPE,P.PayType"
  loc_188DDFB:     var_334.Update var_158, var_180
  loc_188DE02:     Set var_334 = Nothing 
  loc_188DE09:     var_10C.MoveNext
  loc_188DE0E:     GoTo loc_188DCF1
  loc_188DE11:   End If
  loc_188DE11: End If
  loc_188DE25: var_144 = "Select VType,PayType,Sum(AmtCr) Amount From PayCharge Where Vtype In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F95078
  loc_188DE32: var_158 = arg_C
  loc_188DE3A: Proc_6_7_F26918(var_168, var_158, CVar(var_144 & "') And PayType='Cheque' AND VDate="), var_1F4, -1)
  loc_188DE42: var_1B4 = var_16C & var_168 
  loc_188DE46: var_180 = " Group By VType,PayType"
  loc_188DE4B: var_1D4 = var_1B4 & var_180 
  loc_188DE59: unk_430AEB.Execute CStr(var_1D4), 1, var_1D4
  loc_188DE64: Set var_10C = var_16C
  loc_188DE92: If (var_10C.RecordCount > 0) Then
  loc_188DE98:   var_10C.MoveFirst
  loc_188DE9D:   ' Referenced from: 188DFBD
  loc_188DEAC:   If Not(var_10C.EOF) Then
  loc_188DEB2:     Set var_338 = var_8C 
  loc_188DEC1:     var_338.AddNew var_158, var_180
  loc_188DEC9:     var_158 = "PayType"
  loc_188DEE5:     var_168 = CVar(var_10C.Fields.Item(var_158)) 'Address
  loc_188DEF4:     var_180 = "Amount"
  loc_188DF17:     Proc_6_39_E7D3A0(var_1B4, CVar(var_10C.Fields.Item(var_180)))
  loc_188DF2D:     var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_168), &H14)) 'String
  loc_188DF53:     var_240 = (1 + Format(var_1B4, "0.00"))
  loc_188DF77:     var_338.Fields.Item("SMSSTR").Value = "0.00"
  loc_188DFAA:     var_338.Update var_158, var_180
  loc_188DFB1:     Set var_338 = Nothing 
  loc_188DFB8:     var_10C.MoveNext
  loc_188DFBD:     GoTo loc_188DE9D
  loc_188DFC0:   End If
  loc_188DFC0: End If
  loc_188DFC3: Set var_33C = var_8C 
  loc_188DFD2: var_33C.AddNew var_158, var_180
  loc_188DFD7: var_180 = "CREDIT CARD:-"
  loc_188DFE0: var_158 = "SMSSTR"
  loc_188DFEC: var_16C = var_33C.Fields
  loc_188DFFC: var_16C.Item(var_158).Value = var_180
  loc_188E013: var_33C.Update var_158, var_180
  loc_188E01A: Set var_33C = Nothing 
  loc_188E031: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188E039: var_158 = arg_C
  loc_188E041: Proc_6_7_F26918(var_168, var_158, var_180, var_214, -1)
  loc_188E065: var_1F4 = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F95070) & "FOM' and PY.FieldType='P'  and P.PayType='Credit Card' and P.Vtype<>'CHK' Group By P.VTYPE,P.PAYTYPE" 
  loc_188E073: unk_430AEB.Execute CStr(var_1F4), CDbl(0), 1
  loc_188E07E: Set var_94 = var_16C
  loc_188E0AA: If (var_94.RecordCount > 0) Then
  loc_188E0AD:   ' Referenced from: 188E179
  loc_188E0BC:   If Not(var_94.EOF) Then
  loc_188E0C2:     Set var_340 = var_8C 
  loc_188E0D1:     var_340.AddNew var_158, var_180
  loc_188E0D9:     var_158 = "Amount"
  loc_188E0E5:     var_16C = var_94.Fields
  loc_188E0F2:     var_1A4 = "FOM: "
  loc_188E101:     var_180 = "0.00"
  loc_188E10F:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188E11E:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188E142:     var_340.Fields.Item("SMSSTR").Value = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F95070)
  loc_188E166:     var_340.Update var_158, var_180
  loc_188E16D:     Set var_340 = Nothing 
  loc_188E174:     var_94.MoveNext
  loc_188E179:     GoTo loc_188E0AD
  loc_188E17C:   End If
  loc_188E17C: End If
  loc_188E198: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F95078 & "BANQ','" & MemVar_1F95078 & "ODC') AND P.VDate =") 'String
  loc_188E19E: var_158 = arg_C
  loc_188E1A6: Proc_6_7_F26918(var_168, var_158, var_194, 1)
  loc_188E1DC: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(var_1A4 & var_168)
  loc_188E1EC: unk_430AEB.Execute var_144 & " And P.PayType='Credit Card' Group By P.VTYPE,P.PAYTYPE", var_168, -1
  loc_188E1F7: Set var_C0 = var_16C
  loc_188E21B: If (var_C0.RecordCount > 0) Then
  loc_188E21E:   ' Referenced from: 188E2F7
  loc_188E22D:   If Not(var_C0.EOF) Then
  loc_188E233:     Set var_344 = var_8C 
  loc_188E242:     var_344.AddNew var_158, var_180
  loc_188E24A:     var_158 = "Amount"
  loc_188E256:     var_16C = var_C0.Fields
  loc_188E266:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188E26D:     Proc_6_39_E7D3A0(var_194, var_168, var_16C)
  loc_188E272:     var_1A4 = "BANQ: "
  loc_188E281:     var_180 = "0.00"
  loc_188E29A:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188E2BE:     var_344.Fields.Item("SMSSTR").Value = var_1F4
  loc_188E2E4:     var_344.Update var_158, var_180
  loc_188E2EB:     Set var_344 = Nothing 
  loc_188E2F2:     var_C0.MoveNext
  loc_188E2F7:     GoTo loc_188E21E
  loc_188E2FA:   End If
  loc_188E2FA: End If
  loc_188E2FD: var_9C = vbNullString
  loc_188E314: var_144 = "SELECT P.VType,P.PayType,Max(D.Name) DEPARTMENT,Sum(P.AmtCr-P.AmtDr) Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.Vtype Not In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F95078
  loc_188E329: var_194 = CVar(var_144 & "') And P.LogSite_Code='" & MemVar_1F95078 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE =") 'String
  loc_188E32F: var_158 = arg_C
  loc_188E337: Proc_6_7_F26918(var_168, var_158, var_194, var_1F4, -1)
  loc_188E343: var_180 = " and P.PAYTYPE ='Credit Card' Group By P.VType,P.PayType"
  loc_188E356: unk_430AEB.Execute CStr(var_16C & var_168 & var_180), 1, var_1A4
  loc_188E361: Set var_10C = var_16C
  loc_188E393: If (var_10C.RecordCount > 0) Then
  loc_188E396:   ' Referenced from: 188E4B3
  loc_188E3A5:   If Not(var_10C.EOF) Then
  loc_188E3AB:     Set var_348 = var_8C 
  loc_188E3BA:     var_348.AddNew var_158, var_180
  loc_188E3DE:     var_1F4 = CVar(var_10C.Fields.Item("Amount")) 'Address
  loc_188E3E5:     Proc_6_39_E7D3A0(var_214, var_1F4)
  loc_188E3ED:     var_158 = "Department"
  loc_188E3F9:     var_16C = var_10C.Fields
  loc_188E409:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188E420:     var_180 = ": "
  loc_188E425:     var_1D4 = (Ucase(CVar(Proc_6_38_E69628(var_168, var_214))) + var_180)
  loc_188E44C:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188E470:     var_348.Fields.Item("SMSSTR").Value = "Amount" & "0.00" & " and P.PAYTYPE ='Cheque' Group By P.VTYPE,P.PayType"
  loc_188E4A0:     var_348.Update var_158, var_180
  loc_188E4A7:     Set var_348 = Nothing 
  loc_188E4AE:     var_10C.MoveNext
  loc_188E4B3:     GoTo loc_188E396
  loc_188E4B6:   End If
  loc_188E4B6: End If
  loc_188E4CA: var_144 = "Select VType,PayType,Sum(AmtCr) As Amount From PayCharge Where Vtype In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F95078
  loc_188E4D7: var_158 = arg_C
  loc_188E4DF: Proc_6_7_F26918(var_168, var_158, CVar(var_144 & "') And PayType='Credit Card' AND VDate="), var_1F4, -1)
  loc_188E4E7: var_1B4 = var_16C & var_168 
  loc_188E4EB: var_180 = " Group By VType,PayType"
  loc_188E4F0: var_1D4 = var_1B4 & var_180 
  loc_188E4FE: unk_430AEB.Execute CStr(var_1D4), 1, var_1D4
  loc_188E509: Set var_10C = var_16C
  loc_188E537: If (var_10C.RecordCount > 0) Then
  loc_188E53D:   var_10C.MoveFirst
  loc_188E542:   ' Referenced from: 188E662
  loc_188E551:   If Not(var_10C.EOF) Then
  loc_188E557:     Set var_34C = var_8C 
  loc_188E566:     var_34C.AddNew var_158, var_180
  loc_188E56E:     var_158 = "PayType"
  loc_188E599:     var_180 = "Amount"
  loc_188E5BC:     Proc_6_39_E7D3A0(var_1B4, CVar(var_10C.Fields.Item(var_180)))
  loc_188E5D2:     var_214 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C.Fields.Item(var_158))), &H14)) 'String
  loc_188E5F8:     var_240 = (1 + Format(var_1B4, "0.00"))
  loc_188E61C:     var_34C.Fields.Item("SMSSTR").Value = "0.00"
  loc_188E64F:     var_34C.Update var_158, var_180
  loc_188E656:     Set var_34C = Nothing 
  loc_188E65D:     var_10C.MoveNext
  loc_188E662:     GoTo loc_188E542
  loc_188E665:   End If
  loc_188E665: End If
  loc_188E679: If (var_8C.RecordCount > 0) Then
  loc_188E67F:   var_8C.MoveFirst
  loc_188E684:   ' Referenced from: 188E714
  loc_188E693:   If Not(var_8C.EOF) Then
  loc_188E6C6:     var_194 = (CVar(var_140) + var_8C.Fields.Item("SMSSTR").Value)
  loc_188E6DA:     var_1D4 = (CVar(var_10C.Fields.Item(CVar(var_140))) + Chr(&HD))
  loc_188E6EE:     var_214 = ("0.00" + Chr(&HA))
  loc_188E6F3:     var_140 = CStr(var_214)
  loc_188E70F:     var_8C.MoveNext
  loc_188E714:     GoTo loc_188E684
  loc_188E717:   End If
  loc_188E71A:   var_88 = var_140
  loc_188E71D: End If
  loc_188E722: Set var_8C = Nothing
  loc_188E72A: Set var_90 = Nothing
  loc_188E732: Set var_94 = Nothing
  loc_188E73A: Set var_C0 = Nothing
  loc_188E742: Set var_10C = Nothing
  loc_188E74A: Set var_BC = Nothing
  loc_188E74D: Exit Sub
  loc_188E74E: ' Referenced from: 188C0FC
  loc_188E756: Set var_16C = Err()
  loc_188E75C: Call 0.Method_arg_2C (var_144, 1)
  loc_188E764: var_88 = var_144
  loc_188E76A: Exit Sub
End Sub

Public Sub Proc_233_14_156570C(arg_C) '156570C
  'Data Table: 430AD8
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Recordset15
  Dim var_CC As Fields15
  Dim var_9C As Double
  Dim unk_430AEB As Connection15
  Dim var_90 As Recordset15
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_16C As String
  Dim var_94 As Recordset15
  Dim var_E0 As Variant
  Dim var_190 As Recordset15
  Dim var_194 As Fields15
  Dim var_138 As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As Fields15
  Dim var_1C4 As Recordset15
  Dim var_1C8 As Recordset15
  Dim var_1CC As Recordset15
  Dim var_254 As Recordset15
  Dim var_258 As Recordset15
  Dim var_25C As Recordset15
  Dim var_8C As Recordset15
  loc_15646D0: Set var_8C = New 
  loc_15646DB: Set var_8C = Proc_233_12_EF5BE4(var_8C)
  loc_15646E1: Set var_A8 = var_8C 
  loc_15646F0: Me.Recordset15.AddNew var_B8, var_C8
  loc_156471A: var_A8.Fields.Item("mLine").Value = "GF"
  loc_1564726: var_C8 = "BANQUET SALE:-"
  loc_156474B: var_A8.Fields.Item("SMSSTR").Value = "GF"
  loc_1564757: var_C8 = "*"
  loc_1564760: var_B8 = "Mark"
  loc_156476C: var_CC = var_A8.Fields
  loc_156477C: var_CC.Item(var_B8).Value = var_C8
  loc_1564793: var_A8.Update var_B8, var_C8
  loc_156479A: Set var_A8 = Nothing 
  loc_15647A1: var_9C = CDbl(0)
  loc_15647BA: unk_430AEB.Execute "SELECT DISTINCT CATTYPE AS NAME FROM ITEMCATMAST WHERE (REVCODE IS NOT NULL AND REVCODE<>'') AND (CATTYPE<>'' AND CATTYPE IS NOT NULL) Order By CATTYPE", var_E0, -1
  loc_15647C5: Set var_90 = var_CC
  loc_15647E2: If (var_90.RecordCount > 0) Then
  loc_15647E8:   var_90.MoveFirst
  loc_15647ED:   ' Referenced from: 1564D78
  loc_15647FC:   If Not(var_90.EOF) Then
  loc_1564811:     var_CC = var_90.Fields
  loc_1564821:     var_E0 = var_CC.Item("Name").Value
  loc_156483B:     If (var_E0 = "Food") Then
  loc_156485B:       Proc_6_7_F26918(var_E0, arg_C, "select Sum(aa.Tot) as PAY2 from (select sum(Amount) as Tot from SunTranH where vdate=", var_18C)
  loc_1564863:       var_F8 = -1 & var_E0 
  loc_1564867:       var_108 = " and vtype='IDC' and DispName='Total' Union select sum(Amount) as Tot from (HallStock Inner join itemmast on itemmast.code=hallstock.item And itemmast.Restcode=hallstock.RestCode) Inner join ItemCatMast on ItemCatMast.Code=itemmast.ItemCatCode where ItemCatMast.CatType='Food' and vdate="
  loc_156487B:       Proc_6_7_F26918(var_138, arg_C, var_F8 & var_108)
  loc_156488C:       var_168 = var_CC & var_138 & "  and vtype='IDC') as aa" 
  loc_156489A:       unk_430AEB.Execute CStr(var_168), var_CC, var_9C
  loc_15648A5:       Set var_94 = var_CC
  loc_15648C2:       var_B8 = "PAY2"
  loc_15648DE:       var_E0 = CVar(var_94.Fields.Item(var_B8)) 'Address
  loc_15648E5:       Proc_6_39_E7D3A0(var_F8)
  loc_15648ED:       var_C8 = 0
  loc_15648FF:       If CBool(var_F8 <> var_C8) Then
  loc_1564905:         Set var_190 = var_8C 
  loc_1564914:         var_190.AddNew var_B8, var_C8
  loc_156493E:         var_190.Fields.Item("mLine").Value = vbNullString
  loc_1564984:         var_194 = var_94.Fields
  loc_156499B:         Proc_6_39_E7D3A0(var_168, CVar(var_194.Item("PAY2")))
  loc_15649AD:         var_F8 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))) 'String
  loc_15649C0:         var_138 = (StrConv(var_F8, 3, 0) + ": ")
  loc_15649D3:         var_18C = "0.00"
  loc_15649E7:         var_1B8 = (1 + Format(var_168, var_18C))
  loc_1564A0B:         var_190.Fields.Item("SMSSTR").Value = var_1B8
  loc_1564A33:         var_C8 = "*"
  loc_1564A3C:         var_B8 = "Mark"
  loc_1564A58:         var_190.Fields.Item(var_B8).Value = var_C8
  loc_1564A6F:         var_190.Update var_B8, var_C8
  loc_1564AA1:         Proc_6_39_E7D3A0(var_F8, CVar(var_94.Fields.Item("PAY2")), CVar(var_9C))
  loc_1564AA9:         var_118 = (1 + var_F8)
  loc_1564AAE:         var_9C = CSng(StrConv(var_F8, 3, 0))
  loc_1564ABF:         Set var_190 = Nothing 
  loc_1564AC3:       End If
  loc_1564AC6:       var_90.MoveNext
  loc_1564ACE:     Else
  loc_1564ADB:       var_C8 = "Select sum(Amount) as PAY2 from (HallStock Inner join itemmast on itemmast.code=hallstock.item And itemmast.Restcode=hallstock.RestCode) Inner join ItemCatMast on ItemCatMast.Code=itemmast.ItemCatCode where ItemCatMast.CatType='"
  loc_1564B0A:       var_F8 = var_C8 & var_90.Fields.Item("Name").Value 
  loc_1564B22:       Proc_6_7_F26918(var_138, arg_C, var_F8 & "' and vdate=", var_18C, -1)
  loc_1564B33:       var_168 = var_194 & var_138 & " and vtype='IDC'" 
  loc_1564B41:       unk_430AEB.Execute CStr(var_168), var_9C, var_138
  loc_1564B4C:       Set var_94 = var_194
  loc_1564B6F:       var_B8 = "PAY2"
  loc_1564B92:       Proc_6_39_E7D3A0(var_F8, CVar(var_94.Fields.Item(var_B8)))
  loc_1564B9A:       var_C8 = 0
  loc_1564BAC:       If CBool(var_F8 <> var_C8) Then
  loc_1564BB2:         Set var_1C4 = var_8C 
  loc_1564BC1:         var_1C4.AddNew var_B8, var_C8
  loc_1564BEB:         var_1C4.Fields.Item("mLine").Value = vbNullString
  loc_1564C48:         Proc_6_39_E7D3A0(var_168, CVar(var_94.Fields.Item("PAY2")))
  loc_1564C5A:         var_F8 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))) 'String
  loc_1564C6D:         var_138 = (StrConv(var_F8, 3, 0) + ":   ")
  loc_1564C80:         var_18C = "0.00"
  loc_1564C94:         var_1B8 = (1 + Format(var_168, var_18C))
  loc_1564CA8:         var_1BC = var_1C4.Fields
  loc_1564CB8:         var_1BC.Item("SMSSTR").Value = var_1B8
  loc_1564CE0:         var_C8 = "*"
  loc_1564CE9:         var_B8 = "Mark"
  loc_1564D05:         var_1C4.Fields.Item(var_B8).Value = var_C8
  loc_1564D1C:         var_1C4.Update var_B8, var_C8
  loc_1564D37:         var_CC = var_94.Fields
  loc_1564D47:         var_E0 = CVar(var_CC.Item("PAY2")) 'Address
  loc_1564D4E:         Proc_6_39_E7D3A0(var_F8, var_E0, CVar(var_9C))
  loc_1564D56:         var_118 = (1 + var_F8)
  loc_1564D5B:         var_9C = CSng(StrConv(var_F8, 3, 0))
  loc_1564D6C:         Set var_1C4 = Nothing 
  loc_1564D70:       End If
  loc_1564D73:       var_90.MoveNext
  loc_1564D78:     End If
  loc_1564D78:     GoTo loc_15647ED
  loc_1564D7B:   End If
  loc_1564D7B: End If
  loc_1564D98: Proc_6_7_F26918(var_E0, arg_C, "select Sum(aa.Tot) as PAY2 from (select sum(Amount) as Tot from SunTranH where vdate=", var_18C, -1)
  loc_1564DA0: var_F8 = var_CC & var_E0 
  loc_1564DB8: Proc_6_7_F26918(var_138, arg_C, var_F8 & " and vtype='IDC' and DispName='Discount' Union select sum(DiscAmt) as Tot from HallStock where vdate=")
  loc_1564DD7: unk_430AEB.Execute CStr(var_9C & var_138 & "  and vtype='IDC') as aa"), var_138, var_E0
  loc_1564DE2: Set var_94 = var_CC
  loc_1564DFF: var_B8 = "PAY2"
  loc_1564E1B: var_E0 = CVar(var_94.Fields.Item(var_B8)) 'Address
  loc_1564E22: Proc_6_39_E7D3A0(var_F8)
  loc_1564E2A: var_C8 = 0
  loc_1564E3C: If CBool(var_F8 <> var_C8) Then
  loc_1564E42:   Set var_1C8 = var_8C 
  loc_1564E51:   var_1C8.AddNew var_B8, var_C8
  loc_1564E7B:   var_1C8.Fields.Item("mLine").Value = vbNullString
  loc_1564EAD:   Proc_6_39_E7D3A0(var_F8, CVar(var_94.Fields.Item("PAY2")))
  loc_1564EB9:   var_148 = CVar("Disc." & ": ") 'String
  loc_1564ED7:   var_138 = Format(var_F8, "0.00")
  loc_1564EDF:   var_168 = (1 + var_138)
  loc_1564F03:   var_1C8.Fields.Item("SMSSTR").Value = var_9C & var_138 & "  and vtype='IDC') as aa"
  loc_1564F20:   var_C8 = "*"
  loc_1564F29:   var_B8 = "Mark"
  loc_1564F45:   var_1C8.Fields.Item(var_B8).Value = var_C8
  loc_1564F5C:   var_1C8.Update var_B8, var_C8
  loc_1564F64:   var_C8 = CVar(var_9C) 'Double
  loc_1564F6B:   var_B8 = "PAY2"
  loc_1564F87:   var_E0 = CVar(var_94.Fields.Item(var_B8)) 'Address
  loc_1564F8E:   Proc_6_39_E7D3A0(var_F8, var_E0, var_C8)
  loc_1564F96:   var_118 = (1 - var_F8)
  loc_1564F9B:   var_9C = CSng("0.00")
  loc_1564FAA:   Set var_1C8 = Nothing 
  loc_1564FAE: End If
  loc_1564FB1: Set var_1CC = var_8C 
  loc_1564FC0: var_1CC.AddNew var_B8, var_C8
  loc_1564FEA: var_1CC.Fields.Item("mLine").Value = "GF"
  loc_1564FF6: var_C8 = "BANQUET TAXES:-"
  loc_156501B: var_1CC.Fields.Item("SMSSTR").Value = "GF"
  loc_1565027: var_C8 = "*"
  loc_1565030: var_B8 = "Mark"
  loc_156503C: var_CC = var_1CC.Fields
  loc_156504C: var_CC.Item(var_B8).Value = var_C8
  loc_1565063: var_1CC.Update var_B8, var_C8
  loc_156506A: Set var_1CC = Nothing 
  loc_1565092: unk_430AEB.Execute "SELECT Code,Name FROM Revmast WHERE  FieldType IN ('T') And Sundry<>'" & MemVar_1F95078 & "SCH'", var_E0, -1
  loc_156509D: Set var_90 = var_CC
  loc_15650C1: If (var_90.RecordCount > 0) Then
  loc_15650C4:   ' Referenced from: 156539A
  loc_15650D3:   If Not(var_90.EOF) Then
  loc_15650FA:     var_CC = var_90.Fields
  loc_156510A:     var_E0 = var_CC.Item("Code").Value
  loc_156511B:     var_118 = "SELECT SUM(AA.NETAMT) FROM (select SUM(aMOUNT) AS NETAMT from suntran where vtype in ('IDC') AND REVCODE='" & var_E0 & "' AND VDATE=" 
  loc_156512A:     Proc_6_7_F26918(var_138, arg_C, var_118, var_250, -1)
  loc_1565132:     var_148 = var_1BC & var_138 
  loc_156513B:     var_168 = var_148 & " Union select SUM(AMOUNT) AS NETAMT from suntranH where vtype in ('IDC') AND REVCODE='" 
  loc_1565181:     Proc_6_7_F26918(var_200, arg_C, var_168 & var_90.Fields.Item("Code").Value & "' AND VDATE=", var_CC)
  loc_15651A0:     unk_430AEB.Execute CStr(var_9C & var_200 & ") AS AA"), var_148, var_E0
  loc_15651AB:     Set var_94 = var_1BC
  loc_15651E1:     var_B8 = 0
  loc_1565205:     var_C8 = 0
  loc_1565217:     If CBool(var_94.Fields.Item(var_B8).Value <> var_C8) Then
  loc_156521D:       Set var_254 = var_8C 
  loc_156522C:       var_254.AddNew var_B8, var_C8
  loc_1565256:       var_254.Fields.Item("mLine").Value = "GF"
  loc_1565281:       var_E0 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_15652AC:       var_148 = CVar(var_94.Fields.Item(0)) 'Address
  loc_15652B3:       Proc_6_39_E7D3A0(var_168)
  loc_15652D8:       var_138 = (StrConv(CVar(Proc_6_38_E69628(var_E0)), 3, 0) + ": ")
  loc_15652FF:       var_1B8 = (1 + Format(var_168, "0.00"))
  loc_1565323:       var_254.Fields.Item("SMSSTR").Value = var_168 & var_90.Fields.Item("Code").Value & "' AND VDATE="
  loc_156534B:       var_C8 = vbNullString
  loc_1565354:       var_B8 = "Mark"
  loc_1565370:       var_254.Fields.Item(var_B8).Value = var_C8
  loc_1565387:       var_254.Update var_B8, var_C8
  loc_156538E:       Set var_254 = Nothing 
  loc_1565392:     End If
  loc_1565395:     var_90.MoveNext
  loc_156539A:     GoTo loc_15650C4
  loc_156539D:   End If
  loc_156539D: End If
  loc_15653A0: Set var_258 = var_8C 
  loc_15653AF: var_258.AddNew var_B8, var_C8
  loc_15653D9: var_258.Fields.Item("mLine").Value = "GF"
  loc_15653E5: var_C8 = "BANQUET COLLECTION:-"
  loc_156540A: var_258.Fields.Item("SMSSTR").Value = "GF"
  loc_1565416: var_C8 = "*"
  loc_156541F: var_B8 = "Mark"
  loc_156542B: var_CC = var_258.Fields
  loc_156543B: var_CC.Item(var_B8).Value = var_C8
  loc_1565452: var_258.Update var_B8, var_C8
  loc_1565459: Set var_258 = Nothing 
  loc_1565471: var_B8 = arg_C
  loc_1565479: Proc_6_7_F26918(var_E0, var_B8, CVar("WHERE P.RestCode IN ('" & MemVar_1F95078 & "BANQ') AND P.VDate ="))
  loc_15654A9: var_16C = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(1 & var_E0)
  loc_15654B9: unk_430AEB.Execute var_16C & " Group By P.VTYPE,P.PayType", var_E0, -1
  loc_15654C4: Set var_94 = var_CC
  loc_15654E8: If (var_94.RecordCount > 0) Then
  loc_15654EB:   ' Referenced from: 156561B
  loc_15654FA:   If Not(var_94.EOF) Then
  loc_1565500:     Set var_25C = var_8C 
  loc_156550F:     var_25C.AddNew var_B8, var_C8
  loc_1565517:     var_B8 = "PayType"
  loc_1565523:     var_CC = var_94.Fields
  loc_156553C:     var_16C = Proc_6_38_E69628(CVar(var_CC.Item(var_B8)), var_CC)
  loc_1565565:     Proc_6_39_E7D3A0(var_168, CVar(var_94.Fields.Item("Amount")))
  loc_1565585:     var_C8 = ": "
  loc_156558A:     var_138 = (StrConv(CVar(var_16C), 3, 0) + var_C8)
  loc_15655B1:     var_1B8 = (1 + Format(var_168, "0.00"))
  loc_15655D5:     var_25C.Fields.Item("SMSSTR").Value = var_168 & var_90.Fields.Item("Code").Value & "' AND VDATE="
  loc_1565608:     var_25C.Update var_B8, var_C8
  loc_156560F:     Set var_25C = Nothing 
  loc_1565616:     var_94.MoveNext
  loc_156561B:     GoTo loc_15654EB
  loc_156561E:   End If
  loc_156561E: End If
  loc_1565632: If (var_8C.RecordCount > 0) Then
  loc_1565638:   var_8C.MoveFirst
  loc_156563D:   ' Referenced from: 15656CD
  loc_156564C:   If Not(var_8C.EOF) Then
  loc_156567F:     var_F8 = (CVar(var_A4) + var_8C.Fields.Item("SMSSTR").Value)
  loc_1565693:     var_138 = (CVar(var_16C) + Chr(&HD))
  loc_15656A7:     var_168 = (var_138 + Chr(&HA))
  loc_15656AC:     var_A4 = CStr(var_168)
  loc_15656C8:     var_8C.MoveNext
  loc_15656CD:     GoTo loc_156563D
  loc_15656D0:   End If
  loc_15656D3:   var_88 = var_A4
  loc_15656D6: End If
  loc_15656DB: Set var_8C = Nothing
  loc_15656E3: Set var_90 = Nothing
  loc_15656EB: Set var_94 = Nothing
  loc_15656EE: Exit Sub
  loc_15656F7: Set var_CC = Err()
  loc_15656FD: Call 0.Method_arg_2C (var_16C, 1, var_138)
  loc_1565705: var_88 = var_16C
  loc_156570B: Exit Sub
End Sub

Public Sub Proc_233_15_15FBA2C(arg_C, arg_10) '15FBA2C
  'Data Table: 430AD8
  Dim var_8C As String
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_C8 As Recordset15
  loc_15FA648: var_8C = "Select Code,Name,IssDate,CardNo,Addr,Phone,ValidUpto,U_Name,MemberCode,RewardBal,RewardSale,RewardPoint,RedeemPoint From SmartCardRegistration Where Code='" & arg_C
  loc_15FA666: unk_430AEB.Execute var_8C & "' And LogSite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_15FA671: Set var_88 = var_BC
  loc_15FA699: If (var_88.RecordCount = 1) Then
  loc_15FA6C0:   unk_430AEB.Execute "Select GuestRegistrationMsg,RewardPointMsg,RedeemPointMsg from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_15FA6CB:   Set var_C4 = var_BC
  loc_15FA6EF:   If (var_C4.RecordCount > 0) Then
  loc_15FA701:     var_BC = var_C4.Fields
  loc_15FA729:     var_DC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Item("GuestRegistrationMsg")), var_BC))))
  loc_15FA76F:     var_E0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("RewardPointMsg"))))))
  loc_15FA7B5:     var_E4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_C4.Fields.Item("RedeemPointMsg"))))))
  loc_15FA7C4:   End If
  loc_15FA7CC:   If (arg_10 <> vbNullString) Then
  loc_15FA7D2:     var_D4 = var_E0
  loc_15FA7D8:     var_D8 = var_E4
  loc_15FA7DE:   Else
  loc_15FA7E1:     var_D4 = var_DC
  loc_15FA7E4:   End If
  loc_15FA7EE:   If (Len(var_D4) <> 0) Then
  loc_15FA83D:     var_D4 = Replace(var_D4, "<Registration Id>", CStr(Trim(CVar(var_88.Fields.Item("CardNo")))), 1, -1, 0)
  loc_15FA8AE:     var_D4 = Replace(var_D4, "<Registration Date>", CStr(Format(CVar(var_88.Fields.Item("IssDate")), "dd/mm/yy")), 1, -1, 0)
  loc_15FA90C:     var_D4 = Replace(var_D4, "<Guest Full Name>", CStr(Trim(CVar(var_88.Fields.Item("Name")))), 1, -1, 0)
  loc_15FA968:     var_D4 = Replace(var_D4, "<Mobile Number>", CStr(Trim(CVar(var_88.Fields.Item("Phone")))), 1, -1, 0)
  loc_15FA9C4:     var_D4 = Replace(var_D4, "<Address>", CStr(Trim(CVar(var_88.Fields.Item("Addr")))), 1, -1, 0)
  loc_15FA9FF:     var_F8 = "dd/mm/yy"
  loc_15FAA35:     var_D4 = Replace(var_D4, "<Valid UpToDate>", CStr(Format(CVar(var_88.Fields.Item("ValidUpto")), var_F8)), 1, -1, 0)
  loc_15FAA6D:     Proc_6_39_E7D3A0(var_F8, CVar(var_88.Fields.Item("RewardPoint")), 1, 1)
  loc_15FAA98:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("RedeemPoint")), 1)
  loc_15FAAB8:     var_140 = (var_F8 - var_130)
  loc_15FAAEC:     var_D4 = Replace(var_D4, "<RPoint Balance>", CStr(Format(var_140, "0.00")), 1, -1, 0)
  loc_15FAB30:     Proc_6_39_E7D3A0(var_F8, CVar(var_88.Fields.Item("RewardBal")), 1)
  loc_15FAB50:     var_130 = Format(var_F8, "0.00")
  loc_15FAB76:     var_D4 = Replace(var_D4, "<RValue Balance>", CStr(var_130), 1, -1, 0)
  loc_15FAB8A:   End If
  loc_15FAB94:   If (Len(var_D8) <> 0) Then
  loc_15FABE3:     var_D8 = Replace(var_D8, "<Registration Id>", CStr(Trim(CVar(var_88.Fields.Item("CardNo")))), 1, -1, 0)
  loc_15FAC54:     var_D8 = Replace(var_D8, "<Registration Date>", CStr(Format(CVar(var_88.Fields.Item("IssDate")), "dd/mm/yy")), 1, -1, 0)
  loc_15FACB2:     var_D8 = Replace(var_D8, "<Guest Full Name>", CStr(Trim(CVar(var_88.Fields.Item("Name")))), 1, -1, 0)
  loc_15FAD0E:     var_D8 = Replace(var_D8, "<Mobile Number>", CStr(Trim(CVar(var_88.Fields.Item("Phone")))), 1, -1, 0)
  loc_15FAD6A:     var_D8 = Replace(var_D8, "<Address>", CStr(Trim(CVar(var_88.Fields.Item("Addr")))), 1, -1, 0)
  loc_15FADA5:     var_F8 = "dd/mm/yy"
  loc_15FADDB:     var_D8 = Replace(var_D8, "<Valid UpToDate>", CStr(Format(CVar(var_88.Fields.Item("ValidUpto")), var_F8)), 1, -1, 0)
  loc_15FAE13:     Proc_6_39_E7D3A0(var_F8, CVar(var_88.Fields.Item("RewardPoint")), 1, 1, 1, 1)
  loc_15FAE3E:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("RedeemPoint")), 1, 1)
  loc_15FAE5E:     var_140 = (var_F8 - var_130)
  loc_15FAE92:     var_D8 = Replace(var_D8, "<RPoint Balance>", CStr(Format(var_140, "0.00")), 1, -1, 0)
  loc_15FAEBF:     var_BC = var_88.Fields
  loc_15FAECF:     var_B8 = CVar(var_BC.Item("RewardBal")) 'Address
  loc_15FAED6:     Proc_6_39_E7D3A0(var_F8, var_B8, 1, 1)
  loc_15FAF1C:     var_D8 = Replace(var_D8, "<RValue Balance>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FAF30:   End If
  loc_15FAF38:   If (arg_10 <> vbNullString) Then
  loc_15FAF4F:     var_8C = "Select Vdate,BillNo,BillAmt,U_Name,RewardPoint,RedemPoint,RewardValue,RedeemValue From GuestReward Where DocId='" & arg_10
  loc_15FAF6D:     unk_430AEB.Execute var_8C & "' And RegId='" & arg_C & "'", var_B8, -1
  loc_15FAF78:     Set var_C8 = var_BC
  loc_15FAFA0:     If (var_C8.RecordCount = 1) Then
  loc_15FAFAD:       If (Len(var_D4) <> 0) Then
  loc_15FAFDB:         var_F8 = "dd/mm/yy"
  loc_15FB011:         var_D4 = Replace(var_D4, "<Bill Date>", CStr(Format(CVar(var_C8.Fields.Item("VDate")), var_F8)), 1, -1, 0)
  loc_15FB06C:         var_D4 = Replace(var_D4, "<Bill Number>", CStr(var_C8.Fields.Item("BillNo").Value), 1, -1, 0)
  loc_15FB08B:         var_BC = var_C8.Fields
  loc_15FB0A2:         Proc_6_39_E7D3A0(var_F8, CVar(var_BC.Item("RewardPoint")), 1, 1, var_BC)
  loc_15FB0E8:         var_D4 = Replace(var_D4, "<Reward Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB122:         Proc_6_39_E7D3A0(var_F8, CVar(var_C8.Fields.Item("RewardValue")), 1, 1, 1)
  loc_15FB168:         var_D4 = Replace(var_D4, "<Reward Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB1A2:         Proc_6_39_E7D3A0(var_F8, CVar(var_C8.Fields.Item("RedemPoint")), 1, 1)
  loc_15FB1E8:         var_D4 = Replace(var_D4, "<Redeem Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB222:         Proc_6_39_E7D3A0(var_F8, CVar(var_C8.Fields.Item("RedeemValue")), 1, 1)
  loc_15FB268:         var_D4 = Replace(var_D4, "<Redeem Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB27C:       End If
  loc_15FB286:       If (Len(var_D8) <> 0) Then
  loc_15FB2B4:         var_F8 = "dd/mm/yy"
  loc_15FB2EA:         var_D8 = Replace(var_D8, "<Bill Date>", CStr(Format(CVar(var_C8.Fields.Item("VDate")), var_F8)), 1, -1, 0)
  loc_15FB345:         var_D8 = Replace(var_D8, "<Bill Number>", CStr(var_C8.Fields.Item("BillNo").Value), 1, -1, 0)
  loc_15FB37B:         Proc_6_39_E7D3A0(var_F8, CVar(var_C8.Fields.Item("RewardPoint")), 1, 1, 1)
  loc_15FB3C1:         var_D8 = Replace(var_D8, "<Reward Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB3FB:         Proc_6_39_E7D3A0(var_F8, CVar(var_C8.Fields.Item("RewardValue")), 1, 1, 1)
  loc_15FB441:         var_D8 = Replace(var_D8, "<Reward Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB47B:         Proc_6_39_E7D3A0(var_F8, CVar(var_C8.Fields.Item("RedemPoint")), 1, 1)
  loc_15FB4C1:         var_D8 = Replace(var_D8, "<Redeem Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB4FB:         Proc_6_39_E7D3A0(var_F8, CVar(var_C8.Fields.Item("RedeemValue")), 1, 1)
  loc_15FB541:         var_D8 = Replace(var_D8, "<Redeem Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FB555:       End If
  loc_15FB555:     End If
  loc_15FB555:   End If
  loc_15FB584:   var_D0 = CStr(Trim(CVar(var_88.Fields.Item("Phone"))))
  loc_15FB59B:   If (Len(var_D0) >= &HA) Then
  loc_15FB5A6:     If (arg_10 <> vbNullString) Then
  loc_15FB5D2:       var_CC = CStr(Trim(Mid(arg_10, 4, 5)))
  loc_15FB5E8:       If (Len(var_D4) <> 0) Then
  loc_15FB65B:         var_108 = var_C8.Fields.Item("U_Name").Value
  loc_15FB682:         var_130 = var_88.Fields.Item("Name").Value
  loc_15FB6A9:         var_140 = var_C8.Fields.Item("BillAmt").Value
  loc_15FB6B1:         var_1CC = "Reward Point"
  loc_15FB6C2:         var_1C0 = vbNullString
  loc_15FB702:         Proc_233_5_11B7BF4(arg_10, var_CC, CLng(var_C8.Fields.Item("BillNo").Value), 1, CStr(var_88.Fields.Item("MemberCode").Value), var_D0, vbNullString, var_D4)
  loc_15FB73A:       End If
  loc_15FB744:       If (Len(var_D8) <> 0) Then
  loc_15FB7B7:         var_108 = var_C8.Fields.Item("U_Name").Value
  loc_15FB7DE:         var_130 = var_88.Fields.Item("Name").Value
  loc_15FB805:         var_140 = var_C8.Fields.Item("BillAmt").Value
  loc_15FB80D:         var_1CC = "Redeem Point"
  loc_15FB81E:         var_1C0 = vbNullString
  loc_15FB85E:         Proc_233_5_11B7BF4(arg_10, var_CC, CLng(var_C8.Fields.Item("BillNo").Value), 2, CStr(var_88.Fields.Item("MemberCode").Value), var_D0, vbNullString, var_D8)
  loc_15FB896:       End If
  loc_15FB899:     Else
  loc_15FB8A3:       If (Len(var_D4) <> 0) Then
  loc_15FB952:         var_130 = var_88.Fields.Item("U_Name").Value
  loc_15FB979:         var_140 = var_88.Fields.Item("Name").Value
  loc_15FB981:         var_1D4 = "Guest Registration"
  loc_15FB991:         var_1D0 = vbNullString
  loc_15FB9D5:         Proc_233_5_11B7BF4(CStr(var_88.Fields.Item("Code").Value), "GREG", CLng(Val(CStr(var_88.Fields.Item("Code").Value))), 1, CStr(var_88.Fields.Item("MemberCode").Value), var_D0, vbNullString, var_D4)
  loc_15FBA11:       End If
  loc_15FBA11:     End If
  loc_15FBA11:   End If
  loc_15FBA11: End If
  loc_15FBA16: Set var_88 = Nothing
  loc_15FBA1E: Set var_C4 = Nothing
  loc_15FBA26: Set var_C8 = Nothing
  loc_15FBA29: Exit Sub
End Sub

Public Sub Proc_233_16_1656BD4(arg_C, arg_10, arg_14) '1656BD4
  'Data Table: 430AD8
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Recordset15
  Dim var_E8 As Variant
  Dim var_E4 As Variant
  Dim var_100 As Variant
  Dim var_128 As Variant
  Dim var_114 As String
  Dim var_118 As String
  Dim var_F0 As Variant
  Dim var_12C As Variant
  Dim var_98 As Recordset15
  Dim var_110 As Variant
  loc_1655590: unk_430AEB.Execute "Select DepartName,Vdate,BillNo,DiscAmt,BillAmt,MobileNo,CustCode,U_Name From GuestReward Where DocId='" & arg_C & "'", var_E4, -1
  loc_165559B: Set var_88 = var_E8
  loc_16555BF: If (var_88.RecordCount = 1) Then
  loc_16555E6:   unk_430AEB.Execute "Select POSBillMsg,AssignDeliveryMsg from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E4, -1
  loc_16555F1:   Set var_94 = var_E8
  loc_1655615:   If (var_94.RecordCount > 0) Then
  loc_1655627:     var_E8 = var_94.Fields
  loc_165564F:     var_B0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E8.Item("POSBillMsg")), var_E8))))
  loc_1655675:     var_F0 = var_94.Fields.Item("AssignDeliveryMsg")
  loc_165567D:     var_E4 = CVar(var_F0) 'Address
  loc_1655686:     var_100 = CVar(Proc_6_38_E69628(var_E4)) 'String
  loc_1655695:     var_B4 = CStr(Trim(var_100))
  loc_16556A4:   End If
  loc_16556AC:   If (arg_10 = "Assign Delivery") Then
  loc_16556B2:     var_A4 = var_B4
  loc_16556BB:     var_128 = 0
  loc_16556D8:     var_C0 = "Select IsNull(Max(GuestMsg),'') from EmailSMSForward WHERE Type='Assign Delivery' And FlagType='POS' And DepartCode='" & arg_14
  loc_16556F6:     unk_430AEB.Execute var_C0 & "' And LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E4, -1
  loc_16556FE:     var_E8 = var_E8.Fields
  loc_1655706:     var_128 = var_F0.Item(var_F0)
  loc_165570E:     var_12C = var_12C.Value
  loc_1655717:     var_8C = CStr(var_100)
  loc_1655738:   Else
  loc_165573B:     var_A4 = var_B0
  loc_1655744:     var_128 = 0
  loc_1655761:     var_C0 = "Select IsNull(Max(GuestMsg),'') from EmailSMSForward WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='" & arg_14
  loc_165577F:     unk_430AEB.Execute var_C0 & "' And LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E4, -1
  loc_1655787:     var_E8 = var_E8.Fields
  loc_165578F:     var_128 = var_F0.Item(var_F0)
  loc_1655797:     var_12C = var_12C.Value
  loc_16557A0:     var_8C = CStr(var_100)
  loc_16557BE:   End If
  loc_16557DC:   If CBool(Trim(var_8C) <> vbNullString) Then
  loc_16557E2:     var_A4 = var_8C
  loc_16557E5:   End If
  loc_16557EF:   If (Len(var_A4) <> 0) Then
  loc_165583E:     var_A4 = Replace(var_A4, "<Outlet Title>", CStr(Trim(CVar(var_88.Fields.Item("DEPARTNAME")))), 1, -1, 0)
  loc_1655879:     var_100 = "dd/mm/yy"
  loc_16558AF:     var_A4 = Replace(var_A4, "<Bill Date>", CStr(Format(CVar(var_88.Fields.Item("VDate")), var_100)), 1, -1, 0)
  loc_165590A:     var_A4 = Replace(var_A4, "<Bill Number>", CStr(var_88.Fields.Item("BillNo").Value), 1, -1, 0)
  loc_1655965:     var_A4 = Replace(var_A4, "<Mobile Number>", Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")), 1, 1), 1, -1, 0)
  loc_165599B:     Proc_6_39_E7D3A0(var_100, CVar(var_88.Fields.Item("DiscAmt")), var_100)
  loc_16559E1:     var_A4 = Replace(var_A4, "<Disc Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_1655A1B:     Proc_6_39_E7D3A0(var_100, CVar(var_88.Fields.Item("BillAmt")), 1)
  loc_1655A61:     var_A4 = Replace(var_A4, "<Bill Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_1655AA4:     var_A4 = Replace(var_A4, "<Item Detail>", Proc_233_18_FB304C(arg_C, 1, 1) & "D", 1, -1, 0)
  loc_1655ACB:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty>", 0) <> 0)) Then
  loc_1655AD1:       var_B8 = "<Item-Qty>"
  loc_1655AD7:     Else
  loc_1655AF4:       var_A4 = Replace(var_A4, "<Item-Qty>", vbNullString, 1, -1, 0)
  loc_1655AF7:     End If
  loc_1655B18:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Rate>", 0) <> 0)) Then
  loc_1655B1E:       var_B8 = "<Item-Qty-Rate>"
  loc_1655B24:     Else
  loc_1655B41:       var_A4 = Replace(var_A4, "<Item-Qty-Rate>", vbNullString, 1, -1, 0)
  loc_1655B44:     End If
  loc_1655B65:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Amt>", 0) <> 0)) Then
  loc_1655B6B:       var_B8 = "<Item-Qty-Amt>"
  loc_1655B71:     Else
  loc_1655B8E:       var_A4 = Replace(var_A4, "<Item-Qty-Amt>", vbNullString, 1, -1, 0)
  loc_1655B91:     End If
  loc_1655BBC:     var_A4 = Replace(var_A4, var_B8, Proc_233_17_119F6C0(arg_C, var_B8, 1), 1, -1, 0)
  loc_1655BBF:   End If
  loc_1655C03:   If (var_100 And (Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")), (Len(var_A4) <> 0)) <> vbNullString)) Then
  loc_1655C25:     var_E8 = var_88.Fields
  loc_1655C42:     var_C4 = -1 & Proc_6_38_E69628(CVar(var_E8.Item("MobileNo")), "Select Name,Add1,CityName from guestprof Where MobileNo='", var_100)
  loc_1655C49:     var_114 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")), 1, 1) & "' And Code In (Select Distinct CustCode From GuestReward)"
  loc_1655C52:     unk_430AEB.Execute var_114, var_12C, var_E8
  loc_1655C5D:     Set var_98 = var_12C
  loc_1655C8B:     If (var_98.RecordCount > 0) Then
  loc_1655CB6:       var_A8 = Proc_6_38_E69628(CVar(var_98.Fields.Item("Name")))
  loc_1655D0A:       var_A4 = Replace(var_A4, "<Guest Full Name>", Proc_6_38_E69628(CVar(var_98.Fields.Item("Name"))), 1, -1, 0)
  loc_1655D29:       var_E8 = var_98.Fields
  loc_1655D39:       var_E4 = CVar(var_E8.Item("Add1")) 'Address
  loc_1655DA1:       var_A4 = Replace(var_A4, "<Address>", Proc_6_38_E69628(var_E4) & ", " & Proc_6_38_E69628(CVar(var_98.Fields.Item("CityName"))), 1, -1, 0)
  loc_1655DC1:     End If
  loc_1655DC1:   End If
  loc_1655DC9:   If (arg_10 = "Assign Delivery") Then
  loc_1655DE0:     var_C0 = "Select AD.*,DB.Name From (AssignDelivery AD Left Join DeliveryBoy DB On AD.DeliBoy = DB.Code) Where AD.Site_Code='" & MemVar_1F95070
  loc_1655E0C:     unk_430AEB.Execute var_C0 & "' and (AD.LOGSITE_CODE='" & MemVar_1F95078 & "' or AD.LOGSITE_CODE='HO') and DocId='" & arg_C & "'", var_E4, -1
  loc_1655E17:     Set var_98 = var_E8
  loc_1655E43:     If (var_98.RecordCount = 1) Then
  loc_1655E50:       If (Len(var_A4) <> 0) Then
  loc_1655E9E:         var_A4 = Replace(var_A4, "<Delivery Boy>", Proc_6_38_E69628(CVar(var_98.Fields.Item("Name"))), 1, -1, 0)
  loc_1655F0F:         var_A4 = Replace(var_A4, "<Assign DateTime>", CStr(Format(CVar(var_98.Fields.Item("DDate")), "dd/mm/yy hh:nn")), 1, -1, 0)
  loc_1655F6C:         var_A4 = Replace(var_A4, "<Assign Remark>", Proc_6_38_E69628(CVar(var_98.Fields.Item("Remark")), 1), 1, -1, 0)
  loc_1655F7C:       End If
  loc_1655F7C:     End If
  loc_1655F7C:   End If
  loc_1655FA4:   var_A0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")), 1)
  loc_1655FC0:   If ((Len(var_A0) >= &HA) And (arg_C <> vbNullString)) Then
  loc_1656002:     If (Len(var_A4) <> 0) Then
  loc_165601F:       var_F0 = var_88.Fields.Item("BillNo")
  loc_1656027:       var_E4 = var_F0.Value
  loc_165604E:       var_100 = var_88.Fields.Item("CustCode").Value
  loc_1656075:       var_110 = var_88.Fields.Item("U_Name").Value
  loc_165609C:       var_13C = var_88.Fields.Item("BillAmt").Value
  loc_16560AF:       var_118 = vbNullString
  loc_16560EA:       Proc_233_5_11B7BF4(arg_C, CStr(Trim(Mid(arg_C, 4, 5))), CLng(var_E4), 1, CStr(var_100), var_A0, vbNullString)
  loc_1656118:     End If
  loc_1656118:   End If
  loc_1656118: End If
  loc_1656120: If (arg_10 = "Outlet Bill") Then
  loc_1656129:   var_128 = 0
  loc_1656146:   var_C0 = "Select IsNull(Max(MobileNo),'') from EmailSMSForward WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='" & MemVar_1F95078
  loc_1656164:   unk_430AEB.Execute var_C0 & "RS' And LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E4, -1
  loc_165616C:   var_E8 = var_E8.Fields
  loc_1656174:   var_128 = var_F0.Item(var_F0)
  loc_165617C:   var_12C = var_12C.Value
  loc_1656185:   var_A0 = CStr(var_100)
  loc_16561A9:   var_128 = 0
  loc_16561CD:   var_C4 = "Select IsNull(Max(TxtMsg),'') from EmailSMSForward WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='" & arg_14 & "' And LOGSITE_CODE='"
  loc_16561DB:   var_118 = var_C4 & MemVar_1F95078 & "'"
  loc_16561E4:   unk_430AEB.Execute var_118, var_E4, -1
  loc_16561EC:   var_E8 = var_E8.Fields
  loc_16561F4:   var_128 = var_F0.Item(var_F0)
  loc_16561FC:   var_12C = var_12C.Value
  loc_1656205:   var_8C = CStr(var_100)
  loc_165622E:   var_E4 = Trim(var_8C)
  loc_165624E:   var_110 = (var_E4 <> vbNullString) And (Len(var_A0) >= &HA)
  loc_165625B:   If CBool(var_110) Then
  loc_1656261:     var_A4 = var_8C
  loc_1656264:   End If
  loc_165626E:   If (Len(var_A4) <> 0) Then
  loc_1656295:     unk_430AEB.Execute "Select MobileNo From GuestReward Where DocId='" & arg_C & "'", var_E4, -1
  loc_16562A0:     Set var_88 = var_E8
  loc_16562C4:     If (var_88.RecordCount = 1) Then
  loc_16562D6:       var_E8 = var_88.Fields
  loc_1656312:       var_A4 = Replace(var_A4, "<Mobile Number>", Proc_6_38_E69628(CVar(var_E8.Item("MobileNo")), var_E8, var_100, var_100, var_A4), 1, -1, 0)
  loc_1656325:     Else
  loc_1656342:       var_A4 = Replace(var_A4, "<Mobile Number>", vbNullString, 1, -1, 0)
  loc_1656345:     End If
  loc_1656359:     If (var_88.RecordCount = 1) Then
  loc_1656394:       var_C0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")), "Select Name,Add1,CityName from guestprof Where MobileNo='", var_100, -1, var_12C)
  loc_165639F:       var_114 = CStr(var_110) & Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")), var_88.Fields, var_100, var_100, var_A4) & "' And Code In (Select Distinct CustCode From GuestReward)"
  loc_16563A8:       unk_430AEB.Execute var_114, var_A8, var_118
  loc_16563B3:       Set var_98 = var_12C
  loc_16563E1:       If (var_98.RecordCount > 0) Then
  loc_165640C:         var_A8 = Proc_6_38_E69628(CVar(var_98.Fields.Item("Name")), CSng(var_13C))
  loc_1656460:         var_A4 = Replace(var_A4, "<Guest Full Name>", Proc_6_38_E69628(CVar(var_98.Fields.Item("Name"))), 1, -1, 0)
  loc_165647F:         var_E8 = var_98.Fields
  loc_165648F:         var_E4 = CVar(var_E8.Item("Add1")) 'Address
  loc_16564F7:         var_A4 = Replace(var_A4, "<Address>", Proc_6_38_E69628(var_E4) & ", " & Proc_6_38_E69628(CVar(var_98.Fields.Item("CityName"))), 1, -1, 0)
  loc_165651A:       Else
  loc_1656537:         var_A4 = Replace(var_A4, "<Guest Full Name>", vbNullString, 1, -1, 0)
  loc_1656557:         var_A4 = Replace(var_A4, "<Address>", vbNullString, 1, -1, 0)
  loc_165655A:       End If
  loc_165655A:     End If
  loc_165657E:     unk_430AEB.Execute "Select Top 1 PayType from PayCharge where DocId='" & arg_C & "' Order By SNo", var_E4, -1
  loc_1656589:     Set var_88 = var_E8
  loc_16565AD:     If (var_88.RecordCount = 1) Then
  loc_16565BF:       var_E8 = var_88.Fields
  loc_16565CF:       var_E4 = CVar(var_E8.Item("PayType")) 'Address
  loc_16565FB:       var_A4 = Replace(var_A4, "<Payment Type>", Proc_6_38_E69628(var_E4, var_E8), 1, -1, 0)
  loc_165660B:     End If
  loc_165661F:     var_C0 = "Select D.Name DEPARTNAME,S1.VType,S1.VDate,S1.VNo,S1.DiscAmt,S1.NetAmt,S1.U_Name,S1.RoomNo From Sale1 S1 Left Join Depart D On S1.Restcode=D.Code Where DocId='" & arg_C
  loc_165662F:     unk_430AEB.Execute var_C0 & "'", var_E4, -1
  loc_165663A:     Set var_88 = var_E8
  loc_165665E:     If (var_88.RecordCount = 1) Then
  loc_16566AD:       var_A4 = Replace(var_A4, "<Outlet Title>", CStr(Trim(CVar(var_88.Fields.Item("DEPARTNAME")))), 1, -1, 0)
  loc_165671E:       var_A4 = Replace(var_A4, "<Bill Date>", CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/mm/yy")), 1, -1, 0)
  loc_165677D:       var_100 = var_88.Fields.Item("VNo").Value
  loc_16567B5:       var_A4 = Replace(var_A4, "<Bill Number>", Proc_6_38_E69628(CVar(var_88.Fields.Item("vType")), 1, 1) & "/" & CStr(var_100), 1, -1, 0)
  loc_16567FB:       Proc_6_39_E7D3A0(var_100, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1656841:       var_A4 = Replace(var_A4, "<Disc Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_165687B:       Proc_6_39_E7D3A0(var_100, CVar(var_88.Fields.Item("NetAmt")), 1)
  loc_16568C1:       var_A4 = Replace(var_A4, "<Bill Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_1656920:       var_A4 = Replace(var_A4, "<Table Number>", Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")), 1, 1), 1, -1, 0)
  loc_1656930:     End If
  loc_165695F:     var_A4 = Replace(var_A4, "<Item Detail>", Proc_233_18_FB304C(arg_C, 1) & "D", 1, -1, 0)
  loc_1656986:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty>", 0) <> 0)) Then
  loc_165698C:       var_B8 = "<Item-Qty>"
  loc_1656992:     Else
  loc_16569AF:       var_A4 = Replace(var_A4, "<Item-Qty>", vbNullString, 1, -1, 0)
  loc_16569B2:     End If
  loc_16569D3:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Rate>", 0) <> 0)) Then
  loc_16569D9:       var_B8 = "<Item-Qty-Rate>"
  loc_16569DF:     Else
  loc_16569FC:       var_A4 = Replace(var_A4, "<Item-Qty-Rate>", vbNullString, 1, -1, 0)
  loc_16569FF:     End If
  loc_1656A20:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Amt>", 0) <> 0)) Then
  loc_1656A26:       var_B8 = "<Item-Qty-Amt>"
  loc_1656A2C:     Else
  loc_1656A49:       var_A4 = Replace(var_A4, "<Item-Qty-Amt>", vbNullString, 1, -1, 0)
  loc_1656A4C:     End If
  loc_1656A77:     var_A4 = Replace(var_A4, var_B8, Proc_233_17_119F6C0(arg_C, var_B8), 1, -1, 0)
  loc_1656A8D:     If ((Len(var_A0) >= &HA) And (arg_C <> vbNullString)) Then
  loc_1656ACF:       If (Len(var_A4) <> 0) Then
  loc_1656B1B:         var_100 = var_88.Fields.Item("U_Name").Value
  loc_1656B42:         var_110 = var_88.Fields.Item("NetAmt").Value
  loc_1656B55:         var_118 = vbNullString
  loc_1656B91:         Proc_233_5_11B7BF4(arg_C, CStr(Trim(Mid(arg_C, 4, 5))), CLng(var_88.Fields.Item("VNo").Value), 1, vbNullString, var_A0, vbNullString, var_A4)
  loc_1656BB9:       End If
  loc_1656BB9:     End If
  loc_1656BB9:   End If
  loc_1656BB9: End If
  loc_1656BBE: Set var_88 = Nothing
  loc_1656BC6: Set var_94 = Nothing
  loc_1656BCE: Set var_98 = Nothing
  loc_1656BD1: Exit Sub
End Sub

Public Sub Proc_233_17_119F6C0(arg_C, arg_10) '119F6C0
  'Data Table: 430AD8
  Dim var_94 As String
  Dim unk_430AEB As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_168 As Variant
  Dim var_178 As String
  Dim var_188 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  loc_119F324: var_94 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,Max(S.Remarks) As Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_119F33B: unk_430AEB.Execute var_94 & arg_C & "' GROUP BY S.ITEM,S.RATE ORDER BY MAX(I.NAME) ", var_BC, -1
  loc_119F346: Set var_8C = var_C0
  loc_119F36C: If (var_8C.RecordCount > 0) Then
  loc_119F372:   var_90 = "D"
  loc_119F375:   ' Referenced from: 119F6AC
  loc_119F384:   If Not(var_8C.EOF) Then
  loc_119F38A:     var_CC = arg_10
  loc_119F395:     If (var_CC = "<Item-Qty>") Then
  loc_119F3C8:       var_F0 = (CVar(var_90) + var_8C.Fields.Item("ItemName").Value)
  loc_119F3CC:       var_100 = " - "
  loc_119F3D1:       var_110 = (var_F0 + var_100)
  loc_119F3FB:       Proc_6_39_E7D3A0(var_148, CVar(var_8C.Fields.Item("qty")))
  loc_119F408:       var_168 = (var_110 + CVar(CStr(var_148)))
  loc_119F411:       var_188 = (var_168 + "%0D")
  loc_119F416:       var_90 = CStr(var_188)
  loc_119F43A:     Else
  loc_119F442:       If (var_CC = "<Item-Qty-Rate>") Then
  loc_119F46B:         Proc_6_39_E7D3A0(var_1C0, CVar(var_8C.Fields.Item("ItemRate")))
  loc_119F4A0:         var_F0 = (CVar(var_90) + var_8C.Fields.Item("ItemName").Value)
  loc_119F4A4:         var_100 = " - "
  loc_119F4A9:         var_110 = (var_F0 + var_100)
  loc_119F4D3:         Proc_6_39_E7D3A0(var_148, CVar(var_8C.Fields.Item("qty")))
  loc_119F4E0:         var_168 = (var_110 + CVar(CStr(var_148)))
  loc_119F4E4:         var_178 = " - "
  loc_119F4E9:         var_188 = (var_168 + "%0D")
  loc_119F508:         var_1F0 = Format(var_1C0, "0.00")
  loc_119F510:         var_200 = (1 + var_1F0)
  loc_119F519:         var_220 = (var_200 + "%0D")
  loc_119F51E:         var_90 = CStr(var_220)
  loc_119F550:       Else
  loc_119F558:         If (var_CC = "<Item-Qty-Amt>") Then
  loc_119F581:           Proc_6_39_E7D3A0(var_1C0, CVar(var_8C.Fields.Item("qty")), 1)
  loc_119F5AC:           Proc_6_39_E7D3A0(var_1F0, CVar(var_8C.Fields.Item("ItemRate")))
  loc_119F5E1:           var_F0 = (CVar(var_90) + var_8C.Fields.Item("ItemName").Value)
  loc_119F5E5:           var_100 = " - "
  loc_119F5EA:           var_110 = (var_F0 + var_100)
  loc_119F614:           Proc_6_39_E7D3A0(var_148, CVar(var_8C.Fields.Item("qty")), var_110)
  loc_119F621:           var_168 = (var_188 + CVar(CStr(var_148)))
  loc_119F625:           var_178 = " - "
  loc_119F62A:           var_188 = (var_168 + "%0D")
  loc_119F65F:           var_258 = (1 + Format((var_1C0 * var_1F0), "0.00"))
  loc_119F668:           var_278 = (var_258 + "%0D")
  loc_119F66D:           var_90 = CStr(var_278)
  loc_119F6A4:         End If
  loc_119F6A4:       End If
  loc_119F6A4:     End If
  loc_119F6A7:     var_8C.MoveNext
  loc_119F6AC:     GoTo loc_119F375
  loc_119F6AF:   End If
  loc_119F6AF: End If
  loc_119F6B2: var_88 = var_90
  loc_119F6BA: Set var_8C = Nothing
  loc_119F6BD: Exit Sub
End Sub

Public Sub Proc_233_18_FB304C(arg_C) 'FB304C
  'Data Table: 430AD8
  Dim var_98 As String
  Dim unk_430AEB As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_C0 As Variant
  Dim var_92 As Integer
  Dim var_F0 As Variant
  loc_FB2EE8: var_98 = "Select S.SNO,I.NAME AS ITEMNAME,S.AMOUNT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_FB2EFF: unk_430AEB.Execute var_98 & arg_C & "' ORDER BY S.SNO ", var_C0, -1
  loc_FB2F0A: Set var_8C = var_C4
  loc_FB2F30: If (var_8C.RecordCount > 0) Then
  loc_FB2F36:   var_8C.MoveFirst
  loc_FB2F86:   var_90 = Replace(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemName"))), "&", vbNullString, 1, -1, 0)
  loc_FB2F99:   var_8C.MoveNext
  loc_FB2FA0:   var_92 = 0
  loc_FB2FA3:   ' Referenced from: FB2FC6
  loc_FB2FB2:   If Not(var_8C.EOF) Then
  loc_FB2FBB:     var_92 = (var_92 + 1)
  loc_FB2FC1:     var_8C.MoveNext
  loc_FB2FC6:     GoTo loc_FB2FA3
  loc_FB2FC9:   End If
  loc_FB2FE6:   var_F0 = (Left(var_90, &H18) + "...")
  loc_FB302A:   var_88 = CStr(IIf((Len(var_90) <= &H1B), var_90, var_F0) & " And " & CVar(CStr(var_92)) & " More")
  loc_FB3040: End If
  loc_FB3045: Set var_8C = Nothing
  loc_FB3048: Exit Sub
End Sub
