VERSION 5.00
Begin VB.Form HallAdvanceDepDialog
  Caption = "Advance Recived"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 13890
  ClientHeight = 9195
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrTxnNo
    Left = 255
    Top = 7200
    Width = 5025
    Height = 285
    Visible = 0   'False
    TabIndex = 65
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1140
      Top = 0
      Width = 3825
      Height = 285
      TabIndex = 19
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Txn. No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 30
      Width = 795
      Height = 240
      TabIndex = 66
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 6930
    Top = 1410
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 63
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 64
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 1035
    Top = 1140
    Width = 1110
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "HallAdvanceDepDialog"

Private global_116 As Long
Private global_176 As Variant
Private global_112 As Long
Private global_140 As Double
Private global_108 As Integer
Private global_168 As Integer

Private Sub DGRoom_UnknownEvent_9 'F4A014
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F49F0B: (False).Visible = 
  loc_F49F2A: If (Me.RecordCount > 0) Then
  loc_F49F69:   Set var_B4 = Me.Txt
  loc_F49F6F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(6), var_B8)
  loc_F49F77:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F49FAA:   var_B0 = Me.Fields.Item("Code")
  loc_F49FC9:   Set var_B4 = Me.Txt
  loc_F49FCF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(6), var_B8)
  loc_F49FD7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F49FED: End If
  loc_F49FF8: Set var_A8 = Me.Txt
  loc_F49FFE: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(6))
  loc_F4A006: var_B0.SetFocus
  loc_F4A012: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA1F50
  'Data Table: 5502C4
  Dim var_A8 As Variant
  loc_EA1ED0: Set var_88 = ()
  loc_EA1EFA: var_A8 = CVar(CInt(Fix(((Y - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1F02: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA1F22: Set var_BC = ()
  loc_EA1F3E: Proc_6_138_106E830((Txt.DispID_1B), global_76)
  loc_EA1F4C: Exit Sub
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F47AF4
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F479EB: (False).Visible = 
  loc_F47A0A: If (Me.RecordCount > 0) Then
  loc_F47A49:   Set var_B4 = Me.Txt
  loc_F47A4F:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F47A57:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F47A8A:   var_B0 = Me.Fields.Item("Code")
  loc_F47AA9:   Set var_B4 = Me.Txt
  loc_F47AAF:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F47AB7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F47ACD: End If
  loc_F47AD8: Set var_A8 = Me.Txt
  loc_F47ADE: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4))
  loc_F47AE6: var_B0.SetFocus
  loc_F47AF2: Exit Sub
End Sub

Private Sub Form_Load() '132FD5C
  'Data Table: 5502C4
  Dim var_94 As Variant
  Dim var_B8 As Long
  Dim var_CC As Variant
  Dim var_BC As String
  Dim var_D0 As String
  Dim unk_5502DC As Connection15
  Dim var_90 As Recordset15
  Dim var_DC As String
  Dim var_E8 As String
  Dim var_F0 As Long
  loc_132F5D0: On Error Goto loc_132FD15
  loc_132F5DA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_132F5ED: (CLng(MemVar_1F951B4)).BackColor = 
  loc_132F603: (CLng(MemVar_1F951B4)).BackColor = 
  loc_132F619: Me.FrTxnNo.BackColor = CLng(MemVar_1F951B4)
  loc_132F62F: (CLng(MemVar_1F951B4)).BackColor = 
  loc_132F645: (CLng(MemVar_1F951B4)).BackColor = 
  loc_132F65B: (CLng(MemVar_1F951B4)).BackColor = 
  loc_132F671: (CLng(MemVar_1F951B4)).BackColor = 
  loc_132F687: (CLng(MemVar_1F951B4)).BackColor = 
  loc_132F69C: Set var_94 = (CVar(CLng(MemVar_1F951B8)))
  loc_132F6B2: Call 0.Method_MeC (CDbl(9200))
  loc_132F6BF: Call 0.Method_Me4 (CDbl(7600))
  loc_132F6CC: global_116 = 6
  loc_132F6D5: var_B8 = global_116
  loc_132F6E1: If (var_B8 = 6) Then
  loc_132F6E4: End If
  loc_132F6F4: var_B8("AEDP").Tag = global_116
  loc_132F702: Call 0.Method_arg_50 (var_BC)
  loc_132F70A: var_CC = CVar(var_BC) 'String
  loc_132F734: global_124 = HallAdvanceDepDialog.AdvType
  loc_132F75F: unk_5502DC.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_CC, -1
  loc_132F789: var_94 = FrTxnNo.DispID_12(var_CC).Fields
  loc_132F799: var_CC = CVar(var_94.Item("CreditCardInfoMandatory")) 'Address
  loc_132F7B3: If (Proc_6_38_E69628(var_CC, var_94) = "Y") Then
  loc_132F7BC:   global_172 = "Y"
  loc_132F7C0: End If
  loc_132F7D4: var_BC = "SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F95078
  loc_132F7E4: unk_5502DC.Execute var_BC & "') AND DP.restcode='BANQ' ORDER BY NAME ", var_CC, -1
  loc_132F813: CVarUnk
  loc_132F818: VerifyVarObj
  loc_132F824: LateIdStAd
  loc_132F856: unk_5502DC.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' or LogSite_Code='HO') ORDER BY Name", var_CC, -1
  loc_132F885: CVarUnk
  loc_132F88A: VerifyVarObj
  loc_132F896: LateIdStAd
  loc_132F8B8: var_BC = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LogSite_Code='" & MemVar_1F95078
  loc_132F8CD: var_DC = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' and RoomOcc.LogSite_Code='" & MemVar_1F95078 & "')  and T.Type in ('HL') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_132F8D6: unk_5502DC.Execute var_DC, var_CC, -1
  loc_132F909: CVarUnk
  loc_132F90E: VerifyVarObj
  loc_132F91A: LateIdStAd
  loc_132F943: var_D0 = "Select SubCode as Code,Name From SubGroup where LogSite_Code in ('HO','" & MemVar_1F95078 & "') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_132F94C: unk_5502DC.Execute var_D0, var_CC, -1
  loc_132F97B: CVarUnk
  loc_132F980: VerifyVarObj
  loc_132F98C: LateIdStAd
  loc_132F9AE: var_BC = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName,LogSite_Code,Site_Code FROM HallBook WHERE Docid Not In (Select Distinct BookDocId From HallSale1 Where LogSite_Code='" & MemVar_1F95078
  loc_132F9DE: var_E8 = var_BC & "' And RestCode='" & global_52 & "') And LogSite_Code='" & MemVar_1F95078 & "' and HallBook.RestCode='" & global_52
  loc_132F9EE: unk_5502DC.Execute var_E8 & "'", var_CC, -1
  loc_132FA29: CVarUnk
  loc_132FA2E: VerifyVarObj
  loc_132FA3A: LateIdStAd
  loc_132FA6C: unk_5502DC.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_CC, -1
  loc_132FA9B: CVarUnk
  loc_132FAA0: VerifyVarObj
  loc_132FAA6: Set var_94 = var_94(var_94(var_94(var_94(var_94(var_94(var_94))))))
  loc_132FAAC: LateIdStAd
  loc_132FAC6: Call 0.Method_arg_38 (MemVar_1F953B0, var_94, var_94, var_94)
  loc_132FAD7: Call 0.Method_arg_3C (MemVar_1F950EC, var_94, var_94)
  loc_132FAE8: Call 0.Method_arg_54 (MemVar_1F9506C, var_94)
  loc_132FAF9: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_132FB0A: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_132FB1B: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_132FB2C: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_132FB3D: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_132FB4E: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_132FB5F: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_132FB79: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_132FB87: Set var_94 = MemVar_1F95044
  loc_132FB96: Call 0.Method_Form_Load8 (var_94)
  loc_132FBAC: Me.Recordset20.Clone
  loc_132FBC6: Call 0.Method_arg_50 (var_94, -1)
  loc_132FBD8: var_F0 = global_112
  loc_132FBE4: If (var_F0 = 1) Then
  loc_132FC05:   var_D0 = "SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH Where RestCode='" & global_52 & "'  And LogSite_Code='"
  loc_132FC35:   Me.Connection15.Execute var_D0 & MemVar_1F95078 & "' And ContraDocId='" & HallAdvanceDepDialog.pDocId & "' AND Vtype In ('AD','AR')", var_CC, -1
  loc_132FC46:   Set global_56 = var_94
  loc_132FC68: Else
  loc_132FC86:   var_D0 = "SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH Where RestCode='" & global_52 & "'  And LogSite_Code='"
  loc_132FC9D:   unk_5502DC.Execute var_D0 & MemVar_1F95078 & "' AND Vtype In ('AD','AR')", var_CC, -1
  loc_132FCAE:   Set global_56 = var_94
  loc_132FCC7: End If
  loc_132FCD3: Set var_94 = Me
  loc_132FCDC: var_BC = "INI"
  loc_132FCEA: Call Proc_125_67_F672D4(Proc_5_1_100EC1C(var_BC, var_94, global_56, var_94), var_94, var_F0)
  loc_132FCF5: Call Proc_125_69_11E2D90(var_94)
  loc_132FCFA: Call Proc_125_75_11D7C14(FrTxnNo.DispID_68030007)
  loc_132FCFF: Call Proc_125_70_156BDD8()
  loc_132FD09: Set var_8C = Nothing
  loc_132FD11: Set var_90 = Nothing
  loc_132FD14: Exit Sub
  loc_132FD15: ' Referenced from: 132F5D0
  loc_132FD1D: Set var_94 = Err()
  loc_132FD23: Call 0.Method_arg_2C (var_BC)
  loc_132FD44: MsgBox(CVar(var_BC), &H40, "Information", var_114, var_134)
  loc_132FD57: Exit Sub
  loc_132FD58: Exit Sub
End Sub

Private Sub Form_Resize() 'ED47E8
  'Data Table: 5502C4
  Dim var_B0 As Variant
  Dim var_B4 As Label
  loc_ED4746: Call 0.Method_arg_50 (var_88)
  loc_ED4758: (var_88).Caption = 
  loc_ED4771: (CDbl(0)).Left = 
  loc_ED4783: var_B0 = ().Height
  loc_ED47AA: Set var_B4 = ((CDbl((var_B0).Top) + CDbl(var_B0)))
  loc_ED47B0: var_B4.Top = 
  loc_ED47CB: Call 0.Method_arg_100 (var_B8)
  loc_ED47DD: (var_B8).Width = 
  loc_ED47E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E92D54
  'Data Table: 5502C4
  loc_E92CDF: Set global_72 = Nothing
  loc_E92CF1: Set global_56 = Nothing
  loc_E92D03: Set global_60 = Nothing
  loc_E92D15: Set global_68 = Nothing
  loc_E92D27: Set global_84 = Nothing
  loc_E92D39: Set global_88 = Nothing
  loc_E92D4B: Set global_64 = Nothing
  loc_E92D52: Exit Sub
End Sub

Private Sub Form_Activate() '12B5880
  'Data Table: 5502C4
  Dim var_90 As Long
  Dim var_94 As Long
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  Dim var_88 As Variant
  Dim var_D8 As Long
  Dim var_DC As Long
  Dim var_E0 As String
  Dim var_E8 As String
  Dim unk_5502DC As Connection15
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  Dim var_100 As Variant
  Dim var_E4 As String
  loc_12B5260: Set var_88 = MemVar_1F95248.Picture3
  loc_12B5271: Call 0.Method_arg_74 (MDIForm1.Picture3.Left)
  loc_12B5281: Call 0.Method_arg_7C (CDbl(1450))
  loc_12B5291: var_90 = OpenMode
  loc_12B529D: If (var_90 = 1) Then
  loc_12B52B7:   If (OpenType = 6) Then
  loc_12B52C8:     Set var_88 = Me.Txt
  loc_12B52CE:     Call 0.Method_Form_Activate0 (CInt(7), var_98, var_9A)
  loc_12B52D6:     var_94 = var_98.Enabled
  loc_12B52E8:     If (var_9A = &HFF) Then
  loc_12B52F6:       Set var_88 = Me.Txt
  loc_12B52FC:       Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B5304:       var_98.SetFocus
  loc_12B5310:     End If
  loc_12B531E:     Set var_88 = Me.Txt
  loc_12B5324:     Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B532C:     var_8C = var_98.Left
  loc_12B533D:     Set var_C0 = var_90(CVar(var_8C))
  loc_12B5343:     var_C0.Left = 
  loc_12B535F:     Set var_98 = Me.Txt
  loc_12B5365:     Call 0.Method_Form_Activate0 (CInt(7), var_C0)
  loc_12B5380:     Set var_C8 = Me.Txt
  loc_12B5386:     Call 0.Method_Form_Activate0 (CInt(7), var_CC)
  loc_12B539A:     Set var_88 = (var_8C)
  loc_12B53A0:      = var_88.Top
  loc_12B53B4:     var_AC = CVar((((var_8C + var_C0.Top) + var_CC.Height) + CDbl(&HF))) 'Single
  loc_12B53C3:     (CVar(var_8C)).Top = 
  loc_12B53D7:   End If
  loc_12B53DA: Else
  loc_12B53E3:   If (var_90 = 2) Then
  loc_12B53F1:     var_D8 = OpenType
  loc_12B53FD:     If (var_D8 = 6) Then
  loc_12B5400:     End If
  loc_12B5400:   End If
  loc_12B5400: End If
  loc_12B5406: var_DC = global_112
  loc_12B5412: If (var_DC = 1) Then
  loc_12B541B:   Call 0.Method_arg_1C0 (var_E0, var_DC)
  loc_12B5430:   If (CDbl(Val(var_E0)) > CDbl(0)) Then
  loc_12B5451:     var_E8 = "SELECT Distinct Docid as SearchCode,PostDocId,ContraDocId FROM PayChargeH Where RestCode='" & global_52 & "' And Vtype In ('AD','AR') AND ContraDocID='"
  loc_12B5473:     unk_5502DC.Execute var_E8 & HallAdvanceDepDialog.pDocId & "'", var_100, -1
  loc_12B54B6:     If (Me.RecordCount <= 0) Then
  loc_12B54DC:       Call Proc_125_67_F672D4(Proc_5_1_100EC1C("ADD", Me, Me), Me)
  loc_12B54E7:       Call Proc_125_68_F682EC(var_D8)
  loc_12B54F9:       Set var_88 = Me.Txt
  loc_12B54FF:       Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B5507:       var_98.Enabled = True
  loc_12B551E:       Set var_88 = var_98(1)
  loc_12B5524:       Call 0.Method_Form_Activate0 (0)
  loc_12B552C:       var_98.Visible = 
  loc_12B554B:       Call 0.Method_Form_Activate0 (CInt(5), var_98)
  loc_12B5553:       var_98.Visible = False
  loc_12B5576:       var_E0 = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_12B559F:       unk_5502DC.Execute var_E0 & "' AND HallbOOK.Docid='" & HallAdvanceDepDialog.pDocId & "'", var_100, -1
  loc_12B55B0:       Set global_88 = Me.Txt
  loc_12B55E2:       If (Me.RecordCount <> 0) Then
  loc_12B55EB:         Call Proc_125_74_1159C64(MemVar_1F95044, var_E0)
  loc_12B562F:         Set var_C0 = Me.Txt
  loc_12B5635:         Call 0.Method_Form_Activate0 (CInt(0), var_C8)
  loc_12B563D:         var_C8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_12B568F:         Set var_C0 = Me.Txt
  loc_12B5695:         Call 0.Method_Form_Activate0 (CInt(4), var_C8)
  loc_12B569D:         var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12B56EF:         Set var_C0 = Me.Txt
  loc_12B56F5:         Call 0.Method_Form_Activate0 (CInt(4), var_C8)
  loc_12B56FD:         var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12B572D:         var_98 = Me.Fields.Item("PartyName")
  loc_12B5735:         var_100 = CVar(var_98) 'Address
  loc_12B574C:         Set var_C0 = Me.Txt
  loc_12B5752:         Call 0.Method_Form_Activate0 (CInt(6), var_C8)
  loc_12B575A:         var_C8.Text = Proc_6_38_E69628(var_100)
  loc_12B5779:         Set var_88 = Me.Txt
  loc_12B577F:         Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B5787:         var_98.SetFocus
  loc_12B5793:       End If
  loc_12B5796:     Else
  loc_12B5796:       Call Proc_125_70_156BDD8(var_88)
  loc_12B579B:     End If
  loc_12B57A5:     Call 0.Method_arg_1C4 (CStr(0))
  loc_12B57B0:   Else
  loc_12B57CE:     var_E8 = "SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH Where RestCode='" & global_52 & "'  And Vtype In ('AD','AR') AND ContraDocID='"
  loc_12B57F0:     unk_5502DC.Execute var_E8 & HallAdvanceDepDialog.pDocId & "'", var_100, -1
  loc_12B5801:     Set global_56 = var_88
  loc_12B581C:   End If
  loc_12B581F: Else
  loc_12B583D:   var_E4 = "SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH Where RestCode='" & global_52 & "'  And LogSite_Code='"
  loc_12B5854:   unk_5502DC.Execute var_E4 & MemVar_1F95078 & "' AND Vtype In ('AD','AR')", var_100, -1
  loc_12B5865:   Set global_56 = var_88
  loc_12B587E: End If
  loc_12B587E: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F03DD8
  'Data Table: 5502C4
  Dim var_B4 As TextBox
  loc_F03D1C: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F03D50:   Set var_B4 = (( And (CBool(((CBool(().Visible) = 0)).Visible) = 0)))
  loc_F03D75:   If ( And (CBool(var_B4.Visible) = 0)) Then
  loc_F03D85:     Me.var_B4.Unload Me
  loc_F03D8D:     Exit Sub
  loc_F03D8E:   End If
  loc_F03D8E: End If
  loc_F03DAC: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_112 = 1)) Then
  loc_F03DAF:   Call Proc_125_78_14CB2E0()
  loc_F03DB4:   Call TopCtrl1_UnknownEvent_16()
  loc_F03DB9:   Exit Sub
  loc_F03DBA: End If
  loc_F03DCE: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_F03DD6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0B918
  'Data Table: 5502C4
  loc_E0B904: Call Proc_125_80_13D284C()
  loc_E0B90F: Call Proc_125_77_111BB38(global_156)
  loc_E0B914: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFC210
  'Data Table: 5502C4
  loc_DFC20C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E452F0
  'Data Table: 5502C4
  loc_E452C6: If (KeyCode = 2) Then
  loc_E452E1:   Call 0.Method_arg_2BC (var_A8(var_98), var_B8)
  loc_E452E9:   Call FGrid_UnknownEvent_9()
  loc_E452EE: End If
  loc_E452EE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10A0F2C
  'Data Table: 5502C4
  Dim var_88 As String
  Dim var_D4 As Variant
  Dim var_D8 As Long
  Dim unk_5502DC As Connection15
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F4 As TextBox
  Dim var_C0 As Variant
  loc_10A0C7C: On Error Goto loc_10A0F24
  loc_10A0CA2: Call Proc_125_67_F672D4(Proc_5_1_100EC1C("ADD", Me))
  loc_10A0CAD: Call Proc_125_68_F682EC(global_56)
  loc_10A0CC1: var_C0 = "dd/MMM/yyyy"
  loc_10A0CDA: var_88 = CStr(Format(MemVar_1F950EC, var_C0))
  loc_10A0CEF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, var_88)
  loc_10A0CF7: var_D4.Text = 1
  loc_10A0D13: Call Proc_125_74_1159C64(MemVar_1F95044, var_88)
  loc_10A0D21: var_D8 = global_112
  loc_10A0D2D: If (var_D8 = 1) Then
  loc_10A0D30:   Call Fgrid1_UnknownEvent_9()
  loc_10A0D4C:   var_88 = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_10A0D75:   unk_5502DC.Execute var_88 & "' AND HallbOOK.Docid='" & HallAdvanceDepDialog.pDocId & "'", var_C0, -1
  loc_10A0D86:   Set global_88 = Me.Txt
  loc_10A0DB8:   If (Me.RecordCount <> 0) Then
  loc_10A0DD0:     var_8C = Me.Fields
  loc_10A0DF7:     Set var_F0 = Me.Txt
  loc_10A0DFD:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_F4, CStr(var_8C.Item("Name").Value))
  loc_10A0E05:     var_F4.Text = var_8C
  loc_10A0E57:     Set var_F0 = Me.Txt
  loc_10A0E5D:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_F4, CStr(Me.Fields.Item("Code").Value))
  loc_10A0E65:     var_F4.Tag = var_D8
  loc_10A0E95:     var_D4 = Me.Fields.Item("PartyName")
  loc_10A0EB4:     Set var_F0 = Me.Txt
  loc_10A0EBA:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_F4)
  loc_10A0EC2:     var_F4.Text = Proc_6_38_E69628(CVar(var_D4))
  loc_10A0ED6:   End If
  loc_10A0EE1:   Set var_8C = Me.Txt
  loc_10A0EE7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_D4)
  loc_10A0EEF:   var_D4.SetFocus
  loc_10A0EFE: Else
  loc_10A0F09:   Set var_8C = Me.Txt
  loc_10A0F0F:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_10A0F17:   var_D4.SetFocus
  loc_10A0F23: End If
  loc_10A0F23: Exit Sub
  loc_10A0F24: ' Referenced from: 10A0C7C
  loc_10A0F24: Proc_6_60_E63754(1)
  loc_10A0F29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC453C
  'Data Table: 5502C4
  loc_EC44A4: On Error Goto loc_EC4534
  loc_EC44DE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC44ED:   Set var_110 = Me
  loc_EC4504:   Call Proc_125_67_F672D4(Proc_5_1_100EC1C("INI", var_110))
  loc_EC450F:   Call Proc_125_72_FE3574(global_56)
  loc_EC4514:   Call Proc_125_70_156BDD8()
  loc_EC451C: Else
  loc_EC4522:   Call 0.Method_arg_1E8 (var_110)
  loc_EC452A:   Call var_110.SetFocus
  loc_EC4533: End If
  loc_EC4533: Exit Sub
  loc_EC4534: ' Referenced from: EC44A4
  loc_EC4534: Proc_6_60_E63754()
  loc_EC4539: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1309DB8
  'Data Table: 5502C4
  Dim var_9C As Variant
  Dim unk_5502DC As Connection15
  Dim var_D4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_A0 As String
  Dim var_D0 As Variant
  Dim var_14C As Variant
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_1B0 As Integer
  Dim var_15C As Variant
  loc_13096D8: On Error Goto loc_1309D67
  loc_1309708: Set var_98 = Me.Txt
  loc_130970E: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_9C, var_A0, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_D0, -1)
  loc_1309740: unk_5502DC.Execute var_D8 & var_A0 & "' And RestCode='" & global_52 & "'", 0, var_EC
  loc_1309750:  = var_D8.Item()
  loc_1309758:  = var_EC.Value
  loc_1309789: If (var_9C.Tag.Fields > 0) Then
  loc_13097B3:   MsgBox(CVar("Can not delete advance." & vbCrLf & "Bill Generated!"), &H10, "Advance...", var_11C, var_12C)
  loc_13097C6:   Exit Sub
  loc_13097C7: End If
  loc_13097CD: var_14C = 0
  loc_130981E: var_11C = "SELECT count(*) FROM Ledger WHERE DocId='" & Me.Fields.Item("PostDocId").Value & "' AND V_Type='BREC'" 
  loc_130982C: unk_5502DC.Execute CStr(var_11C), var_12C, -1
  loc_1309834: var_D4 = var_D4.Fields
  loc_130983C: var_14C = var_D8.Item(var_D8)
  loc_1309844: var_EC = var_EC.Value
  loc_1309871: If (var_15C > 0) Then
  loc_130989B:   MsgBox(CVar("Recrod can not delete." & vbCrLf & "Related entry exist!"), &H10, "Delete...", var_11C, var_12C)
  loc_13098AE:   Exit Sub
  loc_13098AF: End If
  loc_13098E6: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_12C) = 6) Then
  loc_13098F2:   unk_5502DC.BeginTrans var_180
  loc_1309900:   var_D0 = Me.Bookmark
  loc_1309908:   var_94 = var_D0 'Variant
  loc_1309929:   Proc_6_7_F26918(var_D0, MemVar_1F950EC, "UPDATE HallBook SET Advance=0,U_EntDt=", var_210)
  loc_1309931:   var_FC = -1 & var_D0 
  loc_1309944:   var_1B0 = 0
  loc_1309984:   var_12C = Me.Fields.Item("SearchCode").Value
  loc_13099A3:   unk_5502DC.Execute CStr("SELECT ContraDocId FROM PayChargeH Where VType='AD' AND Docid='" & var_12C & "'"), var_1A0, -1
  loc_13099AB:   var_D4 = var_D4.Fields
  loc_13099B3:   var_1B0 = var_D8.Item(var_D8)
  loc_13099BB:   var_EC = var_EC.Value
  loc_13099DA:   unk_5502DC.Execute CStr(var_1C0 & var_1C0 & "'"), "Confirmation" & " WHERE Docid='", var_214
  loc_1309A64:   unk_5502DC.Execute CStr("Delete From PayChargeH Where VType='AD' AND Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_1309AAF:   var_23C = 0
  loc_1309AC2:   var_234 = 0
  loc_1309ACD:   var_230 = 0
  loc_1309AE0:   var_228 = 0
  loc_1309AEB:   var_224 = 0
  loc_1309AFE:   var_21C = 0
  loc_1309B47:   Proc_154_5_10E3BD4(MemVar_1F95044, "PayChargeH", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1309BB7:   var_11C = "Delete From lEDGER Where Docid='" & Me.Fields.Item("PostDocId").Value & "'" 
  loc_1309BC5:   unk_5502DC.Execute CStr(var_11C), var_12C, -1
  loc_1309C10:   var_23C = 0
  loc_1309C23:   var_234 = 0
  loc_1309C2E:   var_230 = 0
  loc_1309C41:   var_228 = 0
  loc_1309C4C:   var_224 = 0
  loc_1309C5F:   var_21C = 0
  loc_1309C9F:   var_A0 = "Ledger"
  loc_1309CA8:   Proc_154_5_10E3BD4(MemVar_1F95044, var_A0, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1309CD6:   unk_5502DC.CommitTrans
  loc_1309CE6:   Me.Requery -1
  loc_1309D06:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1309D13:     Me.Bookmark = var_94
  loc_1309D1B:   Else
  loc_1309D2F:     If (Me.EOF = 0) Then
  loc_1309D38:       Me.MoveLast
  loc_1309D3D:     End If
  loc_1309D3D:   End If
  loc_1309D3D:   Call Proc_125_70_156BDD8(var_21C, 0, var_224, var_228)
  loc_1309D5E:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_1309D66: End If
  loc_1309D66: Exit Sub
  loc_1309D67: ' Referenced from: 13096D8
  loc_1309D6D: unk_5502DC.RollbackTrans
  loc_1309D7A: Set var_98 = Err()
  loc_1309D80: Call 0.Method_arg_2C (var_A0, 0, var_230)
  loc_1309DA1: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_11C, var_12C)
  loc_1309DB4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCCB58
  'Data Table: 5502C4
  Dim var_8C As TextBox
  Dim unk_5502DC As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_90 As String
  Dim var_C0 As Variant
  loc_FCC9C0: On Error Goto loc_FCCB51
  loc_FCC9F0: Set var_88 = Me.Txt
  loc_FCC9F6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C, var_90, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_C0, -1)
  loc_FCCA28: unk_5502DC.Execute var_C8 & var_90 & "' And RestCode='" & global_52 & "'", 0, var_DC
  loc_FCCA38:  = var_C8.Item()
  loc_FCCA40:  = var_DC.Value
  loc_FCCA71: If (var_8C.Tag.Fields > 0) Then
  loc_FCCA9B:   MsgBox(CVar("Can not modify advance." & vbCrLf & "Bill Generated!"), &H10, "Advance...", var_10C, var_11C)
  loc_FCCAAE:   Exit Sub
  loc_FCCAAF: End If
  loc_FCCAD2: Call Proc_125_67_F672D4(Proc_5_1_100EC1C("EDIT", Me))
  loc_FCCAEA: Set var_88 = Me.Txt
  loc_FCCAF0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C)
  loc_FCCAF8: var_8C.Enabled = False
  loc_FCCB11: Set var_88 = Me.Txt
  loc_FCCB17: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C)
  loc_FCCB1F: var_8C.Enabled = False
  loc_FCCB36: Set var_88 = Me.Txt
  loc_FCCB3C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_8C)
  loc_FCCB44: var_8C.SetFocus
  loc_FCCB50: Exit Sub
  loc_FCCB51: ' Referenced from: FCC9C0
  loc_FCCB51: Proc_6_60_E63754(global_56)
  loc_FCCB56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17A68
  'Data Table: 5502C4
  loc_E17A5D: Me.Global.Unload Me
  loc_E17A65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F91B28
  'Data Table: 5502C4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_110 As String
  Dim MemVar_1F950E4 As String
  loc_F919D4: On Error Goto loc_F91AC0
  loc_F919E0: var_88 = Me.RecordCount
  loc_F919EE: If (var_88 <= 0) Then
  loc_F919F7:   var_B8 = "Information"
  loc_F91A12:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F91A22:   Exit Sub
  loc_F91A23: End If
  loc_F91A35: If (global_112 = 1) Then
  loc_F91A42:   var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,Case When AmtCr<>0 Then AmtCr Else AmtDr End As Amount FROM PayChargeH Where IsNull(ContraDocId,'')<>'' And RestCode='" & global_52
  loc_F91A62:   MemVar_1F950E4 = var_110 & "'  And Vtype In ('AD','AR') AND ContraDocID='" & HallAdvanceDepDialog.pDocId & "'"
  loc_F91A74: Else
  loc_F91A7E:   var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,Case When AmtCr<>0 Then AmtCr Else AmtDr End As Amount FROM PayChargeH Where IsNull(ContraDocId,'')<>'' And RestCode='" & global_52
  loc_F91A85:   MemVar_1F950E4 = var_110 & "'  And Vtype In ('AD','AR')"
  loc_F91A8C: End If
  loc_F91A92: MemVar_1F95120 = Me
  loc_F91A99: var_110 = "800,1000,4000,1000,1000"
  loc_F91A9F: Proc_6_126_F1C850(var_110, MemVar_1F950E4)
  loc_F91ABA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F91ABF: Exit Sub
  loc_F91AC0: ' Referenced from: F919D4
  loc_F91AC8: Set var_120 = Err()
  loc_F91ACE: Call 0.Method_arg_1C (var_88, MemVar_1F950E4)
  loc_F91ADF: If (var_88 <> 0) Then
  loc_F91AEA:   Set var_120 = Err()
  loc_F91AF0:   Call 0.Method_arg_2C (var_110)
  loc_F91B11:   MsgBox(CVar(var_110), &H40, "Validation", var_E8, var_108)
  loc_F91B24: End If
  loc_F91B24: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32168
  'Data Table: 5502C4
  loc_E32158: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32160: Call Proc_125_70_156BDD8(global_56)
  loc_E32165: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39CC8
  'Data Table: 5502C4
  loc_E39CB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39CC0: Call Proc_125_70_156BDD8(global_56)
  loc_E39CC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39C68
  'Data Table: 5502C4
  loc_E39C58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39C60: Call Proc_125_70_156BDD8(global_56)
  loc_E39C65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32108
  'Data Table: 5502C4
  loc_E320F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32100: Call Proc_125_70_156BDD8(global_56)
  loc_E32105: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E7FF60
  'Data Table: 5502C4
  Dim var_8C As TextBox
  loc_E7FF16: Set var_88 = Me.Txt
  loc_E7FF1C: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_8C)
  loc_E7FF32: var_9C = "Hall Booking"
  loc_E7FF48: Call Proc_125_71_143B4F4(var_8C.Text, "W")
  loc_E7FF5D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E82DB8
  'Data Table: 5502C4
  Dim Me As Recordset15
  loc_E82D4F: Me.Requery -1
  loc_E82D5F: Me.Requery -1
  loc_E82D6F: Me.Requery -1
  loc_E82D7F: Me.Requery -1
  loc_E82D8F: Me.Requery -1
  loc_E82D9F: Me.Requery -1
  loc_E82DAF: Me.Requery -1
  loc_E82DB4: Exit Sub
  loc_E82DB5: Assert
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '199FE7C
  'Data Table: 5502C4
  Dim var_DC As Variant
  Dim var_124 As String
  Dim unk_5502DC As Connection15
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_170 As String
  Dim var_168 As TextBox
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_154 As Variant
  Dim var_180 As String
  Dim var_1A0 As Double
  Dim var_CC As Double
  Dim var_1A4 As Long
  Dim var_16C As String
  Dim var_1F8 As String
  Dim var_134 As Variant
  Dim var_22C As Variant
  Dim var_C6C As Double
  Dim var_65C As Variant
  Dim var_C74 As Double
  Dim var_BB4 As TextBox
  Dim var_200 As String
  Dim var_20C As String
  Dim var_210 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_190 As Variant
  Dim var_24C As Variant
  Dim var_25C As Variant
  Dim var_2AC As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_36C As Variant
  Dim var_37C As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_44C As Variant
  Dim var_46C As Variant
  Dim var_4FC As Variant
  Dim var_604 As Variant
  Dim var_67C As Variant
  Dim var_8FC As Variant
  Dim var_B8C As Variant
  Dim var_17C As TextBox
  Dim var_23C As Variant
  Dim var_C98 As Double
  Dim var_164 As Variant
  Dim var_98 As Recordset15
  Dim var_110 As Variant
  Dim var_2CC As Variant
  Dim var_35C As Variant
  Dim var_4BC As Variant
  Dim var_54C As Variant
  Dim var_66C As Variant
  Dim var_C4 As Double
  Dim var_26C As Variant
  Dim Me As Recordset15
  loc_199D0C0: On Error Goto loc_199FDCA
  loc_199D0D9: Set var_110 = 1(1)
  loc_199D0EA: var_124 = CStr(Txt.DispID_41)
  loc_199D0FB: If (var_124 = vbNullString) Then
  loc_199D109:   var_134 = "Save Data"
  loc_199D11F:   MsgBox("Please Fill Payment Details Before Saving..", &H40, var_134, var_144, var_154)
  loc_199D12F:   Exit Sub
  loc_199D130: End If
  loc_199D134: var_86 = CByte(0) 'Byte
  loc_199D141: unk_5502DC.BeginTrans var_158
  loc_199D14A: var_86 = CByte(1) 'Byte
  loc_199D16C: Set var_110 = Me.Txt
  loc_199D172: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayChargeH Where Docid='")
  loc_199D17A: var_190 = var_15C.Text
  loc_199D183: var_160 = -1 & var_124
  loc_199D18A: var_170 = var_160 & "' AND VNo="
  loc_199D19B: Set var_164 = Me.Txt
  loc_199D1A1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168, var_16C)
  loc_199D1A9: var_170 = var_168.Text
  loc_199D1C7: Set var_178 = Me.Txt
  loc_199D1CD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_17C)
  loc_199D1DC: Proc_6_7_F26918(var_134, CVar(var_17C))
  loc_199D1F2: unk_5502DC.Execute CStr(CVar(var_194 & var_16C & " AND VDate=") & var_134), , 
  loc_199D22B: Set var_110 = 1(var_AA)
  loc_199D247: For var_198 =  To CInt((CLng(Txt.DispID_4) - 1)):  = var_198 'Integer
  loc_199D263:   Set var_110 = CVar(CLng(var_AA))(2)
  loc_199D285:   If (CStr(Txt.DispID_41) <> vbNullString) Then
  loc_199D29E:     Set var_110 = CVar(CLng(var_AA))(8)
  loc_199D2B7:     var_1A0 = Val(CStr(Txt.DispID_41))
  loc_199D2C1:     var_CC = (var_CC + var_1A0)
  loc_199D2D3:     var_1A4 = global_116
  loc_199D2DF:     If (var_1A4 = 6) Then
  loc_199D2F8:       Set var_110 = CVar(CLng(var_AA))(2)
  loc_199D31A:       If (CStr(Txt.DispID_41) = "Cheque") Then
  loc_199D369:         Set var_110 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199D39D:         Set var_15C = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199D3B2:         var_94 = "Adv.Recd.Agnst.BillNo." & CStr(Val(CStr(Right(global_100, 8)))) & " Chq." & CStr(Txt.DispID_41) & " Dt." & CStr(Txt.DispID_41)
  loc_199D3DB:       Else
  loc_199D3F0:         Set var_110 = CVar(CLng(var_AA))(CVar(CLng(&HF)))
  loc_199D409:         var_94 = Proc_6_38_E69628(CVar(CStr(Txt.DispID_41)), var_1A4)
  loc_199D416:       End If
  loc_199D42C:       If (HallAdvanceDepDialog.AdvType = "AD") Then
  loc_199D433:         Set var_110 = var_1A0(var_CC)
  loc_199D441:         var_124 = CStr(Txt.DispID_68030005)
  loc_199D452:         If (var_124 = "Add") Then
  loc_199D45B:           Call Proc_125_74_1159C64(MemVar_1F95044)
  loc_199D466:           global_100 = var_124
  loc_199D46D:         End If
  loc_199D480:         var_120 = Right(global_100, 8)
  loc_199D491:         var_1A0 = Val(CStr(var_120))
  loc_199D4A2:         var_134 = Trim(global_104)
  loc_199D4B2:         Set var_110 = Me.Txt
  loc_199D4B8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C)
  loc_199D4C7:         Proc_6_7_F26918(var_23C, CVar(var_15C))
  loc_199D4E3:         var_27C = "HH:mm"
  loc_199D509:         Set var_164 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_199D531:         Set var_168 = CVar(CLng(var_AA))(&H16)
  loc_199D559:         Set var_178 = CVar(CLng(var_AA))(1)
  loc_199D581:         Set var_17C = CVar(CLng(var_AA))(2)
  loc_199D5A9:         Set var_194 = CVar(CLng(var_AA))(8)
  loc_199D5C2:         var_C6C = Val(CStr(Txt.DispID_41))
  loc_199D5DB:         Set var_5D4 = CVar(CLng(var_AA))(&H12)
  loc_199D5F8:         Set var_648 = Me.Txt
  loc_199D5FE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_64C, Txt.DispID_41, var_C6C, Txt.DispID_41, Txt.DispID_41)
  loc_199D60D:         Proc_6_39_E7D3A0(var_66C, CVar(var_64C), Txt.DispID_41, Txt.DispID_41)
  loc_199D627:         Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_199D64E:         Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_199D675:         Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199D69C:         Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199D6B3:         Proc_6_7_F26918(var_8CC, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_199D6CE:         Set var_940 = CVar(CLng(var_AA))(&H19)
  loc_199D6E5:         Proc_6_17_EAAE40(var_970, CVar(CStr(Txt.DispID_41)), 1)
  loc_199D6FF:         Set var_9E4 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199D716:         Proc_6_7_F26918(var_A14, CVar(CStr(Txt.DispID_41)), 1)
  loc_199D730:         Set var_A88 = CVar(CLng(var_AA))(CVar(CLng(&HC)))
  loc_199D749:         var_C74 = Val(CStr(Txt.DispID_41))
  loc_199D757:         Proc_183_7_EB17D4(var_B3C, MemVar_1F950EC, var_C74)
  loc_199D76A:         Set var_BB0 = Me.Txt
  loc_199D770:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BB4, var_BB8)
  loc_199D791:         var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TaxStru,"
  loc_199D79F:         var_16C = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,BatchNo,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_199D7F5:         var_21C = var_16C & "'" & global_100 & "'," & CStr(var_AA) & ",'" & global_124 & "'," & CStr(var_BB4.Tag) & ",'" & MemVar_1F95070
  loc_199D81B:         var_25C = CVar(var_21C & "','") & var_134 & "'," & var_23C & ",'" 
  loc_199D82E:         var_2AC = var_25C & CVar(Format$(Time, var_27C)) & "','','" 
  loc_199D839:         var_2EC = var_2AC & CVar(CStr(var_2CC)) 
  loc_199D842:         var_30C = var_2EC & "','" 
  loc_199D860:         var_3BC = var_30C & CVar(CStr(var_35C)) & "','" & CVar(var_94) 
  loc_199D8B0:         var_604 = var_3BC & "','" & CVar(CStr(var_42C)) & "','" & CVar(CStr(var_4BC)) & "'," & CVar(var_C6C) & ",'" & CVar(CStr(var_5E4)) 
  loc_199D8C9:         var_67C = var_604 & "'," & vbNullString & var_66C 
  loc_199D91E:         var_8FC = var_67C & ",'" & CVar(CStr(var_6F0)) & "','" & CVar(CStr(var_784)) & "','" & CVar(CStr(var_818)) & "'," & var_8CC & "," 
  loc_199D982:         var_B8C = var_8FC & var_970 & "," & var_A14 & "," & CVar(var_C74) & ",'" & CVar(MemVar_1F950C8) & "'," & var_B3C & ",'A','" & CVar(global_52) 
  loc_199D9BF:         unk_5502DC.Execute CStr(var_B8C & "','" & CVar(var_BB8) & "',0,'" & CVar(MemVar_1F95078) & "')"), var_C5C, -1
  loc_199DAD5:         Set var_110 = Me.Txt
  loc_199DADB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_16C)
  loc_199DAE3:         var_C60 = var_15C.Text
  loc_199DB1F:         unk_5502DC.Execute "UPDATE HallSale1 SET Advance=" & CStr(var_CC) & " WHERE BookDocId='" & var_16C & "'", var_120, -1
  loc_199DB4D:         Set var_110 = Me.Txt
  loc_199DB53:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_199DB5B:         var_164 = var_15C.Text
  loc_199DB6B:         Set var_164 = Me.Txt
  loc_199DB71:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_199DB79:         var_120 = CVar(var_168) 'Address
  loc_199DB80:         Proc_6_7_F26918(var_134, var_120)
  loc_199DB93:         Set var_178 = Me.Txt
  loc_199DB99:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_17C)
  loc_199DBE3:         var_190 = CVar("UPDATE HallBook SET Advance=" & CStr(var_CC) & ",RectNo=" & var_16C & ",rectDate=") & var_134 & " WHERE DocId='" 
  loc_199DBFA:         var_1F8 = CStr(var_190 & CVar(var_17C.Text) & "'")
  loc_199DC04:         unk_5502DC.Execute var_1F8, var_25C, -1
  loc_199DC52:         Set var_110 = CVar(CLng(var_AA))(1)
  loc_199DC88:         var_C98 = Val(CStr(Right(global_100, 8)))
  loc_199DCAC:         Set var_15C = Me.Txt
  loc_199DCB2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_164, var_1F8, var_C98)
  loc_199DCBA:         Txt.DispID_41 = var_164.Text
  loc_199DCC2:         var_154 = Time
  loc_199DCEA:         var_23C = Trim(CVar(Format$(var_154, "HH:mm")))
  loc_199DD04:         Set var_168 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_199DD1B:         var_26C = Trim(CVar(CStr(Txt.DispID_41)))
  loc_199DD36:         Set var_178 = CVar(CLng(var_AA))(1)
  loc_199DD5E:         Set var_17C = CVar(CLng(var_AA))(8)
  loc_199DD85:         Set var_194 = Me.Txt
  loc_199DD8B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_5D4, Val(CStr(Txt.DispID_41)), Txt.DispID_41)
  loc_199DD9A:         Proc_6_39_E7D3A0(var_2AC, CVar(var_5D4), 1)
  loc_199DDB4:         Set var_648 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_199DDDB:         Set var_64C = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_199DE02:         Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199DE29:         Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199DE58:         Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199DE69:         var_37C = CVar(CStr(Txt.DispID_41)) 'String
  loc_199DE82:         var_39C = IIf((CStr(var_30C) = vbNullString), Date, var_37C)
  loc_199DE9C:         Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199DECB:         Set var_940 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199DEF5:         var_44C = IIf((CStr(var_3BC) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_199DEFD:         var_46C = Date
  loc_199DF18:         Set var_9E4 = CVar(CLng(var_AA))(&H12)
  loc_199DF2D:         var_C64 = "Dr"
  loc_199DF44:         var_BB8 = "A"
  loc_199DF8B:         var_218 = vbNullString
  loc_199DF94:         var_214 = vbNullString
  loc_199DF9D:         var_210 = vbNullString
  loc_199DFB4:         var_20C = vbNullString
  loc_199DFD0:         var_200 = vbNullString
  loc_199E010:         Proc_96_9_18E30F8(CStr(var_120), global_100, var_AA, global_124, CLng(var_C98), MemVar_1F95070, CStr(Trim(global_104)), CDate(var_1F8))
  loc_199E0DC:         If (CStr(Txt.DispID_41) = "Room") Then
  loc_199E10A:           unk_5502DC.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_120, -1
  loc_199E115:           Set var_98 = CVar(CLng(var_AA))(2)
  loc_199E13B:           If (var_98.RecordCount > 0) Then
  loc_199E16A:             var_15C = var_98.Fields.Item("TaxStru")
  loc_199E17A:             var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_199E183:             var_144 = var_134 & "' Order by Sno" 
  loc_199E187:             var_124 = CStr(var_144)
  loc_199E191:             unk_5502DC.Execute var_124, var_154, -1
  loc_199E19C:             Set var_A0 = var_164
  loc_199E1B9:           Else
  loc_199E1D2:             MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_199E1E8:             unk_5502DC.RollbackTrans
  loc_199E1ED:             Exit Sub
  loc_199E1EE:           End If
  loc_199E202:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_164, Me.Txt, CStr(var_23C))
  loc_199E20A:           var_200 = var_15C.Text
  loc_199E21D:           Set var_164 = Me.Txt
  loc_199E223:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168, var_200, CStr(var_26C))
  loc_199E22B:           var_94 = var_168.Text
  loc_199E234:           var_120 = CVar(var_20C(CStr(var_27C))) 'Address
  loc_199E24B:           Set var_178 = Me.Txt
  loc_199E251:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_199E260:           Proc_6_7_F26918(var_23C, CVar(var_17C))
  loc_199E2A3:           Set var_194 = CVar(CLng(var_AA))(1)
  loc_199E2CB:           Set var_5D4 = CVar(CLng(var_AA))(2)
  loc_199E2F3:           Set var_648 = CVar(CLng(var_AA))(8)
  loc_199E30C:           var_1A0 = Val(CStr(Txt.DispID_41))
  loc_199E325:           Set var_64C = CVar(CLng(var_AA))(&H18)
  loc_199E342:           Proc_183_7_EB17D4(var_5E4, MemVar_1F950EC, Txt.DispID_41, var_1A0, Txt.DispID_41)
  loc_199E35B:           var_160 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_199E3A9:           var_144 = CVar(var_160 & var_124 & "'," & CStr(var_AC) & ",'" & global_124 & "'," & var_200 & ",'" & MemVar_1F95070 & "','") 'String
  loc_199E3E5:           var_2CC = var_144 & Trim(var_120) & "'," & var_23C & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(var_94) 
  loc_199E3F9:           var_35C = var_2CC & "','" & CVar(CStr(var_2EC)) 
  loc_199E432:           var_4BC = CVar(CStr(var_46C)) 'String
  loc_199E450:           var_54C = var_35C & "','" & CVar(CStr(var_37C)) & "',0," & CVar(var_1A0) & "," & var_4BC & ",'','',0,''," & vbNullString & "'" 
  loc_199E49C:           var_66C = var_54C & CVar(MemVar_1F950C8) & "'," & var_5E4 & ",'A','" & CVar(global_52) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_199E4AA:           unk_5502DC.Execute CStr(var_66C), var_67C, -1
  loc_199E558:           Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199E569:           var_B4 = CStr(Txt.DispID_41)
  loc_199E588:           Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199E5BD:           var_B8 = CStr(LTrim(Left(CVar(CStr(var_120)), 2)))
  loc_199E5E4:           Set var_110 = CVar(CLng(var_AA))(&H18)
  loc_199E5FF:           var_BC = CStr(Val(CStr(Txt.DispID_41)))
  loc_199E621:           Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199E650:           var_B0 = CStr(Mid(CVar(CStr(var_120)), 3, 5))
  loc_199E677:           Set var_110 = CVar(CLng(var_AA))(8)
  loc_199E690:           var_1A0 = Val(CStr(Txt.DispID_41))
  loc_199E69A:           var_C4 = (var_C4 + var_1A0)
  loc_199E6A6:         End If
  loc_199E6A9:       Else
  loc_199E6BF:         If (HallAdvanceDepDialog.AdvType = "AR") Then
  loc_199E6C6:           Set var_110 = var_1A0(var_C4)
  loc_199E6D4:           var_124 = CStr(Txt.DispID_68030005)
  loc_199E6E5:           If (var_124 = "Add") Then
  loc_199E6EE:             Call Proc_125_74_1159C64(MemVar_1F95044, var_124, Txt.DispID_41, Txt.DispID_41, var_6E0)
  loc_199E6F9:             global_100 = var_124
  loc_199E700:           End If
  loc_199E713:           var_120 = Right(global_100, 8)
  loc_199E724:           var_1A0 = Val(CStr(var_120))
  loc_199E735:           var_134 = Trim(global_104)
  loc_199E745:           Set var_110 = Me.Txt
  loc_199E74B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_1A0, Txt.DispID_41)
  loc_199E75A:           Proc_6_7_F26918(var_23C, CVar(var_15C), 1)
  loc_199E776:           var_27C = "HH:mm"
  loc_199E79C:           Set var_164 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_199E7C4:           Set var_168 = CVar(CLng(var_AA))(&H16)
  loc_199E7EC:           Set var_178 = CVar(CLng(var_AA))(1)
  loc_199E814:           Set var_17C = CVar(CLng(var_AA))(2)
  loc_199E83C:           Set var_194 = CVar(CLng(var_AA))(8)
  loc_199E855:           var_C6C = Val(CStr(Txt.DispID_41))
  loc_199E86E:           Set var_5D4 = CVar(CLng(var_AA))(&H12)
  loc_199E88B:           Set var_648 = Me.Txt
  loc_199E891:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_64C, Txt.DispID_41, var_C6C, Txt.DispID_41, Txt.DispID_41)
  loc_199E8A0:           Proc_6_39_E7D3A0(var_66C, CVar(var_64C), Txt.DispID_41, Txt.DispID_41)
  loc_199E8BA:           Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_199E8E1:           Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_199E908:           Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199E92F:           Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199E946:           Proc_6_7_F26918(var_8CC, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_199E961:           Set var_940 = CVar(CLng(var_AA))(&H19)
  loc_199E978:           Proc_6_17_EAAE40(var_970, CVar(CStr(Txt.DispID_41)), 1)
  loc_199E992:           Set var_9E4 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199E9A9:           Proc_6_7_F26918(var_A14, CVar(CStr(Txt.DispID_41)), 1)
  loc_199E9C3:           Set var_A88 = CVar(CLng(var_AA))(CVar(CLng(&HC)))
  loc_199E9DC:           var_C74 = Val(CStr(Txt.DispID_41))
  loc_199E9EA:           Proc_183_7_EB17D4(var_B3C, MemVar_1F950EC, var_C74)
  loc_199E9FD:           Set var_BB0 = Me.Txt
  loc_199EA03:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BB4, var_BB8)
  loc_199EA0B:           1 = var_BB4.Tag
  loc_199EA24:           var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtDr,TaxStru,"
  loc_199EA32:           var_16C = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,BatchNo,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_199EA88:           var_21C = var_16C & "'" & global_100 & "'," & CStr(var_AA) & ",'" & global_124 & "'," & CStr(var_1A0) & ",'" & MemVar_1F95070
  loc_199EAAE:           var_25C = CVar(var_21C & "','") & var_134 & "'," & var_23C & ",'" 
  loc_199EAC1:           var_2AC = var_25C & CVar(Format$(Time, var_27C)) & "','','" 
  loc_199EACC:           var_2EC = var_2AC & CVar(CStr(var_2CC)) 
  loc_199EAD5:           var_30C = var_2EC & "','" 
  loc_199EAF3:           var_3BC = var_30C & CVar(CStr(var_35C)) & "','" & CVar(var_94) 
  loc_199EB43:           var_604 = var_3BC & "','" & CVar(CStr(var_42C)) & "','" & CVar(CStr(var_4BC)) & "'," & CVar(var_C6C) & ",'" & CVar(CStr(var_5E4)) 
  loc_199EB5C:           var_67C = var_604 & "'," & vbNullString & var_66C 
  loc_199EBB1:           var_8FC = var_67C & ",'" & CVar(CStr(var_6F0)) & "','" & CVar(CStr(var_784)) & "','" & CVar(CStr(var_818)) & "'," & var_8CC & "," 
  loc_199EC15:           var_B8C = var_8FC & var_970 & "," & var_A14 & "," & CVar(var_C74) & ",'" & CVar(MemVar_1F950C8) & "'," & var_B3C & ",'A','" & CVar(global_52) 
  loc_199EC52:           unk_5502DC.Execute CStr(var_B8C & "','" & CVar(var_BB8) & "',0,'" & CVar(MemVar_1F95078) & "')"), var_C5C, -1
  loc_199ED68:           Set var_110 = Me.Txt
  loc_199ED6E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_16C)
  loc_199ED76:           var_C60 = var_15C.Text
  loc_199EDB2:           unk_5502DC.Execute "UPDATE HallSale1 SET Advance=" & CStr(var_CC) & " WHERE BookDocId='" & var_16C & "'", var_120, -1
  loc_199EDE0:           Set var_110 = Me.Txt
  loc_199EDE6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_199EDEE:           var_164 = var_15C.Text
  loc_199EDFE:           Set var_164 = Me.Txt
  loc_199EE04:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_199EE0C:           var_120 = CVar(var_168) 'Address
  loc_199EE13:           Proc_6_7_F26918(var_134, var_120)
  loc_199EE26:           Set var_178 = Me.Txt
  loc_199EE2C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_17C)
  loc_199EE76:           var_190 = CVar("UPDATE HallBook SET Advance=" & CStr(var_CC) & ",RectNo=" & var_16C & ",rectDate=") & var_134 & " WHERE DocId='" 
  loc_199EE8D:           var_1F8 = CStr(var_190 & CVar(var_17C.Text) & "'")
  loc_199EE97:           unk_5502DC.Execute var_1F8, var_25C, -1
  loc_199EEE5:           Set var_110 = CVar(CLng(var_AA))(1)
  loc_199EF1B:           var_C98 = Val(CStr(Right(global_100, 8)))
  loc_199EF3F:           Set var_15C = Me.Txt
  loc_199EF45:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_164, var_1F8, var_C98)
  loc_199EF4D:           Txt.DispID_41 = var_164.Text
  loc_199EF55:           var_154 = Time
  loc_199EF7D:           var_23C = Trim(CVar(Format$(var_154, "HH:mm")))
  loc_199EF97:           Set var_168 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_199EFAE:           var_26C = Trim(CVar(CStr(Txt.DispID_41)))
  loc_199EFC9:           Set var_178 = CVar(CLng(var_AA))(1)
  loc_199EFF1:           Set var_17C = CVar(CLng(var_AA))(8)
  loc_199F018:           Set var_194 = Me.Txt
  loc_199F01E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_5D4, Val(CStr(Txt.DispID_41)), Txt.DispID_41)
  loc_199F02D:           Proc_6_39_E7D3A0(var_2AC, CVar(var_5D4), 1)
  loc_199F047:           Set var_648 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_199F06E:           Set var_64C = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_199F095:           Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199F0BC:           Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199F0EB:           Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199F0FC:           var_37C = CVar(CStr(Txt.DispID_41)) 'String
  loc_199F115:           var_39C = IIf((CStr(var_30C) = vbNullString), Date, var_37C)
  loc_199F12F:           Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199F15E:           Set var_940 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199F188:           var_44C = IIf((CStr(var_3BC) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_199F190:           var_46C = Date
  loc_199F1AB:           Set var_9E4 = CVar(CLng(var_AA))(&H12)
  loc_199F1C0:           var_C64 = "Cr"
  loc_199F1D7:           var_BB8 = "A"
  loc_199F21E:           var_218 = vbNullString
  loc_199F227:           var_214 = vbNullString
  loc_199F230:           var_210 = vbNullString
  loc_199F247:           var_20C = vbNullString
  loc_199F263:           var_200 = vbNullString
  loc_199F2A3:           Proc_96_9_18E30F8(CStr(var_120), global_100, var_AA, global_124, CLng(var_C98), MemVar_1F95070, CStr(Trim(global_104)), CDate(var_1F8))
  loc_199F36F:           If (CStr(Txt.DispID_41) = "Room") Then
  loc_199F39D:             unk_5502DC.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_120, -1
  loc_199F3A8:             Set var_98 = CVar(CLng(var_AA))(2)
  loc_199F3CE:             If (var_98.RecordCount > 0) Then
  loc_199F3FD:               var_15C = var_98.Fields.Item("TaxStru")
  loc_199F40D:               var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_199F416:               var_144 = var_134 & "' Order by Sno" 
  loc_199F41A:               var_124 = CStr(var_144)
  loc_199F424:               unk_5502DC.Execute var_124, var_154, -1
  loc_199F42F:               Set var_A0 = var_164
  loc_199F44C:             Else
  loc_199F465:               MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_199F47B:               unk_5502DC.RollbackTrans
  loc_199F480:               Exit Sub
  loc_199F481:             End If
  loc_199F495:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_164, Me.Txt, CStr(var_23C))
  loc_199F49D:             var_200 = var_15C.Text
  loc_199F4B0:             Set var_164 = Me.Txt
  loc_199F4B6:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168, var_200, CStr(var_26C))
  loc_199F4C7:             var_120 = CVar(var_20C(CStr(var_27C))) 'Address
  loc_199F4DE:             Set var_178 = Me.Txt
  loc_199F4E4:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_199F4F3:             Proc_6_7_F26918(var_23C, CVar(var_17C))
  loc_199F50F:             var_27C = "HH:mm"
  loc_199F536:             Set var_194 = CVar(CLng(var_AA))(1)
  loc_199F55E:             Set var_5D4 = CVar(CLng(var_AA))(2)
  loc_199F586:             Set var_648 = CVar(CLng(var_AA))(8)
  loc_199F59F:             var_1A0 = Val(CStr(Txt.DispID_41))
  loc_199F5B8:             Set var_64C = CVar(CLng(var_AA))(&H18)
  loc_199F5D5:             Proc_183_7_EB17D4(var_5E4, MemVar_1F950EC, Txt.DispID_41, var_1A0, Txt.DispID_41)
  loc_199F5EE:             var_160 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_199F608:             var_180 = var_160 & var_124 & "'," & CStr(var_AC)
  loc_199F652:             var_24C = CVar(var_180 & ",'" & global_124 & "'," & var_200 & ",'" & MemVar_1F95070 & "','") & Trim(var_120) & "'," & var_23C 
  loc_199F695:             var_36C = var_24C & ",'" & CVar(Format$(Time, var_27C)) & "','','" & CVar(var_168.Text) & "','" & CVar(CStr(var_2EC)) & "','" 
  loc_199F6DA:             var_4FC = var_36C & CVar(CStr(var_37C)) & "'," & CVar(var_1A0) & ",0," & CVar(CStr(var_46C)) & ",'','',0,''," & vbNullString 
  loc_199F726:             var_65C = var_4FC & "'" & CVar(MemVar_1F950C8) & "'," & var_5E4 & ",'A','" & CVar(global_52) & "','" & CVar(MemVar_1F95078) 
  loc_199F73D:             unk_5502DC.Execute CStr(var_65C & "')"), var_67C, -1
  loc_199F7EB:             Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199F7FC:             var_B4 = CStr(Txt.DispID_41)
  loc_199F81B:             Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199F850:             var_B8 = CStr(LTrim(Left(CVar(CStr(var_120)), 2)))
  loc_199F877:             Set var_110 = CVar(CLng(var_AA))(&H18)
  loc_199F892:             var_BC = CStr(Val(CStr(Txt.DispID_41)))
  loc_199F8B4:             Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199F8D4:             var_134 = CVar(CStr(var_120)) 'String
  loc_199F8E3:             var_B0 = CStr(Mid(var_134, 3, 5))
  loc_199F90A:             Set var_110 = CVar(CLng(var_AA))(8)
  loc_199F92D:             var_C4 = (var_C4 + Val(CStr(Txt.DispID_41)))
  loc_199F939:           End If
  loc_199F939:         End If
  loc_199F939:       End If
  loc_199F939:     End If
  loc_199F939:   End If
  loc_199F93C: Next var_198 'Integer
  loc_199F957: If (HallAdvanceDepDialog.AdvType = "AD") Then
  loc_199F968:   Set var_110 = Me.Txt
  loc_199F96E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C)
  loc_199F986:   Set var_164 = Me.Txt
  loc_199F98C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_199F99B:   Proc_6_7_F26918(var_134, CVar(var_168))
  loc_199F9AE:   Set var_178 = Me.Txt
  loc_199F9B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_17C)
  loc_199F9FF:   var_23C = CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & ",advance=" & CVar(var_CC) & " where Docid='" 
  loc_199FA06:   var_24C = CVar(var_17C.Tag) 'String
  loc_199FA20:   unk_5502DC.Execute CStr(var_23C & var_24C & "'"), var_27C, -1
  loc_199FA56: End If
  loc_199FA5A: Set var_110 = var_168(var_194)
  loc_199FA79: If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_199FA90:   var_124 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_199FAB6:   var_144 = CVar(var_124 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_124 & "' And VP.Date_From<=") 'String
  loc_199FAC7:   Set var_110 = Me.Txt
  loc_199FACD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_180, var_144)
  loc_199FAD5:   var_22C = var_15C.Text
  loc_199FAE3:   Proc_6_7_F26918(var_134, CVar(var_180))
  loc_199FAEB:   var_154 = -1 & var_134 
  loc_199FB02:   unk_5502DC.Execute CStr(CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & " Order By VP.Date_From DESC"), var_164, 
  loc_199FB0D:   Set var_90 = var_164
  loc_199FB4E:   If (Me.Recordset15.RecordCount > 0) Then
  loc_199FB65:     var_124 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F95070
  loc_199FB83:     var_DC = "V_Type"
  loc_199FB9A:     var_15C = Me.Recordset15.Fields.Item(var_DC)
  loc_199FBAA:     var_144 = CVar(var_124 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_15C.Value 
  loc_199FBB3:     var_154 = var_144 & "' and Date_From=" 
  loc_199FBE0:     Proc_6_7_F26918(var_22C, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154)
  loc_199FBF6:     unk_5502DC.Execute CStr(var_24C & var_22C), -1, var_178
  loc_199FC24:   End If
  loc_199FC24: End If
  loc_199FC2A: unk_5502DC.CommitTrans
  loc_199FC32: Call Proc_125_82_1BC9420(var_CA2)
  loc_199FC3D: If (var_CA2 = &HFF) Then
  loc_199FC44:   var_86 = CByte(1) 'Byte
  loc_199FC4B: Else
  loc_199FC50:   Set var_98 = Nothing
  loc_199FC58:   Set var_9C = Nothing
  loc_199FC60:   Set var_A0 = Nothing
  loc_199FC68:   Set var_A4 = Nothing
  loc_199FC6F:   var_86 = CByte(0) 'Byte
  loc_199FC84:   If (OpenMode = 1) Then
  loc_199FC94:     Me.Global.Unload Me
  loc_199FC9C:     Exit Sub
  loc_199FC9D:   End If
  loc_199FCA8:   Me.Requery -1
  loc_199FCB8:   Me.Requery -1
  loc_199FCC8:   Me.Requery -1
  loc_199FCEC:   Set var_110 = Me.Txt
  loc_199FCF2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "SearchCode='")
  loc_199FCFA:   0 = var_15C.Text
  loc_199FD13:   Me.Find 1 & var_124 & "'", var_DC, 
  loc_199FD3D:   var_124 = "INI"
  loc_199FD4B:   Call Proc_125_67_F672D4(Proc_5_1_100EC1C(var_124, Me))
  loc_199FD56:   Call Proc_125_72_FE3574(global_56)
  loc_199FD5B:   Call Proc_125_70_156BDD8()
  loc_199FD71:   If (OpenMode = 1) Then
  loc_199FD7F:     var_134 = "Payment Entry..."
  loc_199FDAB:     If (MsgBox("Print Recpt.", &H24, var_134, var_144, var_154) = 6) Then
  loc_199FDAE:       Call TopCtrl1_UnknownEvent_14()
  loc_199FDB3:     End If
  loc_199FDC0:     Me.Global.Unload Me
  loc_199FDC8:     Exit Sub
  loc_199FDC9:   End If
  loc_199FDC9:   Exit Sub
  loc_199FDCA:   ' Referenced from:   199D0C0
  loc_199FDD3:   If (CInt(var_86) = 1) Then
  loc_199FDDC:     unk_5502DC.RollbackTrans
  loc_199FDE1:   End If
  loc_199FDE9:   Set var_110 = Err()
  loc_199FDEF:   Call 0.Method_arg_2C (var_124)
  loc_199FE08:   MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_199FE1B:   Exit Sub
  loc_199FE1C: End If
  loc_199FE25: If (CInt(var_86) = 1) Then
  loc_199FE2E:   unk_5502DC.RollbackTrans
  loc_199FE33: End If
  loc_199FE54: MsgBox("Please Check Party Account.", &H10, "Payment Entry...", var_144, var_154)
  loc_199FE71: Me.Global.Unload Me
  loc_199FE79: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F1A0DC
  'Data Table: 5502C4
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F19FF8: On Error Goto loc_F1A0D6
  loc_F19FFF: Set var_A4 = Me.ListView
  loc_F1A049: Set var_BC = Me.Txt
  loc_F1A04F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F1A057: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F1A083: Me.FrmList.Visible = False
  loc_F1A0A5: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F1A0B3: Set var_9C = Me.Txt
  loc_F1A0B9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F1A0C1: var_A4.SetFocus
  loc_F1A0D5: Exit Sub
  loc_F1A0D6: ' Referenced from: F19FF8
  loc_F1A0D6: Proc_6_60_E63754(var_C8)
  loc_F1A0DB: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F4BB94
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BA8B: (False).Visible = 
  loc_F4BAAA: If (Me.RecordCount > 0) Then
  loc_F4BAE9:   Set var_B4 = Me.Txt
  loc_F4BAEF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F4BAF7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4BB2A:   var_B0 = Me.Fields.Item("Code")
  loc_F4BB49:   Set var_B4 = Me.Txt
  loc_F4BB4F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F4BB57:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4BB6D: End If
  loc_F4BB78: Set var_A8 = Me.Txt
  loc_F4BB7E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11))
  loc_F4BB86: var_B0.SetFocus
  loc_F4BB92: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA2570
  'Data Table: 5502C4
  Dim var_A8 As Variant
  loc_EA24F0: Set var_88 = ()
  loc_EA251A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2522: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA2542: Set var_BC = ()
  loc_EA255E: Proc_6_138_106E830((Txt.DispID_1B), global_68)
  loc_EA256C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'DFC314
  'Data Table: 5502C4
  loc_DFC310: Exit Sub
  loc_DFC311:  = arg_D08
End Sub

Private Sub DGCompany_UnknownEvent_9 'F476D4
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F475CB: (False).Visible = 
  loc_F475EA: If (Me.RecordCount > 0) Then
  loc_F47629:   Set var_B4 = Me.Txt
  loc_F4762F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F47637:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4766A:   var_B0 = Me.Fields.Item("Code")
  loc_F47689:   Set var_B4 = Me.Txt
  loc_F4768F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F47697:   var_B8.Tag = CStr(var_B0.Value)
  loc_F476AD: End If
  loc_F476B8: Set var_A8 = Me.Txt
  loc_F476BE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10))
  loc_F476C6: var_B0.SetFocus
  loc_F476D2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA3958
  'Data Table: 5502C4
  Dim var_A8 As Variant
  loc_EA38D8: Set var_88 = ()
  loc_EA3902: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA390A: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA392A: Set var_BC = ()
  loc_EA3946: Proc_6_138_106E830((Txt.DispID_1B), global_80)
  loc_EA3954: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF8D44
  'Data Table: 5502C4
  Dim var_88 As TextBox
  loc_EF8C84: If (CBool(().Visible) = &HFF) Then
  loc_EF8C87:   Call DGTable_UnknownEvent_9()
  loc_EF8C8C: End If
  loc_EF8CA8: If (CBool(().Visible) = &HFF) Then
  loc_EF8CAB:   Call DGEmp_UnknownEvent_9()
  loc_EF8CB0: End If
  loc_EF8CCC: If (CBool(().Visible) = &HFF) Then
  loc_EF8CCF:   Call DGPayType_UnknownEvent_9()
  loc_EF8CD4: End If
  loc_EF8CF0: If (CBool(().Visible) = &HFF) Then
  loc_EF8CF3:   Call DGRoom_UnknownEvent_9()
  loc_EF8CF8: End If
  loc_EF8D14: If (CBool(().Visible) = &HFF) Then
  loc_EF8D17:   Call DGCompany_UnknownEvent_9()
  loc_EF8D1C: End If
  loc_EF8D38: If (CBool(().Visible) = &HFF) Then
  loc_EF8D3B:   Call DGTaxStru_UnknownEvent_9()
  loc_EF8D40: End If
  loc_EF8D40: Exit Sub
  loc_EF8D41: var_88 = 
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F4A854
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A74B: (False).Visible = 
  loc_F4A76A: If (Me.RecordCount > 0) Then
  loc_F4A7A9:   Set var_B4 = Me.Txt
  loc_F4A7AF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4A7B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A7EA:   var_B0 = Me.Fields.Item("Name")
  loc_F4A809:   Set var_B4 = Me.Txt
  loc_F4A80F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4A817:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A82D: End If
  loc_F4A838: Set var_A8 = Me.Txt
  loc_F4A83E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9))
  loc_F4A846: var_B0.SetFocus
  loc_F4A852: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA3AE0
  'Data Table: 5502C4
  Dim var_A8 As Variant
  loc_EA3A60: Set var_88 = ()
  loc_EA3A8A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3A92: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA3AB2: Set var_BC = ()
  loc_EA3ACE: Proc_6_138_106E830((Txt.DispID_1B), global_64)
  loc_EA3ADC: Exit Sub
End Sub

Private Sub Del_Click() 'F926E4
  'Data Table: 5502C4
  Dim Del_Click3 As Variant
  loc_F92588: Set var_88 = ()
  loc_F925A3: If (CLng(Txt.DispID_A) >= 1) Then
  loc_F925DD:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F925E4:     Set var_88 = ()
  loc_F925FF:     If (CLng(Txt.DispID_4) > 2) Then
  loc_F92606:       Set var_88 = ()
  loc_F92624:       Del_Click3 = (CVar(CLng(Txt.DispID_A))).Name
  loc_F92639:     Else
  loc_F92646:       Set var_88 = Del_Click3(1)
  loc_F9269F:       Set var_88 = 0(CVar(CStr(Proc_6_127_F25B10((Txt.DispID_4))))).Name(1)
  loc_F926AD:     End If
  loc_F926AD:   End If
  loc_F926B0: Else
  loc_F926D1:   MsgBox("No Entries To Delete", &H10, "Delete Module", var_E8, var_108)
  loc_F926E1: End If
  loc_F926E1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15B29DC
  'Data Table: 5502C4
  Dim var_92 As Integer
  Dim var_A8 As Variant
  Dim var_B8 As String
  Dim var_8C As TextBox
  Dim var_D0 As Variant
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_FC As Variant
  Dim var_88 As Frame
  loc_15B177E: Set var_88 = Me.Txt
  loc_15B1784: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15B1792: Proc_6_74_E23240(var_8C)
  loc_15B179E: Call Proc_125_72_FE3574(var_8C)
  loc_15B17A6: var_92 = Index
  loc_15B17B1: If (var_92 = CInt(1)) Then
  loc_15B17C1:   ReDim var_98(0 To 1)
  loc_15B17D8:   var_98(0) = "Advance"
  loc_15B17DA:   var_B8 = "Refund"
  loc_15B17E7:   var_98(1) = var_B8
  loc_15B17FE:   global_176 = Array(var_98)
  loc_15B1809:   Set var_D0 = Me.ListView
  loc_15B1810:   Set var_D4 = Me.Txt
  loc_15B1824:   Set var_8C = var_D4
  loc_15B183E:   Set global_192 = Proc_6_66_F0048C(var_D0, var_8C, Index, global_176)
  loc_15B185C:   Set var_88 = Me.Txt
  loc_15B1862:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B186A:   2 = var_8C.Text
  loc_15B187C:   Set var_90 = Me.Txt
  loc_15B1882:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_15B188A:   var_D0.Tag = global_176
  loc_15B18A0: Else
  loc_15B18A8:   If (var_92 = CInt(7)) Then
  loc_15B18B8:      = var_92(var_E0).Top
  loc_15B18CB:     Set var_D0 = Me.Txt
  loc_15B18D1:     Call 0.Method_Txt_GotFocus0 (CInt(7), var_D4)
  loc_15B18EC:     Set var_88 = Me.Txt
  loc_15B18F2:     Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C)
  loc_15B190A:     var_A8 = CVar(((var_8C.Top + var_E0) + var_D4.Height)) 'Single
  loc_15B1919:     ("Advance").Top = 
  loc_15B193A:      = (var_E0).Left
  loc_15B194D:     Set var_88 = Me.Txt
  loc_15B1953:     Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C)
  loc_15B1967:     var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B1976:     ("Advance").Left = 
  loc_15B199D:     If (Me.RecordCount > 0) Then
  loc_15B19AB:       Set var_8C = ()
  loc_15B19C3:       Proc_6_137_1192FDC((), global_60)
  loc_15B19D1:     End If
  loc_15B1A1F:     Set var_88 = Me.Txt
  loc_15B1A25:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B1A2D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B1A45:     If (Index Or (var_D8 = vbNullString)) Then
  loc_15B1A48:       Exit Sub
  loc_15B1A49:     End If
  loc_15B1A56:     Set var_88 = Me.Txt
  loc_15B1A5C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1A64:     var_D8 = var_8C.Text
  loc_15B1A76:     var_A8 = "Name"
  loc_15B1AB1:     If CBool(CVar(var_D8) <> Me.Fields.Item(var_A8).Value) Then
  loc_15B1ABA:       Me.MoveFirst
  loc_15B1ADD:       Set var_88 = Me.Txt
  loc_15B1AE3:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_15B1AEB:       0 = var_8C.Text
  loc_15B1B04:       Me.Find 1 & var_D8 & "'", var_A8, var_8C
  loc_15B1B19:     End If
  loc_15B1B1C:   Else
  loc_15B1B24:     If (var_92 = CInt(&H11)) Then
  loc_15B1B3E:       If (Me.RecordCount > 0) Then
  loc_15B1B4C:         Set var_8C = ()
  loc_15B1B64:         Proc_6_137_1192FDC((), global_68)
  loc_15B1B72:       End If
  loc_15B1BC0:       Set var_88 = Me.Txt
  loc_15B1BC6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B1BCE:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B1BE6:       If (Index Or (var_D8 = vbNullString)) Then
  loc_15B1BE9:         Exit Sub
  loc_15B1BEA:       End If
  loc_15B1BF7:       Set var_88 = Me.Txt
  loc_15B1BFD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1C05:       var_D8 = var_8C.Text
  loc_15B1C17:       var_A8 = "Name"
  loc_15B1C52:       If CBool(CVar(var_D8) <> Me.Fields.Item(var_A8).Value) Then
  loc_15B1C5B:         Me.MoveFirst
  loc_15B1C7E:         Set var_88 = Me.Txt
  loc_15B1C84:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_15B1C8C:         0 = var_8C.Text
  loc_15B1CA5:         Me.Find 1 & var_D8 & "'", var_A8, var_8C
  loc_15B1CBA:       End If
  loc_15B1CBD:     Else
  loc_15B1CC5:       If (var_92 = CInt(6)) Then
  loc_15B1CD5:          = (var_E0).Top
  loc_15B1CE8:         Set var_D0 = Me.Txt
  loc_15B1CEE:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_D4)
  loc_15B1D09:         Set var_88 = Me.Txt
  loc_15B1D0F:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_15B1D27:         var_A8 = CVar(((var_8C.Top + var_E0) + var_D4.Height)) 'Single
  loc_15B1D36:         (var_A8).Top = 
  loc_15B1D57:          = (var_E0).Left
  loc_15B1D6A:         Set var_88 = Me.Txt
  loc_15B1D70:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_15B1D84:         var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B1D93:         (var_A8).Left = 
  loc_15B1DBA:         If (Me.RecordCount > 0) Then
  loc_15B1DC8:           Set var_8C = ()
  loc_15B1DE0:           Proc_6_137_1192FDC((), global_72)
  loc_15B1DEE:         End If
  loc_15B1E3C:         Set var_88 = Me.Txt
  loc_15B1E42:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B1E4A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B1E62:         If (Index Or (var_D8 = vbNullString)) Then
  loc_15B1E65:           Exit Sub
  loc_15B1E66:         End If
  loc_15B1E73:         Set var_88 = Me.Txt
  loc_15B1E79:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1E81:         var_D8 = var_8C.Text
  loc_15B1E89:         var_FC = CVar(var_D8) 'String
  loc_15B1ECE:         If CBool(var_FC <> Me.Fields.Item("Name").Value) Then
  loc_15B1ED7:           Me.MoveFirst
  loc_15B1EFC:           Set var_88 = Me.Txt
  loc_15B1F02:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B1F0A:           0 = var_8C.Text
  loc_15B1F18:           Proc_6_17_EAAE40(var_FC, CVar(var_D8), 1)
  loc_15B1F2E:           Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B1F46:         End If
  loc_15B1F49:       Else
  loc_15B1F51:         If (var_92 = CInt(&H12)) Then
  loc_15B1F61:            = (var_E0).Top
  loc_15B1F74:           Set var_D0 = Me.Txt
  loc_15B1F7A:           Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_D4)
  loc_15B1F82:           var_E4 = var_D4.Height
  loc_15B1F95:           Set var_88 = Me.Txt
  loc_15B1F9B:           Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_15B1FB3:           var_A8 = CVar(((var_8C.Top + var_E0) + var_E4)) 'Single
  loc_15B1FC2:           ("Name =").Top = 
  loc_15B1FE3:            = (var_E0).Left
  loc_15B1FF6:           Set var_88 = Me.Txt
  loc_15B1FFC:           Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_15B2010:           var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B201F:           ("Name =").Left = 
  loc_15B2046:           If (Me.RecordCount > 0) Then
  loc_15B2054:             Set var_8C = ()
  loc_15B206C:             Proc_6_137_1192FDC((), global_76)
  loc_15B207A:           End If
  loc_15B2083:           var_DC = Me.RecordCount
  loc_15B20C8:           Set var_88 = Me.Txt
  loc_15B20CE:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B20D6:           ((var_DC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B20EE:           If (Index Or (var_D8 = vbNullString)) Then
  loc_15B20F1:             Exit Sub
  loc_15B20F2:           End If
  loc_15B20FF:           Set var_88 = Me.Txt
  loc_15B2105:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B210D:           var_D8 = var_8C.Text
  loc_15B2115:           var_FC = CVar(var_D8) 'String
  loc_15B212E:           var_90 = Me.Fields
  loc_15B215A:           If CBool(var_FC <> var_90.Item("Name").Value) Then
  loc_15B2163:             Me.MoveFirst
  loc_15B2188:             Set var_88 = Me.Txt
  loc_15B218E:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B2196:             0 = var_8C.Text
  loc_15B21A4:             Proc_6_17_EAAE40(var_FC, CVar(var_D8), 1)
  loc_15B21BA:             Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B21D2:           End If
  loc_15B21D5:         Else
  loc_15B21DD:           If (var_92 = CInt(&H10)) Then
  loc_15B21EE:             Set var_8C = Me.Txt
  loc_15B21F4:             Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_90)
  loc_15B21FC:             var_E0 = var_90.Height
  loc_15B220E:              = (var_DC).Top
  loc_15B221A:             var_A8 = CVar((var_DC + var_E0)) 'Single
  loc_15B2229:             ("Name =").Top = 
  loc_15B2246:              = (var_E0).Left
  loc_15B2258:              = (var_E4).Left
  loc_15B226B:             Set var_88 = Me.Txt
  loc_15B2271:             Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15B2289:             var_A8 = CVar(((var_8C.Left + var_E0) + var_E4)) 'Single
  loc_15B2292:             Set var_D4 = ("Name =")
  loc_15B2298:             var_D4.Left = 
  loc_15B22C1:             If (Me.RecordCount > 0) Then
  loc_15B22CF:               Set var_8C = ()
  loc_15B22E7:               Proc_6_137_1192FDC((), global_80)
  loc_15B22F5:             End If
  loc_15B2343:             Set var_88 = Me.Txt
  loc_15B2349:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B2351:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B2369:             If (Index Or (var_D8 = vbNullString)) Then
  loc_15B236C:               Exit Sub
  loc_15B236D:             End If
  loc_15B237A:             Set var_88 = Me.Txt
  loc_15B2380:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B2388:             var_D8 = var_8C.Text
  loc_15B2390:             var_FC = CVar(var_D8) 'String
  loc_15B23B1:             var_D0 = Me.Fields.Item("Name")
  loc_15B23D5:             If CBool(var_FC <> var_D0.Value) Then
  loc_15B23DE:               Me.MoveFirst
  loc_15B2403:               Set var_88 = Me.Txt
  loc_15B2409:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B2411:               0 = var_8C.Text
  loc_15B241F:               Proc_6_17_EAAE40(var_FC, CVar(var_D8), 1)
  loc_15B2435:               Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B244D:             End If
  loc_15B2450:           Else
  loc_15B2458:             If (var_92 = CInt(8)) Then
  loc_15B246A:               Set var_88 = Me.Txt
  loc_15B2470:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B2478:               var_8C.SelStart = 0
  loc_15B2491:               Set var_88 = Me.Txt
  loc_15B2497:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B249F:               var_D8 = var_8C.Text
  loc_15B24B2:               Set var_90 = Me.Txt
  loc_15B24B8:               Call 0.Method_Txt_GotFocus0 (Index, var_D0)
  loc_15B24C0:               var_D0.SelLength = Len(var_D8)
  loc_15B24D6:             Else
  loc_15B24DE:               If (var_92 = CInt(9)) Then
  loc_15B24EE:                  = (var_E0).Top
  loc_15B2501:                 Set var_D0 = Me.Txt
  loc_15B2507:                 Call 0.Method_Txt_GotFocus0 (CInt(9), var_D4)
  loc_15B250F:                 var_E4 = var_D4.Height
  loc_15B2522:                 Set var_88 = Me.Txt
  loc_15B2528:                 Call 0.Method_Txt_GotFocus0 (CInt(9), var_8C)
  loc_15B2540:                 var_A8 = CVar(((var_8C.Top + var_E0) + var_E4)) 'Single
  loc_15B254F:                 ("Name =").Top = 
  loc_15B2570:                  = (var_E0).Left
  loc_15B2583:                 Set var_88 = Me.Txt
  loc_15B2589:                 Call 0.Method_Txt_GotFocus0 (CInt(9), var_8C)
  loc_15B259D:                 var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B25AC:                 ("Name =").Left = 
  loc_15B25D3:                 If (Me.RecordCount > 0) Then
  loc_15B25E1:                   Set var_8C = ()
  loc_15B25F9:                   Proc_6_137_1192FDC((), global_64)
  loc_15B2607:                 End If
  loc_15B2655:                 Set var_88 = Me.Txt
  loc_15B265B:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B2663:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B267B:                 If (Index Or (var_D8 = vbNullString)) Then
  loc_15B267E:                   Exit Sub
  loc_15B267F:                 End If
  loc_15B268C:                 Set var_88 = Me.Txt
  loc_15B2692:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B269A:                 var_D8 = var_8C.Text
  loc_15B26AC:                 var_A8 = "Name"
  loc_15B26C3:                 var_D0 = Me.Fields.Item(var_A8)
  loc_15B26E7:                 If CBool(CVar(var_D8) <> var_D0.Value) Then
  loc_15B26F0:                   Me.MoveFirst
  loc_15B2713:                   Set var_88 = Me.Txt
  loc_15B2719:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_15B2721:                   0 = var_8C.Text
  loc_15B273A:                   Me.Find 1 & var_D8 & "'", var_A8, var_8C
  loc_15B274F:                 End If
  loc_15B2752:               Else
  loc_15B275A:                 If (var_92 = CInt(4)) Then
  loc_15B276B:                   Set var_90 = Me.Txt
  loc_15B2771:                   Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_D0)
  loc_15B2779:                   var_E0 = var_D0.Height
  loc_15B278B:                    = (var_E4).Top
  loc_15B279E:                   Set var_88 = Me.Txt
  loc_15B27A4:                   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15B27BC:                   var_A8 = CVar(((var_8C.Top + var_E0) + var_E4)) 'Single
  loc_15B27CB:                   (var_A8).Top = 
  loc_15B27EC:                    = (var_E0).Left
  loc_15B27FF:                   Set var_88 = Me.Txt
  loc_15B2805:                   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15B2819:                   var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B2828:                   (var_A8).Left = 
  loc_15B284F:                   If (Me.RecordCount > 0) Then
  loc_15B285D:                     Set var_8C = ()
  loc_15B2875:                     Proc_6_137_1192FDC((), global_88)
  loc_15B2883:                   End If
  loc_15B28D1:                   Set var_88 = Me.Txt
  loc_15B28D7:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B28DF:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B28F7:                   If (Index Or (var_D8 = vbNullString)) Then
  loc_15B28FA:                     Exit Sub
  loc_15B28FB:                   End If
  loc_15B2908:                   Set var_88 = Me.Txt
  loc_15B290E:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B2916:                   var_D8 = var_8C.Text
  loc_15B291E:                   var_FC = CVar(var_D8) 'String
  loc_15B2963:                   If CBool(var_FC <> Me.Fields.Item("Name").Value) Then
  loc_15B296C:                     Me.MoveFirst
  loc_15B2991:                     Set var_88 = Me.Txt
  loc_15B2997:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B299F:                     0 = var_8C.Text
  loc_15B29AD:                     Proc_6_17_EAAE40(var_FC, CVar(var_D8), 1)
  loc_15B29C3:                     Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B29DB:                   End If
  loc_15B29DB:                 End If
  loc_15B29DB:               End If
  loc_15B29DB:             End If
  loc_15B29DB:           End If
  loc_15B29DB:         End If
  loc_15B29DB:       End If
  loc_15B29DB:     End If
  loc_15B29DB:   End If
  loc_15B29DB: End If
  loc_15B29DB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '146B44C
  'Data Table: 5502C4
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A0 As Variant
  Dim var_AC As Variant
  Dim var_B8 As Variant
  Dim Me As Recordset15
  Dim var_90 As Frame
  Dim var_9C As Frame
  Dim var_110 As Variant
  Dim var_A8 As Frame
  Dim var_120 As Variant
  Dim var_B4 As Frame
  Dim Shift As Integer
  loc_146A88B: var_88 = Shift
  loc_146A898: If (CLng(Shift) = &H1B) Then
  loc_146A89B:   Call Proc_125_72_FE3574(var_88)
  loc_146A8A0:   Exit Sub
  loc_146A8A1: End If
  loc_146A8A4: var_8A = KeyCode
  loc_146A8AF: If (var_8A = CInt(1)) Then
  loc_146A8D4:   Set var_90 = Me.Txt
  loc_146A8DA:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_146A8E2:   var_98 = var_94.Left
  loc_146A8F4:   Set var_9C = Me.Txt
  loc_146A8FA:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_146A902:   var_A4 = var_A0.Top
  loc_146A914:   Set var_A8 = Me.Txt
  loc_146A91A:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_146A922:   var_B0 = var_AC.Height
  loc_146A934:   Set var_B4 = Me.Txt
  loc_146A93A:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_146A942:   var_BC = var_B8.Width
  loc_146A98A:   Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_146A9B1: Else
  loc_146A9B9:   If (var_8A = CInt(7)) Then
  loc_146A9C0:     Set var_A8 = CInt((var_A4 + var_B0))(CInt(var_98))
  loc_146A9E4:     Set var_9C = Nothing
  loc_146AA16:     Proc_6_69_134A630(var_A8, Me.Txt, CInt(7), global_60, Shift, 0)
  loc_146AA85:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146AA93:       Set var_94 = 0(570(CInt(var_BC)))
  loc_146AAAB:       Proc_6_138_106E830(var_9C(1)(1), global_60, KeyCode)
  loc_146AAB9:     End If
  loc_146AABC:   Else
  loc_146AAC4:     If (var_8A = CInt(4)) Then
  loc_146AAEF:       Set var_9C = Nothing
  loc_146AB21:       Proc_6_69_134A630(var_8A(Me.Txt), Me.Txt, CInt(4), global_88, Shift)
  loc_146AB90:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146AB97:         Set var_9C = 1(0)
  loc_146AB9E:         Set var_94 = ()(var_9C)
  loc_146ABB6:         Proc_6_138_106E830(var_9C, global_88, KeyCode)
  loc_146ABC4:       End If
  loc_146ABC7:     Else
  loc_146ABCF:       If (var_8A = CInt(&H11)) Then
  loc_146ABFA:         Set var_9C = Nothing
  loc_146AC2C:         Proc_6_69_134A630(0(Me.Txt), Me.Txt, CInt(&H11), global_68, Shift)
  loc_146AC9B:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146ACA2:           Set var_9C = 1(0)
  loc_146ACA9:           Set var_94 = ()(var_9C)
  loc_146ACC1:           Proc_6_138_106E830(var_9C, global_68, KeyCode)
  loc_146ACCF:         End If
  loc_146ACD2:       Else
  loc_146ACDA:         If (var_8A = CInt(6)) Then
  loc_146AD05:           Set var_9C = Nothing
  loc_146AD37:           Proc_6_69_134A630(0(Me.Txt), Me.Txt, CInt(6), global_72, Shift)
  loc_146ADA6:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146ADAD:             Set var_9C = 1(0)
  loc_146ADB4:             Set var_94 = ()(var_9C)
  loc_146ADCC:             Proc_6_138_106E830(var_9C, global_72, KeyCode)
  loc_146ADDA:           End If
  loc_146ADDD:         Else
  loc_146ADE5:           If (var_8A = CInt(&H12)) Then
  loc_146AE10:             Set var_9C = Nothing
  loc_146AE42:             Proc_6_69_134A630(0(Me.Txt), Me.Txt, CInt(&H12), global_76, Shift)
  loc_146AEB1:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146AEB8:               Set var_9C = 1(0)
  loc_146AEBF:               Set var_94 = ()(var_9C)
  loc_146AED7:               Proc_6_138_106E830(var_9C, global_76, KeyCode)
  loc_146AEE5:             End If
  loc_146AEE8:           Else
  loc_146AEF0:             If (var_8A = CInt(&H10)) Then
  loc_146AF1B:               Set var_9C = Nothing
  loc_146AF4D:               Proc_6_69_134A630(0(Me.Txt), Me.Txt, CInt(&H10), global_80, Shift)
  loc_146AFBC:               If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146AFC3:                 Set var_9C = 1(0)
  loc_146AFCA:                 Set var_94 = ()(var_9C)
  loc_146AFE2:                 Proc_6_138_106E830(var_9C, global_80, KeyCode)
  loc_146AFF0:               End If
  loc_146AFF3:             Else
  loc_146AFFB:               If (var_8A = CInt(9)) Then
  loc_146B01B:                 Set var_A0 = ()
  loc_146B026:                 Set var_9C = Nothing
  loc_146B058:                 Proc_6_69_134A630(0(Me.Txt), Me.Txt, CInt(9), global_64, Shift)
  loc_146B0C7:                 If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_146B0CE:                   Set var_9C = 1(0)
  loc_146B0D5:                   Set var_94 = var_A0(var_9C)
  loc_146B0ED:                   Proc_6_138_106E830(var_9C, global_64, KeyCode)
  loc_146B0FB:                 End If
  loc_146B0FE:               Else
  loc_146B106:                 If (var_8A = CInt(&H14)) Then
  loc_146B113:                   If (CLng(Shift) = &H2D) Then
  loc_146B119:                     Call Proc_125_81_EE5048(var_E0, var_94)
  loc_146B12B:                     Set var_90 = Me.Txt
  loc_146B131:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_146B155:                     Set var_90 = Me.Txt
  loc_146B15B:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_146B176:                     Set var_9C = Me.Txt
  loc_146B17C:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_146B184:                     var_A0.SelStart = Len(var_E0)
  loc_146B197:                     Exit Sub
  loc_146B198:                   End If
  loc_146B198:                 End If
  loc_146B198:               End If
  loc_146B198:             End If
  loc_146B198:           End If
  loc_146B198:         End If
  loc_146B198:       End If
  loc_146B198:     End If
  loc_146B198:   End If
  loc_146B198: End If
  loc_146B1E8: var_110 = (( And (CBool((( And (CBool(0((Me.FrmList.Visible = 0)).Visible) = 0))).Visible) = 0))).Visible
  loc_146B1FF: var_120 = (( And (CBool(var_110) = 0))).Visible
  loc_146B275: If ( And (CBool((( And (CBool((( And (CBool((( And (CBool(var_120) = 0))).Visible) = 0))).Visible) = 0))).Visible) = 0)) Then
  loc_146B298:   If (((CLng(Shift) = &H26) And (global_116 = 6)) And (KeyCode = CInt(7))) Then
  loc_146B29B:     Exit Sub
  loc_146B29C:   End If
  loc_146B2BA:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_146B2C7:     If (CLng(Shift) = &H28) Then
  loc_146B2CA:       Exit Sub
  loc_146B2CB:     End If
  loc_146B302:     If (MsgBox("OK?", 4, "Save Detail", var_110, var_120) = 6) Then
  loc_146B305:       Call Proc_125_78_14CB2E0()
  loc_146B30C:       Shift = 0
  loc_146B30F:     End If
  loc_146B30F:     Exit Sub
  loc_146B313:   Else
  loc_146B331:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H14))) Then
  loc_146B33E:       If (CLng(Shift) = &H28) Then
  loc_146B341:         Exit Sub
  loc_146B342:       End If
  loc_146B379:       If (MsgBox("OK?", 4, "Save Detail", var_110, var_120) = 6) Then
  loc_146B37C:         Call Proc_125_78_14CB2E0(Shift)
  loc_146B383:         Shift = 0
  loc_146B386:       End If
  loc_146B386:       Exit Sub
  loc_146B38A:     Else
  loc_146B3A8:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H12))) Then
  loc_146B3B5:         If (CLng(Shift) = &H28) Then
  loc_146B3B8:           Exit Sub
  loc_146B3B9:         End If
  loc_146B3C5:         Call Txt_Validate(CInt(&H12))
  loc_146B401:         If (MsgBox("OK?", 4, "Save Detail", var_110, var_120) = 6) Then
  loc_146B404:           Call Proc_125_78_14CB2E0(0)
  loc_146B40B:           Shift = 0
  loc_146B40E:         End If
  loc_146B40E:         Exit Sub
  loc_146B40F:       End If
  loc_146B40F:     End If
  loc_146B40F:   End If
  loc_146B424:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_146B42D:     Proc_6_75_E5335C(Shift, arg_14)
  loc_146B432:   End If
  loc_146B43C:   If (CLng(Shift) = &H26) Then
  loc_146B445:     Proc_6_76_E533C8(Shift, arg_14)
  loc_146B44A:   End If
  loc_146B44A: End If
  loc_146B44A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7EF8C
  'Data Table: 5502C4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As TextBox
  Dim var_94 As Variant
  loc_F7EE42: If (arg_10 = &HD) Then
  loc_F7EE47:   arg_10 = 0
  loc_F7EE4A: End If
  loc_F7EE4D: Proc_6_58_E06050(arg_10)
  loc_F7EE58: Proc_6_133_E7FB08(var_94, arg_10)
  loc_F7EE61: arg_10 = CInt(var_94)
  loc_F7EE6A: var_96 = KeyAscii
  loc_F7EE75: If (var_96 = CInt(8)) Then
  loc_F7EE82:   Set var_9C = Me.Txt
  loc_F7EE88:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_F7EEA3:   Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_F7EEB2: Else
  loc_F7EEBA:   If (var_96 = CInt(&HD)) Then
  loc_F7EEC7:     Set var_9C = Me.Txt
  loc_F7EECD:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_F7EEE8:     Proc_6_42_129B55C(var_A0, arg_10, 4)
  loc_F7EEF7:   Else
  loc_F7EEFF:     If (var_96 = CInt(9)) Then
  loc_F7EF1E:       If (CBool(arg_10(0).Visible) = &HFF) Then
  loc_F7EF4B:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10)
  loc_F7EF65:         Set var_A0 = (arg_10)
  loc_F7EF7D:         Proc_6_138_106E830(0("Name"), global_64)
  loc_F7EF8B:       End If
  loc_F7EF8B:     End If
  loc_F7EF8B:   End If
  loc_F7EF8B: End If
  loc_F7EF8B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11825B0
  'Data Table: 5502C4
  Dim var_86 As Integer
  loc_11821CB: var_86 = KeyCode
  loc_11821D6: If (var_86 = CInt(7)) Then
  loc_11821F5:   If (CBool((var_86).Visible) = &HFF) Then
  loc_118222D:     Proc_6_68_12A2818((), Me.Txt, KeyCode)
  loc_118224B:     Set var_A0 = ("Name")
  loc_1182263:     Proc_6_138_106E830(Shift(global_60), global_60)
  loc_1182271:   End If
  loc_1182274: Else
  loc_118227C:   If (var_86 = CInt(4)) Then
  loc_118229B:     If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_11822D3:       Proc_6_68_12A2818((), Me.Txt, KeyCode)
  loc_11822F1:       Set var_A0 = ("Name")
  loc_1182309:       Proc_6_138_106E830(Shift(global_88), global_88)
  loc_1182317:     End If
  loc_118231A:   Else
  loc_1182322:     If (var_86 = CInt(&H11)) Then
  loc_1182341:       If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_1182379:         Proc_6_68_12A2818((), Me.Txt, KeyCode)
  loc_1182397:         Set var_A0 = ("Name")
  loc_11823AF:         Proc_6_138_106E830(Shift(global_68), global_68)
  loc_11823BD:       End If
  loc_11823C0:     Else
  loc_11823C8:       If (var_86 = CInt(6)) Then
  loc_11823E7:         If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_118241F:           Proc_6_68_12A2818((), Me.Txt, KeyCode)
  loc_118243D:           Set var_A0 = ("Name")
  loc_1182455:           Proc_6_138_106E830(Shift(global_72), global_72)
  loc_1182463:         End If
  loc_1182466:       Else
  loc_118246E:         If (var_86 = CInt(&H12)) Then
  loc_118248D:           If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_11824C5:             Proc_6_68_12A2818((), Me.Txt, KeyCode)
  loc_11824E3:             Set var_A0 = ("Name")
  loc_11824FB:             Proc_6_138_106E830(Shift(global_76), global_76)
  loc_1182509:           End If
  loc_118250C:         Else
  loc_1182514:           If (var_86 = CInt(&H10)) Then
  loc_1182533:             If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_118256B:               Proc_6_68_12A2818((), Me.Txt, KeyCode)
  loc_1182589:               Set var_A0 = ("Name")
  loc_11825A1:               Proc_6_138_106E830(Shift(global_80), global_80)
  loc_11825AF:             End If
  loc_11825AF:           End If
  loc_11825AF:         End If
  loc_11825AF:       End If
  loc_11825AF:     End If
  loc_11825AF:   End If
  loc_11825AF: End If
  loc_11825AF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A3A4
  'Data Table: 5502C4
  loc_E4A382: Set var_88 = Me.Txt
  loc_E4A388: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A396: Proc_6_73_E23294(var_8C)
  loc_E4A3A2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '146A824
  'Data Table: 5502C4
  Dim var_8E As Integer
  Dim arg_10 As Integer
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_DC As String
  Dim var_EC As TextBox
  Dim var_F8 As TextBox
  Dim var_120 As Double
  loc_1469C3F: var_8E = Cancel
  loc_1469C4A: If (var_8E = CInt(1)) Then
  loc_1469C58:   Set var_94 = Me.Txt
  loc_1469C5E:   Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1469C87:   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1469C8C:     arg_10 = &HFF
  loc_1469C8F:     Exit Sub
  loc_1469C90:   End If
  loc_1469C9E:   Set var_94 = Me.Txt
  loc_1469CA4:   Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_DC)
  loc_1469CAC:   arg_10 = var_98.Text
  loc_1469CC3:   If (var_DC = "Advance") Then
  loc_1469CCC:     global_124 = "AD"
  loc_1469CD6:     Call Proc_125_74_1159C64(MemVar_1F95044, var_DC)
  loc_1469CE1:   Else
  loc_1469CE7:     global_124 = "AR"
  loc_1469CF1:     Call Proc_125_74_1159C64(MemVar_1F95044, var_DC)
  loc_1469CF9:   End If
  loc_1469CFC: Else
  loc_1469D04:   If (var_8E = CInt(2)) Then
  loc_1469D15:     Set var_94 = Me.Txt
  loc_1469D1B:     Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1469D23:     var_DC = var_98.Text
  loc_1469D3A:     If (var_DC <> vbNullString) Then
  loc_1469D43:       Call Proc_125_74_1159C64(MemVar_1F95044, var_DC)
  loc_1469D4E:     Else
  loc_1469D50:       arg_10 = &HFF
  loc_1469D53:       Exit Sub
  loc_1469D54:     End If
  loc_1469D57:   Else
  loc_1469D5F:     If (var_8E = CInt(&H12)) Then
  loc_1469DB0:       Set var_94 = Me.Txt
  loc_1469DB6:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_1469DBE:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1469DD6:       If (arg_10 Or (var_DC = vbNullString)) Then
  loc_1469DE6:         Set var_94 = Me.Txt
  loc_1469DEC:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469DF4:         var_98.Text = vbNullString
  loc_1469E0D:         Set var_94 = Me.Txt
  loc_1469E13:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469E1B:         var_98.Tag = vbNullString
  loc_1469E2A:       Else
  loc_1469E65:         Set var_E8 = Me.Txt
  loc_1469E6B:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469E73:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1469EA6:         var_98 = Me.Fields.Item("Code")
  loc_1469EB7:         var_DC = CStr(var_98.Value)
  loc_1469EC4:         Set var_E8 = Me.Txt
  loc_1469ECA:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469ED2:         var_EC.Tag = var_DC
  loc_1469EE8:       End If
  loc_1469EEB:     Else
  loc_1469EF3:       If (var_8E = CInt(4)) Then
  loc_1469F44:         Set var_94 = Me.Txt
  loc_1469F4A:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_1469F52:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1469F6A:         If (var_8E Or (var_DC = vbNullString)) Then
  loc_1469F7A:           Set var_94 = Me.Txt
  loc_1469F80:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469F88:           var_98.Text = vbNullString
  loc_1469FA1:           Set var_94 = Me.Txt
  loc_1469FA7:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469FAF:           var_98.Tag = vbNullString
  loc_1469FC9:           Set var_94 = Me.Txt
  loc_1469FCF:           Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_1469FD7:           var_98.Text = vbNullString
  loc_1469FF1:           Set var_94 = Me.Txt
  loc_1469FF7:           Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_1469FFF:           var_98.Tag = vbNullString
  loc_146A00E:         Else
  loc_146A049:           Set var_E8 = Me.Txt
  loc_146A04F:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A057:           var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146A0A8:           Set var_E8 = Me.Txt
  loc_146A0AE:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A0B6:           var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_146A0E6:           var_98 = Me.Fields.Item("PartyName")
  loc_146A105:           Set var_E8 = Me.Txt
  loc_146A10B:           Call 0.Method_Txt_Validate0 (CInt(6), var_EC)
  loc_146A113:           var_EC.Text = Proc_6_38_E69628(CVar(var_98))
  loc_146A127:         End If
  loc_146A12A:       Else
  loc_146A132:         If (var_8E = CInt(3)) Then
  loc_146A143:           Set var_94 = Me.Txt
  loc_146A149:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146A170:           Set var_E8 = Me.Txt
  loc_146A176:           Call 0.Method_Txt_Validate0 (CInt(3), var_EC)
  loc_146A17E:           var_EC.Text = Proc_6_34_14EEAAC(var_98.Text)
  loc_146A19B:           Call Proc_125_74_1159C64(MemVar_1F95044)
  loc_146A1B1:           Set var_94 = Me.Txt
  loc_146A1B7:           Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146A1D6:           If (var_98.Text = vbNullString) Then
  loc_146A1DB:             arg_10 = &HFF
  loc_146A1DE:           End If
  loc_146A1E1:         Else
  loc_146A1E9:           If Not (var_8E = CInt(&HF)) Then
  loc_146A1F4:             If (var_8E = CInt(&HC)) Then
  loc_146A1F7:             End If
  loc_146A201:             Set var_94 = Me.Txt
  loc_146A207:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146A227:             Set var_EC = Me.Txt
  loc_146A22D:             Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_146A235:             var_F8.Text = Proc_6_33_15125B8(var_98, arg_10)
  loc_146A24B:           Else
  loc_146A253:             If (var_8E = CInt(7)) Then
  loc_146A263:               Set var_94 = Me.Txt
  loc_146A269:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146A288:               If (var_98.Text <> vbNullString) Then
  loc_146A2C6:                 Set var_E8 = Me.Txt
  loc_146A2CC:                 Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A2D4:                 var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146A325:                 Set var_E8 = Me.Txt
  loc_146A32B:                 Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A333:                 var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_146A363:                 var_98 = Me.Fields.Item("PayType")
  loc_146A374:                 var_DC = Proc_6_38_E69628(CVar(var_98))
  loc_146A398:                 Set var_94 = Me.Txt
  loc_146A39E:                 Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_146A3A6:                 var_98.Text = var_DC
  loc_146A3BE:                 var_DC(0).Visible = 
  loc_146A3D2:                 (0).Visible = 
  loc_146A3E6:                 Me.FrTxnNo.Visible = False
  loc_146A3FA:                 (0).Visible = 
  loc_146A41C:                 var_98 = Me.Fields.Item("PayType")
  loc_146A431:                 Call Proc_125_77_111BB38(Proc_6_38_E69628(CVar(var_98)))
  loc_146A442:               Else
  loc_146A44F:                 Set var_94 = Me.Txt
  loc_146A455:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146A45D:                 var_98.Text = vbNullString
  loc_146A476:                 Set var_94 = Me.Txt
  loc_146A47C:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146A484:                 var_98.Tag = vbNullString
  loc_146A490:               End If
  loc_146A493:             Else
  loc_146A49B:               If (var_8E = CInt(8)) Then
  loc_146A4A8:                 Set var_94 = Me.Txt
  loc_146A4AE:                 Call 0.Method_Txt_Validate0 (Cancel)
  loc_146A4BA:                 Proc_6_40_EA5C80(CVar(var_98))
  loc_146A4BF:                 var_120 = var_98
  loc_146A4E9:                 var_DC = CStr(Format(CVar(var_120), "0.00"))
  loc_146A4F7:                 Set var_E8 = Me.Txt
  loc_146A4FD:                 Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_DC)
  loc_146A505:                 var_EC.Text = 1
  loc_146A524:               Else
  loc_146A52C:                 If (var_8E = CInt(9)) Then
  loc_146A57D:                   Set var_94 = Me.Txt
  loc_146A583:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_146A58B:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146A5A3:                   If (1 Or (var_DC = vbNullString)) Then
  loc_146A5B3:                     Set var_94 = Me.Txt
  loc_146A5B9:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146A5C1:                     var_98.Tag = vbNullString
  loc_146A5CD:                     Exit Sub
  loc_146A5CE:                   End If
  loc_146A609:                   Set var_E8 = Me.Txt
  loc_146A60F:                   Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A617:                   var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146A64A:                   var_98 = Me.Fields.Item("Code")
  loc_146A65B:                   var_DC = CStr(var_98.Value)
  loc_146A668:                   Set var_E8 = Me.Txt
  loc_146A66E:                   Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A676:                   var_EC.Tag = var_DC
  loc_146A68F:                 Else
  loc_146A697:                   If (var_8E = CInt(&H10)) Then
  loc_146A6E8:                     Set var_94 = Me.Txt
  loc_146A6EE:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_146A6F6:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146A70E:                     If (var_120 Or (var_DC = vbNullString)) Then
  loc_146A71E:                       Set var_94 = Me.Txt
  loc_146A724:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146A72C:                       var_98.Text = vbNullString
  loc_146A745:                       Set var_94 = Me.Txt
  loc_146A74B:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146A753:                       var_98.Tag = vbNullString
  loc_146A762:                     Else
  loc_146A79D:                       Set var_E8 = Me.Txt
  loc_146A7A3:                       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A7AB:                       var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146A7FC:                       Set var_E8 = Me.Txt
  loc_146A802:                       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_146A80A:                       var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_146A820:                     End If
  loc_146A820:                   End If
  loc_146A820:                 End If
  loc_146A820:               End If
  loc_146A820:             End If
  loc_146A820:           End If
  loc_146A820:         End If
  loc_146A820:       End If
  loc_146A820:     End If
  loc_146A820:   End If
  loc_146A820: End If
  loc_146A820: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F56338
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56218: On Error Goto loc_F56332
  loc_F5622A: (False).Visible = 
  loc_F56249: If (Me.RecordCount > 0) Then
  loc_F56288:   Set var_B4 = Me.Txt
  loc_F5628E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(6), var_B8)
  loc_F56296:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F562C9:   var_B0 = Me.Fields.Item("Code")
  loc_F562E8:   Set var_B4 = Me.Txt
  loc_F562EE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(6), var_B8)
  loc_F562F6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5630C: End If
  loc_F56317: Set var_A8 = Me.Txt
  loc_F5631D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(6))
  loc_F56325: var_B0.SetFocus
  loc_F56331: Exit Sub
  loc_F56332: ' Referenced from: F56218
  loc_F56332: Proc_6_60_E63754(var_B0)
  loc_F56337: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA34C0
  'Data Table: 5502C4
  Dim var_A8 As Variant
  loc_EA3440: Set var_88 = ()
  loc_EA346A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3472: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA3492: Set var_BC = ()
  loc_EA34AE: Proc_6_138_106E830((Txt.DispID_1B), global_72)
  loc_EA34BC: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'FAA730
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_FAA5B3: (False).Visible = 
  loc_FAA5CD: If (global_116 = 6) Then
  loc_FAA5E7:   If (Me.RecordCount > 0) Then
  loc_FAA626:     Set var_B8 = Me.Txt
  loc_FAA62C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(7), var_BC)
  loc_FAA634:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAA686:     Set var_B8 = Me.Txt
  loc_FAA68C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&H14), var_BC)
  loc_FAA694:     var_BC.Text = CStr(Me.Fields.Item("PayType").Value)
  loc_FAA6C7:     var_B4 = Me.Fields.Item("Code")
  loc_FAA6E6:     Set var_B8 = Me.Txt
  loc_FAA6EC:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(7), var_BC)
  loc_FAA6F4:     var_BC.Tag = CStr(var_B4.Value)
  loc_FAA70A:   End If
  loc_FAA715:   Set var_A8 = Me.Txt
  loc_FAA71B:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(7), var_B4)
  loc_FAA723:   var_B4.SetFocus
  loc_FAA72F: End If
  loc_FAA72F: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA19F4
  'Data Table: 5502C4
  Dim var_A8 As Variant
  loc_EA1974: Set var_88 = ()
  loc_EA199E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA19A6: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA19C6: Set var_BC = ()
  loc_EA19E2: Proc_6_138_106E830((Txt.DispID_1B), global_60)
  loc_EA19F0: Exit Sub
End Sub

Public Function global_52Get() '55206C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '55207B
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EEAC18
  'Data Table: 5502C4
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EEAB6A: On Error Goto loc_EEABD3
  loc_EEAB73: Me.MoveFirst
  loc_EEAB8D: var_8C = "Searchcode='" & MyValue
  loc_EEAB9D: Me.Find var_8C & "'", 0, 1
  loc_EEABC5: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_EEABCD: Call Proc_125_70_156BDD8(0)
  loc_EEABD2: Exit Sub
  loc_EEABD3: ' Referenced from: EEAB6A
  loc_EEABDB: Set var_A8 = Err()
  loc_EEABE1: Call 0.Method_arg_2C (var_8C)
  loc_EEAC02: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EEAC15: Exit Sub
  loc_EEAC16: Exit Sub
End Sub

Public Property Get OpenMode() 'E09B50
  'Data Table: 5502C4
  loc_E09B49: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E01DB0
  'Data Table: 5502C4
  loc_E01DAA: global_112 = vNewValue
  loc_E01DAD: Exit Sub
End Sub

Public Property Get OpenType() 'E08E10
  'Data Table: 5502C4
  loc_E08E09: OpenType = global_116
End Sub

Public Property Let OpenType(vNewValue) 'E018C4
  'Data Table: 5502C4
  loc_E018BE: global_116 = vNewValue
  loc_E018C1: Exit Sub
End Sub

Public Property Get AdvType() 'E1029C
  'Data Table: 5502C4
  loc_E10290: var_88 = global_124
  loc_E10293: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E0D9D4
  'Data Table: 5502C4
  loc_E0D9CC: global_124 = vNewValue
  loc_E0D9D0: Exit Sub
End Sub

Public Property Get IdNo() 'E0D98C
  'Data Table: 5502C4
  loc_E0D980: var_88 = global_120
  loc_E0D983: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E0D8FC
  'Data Table: 5502C4
  loc_E0D8F4: global_120 = vNewValue
  loc_E0D8F8: Exit Sub
End Sub

Public Property Get PersonCode() 'E0D8B4
  'Data Table: 5502C4
  loc_E0D8A8: var_88 = global_132
  loc_E0D8AB: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E0FDD4
  'Data Table: 5502C4
  loc_E0FDCC: global_132 = vNewValue
  loc_E0FDD0: Exit Sub
End Sub

Public Property Get pDocId() 'E0F99C
  'Data Table: 5502C4
  loc_E0F990: var_88 = global_128
  loc_E0F993: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E0F9E4
  'Data Table: 5502C4
  loc_E0F9DC: global_128 = vNewValue
  loc_E0F9E0: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E0D6BC
  'Data Table: 5502C4
  loc_E0D6B0: var_88 = global_136
  loc_E0D6B3: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E0D62C
  'Data Table: 5502C4
  loc_E0D624: global_136 = vNewValue
  loc_E0D628: Exit Sub
End Sub

Public Property Get PRoomCat() 'E0D59C
  'Data Table: 5502C4
  loc_E0D590: var_88 = global_160
  loc_E0D593: PRoomCat = 
  loc_E0D59A: If ( = ) Then Exit Sub
  loc_E0D59A: End If
End Sub

Public Property Let PRoomCat(vNewValue) 'E0D554
  'Data Table: 5502C4
  loc_E0D54C: global_160 = vNewValue
  loc_E0D550: Exit Sub
End Sub

Public Property Get PRoomtype() 'E0D50C
  'Data Table: 5502C4
  loc_E0D500: var_88 = global_164
  loc_E0D503: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E0D35C
  'Data Table: 5502C4
  loc_E0D354: global_164 = vNewValue
  loc_E0D358: Exit Sub
End Sub

Public Property Get PBillAmt() 'E0D314
  'Data Table: 5502C4
  loc_E0D30A: var_88 = CStr(global_140)
  loc_E0D30D: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E0D2CC
  'Data Table: 5502C4
  loc_E0D2C6: global_140 = CDbl(vNewValue)
  loc_E0D2C9: Exit Sub
End Sub

Public Sub Proc_125_67_F672D4(arg_C) 'F672D4
  'Data Table: 5502C4
  Dim var_98 As TextBox
  loc_F671A6: Set var_8C = Me.Txt
  loc_F671AC: Call 0.Method_Proc_125_67_F672D48 (var_8E, var_86)
  loc_F671B9: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F671CF:   Set var_8C = Me.Txt
  loc_F671D5:   Call 0.Method_Proc_125_67_F672D40 (CInt(var_86), var_98)
  loc_F671DD:   var_98.Enabled = arg_C
  loc_F671EC: Next var_92 'Byte
  loc_F671FF: Set var_8C = Me.Txt
  loc_F67205: Call 0.Method_Proc_125_67_F672D40 (CInt(2), var_98)
  loc_F6720D: var_98.Enabled = False
  loc_F67226: Set var_8C = Me.Txt
  loc_F6722C: Call 0.Method_Proc_125_67_F672D40 (CInt(3), var_98)
  loc_F67234: var_98.Enabled = False
  loc_F6724D: Set var_8C = Me.Txt
  loc_F67253: Call 0.Method_Proc_125_67_F672D40 (CInt(0), var_98)
  loc_F6725B: var_98.Enabled = False
  loc_F67274: Set var_8C = Me.Txt
  loc_F6727A: Call 0.Method_Proc_125_67_F672D40 (CInt(6), var_98)
  loc_F67282: var_98.Enabled = False
  loc_F672A5: If (OpenMode = 1) Then
  loc_F672B5:   Set var_8C = Me.Txt
  loc_F672BB:   Call 0.Method_Proc_125_67_F672D40 (CInt(4), var_98)
  loc_F672C3:   var_98.Enabled = False
  loc_F672CF:   GoTo loc_F672D2
  loc_F672D2:   ' Referenced from: F672CF
  loc_F672D2: End If
  loc_F672D2: Exit Sub
End Sub

Public Sub Proc_125_68_F682EC
  'Data Table: 5502C4
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_F681C6: Set var_8C = Me.Txt
  loc_F681CC: Call 0.Method_Proc_125_68_F682EC8 (var_8E, var_86)
  loc_F681D9: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F681EF:   Set var_8C = Me.Txt
  loc_F681F5:   Call 0.Method_Proc_125_68_F682EC0 (CInt(var_86), var_98)
  loc_F681FD:   var_98.Text = vbNullString
  loc_F68219:   Set var_8C = Me.Txt
  loc_F6821F:   Call 0.Method_Proc_125_68_F682EC0 (CInt(var_86), var_98)
  loc_F68227:   var_98.Tag = vbNullString
  loc_F68236: Next var_92 'Byte
  loc_F68273: Set var_8C = Me.Txt
  loc_F68279: Call 0.Method_Proc_125_68_F682EC0 (CInt(3), var_98, CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy")))
  loc_F68281: var_98.Text = 1
  loc_F682A4: Set var_8C = 1(1)
  loc_F682DA: Set var_8C = Txt.DispID_4("1").Name(1)
  loc_F682E8: Exit Sub
End Sub

Public Sub Proc_125_69_11E2D90
  'Data Table: 5502C4
  Dim var_90 As Long
  Dim var_A0 As Variant
  Dim var_B4 As Frame
  Dim var_BC As Frame
  Dim var_CC As Variant
  loc_11E290B: (CDbl(1455)).Top = 
  loc_11E2921: (CDbl(0)).Left = 
  loc_11E292C: var_8C = OpenType
  loc_11E2934: var_90 = var_8C
  loc_11E2940: If (var_90 = 6) Then
  loc_11E2956:   var_90(CVar(CDbl(4000))).Top = 
  loc_11E295E: End If
  loc_11E2971: (CVar(CDbl(500))).Left = 
  loc_11E2986:  = (var_B8).Height
  loc_11E2998:  = (var_8C).Top
  loc_11E29AD: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E29B3: var_BC.Top = 
  loc_11E29D0: (CDbl(240)).Left = 
  loc_11E29E5:  = (var_B8).Height
  loc_11E29F7:  = (var_8C).Top
  loc_11E2A12: Me.FrTxnNo.Top = ((var_8C + var_B8) + CDbl(&H14))
  loc_11E2A2F: Me.FrTxnNo.Left = CDbl(240)
  loc_11E2A44:  = (var_B8).Height
  loc_11E2A56:  = (var_8C).Top
  loc_11E2A6B: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E2A71: Me.FrTxnNo.Top = 
  loc_11E2A8E: (CDbl(240)).Left = 
  loc_11E2AB8: (CVar(CDbl(().Top))).Top = 
  loc_11E2AE9: (CVar(CDbl(().Height))).Height = 
  loc_11E2B02: var_CC = ().Top
  loc_11E2B18:  = var_CC(var_8C).Top
  loc_11E2B26: var_A0 = CVar((var_8C + CDbl(var_CC))) 'Single
  loc_11E2B35: (CVar(CDbl(().Height))).Top = 
  loc_11E2B68: (CVar(CDbl(().Height))).Height = 
  loc_11E2B84:  = (var_B8).Height
  loc_11E2B96:  = (var_8C).Top
  loc_11E2BAB: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E2BB1: (CVar(CDbl(().Height))).Top = 
  loc_11E2BCE: (CDbl(240)).Left = 
  loc_11E2BE3:  = (var_B8).Height
  loc_11E2BF5:  = (var_8C).Top
  loc_11E2C0A: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E2C10: (CVar(CDbl(().Height))).Top = 
  loc_11E2C2D: (CDbl(240)).Left = 
  loc_11E2C42:  = (var_B8).Height
  loc_11E2C54:  = (var_8C).Top
  loc_11E2C69: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E2C6F: (CVar(CDbl(().Height))).Top = 
  loc_11E2C8C: (CDbl(240)).Left = 
  loc_11E2CA7: (CVar(CDbl(405))).Top = 
  loc_11E2CC2: (CVar(CDbl(5415))).Left = 
  loc_11E2CDD: (CVar(CDbl(405))).Top = 
  loc_11E2CF8: (CVar(CDbl(5550))).Left = 
  loc_11E2D13: (CVar(CDbl(405))).Top = 
  loc_11E2D2E: (CVar(CDbl(5550))).Left = 
  loc_11E2D42: If (global_116 = 6) Then
  loc_11E2D45: End If
  loc_11E2D52:  = (var_8C).Top
  loc_11E2D64: Set var_B4 = ((var_8C + CDbl(960)))
  loc_11E2D6A: (var_B8).Top = 
  loc_11E2D85: (CDbl(240)).Left = 
  loc_11E2D8D: Exit Sub
End Sub

Public Sub Proc_125_70_156BDD8
  'Data Table: 5502C4
  Dim Me As Recordset15
  Dim var_98 As Long
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim unk_5502DC As Connection15
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_15C As Variant
  Dim var_134 As Variant
  Dim var_1B0 As Fields15
  Dim var_14C As Variant
  Dim var_8E As Integer
  Dim var_144 As Variant
  Dim var_19C As Variant
  loc_156AD4C: On Error Goto loc_156BD95
  loc_156AD55: Proc_183_45_E5CCA8(global_56)
  loc_156AD71: If (Me.RecordCount <= 0) Then
  loc_156AD74:   Call Proc_125_68_F682EC()
  loc_156AD7C: Else
  loc_156AD82:   var_98 = global_116
  loc_156AD8E:   If (var_98 = 6) Then
  loc_156ADA5:     var_9C = "SELECT ST.DOCID,ST.VTYPE,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType,Case When ST.AmtCr<>0 Then ST.AmtCr Else ST.AmtDr End As Amount,ST.TaxStru,"
  loc_156ADAC:     var_A0 = var_9C & " T.Name As TaxStruName,ST.U_AE,ST.U_Name,ST.U_EntDt, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.BatchNo,ST.ContraDOCId,"
  loc_156ADBA:     var_A8 = var_A0 & " CC.Name as CompName,CompCode" & " FROM (((((PayChargeH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)"
  loc_156ADCF:     var_B4 = var_A8 & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)" & " Inner JOIN RevMast AS P ON ST.PayCode = P.Code)" & " LEFT JOIN (Select Distinct Code,Name From TaxStru) AS T ON ST.TaxStru = T.Code)"
  loc_156AE0D:     var_100 = CVar(var_B4 & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode Where ST.Docid='") & Me.Fields.Item("SearchCode").Value 
  loc_156AE24:     unk_5502DC.Execute CStr(var_100 & "' And ContraDocId<>''"), var_144, -1
  loc_156AE2F:     Set var_88 = var_148
  loc_156AE5D:   End If
  loc_156AE91:   global_96 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_156AEB9:   If (Me.Recordset15.RecordCount > 0) Then
  loc_156AF65:     var_1AC = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE")), Me.Recordset15.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_156AFAD:     (CStr(var_98 & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1AC)))).Caption = 
  loc_156B02D:     var_14C = Me.Recordset15.Fields.Item("U_AE")
  loc_156B046:     var_120 = "entdt :   "
  loc_156B08E:     var_1AC = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_14C)) = "E"), "Last Update :   ", var_120))
  loc_156B0A8:     var_1B0 = Me.Recordset15.Fields
  loc_156B0D6:     (CStr(var_1AC & CVar(Proc_6_38_E69628(CVar(var_1B0.Item("U_EntDt")))))).Caption = 
  loc_156B14A:     Set var_148 = Me.Txt
  loc_156B150:     Call 0.Method_Proc_125_70_156BDD80 (CInt(0), var_14C)
  loc_156B158:     var_14C.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_156B1A2:     global_100 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_156B1D0:     var_D0 = Me.Recordset15.Fields.Item("vType")
  loc_156B237:     Set var_BC = Me.Txt
  loc_156B23D:     Call 0.Method_Proc_125_70_156BDD80 (CInt(1), var_D0)
  loc_156B245:     var_D0.Text = CStr(IIf((CStr(var_D0.Value) = "AD"), "Advance", "Refund"))
  loc_156B29B:     Set var_148 = Me.Txt
  loc_156B2A1:     Call 0.Method_Proc_125_70_156BDD80 (CInt(2), var_14C)
  loc_156B2A9:     var_14C.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_156B2FB:     Set var_148 = Me.Txt
  loc_156B301:     Call 0.Method_Proc_125_70_156BDD80 (CInt(3), var_14C)
  loc_156B309:     var_14C.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_156B374:     (CStr(Me.Recordset15.Fields.Item("vPrefix").Value)).Caption = 
  loc_156B3B5:     Set var_148 = Me.Txt
  loc_156B3BB:     Call 0.Method_Proc_125_70_156BDD80 (CInt(&HA), var_14C)
  loc_156B3C3:     var_14C.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_156B410:     Set var_148 = Me.Txt
  loc_156B416:     Call 0.Method_Proc_125_70_156BDD80 (CInt(4), var_14C)
  loc_156B41E:     var_14C.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ContraDocId")))
  loc_156B432:   End If
  loc_156B43B:   Set var_BC = (False)
  loc_156B456:   Set var_BC = Txt.DispID_19(1)
  loc_156B466:   var_8E = 1
  loc_156B480:   If (Me.Recordset15.RecordCount > 0) Then
  loc_156B483:     ' Referenced from:   156BC9D
  loc_156B495:     If Not(Me.Recordset15.EOF) Then
  loc_156B4B7:       Set var_200 = Txt.DispID_4(var_8E(vbNullString).Name)
  loc_156B4BE:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156B4C3:       var_15C = 0
  loc_156B4FA:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("SNo").Value)) 'String
  loc_156B501:       LateIdCallSt
  loc_156B554:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_200)) 'String
  loc_156B55B:       LateIdCallSt
  loc_156B571:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156B576:       var_15C = 1
  loc_156B5AD:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_156B5B4:       LateIdCallSt
  loc_156B607:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_200, var_F0, 3)) 'String
  loc_156B60E:       LateIdCallSt
  loc_156B65B:       Proc_6_39_E7D3A0(var_F0, CVar(Me.Recordset15.Fields.Item("FPNo")), &H18, CVar(CLng(var_8E)), var_200, var_F0)
  loc_156B664:       var_100 = CVar(CStr(var_F0)) 'String
  loc_156B66B:       LateIdCallSt
  loc_156B6BD:       var_16C = 0
  loc_156B6E8:       var_9C = CStr("SELECT PartyName FROM HallBook WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'")
  loc_156B6F2:       unk_5502DC.Execute var_9C, var_120, -1
  loc_156B6FA:       var_148 = var_148.Fields
  loc_156B702:       var_16C = var_14C.Item(var_14C)
  loc_156B713:       var_19C = CVar(Proc_6_38_E69628(CVar(var_1B0), var_1B0, CVar(CLng(7)), CVar(CLng(var_8E)), var_200)) 'String
  loc_156B71A:       LateIdCallSt
  loc_156B762:       var_134 = CVar(CLng(var_8E)) 'Long
  loc_156B767:       var_16C = 8
  loc_156B78F:       var_100 = Format(CVar(Me.Recordset15.Fields.Item("Amount")), "0.00")
  loc_156B798:       var_120 = CVar(CStr(var_100)) 'String
  loc_156B79F:       LateIdCallSt
  loc_156B7B9:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156B7C1:       var_15C = CVar(CLng(9)) 'Long
  loc_156B7F4:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_156B7FB:       LateIdCallSt
  loc_156B815:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156B81D:       var_15C = CVar(CLng(&HA)) 'Long
  loc_156B850:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_156B857:       LateIdCallSt
  loc_156B8A9:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_200, var_F0, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_156B8B0:       LateIdCallSt
  loc_156B8FE:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BatchNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_200, var_F0, var_200)) 'String
  loc_156B905:       LateIdCallSt
  loc_156B954:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H19, CVar(CLng(var_8E)), var_200, var_F0)) 'String
  loc_156B95B:       LateIdCallSt
  loc_156B971:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156B979:       var_15C = CVar(CLng(&HD)) 'Long
  loc_156B9AC:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_156B9B3:       LateIdCallSt
  loc_156BA05:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_200, var_F0, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_156BA0C:       LateIdCallSt
  loc_156BA22:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156BA2A:       var_15C = CVar(CLng(&HF)) 'Long
  loc_156BA5D:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_156BA64:       LateIdCallSt
  loc_156BAB6:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_200, var_F0, CVar(CLng(&H10)), CVar(CLng(var_8E)))) 'String
  loc_156BABD:       LateIdCallSt
  loc_156BAD3:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156BADB:       var_15C = CVar(CLng(&H11)) 'Long
  loc_156BB0E:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_156BB15:       LateIdCallSt
  loc_156BB68:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H16, CVar(CLng(var_8E)), var_200, var_F0, &H16, CVar(CLng(var_8E)))) 'String
  loc_156BB6F:       LateIdCallSt
  loc_156BBBE:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H17, CVar(CLng(var_8E)), var_200, var_F0, var_200)) 'String
  loc_156BBC5:       LateIdCallSt
  loc_156BC14:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TaxStru")), &H12, CVar(CLng(var_8E)), var_200, var_F0)) 'String
  loc_156BC1B:       LateIdCallSt
  loc_156BC6A:       var_F0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TaxStruName")), &H13, CVar(CLng(var_8E)), var_200, var_F0)) 'String
  loc_156BC71:       LateIdCallSt
  loc_156BC85:       Set var_200 = Nothing 
  loc_156BC8F:       var_8E = (var_8E + 1)
  loc_156BC98:       Me.Recordset15.MoveNext
  loc_156BC9D:       GoTo loc_156B483
  loc_156BCA0:     End If
  loc_156BCAD:     Set var_BC = var_8E(1)
  loc_156BCBB:   End If
  loc_156BCC3:   Set var_BC = Txt.DispID_6(True)
  loc_156BCD7:   If (var_8E = 1) Then
  loc_156BCE7:     Set var_BC = Txt.DispID_19(1)
  loc_156BD40:     Set var_BC = var_200(CVar(CStr(Proc_6_127_F25B10(var_200(Txt.DispID_4), 0, var_F0, var_F0)))).Name(1)
  loc_156BD4E:   End If
  loc_156BD64:   Set var_BC = 1(2)
  loc_156BD79:   Call Proc_125_77_111BB38(CStr(Txt.DispID_41), Txt.DispID_6, var_F0)
  loc_156BD87:   Call Proc_125_80_13D284C(var_200)
  loc_156BD8C: End If
  loc_156BD91: Set var_88 = Nothing
  loc_156BD94: Exit Sub
  loc_156BD95: ' Referenced from: 156AD4C
  loc_156BD9D: Set var_BC = Err()
  loc_156BDA3: Call 0.Method_arg_2C (var_9C)
  loc_156BDC4: MsgBox(CVar(var_9C), &H40, "Information", var_100, var_120)
  loc_156BDD7: Exit Sub
End Sub

Public Sub Proc_125_71_143B4F4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) '143B4F4
  'Data Table: 5502C4
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_5502DC As Connection15
  Dim var_88 As Integer
  Dim var_AC As Recordset15
  Dim var_D8 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_EC As Fields15
  Dim var_118 As Field20
  Dim var_13C As Fields15
  Dim var_150 As Variant
  Dim var_170 As String
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_E8 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_1B0 As Variant
  Dim var_266 As Integer
  Dim var_9C As Recordset15
  loc_143AA50: On Error Goto loc_143B4ED
  loc_143AA67: var_BC = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,(P.AMTCR-P.AmtDr) AS RECTAMT,HB.VType+'/'+Cast(HB.VNO As Char)AS BOOKNO,HB.PartyName As CustName,P.Comments FROM (PAYCHARGEH P left join HallBook HB On P.ContraDocid=HB.DocId) WHERE IsNull(P.ContraDocId,'')<>'' And P.DOCID IN ('" & arg_C
  loc_143AA85: unk_5502DC.Execute var_BC & "') AND P.VTYPE='" & arg_18 & "'", var_E8, -1
  loc_143AA90: Set var_AC = var_EC
  loc_143AAB8: var_BC = "Select R.Name As TaxName,P.TaxPer,Abs(P.AmtCr-P.AmtDr) as TaxAmt,P.OnAmt as TaxableAmt From PayChargeH P Left Join RevMast R On P.PayCode=R.Code where P.Docid='" & arg_C
  loc_143AAC8: unk_5502DC.Execute var_BC & "' And P.TaxPer<>0 Order by P.TaxPer Desc,P.PayCode", var_E8, -1
  loc_143AAD3: Set var_9C = var_EC
  loc_143AAE5: Close 1
  loc_143AAEE: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_143AAF4: var_88 = 1
  loc_143AAFA: MemVar_1F953C4 = "N"
  loc_143AB01: MemVar_1F953C8 = "N"
  loc_143AB08: MemVar_1F953CC = "M"
  loc_143AB12: var_F0 = var_AC.RecordCount
  loc_143AB20: If (var_F0 > 0) Then
  loc_143AB41:   If CBool(Trim(arg_10) <> "W") Then
  loc_143AB44:     ' Referenced from: 143AF81
  loc_143AB53:     If Not(var_AC.EOF) Then
  loc_143AB62:       If (var_86 = 0) Then
  loc_143AB7D:         Print 1, vbNullString
  loc_143AB88:         Print 1, vbNullString
  loc_143ABAA:         var_C0 = Proc_6_128_1026560(" ADVANCE RECEIPT ", "B", &H50, Proc_6_129_12B862C(var_88, Proc_6_129_12B862C(var_88, var_86, &H50), &H50))
  loc_143ABAF:         Print 1, var_C0
  loc_143ABC3:         Print 1, vbNullString
  loc_143ABCE:         Print 1, vbNullString
  loc_143ABE6:         var_EC = var_AC.Fields
  loc_143AC2E:         Proc_6_39_E7D3A0(var_160, CVar(var_AC.Fields.Item("GRCNo")), var_88)
  loc_143AC9B:         var_138 = (CVar("Receipt No.  :" & CStr(var_EC.Item("RectNo").Value)) + Space(8))
  loc_143ACA2:         var_190 = CVar(Proc_6_45_EADFB8(CStr("GRC No. :" & var_160), &HE)) 'String
  loc_143ACA5:         var_1A0 = (var_138 + var_190)
  loc_143ACAC:         var_1C0 = (var_1A0 + Space(8))
  loc_143ACB5:         var_1E0 = (var_1C0 + "Date :")
  loc_143ACBF:         var_228 = (var_1E0 + CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("RectDate")), var_EC)))
  loc_143ACC5:         Print 1, var_228
  loc_143AD07:         Print 1, vbNullString
  loc_143AD12:         Print 1, vbNullString
  loc_143AD40:         var_110 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("GuestName")))) 'String
  loc_143AD53:         var_138 = ("Recieved with thanks from Mr. " + Ucase(var_110))
  loc_143AD59:         Print 1, var_138
  loc_143AD72:         Print 1, vbNullString
  loc_143AD8F:         var_118 = var_AC.Fields.Item("RectAmt")
  loc_143AD9E:         Proc_6_39_E7D3A0(var_110, CVar(var_118))
  loc_143ADAD:         var_100 = "0.00"
  loc_143ADB2:         var_128 = var_100
  loc_143ADD2:         var_13C = var_AC.Fields
  loc_143ADDA:         var_140 = var_13C.Item("RectAmt")
  loc_143ADE9:         Proc_6_39_E7D3A0(var_190, CVar(var_140), 1)
  loc_143AE3B:         var_170 = "A Sum of Rs. "
  loc_143AE43:         var_150 = (var_170 + Format(var_110, var_128))
  loc_143AE4C:         var_160 = (CVar(var_AC.Fields.Item("GRCNo")) + " (")
  loc_143AE56:         var_1B0 = (var_160 + CVar(Proc_6_43_1003B24(CSng(var_190), "Rs", vbNullString)))
  loc_143AE5F:         var_1C0 = (Space(8) + ") by ")
  loc_143AE69:         var_218 = (var_1C0 + CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("RectMode")), 1)))
  loc_143AE6F:         Print 1, CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("RectDate")), var_AC.Fields))
  loc_143AEAD:         Print 1, vbNullString
  loc_143AEBF:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_143AECD:         Print 1, vbNullString
  loc_143AED8:         Print 1, vbNullString
  loc_143AEE3:         Print 1, vbNullString
  loc_143AEEE:         Print 1, vbNullString
  loc_143AEF9:         Print 1, vbNullString
  loc_143AF1D:         Print 1, Proc_6_52_EAE084("Autho. Signature", &H46)
  loc_143AF31:         Print 1, vbNullString
  loc_143AF3C:         Print 1, "---------------------------------------------------------------------------------------"
  loc_143AF42:       End If
  loc_143AF48:       var_86 = (var_86 + &H18)
  loc_143AF4B:       ' Referenced from: 143AF68
  loc_143AF51:       If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H22) Then
  loc_143AF59:         Print 1, vbNullString
  loc_143AF65:         var_86 = (var_86 + 1)
  loc_143AF68:         GoTo loc_143AF4B
  loc_143AF6B:       End If
  loc_143AF6D:       var_86 = 0
  loc_143AF76:       var_88 = (var_88 + 1)
  loc_143AF7C:       var_AC.MoveNext
  loc_143AF81:       GoTo loc_143AB44
  loc_143AF84:     End If
  loc_143AF87:   Else
  loc_143AF8E:     var_B0 = arg_14 & " Advance Receipt"
  loc_143AF94:     var_D8 = arg_14
  loc_143AFA5:     var_B4 = CStr(Ucase(var_D8))
  loc_143AFCF:     Set var_EC = var_AC 
  loc_143AFD6:     CreateFieldDefFile(var_EC, MemVar_1F950B4 & "\" & var_B0 & ".ttx", &HFF, var_88)
  loc_143B001:     var_BC = MemVar_1F950B4 & "\"
  loc_143B018:     Call 0.Method_arg_1C (var_BC & var_B0 & ".RPT", var_D8, var_EC, var_86)
  loc_143B023:     MemVar_1F951E8 = var_EC
  loc_143B04C:     Call 0.Method_arg_64 (var_EC, CVar(var_EC), var_100, var_170)
  loc_143B054:     Call 0.Method_arg_2C (var_86, var_86)
  loc_143B062:     Call 0.Method_arg_150 (var_EC)
  loc_143B078:     Call 0.Method_arg_90 (var_EC, var_F0)
  loc_143B080:     Call 0.Method_arg_24 (var_B6)
  loc_143B08C:     For var_254 =  To CInt(var_F0):   1 = var_254 'Integer
  loc_143B0A5:       Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_143B0AD:       Call 0.Method_arg_20 (var_118)
  loc_143B0B5:       Call 0.Method_arg_30 (var_BC)
  loc_143B0E4:       If (Ucase(CVar(var_BC)) = "TITLE") Then
  loc_143B0EE:         var_BC = "'" & arg_14
  loc_143B108:         Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_143B110:         Call 0.Method_arg_20 (var_118)
  loc_143B118:         Call 0.Method_arg_38 (var_BC & "'")
  loc_143B12B:       End If
  loc_143B12E:     Next var_254 'Integer
  loc_143B135:     var_266 = 1
  loc_143B138:     ' Referenced from:   143B426
  loc_143B147:     If Not(var_9C.EOF) Then
  loc_143B15B:       Call 0.Method_arg_90 (var_EC, var_F0, var_B6)
  loc_143B163:       Call 0.Method_arg_24 (1)
  loc_143B16F:       For var_26A =  To CInt(var_F0):   var_266 = var_26A 'Integer
  loc_143B188:         Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_143B190:         Call 0.Method_arg_20 (var_118)
  loc_143B198:         Call 0.Method_arg_30 (var_BC)
  loc_143B1AE:         var_27C = Ucase(CVar(var_BC)) 'Variant
  loc_143B1D7:         If (var_27C = CVar("STNAME" & CStr(var_266))) Then
  loc_143B208:           Proc_6_17_EAAE40(var_128)
  loc_143B224:           Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143B22C:           Call 0.Method_arg_20 (CStr(var_128))
  loc_143B234:           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxName")))))
  loc_143B251:         Else
  loc_143B26C:           If (var_27C = CVar("STPER" & CStr(var_266))) Then
  loc_143B29D:             Proc_6_17_EAAE40(var_128)
  loc_143B2B9:             Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143B2C1:             Call 0.Method_arg_20 (CStr(var_128))
  loc_143B2C9:             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxPer")))))
  loc_143B2E6:           Else
  loc_143B301:             If (var_27C = CVar("STAMT" & CStr(var_266))) Then
  loc_143B332:               Proc_6_17_EAAE40(var_128)
  loc_143B34E:               Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143B356:               Call 0.Method_arg_20 (CStr(var_128))
  loc_143B35E:               Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxAmt")))))
  loc_143B37B:             Else
  loc_143B396:               If (var_27C = CVar("STABLEAMT" & CStr(var_266))) Then
  loc_143B3C7:                 Proc_6_17_EAAE40(var_128)
  loc_143B3E3:                 Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143B3EB:                 Call 0.Method_arg_20 (CStr(var_128))
  loc_143B3F3:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxableAmt")))))
  loc_143B40D:               End If
  loc_143B40D:             End If
  loc_143B40D:           End If
  loc_143B40D:         End If
  loc_143B410:       Next var_26A 'Integer
  loc_143B41B:       var_266 = (var_266 + 1)
  loc_143B421:       var_9C.MoveNext
  loc_143B426:       GoTo loc_143B138
  loc_143B429:     End If
  loc_143B42E:     Set var_118 = Nothing
  loc_143B444:     Set var_EC = MemVar_1F951E8 
  loc_143B450:     Proc_6_99_1484404(var_EC, 0, var_B4)
  loc_143B45B:     MemVar_1F951E8 = var_EC
  loc_143B466:   End If
  loc_143B466: End If
  loc_143B468: Close 1
  loc_143B471: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_143B481: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_143B48C: Close 1
  loc_143B496: If (MemVar_1F953BC = "Y") Then
  loc_143B4B2:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_143B4BC: Else
  loc_143B4D5:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_143B4DC: End If
  loc_143B4E1: Set var_AC = Nothing
  loc_143B4E9: Set var_9C = Nothing
  loc_143B4EC: Exit Sub
  loc_143B4ED: ' Referenced from: 143AA50
  loc_143B4ED: Proc_6_60_E63754(&HFF, var_118)
  loc_143B4F2: Exit Sub
End Sub

Public Sub Proc_125_72_FE3574
  'Data Table: 5502C4
  loc_FE33A8: If (CBool(().Visible) = &HFF) Then
  loc_FE33BA:   (False).Visible = 
  loc_FE33C2: End If
  loc_FE33DE: If (CBool(().Visible) = &HFF) Then
  loc_FE33F0:   (False).Visible = 
  loc_FE33F8: End If
  loc_FE3414: If (CBool(().Visible) = &HFF) Then
  loc_FE3426:   (False).Visible = 
  loc_FE342E: End If
  loc_FE344A: If (CBool(().Visible) = &HFF) Then
  loc_FE345C:   (False).Visible = 
  loc_FE3464: End If
  loc_FE3480: If (CBool(().Visible) = &HFF) Then
  loc_FE3492:   (False).Visible = 
  loc_FE349A: End If
  loc_FE34B6: If (CBool(().Visible) = &HFF) Then
  loc_FE34C8:   (False).Visible = 
  loc_FE34D0: End If
  loc_FE34EC: If (CBool(().Visible) = &HFF) Then
  loc_FE34FE:   (False).Visible = 
  loc_FE3506: End If
  loc_FE3522: If (CBool(().Visible) = &HFF) Then
  loc_FE3534:   (False).Visible = 
  loc_FE353C: End If
  loc_FE3558: If (CBool(().Visible) = &HFF) Then
  loc_FE356A:   (False).Visible = 
  loc_FE3572: End If
  loc_FE3572: Exit Sub
End Sub

Public Sub Proc_125_73_E93010(arg_C) 'E93010
  'Data Table: 5502C4
  Dim var_10C As TextBox
  loc_E92FA4: Call Proc_125_72_FE3574()
  loc_E92FE0: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92FE3:   Call TopCtrl1_UnknownEvent_16()
  loc_E92FEB: Else
  loc_E92FF5:   Set var_108 = Me.Txt
  loc_E92FFB:   Call 0.Method_Proc_125_73_E930100 (arg_C)
  loc_E93003:   var_10C.SetFocus
  loc_E9300F: End If
  loc_E9300F: Exit Sub
End Sub

Public Sub Proc_125_74_1159C64
  'Data Table: 5502C4
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_11598F8: var_90 = global_124
  loc_115990F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1159940: Set var_A8 = Me.Txt
  loc_1159946: Call 0.Method_Proc_125_74_1159C640 (CInt(3), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_1159955: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_115995D: var_EC = -1 & var_CC 
  loc_1159971: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_115997C: Set var_8C = var_134
  loc_11599B8: If (var_8C.RecordCount > 0) Then
  loc_11599F7:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_11599FA:     GoTo loc_1159A87
  loc_11599FD:   End If
  loc_1159A2E:   global_104 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1159A59:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1159A6E:   var_CC = (var_AC.Value + 1)
  loc_1159A76:   global_108 = CInt(var_CC)
  loc_1159A87:   ' Referenced from: 11599FA
  loc_1159AB2:   var_BC = Space((5 - Len(var_90)))
  loc_1159ABA:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_1159ACE:   var_EC = Space((5 - Len(global_104)))
  loc_1159AD6:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_1159AE3:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_104))
  loc_1159AFC:   var_14C = Space((8 - Len(CStr(global_108))))
  loc_1159B04:   var_15C = (var_130 + var_14C)
  loc_1159B13:   var_17C = (var_15C + CVar(CStr(global_108)))
  loc_1159B1E:   global_100 = CStr(var_17C)
  loc_1159B54:   global_108(global_104).Caption = 
  loc_1159B6D:   Set var_A8 = Me.Txt
  loc_1159B73:   Call 0.Method_Proc_125_74_1159C640 (CInt(0), var_AC)
  loc_1159B7B:   var_AC.Text = global_100
  loc_1159B9D:   Set var_A8 = Me.Txt
  loc_1159BA3:   Call 0.Method_Proc_125_74_1159C640 (CInt(2), var_AC)
  loc_1159BAB:   var_AC.Text = CStr(global_108)
  loc_1159BC0:   var_88 = global_100
  loc_1159BC6: Else
  loc_1159BCC:   global_100 = vbNullString
  loc_1159BF2:   0(vbNullString).Caption = 
  loc_1159C0B:   Set var_A8 = Me.Txt
  loc_1159C11:   Call 0.Method_Proc_125_74_1159C640 (CInt(0), var_AC)
  loc_1159C19:   var_AC.Text = global_100
  loc_1159C33:   Set var_A8 = Me.Txt
  loc_1159C39:   Call 0.Method_Proc_125_74_1159C640 (CInt(2), var_AC)
  loc_1159C41:   var_AC.Text = vbNullString
  loc_1159C53:   var_88 = global_100
  loc_1159C56: End If
  loc_1159C5B: Set var_8C = Nothing
  loc_1159C5E: Proc_125_74_1159C64 = 
End Sub

Public Sub Proc_125_75_11D7C14
  'Data Table: 5502C4
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_11D7792: var_88 = global_116
  loc_11D779E: If (var_88 = 6) Then
  loc_11D77AD:   var_88(&HFF).Visible = 
  loc_11D77B5: End If
  loc_11D77B9: Set var_90 = ()
  loc_11D77BC: var_A0 = &H19
  loc_11D77D0: var_A0 = CVar(CLng(9)) 'Long
  loc_11D77D5: var_C0 = 0
  loc_11D77E1: LateIdCallSt
  loc_11D77EC: var_A0 = CVar(CLng(&HA)) 'Long
  loc_11D77F1: var_C0 = 0
  loc_11D77FD: LateIdCallSt
  loc_11D7808: var_A0 = CVar(CLng(&HB)) 'Long
  loc_11D780D: var_C0 = 0
  loc_11D7819: LateIdCallSt
  loc_11D7824: var_A0 = CVar(CLng(&HC)) 'Long
  loc_11D7829: var_C0 = 0
  loc_11D7835: LateIdCallSt
  loc_11D783D: var_A0 = &H19
  loc_11D7846: var_C0 = 0
  loc_11D7852: LateIdCallSt
  loc_11D785D: var_A0 = CVar(CLng(&HD)) 'Long
  loc_11D7862: var_C0 = 0
  loc_11D786E: LateIdCallSt
  loc_11D7879: var_A0 = CVar(CLng(&HE)) 'Long
  loc_11D787E: var_C0 = 0
  loc_11D788A: LateIdCallSt
  loc_11D7895: var_A0 = CVar(CLng(&HF)) 'Long
  loc_11D789A: var_C0 = 0
  loc_11D78A6: LateIdCallSt
  loc_11D78B1: var_A0 = CVar(CLng(&H10)) 'Long
  loc_11D78B6: var_C0 = 0
  loc_11D78C2: LateIdCallSt
  loc_11D78CD: var_A0 = CVar(CLng(&H11)) 'Long
  loc_11D78D2: var_C0 = 0
  loc_11D78DE: LateIdCallSt
  loc_11D78E6: var_A0 = &H12
  loc_11D78EF: var_C0 = 0
  loc_11D78FB: LateIdCallSt
  loc_11D7903: var_A0 = 1
  loc_11D790C: var_C0 = 0
  loc_11D7918: LateIdCallSt
  loc_11D7920: var_A0 = 4
  loc_11D7929: var_C0 = 0
  loc_11D7935: LateIdCallSt
  loc_11D793D: var_A0 = 5
  loc_11D7946: var_C0 = 0
  loc_11D7952: LateIdCallSt
  loc_11D795D: var_A0 = CVar(CLng(6)) 'Long
  loc_11D7962: var_C0 = 0
  loc_11D796E: LateIdCallSt
  loc_11D7979: var_A0 = CVar(CLng(7)) 'Long
  loc_11D797E: var_C0 = 0
  loc_11D798A: LateIdCallSt
  loc_11D7992: var_A0 = 2
  loc_11D799B: var_C0 = 0
  loc_11D79A7: LateIdCallSt
  loc_11D79AF: var_A0 = 0
  loc_11D79B8: var_C0 = &HFA
  loc_11D79C4: LateIdCallSt
  loc_11D79CC: var_A0 = 0
  loc_11D79D5: var_C0 = 0
  loc_11D79DE: var_E0 = "SNo"
  loc_11D79E7: LateIdCallSt
  loc_11D79EF: var_A0 = 0
  loc_11D79F8: var_C0 = &H1F4
  loc_11D7A04: LateIdCallSt
  loc_11D7A0C: var_A0 = 0
  loc_11D7A15: var_C0 = 3
  loc_11D7A1E: var_E0 = "Payment Type"
  loc_11D7A27: LateIdCallSt
  loc_11D7A2F: var_A0 = 3
  loc_11D7A3E: var_C0 = CVar(CInt(1)) 'Integer
  loc_11D7A45: LateIdCallSt
  loc_11D7A4D: var_A0 = 3
  loc_11D7A56: var_C0 = &HBB8
  loc_11D7A62: LateIdCallSt
  loc_11D7A6A: var_A0 = 0
  loc_11D7A73: var_C0 = 8
  loc_11D7A7C: var_E0 = "Amount"
  loc_11D7A85: LateIdCallSt
  loc_11D7A8D: var_A0 = 8
  loc_11D7A9C: var_C0 = CVar(CInt(7)) 'Integer
  loc_11D7AA3: LateIdCallSt
  loc_11D7AAB: var_A0 = 8
  loc_11D7ABA: var_C0 = CVar(CInt(7)) 'Integer
  loc_11D7AC1: LateIdCallSt
  loc_11D7AC9: var_A0 = 8
  loc_11D7AD2: var_C0 = &H578
  loc_11D7ADE: LateIdCallSt
  loc_11D7AE6: var_A0 = 0
  loc_11D7AEF: var_C0 = &H13
  loc_11D7AF8: var_E0 = "Tax Structure"
  loc_11D7B01: LateIdCallSt
  loc_11D7B09: var_A0 = &H13
  loc_11D7B18: var_C0 = CVar(CInt(1)) 'Integer
  loc_11D7B1F: LateIdCallSt
  loc_11D7B27: var_A0 = &H13
  loc_11D7B30: var_C0 = &H9C4
  loc_11D7B3C: LateIdCallSt
  loc_11D7B44: var_A0 = &H14
  loc_11D7B4D: var_C0 = 0
  loc_11D7B59: LateIdCallSt
  loc_11D7B61: var_A0 = &H15
  loc_11D7B6A: var_C0 = 0
  loc_11D7B76: LateIdCallSt
  loc_11D7B7E: var_A0 = &H16
  loc_11D7B87: var_C0 = 0
  loc_11D7B93: LateIdCallSt
  loc_11D7B9B: var_A0 = &H17
  loc_11D7BA4: var_C0 = 0
  loc_11D7BB0: LateIdCallSt
  loc_11D7BB8: var_A0 = &H18
  loc_11D7BC1: var_C0 = 0
  loc_11D7BCD: LateIdCallSt
  loc_11D7BE4: var_C0 = 0
  loc_11D7BFF: LateIdCallSt
  loc_11D7C0D: Call Proc_125_76_F94508(var_C0(CVar(CStr(1))), 1, Nothing, var_C0, 1, Nothing, var_C0)
  loc_11D7C12: Exit Sub
End Sub

Public Sub Proc_125_76_F94508
  'Data Table: 5502C4
  Dim var_94 As Long
  Dim var_98 As Variant
  Dim var_BC As Column
  Dim Me As Recordset15
  loc_F943BC: Me.Recordset15.CursorLocation = 3
  loc_F943D8: If (OpenType = 6) Then
  loc_F943E7:   Set var_8C = Me.LblName
  loc_F943ED:   Call 0.Method_Proc_125_76_F945080 (&HC, var_98)
  loc_F943F5:   var_98.Caption = "Party"
  loc_F94411:   Set var_8C = var_BC(1)
  loc_F94422:   Set var_98 = LblName.DispID_69
  loc_F94428:   var_94 = var_98.Item("Hall #")
  loc_F94430:   var_BC.Caption = 
  loc_F94473:   Me.Open CVar("Select T.Code,T.nAME As Name From VenueMast T where Departcode='" & global_52 & "' Order By T.Code"), CVar(MemVar_1F95044), 3
  loc_F94484:   global_148 = "HALL"
  loc_F9448E:   global_152 = "HL"
  loc_F9449D:   Set var_8C = var_98(1)
  loc_F944A3:   Call 0.Method_Proc_125_76_F945080 (0, 1)
  loc_F944AB:   var_98.Visible = True
  loc_F944C4:   Set var_8C = Me.Txt
  loc_F944CA:   Call 0.Method_Proc_125_76_F945080 (CInt(5), var_98)
  loc_F944D2:   var_98.Visible = False
  loc_F944E7:   CVarUnk
  loc_F944EC:   VerifyVarObj
  loc_F944F2:   Set var_8C = (New)
  loc_F944F8:   LateIdStAd
  loc_F94506: End If
  loc_F94506: Exit Sub
End Sub

Public Sub Proc_125_77_111BB38(arg_C) '111BB38
  'Data Table: 5502C4
  Dim var_8C As Long
  Dim var_A0 As Frame
  loc_111B7DC: (0).Visible = 
  loc_111B7F0: (0).Visible = 
  loc_111B804: (0).Visible = 
  loc_111B818: (0).Visible = 
  loc_111B82C: (0).Visible = 
  loc_111B840: Me.FrTxnNo.Visible = False
  loc_111B854: (0).Visible = 
  loc_111B862: var_8C = global_116
  loc_111B86E: If (var_8C = 6) Then
  loc_111B874:   var_90 = arg_C
  loc_111B87F:   If (var_90 = "Cheque") Then
  loc_111B88E:     var_8C(&HFF).Visible = 
  loc_111B8A2:     (&HFF).Visible = 
  loc_111B8B7:      = (var_9C).Height
  loc_111B8C9:      = (var_94).Top
  loc_111B8DE:     Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111B8E4:     var_A0.Top = 
  loc_111B8F5:   Else
  loc_111B8FD:     If (var_90 = "Credit Card") Then
  loc_111B90C:       (&HFF).Visible = 
  loc_111B920:       (0).Visible = 
  loc_111B92B:     Else
  loc_111B933:       If (var_90 = "Staff") Then
  loc_111B942:         (&HFF).Visible = 
  loc_111B956:         (&HFF).Visible = 
  loc_111B96B:          = (var_9C).Height
  loc_111B97D:          = (var_94).Top
  loc_111B992:         Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111B998:         var_A0.Top = 
  loc_111B9A9:       Else
  loc_111B9B1:         If (var_90 = "Company") Then
  loc_111B9C0:           (&HFF).Visible = 
  loc_111B9D4:           (&HFF).Visible = 
  loc_111B9E9:            = (var_9C).Height
  loc_111B9FB:            = (var_94).Top
  loc_111BA10:           Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111BA16:           var_A0.Top = 
  loc_111BA27:         Else
  loc_111BA2F:           If (var_90 = "Room") Then
  loc_111BA3E:             (&HFF).Visible = 
  loc_111BA52:             (0).Visible = 
  loc_111BA5D:           Else
  loc_111BA65:             If (var_90 = "UPI") Then
  loc_111BA74:               Me.FrTxnNo.Visible = True
  loc_111BA88:               (&HFF).Visible = 
  loc_111BA9D:               var_9C = Me.FrTxnNo.Height
  loc_111BAAF:               var_94 = Me.FrTxnNo.Top
  loc_111BAC4:               Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111BACA:               var_A0.Top = 
  loc_111BADB:             Else
  loc_111BAE7:               (&HFF).Visible = 
  loc_111BAFC:                = (var_9C).Height
  loc_111BB0E:                = (var_94).Top
  loc_111BB23:               Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111BB29:               var_A0.Top = 
  loc_111BB37:             End If
  loc_111BB37:           End If
  loc_111BB37:         End If
  loc_111BB37:       End If
  loc_111BB37:     End If
  loc_111BB37:   End If
  loc_111BB37: End If
  loc_111BB37: Exit Sub
End Sub

Public Sub Proc_125_78_14CB2E0
  'Data Table: 5502C4
  Dim var_90 As Variant
  Dim var_86 As Integer
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_AC As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Long
  Dim Me As Variant
  Dim var_8C As Fields15
  Dim var_118 As Variant
  loc_14CA560: On Error Goto loc_14CB2A3
  loc_14CA571: Set var_8C = Me.Txt
  loc_14CA577: Call 0.Method_Proc_125_78_14CB2E00 (CInt(8), var_90)
  loc_14CA59B: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_14CA5AC:   Set var_8C = Me.Txt
  loc_14CA5B2:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(8), var_90)
  loc_14CA5BA:   var_90.Text = vbNullString
  loc_14CA5C6: End If
  loc_14CA5D4: Set var_8C = Me.Txt
  loc_14CA5DA: Call 0.Method_Proc_125_78_14CB2E00 (CInt(8), var_90)
  loc_14CA5F4: If (var_90.Visible = &HFF) Then
  loc_14CA602:   Set var_8C = Me.Txt
  loc_14CA608:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(8))
  loc_14CA610:   var_94 = "Amount"
  loc_14CA631:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA634:     Exit Sub
  loc_14CA635:   End If
  loc_14CA635: End If
  loc_14CA64E: Set var_8C = Me.Txt
  loc_14CA654: Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H11), var_90, var_94)
  loc_14CA65C: (global_156 = "Staff") = var_90.Text
  loc_14CA674: If (var_90 And (var_94 = vbNullString)) Then
  loc_14CA682:   Set var_8C = Me.Txt
  loc_14CA688:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H11))
  loc_14CA690:   var_94 = "Staff Name"
  loc_14CA6B1:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA6B4:     Exit Sub
  loc_14CA6B5:   End If
  loc_14CA6B5: End If
  loc_14CA6CE: Set var_8C = Me.Txt
  loc_14CA6D4: Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H12), var_90, var_94)
  loc_14CA6DC: (global_156 = "Room") = var_90.Text
  loc_14CA6F4: If (var_90 And (var_94 = vbNullString)) Then
  loc_14CA702:   Set var_8C = Me.Txt
  loc_14CA708:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H12))
  loc_14CA710:   var_94 = "Room Name"
  loc_14CA731:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA734:     Exit Sub
  loc_14CA735:   End If
  loc_14CA735: End If
  loc_14CA74E: Set var_8C = Me.Txt
  loc_14CA754: Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H10), var_90, var_94)
  loc_14CA75C: (global_156 = "Company") = var_90.Text
  loc_14CA774: If (var_90 And (var_94 = vbNullString)) Then
  loc_14CA782:   Set var_8C = Me.Txt
  loc_14CA788:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H10))
  loc_14CA790:   var_94 = "Company Name"
  loc_14CA7B1:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA7B4:     Exit Sub
  loc_14CA7B5:   End If
  loc_14CA7B5: End If
  loc_14CA7C0: If (global_172 = "Y") Then
  loc_14CA7DC:   Set var_8C = Me.Txt
  loc_14CA7E2:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HA), var_90, var_94)
  loc_14CA7EA:   (global_156 = "Credit Card") = var_90.Text
  loc_14CA802:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14CA810:     Set var_8C = Me.Txt
  loc_14CA816:     Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HA))
  loc_14CA81E:     var_94 = "Credit Card No."
  loc_14CA83F:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA842:       Exit Sub
  loc_14CA843:     End If
  loc_14CA843:   End If
  loc_14CA85C:   Set var_8C = Me.Txt
  loc_14CA862:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HB), var_90, var_94)
  loc_14CA86A:   (global_156 = "Credit Card") = var_90.Text
  loc_14CA882:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14CA890:     Set var_8C = Me.Txt
  loc_14CA896:     Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HB))
  loc_14CA89E:     var_94 = "Holder's Name"
  loc_14CA8BF:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA8C2:       Exit Sub
  loc_14CA8C3:     End If
  loc_14CA8C3:   End If
  loc_14CA8C3: End If
  loc_14CA8DC: Set var_8C = Me.Txt
  loc_14CA8E2: Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H13), var_90, var_94)
  loc_14CA8EA: (global_156 = "UPI") = var_90.Text
  loc_14CA902: If (var_90 And (var_94 = vbNullString)) Then
  loc_14CA910:   Set var_8C = Me.Txt
  loc_14CA916:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H13))
  loc_14CA91E:   var_94 = "Txn. No."
  loc_14CA93F:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA942:     Exit Sub
  loc_14CA943:   End If
  loc_14CA943: End If
  loc_14CA95C: Set var_8C = Me.Txt
  loc_14CA962: Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HE), var_90, var_94)
  loc_14CA96A: (global_156 = "Cheque") = var_90.Text
  loc_14CA982: If (var_90 And (var_94 = vbNullString)) Then
  loc_14CA990:   Set var_8C = Me.Txt
  loc_14CA996:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HE))
  loc_14CA99E:   var_94 = "Cheque No."
  loc_14CA9BF:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CA9C2:     Exit Sub
  loc_14CA9C3:   End If
  loc_14CA9C3: End If
  loc_14CA9DC: Set var_8C = Me.Txt
  loc_14CA9E2: Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HF), var_90, var_94)
  loc_14CA9EA: (global_156 = "Cheque") = var_90.Text
  loc_14CAA02: If (var_90 And (var_94 = vbNullString)) Then
  loc_14CAA10:   Set var_8C = Me.Txt
  loc_14CAA16:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HF))
  loc_14CAA1E:   var_94 = "Cheque Dt."
  loc_14CAA3F:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_14CAA42:     Exit Sub
  loc_14CAA43:   End If
  loc_14CAA43: End If
  loc_14CAA47: Set var_8C = (var_90)
  loc_14CAA57: var_86 = CInt(CLng(Txt.DispID_A))
  loc_14CAA6B: var_B4 = OpenType
  loc_14CAA77: If (var_B4 = 6) Then
  loc_14CAA7E:   Set var_B8 = var_86(var_B4)
  loc_14CAA85:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14CAA8A:   var_E8 = 1
  loc_14CAAA1:   Set var_8C = Me.Txt
  loc_14CAAA7:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(7), var_90, var_94)
  loc_14CAAAF:   var_E8 = var_90.Tag
  loc_14CAAB7:   var_AC = CVar(var_94) 'String
  loc_14CAABE:   LateIdCallSt
  loc_14CAAD4:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14CAAD9:   var_E8 = 2
  loc_14CAAEF:   LateIdCallSt
  loc_14CAB17:   Set var_8C = Me.Txt
  loc_14CAB1D:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(7), var_90, var_94, 3, CVar(CLng(var_86)), var_B8)
  loc_14CAB2D:   var_AC = CVar(var_94) 'String
  loc_14CAB34:   LateIdCallSt
  loc_14CAB4A:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14CAB4F:   var_E8 = 4
  loc_14CAB65:   LateIdCallSt
  loc_14CAB71:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14CAB76:   var_E8 = 5
  loc_14CAB8C:   LateIdCallSt
  loc_14CABB3:   Set var_8C = Me.Txt
  loc_14CABB9:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(6), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_B8, global_152)
  loc_14CABC1:   var_E8 = var_90.Tag
  loc_14CABD0:   LateIdCallSt
  loc_14CAC01:   Set var_8C = Me.Txt
  loc_14CAC07:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(6), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_B8, CVar(var_94))
  loc_14CAC0F:   var_C8 = var_90.Text
  loc_14CAC17:   var_AC = CVar(var_94) 'String
  loc_14CAC1E:   LateIdCallSt
  loc_14CAC50:   Set var_8C = Me.Txt
  loc_14CAC56:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(8), var_90, var_94, 8, CVar(CLng(var_86)), var_B8)
  loc_14CAC5E:   var_AC = var_90.Text
  loc_14CAC66:   var_AC = CVar(var_94) 'String
  loc_14CAC6D:   LateIdCallSt
  loc_14CAC9E:   Set var_8C = Me.Txt
  loc_14CACA4:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HA), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_B8)
  loc_14CACAC:   var_AC = var_90.Text
  loc_14CACB4:   var_AC = CVar(var_94) 'String
  loc_14CACBB:   LateIdCallSt
  loc_14CACEC:   Set var_8C = Me.Txt
  loc_14CACF2:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HB), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_B8)
  loc_14CACFA:   var_AC = var_90.Text
  loc_14CAD02:   var_AC = CVar(var_94) 'String
  loc_14CAD09:   LateIdCallSt
  loc_14CAD3A:   Set var_8C = Me.Txt
  loc_14CAD40:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HC), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_B8)
  loc_14CAD48:   var_AC = var_90.Text
  loc_14CAD50:   var_AC = CVar(var_94) 'String
  loc_14CAD57:   LateIdCallSt
  loc_14CAD88:   Set var_8C = Me.Txt
  loc_14CAD8E:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HD), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_B8)
  loc_14CAD96:   var_AC = var_90.Text
  loc_14CAD9E:   var_AC = CVar(var_94) 'String
  loc_14CADA5:   LateIdCallSt
  loc_14CADD7:   Set var_8C = Me.Txt
  loc_14CADDD:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H13), var_90, var_94, &H19, CVar(CLng(var_86)), var_B8)
  loc_14CADE5:   var_AC = var_90.Text
  loc_14CADED:   var_AC = CVar(var_94) 'String
  loc_14CADF4:   LateIdCallSt
  loc_14CAE25:   Set var_8C = Me.Txt
  loc_14CAE2B:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HE), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_B8)
  loc_14CAE33:   var_AC = var_90.Text
  loc_14CAE3B:   var_AC = CVar(var_94) 'String
  loc_14CAE42:   LateIdCallSt
  loc_14CAE73:   Set var_8C = Me.Txt
  loc_14CAE79:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&HF), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_B8)
  loc_14CAE81:   var_AC = var_90.Text
  loc_14CAE89:   var_AC = CVar(var_94) 'String
  loc_14CAE90:   LateIdCallSt
  loc_14CAEC1:   Set var_8C = Me.Txt
  loc_14CAEC7:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H14), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_B8)
  loc_14CAECF:   var_AC = var_90.Text
  loc_14CAED7:   var_AC = CVar(var_94) 'String
  loc_14CAEDE:   LateIdCallSt
  loc_14CAF0F:   Set var_8C = Me.Txt
  loc_14CAF15:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H11), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_B8)
  loc_14CAF1D:   var_AC = var_90.Text
  loc_14CAF25:   var_AC = CVar(var_94) 'String
  loc_14CAF2C:   LateIdCallSt
  loc_14CAF5D:   Set var_8C = Me.Txt
  loc_14CAF63:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H11), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_B8)
  loc_14CAF6B:   var_AC = var_90.Tag
  loc_14CAF73:   var_AC = CVar(var_94) 'String
  loc_14CAF7A:   LateIdCallSt
  loc_14CAFAC:   Set var_8C = Me.Txt
  loc_14CAFB2:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H12), var_90, var_94, &H14, CVar(CLng(var_86)), var_B8)
  loc_14CAFBA:   var_AC = var_90.Tag
  loc_14CAFC2:   var_AC = CVar(var_94) 'String
  loc_14CAFC9:   LateIdCallSt
  loc_14CAFFB:   Set var_8C = Me.Txt
  loc_14CB001:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H12), var_90, var_94, &H15, CVar(CLng(var_86)), var_B8)
  loc_14CB009:   var_AC = var_90.Text
  loc_14CB011:   var_AC = CVar(var_94) 'String
  loc_14CB018:   LateIdCallSt
  loc_14CB04A:   Set var_8C = Me.Txt
  loc_14CB050:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H10), var_90, var_94, &H16, CVar(CLng(var_86)), var_B8)
  loc_14CB058:   var_AC = var_90.Tag
  loc_14CB060:   var_AC = CVar(var_94) 'String
  loc_14CB067:   LateIdCallSt
  loc_14CB099:   Set var_8C = Me.Txt
  loc_14CB09F:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(&H10), var_90, var_94, &H17, CVar(CLng(var_86)), var_B8)
  loc_14CB0A7:   var_AC = var_90.Text
  loc_14CB0AF:   var_AC = CVar(var_94) 'String
  loc_14CB0B6:   LateIdCallSt
  loc_14CB0E8:   Set var_8C = Me.Txt
  loc_14CB0EE:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(6), var_90, var_94, &H14, CVar(CLng(var_86)), var_B8)
  loc_14CB0F6:   var_AC = var_90.Tag
  loc_14CB0FE:   var_AC = CVar(var_94) 'String
  loc_14CB105:   LateIdCallSt
  loc_14CB137:   Set var_8C = Me.Txt
  loc_14CB13D:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(9), var_90, var_94, &H12, CVar(CLng(var_86)), var_B8)
  loc_14CB145:   var_AC = var_90.Tag
  loc_14CB14D:   var_AC = CVar(var_94) 'String
  loc_14CB154:   LateIdCallSt
  loc_14CB186:   Set var_8C = Me.Txt
  loc_14CB18C:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(9), var_90, var_94, &H13, CVar(CLng(var_86)), var_B8)
  loc_14CB194:   var_AC = var_90.Text
  loc_14CB19C:   var_AC = CVar(var_94) 'String
  loc_14CB1A3:   LateIdCallSt
  loc_14CB1BE:   var_E8 = &H18
  loc_14CB1D5:   Set var_8C = Me.Txt
  loc_14CB1DB:   Call 0.Method_Proc_125_78_14CB2E00 (CInt(4), var_90, var_94, var_E8, CVar(CLng(var_86)), var_B8)
  loc_14CB1E3:   var_AC = var_90.Text
  loc_14CB1EB:   var_AC = CVar(var_94) 'String
  loc_14CB1F2:   LateIdCallSt
  loc_14CB20F:   If (var_90.Text = "Room") Then
  loc_14CB216:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_14CB21B:     var_F8 = &H18
  loc_14CB241:     var_90 = Me.Fields.Item("FolioNo")
  loc_14CB252:     var_118 = CVar(CStr(var_90.Value)) 'String
  loc_14CB259:     LateIdCallSt
  loc_14CB26F:   End If
  loc_14CB271:   Set var_B8 = Nothing 
  loc_14CB275: End If
  loc_14CB280: Set var_8C = Me.Txt
  loc_14CB286: Call 0.Method_Proc_125_78_14CB2E00 (CInt(7), var_90, var_B8, var_118, var_F8, var_D8, var_B8)
  loc_14CB28E: var_90.SetFocus
  loc_14CB29F: global_168 = 0
  loc_14CB2A2: Exit Sub
  loc_14CB2A3: ' Referenced from: 14CA560
  loc_14CB2B9: Set var_8C = Err()
  loc_14CB2BF: Call 0.Method_arg_2C (var_94, 0, var_118, var_138, var_148, global_168)
  loc_14CB2CA: MsgBox(CVar(var_94), CVar(var_94), var_B8, global_148, var_E8)
  loc_14CB2DD: Exit Sub
End Sub

Public Sub Proc_125_79_FDD3BC
  'Data Table: 5502C4
  Dim var_8C As TextBox
  loc_FDD1E6: Set var_88 = Me.Txt
  loc_FDD1EC: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(7), var_8C)
  loc_FDD1F4: var_8C.Text = vbNullString
  loc_FDD20E: Set var_88 = Me.Txt
  loc_FDD214: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(8), var_8C)
  loc_FDD21C: var_8C.Text = vbNullString
  loc_FDD236: Set var_88 = Me.Txt
  loc_FDD23C: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(9), var_8C)
  loc_FDD244: var_8C.Text = vbNullString
  loc_FDD25E: Set var_88 = Me.Txt
  loc_FDD264: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&H11), var_8C)
  loc_FDD26C: var_8C.Text = vbNullString
  loc_FDD286: Set var_88 = Me.Txt
  loc_FDD28C: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&H14), var_8C)
  loc_FDD294: var_8C.Text = vbNullString
  loc_FDD2AE: Set var_88 = Me.Txt
  loc_FDD2B4: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&HA), var_8C)
  loc_FDD2BC: var_8C.Text = vbNullString
  loc_FDD2D6: Set var_88 = Me.Txt
  loc_FDD2DC: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&HB), var_8C)
  loc_FDD2E4: var_8C.Text = vbNullString
  loc_FDD2FE: Set var_88 = Me.Txt
  loc_FDD304: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&HC), var_8C)
  loc_FDD30C: var_8C.Text = vbNullString
  loc_FDD326: Set var_88 = Me.Txt
  loc_FDD32C: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&HD), var_8C)
  loc_FDD334: var_8C.Text = vbNullString
  loc_FDD34E: Set var_88 = Me.Txt
  loc_FDD354: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&H13), var_8C)
  loc_FDD35C: var_8C.Text = vbNullString
  loc_FDD376: Set var_88 = Me.Txt
  loc_FDD37C: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&HE), var_8C)
  loc_FDD384: var_8C.Text = vbNullString
  loc_FDD39E: Set var_88 = Me.Txt
  loc_FDD3A4: Call 0.Method_Proc_125_79_FDD3BC0 (CInt(&HF), var_8C)
  loc_FDD3AC: var_8C.Text = vbNullString
  loc_FDD3B8: Exit Sub
End Sub

Public Sub Proc_125_80_13D284C
  'Data Table: 5502C4
  Dim var_A8 As Variant
  Dim var_F8 As TextBox
  Dim var_200 As TextBox
  loc_13D1EB4: Set var_88 = ()
  loc_13D1ED5: Set var_DC = CVar(CLng(Txt.DispID_A))(1)
  loc_13D1EFF: If (CStr(Txt.DispID_41) <> vbNullString) Then
  loc_13D1F06:   Set var_F4 = ()
  loc_13D1F0D:   Set var_88 = ()
  loc_13D1F46:   Set var_DC = Me.Txt
  loc_13D1F4C:   Call 0.Method_Proc_125_80_13D284C0 (CInt(7), var_F8, CStr(Txt.DispID_41))
  loc_13D1F54:   var_F8.Tag = 1
  loc_13D1F70:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1FA1:   global_156 = CStr(Txt.DispID_41)
  loc_13D1FB6:   Set var_88 = CVar(CLng(Txt.DispID_A))(2)
  loc_13D1FEF:   Set var_DC = Me.Txt
  loc_13D1FF5:   Call 0.Method_Proc_125_80_13D284C0 (CInt(7), var_F8, CStr(Txt.DispID_41))
  loc_13D1FFD:   var_F8.Text = 3
  loc_13D2019:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D204A:   global_148 = CStr(Txt.DispID_41)
  loc_13D205F:   Set var_88 = CVar(CLng(Txt.DispID_A))(4)
  loc_13D2090:   global_152 = CStr(Txt.DispID_41)
  loc_13D20A5:   Set var_88 = CVar(CLng(Txt.DispID_A))(5)
  loc_13D20DD:   Set var_DC = Me.Txt
  loc_13D20E3:   Call 0.Method_Proc_125_80_13D284C0 (CInt(6), var_F8, CStr(Txt.DispID_41))
  loc_13D20EB:   var_F8.Tag = CVar(CLng(6))
  loc_13D2107:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D2136:   Set var_DC = CVar(CLng(7))(Txt.DispID_41)
  loc_13D2165:   Set var_F8 = CVar(CLng(6))(Txt.DispID_41)
  loc_13D21C3:   Set var_1FC = Me.Txt
  loc_13D21C9:   Call 0.Method_Proc_125_80_13D284C0 (CInt(6), var_200, CStr(IIf((CStr(var_EC) = vbNullString), CVar(CStr(var_158)), CVar(CStr(Txt.DispID_41)))), CVar(CLng(7)))
  loc_13D21D1:   var_200.Text = CVar(CLng(Txt.DispID_A))
  loc_13D2205:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(Txt.DispID_A)))
  loc_13D2236:   Proc_6_39_E7D3A0(var_158, CVar(CStr(Txt.DispID_41)))
  loc_13D224D:   Set var_DC = Me.Txt
  loc_13D2253:   Call 0.Method_Proc_125_80_13D284C0 (CInt(4), var_F8, CStr(var_158))
  loc_13D225B:   var_F8.Text = &H18
  loc_13D227B:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D22B4:   Set var_DC = Me.Txt
  loc_13D22BA:   Call 0.Method_Proc_125_80_13D284C0 (CInt(8), var_F8, CStr(Txt.DispID_41))
  loc_13D22C2:   var_F8.Text = 8
  loc_13D22DE:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D2316:   Set var_DC = Me.Txt
  loc_13D231C:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&HA), var_F8, CStr(Txt.DispID_41))
  loc_13D2324:   var_F8.Text = CVar(CLng(9))
  loc_13D2340:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D2378:   Set var_DC = Me.Txt
  loc_13D237E:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&HB), var_F8, CStr(Txt.DispID_41))
  loc_13D2386:   var_F8.Text = CVar(CLng(&HA))
  loc_13D23A2:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D23DA:   Set var_DC = Me.Txt
  loc_13D23E0:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&HC), var_F8, CStr(Txt.DispID_41))
  loc_13D23E8:   var_F8.Text = CVar(CLng(&HB))
  loc_13D2404:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D243C:   Set var_DC = Me.Txt
  loc_13D2442:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&HD), var_F8, CStr(Txt.DispID_41))
  loc_13D244A:   var_F8.Text = CVar(CLng(&HC))
  loc_13D2466:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D249F:   Set var_DC = Me.Txt
  loc_13D24A5:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&H13), var_F8, CStr(Txt.DispID_41))
  loc_13D24AD:   var_F8.Text = &H19
  loc_13D24C9:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D2501:   Set var_DC = Me.Txt
  loc_13D2507:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&HE), var_F8, CStr(Txt.DispID_41))
  loc_13D250F:   var_F8.Text = CVar(CLng(&HD))
  loc_13D252B:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D2563:   Set var_DC = Me.Txt
  loc_13D2569:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&HF), var_F8, CStr(Txt.DispID_41))
  loc_13D2571:   var_F8.Text = CVar(CLng(&HE))
  loc_13D258D:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D25C5:   Set var_DC = Me.Txt
  loc_13D25CB:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&H14), var_F8, CStr(Txt.DispID_41))
  loc_13D25D3:   var_F8.Text = CVar(CLng(&HF))
  loc_13D25EF:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D2627:   Set var_DC = Me.Txt
  loc_13D262D:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_13D2635:   var_F8.Text = CVar(CLng(&H10))
  loc_13D2651:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D2689:   Set var_DC = Me.Txt
  loc_13D268F:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_13D2697:   var_F8.Tag = CVar(CLng(&H11))
  loc_13D26B3:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D26EC:   Set var_DC = Me.Txt
  loc_13D26F2:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&H10), var_F8, CStr(Txt.DispID_41))
  loc_13D26FA:   var_F8.Tag = &H16
  loc_13D2716:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D274F:   Set var_DC = Me.Txt
  loc_13D2755:   Call 0.Method_Proc_125_80_13D284C0 (CInt(&H10), var_F8, CStr(Txt.DispID_41))
  loc_13D275D:   var_F8.Text = &H17
  loc_13D2779:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D27B2:   Set var_DC = Me.Txt
  loc_13D27B8:   Call 0.Method_Proc_125_80_13D284C0 (CInt(9), var_F8, CStr(Txt.DispID_41))
  loc_13D27C0:   var_F8.Text = &H13
  loc_13D27DC:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D27EB:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_13D2815:   Set var_DC = Me.Txt
  loc_13D281B:   Call 0.Method_Proc_125_80_13D284C0 (CInt(9), var_F8, CStr(Txt.DispID_41))
  loc_13D2823:   var_F8.Tag = &H12
  loc_13D2840:   global_168 = &HFF
  loc_13D2845:   Set var_F4 = Nothing 
  loc_13D2849: End If
  loc_13D2849: Exit Sub
End Sub

Public Sub Proc_125_81_EE5048
  'Data Table: 5502C4
  loc_EE4F96: On Error Goto loc_EE4FDC
  loc_EE4FAE: Call 0.Method_arg_18C (var_8C)
  loc_EE4FB6: Call var_8C.Show
  loc_EE4FCB: Call 0.Method_arg_188 (var_B0)
  loc_EE4FD3: var_88 = var_B0
  loc_EE4FD6: Proc_125_81_EE5048 = 1
  loc_EE4FDC: ' Referenced from: EE4F96
  loc_EE4FE4: Set var_8C = Err()
  loc_EE4FEA: Call 0.Method_arg_1C (var_B4)
  loc_EE4FFB: If (var_B4 <> 0) Then
  loc_EE5006:   Set var_8C = Err()
  loc_EE500C:   Call 0.Method_arg_2C (var_B0)
  loc_EE502D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE5040: End If
  loc_EE5040: Proc_125_81_EE5048 = 
End Sub

Public Sub Proc_125_82_1BC9420
  'Data Table: 5502C4
  Dim var_10C As Variant
  Dim var_B8 As String
  Dim var_11C As Variant
  Dim var_130 As String
  Dim var_C8 As Long
  Dim var_12C As Variant
  Dim var_104 As String
  Dim unk_5502DC As Connection15
  Dim var_108 As Fields15
  Dim var_140 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_29C As String
  Dim var_2A0 As String
  Dim var_2A8 As String
  Dim var_2AC As String
  Dim var_2B0 As String
  Dim var_2A4 As String
  Dim var_298 As String
  Dim var_160 As Variant
  Dim var_CE As Integer
  Dim var_2B4 As Fields15
  Dim var_2B8 As Field20
  Dim var_2BC As Fields15
  Dim var_150 As Variant
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_2CC As Double
  Dim var_2D4 As Double
  Dim var_2E8 As Fields15
  Dim var_254 As Variant
  Dim var_F0 As Double
  Dim var_100 As Double
  Dim var_F8 As Double
  Dim var_E4 As Recordset15
  Dim var_8C As Recordset15
  Dim var_274 As Variant
  loc_1BC3E02: If (HallAdvanceDepDialog.AdvType = "AD") Then
  loc_1BC3E0B:   var_C2 = "AD"
  loc_1BC3E1C:   Set var_108 = Me.Txt
  loc_1BC3E22:   Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C)
  loc_1BC3E2A:   var_104 = var_10C.Text
  loc_1BC3E72:   var_C8 = CLng(Val(CStr(Right(var_104, 8))))
  loc_1BC3EA6:   var_B8 = var_104
  loc_1BC3EBE:   global_104 = CStr(Trim(Mid(var_104, 9, 5)))
  loc_1BC3ED5: Else
  loc_1BC3EDB:   var_104 = HallAdvanceDepDialog.AdvType
  loc_1BC3EEB:   If (var_104 = "AR") Then
  loc_1BC3EF4:     var_C2 = "AR"
  loc_1BC3F05:     Set var_108 = Me.Txt
  loc_1BC3F0B:     Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104)
  loc_1BC3F13:     var_C8 = var_10C.Text
  loc_1BC3F5B:     var_C8 = CLng(Val(CStr(Right(var_104, 8))))
  loc_1BC3F68:     var_12C = 5
  loc_1BC3F8F:     var_B8 = var_104
  loc_1BC3FA7:     global_104 = CStr(Trim(Mid(var_104, 9, var_12C)))
  loc_1BC3FBB:   End If
  loc_1BC3FBB: End If
  loc_1BC3FDF: unk_5502DC.Execute "Select * from Enviro where LogSite_code='" & MemVar_1F95078 & "'", var_12C, -1
  loc_1BC3FEA: Set var_CC = var_108
  loc_1BC4003: var_164 = Me.Recordset15.RecordCount
  loc_1BC4011: If (var_164 > 0) Then
  loc_1BC4029:   If (global_52 = MemVar_1F95070 & "BANQ") Then
  loc_1BC403E:     var_108 = Me.Recordset15.Fields
  loc_1BC4057:     var_E8 = Proc_6_38_E69628(CVar(var_108.Item("IndoorPartyAC")), var_108, var_C8)
  loc_1BC4063:   Else
  loc_1BC407D:     var_10C = Me.Recordset15.Fields.Item("OutDoorPartyAC")
  loc_1BC408E:     var_E8 = Proc_6_38_E69628(CVar(var_10C), var_B8)
  loc_1BC4097:   End If
  loc_1BC4097: End If
  loc_1BC40B5: If (Trim(var_E8) = vbNullString) Then
  loc_1BC40BD:   var_150 = "Outdoor"
  loc_1BC4102:   var_194 = ("Please Fill " + IIf((global_52 = MemVar_1F95070 & "BANQ"), "Indoor", var_150))
  loc_1BC410B:   var_1B4 = (var_194 + " Party A/C in Parameter Setting")
  loc_1BC4133:   MsgBox(var_1B4 & vbCrLf & "Or" & vbCrLf & "Contact to Your Administrator", &H40, var_254, var_274, var_294)
  loc_1BC415D:   Proc_125_82_1BC9420 = &HFF
  loc_1BC4163: End If
  loc_1BC416C: unk_5502DC.BeginTrans var_164
  loc_1BC4175: var_88 = CByte(1) 'Byte
  loc_1BC41AB: Set var_108 = Me.Txt
  loc_1BC41B1: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_298, "UPDATE PaychargeH SET PostDocId='" & var_B8 & "' WHERE DocID='")
  loc_1BC41C2: var_2A0 = -1 & var_298
  loc_1BC41EB: unk_5502DC.Execute var_2A0 & "' AND VType='" & HallAdvanceDepDialog.AdvType & "'", var_2B4, var_B8
  loc_1BC4227: var_104 = var_B8
  loc_1BC4254: unk_5502DC.Execute "Delete from Ledger where Docid='" & var_104 & "' AND V_Type='" & HallAdvanceDepDialog.AdvType & "'", var_10C.Text, -1
  loc_1BC4292: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104, "select (AmtCr - AmtDr) as CreditAmt,PayCode,Accode,revmast.name as RevenueName,PaychargeH.Comments from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='")
  loc_1BC429A: var_214 = var_10C.Text
  loc_1BC42A3: var_130 = -1 & var_104
  loc_1BC42B8: var_160 = CVar("Delete from Ledger where Docid='" & var_104 & "' And PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1BC42C6: Set var_2B4 = Me.Txt
  loc_1BC42CC: Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_160)
  loc_1BC42DB: Proc_6_7_F26918(var_150, CVar(var_2B8))
  loc_1BC4302: var_1F4 = var_2BC & var_150 & " and PaychargeH.PayType='Cash' AND RestCode='" & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')=''" 
  loc_1BC4310: unk_5502DC.Execute CStr(var_1F4), Me.Txt, 
  loc_1BC431B: Set var_8C = var_2BC
  loc_1BC4349: ' Referenced from: 1BC491A
  loc_1BC435B: If Not(Me.Recordset15.EOF) Then
  loc_1BC4389:   var_D4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1BC43AF:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC43D1:   If (var_10C.Value > 0) Then
  loc_1BC43DA:     var_CE = (var_CE + 1)
  loc_1BC43EB:     Set var_108 = Me.Txt
  loc_1BC43F1:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C)
  loc_1BC43F9:     var_298 = var_10C.Text
  loc_1BC444D:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC4455:     var_160 = Now
  loc_1BC445F:     var_2AC = 0
  loc_1BC446A:     var_2A8 = 0
  loc_1BC4475:     var_2A4 = 0
  loc_1BC447E:     var_2A0 = "A"
  loc_1BC44E0:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC4528:     var_CE = (var_CE + 1)
  loc_1BC4539:     Set var_108 = Me.Txt
  loc_1BC453F:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC4547:     CDbl(0) = var_10C.Text
  loc_1BC4571:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC45A3:     var_160 = Now
  loc_1BC45AD:     var_2AC = 0
  loc_1BC45B8:     var_2A8 = 0
  loc_1BC45C3:     var_2A4 = 0
  loc_1BC45CC:     var_2A0 = "A"
  loc_1BC45E7:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC462E:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_CE, "Delete from Ledger where Docid='" & var_104, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC4639:     var_B8 = var_104
  loc_1BC4642:     var_C2 = "Delete from Ledger where Docid='" & var_104
  loc_1BC4673:   Else
  loc_1BC4679:     var_CE = (var_CE + 1)
  loc_1BC468A:     Set var_108 = Me.Txt
  loc_1BC4690:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC4698:     CSng(var_150) = var_10C.Text
  loc_1BC46F4:     var_160 = Now
  loc_1BC46FE:     var_2AC = 0
  loc_1BC4709:     var_2A8 = 0
  loc_1BC4714:     var_2A4 = 0
  loc_1BC471D:     var_2A0 = "A"
  loc_1BC477F:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC47C7:     var_CE = (var_CE + 1)
  loc_1BC47D8:     Set var_108 = Me.Txt
  loc_1BC47DE:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC47E6:     CDbl(0) = var_10C.Text
  loc_1BC4808:     var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC482A:     var_2BC = Me.Recordset15.Fields
  loc_1BC483A:     var_194 = var_2BC.Item("AcCode").Value
  loc_1BC4842:     var_160 = Now
  loc_1BC484C:     var_2AC = 0
  loc_1BC4857:     var_2A8 = 0
  loc_1BC4862:     var_2A4 = 0
  loc_1BC486B:     var_2A0 = "A"
  loc_1BC488B:     var_150 = Abs(var_2B8.Value)
  loc_1BC48CD:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_CE, "Delete from Ledger where Docid='" & var_104, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC48D8:     var_B8 = var_104
  loc_1BC48E1:     var_C2 = "Delete from Ledger where Docid='" & var_104
  loc_1BC490F:   End If
  loc_1BC4915:   Me.Recordset15.MoveNext
  loc_1BC491A:   GoTo loc_1BC4349
  loc_1BC491D: End If
  loc_1BC493B: Set var_108 = Me.Txt
  loc_1BC4941: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104, "select sum(AmtDr-AmtCr) as CreditAmt,RestCode,PayCode,max(Accode) as ACCode,max(revmast.name) as RevenueNAme from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC4949: var_E8 = var_10C.Text
  loc_1BC4967: var_160 = CVar(CDbl(0) & var_104 & "' And PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1BC4975: Set var_2B4 = Me.Txt
  loc_1BC497B: Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC498A: Proc_6_7_F26918(var_150, CVar(var_2B8), CStr(var_194))
  loc_1BC4992: var_194 = var_D4 & var_150 
  loc_1BC49B1: var_1F4 = var_194 & " and PaychargeH.PayType='Room' and roomtype='RO' AND RestCode='" & CVar(global_52) & "' Group By PayCode,RestCode" 
  loc_1BC49BF: unk_5502DC.Execute CStr(var_1F4), MemVar_1F950C8, CDate(var_160)
  loc_1BC49CA: Set var_8C = var_2BC
  loc_1BC49F8: ' Referenced from: 1BC56BE
  loc_1BC4A0A: If Not(Me.Recordset15.EOF) Then
  loc_1BC4A63:   unk_5502DC.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_194, -1
  loc_1BC4A6E:   Set var_DC = var_2B4
  loc_1BC4A9C:   If (var_DC.RecordCount > 0) Then
  loc_1BC4AC7:     var_104 = Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName")))
  loc_1BC4ACE:     var_130 = var_104 & " "
  loc_1BC4AE3:     var_2B4 = Me.Recordset15.Fields
  loc_1BC4B00:     var_D4 = var_2B4 & Proc_6_38_E69628(CVar(var_2B4.Item("RevenueName")), var_130)
  loc_1BC4B1D:   Else
  loc_1BC4B4B:     var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC4B58:   End If
  loc_1BC4B8A:   If Not(IsNull(CVar(Me.Recordset15.Fields.Item("AcCode")))) Then
  loc_1BC4BAA:     var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC4BCC:     If (var_10C.Value > 0) Then
  loc_1BC4BD5:       var_CE = (var_CE + 1)
  loc_1BC4BE6:       Set var_108 = Me.Txt
  loc_1BC4BEC:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C)
  loc_1BC4BF4:       var_298 = var_10C.Text
  loc_1BC4C50:       var_160 = Now
  loc_1BC4C5A:       var_2AC = 0
  loc_1BC4C65:       var_2A8 = 0
  loc_1BC4C70:       var_2A4 = 0
  loc_1BC4C79:       var_2A0 = "A"
  loc_1BC4CDB:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC4D23:       var_CE = (var_CE + 1)
  loc_1BC4D34:       Set var_108 = Me.Txt
  loc_1BC4D3A:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC4D42:       CDbl(0) = var_10C.Text
  loc_1BC4D96:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC4D9E:       var_160 = Now
  loc_1BC4DA8:       var_2AC = 0
  loc_1BC4DB3:       var_2A8 = 0
  loc_1BC4DBE:       var_2A4 = 0
  loc_1BC4DC7:       var_2A0 = "A"
  loc_1BC4DE7:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC4E29:       Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC4E34:       var_B8 = var_104
  loc_1BC4E3D:       var_C2 = var_130
  loc_1BC4E6E:     Else
  loc_1BC4E74:       var_CE = (var_CE + 1)
  loc_1BC4E85:       Set var_108 = Me.Txt
  loc_1BC4E8B:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, var_E8, CDbl(0))
  loc_1BC4E93:       CSng(var_150) = var_10C.Text
  loc_1BC4EE7:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC4EEF:       var_160 = Now
  loc_1BC4EF9:       var_2AC = 0
  loc_1BC4F04:       var_2A8 = 0
  loc_1BC4F0F:       var_2A4 = 0
  loc_1BC4F18:       var_2A0 = "A"
  loc_1BC4F3F:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC4F7A:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC4F85:       var_B8 = var_104
  loc_1BC4F8E:       var_C2 = var_130
  loc_1BC4FBC:     End If
  loc_1BC4FC2:     var_CE = (var_CE + 1)
  loc_1BC4FD3:     Set var_108 = Me.Txt
  loc_1BC4FD9:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(var_150))
  loc_1BC4FE1:     CDbl(0) = var_10C.Text
  loc_1BC500B:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC503D:     var_160 = Now
  loc_1BC5047:     var_2AC = 0
  loc_1BC5052:     var_2A8 = 0
  loc_1BC505D:     var_2A4 = 0
  loc_1BC5066:     var_2A0 = "A"
  loc_1BC5081:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC50C8:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC50D3:     var_B8 = var_104
  loc_1BC50DC:     var_C2 = var_130
  loc_1BC510D:   Else
  loc_1BC512A:     var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC514C:     If (var_10C.Value > 0) Then
  loc_1BC5168:       MsgBox(vbNullString, &H10, var_150, var_160, var_194)
  loc_1BC517E:       var_CE = (var_CE + 1)
  loc_1BC518F:       Set var_108 = Me.Txt
  loc_1BC5195:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC519D:       CSng(var_150) = var_10C.Text
  loc_1BC51F1:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC51F9:       var_160 = Now
  loc_1BC5203:       var_2AC = 0
  loc_1BC520E:       var_2A8 = 0
  loc_1BC5219:       var_2A4 = 0
  loc_1BC5222:       var_2A0 = "A"
  loc_1BC5284:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC52CC:       var_CE = (var_CE + 1)
  loc_1BC52DD:       Set var_108 = Me.Txt
  loc_1BC52E3:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC52EB:       CDbl(0) = var_10C.Text
  loc_1BC5315:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC5347:       var_160 = Now
  loc_1BC5351:       var_2AC = 0
  loc_1BC535C:       var_2A8 = 0
  loc_1BC5367:       var_2A4 = 0
  loc_1BC5370:       var_2A0 = "A"
  loc_1BC538B:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC53D2:       Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC53DD:       var_B8 = var_104
  loc_1BC53E6:       var_C2 = var_130
  loc_1BC5417:     Else
  loc_1BC541D:       var_CE = (var_CE + 1)
  loc_1BC542E:       Set var_108 = Me.Txt
  loc_1BC5434:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC543C:       CSng(var_150) = var_10C.Text
  loc_1BC5498:       var_160 = Now
  loc_1BC54A2:       var_2AC = 0
  loc_1BC54AD:       var_2A8 = 0
  loc_1BC54B8:       var_2A4 = 0
  loc_1BC54C1:       var_2A0 = "A"
  loc_1BC5523:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC556B:       var_CE = (var_CE + 1)
  loc_1BC557C:       Set var_108 = Me.Txt
  loc_1BC5582:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC558A:       CDbl(0) = var_10C.Text
  loc_1BC55AC:       var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC55CE:       var_2BC = Me.Recordset15.Fields
  loc_1BC55DE:       var_194 = var_2BC.Item("AcCode").Value
  loc_1BC55E6:       var_160 = Now
  loc_1BC55F0:       var_2AC = 0
  loc_1BC55FB:       var_2A8 = 0
  loc_1BC5606:       var_2A4 = 0
  loc_1BC560F:       var_2A0 = "A"
  loc_1BC562F:       var_150 = Abs(var_2B8.Value)
  loc_1BC5671:       Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC567C:       var_B8 = var_104
  loc_1BC5685:       var_C2 = var_130
  loc_1BC56B3:     End If
  loc_1BC56B3:   End If
  loc_1BC56B9:   Me.Recordset15.MoveNext
  loc_1BC56BE:   GoTo loc_1BC49F8
  loc_1BC56C1: End If
  loc_1BC56DF: Set var_108 = Me.Txt
  loc_1BC56E5: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104, "select Sum(AmtCr - AmtDr) as CreditAmt,PayCode,max(Comments) as Comments,max(Accode) as ACCode,max(CardNo) as CardNo,max(RestCode) as RestCode,max(PaychargeH.PayType) as Paytype,max(revmast.name) as RevenueName,BatchNo from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode  where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC56ED: var_E8 = var_10C.Text
  loc_1BC56F6: var_130 = CDbl(0) & var_104
  loc_1BC5704: var_29C = var_130 & "' And PaychargeH.SITE_CODE='" & MemVar_1F95070
  loc_1BC570B: var_160 = CVar(var_29C & "' AND Vdate = ") 'String
  loc_1BC5719: Set var_2B4 = Me.Txt
  loc_1BC571F: Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC572E: Proc_6_7_F26918(var_150, CVar(var_2B8), CStr(var_194))
  loc_1BC573F: var_1B4 = var_D4 & var_150 & " and RestCode='" 
  loc_1BC5755: var_1F4 = var_1B4 & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.PayType in ('Credit Card') Group by Paycode,BatchNo" 
  loc_1BC5763: unk_5502DC.Execute CStr(var_1F4), MemVar_1F950C8, CDate(var_160)
  loc_1BC576E: Set var_8C = var_2BC
  loc_1BC579C: ' Referenced from: 1BC729E
  loc_1BC57AE: If Not(Me.Recordset15.EOF) Then
  loc_1BC57DF:   Proc_6_39_E7D3A0(var_150, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1BC57EC:   var_D4 = CStr("Batch No. " & var_150)
  loc_1BC5818:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC583A:   If (var_10C.Value > 0) Then
  loc_1BC5843:     var_CE = (var_CE + 1)
  loc_1BC5854:     Set var_108 = Me.Txt
  loc_1BC585A:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C)
  loc_1BC5862:     var_298 = var_10C.Text
  loc_1BC58B6:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC58BE:     var_160 = Now
  loc_1BC58C8:     var_2AC = 0
  loc_1BC58D3:     var_2A8 = 0
  loc_1BC58DE:     var_2A4 = 0
  loc_1BC58E7:     var_2A0 = "A"
  loc_1BC5949:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC5991:     var_CE = (var_CE + 1)
  loc_1BC59A2:     Set var_108 = Me.Txt
  loc_1BC59A8:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC59B0:     CDbl(0) = var_10C.Text
  loc_1BC59DA:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC5A0C:     var_160 = Now
  loc_1BC5A16:     var_2AC = 0
  loc_1BC5A21:     var_2A8 = 0
  loc_1BC5A2C:     var_2A4 = 0
  loc_1BC5A35:     var_2A0 = "A"
  loc_1BC5A50:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC5A97:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC5AA2:     var_B8 = var_104
  loc_1BC5AAB:     var_C2 = var_130
  loc_1BC5ADC:   Else
  loc_1BC5AE2:     var_CE = (var_CE + 1)
  loc_1BC5AF3:     Set var_108 = Me.Txt
  loc_1BC5AF9:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC5B01:     CSng(var_150) = var_10C.Text
  loc_1BC5B5D:     var_160 = Now
  loc_1BC5B67:     var_2AC = 0
  loc_1BC5B72:     var_2A8 = 0
  loc_1BC5B7D:     var_2A4 = 0
  loc_1BC5B86:     var_2A0 = "A"
  loc_1BC5BE8:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC5C30:     var_CE = (var_CE + 1)
  loc_1BC5C41:     Set var_108 = Me.Txt
  loc_1BC5C47:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC5C4F:     CDbl(0) = var_10C.Text
  loc_1BC5C71:     var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC5C93:     var_2BC = Me.Recordset15.Fields
  loc_1BC5CA3:     var_194 = var_2BC.Item("AcCode").Value
  loc_1BC5CAB:     var_160 = Now
  loc_1BC5CB5:     var_2AC = 0
  loc_1BC5CC0:     var_2A8 = 0
  loc_1BC5CCB:     var_2A4 = 0
  loc_1BC5CD4:     var_2A0 = "A"
  loc_1BC5CF4:     var_150 = Abs(var_2B8.Value)
  loc_1BC5D36:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC5D41:     var_B8 = var_104
  loc_1BC5D4A:     var_C2 = var_130
  loc_1BC5D78:   End If
  loc_1BC5DB7:   If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1BC5DF9:     var_150 = "Select Top 1 CommAc as BankCommAc,CommPer as BankCommPer,Taxstru from CreditCardHistory Where Revcode='" & Me.Recordset15.Fields.Item("PayCode").Value 
  loc_1BC5E11:     Set var_2B4 = Me.Txt
  loc_1BC5E17:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_150 & "' and AppDate<=", var_214, -1, var_2BC, var_E8)
  loc_1BC5E1F:     var_194 = CVar(var_2B8) 'Address
  loc_1BC5E26:     Proc_6_7_F26918(var_1B4, var_194, CDbl(0), CSng(var_150))
  loc_1BC5E45:     unk_5502DC.Execute CStr(CStr(var_194) & var_1B4 & " Order by AppDate Desc"), var_D4, MemVar_1F950C8
  loc_1BC5E50:     Set var_E0 = var_2BC
  loc_1BC5E88:     If (var_E0.RecordCount > 0) Then
  loc_1BC5EB9:       Proc_6_39_E7D3A0(var_150, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1BC5EC6:       var_D4 = CStr("Batch No. " & var_150)
  loc_1BC5EF2:       var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC5FD2:       var_254 = (Round(CVar(((Val(CStr(var_10C.Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))), 2) > 0) And Not(IsNull(CVar(var_E0.Fields.Item("BankCommAc")))) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1BC6001:       If CBool(var_254) Then
  loc_1BC600A:         var_CE = (var_CE + 1)
  loc_1BC601B:         Set var_108 = Me.Txt
  loc_1BC6021:         Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_2A0, var_CE)
  loc_1BC6029:         var_2D4 = var_10C.Text
  loc_1BC60D7:         var_160 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1BC6105:         var_1F4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1BC610D:         var_1B4 = Now
  loc_1BC6117:         var_2FC = 0
  loc_1BC6122:         var_2F8 = 0
  loc_1BC612D:         var_2B0 = 0
  loc_1BC6136:         var_2AC = "A"
  loc_1BC6199:         Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_2A0))
  loc_1BC61F7:         var_CE = (var_CE + 1)
  loc_1BC6208:         Set var_108 = Me.Txt
  loc_1BC620E:         Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_2A0, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_160, 2)))
  loc_1BC6216:         CDbl(0) = var_10C.Text
  loc_1BC623D:         var_1D4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1BC62C1:         var_160 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1BC62C8:         var_194 = Round(var_160, 2)
  loc_1BC62F2:         var_1F4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC62FA:         var_1B4 = Now
  loc_1BC6304:         var_2FC = 0
  loc_1BC630F:         var_2F8 = 0
  loc_1BC631A:         var_2B0 = 0
  loc_1BC6323:         var_2AC = "A"
  loc_1BC6386:         Proc_6_141_12E23F4(MemVar_1F95044, var_298, var_CE, var_29C, var_C8, global_104, MemVar_1F95070, CDate(var_2A0))
  loc_1BC6429:         var_2B4 = var_E0.Fields
  loc_1BC6442:         var_130 = CStr(var_2B4.Item("BankCommPer").Value)
  loc_1BC6464:         var_194 = Round(CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(var_130)) / CDbl(&H64))), 3)
  loc_1BC646D:         var_F0 = CSng(var_194)
  loc_1BC6490:         var_100 = CDbl(0)
  loc_1BC64A6:         var_140 = "Select AcCode,Rate,TaxStru.Nature from TaxStru INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode Where TaxStru.Code='"
  loc_1BC64EC:         unk_5502DC.Execute CStr(var_140 & var_E0.Fields.Item("TaxStru").Value & "'"), var_194, -1
  loc_1BC64F7:         Set var_E4 = var_2B4
  loc_1BC652B:         var_10C = var_E4.Fields.Item("Nature")
  loc_1BC654D:         If (var_10C.Value = "On Base Amt") Then
  loc_1BC6556:           var_CE = (var_CE + 1)
  loc_1BC6567:           Set var_108 = Me.Txt
  loc_1BC656D:           Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_29C, var_CE, var_2B4, CDbl(0))
  loc_1BC6618:           var_1D4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC6620:           var_194 = Now
  loc_1BC662A:           var_2F8 = 0
  loc_1BC6635:           var_2B0 = 0
  loc_1BC6640:           var_2AC = 0
  loc_1BC6649:           var_2A8 = "A"
  loc_1BC66AC:           Proc_6_141_12E23F4(MemVar_1F95044, var_298, var_CE, var_29C, var_C8, global_104, MemVar_1F95070, CDate(var_29C))
  loc_1BC6702:           var_CE = (var_CE + 1)
  loc_1BC6713:           Set var_108 = Me.Txt
  loc_1BC6719:           Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_29C, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F0) / CDbl(&H64))), 2)))
  loc_1BC6721:           CDbl(0) = var_10C.Text
  loc_1BC6748:           var_1B4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC679A:           var_160 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F0) / CDbl(&H64))), 2)
  loc_1BC67C4:           var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC67CC:           var_194 = Now
  loc_1BC67D6:           var_2F8 = 0
  loc_1BC67E1:           var_2B0 = 0
  loc_1BC67EC:           var_2AC = 0
  loc_1BC67F5:           var_2A8 = "A"
  loc_1BC6858:           Proc_6_141_12E23F4(MemVar_1F95044, var_130, var_CE, var_298, var_C8, global_104, MemVar_1F95070, CDate(var_29C))
  loc_1BC6863:           var_B8 = var_130
  loc_1BC686C:           var_C2 = var_298
  loc_1BC68FE:           var_F8 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F0) / CDbl(&H64))), 3))
  loc_1BC6947:           var_2CC = Val(CStr(var_E4.Fields.Item("Rate").Value))
  loc_1BC6970:           var_194 = (CVar(var_E4.Fields.Item("Rate").Text) + Round(CVar(((var_2CC * var_F0) / CDbl(&H64))), 3))
  loc_1BC6975:           var_100 = CSng(var_194)
  loc_1BC6990:         Else
  loc_1BC69AA:           var_10C = var_E4.Fields.Item("Nature")
  loc_1BC69CC:           If (var_10C.Value = "On Prev. Tax Amt") Then
  loc_1BC69D5:             var_CE = (var_CE + 1)
  loc_1BC69E6:             Set var_108 = Me.Txt
  loc_1BC69EC:             Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_29C, var_CE, var_100, var_2CC, var_F8)
  loc_1BC69F4:             var_2CC = var_10C.Text
  loc_1BC6A97:             var_1D4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC6A9F:             var_194 = Now
  loc_1BC6AA9:             var_2F8 = 0
  loc_1BC6AB4:             var_2B0 = 0
  loc_1BC6ABF:             var_2AC = 0
  loc_1BC6AC8:             var_2A8 = "A"
  loc_1BC6B2B:             Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_29C))
  loc_1BC6B81:             var_CE = (var_CE + 1)
  loc_1BC6B92:             Set var_108 = Me.Txt
  loc_1BC6B98:             Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_29C, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)))
  loc_1BC6BA0:             CDbl(0) = var_10C.Text
  loc_1BC6BC7:             var_1B4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC6C19:             var_160 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)
  loc_1BC6C43:             var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC6C4B:             var_194 = Now
  loc_1BC6C55:             var_2F8 = 0
  loc_1BC6C60:             var_2B0 = 0
  loc_1BC6C6B:             var_2AC = 0
  loc_1BC6C74:             var_2A8 = "A"
  loc_1BC6CD7:             Proc_6_141_12E23F4(MemVar_1F95044, var_130, var_CE, var_298, var_C8, global_104, MemVar_1F95070, CDate(var_29C))
  loc_1BC6CE2:             var_B8 = var_130
  loc_1BC6CEB:             var_C2 = var_298
  loc_1BC6D7D:             var_F8 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 3))
  loc_1BC6DC6:             var_2CC = Val(CStr(var_E4.Fields.Item("Rate").Value))
  loc_1BC6DEF:             var_194 = (CVar(var_100) + Round(CVar(((var_2CC * var_F8) / CDbl(&H64))), 3))
  loc_1BC6DF4:             var_100 = CSng(var_194)
  loc_1BC6E0F:           Else
  loc_1BC6E29:             var_10C = var_E4.Fields.Item("Nature")
  loc_1BC6E4B:             If (var_10C.Value = "On Running Total") Then
  loc_1BC6E54:               var_CE = (var_CE + 1)
  loc_1BC6E65:               Set var_108 = Me.Txt
  loc_1BC6E6B:               Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_29C, var_CE, var_100, var_2CC, var_F8)
  loc_1BC6E73:               var_2CC = var_10C.Text
  loc_1BC6F16:               var_1D4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC6F1E:               var_194 = Now
  loc_1BC6F28:               var_2F8 = 0
  loc_1BC6F33:               var_2B0 = 0
  loc_1BC6F3E:               var_2AC = 0
  loc_1BC6F47:               var_2A8 = "A"
  loc_1BC6FAA:               Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_29C))
  loc_1BC7000:               var_CE = (var_CE + 1)
  loc_1BC7011:               Set var_108 = Me.Txt
  loc_1BC7017:               Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_29C, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)))
  loc_1BC701F:               CDbl(0) = var_10C.Text
  loc_1BC703E:               var_2B8 = var_E4.Fields.Item("AcCode")
  loc_1BC7046:               var_1B4 = var_2B8.Value
  loc_1BC705D:               var_2BC = var_E4.Fields
  loc_1BC7098:               var_160 = Round(CVar(((Val(CStr(var_2BC.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)
  loc_1BC70C2:               var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC70CA:               var_194 = Now
  loc_1BC70D4:               var_2F8 = 0
  loc_1BC70DF:               var_2B0 = 0
  loc_1BC70EA:               var_2AC = 0
  loc_1BC70F3:               var_2A8 = "A"
  loc_1BC7156:               Proc_6_141_12E23F4(MemVar_1F95044, var_130, var_CE, var_298, var_C8, global_104, MemVar_1F95070, CDate(var_29C))
  loc_1BC7161:               var_B8 = var_130
  loc_1BC716A:               var_C2 = var_298
  loc_1BC71FC:               var_F8 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 3))
  loc_1BC722C:               var_10C = var_E4.Fields.Item("Rate")
  loc_1BC723D:               var_104 = CStr(var_10C.Value)
  loc_1BC7245:               var_2CC = Val(var_104)
  loc_1BC725F:               var_150 = CVar(((var_2CC * var_100) / CDbl(&H64))) 'Double
  loc_1BC726E:               var_194 = (CVar(var_100) + Round(var_150, 3))
  loc_1BC7273:               var_100 = CSng(var_194)
  loc_1BC728B:             End If
  loc_1BC728B:           End If
  loc_1BC728B:         End If
  loc_1BC728B:       End If
  loc_1BC728B:     End If
  loc_1BC7290:     Set var_E0 = Nothing
  loc_1BC7293:   End If
  loc_1BC7299:   var_8C.MoveNext
  loc_1BC729E:   GoTo loc_1BC579C
  loc_1BC72A1: End If
  loc_1BC72BF: Set var_108 = Me.Txt
  loc_1BC72C5: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104, "select (AmtCr - AmtDr) as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,PaychargeH.ChqNo as ChqNo,PaychargeH.ChqDate as ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode  where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC72CD: var_100 = var_10C.Text
  loc_1BC72D6: var_130 = var_2CC & var_104
  loc_1BC72DD: var_298 = var_130 & "' And PaychargeH.SITE_CODE='"
  loc_1BC72EB: var_160 = CVar(var_298 & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1BC72F9: Set var_2B4 = Me.Txt
  loc_1BC72FF: Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_160, var_F8)
  loc_1BC730E: Proc_6_7_F26918(var_150, CVar(var_2B8), var_2CC)
  loc_1BC7316: var_194 = CStr(var_1B4) & var_150 
  loc_1BC731A: var_11C = " and PaychargeH.docid not in (Select ContraDocId from PaychargeH where ContraDocId is not null) and (PaychargeH.DbtChkIn<>'Yes' or PaychargeH.DbtChkIn is NULL ) AND RestCode='"
  loc_1BC7335: var_1F4 = var_194 & var_11C & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.PayType not in ('Cash','Staff','Company','Credit Card')" 
  loc_1BC7343: unk_5502DC.Execute CStr(var_1F4), CDbl(0), CSng(var_160)
  loc_1BC734E: Set var_8C = var_2BC
  loc_1BC737C: ' Referenced from: 1BC7D35
  loc_1BC738E: If Not(Me.Recordset15.EOF) Then
  loc_1BC73CD:   If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1BC7426:     unk_5502DC.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_194, -1
  loc_1BC7431:     Set var_DC = var_2B4
  loc_1BC745F:     If (var_DC.RecordCount > 0) Then
  loc_1BC74A1:       If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1BC7503:         var_194 = (CVar(Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName"))) & " C.C.No.") + Me.Recordset15.Fields.Item("CardNo").Value)
  loc_1BC7508:         var_D4 = CStr(var_194)
  loc_1BC7525:       Else
  loc_1BC754D:         var_104 = Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName")))
  loc_1BC7584:         var_194 = (CVar(var_104 & " ") + Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC7589:         var_D4 = CStr(var_194)
  loc_1BC75A3:       End If
  loc_1BC75A6:     Else
  loc_1BC75D4:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC75E1:     End If
  loc_1BC75E4:   Else
  loc_1BC761E:     var_D4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments"))))))
  loc_1BC762D:   End If
  loc_1BC764A:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC766C:   If (var_10C.Value > 0) Then
  loc_1BC7675:     var_CE = (var_CE + 1)
  loc_1BC7686:     Set var_108 = Me.Txt
  loc_1BC768C:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298)
  loc_1BC76E8:     var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC76F0:     var_160 = Now
  loc_1BC7720:     var_2B0 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")))
  loc_1BC774E:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")))
  loc_1BC7756:     var_2AC = 0
  loc_1BC776D:     var_2A0 = "A"
  loc_1BC77CF:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC7823:     var_CE = (var_CE + 1)
  loc_1BC7834:     Set var_108 = Me.Txt
  loc_1BC783A:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC7842:     CDbl(0) = var_10C.Text
  loc_1BC786C:     var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC789E:     var_160 = Now
  loc_1BC78CE:     var_2B0 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(var_1D4), var_D4)
  loc_1BC78FC:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F950C8)
  loc_1BC7904:     var_2AC = 0
  loc_1BC791B:     var_2A0 = "A"
  loc_1BC7936:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC797D:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC7988:     var_B8 = var_104
  loc_1BC7991:     var_C2 = var_130
  loc_1BC79CE:   Else
  loc_1BC79D4:     var_CE = (var_CE + 1)
  loc_1BC79E5:     Set var_108 = Me.Txt
  loc_1BC79EB:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, CStr(var_1D4), CDbl(0))
  loc_1BC79F3:     CSng(var_150) = var_10C.Text
  loc_1BC7A4F:     var_160 = Now
  loc_1BC7A7F:     var_2B0 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")), var_E8, var_D4)
  loc_1BC7AAD:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F950C8)
  loc_1BC7AB5:     var_2AC = 0
  loc_1BC7ACC:     var_2A0 = "A"
  loc_1BC7B2E:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC7B82:     var_CE = (var_CE + 1)
  loc_1BC7B93:     Set var_108 = Me.Txt
  loc_1BC7B99:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC7BA1:     CDbl(0) = var_10C.Text
  loc_1BC7BC3:     var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC7BE5:     var_2BC = Me.Recordset15.Fields
  loc_1BC7BF5:     var_1D4 = var_2BC.Item("AcCode").Value
  loc_1BC7BFD:     var_160 = Now
  loc_1BC7C14:     var_2E8 = Me.Recordset15.Fields
  loc_1BC7C2D:     var_2B0 = Proc_6_38_E69628(CVar(var_2E8.Item("ChqNo")), var_E8, var_D4)
  loc_1BC7C5B:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F950C8)
  loc_1BC7C63:     var_2AC = 0
  loc_1BC7C7A:     var_2A0 = "A"
  loc_1BC7C9A:     var_150 = Abs(var_2B8.Value)
  loc_1BC7CDC:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC7CE7:     var_B8 = var_104
  loc_1BC7CF0:     var_C2 = var_130
  loc_1BC7D2A:   End If
  loc_1BC7D30:   Me.Recordset15.MoveNext
  loc_1BC7D35:   GoTo loc_1BC737C
  loc_1BC7D38: End If
  loc_1BC7D56: Set var_108 = Me.Txt
  loc_1BC7D5C: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104, "SELECT (AmtCr - AmtDr) AS CreditAmt,Comments, PaychargeH.PayCode, RestCode,Employee.AC_Code as ACCode,Employee.Name as EName,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code) LEFT JOIN Employee ON PaychargeH.EmpCode = Employee.Code where  PayChargeH.Docid='", var_1D4, -1, var_2BC)
  loc_1BC7D64: var_E8 = var_10C.Text
  loc_1BC7D85: var_2A0 = CDbl(0) & var_104 & "' And PaychargeH.RestCode='" & global_52 & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.SITE_CODE='"
  loc_1BC7D93: var_160 = CVar(var_2A0 & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1BC7DA1: Set var_2B4 = Me.Txt
  loc_1BC7DA7: Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC7DB6: Proc_6_7_F26918(var_150, CVar(var_2B8), CStr(var_1D4))
  loc_1BC7DBE: var_194 = var_D4 & var_150 
  loc_1BC7DC2: var_11C = " and PaychargeH.docid not in (Select distinct ContraDocId from PaychargeH where Contradocid is not NUll and ContraDocid<>'')  and PaychargeH.COntradocid not in (Select DocId from PaychargeH )and PaychargeH.PayType in ('Staff')"
  loc_1BC7DD5: unk_5502DC.Execute CStr(var_194 & var_11C), MemVar_1F950C8, CDate(var_160)
  loc_1BC7DE0: Set var_8C = var_2BC
  loc_1BC7E0E: ' Referenced from: 1BC8284
  loc_1BC7E20: If Not(Me.Recordset15.EOF) Then
  loc_1BC7E79:   unk_5502DC.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_194, -1
  loc_1BC7E84:   Set var_DC = var_2B4
  loc_1BC7EDA:   If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1BC7EF1:     If (var_DC.RecordCount > 0) Then
  loc_1BC7F1C:       var_104 = Proc_6_38_E69628(CVar(var_DC.Fields.Item("ShortName")))
  loc_1BC7F23:       var_130 = var_104 & " "
  loc_1BC7F38:       var_2B4 = Me.Recordset15.Fields
  loc_1BC7F55:       var_D4 = var_2B4 & Proc_6_38_E69628(CVar(var_2B4.Item("EName")), var_130)
  loc_1BC7F72:     Else
  loc_1BC7F9D:       var_D4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EName")))
  loc_1BC7FA6:     End If
  loc_1BC7FA9:   Else
  loc_1BC7FC3:     var_10C = Me.Recordset15.Fields.Item("Comments")
  loc_1BC7FD4:     var_D4 = Proc_6_38_E69628(CVar(var_10C))
  loc_1BC7FDD:   End If
  loc_1BC7FE3:   var_CE = (var_CE + 1)
  loc_1BC7FF4:   Set var_108 = Me.Txt
  loc_1BC7FFA:   Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C)
  loc_1BC8002:   var_298 = var_10C.Text
  loc_1BC8056:   var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC805E:   var_160 = Now
  loc_1BC8068:   var_2AC = 0
  loc_1BC8073:   var_2A8 = 0
  loc_1BC807E:   var_2A4 = 0
  loc_1BC8087:   var_2A0 = "A"
  loc_1BC80E9:   Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC8131:   var_CE = (var_CE + 1)
  loc_1BC8142:   Set var_108 = Me.Txt
  loc_1BC8148:   Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, var_E8, CDbl(0))
  loc_1BC8150:   CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)) = var_10C.Text
  loc_1BC8172:   var_2B8 = Me.Recordset15.Fields.Item("AcCode")
  loc_1BC817A:   var_194 = var_2B8.Value
  loc_1BC8194:   var_2BC = Me.Recordset15.Fields
  loc_1BC81AC:   var_160 = Now
  loc_1BC81B6:   var_2AC = 0
  loc_1BC81C1:   var_2A8 = 0
  loc_1BC81CC:   var_2A4 = 0
  loc_1BC81D5:   var_2A0 = "A"
  loc_1BC81F0:   var_150 = Abs(var_2BC.Item("CreditAmt").Value)
  loc_1BC8237:   Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC8242:   var_B8 = var_104
  loc_1BC824B:   var_C2 = var_130
  loc_1BC827F:   Me.Recordset15.MoveNext
  loc_1BC8284:   GoTo loc_1BC7E0E
  loc_1BC8287: End If
  loc_1BC82A5: Set var_108 = Me.Txt
  loc_1BC82AB: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104, "SELECT DocId,Vtype,Comments,DbtChkin,Sno,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PayChargeH.Docid='", var_1D4, -1, var_2BC)
  loc_1BC82B3: CStr(var_194) = var_10C.Text
  loc_1BC82D4: var_2A0 = CDbl(0) & var_104 & "' And PaychargeH.RestCode='" & global_52 & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.SITE_CODE='"
  loc_1BC82E2: var_160 = CVar(var_2A0 & MemVar_1F95070 & "' AND  Vdate = ") 'String
  loc_1BC82F0: Set var_2B4 = Me.Txt
  loc_1BC82F6: Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC8305: Proc_6_7_F26918(var_150, CVar(var_2B8), var_E8)
  loc_1BC8324: unk_5502DC.Execute CStr(var_D4 & var_150 & " and AmtCr<>0  and PaychargeH.PayType in ('Company')"), MemVar_1F950C8, CDate(var_160)
  loc_1BC832F: Set var_E0 = var_2BC
  loc_1BC835D: ' Referenced from: 1BC8AD2
  loc_1BC836C: If Not(var_E0.EOF) Then
  loc_1BC8383:   var_104 = "SELECT (AmtCr - AmtDr) AS CreditAmt,Comments ,PaychargeH.PayCode, SubGroup.SubCode as AcCode,revmast.name as RevenueNAme FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PaychargeH.SITE_CODE='" & MemVar_1F95070
  loc_1BC8398:   Set var_108 = Me.Txt
  loc_1BC839E:   Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, CVar(var_104 & "' AND Vdate = "))
  loc_1BC83AD:   Proc_6_7_F26918(var_150, CVar(var_10C), var_294)
  loc_1BC83B5:   var_194 = -1 & var_150 
  loc_1BC83F5:   var_214 = var_D4 & var_150 & " and PaychargeH.DocId='" & var_E0.Fields.Item("DocID").Value & "' And IsNull(revmast.PayableAc,'')='' and Sno=" 
  loc_1BC8430:   var_130 = CStr(var_214 & var_E0.Fields.Item("SNo").Value & " and PaychargeH.PayType in ('Company')")
  loc_1BC843A:   unk_5502DC.Execute var_130, var_2E8, 
  loc_1BC8445:   Set var_8C = var_2E8
  loc_1BC8479:   ' Referenced from: 1BC8AC7
  loc_1BC848B:   If Not(Me.Recordset15.EOF) Then
  loc_1BC84B9:     var_104 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1BC84CA:     If (var_104 = vbNullString) Then
  loc_1BC84FB:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC850B:     Else
  loc_1BC8536:       var_D4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1BC853F:     End If
  loc_1BC855C:     var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC857E:     If (var_10C.Value > 0) Then
  loc_1BC8587:       var_CE = (var_CE + 1)
  loc_1BC8598:       Set var_108 = Me.Txt
  loc_1BC859E:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C)
  loc_1BC85A6:       var_298 = var_10C.Text
  loc_1BC85FA:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC8602:       var_160 = Now
  loc_1BC860C:       var_2AC = 0
  loc_1BC8617:       var_2A8 = 0
  loc_1BC8622:       var_2A4 = 0
  loc_1BC862B:       var_2A0 = "A"
  loc_1BC868D:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC86D5:       var_CE = (var_CE + 1)
  loc_1BC86E6:       Set var_108 = Me.Txt
  loc_1BC86EC:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC86F4:       CDbl(0) = var_10C.Text
  loc_1BC871E:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC8750:       var_160 = Now
  loc_1BC875A:       var_2AC = 0
  loc_1BC8765:       var_2A8 = 0
  loc_1BC8770:       var_2A4 = 0
  loc_1BC8779:       var_2A0 = "A"
  loc_1BC8794:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC87DB:       Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC87E6:       var_B8 = var_104
  loc_1BC87EF:       var_C2 = var_130
  loc_1BC8820:     Else
  loc_1BC8826:       var_CE = (var_CE + 1)
  loc_1BC8837:       Set var_108 = Me.Txt
  loc_1BC883D:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, CStr(var_194), CDbl(0))
  loc_1BC8845:       CSng(var_150) = var_10C.Text
  loc_1BC88A1:       var_160 = Now
  loc_1BC88AB:       var_2AC = 0
  loc_1BC88B6:       var_2A8 = 0
  loc_1BC88C1:       var_2A4 = 0
  loc_1BC88CA:       var_2A0 = "A"
  loc_1BC892C:       Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC8974:       var_CE = (var_CE + 1)
  loc_1BC8985:       Set var_108 = Me.Txt
  loc_1BC898B:       Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC8993:       CDbl(0) = var_10C.Text
  loc_1BC89B5:       var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC89D7:       var_2BC = Me.Recordset15.Fields
  loc_1BC89E7:       var_194 = var_2BC.Item("AcCode").Value
  loc_1BC89EF:       var_160 = Now
  loc_1BC89F9:       var_2AC = 0
  loc_1BC8A04:       var_2A8 = 0
  loc_1BC8A0F:       var_2A4 = 0
  loc_1BC8A18:       var_2A0 = "A"
  loc_1BC8A38:       var_150 = Abs(var_2B8.Value)
  loc_1BC8A7A:       Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC8A85:       var_B8 = var_104
  loc_1BC8A8E:       var_C2 = var_130
  loc_1BC8ABC:     End If
  loc_1BC8AC2:     Me.Recordset15.MoveNext
  loc_1BC8AC7:     GoTo loc_1BC8479
  loc_1BC8ACA:   End If
  loc_1BC8ACD:   var_E0.MoveNext
  loc_1BC8AD2:   GoTo loc_1BC835D
  loc_1BC8AD5: End If
  loc_1BC8AF3: Set var_108 = Me.Txt
  loc_1BC8AF9: Call 0.Method_Proc_125_82_1BC94200 (CInt(0), var_10C, var_104, "select (AmtCr-AmtDr) as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,revmast.PayableAc,PaychargeH.ChqNo as ChqNo,PaychargeH.ChqDate as ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC8B01: var_E8 = var_10C.Text
  loc_1BC8B0A: var_130 = CDbl(0) & var_104
  loc_1BC8B1F: var_160 = CVar(var_130 & "' And PaychargeH.SITE_CODE='" & MemVar_1F95070 & "' AND Vdate = ") 'String
  loc_1BC8B2D: Set var_2B4 = Me.Txt
  loc_1BC8B33: Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC8B42: Proc_6_7_F26918(var_150, CVar(var_2B8), CStr(var_194))
  loc_1BC8B4E: var_11C = " and PaychargeH.docid not in (Select ContraDocId from PaychargeH where ContraDocId is not null) And (PaychargeH.DbtChkIn<>'Yes' or PaychargeH.DbtChkIn is NULL ) AND RestCode='"
  loc_1BC8B77: unk_5502DC.Execute CStr(var_D4 & var_150 & var_11C & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')<>''"), MemVar_1F950C8, CDate(var_160)
  loc_1BC8B82: Set var_8C = var_2BC
  loc_1BC8BB0: ' Referenced from: 1BC93E4
  loc_1BC8BC2: If Not(Me.Recordset15.EOF) Then
  loc_1BC8BF3:   var_D4 = CStr(Me.Recordset15.Fields.Item("Comments").Value)
  loc_1BC8C1D:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC8C3F:   If (var_10C.Value < 0) Then
  loc_1BC8C48:     var_CE = (var_CE + 1)
  loc_1BC8C59:     Set var_108 = Me.Txt
  loc_1BC8C5F:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C)
  loc_1BC8C67:     var_298 = var_10C.Text
  loc_1BC8CE5:     var_1F4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC8CED:     var_160 = Now
  loc_1BC8D1D:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")))
  loc_1BC8D4B:     var_2FC = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")))
  loc_1BC8D53:     var_2B0 = 0
  loc_1BC8D6A:     var_2A4 = "A"
  loc_1BC8DD1:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC8E2D:     var_CE = (var_CE + 1)
  loc_1BC8E3E:     Set var_108 = Me.Txt
  loc_1BC8E44:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("PayableAc").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC8E4C:     CDbl(0) = var_10C.Text
  loc_1BC8E76:     var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC8ED2:     var_160 = Now
  loc_1BC8F02:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(Me.Recordset15.Fields.Item("PayableAc").Value), var_D4)
  loc_1BC8F30:     var_2FC = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F950C8)
  loc_1BC8F38:     var_2B0 = 0
  loc_1BC8F4F:     var_2A4 = "A"
  loc_1BC8F6F:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC8FB6:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC8FC1:     var_B8 = var_104
  loc_1BC8FCA:     var_C2 = var_130
  loc_1BC900F:   Else
  loc_1BC9015:     var_CE = (var_CE + 1)
  loc_1BC9026:     Set var_108 = Me.Txt
  loc_1BC902C:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, CStr(var_1D4), CDbl(0))
  loc_1BC9034:     CSng(var_150) = var_10C.Text
  loc_1BC90BA:     var_160 = Now
  loc_1BC90EA:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(Me.Recordset15.Fields.Item("PayableAc").Value), var_D4)
  loc_1BC9118:     var_2FC = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F950C8)
  loc_1BC9120:     var_2B0 = 0
  loc_1BC9137:     var_2A4 = "A"
  loc_1BC919E:     Proc_6_141_12E23F4(MemVar_1F95044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC91FA:     var_CE = (var_CE + 1)
  loc_1BC920B:     Set var_108 = Me.Txt
  loc_1BC9211:     Call 0.Method_Proc_125_82_1BC94200 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC9219:     CDbl(0) = var_10C.Text
  loc_1BC9243:     var_1D4 = Me.Recordset15.Fields.Item("PayableAc").Value
  loc_1BC929F:     var_160 = Now
  loc_1BC92CF:     var_2F8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(Me.Recordset15.Fields.Item("AcCode").Value), var_D4)
  loc_1BC92FD:     var_2FC = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F950C8)
  loc_1BC9305:     var_2B0 = 0
  loc_1BC931C:     var_2A4 = "A"
  loc_1BC933C:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC9383:     Proc_6_141_12E23F4(MemVar_1F95044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F95070, CDate(var_298))
  loc_1BC938E:     var_B8 = var_104
  loc_1BC9397:     var_C2 = var_130
  loc_1BC93D9:   End If
  loc_1BC93DF:   Me.Recordset15.MoveNext
  loc_1BC93E4:   GoTo loc_1BC8BB0
  loc_1BC93E7: End If
  loc_1BC93ED: unk_5502DC.CommitTrans
  loc_1BC93F6: var_88 = CByte(0) 'Byte
  loc_1BC93FF: Set var_8C = Nothing
  loc_1BC9407: Set var_CC = Nothing
  loc_1BC940F: Set var_E0 = Nothing
  loc_1BC9417: Set var_DC = Nothing
  loc_1BC941A: Proc_125_82_1BC9420 = CStr(var_1D4)
End Sub
