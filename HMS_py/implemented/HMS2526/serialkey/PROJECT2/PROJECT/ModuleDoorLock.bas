
Public Sub Proc_336_0_FA8474
  'Data Table: 41B950
  Dim var_CA As Integer
  loc_FA82FC: On Error Goto loc_FA846B
  loc_FA831F: var_C0 = Me(24)
  loc_FA832B: var_BC = Me(20)
  loc_FA8337: var_B8 = Me(32)
  loc_FA838F: Me(128) = CVar(var_90)
  loc_FA839C: Me(144) = CVar(var_A4)
  loc_FA83D8: Me(196) = CLng(CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(76)), Me(0), CLng(Me(128)), CLng(Me(144))))
  loc_FA83F7: If (Me(196) = 0) Then
  loc_FA8414:   var_CA = CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(92)), StrConv(Me(16), vbUnicode), Me(16), StrConv(Me(12), vbUnicode), Me(12), StrConv(Me(24), vbUnicode))
  loc_FA841C:   Me(196) = CLng(var_CA)
  loc_FA843A:   MsgBox("Read Guest Card Success!", 0, var_EC, var_10C, var_12C)
  loc_FA844A: End If
  loc_FA845D: If (Me(196) <> 0) Then
  loc_FA8465:   Proc_336_2_F9DD80(Me(196), Me(196), var_CA, var_C0, StrConv(Me(20), vbUnicode), var_BC)
  loc_FA846A: End If
  loc_FA846A: Exit Sub
  loc_FA846B: ' Referenced from: FA82FC
  loc_FA846B: Proc_6_60_E63754(StrConv(Me(32), vbUnicode), var_B8, StrConv(Me(0), vbUnicode))
  loc_FA8470: Exit Sub
End Sub

Public Sub Proc_336_1_11FB9C0(arg_C) '11FB9C0
  'Data Table: 41B950
  Dim var_88 As Long
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim unk_41B95D As Connection15
  Dim var_8C As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_188 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_128 As Variant
  Dim var_1AA As Integer
  loc_11FB540: On Error Goto loc_11FB9B7
  loc_11FB54B: If (Proc_336_3_FC7230() = 0) Then
  loc_11FB553:   var_88 = &HFF
  loc_11FB556:   Exit Sub
  loc_11FB557: End If
  loc_11FB56B: var_90 = "Select RD.ChkInDt,RD.ChkInTm,RD.DepDate,RD.DepTime,RM.DoorLockID,GF.DoorLock_Card_SN From RoomOccDet RD INNER JOIN RoomMast RM ON RM.Code = RD.RoomNo INNER JOIN GuestFolio GF ON GF.DocId = RD.DocId WHERE RD.DOCID='" & arg_C
  loc_11FB58E: var_A4 = var_90 & "' And (RD.LOGSITE_CODE='" & MemVar_1F95078 & "' AND RM.LOGSITE_CODE='" & MemVar_1F95078 & "') AND (RD.Type Not in ('C','O') or RD.Type is null) AND RM.TYPE='RO'"
  loc_11FB597: unk_41B95D.Execute var_A4, var_C4, -1
  loc_11FB5A2: Set var_8C = var_C8
  loc_11FB5CE: If (var_8C.RecordCount > 0) Then
  loc_11FB633:   var_100 = Format(CVar(var_8C.Fields.Item("ChkInDt")), "yymmdd")
  loc_11FB664:   var_188 = (1 + Format(CDate(CDate(var_8C.Fields.Item("ChkInTm").Value)), "hhnn"))
  loc_11FB669:   Me(12) = CStr(var_188)
  loc_11FB6DD:   var_F0 = "yymmdd"
  loc_11FB6ED:   var_100 = Format(CVar(var_8C.Fields.Item("DepDate")), var_F0)
  loc_11FB716:   var_178 = Format(CDate(CDate(var_8C.Fields.Item("DepTime").Value)), "hhnn")
  loc_11FB71E:   var_188 = (1 + var_178)
  loc_11FB723:   Me(16) = CStr(var_188)
  loc_11FB76D:   Me(32) = Proc_6_38_E69628(CVar(var_8C.Fields.Item("DoorLockID")), 1, var_100, 1, 1, 1)
  loc_11FB788:   var_C8 = var_8C.Fields
  loc_11FB79F:   Proc_6_39_E7D3A0(var_F0, CVar(var_C8.Item("DoorLock_Card_SN")), var_100, 1)
  loc_11FB7A7:   Me(144) = var_F0
  loc_11FB7B3: End If
  loc_11FB7C3: Me(128) = CVar(CreateFieldDefFile(1, var_C8))
  loc_11FB7D6: If (Me(144) = 0) Then
  loc_11FB7DE:   Me(144) = Me(128)
  loc_11FB804:   var_F0 = "Update GuestFolio Set DoorLock_Card_SN=" & Me(144) & " WHERE DOCID='" 
  loc_11FB80E:   var_100 = var_F0 & CVar(arg_C) 
  loc_11FB817:   var_128 = var_100 & "' And LOGSITE_CODE='" 
  loc_11FB838:   unk_41B95D.Execute CStr(var_128 & CVar(MemVar_1F95078) & "'"), var_178, -1
  loc_11FB854: End If
  loc_11FB856: Me(200) = 1
  loc_11FB85E: Me(20) = "0000"
  loc_11FB866: Me(24) = "00000000"
  loc_11FB88B: var_9C = Me(24)
  loc_11FB897: var_98 = Me(20)
  loc_11FB8E0: var_1AA = CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(76)), Me(0), CLng(Me(128)), CLng(Me(144)), Me(200), Me(32))
  loc_11FB924: Me(196) = CLng(var_1AA)
  loc_11FB943: If (Me(196) = 0) Then
  loc_11FB95F:   MsgBox("Write Guest Card Success!", 0, var_F0, var_100, var_128)
  loc_11FB989:   var_1AA = CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(92)), StrConv(Me(16), vbUnicode), Me(16), StrConv(Me(12), vbUnicode), Me(12))
  loc_11FB991:   Me(196) = CLng(var_1AA)
  loc_11FB996: End If
  loc_11FB9A9: If (Me(196) <> 0) Then
  loc_11FB9B1:   Proc_336_2_F9DD80(Me(196), Me(196), var_1AA, StrConv(Me(24), vbUnicode), var_9C)
  loc_11FB9B6: End If
  loc_11FB9B6: Exit Sub
  loc_11FB9B7: ' Referenced from: 11FB540
  loc_11FB9B7: Proc_6_60_E63754(StrConv(Me(20), vbUnicode), var_98, StrConv(Me(32), vbUnicode))
  loc_11FB9BC: Exit Sub
End Sub

Public Sub Proc_336_2_F9DD80(arg_C) 'F9DD80
  'Data Table: 41B950
  Dim var_88 As Long
  loc_F9DC03: var_88 = arg_C
  loc_F9DC0F: If (var_88 = 1) Then
  loc_F9DC2B:   MsgBox("Serial port open error!", 0, var_C8, var_E8, var_108)
  loc_F9DC3E: Else
  loc_F9DC47:   If (var_88 = 2) Then
  loc_F9DC63:     MsgBox("No read error!", 0, var_C8, var_E8, var_108)
  loc_F9DC76:   Else
  loc_F9DC7F:     If (var_88 = 3) Then
  loc_F9DC9B:       MsgBox("Card type error!", 0, var_C8, var_E8, var_108)
  loc_F9DCAE:     Else
  loc_F9DCB7:       If (var_88 = 4) Then
  loc_F9DCD3:         MsgBox("Card read error!", 0, var_C8, var_E8, var_108)
  loc_F9DCE6:       Else
  loc_F9DCEF:         If (var_88 = 5) Then
  loc_F9DD0B:           MsgBox("Hotel password error!", 0, var_C8, var_E8, var_108)
  loc_F9DD1E:         Else
  loc_F9DD27:           If (var_88 = 6) Then
  loc_F9DD43:             MsgBox("Card write error!", 0, var_C8, var_E8, var_108)
  loc_F9DD56:           Else
  loc_F9DD6F:             MsgBox("Read Guest Card Fail!", 0, var_C8, var_E8, var_108)
  loc_F9DD7F:           End If
  loc_F9DD7F:         End If
  loc_F9DD7F:       End If
  loc_F9DD7F:     End If
  loc_F9DD7F:   End If
  loc_F9DD7F: End If
  loc_F9DD7F: Exit Sub
End Sub

Public Sub Proc_336_3_FC7230
  'Data Table: 41B950
  Dim unk_41B95D As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Fields15
  Dim var_B4 As Variant
  Dim var_86 As Integer
  loc_FC70B0: unk_41B95D.Execute "Select * From DoorLockEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B4, -1
  loc_FC70BB: Set var_8C = var_B8
  loc_FC70DF: If (var_8C.RecordCount > 0) Then
  loc_FC7108:   Proc_6_39_E7D3A0(var_D0, CVar(var_8C.Fields.Item("ReaderType")))
  loc_FC7110:   Me(60) = var_D0
  loc_FC7142:   Proc_6_39_E7D3A0(var_D0, CVar(var_8C.Fields.Item("Readerport")))
  loc_FC714A:   Me(44) = var_D0
  loc_FC717C:   Proc_6_39_E7D3A0(var_D0, CVar(var_8C.Fields.Item("CardSector")))
  loc_FC7184:   Me(76) = var_D0
  loc_FC71B6:   Proc_6_39_E7D3A0(var_D0, CVar(var_8C.Fields.Item("AlarmCount")))
  loc_FC71BE:   Me(92) = var_D0
  loc_FC71F2:   Me(0) = Proc_6_38_E69628(CVar(var_8C.Fields.Item("HotelPwd")))
  loc_FC7200:   var_86 = &HFF
  loc_FC7206: Else
  loc_FC721F:   MsgBox("Plz. Set Lock Parameter Settings.", 0, var_D0, var_100, var_120)
  loc_FC722F: End If
  loc_FC722F: Result var_86 End Sub 'Integer
End Sub
