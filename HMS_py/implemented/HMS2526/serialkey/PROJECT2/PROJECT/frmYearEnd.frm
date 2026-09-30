VERSION 5.00
Begin VB.Form frmYearEnd
  Caption = "Year End Updation"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmYearEnd.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 5130
  ClientHeight = 3810
  Begin CommandButton Command1
    Caption = "Create CSV"
    Left = 1755
    Top = 2160
    Width = 1560
    Height = 390
    Visible = 0   'False
    TabIndex = 0
  End
  Begin BtnEnh Head
    Left = 7200
    Top = 3375
    Width = 2475
    Height = 1245
    TabIndex = 2
  End
  Begin BtnEnh CmdYrUpdate
    Left = 4635
    Top = 3375
    Width = 2475
    Height = 1245
    TabIndex = 3
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 1
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmYearEnd"


Private Sub Head_UnknownEvent_9 'E15F18
  'Data Table: 423F04
  loc_E15F0D: Me.Global.Unload Me
  loc_E15F15: Exit Sub
End Sub

Private Sub Form_Load() 'E08150
  'Data Table: 423F04
  loc_E08147: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E0814C: Exit Sub
End Sub

Private Sub Form_Resize() 'E76638
  'Data Table: 423F04
  loc_E765E2: Call 0.Method_arg_50 (var_88)
  loc_E765F4: Me.LblFormCaption.Caption = var_88
  loc_E7660D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7661B: Call 0.Method_arg_100 (var_90)
  loc_E7662D: Me.LblFormCaption.Width = var_90
  loc_E76635: Exit Sub
End Sub

Private Sub CmdYrUpdate_UnknownEvent_9 '17D8864
  'Data Table: 423F04
  Dim var_124 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_13C As String
  Dim var_140 As String
  Dim unk_423F11 As Connection15
  Dim var_88 As Variant
  Dim var_138 As Variant
  Dim var_E4 As Variant
  Dim var_98 As Double
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_158 As Variant
  Dim var_200 As Variant
  Dim var_1B0 As Variant
  Dim var_210 As Variant
  Dim var_148 As Variant
  Dim var_8A As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_29C As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_34C As Variant
  Dim var_3B4 As Variant
  Dim var_41C As Variant
  Dim var_484 As Variant
  Dim var_4A4 As Variant
  Dim var_4A8 As Fields15
  Dim var_4CC As Variant
  Dim var_5BC As Variant
  Dim var_5E0 As Fields15
  Dim var_694 As Variant
  Dim var_958 As Fields15
  Dim var_99C As Variant
  Dim var_C94 As Variant
  Dim var_FB4 As Variant
  Dim var_B0 As Recordset15
  Dim var_FFC As Double
  Dim var_1004 As Double
  Dim var_100C As Double
  Dim var_1014 As Double
  Dim var_101C As Double
  Dim var_1024 As Double
  Dim var_1F0 As Variant
  Dim var_26C As Variant
  Dim var_3A4 As Variant
  Dim var_40C As Variant
  Dim var_4DC As Variant
  Dim var_544 As Variant
  Dim var_614 As Variant
  Dim var_664 As Variant
  Dim var_2D4 As Variant
  Dim var_474 As Variant
  Dim var_B4 As Recordset15
  Dim var_33C As Variant
  loc_17D6ABA: var_124 = (MemVar_1F950B8 = 1)
  loc_17D6ADE: var_F4 = Format(MemVar_1F950EC, "dd/MMM/yyyy")
  loc_17D6AEE: var_114 = (var_F4 > CDate(MemVar_1F950FC))
  loc_17D6AF2: var_134 = 1 And var_114
  loc_17D6B01: If CBool(var_134) Then
  loc_17D6B0C:   If (MemVar_1F95070 <> MemVar_1F95078) Then
  loc_17D6B22:     var_E4 = "You can't close year for different Site"
  loc_17D6B28:     MsgBox(var_E4, &H50, var_F4, var_114, var_134)
  loc_17D6B38:     Exit Sub
  loc_17D6B39:   End If
  loc_17D6B48:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_17D6B74:   unk_423F11.Execute "Select * From Company Where Comp_Code='" & MemVar_1F95128 & "'", var_E4, -1
  loc_17D6B7F:   Set var_88 = Me.CmdYrUpdate
  loc_17D6BA3:   If (var_88.RecordCount > 0) Then
  loc_17D6BDD:     var_98 = CDate(DateAdd("YYYY", CDbl(1), CVar(var_88.Fields.Item("Start_Dt"))))
  loc_17D6C21:     var_A0 = CDate(DateAdd("YYYY", CDbl(1), CVar(var_88.Fields.Item("End_Dt"))))
  loc_17D6C56:     var_AC = Proc_6_38_E69628(CVar(var_88.Fields.Item("ActiveEpabx")), var_A0, var_98)
  loc_17D6C6E:     var_138 = var_88.Fields
  loc_17D6CED:     var_158 = (Left(Trim(CVar(Proc_6_38_E69628(CVar(var_138.Item("CYear")), var_138))), 4) + 1)
  loc_17D6CFA:     var_200 = CVar(CStr(var_158) & "-") 'String
  loc_17D6D1A:     var_1B0 = (Right(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CYear")), 1))), 2) + 1)
  loc_17D6D2E:     var_210 = (1 + Format(CVar(CStr(var_1B0)), "00"))
  loc_17D6D33:     var_A4 = CStr(var_210)
  loc_17D6D7C:     var_148 = var_88.Fields.Item("PYear")
  loc_17D6D84:     var_E4 = CVar(var_148) 'Address
  loc_17D6D8D:     var_F4 = CVar(Proc_6_38_E69628(var_E4, 1)) 'String
  loc_17D6DB7:     var_170 = CVar(var_88.Fields.Item("PYear")) 'Address
  loc_17D6DF3:     var_158 = (Left(Trim(var_F4), 4) + 1)
  loc_17D6E00:     var_200 = CVar(CStr(var_158) & "-") 'String
  loc_17D6E20:     var_1B0 = (Right(Trim(CVar(Proc_6_38_E69628(var_170, var_200))), 2) + 1)
  loc_17D6E2C:     var_1F0 = Format(CVar(CStr(var_1B0)), "00")
  loc_17D6E34:     var_210 = (1 + var_1F0)
  loc_17D6E39:     var_A8 = CStr(var_210)
  loc_17D6E71:     var_D4 = 0
  loc_17D6E90:     unk_423F11.Execute "Select Max(Cast(Comp_Code As Integer))+1 As Code From Company", var_E4, -1
  loc_17D6E98:     var_138 = var_138.Fields
  loc_17D6EA0:     var_D4 = var_148.Item(var_148)
  loc_17D6EA8:     var_15C = var_15C.Value
  loc_17D6EBA:     var_8A = CInt(Proc_6_38_E69628(var_F4, var_F4, 1))
  loc_17D6ED7:     var_13C = "Insert into Company (Comp_Code,Comp_Name,CentralData_Path,Repo_Path,Start_Dt,End_Dt,address1,address2,city,phone,fax,lstno,lstdate,cstno,cstdate,cyear,pyear,Pin,SName,U_Name,U_EntDt,U_AE,FGLNO,SerialKeyNo,SiteCode,SiteName,SiteCodeDisplay,ActiveEpabx,PanNo,TinNo,GSTIN,StateCode,State,DivisionCode,Mobile,Email,LegalName,TradeName,Comp_Id) " & " Values ('"
  loc_17D6EEA:     var_F4 = CVar(var_13C & CStr(var_8A) & "','") 'String
  loc_17D6EF3:     var_C4 = "Comp_Name"
  loc_17D6EFF:     var_138 = var_88.Fields
  loc_17D6F0F:     var_E4 = var_138.Item(var_C4).Value
  loc_17D6F1B:     var_D4 = "',"
  loc_17D6F4A:     Proc_6_17_EAAE40(var_170, CVar(var_88.Fields.Item("CentralData_Path")), var_F4 & var_E4 & var_D4)
  loc_17D6F85:     Proc_6_17_EAAE40(var_1B0, CVar(var_88.Fields.Item("Repo_Path")), var_8A & var_170 & ",")
  loc_17D6FA5:     Proc_6_7_F26918(var_1F0, var_98)
  loc_17D6FC5:     Proc_6_7_F26918(var_26C, var_A0)
  loc_17D7000:     Proc_6_17_EAAE40(var_2D4, CVar(var_88.Fields.Item("Address1")))
  loc_17D703B:     Proc_6_17_EAAE40(var_33C, CVar(var_88.Fields.Item("Address2")))
  loc_17D7076:     Proc_6_17_EAAE40(var_3A4, CVar(var_88.Fields.Item("City")))
  loc_17D70B1:     Proc_6_17_EAAE40(var_40C, CVar(var_88.Fields.Item("Phone")))
  loc_17D70EC:     Proc_6_17_EAAE40(var_474, CVar(var_88.Fields.Item("Fax")))
  loc_17D70F4:     var_484 = var_200 & var_1B0 & "," & var_1F0 & "," & var_26C & "," & var_2D4 & "," & var_33C & "," & var_3A4 & "," & var_40C & "," & var_474 
  loc_17D7127:     Proc_6_17_EAAE40(var_4DC, CVar(var_88.Fields.Item("LstNo")))
  loc_17D7162:     Proc_6_17_EAAE40(var_544, CVar(var_88.Fields.Item("LstDate")))
  loc_17D719D:     Proc_6_17_EAAE40(var_5AC, CVar(var_88.Fields.Item("CstNo")))
  loc_17D71D8:     Proc_6_17_EAAE40(var_614, CVar(var_88.Fields.Item("CstDate")))
  loc_17D71F8:     Proc_6_17_EAAE40(var_664, var_A4)
  loc_17D7209:     var_694 = var_484 & "," & var_4DC & "," & var_544 & "," & var_5AC & "," & var_614 & "," & var_664 & "," 
  loc_17D7218:     Proc_6_17_EAAE40(var_6B4, var_A8)
  loc_17D7253:     Proc_6_17_EAAE40(var_71C, CVar(var_88.Fields.Item("Pin")))
  loc_17D728E:     Proc_6_17_EAAE40(var_784, CVar(var_88.Fields.Item("SName")))
  loc_17D72C9:     Proc_6_17_EAAE40(var_7EC, CVar(var_88.Fields.Item("U_Name")))
  loc_17D7304:     Proc_6_7_F26918(var_854, CVar(var_88.Fields.Item("U_EntDt")))
  loc_17D733F:     Proc_6_17_EAAE40(var_8BC, CVar(var_88.Fields.Item("U_AE")))
  loc_17D737A:     Proc_6_17_EAAE40(var_924, CVar(var_88.Fields.Item("FGLNo")))
  loc_17D739E:     var_958 = var_88.Fields
  loc_17D73B5:     Proc_6_17_EAAE40(var_98C, CVar(var_958.Item("SerialKeyNo")))
  loc_17D73BD:     var_99C = var_694 & var_6B4 & "," & var_71C & "," & var_784 & "," & var_7EC & "," & var_854 & "," & var_8BC & "," & var_924 & "," & var_98C 
  loc_17D73F0:     Proc_6_17_EAAE40(var_9F4, CVar(var_88.Fields.Item("SiteCode")))
  loc_17D742B:     Proc_6_17_EAAE40(var_A5C, CVar(var_88.Fields.Item("SiteName")))
  loc_17D7466:     Proc_6_17_EAAE40(var_AC4, CVar(var_88.Fields.Item("SiteCodeDisplay")))
  loc_17D74A1:     Proc_6_17_EAAE40(var_B2C, CVar(var_88.Fields.Item("ActiveEpabx")))
  loc_17D74DC:     Proc_6_17_EAAE40(var_B94, CVar(var_88.Fields.Item("PanNo")))
  loc_17D7517:     Proc_6_17_EAAE40(var_BFC, CVar(var_88.Fields.Item("TINNo")))
  loc_17D7552:     Proc_6_17_EAAE40(var_C64, CVar(var_88.Fields.Item("GSTIN")))
  loc_17D7563:     var_C94 = var_99C & "," & var_9F4 & "," & var_A5C & "," & var_AC4 & "," & var_B2C & "," & var_B94 & "," & var_BFC & "," & var_C64 & "," 
  loc_17D758D:     Proc_6_17_EAAE40(var_CCC, CVar(var_88.Fields.Item("StateCode")))
  loc_17D75C8:     Proc_6_17_EAAE40(var_D34, CVar(var_88.Fields.Item("State")))
  loc_17D7603:     Proc_6_17_EAAE40(var_D9C, CVar(var_88.Fields.Item("DivisionCode")))
  loc_17D763E:     Proc_6_17_EAAE40(var_E04, CVar(var_88.Fields.Item("Mobile")))
  loc_17D7679:     Proc_6_17_EAAE40(var_E6C, CVar(var_88.Fields.Item("Email")))
  loc_17D76B4:     Proc_6_17_EAAE40(var_ED4, CVar(var_88.Fields.Item("Legalname")))
  loc_17D76EF:     Proc_6_17_EAAE40(var_F3C, CVar(var_88.Fields.Item("TradeName")))
  loc_17D772A:     Proc_6_17_EAAE40(var_FA4, CVar(var_88.Fields.Item("Comp_Id")))
  loc_17D7732:     var_FB4 = var_C94 & var_CCC & "," & var_D34 & "," & var_D9C & "," & var_E04 & "," & var_E6C & "," & var_ED4 & "," & var_F3C & "," & var_FA4 
  loc_17D7740:     var_90 = CStr(var_FB4 & ")")
  loc_17D78D6:     unk_423F11.Execute var_90, var_E4, -1
  loc_17D78E9:     If (var_AC = "Y") Then
  loc_17D7910:       unk_423F11.Execute "Update Company Set ActiveEpabx='' Where Comp_Code='" & MemVar_1F95128 & "'", var_E4, -1
  loc_17D7922:     End If
  loc_17D7946:     unk_423F11.Execute "Select * From menuHelp Where CompCode='" & MemVar_1F95128 & "'", var_E4, -1
  loc_17D7951:     Set var_B0 = var_138
  loc_17D7975:     If (var_B0.RecordCount > 0) Then
  loc_17D7978:       ' Referenced from: 17D7EF6
  loc_17D7987:       If Not(var_B0.EOF) Then
  loc_17D799C:         var_138 = var_B0.Fields
  loc_17D79AC:         var_E4 = var_138.Item("userName").Value
  loc_17D7A50:         var_100C = Val(CStr(var_B0.Fields.Item("Opt3").Value))
  loc_17D7A86:         var_1014 = Val(CStr(var_B0.Fields.Item("Opt4").Value))
  loc_17D7ABC:         var_101C = Val(CStr(var_B0.Fields.Item("Code").Value))
  loc_17D7AF2:         var_1024 = Val(CStr(var_B0.Fields.Item("Menu_Index").Value))
  loc_17D7B1B:         Proc_6_17_EAAE40(var_33C, CVar(var_B0.Fields.Item("Option")), var_1024, var_101C, var_1014, var_100C)
  loc_17D7BA7:         var_5E0 = var_B0.Fields
  loc_17D7CBA:         var_13C = "INSERT INTO menuHelp (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Param_Str,ShowInList,Flag,OutletCode,Menu_Visible,Pro_Name,Tag,User_Name,ID,Module_Name) " & " VALUES('"
  loc_17D7CFB:         var_1A0 = CVar(var_13C & CStr(var_8A) & "','") & var_E4 & "'," & CVar(Val(CStr(var_B0.Fields.Item("Opt1").Value))) & "," & CVar(Val(CStr(var_B0.Fields.Item("Opt2").Value))) 
  loc_17D7D4B:         var_2E4 = var_1A0 & "," & CVar(var_100C) & "," & CVar(var_1014) & "," & CVar(var_101C) & "," & CVar(var_1024) 
  loc_17D7D6B:         var_3A4 = var_2E4 & "," & var_33C & ",'" & var_B0.Fields.Item("param_str").Value 
  loc_17D7D84:         var_40C = var_3A4 & "','" & var_B0.Fields.Item("ShowInList").Value & "','" 
  loc_17D7DA4:         var_4A4 = var_40C & var_B0.Fields.Item("Flag").Value & "','" & var_5E0.Item("OutletCode").Value & "','" 
  loc_17D7DAB:         var_4DC = var_4A4 & var_B0.Fields.Item("Menu_Visible").Value 
  loc_17D7DDB:         var_5BC = var_4DC & "','" & var_B0.Fields.Item("Pro_Name").Value & "','" & var_B0.Fields.Item("Tag").Value & "','" & var_B0.Fields.Item("USER_NAME").Value 
  loc_17D7E12:         unk_423F11.Execute CStr(var_5BC & "','" & var_B0.Fields.Item("ID").Value & "','" & var_B0.Fields.Item("Module_name").Value & "')"), var_694, -1
  loc_17D7EF1:         var_B0.MoveNext
  loc_17D7EF6:         GoTo loc_17D7978
  loc_17D7EF9:       End If
  loc_17D7EF9:     End If
  loc_17D7F1D:     unk_423F11.Execute "Select * From menuHelp1 Where CompCode='" & MemVar_1F95128 & "'", var_E4, -1
  loc_17D7F28:     Set var_B0 = var_138
  loc_17D7F4C:     If (var_B0.RecordCount > 0) Then
  loc_17D7F4F:       ' Referenced from: 17D830E
  loc_17D7F5E:       If Not(var_B0.EOF) Then
  loc_17D7F73:         var_138 = var_B0.Fields
  loc_17D7F9A:         var_15C = var_B0.Fields
  loc_17D7FBB:         var_FFC = Val(CStr(var_15C.Item("Opt1").Value))
  loc_17D7FE0:         var_190 = var_B0.Fields.Item("Opt2").Value
  loc_17D7FF1:         var_1004 = Val(CStr(var_190))
  loc_17D8027:         var_100C = Val(CStr(var_B0.Fields.Item("Opt3").Value))
  loc_17D805D:         var_1014 = Val(CStr(var_B0.Fields.Item("Opt4").Value))
  loc_17D8093:         var_101C = Val(CStr(var_B0.Fields.Item("Code").Value))
  loc_17D80BC:         Proc_6_17_EAAE40(var_2E4, CVar(var_B0.Fields.Item("menuNAME")), var_101C, var_1014, var_100C, var_1004, var_FFC)
  loc_17D80F4:         var_1024 = Val(CStr(var_B0.Fields.Item("menuINDEX").Value))
  loc_17D8106:         var_4A8 = var_B0.Fields
  loc_17D811D:         Proc_6_17_EAAE40(var_3A4, CVar(var_4A8.Item("MenuCaption")), var_1024, var_138, var_958)
  loc_17D8148:         Proc_6_17_EAAE40(var_40C, CVar(var_B0.Fields.Item("param_str")), var_1004, var_FFC)
  loc_17D8188:         var_13C = "INSERT INTO menuHelp1 (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Param_Str,Flag) " & " VALUES('"
  loc_17D819B:         var_F4 = CVar(var_13C & CStr(var_8A) & "','") 'String
  loc_17D81B5:         var_170 = var_F4 & var_138.Item("userName").Value & "'," & CVar(var_FFC) 
  loc_17D820E:         var_2C4 = var_170 & "," & CVar(var_1004) & "," & CVar(var_100C) & "," & CVar(var_1014) & "," & CVar(var_101C) & "," 
  loc_17D8215:         var_304 = var_2C4 & var_2E4 
  loc_17D8229:         var_34C = var_304 & "," & CVar(var_1024) 
  loc_17D8239:         var_3B4 = var_34C & "," & var_3A4 
  loc_17D8249:         var_41C = var_3B4 & "," & var_40C 
  loc_17D8262:         var_484 = var_41C & ",'" & var_B0.Fields.Item("Flag").Value & "')" 
  loc_17D8270:         unk_423F11.Execute CStr(var_484), var_4A4, -1
  loc_17D8309:         var_B0.MoveNext
  loc_17D830E:         GoTo loc_17D7F4F
  loc_17D8311:       End If
  loc_17D8311:     End If
  loc_17D833E:     var_138 = var_88.Fields
  loc_17D8355:     Proc_6_7_F26918(var_F4, CVar(var_138.Item("Start_Dt")), CVar("Select * From Voucher_Prefix Where Site_Code='" & MemVar_1F95070 & "' and date_From="), var_170, -1)
  loc_17D8366:     var_158 = var_15C & var_F4 & vbNullString 
  loc_17D8374:     unk_423F11.Execute CStr(var_158), var_5E0, var_138
  loc_17D837F:     Set var_B4 = var_15C
  loc_17D839F:     ' Referenced from: 17D84E3
  loc_17D83AE:     If Not(var_B4.EOF) Then
  loc_17D83C0:       var_138 = var_B4.Fields
  loc_17D83D0:       var_E4 = CVar(var_138.Item("V_Type")) 'Address
  loc_17D83D7:       var_F4 = Trim(var_E4)
  loc_17D83E7:       Proc_6_7_F26918(var_158, var_98)
  loc_17D83F7:       Proc_6_7_F26918(var_190, var_A0)
  loc_17D843F:       var_134 = "Insert into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,LogSite_Code) values('" & var_F4 & "'," 
  loc_17D8446:       var_170 = var_134 & var_158 
  loc_17D845F:       var_1B0 = var_170 & "," & var_190 & ",'" 
  loc_17D846F:       var_200 = var_1B0 & Format(var_98, "yyyy") & "',0,'" 
  loc_17D8495:       var_29C = var_200 & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_17D84A3:       unk_423F11.Execute CStr(var_29C), var_2C4, -1
  loc_17D84DE:       var_B4.MoveNext
  loc_17D84E3:       GoTo loc_17D839F
  loc_17D84E6:     End If
  loc_17D850A:     unk_423F11.Execute "Select * From UserPermission Where CompCode='" & MemVar_1F95128 & "'", var_E4, -1
  loc_17D8515:     Set var_B4 = var_138
  loc_17D8525:     ' Referenced from: 17D87FA
  loc_17D8534:     If Not(var_B4.EOF) Then
  loc_17D8550:       var_140 = "Insert into UserPermission (CompCode,UserName,LogSite_Code,POSDiscountAllowUpto,CancelGuestBill,ChangeRoomDtl,DeleteGuestCharges,Site_Code,POSSettlementYN,EditItemInKOT,ChangeGuestCharges) values('" & CStr(var_8A)
  loc_17D8557:       var_114 = CVar(var_140 & "',") 'String
  loc_17D8569:       var_138 = var_B4.Fields
  loc_17D8580:       Proc_6_17_EAAE40(var_F4, CVar(var_138.Item("userName")), var_114, var_4DC, -1, var_4A8)
  loc_17D8588:       var_134 = var_138 & var_F4 
  loc_17D85A0:       Proc_6_17_EAAE40(var_170, MemVar_1F95078, var_134 & ",", var_15C)
  loc_17D85DB:       Proc_6_39_E7D3A0(var_1B0, CVar(var_B4.Fields.Item("POSDiscountAllowUpto")), 1 & var_170 & ",")
  loc_17D8616:       Proc_6_17_EAAE40(var_200, CVar(var_B4.Fields.Item("CancelGuestBill")), 1 & var_1B0 & ",")
  loc_17D8651:       Proc_6_17_EAAE40(var_29C, CVar(var_B4.Fields.Item("ChangeRoomDtl")))
  loc_17D868C:       Proc_6_17_EAAE40(var_304, CVar(var_B4.Fields.Item("DeleteGuestCharges")))
  loc_17D86AC:       Proc_6_17_EAAE40(var_34C, MemVar_1F95078)
  loc_17D86E7:       Proc_6_17_EAAE40(var_3B4, CVar(var_B4.Fields.Item("POSSettlementYN")))
  loc_17D8722:       Proc_6_17_EAAE40(var_41C, CVar(var_B4.Fields.Item("EditItemInKOT")))
  loc_17D875D:       Proc_6_17_EAAE40(var_484, CVar(var_B4.Fields.Item("ChangeGuestCharges")))
  loc_17D876E:       var_4CC = var_138 & var_200 & "," & var_29C & "," & var_304 & "," & var_34C & "," & var_3B4 & "," & var_41C & "," & var_484 & ")" 
  loc_17D877C:       unk_423F11.Execute CStr(var_4CC), var_138, 
  loc_17D87F5:       var_B4.MoveNext
  loc_17D87FA:       GoTo loc_17D8525
  loc_17D87FD:     End If
  loc_17D881E:     MsgBox("Year End Updation Complete ", &H40, "Validation", var_114, var_134)
  loc_17D882E:   End If
  loc_17D883B:   Me.Global.Unload Me
  loc_17D8848:   Set var_88 = Nothing
  loc_17D8850:   Set var_B0 = Nothing
  loc_17D8858:   Set var_B4 = Nothing
  loc_17D885B: End If
  loc_17D885B: Exit Sub
  loc_17D885C: Proc_6_60_E63754()
  loc_17D8861: Exit Sub
End Sub
