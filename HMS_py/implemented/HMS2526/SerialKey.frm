VERSION 5.00
Begin VB.Form SerialKey
  Caption = "Form1"
  BackColor = &HC0FFC0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  Icon = "SerialKey.frx":0
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 6420
  ClientHeight = 3090
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin CommandButton Command1
    Caption = "Command1"
    Left = 435
    Top = 1185
    Width = 1035
    Height = 735
    Visible = 0   'False
    TabIndex = 4
  End
  Begin BtnEnh BtnEnh1
    Left = 870
    Top = 345
    Width = 4620
    Height = 720
    TabIndex = 2
  End
  Begin BtnEnh CmdUpdate
    Left = 1710
    Top = 1725
    Width = 3000
    Height = 615
    TabIndex = 0
  End
  Begin BtnEnh CmdExit
    Left = 1710
    Top = 2355
    Width = 3000
    Height = 615
    TabIndex = 1
  End
  Begin BtnEnh CmdCompInfo
    Left = 1710
    Top = 1110
    Width = 3000
    Height = 615
    TabIndex = 3
  End
End

Attribute VB_Name = "SerialKey"



Private Sub CmdExit_UnknownEvent_9 '4061F0
  Dim Me As Me
  Dim global_0040A2E0 As Global
  loc_0040625B: var_2C = global_0040A2E0
  loc_0040625E: Set var_18 = Me
  loc_00406269: var_eax = Global.Unload var_18
  loc_00406292: GoTo loc_0040629E
  loc_0040629D: Exit Sub
  loc_0040629E: 'Referenced from: 00406292
End Sub

Private Sub CmdCompInfo_UnknownEvent_9 '405960
  Dim var_30 As Variant
  Dim var_38 As Recordset
  Dim var_40 As Recordset
  loc_00405A91: var_30 = Recordset.Fields
  loc_00405ADF: Recordset.ActiveConnection = CInt(8)
  loc_00405B13: var_54 = Recordset.BOF
  loc_00405B5D: var_38 = Recordset.Fields
  loc_00405BA7: Recordset.ActiveConnection = CInt(8)
  loc_00405BDB: var_74 = Recordset.BOF
  loc_00405C25: var_40 = Recordset.Fields
  loc_00405C6F: Recordset.ActiveConnection = CInt(8)
  loc_00405C9C: var_A4 = Recordset.BOF
  loc_00405D0D: var_18 = var_54 + &H4049B4 + var_74 + &H4049B4 + var_A4
  loc_00405D84: var_11C = Recordset.CacheSize = %StkVar1
  loc_00405DA9: var_30 = Global.App
  loc_00405DCD: var_20 = Global.Path
  loc_00405E27: var_2C = var_20 & "\CompInfo_" & var_18 & ".Txt"
  loc_00405E29: var_15C = var_11C
  loc_00405E3D: var_eax = Unknown_VTable_Call[eax+00000044h]
  loc_00405E82: If var_108 = 0 Then GoTo loc_00405F43
  loc_00405ECD: var_30 = Global.App
  loc_00405EF1: var_20 = Global.Path
  loc_00405F36: var_2C = var_20 & "\CompInfo_" & var_18 & ".Txt"
  loc_00405F3E: GoTo loc_004060D7
  loc_00405F43: 'Referenced from: 00405E82
  loc_00405F69: var_30 = Global.App
  loc_00405F8D: var_20 = Global.Path
  loc_00405FDB: Open var_20 & "\CompInfo_" & var_18 & ".Txt" For Output As #1 Len = -1
  loc_00406010: Print 1, var_18
  loc_0040601B: Close #1
  loc_00406066: var_30 = Global.App
  loc_0040608A: var_20 = Global.Path
  loc_004060CF: var_2C = var_20 & "\CompInfo_" & var_18 & ".Txt"
  loc_004060D9: var_4C = var_2C & " Created Successfully."
  loc_004060F8: MsgBox(var_2C & " Created Successfully.", 0, var_64, var_74, var_84)
  loc_0040614C: GoTo loc_004061BA
  loc_004061B9: Exit Sub
  loc_004061BA: 'Referenced from: 0040614C
End Sub

Private Sub Command1_Click() '406D40
  Dim Me As Variant
  Dim var_3C As App
  Dim var_40 As 
  Dim var_2C As 
  Dim var_C8 As 
  loc_00406D86: Me = Me + 00000044h
  loc_00406DE3: var_DC = esi.FileExists
  loc_00406E08: var_3C = Global.App
  loc_00406E2C: var_2C = Global.Path
  loc_00406E67: var_30 = var_2C & "\HMSKey\HMSKey.ini"
  loc_00406E73: var_eax = Unknown_VTable_Call[edx+00000044h]
  loc_00406E9C: If var_C8 = 0 Then ebx = 1
  loc_00406EB8: If ebx = 0 Then GoTo loc_00406F3F
  loc_00406F15: MsgBox("HMSKey ini File Missing.Contact to Software windor", 16, var_64, var_74, var_84)
  loc_00406F39: End
  loc_00406F3F: 'Referenced from: 00406EB8
  loc_00406F80: var_3C = Global.App
  loc_00406FA4: var_2C = Global.Path
  loc_00406FDC: var_30 = var_2C & "\HMSKey\HMSKey.ini"
  loc_00406FE0: Me(19).OpenTextFile(var_30, 1, , 0)
  loc_00407024: Set var_40.GetDrive = var_40
  loc_0040705D: var_40.GetDrive.GetDriveName
  loc_0040707B: If var_C8 <> 0 Then GoTo loc_004070AB
  loc_00407086: var_40.GetDrive.GetBaseName
  loc_004070A9: var_24 = var_2C
  loc_004070AB: 'Referenced from: 0040707B
  loc_004070BD: If (var_24 = var_1C) = 0 Then GoTo loc_00407539
  loc_004070D0: If (var_1C = global_00404898) = 0 Then GoTo loc_004070DE
  loc_004070D8: var_24 = var_1C
  loc_004070DE: 'Referenced from: 004070D0
  loc_0040711F: var_3C = Global.App
  loc_00407143: var_2C = Global.Path
  loc_0040719D: var_38 = var_2C & "\HMSKey\HMSKey_" & var_24 & ".Txt"
  loc_004071A1: var_2C.FileExists.FileExists
  loc_004071E6: If var_C8 <> 0 Then GoTo loc_004074B9
  loc_00407201: InStr(1, var_24, global_004049B4, 0) = InStr(1, var_24, global_004049B4, 0) - 00000001h
  loc_0040720D: var_4C = InStr(1, var_24, global_004049B4, 0)
  loc_00407213: var_8C = var_24
  loc_0040724C: var_2C = SerialKey.XNull(Mid(var_24, 1, InStr(1, var_24, global_004049B4, 0)))
  loc_00407271: var_6C = var_2C
  loc_0040729F: var_20 = Trim(0)
  loc_004072D1: InStr(1, var_24, global_004049B4, 0) = InStr(1, var_24, global_004049B4, 0) + 00000001h
  loc_004072F6: InStr(1, var_24, global_004049B4, 0) = InStr(1, var_24, global_004049B4, 0) + 00000001h
  loc_00407302: InStr(InStr(1, var_24, global_004049B4, 0)+00000001h, var_24, global_004049B4, 0) = InStr(InStr(1, var_24, global_004049B4, 0)+00000001h, var_24, global_004049B4, 0) - InStr(1, var_24, global_004049B4, 0)+00000001h
  loc_0040731B: var_4C = InStr(InStr(1, var_24, global_004049B4, 0)+00000001h, var_24, global_004049B4, 0)
  loc_00407325: var_8C = var_24
  loc_00407337: InStr(1, var_24, global_004049B4, 0) = InStr(1, var_24, global_004049B4, 0) + 00000001h
  loc_0040734C: var_64 = Mid(var_24, InStr(1, var_24, global_004049B4, 0)+00000001h, InStr(InStr(1, var_24, global_004049B4, 0)+00000001h, var_24, global_004049B4, 0))
  loc_00407360: var_2C = SerialKey.XNull(Mid(var_24, 1, InStr(1, var_24, global_004049B4, 0)))
  loc_00407385: var_6C = var_2C
  loc_004073B3: var_28 = Trim(0)
  loc_004073F9: var_3C = Global.App
  loc_0040741D: var_2C = Global.Path
  loc_00407471: Open var_2C & "\HMSKey\HMSKey_" & var_24 & ".Txt" For Output As #1 Len = -1
  loc_004074A6: Print 1, var_18
  loc_004074B1: Close #1
  loc_004074B7: GoTo loc_004074BC
  loc_004074B9: 'Referenced from: 004071E6
  loc_004074BC: 'Referenced from: 004074B7
  loc_004074BF: Me = Me + 0000004Ch
  loc_004074CC: var_eax = Unknown_VTable_Call[ecx+00000024h]
  loc_004074EE: If var_C8 <> 0 Then GoTo loc_00407522
  loc_004074F9: var_eax = Unknown_VTable_Call[edx+00000030h]
  loc_00407520: var_1C = var_2C
  loc_00407522: 'Referenced from: 004074EE
  loc_00407533: If (var_1C <> global_00404898) <> 0 Then GoTo loc_004070AB
  loc_00407539: 'Referenced from: 004070BD
  loc_00407545: GoTo loc_00407592
  loc_00407591: Exit Sub
  loc_00407592: 'Referenced from: 00407545
  loc_004075B1: Exit Sub
End Sub

Private Sub Form_Load() '4075E0
  Dim Me As Me
  Dim var_108 As App
  Dim var_C4 As 
  Dim var_60 As 
  Dim var_38 As 
  Dim var_1B0 As Connection
  loc_004076F8: var_108 = Global.App
  loc_0040772C: var_100 = Global.Path
  loc_00407752: var_114 = var_100 & "\Analysis.ini"
  loc_0040777F: var_104 = Dir(var_100 & "\Analysis.ini", 0)
  loc_004077CB: If (var_104 = global_00404898) = 0 Then GoTo loc_00407B06
  loc_004077FA: var_108 = Global.App
  loc_00407820: var_100 = Global.Path
  loc_00407857: Open var_100 & "\Analysis.ini" For Input As #1 Len = -1
  loc_0040788F: If EOF(1) <> 0 Then GoTo loc_0040789D
  loc_00407897: Line Input #1, var_5C
  loc_0040789D: 'Referenced from: 0040788F
  loc_004078A4: If EOF(1) <> 0 Then GoTo loc_004078B5
  loc_004078AF: Line Input #1, var_FC
  loc_004078B5: 'Referenced from: 004078A4
  loc_004078B7: Close #1
  loc_004078D1: If (var_FC = global_00404898) = 0 Then GoTo loc_00407971
  loc_004078E4: var_114 = Len(var_FC)
  loc_004078F6: var_174 = var_FC
  loc_00407921: var_12C = Mid(var_FC, 3, Len(var_FC))
  loc_00407946: Me(16) = var_12C
  loc_00407971: 'Referenced from: 004078D1
  loc_0040799E: If (var_5C = &H404898) = 0 Then GoTo loc_00407A46
  loc_00407A11: MsgBox("Sql Server not difine", 64, var_12C, var_13C, 10)
  loc_00407A3E: End
  loc_00407A44: GoTo loc_00407A4B
  loc_00407A46: 'Referenced from: 0040799E
  loc_00407A4B: 'Referenced from: 00407A44
  loc_00407A5F: If (var_FC <> global_00404898) <> 0 Then GoTo loc_00407B00
  loc_00407ACD: MsgBox("Database not difine", 64, var_12C, var_13C, var_14C)
  loc_00407AFA: End
  loc_00407B00: 'Referenced from: 00407A5F
  loc_00407B06: 'Referenced from: 004077CB
  loc_00407B2F: var_108 = Global.App
  loc_00407B55: var_100 = Global.Path
  loc_00407B84: var_114 = var_100 & "\sysdm.ocx"
  loc_00407BA2: var_104 = Dir(var_100 & "\sysdm.ocx", 0)
  loc_00407BEE: If (var_104 = global_00404898) = 0 Then GoTo loc_00407D6A
  loc_00407C1D: var_108 = Global.App
  loc_00407C43: var_100 = Global.Path
  loc_00407C7A: Open var_100 & "\sysdm.ocx" For Input As #1 Len = -1
  loc_00407CB2: If EOF(1) <> 0 Then GoTo loc_00407CC3
  loc_00407CB9: Me = Me + 00000038h
  loc_00407CBD: Line Input #1, Me+00000038h
  loc_00407CC3: 'Referenced from: 00407CB2
  loc_00407CCA: If EOF(1) <> 0 Then GoTo loc_00407CDB
  loc_00407CD1: Me = Me + 00000034h
  loc_00407CD5: Line Input #1, Me+00000034h
  loc_00407CDB: 'Referenced from: 00407CCA
  loc_00407CDD: Close #1
  loc_00407CFA: If (Me(15) = global_00404898) = 0 Then GoTo loc_00407D27
  loc_00407D07: var_eax = SerialKey.Proc_0_7_405720(Me, Me(15), var_100)
  loc_00407D15: Me(15) = var_100
  loc_00407D27: 'Referenced from: 00407CFA
  loc_00407D3B: If (Me(14) = global_00404898) = 0 Then GoTo loc_00407D7F
  loc_00407D48: var_eax = SerialKey.Proc_0_7_405720(Me, Me(14), var_100)
  loc_00407D56: Me(14) = var_100
  loc_00407D68: GoTo loc_00407D7F
  loc_00407D6A: 'Referenced from: 00407BEE
  loc_00407D70: var_eax = SerialKey.Proc_0_11_409040(Me, 0)
  loc_00407D79: var_eax = SerialKey.Proc_0_10_408E90(Me, esi)
  loc_00407D7F: 'Referenced from: 00407D3B
  loc_00407DCA: var_108 = Global.App
  loc_00407DF0: var_100 = Global.Path
  loc_00407E27: var_104 = var_100 & "\Analysis.ini"
  loc_00407E2F: var_C4.FileExists
  loc_00407E5A: If var_1B0 = 0 Then edx = 1
  loc_00407E7B: If edx = 0 Then GoTo loc_00407F26
  loc_00407EF3: MsgBox("S/W ini File Missing.Contact to Software vendor", 16, var_12C, var_13C, var_14C)
  loc_00407F20: End
  loc_00407F26: 'Referenced from: 00407E7B
  loc_00407F68: var_108 = Global.App
  loc_00407F8E: var_100 = Global.Path
  loc_00407FCB: var_104 = var_100 & "\Analysis.ini"
  loc_00407FD3: var_60.OpenTextFile(var_104, 1, , 0)
  loc_00408042: var_38.GetDriveName
  loc_00408060: If var_1B0 <> 0 Then GoTo loc_004080B8
  loc_0040806F: var_38.GetBaseName
  loc_004080B4: var_E4 = var_100
  loc_004080B6: GoTo loc_004080BE
  loc_004080B8: 'Referenced from: 00408060
  loc_004080BE: 'Referenced from: 004080B6
  loc_004080CB: var_38.GetDriveName
  loc_004080E9: If var_1B0 <> 0 Then GoTo loc_00408158
  loc_004080F3: var_38.FileExists
  loc_00408117: var_38.GetBaseName
  loc_00408156: var_A0 = var_100
  loc_00408158: 'Referenced from: 004080E9
  loc_00408165: var_38.GetDriveName
  loc_00408183: If var_1B0 <> 0 Then GoTo loc_004081F2
  loc_0040818D: var_38.FileExists
  loc_004081B1: var_38.GetBaseName
  loc_004081F0: var_F8 = var_100
  loc_004081F2: 'Referenced from: 00408183
  loc_004081FF: var_38.GetDriveName
  loc_0040821D: If var_1B0 <> 0 Then GoTo loc_00408289
  loc_00408227: var_38.FileExists
  loc_0040824B: var_38.GetBaseName
  loc_00408287: var_34 = var_100
  loc_00408289: 'Referenced from: 0040821D
  loc_00408296: var_38.GetDriveName
  loc_004082B4: If var_1B0 <> 0 Then GoTo loc_00408322
  loc_004082BE: var_38.FileExists
  loc_004082E2: var_38.GetBaseName
  loc_0040831E: var_24 = var_100
  loc_00408320: GoTo loc_00408345
  loc_00408322: 'Referenced from: 004082B4
  loc_0040833F: var_24 = "PRN"
  loc_00408345: 'Referenced from: 00408320
  loc_00408352: var_38.GetDriveName
  loc_00408370: If var_1B0 <> 0 Then GoTo loc_004083E1
  loc_0040837A: var_38.FileExists
  loc_0040839E: var_38.GetBaseName
  loc_004083DD: var_B0 = var_100
  loc_004083DF: GoTo loc_00408407
  loc_004083E1: 'Referenced from: 00408370
  loc_00408401: var_B0 = "C:\DATABKUP"
  loc_00408407: 'Referenced from: 004083DF
  loc_00408414: var_38.GetDriveName
  loc_00408432: If var_1B0 <> 0 Then GoTo loc_004084A1
  loc_0040843C: var_38.FileExists
  loc_00408460: var_38.GetBaseName
  loc_0040849F: var_90 = var_100
  loc_004084A1: 'Referenced from: 00408432
  loc_004084AE: var_38.GetDriveName
  loc_004084CC: If var_1B0 <> 0 Then GoTo loc_00408538
  loc_004084D6: var_38.FileExists
  loc_004084FA: var_38.GetBaseName
  loc_00408536: var_48 = var_100
  loc_00408538: 'Referenced from: 004084CC
  loc_00408545: var_38.GetDriveName
  loc_00408563: If var_1B0 <> 0 Then GoTo loc_004085D2
  loc_0040856D: var_38.FileExists
  loc_00408591: var_38.GetBaseName
  loc_004085D0: var_C0 = var_100
  loc_004085D2: 'Referenced from: 00408563
  loc_004085DF: var_38.GetDriveName
  loc_004085FD: If var_1B0 <> 0 Then GoTo loc_00408669
  loc_00408607: var_38.FileExists
  loc_0040862B: var_38.GetBaseName
  loc_00408667: var_80 = var_100
  loc_00408669: 'Referenced from: 004085FD
  loc_00408676: var_38.GetDriveName
  loc_00408694: If var_1B0 <> 0 Then GoTo loc_00408724
  loc_004086A2: var_38.FileExists
  loc_004086C6: var_38.GetBaseName
  loc_004086E9: var_114 = var_100
  loc_00408716: var_70 = Ucase(var_100)
  loc_00408724: 'Referenced from: 00408694
  loc_00408731: var_38.GetDriveName
  loc_0040874F: If var_1B0 <> 0 Then GoTo loc_004087E2
  loc_0040875D: var_38.FileExists
  loc_00408781: var_38.GetBaseName
  loc_004087A4: var_114 = var_100
  loc_004087D4: var_D4 = Ucase(var_100)
  loc_004087E2: 'Referenced from: 0040874F
  loc_0040880A: var_108 = Global.App
  loc_00408830: var_100 = Global.Path
  loc_00408861: var_114 = var_100 & "\sysdm.ocx"
  loc_0040887F: var_104 = Dir(var_100 & "\sysdm.ocx", 0)
  loc_004088CF: If (var_104 = global_00404898) = 0 Then GoTo loc_00408A4A
  loc_004088FE: var_108 = Global.App
  loc_00408924: var_100 = Global.Path
  loc_0040895B: Open var_100 & "\sysdm.ocx" For Input As #1 Len = -1
  loc_00408993: If EOF(1) <> 0 Then GoTo loc_004089A6
  loc_0040899E: Line Input #1, Me(15)
  loc_004089A4: GoTo loc_004089A9
  loc_004089A6: 'Referenced from: 00408993
  loc_004089A9: 'Referenced from: 004089A4
  loc_004089B0: If EOF(1) <> 0 Then GoTo loc_004089BE
  loc_004089B8: Line Input #1, Me(14)
  loc_004089BE: 'Referenced from: 004089B0
  loc_004089C0: Close #1
  loc_004089DA: If (Me(15) = global_00404898) = 0 Then GoTo loc_00408A07
  loc_004089E7: var_eax = SerialKey.Proc_0_7_405720(Me, Me(15), var_100, var_100, 00000003h, var_1B0, var_100, 00000003h)
  loc_004089F5: Me(15) = var_100
  loc_00408A07: 'Referenced from: 004089DA
  loc_00408A1B: If (Me(14) = global_00404898) = 0 Then GoTo loc_00408A5F
  loc_00408A28: var_eax = SerialKey.Proc_0_7_405720(Me, Me(14), var_100, var_1B0, var_100)
  loc_00408A36: Me(14) = var_100
  loc_00408A48: GoTo loc_00408A5F
  loc_00408A4A: 'Referenced from: 004088CF
  loc_00408A50: var_eax = SerialKey.Proc_0_11_409040(Me, 00000002h, var_1B0)
  loc_00408A59: var_eax = SerialKey.Proc_0_10_408E90(Me, var_100)
  loc_00408A5F: 'Referenced from: 00408A1B
  loc_00408A7D: Set Connection.Execute %StkVar1, CreateObject(2), %StkVar3 = CreateObject(2)
  loc_00408A96: Connection.IsolationLevel = CInt(16)
  loc_00408AB3: Connection.CursorLocation = CInt(3)
  loc_00408AD0: Connection.CommandTimeout = 0
  loc_00408B02: var_100 = var_108 & CreateObject(2) = Connection.Version
  loc_00408B15: var_114 = var_100 & ";Initial Catalog="
  loc_00408B40: var_174 = ";Data Source="
  loc_00408B4A: var_184 = ";pwd="
  loc_00408B54: var_194 = Connection.ConnectionTimeout = %x1
  loc_00408BC9: var_104 = CStr(var_100 & ";Initial Catalog=" & var_90 & ";Data Source=" & var_A0 & ";pwd=" & Connection.ConnectionTimeout = var_16C)
  loc_00408BD3: var_eax = Connection.Open var_104, global_00404898, global_00404898, -1
  loc_00408C44: GoTo loc_00408CA8
  loc_00408CA7: Exit Sub
  loc_00408CA8: 'Referenced from: 00408C44
End Sub

Private Sub CmdUpdate_UnknownEvent_9 '4062C0
  Dim Me As Me
  Dim var_34 As Variant
  Dim var_38 As Variant
  Dim var_3C As Recordset
  Dim var_44 As Recordset
  Dim var_120 As 
  Dim var_88 As 
  Dim var_78 As 
  Dim var_24 As 
  loc_004063FA: var_34 = Recordset.Fields
  loc_0040642E: var_C0 = "Property"
  loc_00406454: Recordset.ActiveConnection = CInt(8)
  loc_00406488: var_58 = Recordset.BOF
  loc_004064D2: var_3C = Recordset.Fields
  loc_0040651C: Recordset.ActiveConnection = CInt(8)
  loc_00406550: var_78 = Recordset.BOF
  loc_0040659A: var_44 = Recordset.Fields
  loc_004065E4: Recordset.ActiveConnection = CInt(8)
  loc_00406611: var_A8 = Recordset.BOF
  loc_00406682: var_1C = var_58 + &H4049B4 + var_78 + &H4049B4 + var_A8
  loc_004066F9: var_120 = Recordset.CacheSize = %StkVar1
  loc_0040671E: var_34 = Global.App
  loc_00406742: var_24 = Global.Path
  loc_0040679C: var_30 = var_24 & "\HMSKey_" & var_1C & ".Txt"
  loc_0040679E: var_164 = var_120
  loc_004067B2: var_eax = Unknown_VTable_Call[eax+00000044h]
  loc_004067F7: If var_10C = 0 Then GoTo loc_00406B63
  loc_00406844: var_34 = Global.App
  loc_00406868: var_24 = Global.Path
  loc_004068BF: var_30 = var_24 & "\HMSKey_" & var_1C & ".Txt"
  loc_004068C9: var_120.OpenTextFile(var_30, 1, , 0)
  loc_00406903: Set var_38.GetDrive = var_120.OpenTextFile(var_30, 1, , 0)
  loc_00406944: var_38.GetDrive.GetDriveName
  loc_00406966: If var_10C <> 0 Then GoTo loc_0040699A
  loc_00406971: var_38.GetDrive.GetBaseName
  loc_00406998: var_18 = var_24
  loc_0040699A: 'Referenced from: 00406966
  loc_004069AB: If (var_18 <> global_00404898) <> 0 Then GoTo loc_00406A22
  loc_004069E9: var_58 = "Serial_Key Not Exists."
  loc_00406A04: MsgBox(var_58, 0, var_68, var_78, var_88)
  loc_00406A1D: GoTo loc_00406C77
  loc_00406A22: 'Referenced from: 004069AB
  loc_00406A3F: var_C0 = var_18
  loc_00406A51: var_D0 = "Update Company Set SerialKeyNo="
  loc_00406A6F: var_eax = SerialKey.Proc_0_12_409210(Me, &H4008, var_58, var_58, var_68, var_78)
  loc_00406A93: var_68 = "Update Company Set SerialKeyNo=" & var_58
  loc_00406AA9: var_78.DriveExists.DriveExists
  loc_00406B26: var_58 = "Serial_Key Updated Successfully."
  loc_00406B41: MsgBox(var_58, 64, var_68, var_78, 10)
  loc_00406B5E: GoTo loc_00406C7F
  loc_00406B63: 'Referenced from: 004067F7
  loc_00406B89: var_34 = Global.App
  loc_00406BAD: var_24 = Global.Path
  loc_00406BF4: call edi("\HMSKey_", var_24, 00000004, var_58, var_68, var_78, var_88, FFFFFFFFh, var_34, var_24, var_10C, var_3C, var_120.OpenTextFile(var_30, 1, , 0), global_00404AD4)
  loc_00406C02: call edi(var_1C, edi("\HMSKey_", var_24, 00000004, var_58, var_68, var_78, var_88, FFFFFFFFh, var_34, var_24, var_10C, var_3C, var_120.OpenTextFile(var_30, 1, , 0), global_00404AD4))
  loc_00406C11: call edi(".Txt", edi(var_1C, edi("\HMSKey_", var_24, 00000004, var_58, var_68, var_78, var_88, FFFFFFFFh, var_34, var_24, var_10C, var_3C, var_120.OpenTextFile(var_30, 1, , 0), global_00404AD4)))
  loc_00406C1B: var_50 = edi(".Txt", edi(var_1C, edi("\HMSKey_", var_24, 00000004, var_58, var_68, var_78, var_88, FFFFFFFFh, var_34, var_24, var_10C, var_3C, var_120.OpenTextFile(var_30, 1, , 0), global_00404AD4)))
  loc_00406C3A: MsgBox(edi(".Txt", edi(var_1C, edi("\HMSKey_", var_24, 00000004, 8, var_68, var_78, var_88, FFFFFFFFh, var_34, var_24, var_10C, var_3C, var_120.OpenTextFile(var_30, 1, , 0), global_00404AD4))), 16, var_68, var_78, var_88)
  loc_00406C77: 'Referenced from: 00406A1D
  loc_00406C7F: 'Referenced from: 00406B5E
  loc_00406C8E: GoTo loc_00406CFC
  loc_00406CFB: Exit Sub
  loc_00406CFC: 'Referenced from: 00406C8E
End Sub

Public Function CODIFY(TEXT) '405480
  loc_004054E1: var_24 = TEXT
  loc_00405500: Randomize(10)
  loc_00405521: var_A0 = Rnd(10)
  loc_00405559: CInt(10) = CInt(10) + 001Bh
  loc_0040556B: var_3C = Chr(CInt(10)+001Bh)
  loc_00405593: var_ret_1 = Len(var_24)
  loc_00405599: var_A8 = var_ret_1
  loc_004055AB: If 00000001h > var_ret_1 Then GoTo loc_00405687
  loc_004055C3: var_74 = var_24
  loc_004055FD: var_2C = CStr(Mid(var_24, 1, 1))
  loc_0040560A: Asc(var_2C) = Asc(var_2C) + 001Bh
  loc_00405617: Asc(var_2C)+001Bh = Asc(var_2C)+001Bh + CInt(10)
  loc_00405625: var_5C = Chr(Asc(var_2C)+001Bh+CInt(10))
  loc_00405648: var_28 = var_28 + var_5C
  loc_00405677: 00000001h = 00000001h + 00000001h
  loc_00405682: GoTo loc_004055A4
  loc_00405687: 'Referenced from: 004055AB
  loc_00405699: GoTo loc_004056CF
  loc_0040569F: If var_4 = 0 Then GoTo loc_004056AA
  loc_004056AA: 'Referenced from: 0040569F
  loc_004056CE: Exit Sub
  loc_004056CF: 'Referenced from: 00405699
  loc_004056DF: Exit Sub
End Function

Public Function XNull(temp) '4093D0
  loc_00409451: var_50 = IsNull(temp)
  loc_0040947F: var_18 = Trim(IIf(IsNull(temp), &H404898, temp))
  loc_004094A5: GoTo loc_004094CE
  loc_004094AB: If var_4 = 0 Then GoTo loc_004094B6
  loc_004094B6: 'Referenced from: 004094AB
  loc_004094CD: Exit Sub
  loc_004094CE: 'Referenced from: 004094A5
End Function

Public Sub Proc_0_7_405720
  loc_0040577B: var_70 = arg_C
  loc_004057A6: Asc(CStr(Left(arg_C, 1))) = Asc(CStr(Left(arg_C, 1))) - 001Bh
  loc_004057D8: Len(arg_C) = Len(arg_C) - 00000001h
  loc_004057E1: var_ret_1 = Len(arg_C)
  loc_004057E7: var_A0 = var_ret_1
  loc_004057F9: If 00000001h > var_ret_1 Then GoTo loc_004058DF
  loc_00405805: 00000001h = 00000001h + 0001h
  loc_0040583D: var_70 = arg_C
  loc_00405855: var_28 = CStr(Mid(arg_C, 0.QueryInterface, 1))
  loc_00405862: Asc(var_28) = Asc(var_28) - 001Bh
  loc_0040586F: Asc(var_28) = Asc(var_28) - Asc(var_28)
  loc_004058A4: var_24 = var_24 + Chr(Asc(var_28))
  loc_004058D3: 00000001h = 00000001h + 00000001h
  loc_004058DA: GoTo loc_004057F2
  loc_004058DF: 'Referenced from: 004057F9
  loc_004058F0: GoTo loc_00405926
  loc_004058F6: If var_4 = 0 Then GoTo loc_00405901
  loc_00405901: 'Referenced from: 004058F6
  loc_00405925: Exit Sub
  loc_00405926: 'Referenced from: 004058F0
  loc_0040592F: Exit Sub
End Sub

Public Sub Proc_0_8_408D60
  loc_00408D97: If arg_C <> 13 Then GoTo loc_00408DB4
  loc_00408DAB: var_20 = Me.SetFocus
  loc_00408DB4: 'Referenced from: 00408D97
End Sub

Public Sub Proc_0_9_408DE0
  loc_00408E17: If arg_C <> 13 Then GoTo loc_00408E5C
  loc_00408E35: var_eax = Command1.SetFocus
End Sub

Public Sub Proc_0_10_408E90
  loc_00408EE7: call InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx)
  loc_00408EEE: InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx) = CInt()
  loc_00408F1E: call InStr(var_40, ebx, var_60, var_24, 00000001h)
  loc_00408F25: InStr(var_40, ebx, var_60, var_24, 00000001h) = CInt()
  loc_00408F2E: var_28 = InStr(var_40, ebx, var_60, var_24, 00000001h)
  loc_00408F39: var_28 = var_28 - InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx)
  loc_00408F42: var_28 = var_28 - 0001h
  loc_00408F4F: var_14 = var_28
  loc_00408F52: If InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx) = 0 Then GoTo loc_00408FF6
  loc_00408F5B: If var_28 = 0 Then GoTo loc_00408FF6
  loc_00408F67: InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx) = InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx) + 0001h
  loc_00408F71: var_58 = var_14
  loc_00408F91: var_40 = Mid(var_24, InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx)+0001h, var_14)
  loc_00408FB0: ecx = var_40
  loc_00408FCB: InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx) = InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx) - 0001h
  loc_00408FD8: var_38 = InStr(var_40, ebx, var_60, var_24, 00000001h, edi, esi, ebx)
  loc_00408FEB: var_24 = Mid(var_24, 1, InStr(2, ebx, var_60, var_24, 00000001h, edi, esi, ebx))
  loc_00408FF6: 'Referenced from: 00408F52
  loc_00408FFB: GoTo loc_0040901A
  loc_00409019: Exit Sub
  loc_0040901A: 'Referenced from: 00408FFB
  loc_00409023: Exit Sub
End Sub

Public Sub Proc_0_11_409040
  Dim var_50 As Me
  loc_00409097: call InStr(var_50, ebx, var_60, var_24, 00000001h, edi, esi, ebx)
  loc_0040909E: InStr(var_50, ebx, var_60, var_24, 00000001h, edi, esi, ebx) = CInt()
  loc_004090CE: call InStr(var_50, ebx, var_60, var_24, 00000001h)
  loc_004090D5: InStr(var_50, ebx, var_60, var_24, 00000001h) = CInt()
  loc_004090DE: var_28 = InStr(var_50, ebx, var_60, var_24, 00000001h)
  loc_004090E9: var_28 = var_28 - InStr(var_50, ebx, var_60, var_24, 00000001h, edi, esi, ebx)
  loc_004090F2: var_28 = var_28 - 0001h
  loc_004090FF: var_14 = var_28
  loc_00409102: If InStr(var_50, ebx, var_60, var_24, 00000001h, edi, esi, ebx) = 0 Then GoTo loc_00409174
  loc_00409107: If var_28 = 0 Then GoTo loc_00409174
  loc_00409109: InStr(var_50, ebx, var_60, var_24, 00000001h, edi, esi, ebx) = InStr(var_50, ebx, var_60, var_24, 00000001h, edi, esi, ebx) + 0001h
  loc_0040911C: var_58 = var_14
  loc_00409130: var_50 = Mid(var_24, InStr(var_50, ebx, &H4002, var_24, 00000001h, edi, esi, ebx)+0001h, var_14)
  loc_0040915B: var_50.GetPalette 'Ignore this = eax
  loc_0040916B: var_58 = "Yes"
  loc_00409172: GoTo loc_00409190
  loc_00409174: 'Referenced from: 00409102
  loc_00409187: var_50.GetPalette 'Ignore this = "sa"
  loc_00409190: 'Referenced from: 00409172
  loc_004091B3: If (var_50.GetPalette <> global_00404898) <> 0 Then GoTo loc_004091BE
  loc_004091BC: var_50.GetPalette 'Ignore this = "sa"
  loc_004091BE: 'Referenced from: 004091B3
  loc_004091C3: GoTo loc_004091D8
  loc_004091D7: Exit Sub
  loc_004091D8: 'Referenced from: 004091C3
  loc_004091E8: Exit Sub
End Sub

Public Sub Proc_0_12_409210
  loc_0040926F: var_24 = arg_C
  loc_0040927B: var_68 = IsNull(var_24)
  loc_0040929D: var_ret_1 = (var_24 = 1)
  loc_004092A8: call Or(var_50, var_ret_1, var_70, 0, esi, %ecx = %S_edx_S)
  loc_004092C3: If CBool(Or(var_50, var_ret_1, var_70, 0, esi, var_60 = %S_edx_S)) = 0 Then GoTo loc_004092E5
  loc_004092CB: var_58 = "Null"
  loc_004092D9: var_24 = "Null"
  loc_004092E0: GoTo loc_0040939E
  loc_004092E5: 'Referenced from: 004092C3
  loc_00409319: var_2C = Replace(CStr(var_24), global_00404F6C, "''", 1, -1, 0)
  loc_00409343: var_24 = global_00404F6C & var_2C & global_00404F6C
  loc_00409365: GoTo loc_0040939E
  loc_0040936B: If var_4 = 0 Then GoTo loc_00409376
  loc_00409376: 'Referenced from: 0040936B
  loc_0040939D: Exit Sub
  loc_0040939E: 'Referenced from: 004092E0
End Sub
