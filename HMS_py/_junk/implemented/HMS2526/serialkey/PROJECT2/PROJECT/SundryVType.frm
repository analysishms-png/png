VERSION 5.00
Begin VB.Form SundryVType
  Caption = "Voucher Wise Sundry Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11595
  ClientHeight = 7185
  LockControls = -1  'True
  Begin DataGrid DGVType
    Left = 3675
    Top = 3300
    Width = 5625
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGPostAC
    Left = 2805
    Top = 3675
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 765
    Width = 1425
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGSundry
    Left = 3720
    Top = 4005
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 493
    Width = 3510
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11595
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1125
    Width = 8790
    Height = 4275
    TabIndex = 4
  End
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 7890
    Top = 450
    Width = 3885
    Height = 510
    TabIndex = 10
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App.Date"
    Index = 1
    ForeColor = &H0&
    Left = 225
    Top = 765
    Width = 780
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Voucher Type"
    Index = 0
    ForeColor = &H0&
    Left = 225
    Top = 495
    Width = 1185
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "SundryVType"

Private global_68 As Integer
Private global_70 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'E7FE2C
  'Data Table: 489B20
  Dim var_94 As TextBox
  loc_E7FDC8: On Error Goto loc_E7FE24
  loc_E7FDEE: Call Proc_53_52_E7CDB4(Proc_5_1_100EC1C("ADD", Me))
  loc_E7FDF9: Call Proc_53_50_F2C74C(global_72)
  loc_E7FE09: Set var_8C = Me.Txt
  loc_E7FE0F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E7FE17: var_94.SetFocus
  loc_E7FE23: Exit Sub
  loc_E7FE24: ' Referenced from: E7FDC8
  loc_E7FE24: Proc_6_60_E63754(var_94)
  loc_E7FE29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E198FC
  'Data Table: 489B20
  loc_E198F1: Me.Global.Unload Me
  loc_E198F9: Exit Sub
  loc_E198FA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3D448
  'Data Table: 489B20
  loc_E3D438: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D440: Call Proc_53_51_13DDF28(global_72)
  loc_E3D445: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E39FC8
  'Data Table: 489B20
  loc_E39FB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39FC0: Call Proc_53_51_13DDF28(global_72)
  loc_E39FC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3A028
  'Data Table: 489B20
  loc_E3A018: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A020: Call Proc_53_51_13DDF28(global_72)
  loc_E3A025: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3A448
  'Data Table: 489B20
  loc_E3A438: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A440: Call Proc_53_51_13DDF28(global_72)
  loc_E3A445: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14ECC30
  'Data Table: 489B20
  Dim var_EC As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim unk_489B43 As Connection15
  Dim var_A0 As Variant
  Dim var_19C As Variant
  Dim var_11C As Variant
  Dim var_23C As MSHFlexGrid
  Dim var_18C As Variant
  Dim var_1F0 As Variant
  Dim var_240 As MSHFlexGrid
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_358 As Variant
  Dim var_378 As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_490 As Variant
  Dim var_4B0 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_684 As Variant
  Dim var_6A4 As Variant
  Dim var_718 As Variant
  Dim var_738 As Variant
  Dim var_7AC As Variant
  Dim var_7CC As Variant
  Dim var_884 As Variant
  Dim var_918 As Variant
  Dim var_A28 As Variant
  Dim var_A48 As Variant
  Dim var_A8 As String
  Dim var_224 As String
  Dim var_13C As Variant
  Dim var_1BC As Variant
  Dim var_210 As Variant
  Dim var_3BC As Variant
  Dim var_59C As Variant
  Dim var_77C As Variant
  Dim var_968 As Variant
  Dim var_AC0 As String
  Dim var_238 As TextBox
  Dim Me As Recordset15
  loc_14EBF84: On Error Goto loc_14ECBDB
  loc_14EBF8B: var_86 = CByte(0) 'Byte
  loc_14EBF9A: Set var_9C = Me.Txt
  loc_14EBFA0: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_14EBFC9: If (Proc_6_27_EA61EC(var_A0, "Voucher Type") = 0) Then
  loc_14EBFD3:   Call Txt_GotFocus()
  loc_14EBFD8:   Exit Sub
  loc_14EBFD9: End If
  loc_14EBFE4: Set var_9C = Me.Txt
  loc_14EBFEA: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_14EBFF2: var_A8 = "App. Date"
  loc_14EC013: If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_14EC01D:   Call Txt_GotFocus()
  loc_14EC022:   Exit Sub
  loc_14EC023: End If
  loc_14EC026: Call Proc_53_46_FCA770(var_AA, CInt(1))
  loc_14EC031: If (var_AA = &HFF) Then
  loc_14EC034:   Exit Sub
  loc_14EC035: End If
  loc_14EC056: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14EC060: For var_10C = 1 To var_DC: var_98 = var_10C 'Variant
  loc_14EC06B:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC073:   var_EC = CVar(CLng(3)) 'Long
  loc_14EC0AF:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14EC0B7:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC0BF:     var_EC = CVar(CLng(1)) 'Long
  loc_14EC0FB:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EC103:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC10B:       var_EC = CVar(CLng(3)) 'Long
  loc_14EC152:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EC16F:       Set var_9C = Me.FGrid
  loc_14EC180:       Exit Sub
  loc_14EC181:     End If
  loc_14EC186:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC18E:     var_EC = CVar(CLng(4)) 'Long
  loc_14EC1CA:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EC1D2:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC1DA:       var_EC = CVar(CLng(3)) 'Long
  loc_14EC221:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EC23E:       Set var_9C = Me.FGrid
  loc_14EC24F:       Exit Sub
  loc_14EC250:     End If
  loc_14EC255:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC25D:     var_EC = CVar(CLng(6)) 'Long
  loc_14EC299:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EC2A1:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC2A9:       var_EC = CVar(CLng(3)) 'Long
  loc_14EC2F0:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EC30D:       Set var_9C = Me.FGrid
  loc_14EC31E:       Exit Sub
  loc_14EC31F:     End If
  loc_14EC324:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC32C:     var_EC = CVar(CLng(&HB)) 'Long
  loc_14EC368:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EC370:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC378:       var_EC = CVar(CLng(3)) 'Long
  loc_14EC3BF:       MsgBox("Fill Cal.Sign For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EC3DC:       Set var_9C = Me.FGrid
  loc_14EC3ED:       Exit Sub
  loc_14EC3EE:     End If
  loc_14EC3EE:   End If
  loc_14EC3F1: Next var_10C 'Variant
  loc_14EC400: unk_489B43.BeginTrans var_1C0
  loc_14EC409: var_86 = CByte(1) 'Byte
  loc_14EC42E: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14EC438: For var_1E0 = 1 To var_DC: var_98 = var_1E0 'Variant
  loc_14EC443:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14EC465:   var_12C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14EC493:   Set var_A0 = Me.FGrid
  loc_14EC4D8:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_A0.TextMatrix)))) <> vbNullString)) Then
  loc_14EC4E9:     Set var_9C = Me.Txt
  loc_14EC4EF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_22C, CVar(CLng(var_98)))
  loc_14EC4F7:     (Trim(var_12C) <> vbNullString) = var_A0.Tag
  loc_14EC50D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_238, CVar(CLng(2)))
  loc_14EC51C:     Proc_6_7_F26918(var_12C, CVar(var_238))
  loc_14EC526:     var_DC = CVar(CLng(var_98)) 'Long
  loc_14EC52E:     var_11C = CVar(CLng(2)) 'Long
  loc_14EC54E:     var_18C = CVar(CLng(var_98)) 'Long
  loc_14EC556:     var_1F0 = CVar(CLng(1)) 'Long
  loc_14EC55F:     Set var_240 = Me.FGrid
  loc_14EC580:     var_2A4 = CVar(CLng(var_98)) 'Long
  loc_14EC588:     var_2C4 = CVar(CLng(4)) 'Long
  loc_14EC5A8:     var_358 = CVar(CLng(var_98)) 'Long
  loc_14EC5B0:     var_378 = CVar(CLng(5)) 'Long
  loc_14EC5D0:     var_3EC = CVar(CLng(var_98)) 'Long
  loc_14EC5D8:     var_40C = CVar(CLng(6)) 'Long
  loc_14EC60C:     var_490 = CVar(CLng(var_98)) 'Long
  loc_14EC614:     var_4B0 = CVar(CLng(8)) 'Long
  loc_14EC648:     var_534 = CVar(CLng(var_98)) 'Long
  loc_14EC650:     var_554 = CVar(CLng(7)) 'Long
  loc_14EC67A:     var_5CC = CVar(CLng(var_98)) 'Long
  loc_14EC682:     var_5EC = CVar(CLng(9)) 'Long
  loc_14EC6AC:     var_684 = CVar(CLng(var_98)) 'Long
  loc_14EC6B4:     var_6A4 = CVar(CLng(&HF)) 'Long
  loc_14EC6D4:     var_718 = CVar(CLng(var_98)) 'Long
  loc_14EC6DC:     var_738 = CVar(CLng(&HA)) 'Long
  loc_14EC6FC:     var_7AC = CVar(CLng(var_98)) 'Long
  loc_14EC704:     var_7CC = CVar(CLng(&HB)) 'Long
  loc_14EC73B:     var_884 = Me.FGrid.TextMatrix)
  loc_14EC763:     var_918 = Me.FGrid.TextMatrix)
  loc_14EC791:     Proc_6_7_F26918(var_9E8, Date, var_918, CVar(CLng(&HC)), CVar(CLng(var_98)), var_884, CVar(CLng(&HE)), CVar(CLng(var_98)))
  loc_14EC79B:     var_A28 = CVar(CLng(var_98)) 'Long
  loc_14EC7A3:     var_A48 = CVar(CLng(&H10)) 'Long
  loc_14EC7E6:     var_A8 = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_14EC7ED:     var_224 = var_A8 & "PostAc,Nature,CalcSign,SysYN,Grp,"
  loc_14EC823:     var_210 = CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14EC868:     var_3BC = var_210 & "'," & CVar(Val(CStr(var_240.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14EC89C:     var_59C = var_3BC & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14EC8E1:     var_77C = var_59C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14EC922:     var_968 = var_77C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_884)) & "','" & Left(CVar(CStr(var_918)), 1) & "'," 
  loc_14EC962:     var_AC0 = CStr(var_968 & "'" & CVar(MemVar_1F950C8) & "'," & var_9E8 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "')")
  loc_14EC96C:     unk_489B43.Execute var_AC0, var_AE0, -1
  loc_14ECA42:   End If
  loc_14ECA45: Next var_1E0 'Variant
  loc_14ECA51: unk_489B43.CommitTrans
  loc_14ECA5A: var_86 = CByte(0) 'Byte
  loc_14ECA69: Set var_23C = Me.Txt
  loc_14ECA6F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_14ECA82: Set var_9C = Me.Txt
  loc_14ECA88: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_14ECA98: var_12C = CVar(var_A0.Tag) 'String
  loc_14ECAAE: Set var_A4 = Me.Txt
  loc_14ECAB4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_238, var_224)
  loc_14ECABC: 5 = var_238.Tag
  loc_14ECAC9: var_BC = Space((var_12C - Len(var_224)))
  loc_14ECAD1: var_13C = (var_240 + CVar(var_238))
  loc_14ECAD5: var_CC = "**"
  loc_14ECADA: var_15C = (CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") + var_CC)
  loc_14ECB05: var_210 = (1 + Format(CVar(var_240), "dd/mm/yyyy"))
  loc_14ECB46: Me.Requery -1
  loc_14ECB73: Me.Find "SearchCode ='" & CStr(var_210) & "'", 0, 1
  loc_14ECB83: Set var_9C = Me.TopCtrl1
  loc_14ECB89: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_14ECB9E: If (1 = "Add") Then
  loc_14ECBA1:   Call TopCtrl1_UnknownEvent_11()
  loc_14ECBA6:   Exit Sub
  loc_14ECBA7: End If
  loc_14ECBBC: var_A8 = "INI"
  loc_14ECBCA: Call Proc_53_52_E7CDB4(Proc_5_1_100EC1C(var_A8, Me), global_72)
  loc_14ECBD5: Call Proc_53_51_13DDF28(CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14ECBDA: Exit Sub
  loc_14ECBDB: ' Referenced from: 14EBF84
  loc_14ECBE4: If (CInt(var_86) = 1) Then
  loc_14ECBED:   unk_489B43.RollbackTrans
  loc_14ECBF2: End If
  loc_14ECBFA: Set var_9C = Err()
  loc_14ECC00: Call 0.Method_arg_2C (var_A8)
  loc_14ECC19: MsgBox(CVar(var_A8), &H10, var_12C, CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',"), CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14ECC2C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EE8790
  'Data Table: 489B20
  loc_EE86D4: On Error Goto loc_EE8789
  loc_EE870E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE8734:   Call Proc_53_52_E7CDB4(Proc_5_1_100EC1C("INI", Me))
  loc_EE8747:   Set var_10C = Me.TopCtrl1
  loc_EE874D:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(True)
  loc_EE875E:   Set var_10C = Me.TopCtrl1
  loc_EE8764:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_EE8775:   Set var_10C = Me.TopCtrl1
  loc_EE877B:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_EE8783:   Call Proc_53_51_13DDF28(global_72)
  loc_EE8788: End If
  loc_EE8788: Exit Sub
  loc_EE8789: ' Referenced from: EE86D4
  loc_EE8789: Proc_6_60_E63754()
  loc_EE878E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB63AC
  'Data Table: 489B20
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB631C: On Error Goto loc_EB63A6
  loc_EB6336: If (Me.RecordCount <= 0) Then
  loc_EB633F:   var_B8 = "Information"
  loc_EB635A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB636A:   Exit Sub
  loc_EB636B: End If
  loc_EB636E: MemVar_1F950E4 = "Select (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,SG.Name As PostAcName From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join ViewSubGroup SG On SP.PostAc=SG.SubCode) Order by SP.AppDate,VT.Description"
  loc_EB6378: MemVar_1F95120 = Me
  loc_EB6385: Proc_6_126_F1C850("2000,1000,1000,2000,2000,2000,2000")
  loc_EB63A0: Call 0.Method_arg_2B0 (1)
  loc_EB63A5: Exit Sub
  loc_EB63A6: ' Referenced from: EB631C
  loc_EB63A6: Proc_6_60_E63754(var_B8)
  loc_EB63AB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E463C0
  'Data Table: 489B20
  Dim Me As Recordset15
  loc_E46397: Me.Requery -1
  loc_E463A7: Me.Requery -1
  loc_E463B7: Me.Requery -1
  loc_E463BC: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '108B36C
  'Data Table: 489B20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  loc_108B0D3: Me.DGSundry.Visible = False
  loc_108B0F2: If (Me.RecordCount > 0) Then
  loc_108B108:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_108B110:   var_E4 = CVar(CLng(2)) 'Long
  loc_108B143:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_108B14B:   Set var_128 = Me.FGrid
  loc_108B151:   LateIdCallSt
  loc_108B180:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_108B188:   var_E4 = CVar(CLng(3)) 'Long
  loc_108B1BB:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_108B1C9:   LateIdCallSt
  loc_108B230:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_114, CVar(CLng(&HA)))) 'String
  loc_108B23E:   LateIdCallSt
  loc_108B2A3:   var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_114)) 'String
  loc_108B2AB:   Set var_128 = Me.FGrid
  loc_108B2B1:   LateIdCallSt
  loc_108B2DE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_108B2E6:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_108B308:   var_B0 = Me.Fields.Item("SysYN")
  loc_108B319:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_108B321:   Set var_128 = Me.FGrid
  loc_108B327:   LateIdCallSt
  loc_108B343: End If
  loc_108B34E: Set var_A8 = Me.TxtGrid
  loc_108B354: Call 0.Method_DGSundry_UnknownEvent_90 (CInt(3), var_B0, var_128, var_114, var_E4, var_A4, var_128)
  loc_108B35C: var_B0.SetFocus
  loc_108B368: Exit Sub
End Sub

Private Sub Form_Load() '111C9D0
  'Data Table: 489B20
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_111C670: On Error Goto loc_111C9C9
  loc_111C68B: Proc_6_23_DFC5B8(Me, 7590)
  loc_111C69D: Set var_88 = Me.TopCtrl1
  loc_111C6A3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_111C6B1: Call 0.Method_arg_50 (var_B0)
  loc_111C6C1: Set var_88 = Me.TopCtrl1
  loc_111C6C7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000F(CVar(var_B0))
  loc_111C6D0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_111C6E9: Set global_76 = New 
  loc_111C6FB: Me.TopCtrl1.CursorLocation = 3
  loc_111C717: var_9C = "Select VT.V_Type As Code,VT.Description As Name,D.Name As Department From Voucher_Type VT Left Join Depart D On VT.RestCode=D.Code Where VT.NCat IN ('RSBIL','PBR','PBC','PRR','PRC','HSBIL') Order by Description"
  loc_111C723: Me.Open var_9C, CVar(MemVar_1F95044), 3
  loc_111C731: CVarUnk
  loc_111C736: VerifyVarObj
  loc_111C73C: Set var_88 = Me.DGVType
  loc_111C742: LateIdStAd
  loc_111C76C: Me.DGVType.CursorLocation = 3
  loc_111C794: Me.Open "Select Code,Name,Nature,CalcSign,SysYN From SundryMast Order By Name", CVar(MemVar_1F95044), 3
  loc_111C7A2: CVarUnk
  loc_111C7A7: VerifyVarObj
  loc_111C7AD: Set var_88 = Me.DGSundry
  loc_111C7B3: LateIdStAd
  loc_111C7DD: Me.DGSundry.CursorLocation = 3
  loc_111C7F9: var_9C = "Select SubCode As Code,Name From ViewSubGroup Where Nature IN ('Expenditure','Revenue') or MainGrCodeS='030001' Order By Name"
  loc_111C813: CVarUnk
  loc_111C818: VerifyVarObj
  loc_111C81E: Set var_88 = Me.DGPostAC
  loc_111C824: LateIdStAd
  loc_111C84E: Me.DGPostAC.CursorLocation = 3
  loc_111C86A: var_9C = "Select DISTINCT (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP Order By (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))"
  loc_111C876: r_9C, CVar(MemVar_1F95044), 3 var_9C, CVar(MemVar_1F95044), 3
  loc_111C89E: Call Proc_53_52_E7CDB4(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me, New, 1), -1, Me, New)
  loc_111C8B1: Set var_88 = Me.TopCtrl1
  loc_111C8B7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(True)
  loc_111C8C8: Set var_88 = Me.TopCtrl1
  loc_111C8CE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_111C8E5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_111C8ED: Call Proc_53_45_12E0174(1, -1)
  loc_111C8F2: Call Proc_53_51_13DDF28(Me.TopCtrl1)
  loc_111C8FD: Call 0.Method_Me0 (var_E4)
  loc_111C909: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111C912: Set var_88 = Me.TopCtrl1
  loc_111C918: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010005(False)
  loc_111C932: Me.FGrid.Left = CVar(CDbl(0))
  loc_111C940: Call 0.Method_Me0 (var_E4)
  loc_111C94C: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111C95B: Me.FGrid.Width = CVar(CDbl(0))
  loc_111C976: Me.FGrid.Top = CVar(CDbl(1340))
  loc_111C988: var_C0 = Me.FGrid.Top
  loc_111C997: Call 0.Method_Me8 (var_E4, var_C0)
  loc_111C9AA: var_9C = CVar(((var_E4 - CDbl(400)) - CDbl(var_C0))) 'Single
  loc_111C9B9: Me.FGrid.Height = CVar(CDbl(1340))
  loc_111C9C8: Exit Sub
  loc_111C9C9: ' Referenced from: 111C670
  loc_111C9C9: Proc_6_60_E63754(global_76)
  loc_111C9CE: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E66BB4
  'Data Table: 489B20
  loc_E66B6B: Set global_76 = Nothing
  loc_E66B7D: Set global_72 = Nothing
  loc_E66B8F: Set global_80 = Nothing
  loc_E66BA1: Set global_84 = Nothing
  loc_E66BB0: Exit Sub
  loc_E66BB1: Set var_88 = 0
End Sub

Private Sub Form_Activate() 'E48460
  'Data Table: 489B20
  loc_E48430: On Error Goto loc_E4845A
  loc_E48437: Set var_88 = Me.TopCtrl1
  loc_E4843D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E48452: If (CLng(CInt()) = &H2D) Then
  loc_E48455:   Call TopCtrl1_UnknownEvent_1D()
  loc_E4845A:   ' Referenced from: E48430
  loc_E4845A: End If
  loc_E4845A: Proc_6_60_E63754()
  loc_E4845F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26234
  'Data Table: 489B20
  loc_E26219: If (MasterFormExit = &HFF) Then
  loc_E26229:   Me.Global.Unload Me
  loc_E26231: End If
  loc_E26231: Exit Sub
  loc_E26232: CopyBytes -22273
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28B54
  'Data Table: 489B20
  loc_E28B2C: On Error Goto loc_E28B4C
  loc_E28B43: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28B4B: Exit Sub
  loc_E28B4C: ' Referenced from: E28B2C
  loc_E28B4C: Proc_6_60_E63754(Shift)
  loc_E28B51: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F3E674
  'Data Table: 489B20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E56B: Me.DGVType.Visible = False
  loc_F3E58A: If (Me.RecordCount > 0) Then
  loc_F3E5C9:   Set var_B4 = Me.Txt
  loc_F3E5CF:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E5D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3E60A:   var_B0 = Me.Fields.Item("Code")
  loc_F3E629:   Set var_B4 = Me.Txt
  loc_F3E62F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E637:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E64D: End If
  loc_F3E658: Set var_A8 = Me.Txt
  loc_F3E65E: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F3E666: var_B0.SetFocus
  loc_F3E672: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FBB694
  'Data Table: 489B20
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FBB502: Set var_88 = Me.Txt
  loc_FBB508: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FBB516: Proc_6_74_E23240(var_8C)
  loc_FBB522: Call Proc_53_53_EBB364(var_8C)
  loc_FBB52A: var_92 = Index
  loc_FBB535: If (var_92 = CInt(0)) Then
  loc_FBB586:   Set var_88 = Me.Txt
  loc_FBB58C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FBB594:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FBB5AC:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FBB5AF:     Exit Sub
  loc_FBB5B0:   End If
  loc_FBB5BD:   Set var_88 = Me.Txt
  loc_FBB5C3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FBB5CB:   var_A0 = var_8C.Text
  loc_FBB5D3:   var_D4 = CVar(var_A0) 'String
  loc_FBB618:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FBB621:     Me.MoveFirst
  loc_FBB646:     Set var_88 = Me.Txt
  loc_FBB64C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name=")
  loc_FBB654:     0 = var_8C.Text
  loc_FBB662:     Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_FBB678:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_FBB690:   End If
  loc_FBB690: End If
  loc_FBB690: Exit Sub
  loc_FBB692: CExtInstUnk
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F70590
  'Data Table: 489B20
  Dim var_98 As DataGrid
  Dim var_57B4 As Variant
  loc_F7046E: If (CLng(Shift) = &H1B) Then
  loc_F70471:   Call Proc_53_53_EBB364()
  loc_F70476:   Exit Sub
  loc_F70477: End If
  loc_F70485: If (KeyCode = CInt(0)) Then
  loc_F704A0:   Set var_9C = Nothing
  loc_F704AB:   Set var_98 = Nothing
  loc_F704D9:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_F704ED: End If
  loc_F7051E: Set var_98 = Me.DGPostAC
  loc_F70543: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_F7055B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F70564:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F70569:   End If
  loc_F7057E:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F70587:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F7058C:   End If
  loc_F7058C: End If
  loc_F7058C: Exit Sub
  loc_F7058D: var_57B4 = CVar(0) 'Long
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E069D0
  'Data Table: 489B20
  Dim var_86 As Integer
  loc_E069C3: Proc_6_58_E06050(arg_10)
  loc_E069CB: var_86 = KeyAscii
  loc_E069CE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA5F98
  'Data Table: 489B20
  loc_EA5F2A: If (KeyCode = CInt(0)) Then
  loc_EA5F49:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA5F5D:     var_A4 = "Name"
  loc_EA5F81:     Proc_6_68_12A2818(Me.DGVType, Me.Txt, KeyCode, global_76)
  loc_EA5F94:   End If
  loc_EA5F94: End If
  loc_EA5F94: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48EEC
  'Data Table: 489B20
  loc_E48ECA: Set var_88 = Me.Txt
  loc_E48ED0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48EDE: Proc_6_73_E23294(var_8C)
  loc_E48EEA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '110E208
  'Data Table: 489B20
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_C8 As TextBox
  loc_110DEC3: var_86 = Cancel
  loc_110DECE: If (var_86 = CInt(0)) Then
  loc_110DEDC:   Set var_8C = Me.Txt
  loc_110DEE2:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110DEEA:   var_98 = "Voucher Type"
  loc_110DF0B:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_110DF19:     Set var_8C = Me.Txt
  loc_110DF1F:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110DF27:     var_90.SetFocus
  loc_110DF35:     arg_10 = &HFF
  loc_110DF38:     Exit Sub
  loc_110DF39:   End If
  loc_110DF87:   Set var_8C = Me.Txt
  loc_110DF8D:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_110DF95:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_110DFAD:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_110DFBD:     Set var_8C = Me.Txt
  loc_110DFC3:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110DFCB:     var_90.Text = vbNullString
  loc_110DFE4:     Set var_8C = Me.Txt
  loc_110DFEA:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110DFF2:     var_90.Tag = vbNullString
  loc_110E00B:     Me.LblDepart.Caption = vbNullString
  loc_110E016:   Else
  loc_110E051:     Set var_94 = Me.Txt
  loc_110E057:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110E05F:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110E0B0:     Set var_94 = Me.Txt
  loc_110E0B6:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110E0BE:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_110E0EE:     var_90 = Me.Fields.Item("Department")
  loc_110E10C:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_90))
  loc_110E11E:     Call Proc_53_55_1322F04(var_86)
  loc_110E123:   End If
  loc_110E126: Else
  loc_110E12E:   If (var_86 = CInt(1)) Then
  loc_110E13C:     Set var_8C = Me.Txt
  loc_110E142:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_110E16B:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_110E179:       Set var_8C = Me.Txt
  loc_110E17F:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_110E187:       var_90.SetFocus
  loc_110E195:       arg_10 = &HFF
  loc_110E198:       Exit Sub
  loc_110E199:     End If
  loc_110E1A3:     Set var_8C = Me.Txt
  loc_110E1A9:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110E1C9:     Set var_B4 = Me.Txt
  loc_110E1CF:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_110E1D7:     var_C8.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_110E1FC:     Me.FGrid.Col = CVar(CLng(1))
  loc_110E204:   End If
  loc_110E204: End If
  loc_110E204: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E4A6C
  'Data Table: 489B20
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E45F4: Call Proc_53_53_EBB364()
  loc_11E460C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E4627: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4630: Set var_BC = Me.FGrid
  loc_11E4666: Set var_104 = Me.TxtGrid
  loc_11E466C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E4674: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E46A5: var_110 = CLng(Me.FGrid.Col)
  loc_11E46B5: If (var_110 = CLng(3)) Then
  loc_11E46C7:   Set var_A8 = Me.TxtGrid
  loc_11E46CD:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E46D5:   var_BC.MaxLength = var_110
  loc_11E4722:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E4725:     Exit Sub
  loc_11E4726:   End If
  loc_11E4739:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4741:   var_DC = CVar(CLng(3)) 'Long
  loc_11E4774:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E477D:     Me.MoveFirst
  loc_11E4795:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E479D:     var_DC = CVar(CLng(2)) 'Long
  loc_11E47A6:     Set var_BC = Me.FGrid
  loc_11E47BD:     Proc_6_17_EAAE40(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E47E6:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E4816:     If (Me.EOF = &HFF) Then
  loc_11E481F:       Me.MoveFirst
  loc_11E4824:     End If
  loc_11E4824:   End If
  loc_11E4827: Else
  loc_11E482E:   If Not (var_110 = CLng(7)) Then
  loc_11E4838:     If (var_110 = CLng(9)) Then
  loc_11E483B:     End If
  loc_11E484A:     Set var_A8 = Me.TxtGrid
  loc_11E4850:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E4858:     var_BC.MaxLength = var_DC
  loc_11E486D:     If (global_70 = 0) Then
  loc_11E4878:       var_10C = "{Home}+{End}"
  loc_11E487E:       Proc_303_0_FBACC8(CStr("Code=" & var_128), 0)
  loc_11E4886:     End If
  loc_11E4889:   Else
  loc_11E4890:     If (var_110 = CLng(4)) Then
  loc_11E48A2:       Set var_A8 = Me.TxtGrid
  loc_11E48A8:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E48B0:       var_BC.MaxLength = var_94
  loc_11E48BF:     Else
  loc_11E48C6:       If (var_110 = CLng(5)) Then
  loc_11E48D8:         Set var_A8 = Me.TxtGrid
  loc_11E48DE:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E48E6:         var_BC.MaxLength = &H32
  loc_11E48F5:       Else
  loc_11E48FC:         If (var_110 = CLng(&HD)) Then
  loc_11E490E:           Set var_A8 = Me.TxtGrid
  loc_11E4914:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E491C:           var_BC.MaxLength = &H32
  loc_11E4969:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E496C:             Exit Sub
  loc_11E496D:           End If
  loc_11E4980:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4988:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E49BB:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E49C4:             Me.MoveFirst
  loc_11E4A04:             Proc_6_17_EAAE40(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E4A2D:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E4A5D:             If (Me.EOF = &HFF) Then
  loc_11E4A66:               Me.MoveFirst
  loc_11E4A6B:             End If
  loc_11E4A6B:           End If
  loc_11E4A6B:         End If
  loc_11E4A6B:       End If
  loc_11E4A6B:     End If
  loc_11E4A6B:   End If
  loc_11E4A6B: End If
  loc_11E4A6B: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13B9D3C
  'Data Table: 489B20
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13B93CC: On Error Goto loc_13B9D36
  loc_13B93D9: If (CLng(Shift) = &H1B) Then
  loc_13B93E9:   Set var_88 = Me.TxtGrid
  loc_13B93EF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B9409:   Set var_94 = Me.TxtGrid
  loc_13B940F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13B9417:   var_98.Text = var_8C.Tag
  loc_13B9433:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13B9438:   Call Proc_53_53_EBB364(arg_14)
  loc_13B9441:   Set var_88 = Me.FGrid
  loc_13B945E:   Set var_88 = Me.TxtGrid
  loc_13B9464:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B946C:   var_8C.Visible = False
  loc_13B9478:   Exit Sub
  loc_13B9479: End If
  loc_13B948C: var_AC = CLng(Me.FGrid.Col)
  loc_13B949C: If (var_AC = CLng(1)) Then
  loc_13B94A9:   If (CLng(Shift) = &HD) Then
  loc_13B94B2:     Call Proc_53_49_14EDC44(KeyCode, var_AE)
  loc_13B94BD:     If (var_AE = &HFF) Then
  loc_13B94CB:       Set var_98 = Me.TxtGrid
  loc_13B94F4:       Set var_8C = var_98
  loc_13B9503:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13B9513:     End If
  loc_13B9513:   End If
  loc_13B9516: Else
  loc_13B951D:   If (var_AC = CLng(3)) Then
  loc_13B952C:     Set var_88 = Me.TxtGrid
  loc_13B9532:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13B953A:     3 = var_8C.Left
  loc_13B9551:     Me.DGSundry.Left = CVar(var_B8)
  loc_13B956B:     Set var_94 = Me.TxtGrid
  loc_13B9571:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13B9579:     0 = var_98.Height
  loc_13B958A:     Set var_88 = Me.TxtGrid
  loc_13B9590:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13B9598:     var_AC = var_8C.Top
  loc_13B95A4:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13B95B3:     Me.DGSundry.Top = CVar(var_B8)
  loc_13B95DD:     Set var_98 = Nothing
  loc_13B9616:     Proc_6_69_134A630(Me.DGSundry, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13B9634:     If (CLng(Shift) = &HD) Then
  loc_13B963D:       Call Proc_53_49_14EDC44(KeyCode, var_AE, 1, Nothing)
  loc_13B9648:       If (var_AE = &HFF) Then
  loc_13B968E:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13B969E:       End If
  loc_13B969E:     End If
  loc_13B96A1:   Else
  loc_13B96A8:     If (var_AC = CLng(4)) Then
  loc_13B96EB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B96F4:         Call Proc_53_49_14EDC44(KeyCode, var_AE, 0, 4)
  loc_13B96FF:         If (var_AE = &HFF) Then
  loc_13B9745:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B9755:         End If
  loc_13B9755:       End If
  loc_13B9758:     Else
  loc_13B975F:       If (var_AC = CLng(5)) Then
  loc_13B97A2:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B97AB:           Call Proc_53_49_14EDC44(KeyCode, var_AE, 5, 0)
  loc_13B97B6:           If (var_AE = &HFF) Then
  loc_13B97FC:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B980C:           End If
  loc_13B980C:         End If
  loc_13B980F:       Else
  loc_13B9816:         If (var_AC = CLng(6)) Then
  loc_13B9859:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B9862:             Call Proc_53_49_14EDC44(KeyCode, var_AE, 6, 0)
  loc_13B986D:             If (var_AE = &HFF) Then
  loc_13B98B3:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B98C3:             End If
  loc_13B98C3:           End If
  loc_13B98C6:         Else
  loc_13B98CD:           If (var_AC = CLng(7)) Then
  loc_13B9910:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B9919:               Call Proc_53_49_14EDC44(KeyCode, var_AE, 7, 0)
  loc_13B9924:               If (var_AE = &HFF) Then
  loc_13B996A:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B997A:               End If
  loc_13B997A:             End If
  loc_13B997D:           Else
  loc_13B9984:             If Not (var_AC = CLng(8)) Then
  loc_13B998E:               If (var_AC = CLng(&H10)) Then
  loc_13B9991:               End If
  loc_13B99D1:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B99DA:                 Call Proc_53_49_14EDC44(KeyCode, var_AE, 8, 0)
  loc_13B99E5:                 If (var_AE = &HFF) Then
  loc_13B9A2B:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B9A3B:                 End If
  loc_13B9A3B:               End If
  loc_13B9A3E:             Else
  loc_13B9A45:               If (var_AC = CLng(9)) Then
  loc_13B9A88:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B9A91:                   Call Proc_53_49_14EDC44(KeyCode, var_AE, 9, 0)
  loc_13B9A9C:                   If (var_AE = &HFF) Then
  loc_13B9AE2:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B9AF2:                   End If
  loc_13B9AF2:                 End If
  loc_13B9AF5:               Else
  loc_13B9AFC:                 If (var_AC = CLng(&HC)) Then
  loc_13B9B3F:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B9B48:                     Call Proc_53_49_14EDC44(KeyCode, var_AE, &HC, 0)
  loc_13B9B53:                     If (var_AE = &HFF) Then
  loc_13B9B61:                       Set var_98 = Me.TxtGrid
  loc_13B9B8A:                       Set var_8C = var_98
  loc_13B9B99:                       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13B9BA9:                     End If
  loc_13B9BA9:                   End If
  loc_13B9BAC:                 Else
  loc_13B9BB3:                   If (var_AC = CLng(&HD)) Then
  loc_13B9BC2:                     Set var_88 = Me.TxtGrid
  loc_13B9BC8:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13B9BD0:                     0 = var_8C.Left
  loc_13B9BE7:                     Me.DGPostAC.Left = CVar(var_B8)
  loc_13B9C01:                     Set var_94 = Me.TxtGrid
  loc_13B9C07:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13B9C0F:                     var_98 = var_98.Height
  loc_13B9C20:                     Set var_88 = Me.TxtGrid
  loc_13B9C26:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13B9C2E:                     0 = var_8C.Top
  loc_13B9C3A:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13B9C49:                     Me.DGPostAC.Top = CVar(var_B8)
  loc_13B9C73:                     Set var_98 = Nothing
  loc_13B9CAC:                     Proc_6_69_134A630(Me.DGPostAC, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13B9CCA:                     If (CLng(Shift) = &HD) Then
  loc_13B9CD3:                       Call Proc_53_49_14EDC44(KeyCode, var_AE, 1, Nothing)
  loc_13B9CDE:                       If (var_AE = &HFF) Then
  loc_13B9D26:                         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13B9D36:                       End If
  loc_13B9D36:                     End If
  loc_13B9D36:                   End If
  loc_13B9D36:                 End If
  loc_13B9D36:               End If
  loc_13B9D36:             End If
  loc_13B9D36:           End If
  loc_13B9D36:         End If
  loc_13B9D36:       End If
  loc_13B9D36:       ' Referenced from: 13B93CC
  loc_13B9D36:     End If
  loc_13B9D36:   End If
  loc_13B9D36: End If
  loc_13B9D36: Proc_6_60_E63754(CByte(1), 0, 0)
  loc_13B9D3B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '116F39C
  'Data Table: 489B20
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_116EFD3: Proc_6_58_E06050(arg_10)
  loc_116EFE4: If (KeyAscii = 0) Then
  loc_116EFFA:   var_A0 = CLng(Me.FGrid.Col)
  loc_116F00A:   If (var_A0 = CLng(3)) Then
  loc_116F029:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_116F030:       Set var_AC = Me.TxtGrid
  loc_116F03B:       var_A4 = "Name"
  loc_116F056:       Proc_6_89_1470B00(var_AC, KeyAscii, global_80, arg_10)
  loc_116F065:     End If
  loc_116F068:   Else
  loc_116F06F:     If Not (var_A0 = CLng(9)) Then
  loc_116F079:       If (var_A0 = CLng(7)) Then
  loc_116F07C:       End If
  loc_116F086:       Set var_8C = Me.TxtGrid
  loc_116F08C:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_116F0A7:       Proc_6_42_129B55C(var_AC, arg_10, 8, 2)
  loc_116F0B6:     Else
  loc_116F0BD:       If (var_A0 = CLng(5)) Then
  loc_116F0C3:         var_B4 = arg_10
  loc_116F0CF:         If Not (&H39 > var_B4 > &H31) Then
  loc_116F0D8:           If Not (var_B4 = &H2B) Then
  loc_116F0E1:             If Not (var_B4 = &H2D) Then
  loc_116F0EA:               If Not (var_B4 = 8) Then
  loc_116F0F3:                 If (var_B4 = &H30) Then
  loc_116F0F6:                 End If
  loc_116F0F6:               End If
  loc_116F0F6:             End If
  loc_116F0F6:           End If
  loc_116F0F9:         Else
  loc_116F0FB:           arg_10 = 0
  loc_116F0FE:         End If
  loc_116F101:       Else
  loc_116F108:         If (var_A0 = CLng(6)) Then
  loc_116F118:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_116F128:             Set var_8C = Me.TxtGrid
  loc_116F12E:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_116F136:             var_AC.Text = var_B4
  loc_116F144:             arg_10 = 0
  loc_116F14A:           Else
  loc_116F157:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_116F167:               Set var_8C = Me.TxtGrid
  loc_116F16D:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_116F175:               var_AC.Text = 0
  loc_116F183:               arg_10 = 0
  loc_116F189:             Else
  loc_116F196:               Set var_8C = Me.TxtGrid
  loc_116F19C:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116F1A4:               var_AC.Text = arg_10
  loc_116F1B2:               arg_10 = 0
  loc_116F1B5:             End If
  loc_116F1B5:           End If
  loc_116F1B8:         Else
  loc_116F1BF:           If Not (var_A0 = CLng(8)) Then
  loc_116F1C9:             If (var_A0 = CLng(&HC)) Then
  loc_116F1CC:             End If
  loc_116F1D9:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_116F1E9:               Set var_8C = Me.TxtGrid
  loc_116F1EF:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_116F1F7:               var_AC.Text = arg_10
  loc_116F205:               arg_10 = 0
  loc_116F20B:             Else
  loc_116F218:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_116F228:                 Set var_8C = Me.TxtGrid
  loc_116F22E:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_116F236:                 var_AC.Text = arg_10
  loc_116F244:                 arg_10 = 0
  loc_116F24A:               Else
  loc_116F257:                 Set var_8C = Me.TxtGrid
  loc_116F25D:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116F265:                 var_AC.Text = arg_10
  loc_116F273:                 arg_10 = 0
  loc_116F276:               End If
  loc_116F276:             End If
  loc_116F279:           Else
  loc_116F280:             If (var_A0 = CLng(&H10)) Then
  loc_116F2AC:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_116F2BC:                 Set var_8C = Me.TxtGrid
  loc_116F2C2:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_116F2CA:                 var_AC.Text = arg_10
  loc_116F2D8:                 arg_10 = 0
  loc_116F2DE:               Else
  loc_116F307:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_116F317:                   Set var_8C = Me.TxtGrid
  loc_116F31D:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_116F325:                   var_AC.Text = arg_10
  loc_116F333:                   arg_10 = 0
  loc_116F336:                 End If
  loc_116F336:               End If
  loc_116F339:             Else
  loc_116F340:               If (var_A0 = CLng(&HD)) Then
  loc_116F35F:                 If (CBool(Me.DGPostAC.Visible) = &HFF) Then
  loc_116F38C:                   Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_84, arg_10, "Name")
  loc_116F39B:                 End If
  loc_116F39B:               End If
  loc_116F39B:             End If
  loc_116F39B:           End If
  loc_116F39B:         End If
  loc_116F39B:       End If
  loc_116F39B:     End If
  loc_116F39B:   End If
  loc_116F39B: End If
  loc_116F39B: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FB95B8
  'Data Table: 489B20
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FB9408: On Error Goto loc_FB95B1
  loc_FB941E: var_9C = CLng(Me.FGrid.Col)
  loc_FB942E: If (var_9C = CLng(3)) Then
  loc_FB9454:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FB9462:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9476:     var_A4 = "Name"
  loc_FB9491:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_80, Shift)
  loc_FB94A0:   End If
  loc_FB94A3: Else
  loc_FB94AA:   If Not (var_9C = CLng(6)) Then
  loc_FB94B4:     If Not (var_9C = CLng(8)) Then
  loc_FB94BE:       If Not (var_9C = CLng(&HC)) Then
  loc_FB94C8:         If Not (var_9C = CLng(5)) Then
  loc_FB94D2:           If (var_9C = CLng(&H10)) Then
  loc_FB94D5:           End If
  loc_FB94D5:         End If
  loc_FB94D5:       End If
  loc_FB94D5:     End If
  loc_FB94DB:     If (Shift <> &HD) Then
  loc_FB94E4:       Call TxtGrid_KeyPress(KeyCode)
  loc_FB94E9:     End If
  loc_FB94EC:   Else
  loc_FB94F3:     If (var_9C = CLng(&HD)) Then
  loc_FB9519:       If ((Shift <> &HD) And (CBool(Me.DGPostAC.Visible) = 0)) Then
  loc_FB9527:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9556:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_84, Shift, "Name", &HFF)
  loc_FB9565:       End If
  loc_FB9568:     Else
  loc_FB956F:       If (var_9C = CLng(5)) Then
  loc_FB9575:         var_AA = Shift
  loc_FB9581:         If Not (&H39 > var_AA > &H31) Then
  loc_FB958A:           If Not (var_AA = &H2B) Then
  loc_FB9593:             If Not (var_AA = &H2D) Then
  loc_FB959C:               If Not (var_AA = 8) Then
  loc_FB95A5:                 If (var_AA = &H30) Then
  loc_FB95A8:                 End If
  loc_FB95A8:               End If
  loc_FB95A8:             End If
  loc_FB95A8:           End If
  loc_FB95AB:         Else
  loc_FB95AD:           Shift = 0
  loc_FB95B0:         End If
  loc_FB95B0:       End If
  loc_FB95B0:     End If
  loc_FB95B0:   End If
  loc_FB95B0: End If
  loc_FB95B0: Exit Sub
  loc_FB95B1: ' Referenced from: FB9408
  loc_FB95B1: Proc_6_60_E63754(Shift, var_AA, 0, Shift)
  loc_FB95B6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21314
  'Data Table: 489B20
  Dim arg_10 As Integer
  loc_E212FC: If (Cancel = 0) Then
  loc_E21305:   Call Proc_53_49_14EDC44(Cancel, var_88)
  loc_E2130E:   arg_10 = Not(var_88)
  loc_E21311: End If
  loc_E21311: Exit Sub
End Sub

Private Sub DGPostAC_UnknownEvent_9 'F7F440
  'Data Table: 489B20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  loc_F7F307: Me.DGPostAC.Visible = False
  loc_F7F326: If (Me.RecordCount > 0) Then
  loc_F7F33C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7F344:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_F7F377:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_F7F37F:   Set var_128 = Me.FGrid
  loc_F7F385:   LateIdCallSt
  loc_F7F3B4:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7F3BC:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_F7F3DE:   var_B0 = Me.Fields.Item("Name")
  loc_F7F3EF:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_F7F3F7:   Set var_128 = Me.FGrid
  loc_F7F3FD:   LateIdCallSt
  loc_F7F419: End If
  loc_F7F424: Set var_A8 = Me.TxtGrid
  loc_F7F42A: Call 0.Method_DGPostAC_UnknownEvent_90 (CInt(&HD), var_B0, var_128, var_114, var_E4)
  loc_F7F432: var_B0.SetFocus
  loc_F7F43E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E87810
  'Data Table: 489B20
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E877B3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E877C6: Set var_A8 = Me.TxtGrid
  loc_E877CC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E877D4: var_AC.Visible = False
  loc_E877EE: Set var_A8 = Me.TxtGrid
  loc_E877F4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E877FC: var_AC.MaxLength = 0
  loc_E87808: Call Proc_53_53_EBB364()
  loc_E8780D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68C18
  'Data Table: 489B20
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68BD4: Set var_88 = Me.TxtGrid
  loc_E68BDA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68BF4: If (var_8C.Visible = 0) Then
  loc_E68C0D:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E68C15: End If
  loc_E68C15: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E3C0
  'Data Table: 489B20
  loc_E1E3B7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E3BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E002EC
  'Data Table: 489B20
  loc_E002E4: Call Proc_53_48_E3C9C0()
  loc_E002E9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1237960
  'Data Table: 489B20
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_1237438: Set var_88 = Me.TopCtrl1
  loc_123743E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_123748E: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1237497:   Call Form_KeyDown(Cancel, arg_10)
  loc_123749C: End If
  loc_12374A0: Set var_88 = Me.TopCtrl1
  loc_12374A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_12374BB: If ( = "Browse") Then
  loc_12374BE:   Exit Sub
  loc_12374BF: End If
  loc_12374DC: var_D8 = Me.FGrid.Rows
  loc_1237533: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_D8) - 1))))) Then
  loc_1237549:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1237559:   var_DC = "+{Tab}"
  loc_123755F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1237569:   Cancel = 0
  loc_123756F: Else
  loc_1237579:   var_B8 = Me.FGrid.Rows
  loc_12375C6:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_12375DC:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12375F2:     Proc_303_0_FBACC8("{Tab}", 0, var_B8)
  loc_12375FC:     Cancel = 0
  loc_1237636:     If (MsgBox("Save Record ?", 4, "Save Data", var_D8, var_118) = 6) Then
  loc_1237639:       Call TopCtrl1_UnknownEvent_19()
  loc_123763E:     End If
  loc_123763E:   End If
  loc_123763E: End If
  loc_1237644: global_68 = Cancel
  loc_123766A: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_123768E: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_12376A4:   var_11C = CLng(Me.FGrid.Col)
  loc_12376B4:   If (var_11C = CLng(3)) Then
  loc_12376CA:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12376D2:     var_F8 = CVar(CLng(3)) 'Long
  loc_12376D7:     var_12C = vbNullString
  loc_12376E1:     Set var_E0 = Me.FGrid
  loc_12376E7:     LateIdCallSt
  loc_123770C:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237714:     var_F8 = CVar(CLng(2)) 'Long
  loc_1237719:     var_12C = vbNullString
  loc_1237723:     Set var_E0 = Me.FGrid
  loc_1237729:     LateIdCallSt
  loc_123774E:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237756:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_123775B:     var_12C = vbNullString
  loc_1237765:     Set var_E0 = Me.FGrid
  loc_123776B:     LateIdCallSt
  loc_1237790:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237798:     var_F8 = CVar(CLng(&HB)) 'Long
  loc_123779D:     var_12C = vbNullString
  loc_12377A7:     Set var_E0 = Me.FGrid
  loc_12377AD:     LateIdCallSt
  loc_12377D2:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12377DA:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_12377DF:     var_12C = vbNullString
  loc_12377E9:     Set var_E0 = Me.FGrid
  loc_12377EF:     LateIdCallSt
  loc_1237804:   Else
  loc_123780B:     If Not (var_11C = CLng(1)) Then
  loc_1237815:       If Not (var_11C = CLng(4)) Then
  loc_123781F:         If Not (var_11C = CLng(5)) Then
  loc_1237829:           If Not (var_11C = CLng(6)) Then
  loc_1237833:             If Not (var_11C = CLng(7)) Then
  loc_123783D:               If Not (var_11C = CLng(8)) Then
  loc_1237847:                 If Not (var_11C = CLng(9)) Then
  loc_1237851:                   If Not (var_11C = CLng(&HC)) Then
  loc_123785B:                     If (var_11C = CLng(&H10)) Then
  loc_123785E:                     End If
  loc_123785E:                   End If
  loc_123785E:                 End If
  loc_123785E:               End If
  loc_123785E:             End If
  loc_123785E:           End If
  loc_123785E:         End If
  loc_123785E:       End If
  loc_1237871:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237889:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_123788E:       var_12C = vbNullString
  loc_1237898:       Set var_E4 = Me.FGrid
  loc_123789E:       LateIdCallSt
  loc_12378B9:     Else
  loc_12378C0:       If (var_11C = CLng(&HD)) Then
  loc_12378D6:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12378DE:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_12378E3:         var_12C = vbNullString
  loc_12378ED:         Set var_E0 = Me.FGrid
  loc_12378F3:         LateIdCallSt
  loc_1237918:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237920:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_1237925:         var_12C = vbNullString
  loc_123792F:         Set var_E0 = Me.FGrid
  loc_1237935:         LateIdCallSt
  loc_1237947:       End If
  loc_1237947:     End If
  loc_1237947:   End If
  loc_1237947: End If
  loc_123794D: If (Cancel = &HD) Then
  loc_1237955:   global_70 = 0
  loc_1237958: End If
  loc_123795A: Cancel = 0
  loc_123795D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E13780
  'Data Table: 489B20
  loc_E13771: Call FGrid_UnknownEvent_C()
  loc_E1377B: global_70 = 0
  loc_E1377E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1183668
  'Data Table: 489B20
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_118328C: Set var_88 = Me.TopCtrl1
  loc_1183292: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11832A7: If ( = "Browse") Then
  loc_11832AA:   Exit Sub
  loc_11832AB: End If
  loc_11832AF: Set var_88 = Me.TopCtrl1
  loc_11832B5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11832CA: If ( = "Browse") Then
  loc_11832CD:   Exit Sub
  loc_11832CE: End If
  loc_11832E1: var_BC = CLng(Me.FGrid.Col)
  loc_11832F1: If Not (var_BC = CLng(3)) Then
  loc_11832FB:   If Not (var_BC = CLng(4)) Then
  loc_1183305:     If Not (var_BC = CLng(&HD)) Then
  loc_118330F:       If Not (var_BC = CLng(6)) Then
  loc_1183319:         If Not (var_BC = CLng(8)) Then
  loc_1183323:           If Not (var_BC = CLng(&HC)) Then
  loc_118332D:             If (var_BC = CLng(&H10)) Then
  loc_1183330:             End If
  loc_1183330:           End If
  loc_1183330:         End If
  loc_1183330:       End If
  loc_1183330:     End If
  loc_1183330:   End If
  loc_1183334:   Set var_D4 = Me.FGrid
  loc_1183358:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1183385:   Set var_C4 = var_D4
  loc_1183397:   Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_11833BF:   Set var_88 = Me.TxtGrid
  loc_11833C5:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_11833CD:   0 = var_C4.Text
  loc_11833E6:   If (Len(var_C0) <= 1) Then
  loc_11833F5:     Set var_88 = Me.TxtGrid
  loc_11833FB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_1183403:     var_DA = var_C4.Text
  loc_1183414:     Set var_C8 = Me.TxtGrid
  loc_118341A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_1183422:     var_D4.Text = var_C0
  loc_1183435:   End If
  loc_1183441:   Set var_88 = Me.TxtGrid
  loc_1183447:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1183461:   Set var_C8 = Me.TxtGrid
  loc_1183467:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_118346F:   var_D4.SelStart = Len(var_C4.Text)
  loc_1183485: Else
  loc_118348C:   If (var_BC = CLng(5)) Then
  loc_11834CD:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11834E2:   Else
  loc_11834E9:     If Not (var_BC = CLng(1)) Then
  loc_11834F3:       If Not (var_BC = CLng(9)) Then
  loc_11834FD:         If (var_BC = CLng(7)) Then
  loc_1183500:         End If
  loc_1183500:       End If
  loc_1183504:       Set var_D4 = Me.FGrid
  loc_1183528:       var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1183531:       var_DA = Asc(var_C0)
  loc_1183555:       Set var_C4 = var_D4
  loc_1183567:       Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, &HFF, var_DA)
  loc_118358F:       Set var_88 = Me.TxtGrid
  loc_1183595:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, 0, var_DA)
  loc_118359D:       0 = var_C4.Text
  loc_11835B6:       If (Len(var_C0) <= 1) Then
  loc_11835C5:         Set var_88 = Me.TxtGrid
  loc_11835CB:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_11835D3:         Cancel = var_C4.Text
  loc_11835E4:         Set var_C8 = Me.TxtGrid
  loc_11835EA:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4, var_C0)
  loc_11835F2:         var_D4.Text = 0
  loc_1183605:       End If
  loc_1183611:       Set var_88 = Me.TxtGrid
  loc_1183617:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1183631:       Set var_C8 = Me.TxtGrid
  loc_1183637:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_118363F:       var_D4.SelStart = Len(var_C4.Text)
  loc_1183652:     End If
  loc_1183652:   End If
  loc_1183652: End If
  loc_118365C: If (CLng(Cancel) <> &HD) Then
  loc_1183664:   global_70 = &HFF
  loc_1183667: End If
  loc_1183667: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E6409C
  'Data Table: 489B20
  Dim var_88 As MSHFlexGrid
  loc_E64058: Set var_88 = Me.TopCtrl1
  loc_E6405E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E64073: If ( = "Browse") Then
  loc_E64076:   Exit Sub
  loc_E64077: End If
  loc_E64094: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E64097:   Exit Sub
  loc_E64098: End If
  loc_E64098: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E280
  'Data Table: 489B20
  loc_E1E277: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1E27F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E370
  'Data Table: 489B20
  loc_E1E367: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E36F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43280
  'Data Table: 489B20
  Dim var_8C As TextBox
  loc_E43254: Call Proc_53_53_EBB364()
  loc_E43264: Set var_88 = Me.TxtGrid
  loc_E4326A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43272: var_8C.Visible = False
  loc_E4327E: Exit Sub
End Sub

Public Function MasterFormExitGet() '48A6A8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48A6B7
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48A6C6
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48A6D5
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97D78
  'Data Table: 489B20
  Dim Me As Recordset15
  loc_E97D06: On Error Goto loc_E97D6F
  loc_E97D0F: Me.MoveFirst
  loc_E97D39: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97D61: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E97D69: Call Proc_53_51_13DDF28(0)
  loc_E97D6E: Exit Sub
  loc_E97D6F: ' Referenced from: E97D06
  loc_E97D6F: Proc_6_60_E63754(var_A0)
  loc_E97D74: Exit Sub
End Sub

Public Sub Proc_53_45_12E0174
  'Data Table: 489B20
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_12DFAB4: On Error Goto loc_12E016D
  loc_12DFAC5: Set var_88 = Me.Txt
  loc_12DFACB: Call 0.Method_Proc_53_45_12E01740 (CInt(0), var_8C)
  loc_12DFAEA: Me.DGVType.Left = CVar(var_8C.Left)
  loc_12DFB06: Set var_B4 = Me.Txt
  loc_12DFB0C: Call 0.Method_Proc_53_45_12E01740 (CInt(0), var_B8)
  loc_12DFB27: Set var_88 = Me.Txt
  loc_12DFB2D: Call 0.Method_Proc_53_45_12E01740 (CInt(0), var_8C)
  loc_12DFB35: var_90 = var_8C.Top
  loc_12DFB45: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_12DFB54: Me.DGVType.Top = CVar(var_8C.Left)
  loc_12DFB6C: Call 0.Method_Me0 (var_90)
  loc_12DFB78: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DFB87: Me.FGrid.Width = CVar(var_8C.Left)
  loc_12DFB95: Call 0.Method_Me8 (var_90)
  loc_12DFBA1: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DFBB0: Me.FGrid.Height = CVar(var_8C.Left)
  loc_12DFBBC: Set var_C4 = Me.FGrid
  loc_12DFBCB: var_C4.Cols = &H11
  loc_12DFBDC: var_C4.Rows = 1
  loc_12DFBF5: global_60 = CStr(CLng(var_C4.BackColor))
  loc_12DFBFF: var_A0 = 0
  loc_12DFC08: var_E8 = &H64
  loc_12DFC14: LateIdCallSt
  loc_12DFC1F: var_A0 = CVar(CLng(1)) 'Long
  loc_12DFC24: var_E8 = &H2EE
  loc_12DFC30: LateIdCallSt
  loc_12DFC38: var_A0 = 0
  loc_12DFC44: var_E8 = CVar(CLng(1)) 'Long
  loc_12DFC49: var_108 = "S.No"
  loc_12DFC52: LateIdCallSt
  loc_12DFC5D: var_A0 = CVar(CLng(1)) 'Long
  loc_12DFC68: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFC6F: LateIdCallSt
  loc_12DFC7A: var_A0 = CVar(CLng(2)) 'Long
  loc_12DFC7F: var_E8 = 0
  loc_12DFC8B: LateIdCallSt
  loc_12DFC96: var_A0 = CVar(CLng(3)) 'Long
  loc_12DFC9B: var_E8 = &H7D0
  loc_12DFCA7: LateIdCallSt
  loc_12DFCAF: var_A0 = 0
  loc_12DFCBB: var_E8 = CVar(CLng(3)) 'Long
  loc_12DFCC0: var_108 = "Sundry Name"
  loc_12DFCC9: LateIdCallSt
  loc_12DFCD4: var_A0 = CVar(CLng(3)) 'Long
  loc_12DFCDF: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFCE6: LateIdCallSt
  loc_12DFCF1: var_A0 = CVar(CLng(4)) 'Long
  loc_12DFCF6: var_E8 = &H7D0
  loc_12DFD02: LateIdCallSt
  loc_12DFD0A: var_A0 = 0
  loc_12DFD16: var_E8 = CVar(CLng(4)) 'Long
  loc_12DFD1B: var_108 = "Disp. Name"
  loc_12DFD24: LateIdCallSt
  loc_12DFD2F: var_A0 = CVar(CLng(4)) 'Long
  loc_12DFD3A: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFD41: LateIdCallSt
  loc_12DFD4C: var_A0 = CVar(CLng(5)) 'Long
  loc_12DFD51: var_E8 = &H9C4
  loc_12DFD5D: LateIdCallSt
  loc_12DFD65: var_A0 = 0
  loc_12DFD71: var_E8 = CVar(CLng(5)) 'Long
  loc_12DFD76: var_108 = "Cal. Formula"
  loc_12DFD7F: LateIdCallSt
  loc_12DFD8A: var_A0 = CVar(CLng(5)) 'Long
  loc_12DFD95: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFD9C: LateIdCallSt
  loc_12DFDA7: var_A0 = CVar(CLng(5)) 'Long
  loc_12DFDB2: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFDB9: LateIdCallSt
  loc_12DFDC4: var_A0 = CVar(CLng(6)) 'Long
  loc_12DFDC9: var_E8 = &H3E8
  loc_12DFDD5: LateIdCallSt
  loc_12DFDDD: var_A0 = 0
  loc_12DFDE9: var_E8 = CVar(CLng(6)) 'Long
  loc_12DFDEE: var_108 = "Per/Amt"
  loc_12DFDF7: LateIdCallSt
  loc_12DFE02: var_A0 = CVar(CLng(6)) 'Long
  loc_12DFE0D: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFE14: LateIdCallSt
  loc_12DFE1F: var_A0 = CVar(CLng(7)) 'Long
  loc_12DFE24: var_E8 = &H4B0
  loc_12DFE30: LateIdCallSt
  loc_12DFE38: var_A0 = 0
  loc_12DFE44: var_E8 = CVar(CLng(7)) 'Long
  loc_12DFE49: var_108 = "Value"
  loc_12DFE52: LateIdCallSt
  loc_12DFE5D: var_A0 = CVar(CLng(7)) 'Long
  loc_12DFE68: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DFE6F: LateIdCallSt
  loc_12DFE7A: var_A0 = CVar(CLng(7)) 'Long
  loc_12DFE85: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DFE8C: LateIdCallSt
  loc_12DFE97: var_A0 = CVar(CLng(8)) 'Long
  loc_12DFE9C: var_E8 = &H3E8
  loc_12DFEA8: LateIdCallSt
  loc_12DFEB0: var_A0 = 0
  loc_12DFEBC: var_E8 = CVar(CLng(8)) 'Long
  loc_12DFEC1: var_108 = "Round Off"
  loc_12DFECA: LateIdCallSt
  loc_12DFED5: var_A0 = CVar(CLng(8)) 'Long
  loc_12DFEE0: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFEE7: LateIdCallSt
  loc_12DFEF2: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DFEF7: var_E8 = &H3E8
  loc_12DFF03: LateIdCallSt
  loc_12DFF0B: var_A0 = 0
  loc_12DFF17: var_E8 = CVar(CLng(&H10)) 'Long
  loc_12DFF1C: var_108 = "Auto/manual"
  loc_12DFF25: LateIdCallSt
  loc_12DFF30: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DFF3B: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DFF42: LateIdCallSt
  loc_12DFF4D: var_A0 = CVar(CLng(9)) 'Long
  loc_12DFF52: var_E8 = &H4B0
  loc_12DFF5E: LateIdCallSt
  loc_12DFF66: var_A0 = 0
  loc_12DFF72: var_E8 = CVar(CLng(9)) 'Long
  loc_12DFF77: var_108 = "Limit"
  loc_12DFF80: LateIdCallSt
  loc_12DFF8B: var_A0 = CVar(CLng(9)) 'Long
  loc_12DFF96: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DFF9D: LateIdCallSt
  loc_12DFFA8: var_A0 = CVar(CLng(9)) 'Long
  loc_12DFFB3: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DFFBA: LateIdCallSt
  loc_12DFFC5: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12DFFCA: var_E8 = &H7D0
  loc_12DFFD6: LateIdCallSt
  loc_12DFFDE: var_A0 = 0
  loc_12DFFEA: var_E8 = CVar(CLng(&HA)) 'Long
  loc_12DFFEF: var_108 = "Nature"
  loc_12DFFF8: LateIdCallSt
  loc_12E0003: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12E000E: var_E8 = CVar(CInt(1)) 'Integer
  loc_12E0015: LateIdCallSt
  loc_12E0020: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12E0025: var_E8 = &H384
  loc_12E0031: LateIdCallSt
  loc_12E0039: var_A0 = 0
  loc_12E0045: var_E8 = CVar(CLng(&HB)) 'Long
  loc_12E004A: var_108 = "Calc. Sign"
  loc_12E0053: LateIdCallSt
  loc_12E005E: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12E0069: var_E8 = CVar(CInt(4)) 'Integer
  loc_12E0070: LateIdCallSt
  loc_12E007B: var_A0 = CVar(CLng(&HE)) 'Long
  loc_12E0080: var_E8 = 0
  loc_12E008C: LateIdCallSt
  loc_12E0097: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12E009C: var_E8 = &H3E8
  loc_12E00A8: LateIdCallSt
  loc_12E00B0: var_A0 = 0
  loc_12E00BC: var_E8 = CVar(CLng(&HC)) 'Long
  loc_12E00C1: var_108 = "Sub Total"
  loc_12E00CA: LateIdCallSt
  loc_12E00D5: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12E00E0: var_E8 = CVar(CInt(1)) 'Integer
  loc_12E00E7: LateIdCallSt
  loc_12E00F2: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12E00F7: var_E8 = &HA8C
  loc_12E0103: LateIdCallSt
  loc_12E010B: var_A0 = 0
  loc_12E0117: var_E8 = CVar(CLng(&HD)) 'Long
  loc_12E011C: var_108 = "Post A/C"
  loc_12E0125: LateIdCallSt
  loc_12E0130: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12E013B: var_E8 = CVar(CInt(1)) 'Integer
  loc_12E0142: LateIdCallSt
  loc_12E014D: var_A0 = CVar(CLng(&HF)) 'Long
  loc_12E0152: var_E8 = 0
  loc_12E015E: LateIdCallSt
  loc_12E0168: Set var_C4 = Nothing 
  loc_12E016C: Exit Sub
  loc_12E016D: ' Referenced from: 12DFAB4
  loc_12E016D: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4, var_108)
  loc_12E0172: Exit Sub
End Sub

Public Sub Proc_53_46_FCA770
  'Data Table: 489B20
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_489B43 As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FCA60B: If (Me.RecordCount = 0) Then
  loc_FCA60E:   Proc_53_46_FCA770 = 
  loc_FCA614: End If
  loc_FCA64F: Set var_94 = Me.Txt
  loc_FCA655: Call 0.Method_Proc_53_46_FCA7700 (CInt(0), var_98, var_9C, "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (V_Type='", var_130, -1)
  loc_FCA66D: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FCA67B: Set var_A8 = Me.Txt
  loc_FCA681: Call 0.Method_Proc_53_46_FCA7700 (CInt(1), var_AC, var_DC)
  loc_FCA690: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FCA698: var_EC = var_14C & var_CC 
  loc_FCA6AF: unk_489B43.Execute CStr(var_EC & ")"), var_15C, 
  loc_FCA6B7:  = var_98.Tag.Fields
  loc_FCA6BF:  = var_138.Item()
  loc_FCA6C7:  = var_14C.Value
  loc_FCA704: If (var_15C > 0) Then
  loc_FCA728:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FCA743:   Set var_94 = Me.Txt
  loc_FCA749:   Call 0.Method_Proc_53_46_FCA7700 (CInt(0))
  loc_FCA751:   var_98.SetFocus
  loc_FCA762:   Proc_53_46_FCA770 = &HFF
  loc_FCA768: End If
  loc_FCA768: Proc_53_46_FCA770 = var_98
End Sub

Public Sub Proc_53_47_115A884(arg_C, arg_10) '115A884
  'Data Table: 489B20
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_178 As Boolean
  Dim var_9A As Integer
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_115A4E8: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_115A4F1: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_115A50B: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_115A52C: var_C4 = "+"
  loc_115A546: var_118 = Left(var_98, 1)
  loc_115A54E: var_E4 = "-"
  loc_115A565: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_115A586:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_115A596:   Proc_53_47_115A884 = &HFF
  loc_115A59C: End If
  loc_115A5B4: var_C4 = "+"
  loc_115A5CE: var_118 = Right(var_98, 1)
  loc_115A5D6: var_E4 = "-"
  loc_115A5ED: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_115A60E:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_115A61E:   Proc_53_47_115A884 = &HFF
  loc_115A624: End If
  loc_115A626: var_86 = 0
  loc_115A629: ' Referenced from: 115A878
  loc_115A633: If (Len(var_98) > 0) Then
  loc_115A638:   var_A2 = 0
  loc_115A64D:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_115A663:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_115A67F:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_115A69D:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_115A6B3:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_115A6CF:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_115A6D6:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_115A706:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_115A70D:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_115A716:   var_9A = CInt(var_188)
  loc_115A736:   If (var_9A = 0) Then
  loc_115A73C:     var_A0 = var_98
  loc_115A742:   Else
  loc_115A754:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_115A75D:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_115A763:   End If
  loc_115A76E:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_115A777:     var_148 = CVar(var_A0) 'String
  loc_115A77F:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_115A7BD:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_115A7C2:       var_A2 = &HFF
  loc_115A7C5:       Exit For
  loc_115A7C8:     End If
  loc_115A7CB:   Next var_18C 'Integer
  loc_115A7D0:   ' Referenced from: 115A7C5
  loc_115A7D6:   If (var_A2 = 0) Then
  loc_115A7E4:     var_F8 = Trim(var_A0)
  loc_115A807:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_115A810:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_115A819:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_115A81D:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_115A838:     Proc_53_47_115A884 = &HFF
  loc_115A83E:   End If
  loc_115A844:   If (var_9A = 0) Then
  loc_115A84A:     var_98 = vbNullString
  loc_115A850:   Else
  loc_115A865:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_115A86E:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_115A878:   End If
  loc_115A878:   GoTo loc_115A629
  loc_115A87B: End If
  loc_115A87B: Proc_53_47_115A884 = 
  loc_115A881:  = 
End Sub

Public Sub Proc_53_48_E3C9C0
  'Data Table: 489B20
  loc_E3C9A0: Set var_88 = Me.TopCtrl1
  loc_E3C9A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3C9BB: If ( = "Browse") Then
  loc_E3C9BE:   Exit Sub
  loc_E3C9BF: End If
  loc_E3C9BF: Exit Sub
End Sub

Public Sub Proc_53_49_14EDC44(arg_C) '14EDC44
  'Data Table: 489B20
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_138 As MSHFlexGrid
  Dim var_170 As Variant
  loc_14ECE1B: var_A0 = CLng(Me.FGrid.Col)
  loc_14ECE2B: If (var_A0 = CLng(3)) Then
  loc_14ECE4E:   var_A6 = Me.EOF
  loc_14ECE7C:   Set var_8C = Me.TxtGrid
  loc_14ECE82:   Call 0.Method_Proc_53_49_14EDC440 (arg_C, var_AC, var_B0)
  loc_14ECE8A:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_14ECEA2:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_14ECEB8:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ECEC0:     var_E0 = CVar(CLng(3)) 'Long
  loc_14ECEC5:     var_100 = vbNullString
  loc_14ECECF:     Set var_AC = Me.FGrid
  loc_14ECED5:     LateIdCallSt
  loc_14ECEFA:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ECF02:     var_E0 = CVar(CLng(2)) 'Long
  loc_14ECF07:     var_100 = vbNullString
  loc_14ECF11:     Set var_AC = Me.FGrid
  loc_14ECF17:     LateIdCallSt
  loc_14ECF3C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ECF44:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_14ECF49:     var_100 = vbNullString
  loc_14ECF53:     Set var_AC = Me.FGrid
  loc_14ECF59:     LateIdCallSt
  loc_14ECF7E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ECF86:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_14ECF8B:     var_100 = vbNullString
  loc_14ECF95:     Set var_AC = Me.FGrid
  loc_14ECF9B:     LateIdCallSt
  loc_14ECFC0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ECFC8:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_14ECFCD:     var_100 = vbNullString
  loc_14ECFD7:     Set var_AC = Me.FGrid
  loc_14ECFDD:     LateIdCallSt
  loc_14ECFF2:   Else
  loc_14ECFF5:     Call Proc_53_54_FBD7BC(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_14ED000:     If (var_A6 = 0) Then
  loc_14ED008:       Proc_53_49_14EDC44 = 0
  loc_14ED00E:     End If
  loc_14ED021:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED029:     var_F0 = CVar(CLng(3)) 'Long
  loc_14ED05C:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14ED064:     Set var_138 = Me.FGrid
  loc_14ED06A:     LateIdCallSt
  loc_14ED099:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED0A1:     var_F0 = CVar(CLng(2)) 'Long
  loc_14ED0D4:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14ED0DC:     Set var_138 = Me.FGrid
  loc_14ED0E2:     LateIdCallSt
  loc_14ED111:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED119:     var_F0 = CVar(CLng(4)) 'Long
  loc_14ED14C:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14ED15A:     LateIdCallSt
  loc_14ED1C1:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_14ED1CF:     LateIdCallSt
  loc_14ED234:     var_134 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, Me.FGrid)) 'String
  loc_14ED23C:     Set var_138 = Me.FGrid
  loc_14ED242:     LateIdCallSt
  loc_14ED26F:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED277:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_14ED2AA:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_14ED2B2:     Set var_138 = Me.FGrid
  loc_14ED2B8:     LateIdCallSt
  loc_14ED2D4:   End If
  loc_14ED2E7:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED2EF:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_14ED2F4:   var_100 = "Manual"
  loc_14ED2FE:   Set var_AC = Me.FGrid
  loc_14ED304:   LateIdCallSt
  loc_14ED32F:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14ED334:   var_E0 = 1
  loc_14ED341:   Set var_AC = Me.FGrid
  loc_14ED352:   var_B0 = CStr(var_AC.TextMatrix))
  loc_14ED36B:   If (var_B0 <> vbNullString) Then
  loc_14ED36E:     var_C0 = vbNullString
  loc_14ED378:     Set var_8C = Me.FGrid
  loc_14ED389:   End If
  loc_14ED38C: Else
  loc_14ED393:   If Not (var_A0 = CLng(1)) Then
  loc_14ED39D:     If (var_A0 = CLng(4)) Then
  loc_14ED3A0:     End If
  loc_14ED3DC:     Set var_8C = Me.TxtGrid
  loc_14ED3E2:     Call 0.Method_Proc_53_49_14EDC440 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_14ED3EA:     var_E0 = var_AC.Text
  loc_14ED3F2:     var_134 = CVar(var_B0) 'String
  loc_14ED3FA:     Set var_13C = Me.FGrid
  loc_14ED400:     LateIdCallSt
  loc_14ED421:   Else
  loc_14ED428:     If (var_A0 = CLng(5)) Then
  loc_14ED468:       Set var_8C = Me.TxtGrid
  loc_14ED46E:       Call 0.Method_Proc_53_49_14EDC440 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_14ED476:       var_C0 = var_AC.Text
  loc_14ED47E:       var_134 = CVar(var_B0) 'String
  loc_14ED486:       Set var_13C = Me.FGrid
  loc_14ED48C:       LateIdCallSt
  loc_14ED4C9:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_14ED4DF:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED4E8:         Set var_AC = Me.FGrid
  loc_14ED4F7:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED4FC:         var_100 = vbNullString
  loc_14ED506:         Set var_114 = Me.FGrid
  loc_14ED50C:         LateIdCallSt
  loc_14ED529:         Proc_53_49_14EDC44 = &HFF
  loc_14ED52F:       End If
  loc_14ED53C:       Set var_8C = Me.TxtGrid
  loc_14ED542:       Call 0.Method_Proc_53_49_14EDC440 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_14ED54A:       var_13C = var_AC.Text
  loc_14ED561:       If (var_B0 <> vbNullString) Then
  loc_14ED59F:         Call Proc_53_47_115A884(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_14ED5B8:         If (var_13E = &HFF) Then
  loc_14ED5BD:           var_86 = 0
  loc_14ED5D3:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED5DC:           Set var_AC = Me.FGrid
  loc_14ED5EB:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED5F0:           var_100 = vbNullString
  loc_14ED600:           LateIdCallSt
  loc_14ED618:           Proc_53_49_14EDC44 = Me.FGrid
  loc_14ED61E:         End If
  loc_14ED61E:       End If
  loc_14ED621:     Else
  loc_14ED628:       If Not (var_A0 = CLng(8)) Then
  loc_14ED632:         If (var_A0 = CLng(&HC)) Then
  loc_14ED635:         End If
  loc_14ED671:         Set var_8C = Me.TxtGrid
  loc_14ED677:         Call 0.Method_Proc_53_49_14EDC440 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_14ED67F:         var_C0 = var_AC.Text
  loc_14ED695:         LateIdCallSt
  loc_14ED6C0:         Set var_8C = Me.TxtGrid
  loc_14ED6C6:         Call 0.Method_Proc_53_49_14EDC440 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_14ED6CE:         var_13E = var_AC.Text
  loc_14ED6E5:         If (var_B0 = vbNullString) Then
  loc_14ED6FB:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED704:           Set var_AC = Me.FGrid
  loc_14ED713:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED718:           var_100 = "No"
  loc_14ED722:           Set var_114 = Me.FGrid
  loc_14ED728:           LateIdCallSt
  loc_14ED740:         End If
  loc_14ED743:       Else
  loc_14ED74A:         If (var_A0 = CLng(&H10)) Then
  loc_14ED751:           Set var_114 = Me.FGrid
  loc_14ED789:           Set var_8C = Me.TxtGrid
  loc_14ED78F:           Call 0.Method_Proc_53_49_14EDC440 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_14ED797:           var_E0 = var_AC.Text
  loc_14ED7AD:           LateIdCallSt
  loc_14ED7D8:           Set var_8C = Me.TxtGrid
  loc_14ED7DE:           Call 0.Method_Proc_53_49_14EDC440 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_14ED7E6:           var_C0 = var_AC.Text
  loc_14ED7FD:           If (var_B0 = vbNullString) Then
  loc_14ED813:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED81C:             Set var_AC = Me.FGrid
  loc_14ED82B:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED830:             var_100 = "Manual"
  loc_14ED83A:             Set var_114 = Me.FGrid
  loc_14ED840:             LateIdCallSt
  loc_14ED858:           End If
  loc_14ED85B:         Else
  loc_14ED862:           If (var_A0 = CLng(6)) Then
  loc_14ED869:             Set var_114 = Me.FGrid
  loc_14ED8A1:             Set var_8C = Me.TxtGrid
  loc_14ED8A7:             Call 0.Method_Proc_53_49_14EDC440 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_14ED8AF:             var_E0 = var_AC.Text
  loc_14ED8C5:             LateIdCallSt
  loc_14ED8F0:             Set var_8C = Me.TxtGrid
  loc_14ED8F6:             Call 0.Method_Proc_53_49_14EDC440 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_14ED8FE:             var_C0 = var_AC.Text
  loc_14ED915:             If (var_B0 = vbNullString) Then
  loc_14ED92B:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED934:               Set var_AC = Me.FGrid
  loc_14ED943:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED948:               var_100 = "Amt"
  loc_14ED952:               Set var_114 = Me.FGrid
  loc_14ED958:               LateIdCallSt
  loc_14ED970:             End If
  loc_14ED973:           Else
  loc_14ED97A:             If Not (var_A0 = CLng(9)) Then
  loc_14ED984:               If (var_A0 = CLng(7)) Then
  loc_14ED987:               End If
  loc_14ED993:               Set var_8C = Me.TxtGrid
  loc_14ED999:               Call 0.Method_Proc_53_49_14EDC440 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_14ED9A1:               var_C0 = var_AC.Text
  loc_14ED9C4:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED9DC:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14EDA09:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_14EDA11:               Set var_13C = Me.FGrid
  loc_14EDA17:               LateIdCallSt
  loc_14EDA41:             Else
  loc_14EDA48:               If (var_A0 = CLng(&HD)) Then
  loc_14EDA99:                 Set var_8C = Me.TxtGrid
  loc_14EDA9F:                 Call 0.Method_Proc_53_49_14EDC440 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_14EDAA7:                 1 = var_AC.Text
  loc_14EDABF:                 If (var_100 Or (var_B0 = vbNullString)) Then
  loc_14EDAD5:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDADD:                   var_E0 = CVar(CLng(&HF)) 'Long
  loc_14EDAE2:                   var_100 = vbNullString
  loc_14EDAEC:                   Set var_AC = Me.FGrid
  loc_14EDAF2:                   LateIdCallSt
  loc_14EDB17:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDB1F:                   var_E0 = CVar(CLng(&HD)) 'Long
  loc_14EDB24:                   var_100 = vbNullString
  loc_14EDB2E:                   Set var_AC = Me.FGrid
  loc_14EDB34:                   LateIdCallSt
  loc_14EDB49:                 Else
  loc_14EDB5C:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDB64:                   var_F0 = CVar(CLng(&HF)) 'Long
  loc_14EDB97:                   var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14EDB9F:                   Set var_138 = Me.FGrid
  loc_14EDBA5:                   LateIdCallSt
  loc_14EDBD4:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDBDC:                   var_F0 = CVar(CLng(&HD)) 'Long
  loc_14EDC0F:                   var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14EDC17:                   Set var_138 = Me.FGrid
  loc_14EDC1D:                   LateIdCallSt
  loc_14EDC39:                 End If
  loc_14EDC39:               End If
  loc_14EDC39:             End If
  loc_14EDC39:           End If
  loc_14EDC39:         End If
  loc_14EDC39:       End If
  loc_14EDC39:     End If
  loc_14EDC39:   End If
  loc_14EDC39: End If
  loc_14EDC3E: Proc_53_49_14EDC44 = &HFF
End Sub

Public Sub Proc_53_50_F2C74C
  'Data Table: 489B20
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F2C64E: Set var_8C = Me.Txt
  loc_F2C654: Call 0.Method_Proc_53_50_F2C74CC (var_8E, var_86)
  loc_F2C664: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2C67A:   Set var_8C = Me.Txt
  loc_F2C680:   Call 0.Method_Proc_53_50_F2C74C0 (CInt(var_86), var_98)
  loc_F2C688:   var_98.Text = vbNullString
  loc_F2C6A4:   Set var_8C = Me.Txt
  loc_F2C6AA:   Call 0.Method_Proc_53_50_F2C74C0 (CInt(var_86), var_98)
  loc_F2C6B2:   var_98.Tag = vbNullString
  loc_F2C6C1: Next var_92 'Byte
  loc_F2C6D4: Me.LblDepart.Caption = vbNullString
  loc_F2C6EF: Me.FGrid.Rows = 1
  loc_F2C70C: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2C714: Set var_98 = Me.FGrid
  loc_F2C743: Me.FGrid.FixedRows = 1
  loc_F2C74B: Exit Sub
End Sub

Public Sub Proc_53_51_13DDF28
  'Data Table: 489B20
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_489B43 As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As TextBox
  Dim var_120 As Label
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  loc_13DD558: On Error Goto loc_13DDF20
  loc_13DD572: If (Me.RecordCount > 0) Then
  loc_13DD575:   Call Proc_53_50_F2C74C()
  loc_13DD587:   var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,SG.Name As PostAcName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join ViewSubGroup SG On SP.PostAc=SG.SubCode) Where SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_13DD5D0:   unk_489B43.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_11C, -1
  loc_13DD5DB:   Set var_88 = var_120
  loc_13DD609:   If (var_88.RecordCount > 0) Then
  loc_13DD642:     Set var_120 = Me.Txt
  loc_13DD648:     Call 0.Method_Proc_53_51_13DDF280 (CInt(0), var_124)
  loc_13DD650:     var_124.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("V_Type")))
  loc_13DD69A:     Set var_120 = Me.Txt
  loc_13DD6A0:     Call 0.Method_Proc_53_51_13DDF280 (CInt(0), var_124)
  loc_13DD6A8:     var_124.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")))
  loc_13DD6F5:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_13DD6F8:     End If
  loc_13DD72D:     Me.LblDepart.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_13DD791:     Set var_120 = Me.Txt
  loc_13DD797:     Call 0.Method_Proc_53_51_13DDF280 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_13DD79F:     var_124.Text = 1
  loc_13DD7BB:     var_8A = 1
  loc_13DD7D1:     Me.FGrid.Rows = 1
  loc_13DD7D9:     ' Referenced from: 13DDE97
  loc_13DD7E8:     If Not(var_88.EOF) Then
  loc_13DD7EB:       var_A4 = vbNullString
  loc_13DD7F5:       Set var_94 = Me.FGrid
  loc_13DD80A:       Set var_12C = Me.FGrid
  loc_13DD811:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_13DD819:       var_10C = CVar(CLng(1)) 'Long
  loc_13DD849:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13DD850:       LateIdCallSt
  loc_13DD89F:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(2)))) 'String
  loc_13DD8A6:       LateIdCallSt
  loc_13DD8F1:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(var_8A)))) 'String
  loc_13DD8F8:       LateIdCallSt
  loc_13DD943:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DD94A:       LateIdCallSt
  loc_13DD995:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DD99C:       LateIdCallSt
  loc_13DD9DD:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DD9E5:       var_15C = CVar(CLng(6)) 'Long
  loc_13DDA1B:       var_17C = CVar(CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_12C, "Per", FGrid.DispID_10000) = "P"), "Per", "Amt"))) 'String
  loc_13DDA22:       LateIdCallSt
  loc_13DDA9F:       LateIdCallSt
  loc_13DDADD:       var_190 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_13DDAE4:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DDAEC:       var_15C = CVar(CLng(8)) 'Long
  loc_13DDB22:       var_17C = CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))) 'String
  loc_13DDB29:       LateIdCallSt
  loc_13DDBA6:       LateIdCallSt
  loc_13DDBF5:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_13DDBFC:       LateIdCallSt
  loc_13DDC47:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(9)))) 'String
  loc_13DDC4E:       LateIdCallSt
  loc_13DDCA0:       LateIdCallSt
  loc_13DDCDA:       var_190 = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_12C, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_12C, var_D8)), CVar(CLng(var_8A)))
  loc_13DDD26:       LateIdCallSt
  loc_13DDD80:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostAc")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_12C, CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_13DDD87:       LateIdCallSt
  loc_13DDDD2:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostAcName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DDDD9:       LateIdCallSt
  loc_13DDE1A:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DDE22:       var_15C = CVar(CLng(&H10)) 'Long
  loc_13DDE4F:       var_11C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AutoManual")), var_12C, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_13DDE58:       var_17C = CVar(CStr(var_11C)) 'String
  loc_13DDE5F:       LateIdCallSt
  loc_13DDE82:       Set var_12C = Nothing 
  loc_13DDE8C:       var_8A = (var_8A + 1)
  loc_13DDE92:       var_88.MoveNext
  loc_13DDE97:       GoTo loc_13DD7D9
  loc_13DDE9A:     End If
  loc_13DDE9A:   End If
  loc_13DDE9A:   var_A4 = 0
  loc_13DDEA4:   Set var_94 = Me.FGrid
  loc_13DDED1:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13DDED4:     var_A4 = "1"
  loc_13DDEDE:     Set var_94 = Me.FGrid
  loc_13DDEEF:   End If
  loc_13DDEEF:   var_A4 = 1
  loc_13DDF02:   Me.FGrid.FixedRows = var_A4
  loc_13DDF0D: Else
  loc_13DDF0D:   Call Proc_53_50_F2C74C(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_12C, var_17C)
  loc_13DDF12: End If
  loc_13DDF12: Call Proc_53_53_EBB364(var_15C, var_13C, var_12C)
  loc_13DDF1C: Set var_88 = Nothing
  loc_13DDF1F: Exit Sub
  loc_13DDF20: ' Referenced from: 13DD558
  loc_13DDF20: Proc_6_60_E63754(var_17C, var_15C)
  loc_13DDF25: Exit Sub
End Sub

Public Sub Proc_53_52_E7CDB4(arg_C) 'E7CDB4
  'Data Table: 489B20
  Dim var_98 As TextBox
  loc_E7CD62: Set var_8C = Me.Txt
  loc_E7CD68: Call 0.Method_Proc_53_52_E7CDB4C (var_8E, var_86)
  loc_E7CD78: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7CD8E:   Set var_8C = Me.Txt
  loc_E7CD94:   Call 0.Method_Proc_53_52_E7CDB40 (CInt(var_86), var_98)
  loc_E7CD9C:   var_98.Enabled = arg_C
  loc_E7CDAB: Next var_92 'Byte
  loc_E7CDB1: Exit Sub
End Sub

Public Sub Proc_53_53_EBB364
  'Data Table: 489B20
  loc_EBB2DC: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBB2EE:   Me.DGVType.Visible = False
  loc_EBB2F6: End If
  loc_EBB312: If (CBool(Me.DGPostAC.Visible) = &HFF) Then
  loc_EBB324:   Me.DGPostAC.Visible = False
  loc_EBB32C: End If
  loc_EBB348: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EBB35A:   Me.DGSundry.Visible = False
  loc_EBB362: End If
  loc_EBB362: Exit Sub
End Sub

Public Sub Proc_53_54_FBD7BC
  'Data Table: 489B20
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBD63F: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FBD644:   var_92 = 3 'Byte
  loc_FBD648: End If
  loc_FBD651: Set var_98 = Me.TxtGrid
  loc_FBD657: Call 0.Method_Proc_53_54_FBD7BC0 (0, var_B0)
  loc_FBD67A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBD6AE: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBD6D2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBD6D5:     GoTo loc_FBD7A7
  loc_FBD6D8:   End If
  loc_FBD6DC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBD706:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBD710:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBD745:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBD769:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBD782:     Set var_98 = Me.TxtGrid
  loc_FBD788:     Call 0.Method_Proc_53_54_FBD7BC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FBD790:     var_B0.SetFocus
  loc_FBD7A1:     Proc_53_54_FBD7BC = 0
  loc_FBD7A7:     ' Referenced from: FBD6D5
  loc_FBD7A7:   End If
  loc_FBD7AA: Next var_D4 'Integer
  loc_FBD7B4: Proc_53_54_FBD7BC = &HFF
End Sub

Public Sub Proc_53_55_1322F04
  'Data Table: 489B20
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_8A As Integer
  Dim var_C4 As String
  Dim var_C8 As String
  Dim unk_489B43 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Field20
  Dim var_118 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_E8 As Variant
  Dim var_178 As Variant
  loc_132277C: On Error Goto loc_1322EFC
  loc_1322792: Me.FGrid.Rows = 2
  loc_132279E: Set var_B0 = Me.FGrid
  loc_13227A4: var_C0 = var_B0.Row
  loc_13227AE: var_8A = CInt(CLng(var_C0))
  loc_13227CB: var_C4 = "SELECT SF.*,SM.Name as SundryName,SG.Name As PostAcName" & " FROM ((SundryTypeFix SF LEFT JOIN SundryMast SM ON SF.SundryCode = SM.Code)"
  loc_13227DB: unk_489B43.Execute var_C4 & " LEFT JOIN ViewSubGroup SG On SF.PostAc=SG.SubCode) Order By SNo ", var_C0, -1
  loc_13227E6: Set var_88 = var_B0
  loc_132280A: If (var_88.RecordCount > 0) Then
  loc_132280D:   ' Referenced from: 1322E58
  loc_132281C:   If Not(var_88.EOF) Then
  loc_132281F:     var_9C = vbNullString
  loc_1322829:     Set var_B0 = Me.FGrid
  loc_132283E:     Set var_D4 = Me.FGrid
  loc_1322845:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_132284D:     var_F8 = CVar(CLng(1)) 'Long
  loc_132287D:     var_118 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1322884:     LateIdCallSt
  loc_13228D3:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(2)))) 'String
  loc_13228DA:     LateIdCallSt
  loc_1322925:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_132292C:     LateIdCallSt
  loc_1322977:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_132297E:     LateIdCallSt
  loc_1322994:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_13229D0:     LateIdCallSt
  loc_1322A0A:     var_C8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), var_D4, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_D4, var_118)), var_AC)
  loc_1322A11:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1322A19:     var_158 = CVar(CLng(6)) 'Long
  loc_1322A4F:     var_178 = CVar(CStr(IIf((var_C8 = "P"), "Per", "Amt"))) 'String
  loc_1322A56:     LateIdCallSt
  loc_1322AD3:     LateIdCallSt
  loc_1322B11:     var_C8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_1322B18:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1322B20:     var_158 = CVar(CLng(8)) 'Long
  loc_1322B56:     var_178 = CVar(CStr(IIf((var_C8 = "Y"), "Yes", "No"))) 'String
  loc_1322B5D:     LateIdCallSt
  loc_1322BDA:     LateIdCallSt
  loc_1322C29:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_1322C30:     LateIdCallSt
  loc_1322C7B:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(9)))) 'String
  loc_1322C82:     LateIdCallSt
  loc_1322CD4:     LateIdCallSt
  loc_1322D0E:     var_C8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")), var_D4, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_D4, var_118)), CVar(CLng(var_8A)))
  loc_1322D15:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1322D5A:     LateIdCallSt
  loc_1322DB4:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostAc")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_D4, CVar(CStr(IIf((var_C8 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_1322DBB:     LateIdCallSt
  loc_1322E06:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostAcName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_1322E0D:     LateIdCallSt
  loc_1322E23:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_1322E2B:     var_E8 = CVar(CLng(&H10)) 'Long
  loc_1322E30:     var_108 = "Manual"
  loc_1322E39:     LateIdCallSt
  loc_1322E43:     Set var_D4 = Nothing 
  loc_1322E4D:     var_8A = (var_8A + 1)
  loc_1322E53:     var_88.MoveNext
  loc_1322E58:     GoTo loc_132280D
  loc_1322E5B:   End If
  loc_1322E6E:   Me.FGrid.FixedRows = 1
  loc_1322E76: End If
  loc_1322E7C: If (var_8A = 1) Then
  loc_1322E92:   Me.FGrid.Rows = 1
  loc_1322EAF:   var_118 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1322EB7:   Set var_D8 = Me.FGrid
  loc_1322ED3:   var_9C = 1
  loc_1322EE6:   Me.FGrid.FixedRows = var_9C
  loc_1322EEE: End If
  loc_1322EEE: Call Proc_53_53_EBB364(FGrid.DispID_10000, var_118, var_8A, var_D4, var_108, var_E8, var_9C)
  loc_1322EF8: Set var_88 = Nothing
  loc_1322EFB: Exit Sub
  loc_1322EFC: ' Referenced from: 132277C
  loc_1322EFC: Proc_6_60_E63754(var_D4, var_118, var_108)
  loc_1322F01: Exit Sub
End Sub
