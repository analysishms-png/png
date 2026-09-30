
Public Sub Proc_348_0_113CB24
  'Data Table: 421708
  Dim var_A8 As String
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_118 As String
  Dim var_F8 As Variant
  loc_113C7C8: If (Proc_348_16_FAA558() = 0) Then
  loc_113C7CB:   Exit Sub
  loc_113C7CC: End If
  loc_113C7CF: Me(120) = vbNullString
  loc_113C7D7: Me(124) = vbNullString
  loc_113C825: var_A8 = Me(136) & "auth?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64) & "&user_name=" & Me(68) & "&eInvPwd="
  loc_113C82E: Me(24) = var_A8 & Me(72)
  loc_113C853: Me(8) = Proc_344_1_EDA3E0(Me(24))
  loc_113C863: Me(48) = Proc_343_2_EC7730(Me(8))
  loc_113C869: var_B8 = "Status"
  loc_113C887: If (MemVar_41E208.Item = "0") Then
  loc_113C88A:   var_118 = "ErrorMessage"
  loc_113C890:   var_D8 = 1
  loc_113C896:   var_B8 = "ErrorDetails"
  loc_113C8A1:   var_E8 = MemVar_41E208.Item
  loc_113C8A9:   VarIndexLdRfVar
  loc_113C8AF:   VarLateMemCallLdRfVar
  loc_113C8CA:   MsgBox(var_138, &H10, var_158, var_178, var_198)
  loc_113C8DE:   Exit Sub
  loc_113C8E2: Else
  loc_113C8E2:   var_B8 = "status_cd"
  loc_113C900:   If (MemVar_41E208.Item = "0") Then
  loc_113C903:     var_D8 = "message"
  loc_113C909:     var_B8 = "error"
  loc_113C914:     var_E8 = MemVar_41E208.Item
  loc_113C91C:     VarLateMemCallLdRfVar
  loc_113C937:     MsgBox(var_F8, &H10, var_138, var_158, var_178)
  loc_113C949:     Exit Sub
  loc_113C94A:   End If
  loc_113C94A:   var_B8 = "Message"
  loc_113C968:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_113C984:     var_E8 = MemVar_41E208.Item
  loc_113C98C:     MsgBox(var_E8, "Message", 0, var_F8, var_138)
  loc_113C99C:     Exit Sub
  loc_113C99D:   End If
  loc_113C9A0:   Me(124) = vbNullString
  loc_113C9A5: End If
  loc_113C9B0: Me(104) = CVar(FreeFile(var_E8))
  loc_113C9B9: var_D8 = "AuthToken"
  loc_113C9BF: var_B8 = "Data"
  loc_113C9DB: Me(40) = CStr(MemVar_41E208.Item.Item)
  loc_113C9E8: var_D8 = "TokenExpiry"
  loc_113C9EE: var_B8 = "Data"
  loc_113CA0A: Me(76) = CStr(MemVar_41E208.Item.Item)
  loc_113CA42: Me(76) = CStr(Format(Me(76), "DD/MM/YYYY hh:mm:ss"))
  loc_113CA4F: var_D8 = "AuthToken"
  loc_113CA55: var_B8 = "Data"
  loc_113CA60: var_E8 = MemVar_41E208.Item
  loc_113CA68: var_F8 = var_E8.Item
  loc_113CA71: Me(128) = CStr(var_F8)
  loc_113CA8A: var_19C = Me.Global.App
  loc_113CAA9: Open App.Path & "\LastAuthToken.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_113CAC2: Print CInt(Me(104)), Me(40)
  loc_113CACE: Close CInt(Me(104))
  loc_113CADA: If (Me(40) = vbNullString) Then
  loc_113CAF5:   MsgBox(Me(8), 0, var_E8, var_F8, var_138)
  loc_113CB03:   Exit Sub
  loc_113CB07: Else
  loc_113CB19:   Me(124) = Me(40) & "Exp :   " & Me(76)
  loc_113CB22: End If
  loc_113CB22: Exit Sub
End Sub

Public Sub Proc_348_1_15AA5FC(arg_C, arg_10) '15AA5FC
  'Data Table: 421708
  Dim var_AC As Variant
  Dim var_120 As String
  Dim var_140 As String
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  Dim var_FC As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  Dim var_1DC As String
  Dim var_1BC As Variant
  Dim var_18C As String
  Dim var_1AC As Variant
  Dim var_21C As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_29C As String
  Dim var_26C As String
  Dim var_27C As Variant
  Dim var_2DC As Variant
  Dim var_2EC As String
  Dim var_2FC As Variant
  Dim var_32C As Variant
  Dim var_3CC As Variant
  Dim var_DC As Variant
  Dim var_92 As Integer
  Dim var_1EC As Variant
  Dim var_24C As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_500 As IBodyPart
  Dim var_504 As Stream
  Dim var_508 As Stream
  loc_15A9494: If (Proc_348_16_FAA558() = 0) Then
  loc_15A9497:   Exit Sub
  loc_15A9498: End If
  loc_15A949B: Me(148) = vbNullString
  loc_15A94AA: If (Me(144) = vbNullString) Then
  loc_15A94C6:   MsgBox("Please paste the JsonBody first and then click on Generate eInvoice", &H10, var_DC, var_FC, var_11C)
  loc_15A94D6:   Exit Sub
  loc_15A94D7: End If
  loc_15A94DC: var_98 = Me(144)
  loc_15A9528: var_140 = Me(140) & "Invoice?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64) & "&User_Name=" & Me(68) & "&QrCodeSize="
  loc_15A9546: Me(24) = var_140 & CStr(Me(168)) & "&AuthToken=" & Me(128)
  loc_15A9574: Me(8) = Proc_344_2_E94118(Me(24))
  loc_15A9584: Me(48) = Proc_343_2_EC7730(Me(8))
  loc_15A958A: var_AC = "Status"
  loc_15A95A8: If (MemVar_41E208.Item = "0") Then
  loc_15A95AB:   var_15C = "ErrorCode"
  loc_15A95B1:   var_EC = 1
  loc_15A95B7:   var_AC = "ErrorDetails"
  loc_15A95CA:   VarIndexLdRfVar
  loc_15A95E9:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_15A95EC:     var_15C = "ErrorMessage"
  loc_15A95F2:     var_EC = 1
  loc_15A95F8:     var_AC = "ErrorDetails"
  loc_15A960B:     VarIndexLdRfVar
  loc_15A961E:     var_11C = MemVar_41E208.Item.Item Like "*duplicate*"
  loc_15A9622:     var_1DC = "ErrorMessage"
  loc_15A9628:     var_1BC = 1
  loc_15A9641:     VarIndexLdRfVar
  loc_15A9658:     var_23C = "ErrorDetails" Or MemVar_41E208.Item.Item Like "*Duplicate*"
  loc_15A966D:     If CBool(var_23C) Then
  loc_15A967E:       var_15C = "ErrorCode"
  loc_15A9684:       var_EC = 1
  loc_15A969D:       VarIndexLdRfVar
  loc_15A96D3:       VarIndexLdRfVar
  loc_15A96E5:       MsgBox("ErrorDetails" & MemVar_41E208.Item.Item, 1, "ErrorMessage", MemVar_41E208.Item.Item & " : ", "ErrorDetails")
  loc_15A9711:       var_19C = "IRN: "
  loc_15A9716:       var_17C = "Irn"
  loc_15A971C:       var_15C = "Desc"
  loc_15A9722:       var_EC = 1
  loc_15A973B:       VarIndexLdRfVar
  loc_15A9741:       VarLateMemCallLdRfVar
  loc_15A9763:       var_21C = "InfoDtls" & MemVar_41E208.Item.Item & vbCrLf & "AckNo: " 
  loc_15A9767:       var_29C = "AckNo"
  loc_15A976D:       var_26C = "Desc"
  loc_15A9773:       var_20C = 1
  loc_15A978C:       VarIndexLdRfVar
  loc_15A9792:       VarLateMemCallLdRfVar
  loc_15A979A:       var_27C = MemVar_41E208.Item.Item
  loc_15A97AB:       var_2DC = "InfoDtls" & var_27C & vbCrLf 
  loc_15A97DD:       VarIndexLdRfVar
  loc_15A97E3:       VarLateMemCallLdRfVar
  loc_15A97F3:       var_3CC = "InfoDtls" & MemVar_41E208.Item.Item 
  loc_15A97F7:       MsgBox(var_3CC, 1, "Desc", "AckDt", var_2DC & "AckDt: ")
  loc_15A982B:       Exit Sub
  loc_15A982F:     Else
  loc_15A982F:       var_15C = "ErrorCode"
  loc_15A9835:       var_EC = 1
  loc_15A983B:       var_AC = "ErrorDetails"
  loc_15A984E:       VarIndexLdRfVar
  loc_15A985E:       var_1DC = "ErrorMessage"
  loc_15A9864:       var_1BC = 1
  loc_15A986A:       var_18C = "ErrorDetails"
  loc_15A987D:       VarIndexLdRfVar
  loc_15A98AA:       var_22C = MemVar_41E208.Item.Item & " :   " & MemVar_41E208.Item.Item 
  loc_15A98AE:       MsgBox(var_22C, &H10, var_23C, var_25C, var_27C)
  loc_15A98CC:       Exit Sub
  loc_15A98CD:     End If
  loc_15A98CD:   End If
  loc_15A98CD: End If
  loc_15A98CD: var_AC = "Status_cd"
  loc_15A98D8: var_BC = MemVar_41E208.Item
  loc_15A98E0: var_EC = "0"
  loc_15A9914: If CBool("status_cd" Or (MemVar_41E208.Item = "0")) Then
  loc_15A9917:   var_EC = "error_cd"
  loc_15A991D:   var_AC = "error"
  loc_15A9947:   If (MemVar_41E208.Item.Item = "GSP752") Then
  loc_15A997E:     var_FC = "error" & MemVar_41E208.Item.Item 
  loc_15A9987:     var_11C = var_FC & vbCrLf 
  loc_15A999C:     var_1AC = MemVar_41E208.Item
  loc_15A99A4:     var_1FC = var_1AC.Item
  loc_15A99B0:     MsgBox("error" & var_1FC, "message", var_11C, "error_cd", "Error Code: ")
  loc_15A99D7:     var_DC = "Message Box Title"
  loc_15A99E2:     var_AC = "Do you want to call AuthToken"
  loc_15A99F4:     Me(12) = CStr(MsgBox(var_AC, &H124, var_DC, var_FC, var_11C))
  loc_15A9A13:     If (CDbl(Me(12)) = CDbl(6)) Then
  loc_15A9A16:       Proc_348_0_113CB24(0, var_22C, var_23C, var_25C, var_AC)
  loc_15A9A1B:       var_AC = "Status"
  loc_15A9A39:       If (MemVar_41E208.Item = "0") Then
  loc_15A9A3C:         var_15C = "ErrorMessage"
  loc_15A9A42:         var_EC = 1
  loc_15A9A48:         var_AC = "ErrorDetails"
  loc_15A9A53:         var_BC = MemVar_41E208.Item
  loc_15A9A5B:         VarIndexLdRfVar
  loc_15A9A61:         VarLateMemCallLdRfVar
  loc_15A9A7C:         MsgBox(var_FC, &H10, var_11C, var_1AC, var_1FC)
  loc_15A9A90:         Exit Sub
  loc_15A9A94:       Else
  loc_15A9A94:         var_AC = "status_cd"
  loc_15A9AB2:         If (MemVar_41E208.Item = "0") Then
  loc_15A9ADC:           VarLateMemCallLdRfVar
  loc_15A9AE4:           MsgBox(MemVar_41E208.Item, "error", "message", 0, var_FC)
  loc_15A9AF6:           Exit Sub
  loc_15A9AF7:         End If
  loc_15A9AF7:         var_AC = "Message"
  loc_15A9B15:         If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_15A9B31:           var_BC = MemVar_41E208.Item
  loc_15A9B39:           MsgBox(var_BC, "Message", 0, var_DC, var_FC)
  loc_15A9B49:           Exit Sub
  loc_15A9B4A:         End If
  loc_15A9B4D:         Me(124) = vbNullString
  loc_15A9B52:       End If
  loc_15A9B5A:       var_92 = FreeFile(var_BC)
  loc_15A9B79:       var_DC = MemVar_41E208.Item.Item
  loc_15A9B82:       Me(40) = CStr(var_DC)
  loc_15A9B9B:       var_430 = Me.Global.App
  loc_15A9BB7:       Open App.Path & "\LastAuthToken.txt" For Output As var_92 Len = &HFF
  loc_15A9BCD:       Print var_92, Me(40)
  loc_15A9BD6:       Close var_92
  loc_15A9BDE:       Proc_348_1_15AA5FC(arg_C, arg_10, "Data", "AuthToken", var_92, var_11C, "Data", var_11C)
  loc_15A9BE3:       Exit Sub
  loc_15A9BE7:     Else
  loc_15A9BE7:       Exit Sub
  loc_15A9BE8:     End If
  loc_15A9BEB:   Else
  loc_15A9BEB:     var_EC = "message"
  loc_15A9BF1:     var_AC = "error"
  loc_15A9BFC:     var_BC = MemVar_41E208.Item
  loc_15A9C04:     VarLateMemCallLdRfVar
  loc_15A9C1F:     MsgBox(var_DC, &H10, var_FC, var_11C, var_1AC)
  loc_15A9C31:   End If
  loc_15A9C31:   Exit Sub
  loc_15A9C32: End If
  loc_15A9C32: var_AC = "Message"
  loc_15A9C50: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_15A9C53:   var_AC = "Message"
  loc_15A9C79:   MsgBox(MemVar_41E208.Item, &H10, var_DC, var_FC, var_11C)
  loc_15A9C89:   Exit Sub
  loc_15A9C8A: End If
  loc_15A9C8A: var_AC = "Status"
  loc_15A9CA8: If (MemVar_41E208.Item = "0") Then
  loc_15A9CAB:   var_15C = "ErrorCode"
  loc_15A9CB1:   var_EC = 1
  loc_15A9CB7:   var_AC = "ErrorDetails"
  loc_15A9CCA:   VarIndexLdRfVar
  loc_15A9CE9:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_15A9CEC:     var_15C = "ErrorCode"
  loc_15A9CF2:     var_EC = 1
  loc_15A9CF8:     var_AC = "ErrorDetails"
  loc_15A9D0B:     VarIndexLdRfVar
  loc_15A9D1B:     var_1DC = "ErrorMessage"
  loc_15A9D21:     var_1BC = 1
  loc_15A9D27:     var_18C = "ErrorDetails"
  loc_15A9D3A:     VarIndexLdRfVar
  loc_15A9D6B:     MsgBox(MemVar_41E208.Item.Item & " : " & MemVar_41E208.Item.Item, &H10, var_23C, var_25C, var_27C)
  loc_15A9D89:     Exit Sub
  loc_15A9D8D:   Else
  loc_15A9D8D:     var_15C = "ErrorCode"
  loc_15A9D93:     var_EC = 1
  loc_15A9D99:     var_AC = "ErrorDetails"
  loc_15A9DAC:     VarIndexLdRfVar
  loc_15A9DCB:     If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_15A9DDC:       var_15C = "ErrorCode"
  loc_15A9DE2:       var_EC = 1
  loc_15A9DFB:       VarIndexLdRfVar
  loc_15A9E0E:       var_11C = MemVar_41E208.Item.Item & " :   " 
  loc_15A9E31:       VarIndexLdRfVar
  loc_15A9E37:       var_21C = MemVar_41E208.Item.Item
  loc_15A9E43:       MsgBox("ErrorDetails" & var_21C, 1, "ErrorMessage", var_11C, "ErrorDetails")
  loc_15A9E61:       Exit Sub
  loc_15A9E62:     End If
  loc_15A9E62:   End If
  loc_15A9E62: End If
  loc_15A9E76: Me(20) = CStr(MemVar_41E208.Item)
  loc_15A9E89: Me(48) = Proc_343_2_EC7730(Me(20), "Data", var_EC, var_15C, 0, var_23C)
  loc_15A9E8F: var_AC = "Irn"
  loc_15A9EAE: Me(120) = CStr(Trim(MemVar_41E208.Item))
  loc_15A9EC0: Me(124) = Me(8)
  loc_15A9EC5: var_AC = "EwbNo"
  loc_15A9EE3: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_15A9EE6:   var_AC = "EwbNo"
  loc_15A9EF1:   var_BC = MemVar_41E208.Item
  loc_15A9EFA:   Me(148) = CStr(var_BC)
  loc_15A9F03: End If
  loc_15A9F0B: var_92 = FreeFile(var_BC)
  loc_15A9F11: var_AC = "QrCodeImage"
  loc_15A9F25: var_88 = CStr(MemVar_41E208.Item)
  loc_15A9F53: Open App.Path & "\QR.txt" For Output As var_92 Len = &HFF
  loc_15A9F67: Print var_92, var_88
  loc_15A9F70: Close var_92
  loc_15A9F72: var_AC = "AckNo"
  loc_15A9F8C: var_AC = "AckDt"
  loc_15A9FA3: var_AC = "Irn"
  loc_15A9FBD: var_AC = "SignedInvoice"
  loc_15A9FD7: var_AC = "SignedQRCode"
  loc_15A9FF1: var_AC = "Status"
  loc_15AA00B: var_AC = "Remarks"
  loc_15AA016: var_BC = MemVar_41E208.Item
  loc_15AA03A: var_AC = CStr(MemVar_41E208.Item)
  loc_15AA042: Proc_6_17_EAAE40(var_BC, var_AC, "Update eInvoiceBill1 Set AckNo=", var_4E8, -1, Me.Global.App, var_AC, var_AC)
  loc_15AA04A: var_DC = var_AC & var_BC 
  loc_15AA05D: Proc_6_8_EB1974(var_11C, MemVar_41E208.Item, var_DC & ",AckDt=", var_AC, var_AC)
  loc_15AA07D: Proc_6_17_EAAE40(var_21C, CStr(MemVar_41E208.Item), var_AC & var_11C & ",IRN=", var_AC)
  loc_15AA09D: Proc_6_17_EAAE40(var_25C, CStr(MemVar_41E208.Item), var_AC & var_21C & ",SignedInvoice=")
  loc_15AA0BD: Proc_6_17_EAAE40(var_2DC, CStr(MemVar_41E208.Item))
  loc_15AA0C5: var_2FC = var_92 & var_25C & ",SignedQRCode=" & var_2DC 
  loc_15AA0CE: var_32C = var_2FC & ",QrCodeImage=" 
  loc_15AA0DD: Proc_6_17_EAAE40(var_37C, var_88)
  loc_15AA0FF: Proc_6_17_EAAE40(var_3CC, Me(124))
  loc_15AA11F: Proc_6_17_EAAE40(var_42C, CStr(MemVar_41E208.Item))
  loc_15AA13F: Proc_6_17_EAAE40(var_498, CStr(var_BC))
  loc_15AA15F: Proc_6_17_EAAE40(var_4C8, arg_C)
  loc_15AA16B: var_120 = CStr(var_32C & var_37C & ",JsonResponse=" & var_3CC & ",Status=" & var_42C & ",Remarks=" & var_498 & " Where Docid=" & var_4C8)
  loc_15AA175: MemVar_41E208.Connection15.Execute var_120, var_AC, 
  loc_15AA1E4: var_430 = Me.Global.App
  loc_15AA200: Open App.Path & "\LastIRN.txt" For Output As var_92 Len = &HFF
  loc_15AA21F: Print var_92, Trim(Trim(Me(120)))
  loc_15AA22B: Close var_92
  loc_15AA239: var_430 = Me.Global.App
  loc_15AA255: Open App.Path & "\GeneInvBody.txt" For Output As var_92 Len = &HFF
  loc_15AA27B: Print var_92, Trim(Me(144))
  loc_15AA287: Close var_92
  loc_15AA295: var_430 = Me.Global.App
  loc_15AA2B1: Open App.Path & "\Result.txt" For Output As var_92 Len = &HFF
  loc_15AA2D7: Print var_92, Trim(Me(124))
  loc_15AA2E3: Close var_92
  loc_15AA2E9: Set var_4FC = New 
  loc_15AA2F2: var_430 = Me.Message.BodyPart
  loc_15AA2FA: Set var_500 = var_430
  loc_15AA303: var_500.ContentMediaType = "image/bmp/jpg/png"
  loc_15AA30E: var_500.ContentTransferEncoding = "base64"
  loc_15AA319: var_500.GetEncodedContentStream
  loc_15AA321: Set var_504 = var_430
  loc_15AA330: var_430 = Me.Global.App
  loc_15AA34A: var_504.LoadFromFile App.Path & "\QR.txt"
  loc_15AA35C: var_504.Flush
  loc_15AA363: Set var_504 = Nothing 
  loc_15AA387: Me(88) = App.Path & "\QRImage.jpg"
  loc_15AA399: var_500.GetDecodedContentStream
  loc_15AA3B1: Me.Global.App.SaveToFile Me(88)
  loc_15AA3B8: Set var_508 = Nothing 
  loc_15AA3BE: Set var_500 = Nothing 
  loc_15AA3C4: Set var_4FC = Nothing 
  loc_15AA3F1: Me(124) = Proc_348_9_E61E38(App.Path & "\Result.txt", 2)
  loc_15AA40B: Me(48) = Proc_343_2_EC7730(Me(124), Me.Global.App)
  loc_15AA422: If ((Me(148) = vbNullString) And (arg_10 = 1)) Then
  loc_15AA425:   var_AC = "InfoDtls"
  loc_15AA443:   If (IsNull(MemVar_41E208.Item) = &HFF) Then
  loc_15AA446:     Exit Sub
  loc_15AA44A:   Else
  loc_15AA44A:     var_15C = "InfCd"
  loc_15AA450:     var_EC = 1
  loc_15AA456:     var_AC = "InfoDtls"
  loc_15AA469:     VarIndexLdRfVar
  loc_15AA46F:     var_FC = MemVar_41E208.Item.Item
  loc_15AA488:     If CBool(var_FC <> vbNullString) Then
  loc_15AA48B:       var_19C = "ErrorCode"
  loc_15AA491:       var_17C = 1
  loc_15AA497:       var_15C = "Desc"
  loc_15AA49D:       var_EC = 1
  loc_15AA4A3:       var_AC = "InfoDtls"
  loc_15AA4B6:       VarIndexLdRfVar
  loc_15AA4BC:       VarLateMemCallLdRfVar
  loc_15AA4C4:       VarIndexLdRfVar
  loc_15AA4E7:       If CBool(MemVar_41E208.Item.Item <> vbNullString) Then
  loc_15AA4F8:         var_AC = "IRN Generated but - E-Way Bill not generated for this Invoice, Please check EWB Error given below!!"
  loc_15AA503:         MsgBox(var_AC, 0, var_DC, var_FC, var_11C)
  loc_15AA513:         var_19C = "ErrorCode"
  loc_15AA519:         var_17C = 1
  loc_15AA51F:         var_15C = "Desc"
  loc_15AA525:         var_EC = 1
  loc_15AA52B:         var_AC = "InfoDtls"
  loc_15AA53E:         VarIndexLdRfVar
  loc_15AA544:         VarLateMemCallLdRfVar
  loc_15AA54C:         VarIndexLdRfVar
  loc_15AA55C:         var_2EC = "ErrorMessage"
  loc_15AA562:         var_2AC = 1
  loc_15AA568:         var_28C = "Desc"
  loc_15AA56E:         var_24C = 1
  loc_15AA574:         var_1EC = "InfoDtls"
  loc_15AA587:         VarIndexLdRfVar
  loc_15AA58D:         VarLateMemCallLdRfVar
  loc_15AA595:         VarIndexLdRfVar
  loc_15AA5CF:         MsgBox("EWB Error:   " & MemVar_41E208.Item.Item & ":   " & MemVar_41E208.Item.Item, &H10, var_2FC, var_32C, var_37C)
  loc_15AA5F7:         GoTo loc_15AA5FA
  loc_15AA5FA:         ' Referenced from:   15AA5F7
  loc_15AA5FA:       End If
  loc_15AA5FA:     End If
  loc_15AA5FA:   End If
  loc_15AA5FA: End If
  loc_15AA5FA: Exit Sub
End Sub

Public Sub Proc_348_2_12D9784
  'Data Table: 421708
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_214 As Variant
  Dim var_25C As IBodyPart
  Dim var_260 As Stream
  Dim var_264 As Stream
  loc_12D9114: If (Proc_348_16_FAA558() = 0) Then
  loc_12D9117:   Exit Sub
  loc_12D9118: End If
  loc_12D911B: Me(124) = vbNullString
  loc_12D9123: Me(144) = vbNullString
  loc_12D9132: If (Me(120) = vbNullString) Then
  loc_12D9141:   var_88 = Me.Global.App
  loc_12D9164:   var_B0 = Trim(CVar(Proc_348_8_E61F38(App.Path & "\LastIRN.txt")))
  loc_12D916D:   Me(120) = CStr(var_B0)
  loc_12D919A:   var_B4 = CStr(Trim(Me(120)))
  loc_12D91B9:   MsgBox("Last Stored IRN Loaded", 0, var_B0, var_F4, var_114)
  loc_12D91E2:   MsgBox("Please give the IRN Number first!", 0, var_B0, var_F4, var_114)
  loc_12D91F2:   GoTo loc_12D91F5
  loc_12D91F5:   ' Referenced from: 12D91F2
  loc_12D91F5: End If
  loc_12D9216: var_F4 = CVar(Me(140) & "Invoice/irn/") & Trim(Me(120)) 
  loc_12D921F: var_114 = var_F4 & "?aspid=" 
  loc_12D922B: var_124 = var_114 & CVar(Me(28)) 
  loc_12D9234: var_134 = var_124 & "&password=" 
  loc_12D927F: var_214 = var_134 & CVar(Me(32)) & "&Gstin=" & CVar(Me(64)) & "&user_name=" & CVar(Me(68)) & "&AuthToken=" & CVar(Me(128)) 
  loc_12D9299: Me(24) = CStr(var_214 & "&QrCodeSize=" & CVar(Me(168)))
  loc_12D92CA: Me(8) = Proc_344_1_EDA3E0(Me(24))
  loc_12D92DA: Me(48) = Proc_343_2_EC7730(Me(8))
  loc_12D92E0: var_C4 = "Status"
  loc_12D92FE: If (MemVar_41E208.Item = "0") Then
  loc_12D9301:   var_144 = "ErrorMessage"
  loc_12D9307:   var_E4 = 1
  loc_12D930D:   var_C4 = "ErrorDetails"
  loc_12D9318:   var_A0 = MemVar_41E208.Item
  loc_12D9320:   VarIndexLdRfVar
  loc_12D9326:   VarLateMemCallLdRfVar
  loc_12D9341:   MsgBox(var_F4, &H10, var_114, var_124, var_134)
  loc_12D9355:   Exit Sub
  loc_12D9359: Else
  loc_12D9359:   var_C4 = "status_cd"
  loc_12D9377:   If (MemVar_41E208.Item = "0") Then
  loc_12D937A:     var_E4 = "error_cd"
  loc_12D9380:     var_C4 = "error"
  loc_12D9393:     var_B0 = MemVar_41E208.Item.Item
  loc_12D93AA:     If (var_B0 = "GSP752") Then
  loc_12D93C6:       MsgBox("eInvoice AuthToken not found or expired, Please click on Get Auth Token button first and then call this API again.", 0, var_B0, var_F4, var_114)
  loc_12D93D6:       Exit Sub
  loc_12D93D7:     End If
  loc_12D93D7:     var_E4 = "message"
  loc_12D93DD:     var_C4 = "error"
  loc_12D93E8:     var_A0 = MemVar_41E208.Item
  loc_12D93F0:     VarLateMemCallLdRfVar
  loc_12D940B:     MsgBox(var_B0, &H10, var_F4, var_114, var_124)
  loc_12D941D:     Exit Sub
  loc_12D941E:   End If
  loc_12D941E:   var_C4 = "Message"
  loc_12D943C:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_12D943F:     var_C4 = "Message"
  loc_12D9465:     MsgBox(MemVar_41E208.Item, &H10, var_B0, var_F4, var_114)
  loc_12D9475:     Exit Sub
  loc_12D9476:   End If
  loc_12D9479:   Me(124) = vbNullString
  loc_12D947E: End If
  loc_12D9489: var_A0 = MemVar_41E208.Item
  loc_12D9492: Me(20) = CStr(var_A0)
  loc_12D94A5: Me(48) = Proc_343_2_EC7730(Me(20), "Data", var_A0, "Data", "Data", var_A0, "Data")
  loc_12D94AB: var_C4 = "Irn"
  loc_12D94CA: Me(120) = CStr(Trim(MemVar_41E208.Item))
  loc_12D94DC: Me(124) = Me(8)
  loc_12D94E1: var_C4 = "EwbNo"
  loc_12D94FF: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_12D9502:   var_C4 = "EwbNo"
  loc_12D9516:   Me(148) = CStr(MemVar_41E208.Item)
  loc_12D951F: End If
  loc_12D954F: Me(120) = Replace(Me(120), CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_12D9563: var_A0 = Chr(&HD)
  loc_12D958B: Me(120) = Replace(Me(120), CStr(var_A0), vbNullString, 1, -1, 0)
  loc_12D95B6: Me(120) = Replace(Me(120), vbCrLf, vbNullString, 1, -1, 0)
  loc_12D95C7: Me(104) = CVar(FreeFile(var_A0))
  loc_12D95DC: var_88 = Me.Global.App
  loc_12D95FB: Open App.Path & "\LastIRN.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_12D9614: Print CInt(Me(104)), Me(120)
  loc_12D9620: Close CInt(Me(104))
  loc_12D962D: Me(104) = CVar(FreeFile(var_A0))
  loc_12D9642: var_88 = Me.Global.App
  loc_12D9661: Open App.Path & "\QR.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_12D966F: var_C4 = "QrCodeImage"
  loc_12D968D: Print CInt(Me(104)), MemVar_41E208.Item
  loc_12D969C: Close CInt(Me(104))
  loc_12D96A2: Set var_258 = New 
  loc_12D96AB: var_88 = Me.Message.BodyPart
  loc_12D96B3: Set var_25C = var_88
  loc_12D96BC: var_25C.ContentMediaType = "image/bmp/jpg/png"
  loc_12D96C7: var_25C.ContentTransferEncoding = "base64"
  loc_12D96D2: var_25C.GetEncodedContentStream
  loc_12D96DA: Set var_260 = var_88
  loc_12D96E9: var_88 = Me.Global.App
  loc_12D9703: var_260.LoadFromFile App.Path & "\QR.txt"
  loc_12D9715: var_260.Flush
  loc_12D971C: Set var_260 = Nothing 
  loc_12D9740: Me(88) = App.Path & "\QRImage.jpg"
  loc_12D9752: var_25C.GetDecodedContentStream
  loc_12D976A: Me.Global.App.SaveToFile Me(88)
  loc_12D9771: Set var_264 = Nothing 
  loc_12D9777: Set var_25C = Nothing 
  loc_12D977D: Set var_258 = Nothing 
  loc_12D9781: Exit Sub
End Sub

Public Sub Proc_348_3_11E92F0
  'Data Table: 421708
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim var_12C As String
  Dim var_D4 As Variant
  Dim var_14C As String
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  loc_11E8E9C: If (Proc_348_16_FAA558() = 0) Then
  loc_11E8E9F:   Exit Sub
  loc_11E8EA0: End If
  loc_11E8EA3: Me(148) = vbNullString
  loc_11E8EB2: If (Me(128) = vbNullString) Then
  loc_11E8ECE:   MsgBox("Generate Auth Code First", &H10, var_C4, var_E4, var_104)
  loc_11E8EDE:   Exit Sub
  loc_11E8EDF: End If
  loc_11E8EE9: If (Me(120) = vbNullString) Then
  loc_11E8EF8:   var_108 = Me.Global.App
  loc_11E8F1B:   var_C4 = Trim(CVar(Proc_348_8_E61F38(App.Path & "\LastIRN.txt")))
  loc_11E8F24:   Me(120) = CStr(var_C4)
  loc_11E8F54:   MsgBox("Last Stored IRN Loaded", 0, var_C4, var_E4, var_104)
  loc_11E8F7D:   MsgBox("Please give the IRN Number first!", 0, var_C4, var_E4, var_104)
  loc_11E8F8D:   GoTo loc_11E8F90
  loc_11E8F90:   ' Referenced from: 11E8F8D
  loc_11E8F90: End If
  loc_11E8FF3: Me(144) = "{" & vbCrLf & "'Irn':'" & Me(120) & " '," & vbCrLf & "'CnlRsn':'1'," & vbCrLf & "'CnlRem':'Wrong entry'" & vbCrLf & "}"
  loc_11E9017: Me(144) = Replace(Me(144), "'", """", 1, -1, 0)
  loc_11E9028: var_C4 = "Cancle IRN"
  loc_11E904D: Me(84) = CStr(MsgBox(CVar("Do you want to cancle IRN Number: " & Me(120) & "?"), 4, var_C4, var_E4, var_104))
  loc_11E906F: If (CDbl(Me(84)) = CDbl(6)) Then
  loc_11E9077:   var_134 = Me(144)
  loc_11E90BC:   var_12C = Me(140) & "Invoice/Cancel?&aspid=" & Me(28) & "&password=" & Me(32) & "&gstin=" & Me(64) & "&User_name=" & Me(68)
  loc_11E90DC:   Me(24) = var_12C & "&eInvPwd=" & Me(72) & "&AuthToken=" & Me(128)
  loc_11E9108:   Me(8) = Proc_344_2_E94118(Me(24))
  loc_11E9118:   Me(48) = Proc_343_2_EC7730(Me(8))
  loc_11E911E:   var_94 = "Status"
  loc_11E913C:   If (MemVar_41E208.Item = "0") Then
  loc_11E913F:     var_14C = "ErrorMessage"
  loc_11E9145:     var_D4 = 1
  loc_11E914B:     var_94 = "ErrorDetails"
  loc_11E9156:     var_A4 = MemVar_41E208.Item
  loc_11E915E:     VarIndexLdRfVar
  loc_11E9164:     VarLateMemCallLdRfVar
  loc_11E917F:     MsgBox(var_E4, &H10, var_104, var_18C, var_1AC)
  loc_11E9193:     Exit Sub
  loc_11E9197:   Else
  loc_11E9197:     var_94 = "status_cd"
  loc_11E91B5:     If (MemVar_41E208.Item = "0") Then
  loc_11E91B8:       var_D4 = "message"
  loc_11E91BE:       var_94 = "error"
  loc_11E91C9:       var_A4 = MemVar_41E208.Item
  loc_11E91D1:       VarLateMemCallLdRfVar
  loc_11E91EC:       MsgBox(var_C4, &H10, var_E4, var_104, var_18C)
  loc_11E91FE:       Exit Sub
  loc_11E91FF:     End If
  loc_11E91FF:     var_94 = "Message"
  loc_11E9212:     var_D4 = vbNullString
  loc_11E921D:     If CBool(MemVar_41E208.Item <> var_D4) Then
  loc_11E922E:       var_94 = "Message"
  loc_11E9239:       var_A4 = MemVar_41E208.Item
  loc_11E9241:       MsgBox(var_A4, var_94, 0, var_C4, var_E4)
  loc_11E9251:       Exit Sub
  loc_11E9252:     End If
  loc_11E9252:   End If
  loc_11E925C:   Me(48) = Proc_343_2_EC7730(Me(8), var_104, var_94, var_A4, var_94, var_D4)
  loc_11E926D:   var_A4 = MemVar_41E208.Item
  loc_11E9276:   Me(20) = CStr(var_A4)
  loc_11E9289:   Me(48) = Proc_343_2_EC7730(Me(20), "Data", "Data", var_A4)
  loc_11E928F:   var_D4 = "Irn No: "
  loc_11E92B9:   var_104 = "Irn" & MemVar_41E208.Item & vbCrLf & "CancelDate : " 
  loc_11E92D5:   Me(124) = CStr("CancelDate" & MemVar_41E208.Item)
  loc_11E92ED: Else
  loc_11E92ED:   Exit Sub
  loc_11E92EE: End If
  loc_11E92EE: Exit Sub
End Sub

Public Sub Proc_348_4_136C004
  'Data Table: 421708
  Dim var_A0 As Variant
  Dim var_D0 As String
  Dim var_134 As String
  Dim var_F0 As Variant
  Dim var_154 As String
  Dim var_100 As Variant
  Dim var_1D4 As String
  Dim var_1B4 As Integer
  Dim var_184 As String
  Dim var_1A4 As Variant
  Dim var_204 As Variant
  Dim var_120 As Variant
  Dim var_B0 As Variant
  loc_136B7E4: If (Proc_348_16_FAA558() = 0) Then
  loc_136B7E7:   Exit Sub
  loc_136B7E8: End If
  loc_136B7EB: Me(144) = vbNullString
  loc_136B7FC: var_88 = Me.Global.App
  loc_136B81F: var_B0 = Trim(CVar(Proc_348_8_E61F38(App.Path & "\LastIRN.txt")))
  loc_136B828: Me(120) = CStr(var_B0)
  loc_136B849: If (Me(28) = vbNullString) Then
  loc_136B865:   MsgBox("Please Enter your ASP ID", &H10, var_B0, var_100, var_120)
  loc_136B875:   Exit Sub
  loc_136B876: End If
  loc_136B880: If (Me(32) = vbNullString) Then
  loc_136B89C:   MsgBox("Please Enter your ASP Password", &H10, var_B0, var_100, var_120)
  loc_136B8AC:   Exit Sub
  loc_136B8AD: End If
  loc_136B8F5: var_128 = "{" & vbCrLf & "'Irn':'" & Me(120) & "'," & vbCrLf & "'TransId':'12AWGPV7107B1Z1'," & vbCrLf & "'Distance':0" & vbCrLf & "}"
  loc_136B910: Me(144) = var_128
  loc_136B934: Me(144) = Replace(Me(144), "'", """", 1, -1, 0)
  loc_136B93F: Me(80) = Me(144)
  loc_136B96D: var_134 = "http://gstsandbox.charteredinfo.com/eiewb/dec/v1.03/ewaybill?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64)
  loc_136B98D: Me(24) = var_134 & "&user_name=" & Me(68) & "&AuthToken=" & Me(128)
  loc_136B9B5: Me(8) = Proc_344_2_E94118(Me(24))
  loc_136B9C5: Me(48) = Proc_343_2_EC7730(Me(8))
  loc_136B9CB: var_D0 = "Status"
  loc_136B9E9: If (MemVar_41E208.Item = "0") Then
  loc_136B9EC:   var_154 = "ErrorCode"
  loc_136B9F2:   var_F0 = 1
  loc_136B9F8:   var_D0 = "ErrorDetails"
  loc_136BA0B:   VarIndexLdRfVar
  loc_136BA2A:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_136BA2D:     var_154 = "ErrorCode"
  loc_136BA33:     var_F0 = 1
  loc_136BA39:     var_D0 = "ErrorDetails"
  loc_136BA4C:     VarIndexLdRfVar
  loc_136BA5C:     var_1D4 = "ErrorMessage"
  loc_136BA62:     var_1B4 = 1
  loc_136BA68:     var_184 = "ErrorDetails"
  loc_136BA7B:     VarIndexLdRfVar
  loc_136BAA1:     var_120 = MemVar_41E208.Item.Item & " : " 
  loc_136BAAC:     MsgBox(var_120 & MemVar_41E208.Item.Item, &H10, var_234, var_254, var_274)
  loc_136BACA:     Exit Sub
  loc_136BACB:   End If
  loc_136BACB: End If
  loc_136BACB: var_D0 = "Status_cd"
  loc_136BAD6: var_A0 = MemVar_41E208.Item
  loc_136BADE: var_F0 = "0"
  loc_136BAF3: var_100 = MemVar_41E208.Item
  loc_136BB05: var_1A4 = "status_cd" Or (var_100 = "0")
  loc_136BB12: If CBool(var_1A4) Then
  loc_136BB15:   var_F0 = "error_cd"
  loc_136BB1B:   var_D0 = "error"
  loc_136BB45:   If (MemVar_41E208.Item.Item = "GSP752") Then
  loc_136BB56:     var_F0 = "message"
  loc_136BB6F:     VarLateMemCallLdRfVar
  loc_136BB77:     MsgBox(MemVar_41E208.Item, "error", var_F0, 0, var_100)
  loc_136BB94:     var_B0 = "Message Box Title"
  loc_136BB9F:     var_D0 = "Do you want to call AuthToken"
  loc_136BBA4:     var_A0 = var_D0
  loc_136BBB1:     Me(12) = CStr(MsgBox(var_A0, &H124, var_B0, var_100, var_120))
  loc_136BBD0:     If (CDbl(Me(12)) = CDbl(6)) Then
  loc_136BBD3:       Proc_348_0_113CB24(var_120, var_1A4, var_D0, var_F0, (var_A0 = var_F0), var_D0)
  loc_136BBD8:       var_D0 = "Status"
  loc_136BBF6:       If (MemVar_41E208.Item = "0") Then
  loc_136BBF9:         var_154 = "ErrorMessage"
  loc_136BBFF:         var_F0 = 1
  loc_136BC05:         var_D0 = "ErrorDetails"
  loc_136BC10:         var_A0 = MemVar_41E208.Item
  loc_136BC18:         VarIndexLdRfVar
  loc_136BC1E:         VarLateMemCallLdRfVar
  loc_136BC39:         MsgBox(var_100, &H10, var_120, var_1A4, var_1F4)
  loc_136BC4D:         Exit Sub
  loc_136BC51:       Else
  loc_136BC51:         var_D0 = "status_cd"
  loc_136BC6F:         If (MemVar_41E208.Item = "0") Then
  loc_136BC99:           VarLateMemCallLdRfVar
  loc_136BCA1:           MsgBox(MemVar_41E208.Item, "error", "message", 0, var_100)
  loc_136BCB3:           Exit Sub
  loc_136BCB4:         End If
  loc_136BCB4:         var_D0 = "Message"
  loc_136BCD2:         If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_136BCF6:           MsgBox(MemVar_41E208.Item, "Message", 0, var_B0, var_100)
  loc_136BD06:           Exit Sub
  loc_136BD07:         End If
  loc_136BD0A:         Me(124) = vbNullString
  loc_136BD0F:       End If
  loc_136BD12:     Else
  loc_136BD12:       Exit Sub
  loc_136BD13:     End If
  loc_136BD16:   Else
  loc_136BD16:     var_F0 = "message"
  loc_136BD1C:     var_D0 = "error"
  loc_136BD27:     var_A0 = MemVar_41E208.Item
  loc_136BD2F:     VarLateMemCallLdRfVar
  loc_136BD4A:     MsgBox(var_B0, &H10, var_100, var_120, var_1A4)
  loc_136BD5C:   End If
  loc_136BD5C:   Exit Sub
  loc_136BD5D: End If
  loc_136BD5D: var_D0 = "Message"
  loc_136BD7B: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_136BD9F:   MsgBox(MemVar_41E208.Item, "Message", 0, var_B0, var_100)
  loc_136BDAF:   Exit Sub
  loc_136BDB0: End If
  loc_136BDB0: var_D0 = "Status"
  loc_136BDCE: If (MemVar_41E208.Item = "0") Then
  loc_136BDD1:   var_154 = "ErrorCode"
  loc_136BDD7:   var_F0 = 1
  loc_136BDDD:   var_D0 = "ErrorDetails"
  loc_136BDF0:   VarIndexLdRfVar
  loc_136BE0F:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_136BE12:     var_154 = "ErrorCode"
  loc_136BE18:     var_F0 = 1
  loc_136BE1E:     var_D0 = "ErrorDetails"
  loc_136BE31:     VarIndexLdRfVar
  loc_136BE41:     var_1D4 = "ErrorMessage"
  loc_136BE47:     var_1B4 = 1
  loc_136BE4D:     var_184 = "ErrorDetails"
  loc_136BE60:     VarIndexLdRfVar
  loc_136BE91:     MsgBox(MemVar_41E208.Item.Item & " : " & MemVar_41E208.Item.Item, &H10, var_234, var_254, var_274)
  loc_136BEAF:     Exit Sub
  loc_136BEB3:   Else
  loc_136BEB3:     var_154 = "ErrorCode"
  loc_136BEB9:     var_F0 = 1
  loc_136BEBF:     var_D0 = "ErrorDetails"
  loc_136BED2:     VarIndexLdRfVar
  loc_136BEF1:     If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_136BEF4:       var_154 = "ErrorCode"
  loc_136BEFA:       var_F0 = 1
  loc_136BF00:       var_D0 = "ErrorDetails"
  loc_136BF13:       VarIndexLdRfVar
  loc_136BF23:       var_1D4 = "ErrorMessage"
  loc_136BF29:       var_1B4 = 1
  loc_136BF2F:       var_184 = "ErrorDetails"
  loc_136BF42:       VarIndexLdRfVar
  loc_136BF48:       var_204 = MemVar_41E208.Item.Item
  loc_136BF73:       MsgBox(MemVar_41E208.Item.Item & " :   " & var_204, &H10, var_234, var_254, var_274)
  loc_136BF91:       Exit Sub
  loc_136BF92:     End If
  loc_136BF92:   End If
  loc_136BF92: End If
  loc_136BFA6: Me(20) = CStr(MemVar_41E208.Item)
  loc_136BFB9: Me(48) = Proc_343_2_EC7730(Me(20), "Data", var_204, var_184, var_1B4, var_1D4)
  loc_136BFBF: var_D0 = "Irn"
  loc_136BFD3: Me(120) = CStr(MemVar_41E208.Item)
  loc_136BFE1: Me(124) = Me(8)
  loc_136BFE6: var_D0 = "EwbNo"
  loc_136BFFA: Me(148) = CStr(MemVar_41E208.Item)
  loc_136C003: Exit Sub
End Sub

Public Sub Proc_348_5_122F638
  'Data Table: 421708
  Dim var_94 As String
  Dim var_110 As String
  Dim var_124 As String
  Dim var_A4 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_138 As String
  Dim var_104 As Variant
  Dim var_198 As Variant
  Dim var_E4 As Variant
  loc_122F148: If (Proc_348_16_FAA558() = 0) Then
  loc_122F14B:   Exit Sub
  loc_122F14C: End If
  loc_122F14F: Me(124) = vbNullString
  loc_122F157: Me(144) = vbNullString
  loc_122F166: If (Me(148) = vbNullString) Then
  loc_122F182:   MsgBox("Please Enter EWB Number first!", &H10, var_C4, var_E4, var_104)
  loc_122F192:   Exit Sub
  loc_122F193: End If
  loc_122F1CD: var_124 = "{" & vbCrLf & "'ewbNo':'" & Me(148) & " '," & vbCrLf & "'cancelRsnCode':'2'," & vbCrLf & "'cancelRmrk':'Cancelled the order'"
  loc_122F1DB: Me(60) = var_124 & vbCrLf & "}"
  loc_122F1FB: Me(144) = Me(60)
  loc_122F21F: Me(144) = Replace(Me(144), "'", """", 1, -1, 0)
  loc_122F22A: Me(60) = Me(144)
  loc_122F25F: Me(84) = CStr(MsgBox(CVar("Do you want to cancle eWay Bill Number: " & Me(148) & "?"), 4, "Cancle eWay Bill", var_E4, var_104))
  loc_122F281: If (CDbl(Me(84)) = CDbl(6)) Then
  loc_122F29B:   var_110 = "http://gstsandbox.charteredinfo.com/ewaybillapi/dec/v1.03/ewayapi?SelEInvSb&action=CANEWB" & "&aspid=" & Me(28) & "&password="
  loc_122F2D4:   Me(24) = var_110 & Me(32) & "&Gstin=" & Me(64) & "&user_name=" & Me(68) & "&AuthToken=" & Me(128)
  loc_122F2FE:   Me(8) = Proc_344_2_E94118(Me(24))
  loc_122F30E:   Me(48) = Proc_343_2_EC7730(Me(8))
  loc_122F314:   var_94 = "status_cd"
  loc_122F332:   If (MemVar_41E208.Item = "0") Then
  loc_122F335:     var_D4 = "error_cd"
  loc_122F33B:     var_94 = "error"
  loc_122F34E:     var_C4 = MemVar_41E208.Item.Item
  loc_122F371:     var_104 = MemVar_41E208.Item
  loc_122F379:     var_198 = var_104.Item
  loc_122F39C:     If CBool("error" Or (var_198 = "GSP752")) Then
  loc_122F3C6:       VarLateMemCallLdRfVar
  loc_122F3CE:       MsgBox(MemVar_41E208.Item, "error", "message", 0, var_E4)
  loc_122F3EB:       var_C4 = "Message Box Title"
  loc_122F3FB:       var_A4 = "Do you want to call AuthToken"
  loc_122F408:       Me(12) = CStr(MsgBox(var_A4, &H124, var_C4, var_E4, var_104))
  loc_122F427:       If (CDbl(Me(12)) = CDbl(6)) Then
  loc_122F42A:         Proc_348_0_113CB24(var_104, var_198, "error_cd", (var_C4 = "GSP102"))
  loc_122F43A:         Me(104) = CVar(FreeFile(var_A4))
  loc_122F45C:         var_C4 = MemVar_41E208.Item.Item
  loc_122F465:         Me(40) = CStr(var_C4)
  loc_122F47E:         var_1BC = Me.Global.App
  loc_122F49D:         Open App.Path & "\LastAuthToken.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_122F4B6:         Print CInt(Me(104)), Me(40)
  loc_122F4C2:         Close CInt(Me(104))
  loc_122F4C4:         Proc_348_7_11A5808("Data", "AuthToken", "Data")
  loc_122F4CC:       Else
  loc_122F4CC:         Exit Sub
  loc_122F4CD:       End If
  loc_122F4CD:     End If
  loc_122F4CD:   End If
  loc_122F4CD:   var_94 = "Status"
  loc_122F4EB:   If (MemVar_41E208.Item = "0") Then
  loc_122F4EE:     var_138 = "ErrorMessage"
  loc_122F4F4:     var_D4 = 1
  loc_122F4FA:     var_94 = "ErrorDetails"
  loc_122F505:     var_A4 = MemVar_41E208.Item
  loc_122F50D:     VarIndexLdRfVar
  loc_122F513:     VarLateMemCallLdRfVar
  loc_122F52E:     MsgBox(var_E4, &H10, var_104, var_198, var_1A8)
  loc_122F542:     Exit Sub
  loc_122F546:   Else
  loc_122F546:     var_94 = "Message"
  loc_122F564:     If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_122F567:       var_94 = "Message"
  loc_122F58D:       MsgBox(MemVar_41E208.Item, &H10, var_C4, var_E4, var_104)
  loc_122F59D:       Exit Sub
  loc_122F59E:     End If
  loc_122F59E:     var_94 = "status_cd"
  loc_122F5BC:     If (MemVar_41E208.Item = "0") Then
  loc_122F5BF:       var_D4 = "message"
  loc_122F5C5:       var_94 = "error"
  loc_122F5D0:       var_A4 = MemVar_41E208.Item
  loc_122F5D8:       var_C4 = var_A4.Item
  loc_122F5F0:       var_138 = "Error Code - "
  loc_122F5FC:       MsgBox(var_138 & var_C4, &H10, var_104, var_198, var_1A8)
  loc_122F610:       Exit Sub
  loc_122F611:     End If
  loc_122F611:   End If
  loc_122F614: Else
  loc_122F614:   Exit Sub
  loc_122F618:   Me(124) = vbNullString
  loc_122F61D: End If
  loc_122F622: Me(124) = Me(8)
  loc_122F631: Me(48) = Proc_343_2_EC7730(Me(20), var_C4, var_94, var_D4, var_94, var_A4)
  loc_122F637: Exit Sub
End Sub

Public Sub Proc_348_6_12EEBF4(arg_C) '12EEBF4
  'Data Table: 421708
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_138 As String
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_150 As String
  Dim var_DC As Variant
  Dim var_180 As String
  Dim var_160 As String
  Dim var_11C As Variant
  Dim var_190 As Variant
  Dim var_FC As Variant
  Dim var_1B0 As Variant
  Dim var_222 As Integer
  Dim var_25C As Double
  loc_12EE590: If (Proc_348_16_FAA558() = 0) Then
  loc_12EE593:   Exit Sub
  loc_12EE594: End If
  loc_12EE59E: If (Me(148) = vbNullString) Then
  loc_12EE5BA:   MsgBox("Please Enter EWB Number first!", 0, var_DC, var_FC, var_11C)
  loc_12EE5CA:   Exit Sub
  loc_12EE5CB: End If
  loc_12EE5D6: var_DC = "Print EWB"
  loc_12EE5E1: var_AC = "Please note that, This will generate a sample PDF for E-Way Bill generated from sandbox Data. You need ASP Credits to call Print EWB API. Please recharge your account before calling this API"
  loc_12EE5EC: MsgBox("Please Enter EWB Number first!", 0, var_DC, var_FC, var_11C)
  loc_12EE601: var_90 = Me(148)
  loc_12EE61B: var_9C = Environ$("USERPROFILE") & "\Desktop"
  loc_12EE62B: var_124 = var_9C & "\EWB - "
  loc_12EE639: var_98 = Environ$("USERPROFILE") & var_90 & ".PDF"
  loc_12EE65C: var_12C = "http://gstsandbox.charteredinfo.com/ewaybillapi/dec/v1.03/ewayapi?action=GetEwayBill&aspid=" & Me(28) & "&password=" & Me(32)
  loc_12EE6A8: var_88 = Proc_344_1_EDA3E0(var_12C & "&gstin=" & Me(64) & "&ewbNo=" & var_90 & "&authtoken=" & Me(128))
  loc_12EE6B3: Me(48) = Proc_343_2_EC7730(var_88)
  loc_12EE6B9: var_AC = "Status"
  loc_12EE6D7: If (MemVar_41E208.Item = "0") Then
  loc_12EE6DA:   var_150 = "ErrorMessage"
  loc_12EE6E0:   var_EC = 1
  loc_12EE6E6:   var_AC = "ErrorDetails"
  loc_12EE6F1:   var_BC = MemVar_41E208.Item
  loc_12EE6F9:   VarIndexLdRfVar
  loc_12EE6FF:   VarLateMemCallLdRfVar
  loc_12EE71A:   MsgBox(var_FC, &H10, var_11C, var_190, var_1B0)
  loc_12EE72E:   Exit Sub
  loc_12EE732: Else
  loc_12EE732:   var_AC = "Message"
  loc_12EE750:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_12EE774:     MsgBox(MemVar_41E208.Item, "Message", 0, var_DC, var_FC)
  loc_12EE784:     Exit Sub
  loc_12EE785:   End If
  loc_12EE785:   var_AC = "status_cd"
  loc_12EE7A3:   If (MemVar_41E208.Item = "0") Then
  loc_12EE7A6:     var_EC = "error_cd"
  loc_12EE7AC:     var_AC = "error"
  loc_12EE7D6:     If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_12EE7D9:       var_EC = "error_cd"
  loc_12EE7DF:       var_AC = "error"
  loc_12EE7F2:       var_DC = MemVar_41E208.Item.Item
  loc_12EE7FC:       var_180 = "message"
  loc_12EE802:       var_160 = "error"
  loc_12EE80D:       var_11C = MemVar_41E208.Item
  loc_12EE815:       var_190 = var_11C.Item
  loc_12EE835:       var_FC = var_DC & " :   " 
  loc_12EE840:       MsgBox(var_FC & var_190, &H10, var_1D0, var_1F0, var_210)
  loc_12EE85A:       Exit Sub
  loc_12EE85B:     End If
  loc_12EE85B:   End If
  loc_12EE85B: End If
  loc_12EE860: var_222 = CInt(Len(var_88))
  loc_12EE894: var_BC = Right(var_88, CLng((var_222 - 1)))
  loc_12EE8AF: var_22C = Me.Global.App
  loc_12EE8D2: var_DC = Trim(CVar(Proc_348_8_E61F38(App.Path & "\LastIRN.txt", var_222, var_190, var_160, var_180, var_DC)))
  loc_12EE911: var_88 = CStr(Left(var_88, 1)) & """irn"":""" & CStr(var_DC) & """," & CStr(Left(var_88, 1))
  loc_12EE920: Me(124) = var_88
  loc_12EE93D: If (InStr(1, var_88, var_90, 1) <> 0) Then
  loc_12EE96E:   var_138 = "https://einvapi.charteredinfo.com/aspapi/v1.0/" & "printewb" & "?&aspid=" & Me(28) & "&password=" & Me(32) & "&gstin="
  loc_12EE9A0:   Set var_230 = CreateObject("WinHttp.WinHttpRequest.5.1", 0)
  loc_12EE9A6:   var_AC = False
  loc_12EE9B4:   Call 0.Method_arg_24 ("POST", var_138 & Me(64), var_AC, var_AC, var_EC)
  loc_12EE9C2:   Call 0.Method_arg_28 ("Content-Type", "application/json; charset=utf-8", var_AC)
  loc_12EE9D1:   Call 0.Method_arg_34 (CVar(var_88), var_EC)
  loc_12EE9EC:   SetVarVarFunc
  loc_12EE9F7:   var_240.Type = 1
  loc_12EEA00:   Call var_240.Open
  loc_12EEA0C:   Call 0.Method_Proc_348_6_12EEBF44 (CreateObject("ADODB.Stream", 0), var_240, CreateObject("ADODB.Stream", 0))
  loc_12EEA1A:   Call var_240.Write
  loc_12EEA2A:   var_CC = 2
  loc_12EEA35:   Call var_240.SaveToFile
  loc_12EEA66:   ShellExecute(arg_C, "Save", var_98, 0, var_9C, 1)
  loc_12EEA93:   var_AC = "Please note that: The EWB Generated PDF File in this demo project is a sample only with SAND Box Data, and not for any official use."
  loc_12EEA9E:   MsgBox(var_AC, 0, var_DC, var_FC, var_11C)
  loc_12EEAC3:   var_248 = var_9C & "\" & var_90 & " Signed.pdf"
  loc_12EEAD8:   var_DC = "Question"
  loc_12EEB0F:   If (CDbl(CStr(MsgBox("Do you want to Sign the generated EWB Digitally?", 4, var_DC, var_FC, var_11C))) = CDbl(6)) Then
  loc_12EEB15:     var_250 = "C:\TaxPro\TaxPro PDF Signer\TaxPro PDF Signer.exe"
  loc_12EEB20:     If (var_250 = vbNullString) Then
  loc_12EEB36:       var_BC = "TaxPro PDF Signing Utility is not isntalled in your PC, Please contact TaxPro GSP for PDF Signing!"
  loc_12EEB3C:       MsgBox(var_BC, 0, var_DC, var_FC, var_11C)
  loc_12EEB4C:       Exit Sub
  loc_12EEB4D:     End If
  loc_12EEB99:     var_25C = Shell("""" & var_250 & """ """ & var_98 & """ """ & var_248 & """ ", 2)
  loc_12EEB9F:   Else
  loc_12EEB9F:     Exit Sub
  loc_12EEBA0:   End If
  loc_12EEBA3: Else
  loc_12EEBB9:   MsgBox(var_88, 0, var_BC, var_DC, var_FC)
  loc_12EEBE0:   MsgBox("Error Occured while Getting EwayBill Details, Please Retry", &H10, var_DC, var_FC, var_11C)
  loc_12EEBF0: End If
  loc_12EEBF0: Exit Sub
End Sub

Public Sub Proc_348_7_11A5808
  'Data Table: 421708
  Dim var_9C As String
  Dim var_130 As String
  Dim var_DC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_15C As String
  Dim var_8A As Integer
  loc_11A5424: If (Proc_348_16_FAA558() = 0) Then
  loc_11A5427:   Exit Sub
  loc_11A5428: End If
  loc_11A5432: If (Me(128) = vbNullString) Then
  loc_11A544E:   MsgBox("Please take AuthToken First", 0, var_CC, var_EC, var_10C)
  loc_11A545E:   Exit Sub
  loc_11A545F: End If
  loc_11A5469: If (Me(132) = vbNullString) Then
  loc_11A5485:   MsgBox("Please Provide the GSTIN to be searched!!", 0, var_CC, var_EC, var_10C)
  loc_11A5495:   Exit Sub
  loc_11A5496: End If
  loc_11A54DF: var_130 = Me(136) & "Master/gstin/" & Me(132) & "?aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64) & "&user_name="
  loc_11A54F8: Me(24) = var_130 & Me(68) & "&AuthToken=" & Me(128)
  loc_11A5521: Me(8) = Proc_344_1_EDA3E0(Me(24))
  loc_11A5531: Me(48) = Proc_343_2_EC7730(Me(8))
  loc_11A553F: For Each var_148 In Me(48)
  loc_11A5550:   If (var_148 = "error") Then
  loc_11A5553:     var_DC = "error_cd"
  loc_11A5559:     var_9C = "error"
  loc_11A5583:     If (MemVar_41E208.Item.Item = "GSP752") Then
  loc_11A55AD:       VarLateMemCallLdRfVar
  loc_11A55B5:       MsgBox(MemVar_41E208.Item, "error", "message", 0, var_EC)
  loc_11A55E2:       var_AC = "Do you want to call AuthToken"
  loc_11A55EF:       Me(12) = CStr(MsgBox(var_AC, &H124, "Message Box Title", var_EC, var_10C))
  loc_11A560E:       If (CDbl(Me(12)) = CDbl(6)) Then
  loc_11A5611:         Proc_348_0_113CB24(var_10C, var_18C)
  loc_11A561E:         var_8A = FreeFile(var_AC)
  loc_11A563D:         var_CC = MemVar_41E208.Item.Item
  loc_11A5646:         Me(40) = CStr(var_CC)
  loc_11A565F:         var_190 = Me.Global.App
  loc_11A567B:         Open App.Path & "\LastAuthToken.txt" For Output As var_8A Len = &HFF
  loc_11A5691:         Print var_8A, Me(40)
  loc_11A569A:         Close var_8A
  loc_11A569C:         Proc_348_7_11A5808("Data", "AuthToken", var_8A)
  loc_11A56A4:       Else
  loc_11A56A4:         Exit Sub
  loc_11A56A5:       End If
  loc_11A56A5:     End If
  loc_11A56A5:   End If
  loc_11A56A8: Next
  loc_11A56AE: var_9C = "Status"
  loc_11A56CC: If (MemVar_41E208.Item = "0") Then
  loc_11A56CF:   var_15C = "ErrorMessage"
  loc_11A56D5:   var_DC = 1
  loc_11A56DB:   var_9C = "ErrorDetails"
  loc_11A56E6:   var_AC = MemVar_41E208.Item
  loc_11A56EE:   VarIndexLdRfVar
  loc_11A56F4:   VarLateMemCallLdRfVar
  loc_11A570F:   MsgBox(var_EC, &H10, var_10C, var_18C, var_1C0)
  loc_11A5723:   Exit Sub
  loc_11A5727: Else
  loc_11A5727:   var_9C = "status_cd"
  loc_11A5745:   If (MemVar_41E208.Item = "0") Then
  loc_11A5748:     var_DC = "message"
  loc_11A574E:     var_9C = "error"
  loc_11A5759:     var_AC = MemVar_41E208.Item
  loc_11A5761:     VarLateMemCallLdRfVar
  loc_11A577C:     MsgBox(var_CC, &H10, var_EC, var_10C, var_18C)
  loc_11A578E:     Exit Sub
  loc_11A578F:   End If
  loc_11A578F:   var_9C = "Message"
  loc_11A57AD:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_11A57B0:     var_9C = "Message"
  loc_11A57D6:     MsgBox(MemVar_41E208.Item, &H10, var_CC, var_EC, var_10C)
  loc_11A57E6:     Exit Sub
  loc_11A57E7:   End If
  loc_11A57E7: End If
  loc_11A57E7: var_9C = "Data"
  loc_11A57FB: Me(124) = CStr(MemVar_41E208.Item)
  loc_11A5804: Exit Sub
End Sub

Public Sub Proc_348_8_E61F38(arg_C) 'E61F38
  'Data Table: 421708
  loc_E61F14: Call 0.Method_arg_7C (arg_C, 1, 0)
  loc_E61F1F: Set var_90 = var_94
  loc_E61F2B: Call 0.Method_arg_30 (var_98, 0)
  loc_E61F33: var_88 = var_98
  loc_E61F36: Exit Sub
End Sub

Public Sub Proc_348_9_E61E38(arg_C) 'E61E38
  'Data Table: 421708
  loc_E61E14: Call 0.Method_arg_7C (arg_C, 1, 0)
  loc_E61E1F: Set var_90 = var_94
  loc_E61E2B: Call 0.Method_arg_34 (var_98, 0)
  loc_E61E33: var_88 = var_98
  loc_E61E36: Exit Sub
End Sub

Public Sub Proc_348_10_1044998
  'Data Table: 421708
  Dim var_D8 As String
  loc_1044754: On Error Resume Next
  loc_104476E: var_90 = Me.Global.App
  loc_1044776: var_94 = App.Path
  loc_1044788: Call 0.Method_arg_60 (var_94 & "\QRImage.jpg")
  loc_10447A5: Set var_9C = New 
  loc_10447C7: Call 0.Method_arg_1C (var_90, "Convert", var_C0)
  loc_10447CF: Call 0.Method_arg_1C (var_94)
  loc_10447D7: Call 0.Method_arg_24 (0)
  loc_10447E5: Call 0.Method_arg_20 (var_C4)
  loc_10447ED: Call 0.Method_arg_28 (var_94)
  loc_1044803: var_D8 = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
  loc_104482D: Call 0.Method_arg_20 (var_90, 1, var_C0, var_C4)
  loc_1044835: Call 0.Method_arg_1C ("FormatID", var_C8)
  loc_104483D: Call 0.Method_arg_28 (var_D8)
  loc_1044845: Call 0.Method_arg_1C ()
  loc_104484D: Call 0.Method_arg_20 ()
  loc_104488A: Call 0.Method_arg_20 (var_90, 1, var_C0, var_C4)
  loc_1044892: Call 0.Method_arg_1C ("Quality", var_C8)
  loc_104489A: Call 0.Method_arg_28 (70)
  loc_10448A2: Call 0.Method_arg_1C ()
  loc_10448AA: Call 0.Method_arg_20 ()
  loc_10448D2: Call 0.Method_arg_24 (New)
  loc_10448DD: Set var_88 = var_C0
  loc_10448EB: Set var_9C = Nothing 
  loc_10448FD: var_90 = Me.Global.App
  loc_1044914: Kill CVar(App.Path & "\QRImage.jpg")
  loc_1044930: var_90 = Me.Global.App
  loc_104494A: Call 0.Method_arg_64 (App.Path & "\QRImage.jpg")
  loc_1044967: var_90 = Me.Global.App
  loc_1044984: Me(124) = Proc_348_9_E61E38(App.Path & "\QR.txt")
  loc_1044996: Exit Sub
End Sub

Public Sub Proc_348_11_E7B8E8
  'Data Table: 421708
  loc_E7B88F: Me(132) = vbNullString
  loc_E7B897: Me(120) = vbNullString
  loc_E7B89F: Me(124) = vbNullString
  loc_E7B8A7: Me(148) = vbNullString
  loc_E7B8B8: var_88 = Me.Global.App
  loc_E7B8D5: Me(144) = Proc_348_9_E61E38(App.Path & "\GeneInvBody.txt")
  loc_E7B8E5: Exit Sub
End Sub

Public Sub Proc_348_12_E81220
  'Data Table: 421708
  loc_E811D4: var_88 = Me.Global.App
  loc_E811E4: var_98 = vbNullString
  loc_E81208: Me(144) = Proc_348_9_E61E38(Proc_349_0_F01514(App.Path, "All Files|*.*"))
  loc_E8121C: Exit Sub
End Sub

Public Sub Proc_348_13_1196B84
  'Data Table: 421708
  Dim var_A0 As String
  Dim var_12C As String
  Dim var_13C As String
  Dim var_B0 As Variant
  Dim var_114 As Long
  Dim var_C0 As String
  Dim var_D0 As Integer
  loc_1196800: If (Proc_348_16_FAA558() = 0) Then
  loc_1196803:   Exit Sub
  loc_1196804: End If
  loc_1196824: If (((Me(156) = vbNullString) And (Me(160) = vbNullString)) And (Me(164) = vbNullString)) Then
  loc_1196835:   var_A0 = "Please Enter your Actual Payee Name + UPI ID + Invoice Amount first and then try to generate Dyn QR"
  loc_1196840:   MsgBox(var_A0, 0, var_D0, var_F0, var_110)
  loc_1196850:   Exit Sub
  loc_1196851: End If
  loc_1196866: Set var_120 = CreateObject("WinHttp.WinHttpRequest.5.1", 0) 
  loc_1196896: var_13C = "https://einvapi.charteredinfo.com/aspapi/v1.0/dynamicqr?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64)
  loc_11968DB: Me(24) = var_13C & "&UpiId=" & Me(156) & "&PayeeName=" & Me(160) & "&QrCodeSize=" & CStr(Me(168)) & "&InvAmt=" & Me(164)
  loc_11968FE: var_A0 = "GET"
  loc_1196915: Call var_120.Open
  loc_119691E: Call var_120.Send
  loc_1196927: var_B0 = var_120.ResponseBody
  loc_1196944: var_114 = CLng(FreeFile(var_B0))
  loc_1196956: var_174 = Me.Global.App
  loc_1196973: Open App.Path & "\DynQRImage.jpg" For Binary As CInt(var_114) Len = &HFF
  loc_119698D: Put CInt(var_114), 1, var_B0
  loc_1196995: Close CInt(var_114)
  loc_11969AA: var_174 = Me.Global.App
  loc_11969B2: var_12C = App.Path
  loc_11969C4: Call 0.Method_arg_60 (var_12C & "\DynQRImage.jpg", var_114, False)
  loc_11969DD: Set var_180 = New 
  loc_11969EC: var_A0 = "Convert"
  loc_11969FD: Call 0.Method_arg_1C (var_174, var_A0, var_184, var_12C)
  loc_1196A05: Call 0.Method_arg_1C (0, Me(24))
  loc_1196A0D: Call 0.Method_arg_24 (var_A0)
  loc_1196A1B: Call 0.Method_arg_20 (var_188)
  loc_1196A23: Call 0.Method_arg_28 (var_12C)
  loc_1196A37: var_C0 = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
  loc_1196A61: Call 0.Method_arg_20 (var_174, 1, var_184, var_188)
  loc_1196A69: Call 0.Method_arg_1C ("FormatID", var_18C)
  loc_1196A71: Call 0.Method_arg_28 (var_C0)
  loc_1196A79: Call 0.Method_arg_1C ()
  loc_1196A81: Call 0.Method_arg_20 ()
  loc_1196ABC: Call 0.Method_arg_20 (var_174, 1, var_184, var_188)
  loc_1196AC4: Call 0.Method_arg_1C ("Quality", var_18C)
  loc_1196ACC: Call 0.Method_arg_28 (70)
  loc_1196AD4: Call 0.Method_arg_1C ()
  loc_1196ADC: Call 0.Method_arg_20 ()
  loc_1196B02: Call 0.Method_arg_24 (New)
  loc_1196B0D: Set var_178 = var_184
  loc_1196B19: Set var_180 = Nothing 
  loc_1196B29: var_174 = Me.Global.App
  loc_1196B40: Kill CVar(App.Path & "\DynQRImage.jpg")
  loc_1196B5A: var_174 = Me.Global.App
  loc_1196B74: Call 0.Method_arg_64 (App.Path & "\DynQRImage.jpg")
  loc_1196B83: Exit Sub
End Sub

Public Sub Proc_348_14_EFCA24
  'Data Table: 421708
  Dim var_86 As Integer
  Dim var_2F01 As Variant
  loc_EFC958: On Error Goto loc_EFCA21
  loc_EFC963: If (Proc_344_3_E5BDA0() = 0) Then
  loc_EFC987:   MsgBox("You are not connected to Internet! Please check your connection and try again!", &H40, "Connection Status", var_E8, var_108)
  loc_EFC997:   Result  End Sub 'Integer
  loc_EFC998: End If
  loc_EFC998: Proc_348_19_E26E40()
  loc_EFC9A9: var_10C = Me.Global.App
  loc_EFC9C6: Me(144) = Proc_348_9_E61E38(App.Path & "\GeneInvBody.txt")
  loc_EFC9E0: If (Me(128) = vbNullString) Then
  loc_EFC9EF:   var_10C = Me.Global.App
  loc_EFCA0C:   Me(128) = Proc_348_9_E61E38(App.Path & "\LastAuthToken.txt")
  loc_EFCA1C: End If
  loc_EFCA1E: var_86 = &HFF
  loc_EFCA21: ' Referenced from: EFC958
  loc_EFCA21: Result var_86 End Sub 'Integer
  loc_EFCA22: var_2F01 = CVar() 'Integer
End Sub

Public Sub Proc_348_15_E114A0(arg_C) 'E114A0
  'Data Table: 421708
  loc_E11490: If (Proc_348_14_EFCA24() = 0) Then
  loc_E11493:   Exit Sub
  loc_E11494: End If
  loc_E1149A: Proc_348_1_15AA5FC(arg_C)
  loc_E1149F: Exit Sub
End Sub

Public Sub Proc_348_16_FAA558
  'Data Table: 421708
  Dim unk_421757 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  loc_FAA3E6: unk_421757.Execute "Select Top 1 * From eInvoiceEnviro", var_AC, -1
  loc_FAA3F1: Set var_8C = var_B0
  loc_FAA422: Me(28) = Proc_6_38_E69628(CVar(var_8C.Fields.Item("ASPID")))
  loc_FAA456: Me(32) = Proc_6_38_E69628(CVar(var_8C.Fields.Item("ASPPwd")))
  loc_FAA465: Me(64) = MemVar_1F95154
  loc_FAA492: Me(68) = Proc_6_38_E69628(CVar(var_8C.Fields.Item("eInvUserName")))
  loc_FAA4AD: var_B0 = var_8C.Fields
  loc_FAA4C6: Me(72) = Proc_6_38_E69628(CVar(var_B0.Item("eInvPwd")))
  loc_FAA4D5: Me(168) = 250
  loc_FAA4E4: If (Me(28) = vbNullString) Then
  loc_FAA500:   MsgBox("Please Enter your ASP ID", &H10, var_D4, var_F4, var_114)
  loc_FAA510:   Result var_B0 End Sub 'Integer
  loc_FAA511: End If
  loc_FAA51B: If (Me(32) = vbNullString) Then
  loc_FAA537:   MsgBox("Please Enter your ASP Password", &H10, var_D4, var_F4, var_114)
  loc_FAA547:   Result  End Sub 'Integer
  loc_FAA548: End If
  loc_FAA552: Set var_8C = Nothing
  loc_FAA555: Result &HFF End Sub 'Integer
  loc_FAA556: CopyBytes -12033
End Sub

Public Sub Proc_348_17_E26A20
  'Data Table: 421708
  loc_E269FB: Me(4) = "https://einvapi.charteredinfo.com/"
  loc_E26A09: Me(136) = Me(4) & "eivital/dec/v1.04/"
  loc_E26A18: Me(140) = Me(4) & "eicore/dec/v1.03/"
  loc_E26A1E: Exit Sub
End Sub

Public Sub Proc_348_18_E26A78
  'Data Table: 421708
  loc_E26A53: Me(4) = "https://einvapimum1.charteredinfo.com/"
  loc_E26A61: Me(136) = Me(4) & "eivital/dec/v1.04/"
  loc_E26A70: Me(140) = Me(4) & "eicore/dec/v1.03/"
  loc_E26A76: Exit Sub
End Sub

Public Sub Proc_348_19_E26E40
  'Data Table: 421708
  loc_E26E1B: Me(4) = "https://einvapidel2.charteredinfo.com/"
  loc_E26E29: Me(136) = Me(4) & "eivital/dec/v1.04/"
  loc_E26E38: Me(140) = Me(4) & "eicore/dec/v1.03/"
  loc_E26E3E: Exit Sub
End Sub

Public Sub Proc_348_20_E26F48
  'Data Table: 421708
  loc_E26F23: Me(0) = "https://gstsandbox.charteredinfo.com/"
  loc_E26F31: Me(136) = Me(0) & "eivital/dec/v1.04/"
  loc_E26F40: Me(140) = Me(0) & "eicore/dec/v1.03/"
  loc_E26F46: Exit Sub
End Sub

Public Sub Proc_348_21_12A8ED8(arg_C) '12A8ED8
  'Data Table: 421708
  Dim var_A8 As Variant
  Dim var_FC As Variant
  Dim arg_1C As Double
  Dim var_110 As String
  Dim var_90 As Recordset15
  Dim var_EC As Fields15
  Dim var_11C As Field20
  Dim var_96 As Integer
  Dim var_124 As IBodyPart
  Dim var_128 As Stream
  Dim var_12C As Stream
  Dim var_B8 As String
  loc_12A88E1: var_8C = arg_C
  loc_12A88E6: On Error Resume Next
  loc_12A8909: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_12A8911: var_FC = CVar(var_EC) 'Address
  loc_12A8919: Me.Picture = var_FC
  loc_12A8925: arg_14 = vbNullString
  loc_12A892E: arg_18 = vbNullString
  loc_12A893B: arg_1C = CDate(CDbl(1))
  loc_12A8964: Me.Connection15.Execute "Select QrCodeImage,IRN,AckNo,AckDt From eInvoiceBill1 Where DocID='" & var_8C & "'", var_FC, -1
  loc_12A896F: Set var_90 = var_EC
  loc_12A8995: If (var_90.RecordCount <> 1) Then
  loc_12A899A:   Result var_EC End Sub 'Integer
  loc_12A899B: End If
  loc_12A89C5: arg_14 = Proc_6_38_E69628(CVar(var_90.Fields.Item("Irn")), arg_1C)
  loc_12A89F9: arg_18 = Proc_6_38_E69628(CVar(var_90.Fields.Item("AckNo")))
  loc_12A8A31: arg_1C = CDate(var_90.Fields.Item("AckDt").Value)
  loc_12A8A4F: var_EC = var_90.Fields
  loc_12A8A79: If (Proc_6_38_E69628(CVar(var_EC.Item("QrCodeImage")), arg_1C) = vbNullString) Then
  loc_12A8A9C:   Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_12A8AA4:   var_FC = CVar(var_EC) 'Address
  loc_12A8AAC:   Me.Picture = var_FC
  loc_12A8AB5:   Result var_EC End Sub 'Integer
  loc_12A8AB6: End If
  loc_12A8AC0: var_96 = FreeFile(var_FC)
  loc_12A8AD4: var_EC = Me.Global.App
  loc_12A8AF0: Open App.Path & "\QR.txt" For Output As var_96 Len = &HFF
  loc_12A8B17: var_11C = var_90.Fields.Item("QrCodeImage")
  loc_12A8B34: Print var_96, Proc_6_38_E69628(CVar(var_11C), var_96)
  loc_12A8B4C: Close var_96
  loc_12A8B54: Set var_120 = New 
  loc_12A8B5F: var_EC = Me.Message.BodyPart
  loc_12A8B67: Set var_124 = var_EC
  loc_12A8B72: var_124.ContentMediaType = "image/bmp/jpg/png"
  loc_12A8B7F: var_124.ContentTransferEncoding = "base64"
  loc_12A8B8C: var_124.GetEncodedContentStream
  loc_12A8B94: Set var_128 = var_EC
  loc_12A8BA5: var_EC = Me.Global.App
  loc_12A8BBF: var_128.LoadFromFile App.Path & "\QR.txt"
  loc_12A8BD3: var_128.Flush
  loc_12A8BDC: Set var_128 = Nothing 
  loc_12A8C02: var_94 = App.Path & "\QRImage.jpg"
  loc_12A8C13: var_124.GetDecodedContentStream
  loc_12A8C1B: Set var_12C = Me.Global.App
  loc_12A8C26: var_12C.LoadFromFile var_94
  loc_12A8C38: var_12C.SaveToFile var_94
  loc_12A8C41: Set var_12C = Nothing 
  loc_12A8C49: Set var_124 = Nothing 
  loc_12A8C51: Set var_120 = Nothing 
  loc_12A8C6C: var_EC = Me.Global.App
  loc_12A8C74: var_110 = App.Path
  loc_12A8C86: Call 0.Method_arg_60 (var_110 & "\QRImage.jpg", 2, var_EC)
  loc_12A8CA3: Set var_138 = New 
  loc_12A8CC5: Call 0.Method_arg_1C (var_EC, "Convert", var_11C, var_110)
  loc_12A8CCD: Call 0.Method_arg_1C (0, var_EC)
  loc_12A8CD5: Call 0.Method_arg_24 (var_EC)
  loc_12A8CE3: Call 0.Method_arg_20 (var_13C)
  loc_12A8CEB: Call 0.Method_arg_28 (var_110)
  loc_12A8D01: var_B8 = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
  loc_12A8D2B: Call 0.Method_arg_20 (var_EC, 1, var_11C, var_13C)
  loc_12A8D33: Call 0.Method_arg_1C ("FormatID", var_140)
  loc_12A8D3B: Call 0.Method_arg_28 (var_B8)
  loc_12A8D43: Call 0.Method_arg_1C ()
  loc_12A8D4B: Call 0.Method_arg_20 ()
  loc_12A8D6C: var_A8 = "Quality"
  loc_12A8D88: Call 0.Method_arg_20 (var_EC, 1, var_11C, var_13C)
  loc_12A8D90: Call 0.Method_arg_1C (var_A8, var_140)
  loc_12A8D98: Call 0.Method_arg_28 (70)
  loc_12A8DA0: Call 0.Method_arg_1C ()
  loc_12A8DA8: Call 0.Method_arg_20 ()
  loc_12A8DD0: Call 0.Method_arg_24 (New)
  loc_12A8DDB: Set var_130 = var_11C
  loc_12A8DE9: Set var_138 = Nothing 
  loc_12A8DFB: var_EC = Me.Global.App
  loc_12A8E12: Kill CVar(App.Path & "\QRImage.jpg")
  loc_12A8E2E: var_EC = Me.Global.App
  loc_12A8E48: Call 0.Method_arg_64 (App.Path & "\QRImage.jpg")
  loc_12A8E5C: Call Me.Refresh
  loc_12A8E83: var_EC = Me.Global.App
  loc_12A8EA1: Me.Global.LoadPicture CVar(App.Path & "\QRImage.jpg"), var_A8, var_B8, var_C8, var_D8
  loc_12A8EB1: Me.Picture = CVar(var_11C)
  loc_12A8ED0: Set var_90 = Nothing
  loc_12A8ED5: Result &HFF End Sub 'Integer
End Sub
