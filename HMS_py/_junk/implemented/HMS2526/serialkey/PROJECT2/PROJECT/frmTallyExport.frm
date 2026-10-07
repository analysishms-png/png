VERSION 5.00
Begin VB.Form frmTallyExport
  Caption = "Tally Export"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10110
  ClientHeight = 5070
  Begin ProgressBar ProgressBar1
    Left = 0
    Top = 2295
    Width = 10110
    Height = 405
    TabIndex = 14
  End
  Begin CommandButton Command1
    Caption = "Command1"
    Left = 7890
    Top = 3675
    Width = 1020
    Height = 435
    Visible = 0   'False
    TabIndex = 13
  End
  Begin Frame frmStart
    BackColor = &HFFC0C0&
    Left = 3255
    Top = 2970
    Width = 3480
    Height = 900
    TabIndex = 5
    Begin CommandButton btnExit
      Caption = "&Exit"
      Left = 1815
      Top = 270
      Width = 1380
      Height = 420
      TabIndex = 7
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton btnStart
      Caption = "&Start"
      Left = 240
      Top = 270
      Width = 1440
      Height = 420
      TabIndex = 6
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 5910
    Top = 795
    Width = 1380
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 2970
    Top = 795
    Width = 1380
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label lblLastExpDate
    Caption = "Label5"
    BackColor = &HFFC0C0&
    ForeColor = &HFF&
    Left = 75
    Top = 60
    Width = 4965
    Height = 435
    TabIndex = 12
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label4
    Caption = "2."
    Index = 1
    BackColor = &HFFC0C0&
    Left = 465
    Top = 4665
    Width = 150
    Height = 255
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label4
    Caption = "1."
    Index = 0
    BackColor = &HFFC0C0&
    Left = 465
    Top = 4410
    Width = 150
    Height = 255
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label3
    Caption = "It Will Create 2 xml Files   LedgerMaster.xml            Ledger.xml"
    BackColor = &HFFC0C0&
    Left = 705
    Top = 4155
    Width = 1875
    Height = 735
    TabIndex = 9
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "Note :"
    BackColor = &HFFC0C0&
    Left = 75
    Top = 4170
    Width = 585
    Height = 300
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblStatus
    Caption = "Label2"
    BackColor = &HFFC0C0&
    Left = 150
    Top = 1755
    Width = 9885
    Height = 480
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Date"
    Index = 0
    ForeColor = &H40&
    Left = 4905
    Top = 795
    Width = 645
    Height = 225
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "From Date"
    Index = 1
    ForeColor = &H40&
    Left = 1935
    Top = 795
    Width = 870
    Height = 225
    TabIndex = 1
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmTallyExport"


Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'ED8988
  'Data Table: 46A2A8
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  Dim var_88 As CommandButton
  loc_ED88E6: If (Shift = &HD) Then
  loc_ED88F3:   Set var_88 = Me.Txt
  loc_ED88F9:   Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_ED8919:   Set var_94 = Me.Txt
  loc_ED891F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_98)
  loc_ED8927:   var_98.Text = Proc_6_33_15125B8(var_8C)
  loc_ED8940:   If (KeyCode = 0) Then
  loc_ED894C:     Set var_88 = Me.Txt
  loc_ED8952:     Call 0.Method_Txt_KeyDown0 (1, var_8C)
  loc_ED895A:     var_8C.SetFocus
  loc_ED8969:   Else
  loc_ED896F:     If (KeyCode = 1) Then
  loc_ED897C:       Me.btnStart.SetFocus
  loc_ED8984:     End If
  loc_ED8984:   End If
  loc_ED8984: End If
  loc_ED8984: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E7EA24
  'Data Table: 46A2A8
  Dim var_98 As TextBox
  loc_E7E9DA: Set var_88 = Me.Txt
  loc_E7E9E0: Call 0.Method_Txt_Validate0 (Cancel)
  loc_E7EA00: Set var_94 = Me.Txt
  loc_E7EA06: Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_E7EA0E: var_98.Text = Proc_6_33_15125B8(var_8C)
  loc_E7EA21: Exit Sub
End Sub

Private Sub btnExit_Click() 'E16AF8
  'Data Table: 46A2A8
  loc_E16AED: Me.Global.Unload Me
  loc_E16AF5: Exit Sub
End Sub

Private Sub btnStart_Click() '176B478
  'Data Table: 46A2A8
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_EC As String
  Dim unk_46A2B2 As Connection15
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_FC As Variant
  Dim var_E4 As Variant
  Dim var_118 As Variant
  Dim var_12C As Variant
  Dim var_114 As String
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_13C As Fields15
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1C4 As String
  Dim var_200 As Variant
  Dim var_130 As String
  Dim var_240 As Variant
  Dim var_254 As String
  Dim var_134 As String
  Dim var_294 As Variant
  Dim var_25C As String
  Dim var_11C As Variant
  Dim var_90 As Recordset15
  Dim var_A2 As Integer
  Dim var_190 As Variant
  Dim var_88 As Recordset15
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_AC As Double
  loc_17696F0: Me.lblStatus.Visible = False
  loc_1769707: Me.ProgressBar1.Visible = False
  loc_1769714: Call 0.Method_arg_A4 (&HB)
  loc_1769720: Set var_C4 = Me.lblStatus
  loc_1769726: var_C4.Caption = vbNullString
  loc_1769742: var_E8 = "Select Distinct Grp.GroupName,Grp1.GroupName As UnderGroupName,Cast(Grp.MainGrCode As Numeric) As nMainGrCode From Acgroup Grp Left Join AcGroup Grp1 On Grp1.MainGrCode=substring(Grp.MainGrCode,1,len(Grp.MainGrCode)-3) WHERE (Grp.LOGSITE_CODE='" & MemVar_1F95078
  loc_1769752: unk_46A2B2.Execute var_E8 & "' OR Grp.LOGSITE_CODE='HO') Order By Cast(Grp.MainGrCode As Numeric)", var_FC, -1
  loc_176975D: Set var_98 = var_C4
  loc_1769781: var_E8 = "Select M.*, G.Groupname, S.Name as Statename, G.Sysgroup From Subgroup M Left Join AcGroup G On M.GroupCode=G.GroupCode Left Join City C On M.Citycode=C.Citycode Left Join State S On C.Statecode=S.code where (M.LOGSITE_CODE='" & MemVar_1F95078
  loc_1769791: unk_46A2B2.Execute var_E8 & "' OR M.LOGSITE_CODE='HO') ", var_FC, -1
  loc_176979C: Set var_9C = var_C4
  loc_17697CA: var_D4 = CVar(CDbl((var_98.RecordCount + var_9C.RecordCount))) 'Single
  loc_17697D9: Me.ProgressBar1.Max = False
  loc_17697ED: var_C4 = Me.var_C4.App
  loc_1769808: Open App.Path & "\LedgerMaster.xml" For Output As 1 Len = &HFF
  loc_176981B: Print 1, "<ENVELOPE>"
  loc_1769826: Print 1, "<HEADER>"
  loc_1769831: Print 1, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_176983C: Print 1, "</HEADER>"
  loc_1769847: Print 1, "<BODY>"
  loc_1769852: Print 1, "<IMPORTDATA>"
  loc_176985D: Print 1, "<REQUESTDESC>"
  loc_1769868: Print 1, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_1769873: Print 1, "<STATICVARIABLES>"
  loc_176988C: Print 1, "<SVCURRENTCOMPANY>" & MemVar_1F95130 & "</SVCURRENTCOMPANY>"
  loc_176989E: Print 1, "</STATICVARIABLES>"
  loc_17698A9: Print 1, "</REQUESTDESC>"
  loc_17698B4: Print 1, "<REQUESTDATA>"
  loc_17698BF: Print 1, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_17698C5: ' Referenced from: 1769F04
  loc_17698D4: If Not(var_98.EOF) Then
  loc_17698E6:   var_C4 = var_98.Fields
  loc_1769910:   If (Proc_6_38_E69628(CVar(var_C4.Item("UnderGroupName")), var_C4) = "DIRECT EXPENSE") Then
  loc_176995E:     var_114 = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176996A:     Call Proc_331_6_F94D78(var_114, "DIRECT EXPENSES")
  loc_1769983:   Else
  loc_17699BC:     If (Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_1769A0A:       var_114 = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769A16:       Call Proc_331_6_F94D78(var_114, "INDIRECT INCOMES")
  loc_1769A2F:     Else
  loc_1769A68:       If (Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_1769AB6:         var_114 = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769AC2:         Call Proc_331_6_F94D78(var_114, "SUSPENSE A/C")
  loc_1769ADB:       Else
  loc_1769B14:         If (Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))) = "PROFIT & LOSS A/C") Then
  loc_1769B62:           var_114 = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769B6E:           Call Proc_331_6_F94D78(var_114, "SUSPENSE A/C")
  loc_1769B87:         Else
  loc_1769BC0:           If (Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))) = "DIRECT EXPENSE") Then
  loc_1769C0E:             var_EC = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769C14:             Call Proc_331_6_F94D78("DIRECT EXPENSES", var_114)
  loc_1769C2B:           Else
  loc_1769C64:             If (Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_1769CB2:               var_EC = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769CB8:               Call Proc_331_6_F94D78("INDIRECT INCOMES", var_114)
  loc_1769CCF:             Else
  loc_1769D08:               If (Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_1769D56:                 var_EC = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769D5C:                 Call Proc_331_6_F94D78("SUSPENSE A/C", var_114)
  loc_1769D73:               Else
  loc_1769DBE:                 var_134 = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769E0C:                 var_114 = Replace(Proc_6_38_E69628(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1769E15:                 Call Proc_331_6_F94D78(var_134, var_114)
  loc_1769E39:               End If
  loc_1769E39:             End If
  loc_1769E39:           End If
  loc_1769E39:         End If
  loc_1769E39:       End If
  loc_1769E39:     End If
  loc_1769E39:   End If
  loc_1769E43:   Me.lblStatus.Refresh
  loc_1769E57:   Me.lblStatus.Visible = True
  loc_1769E6D:   Me.ProgressBar1.Visible = True
  loc_1769E87:   var_C4 = var_98.Fields
  loc_1769EB1:   Me.lblStatus.Caption = var_C4 & Proc_6_38_E69628(CVar(var_C4.Item("GroupName")), "Transferring Group ")
  loc_1769EDE:   var_D4 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_1769EED:   Me.ProgressBar1.Value = "GroupName"
  loc_1769EFF:   var_98.MoveNext
  loc_1769F04:   GoTo loc_17698C5
  loc_1769F07:   ' Referenced from: 176A67B
  loc_1769F07: End If
  loc_1769F16: If Not(var_9C.EOF) Then
  loc_1769F52:   If (Proc_6_38_E69628(CVar(var_9C.Fields.Item("GroupName"))) = "DIRECT EXPENSE") Then
  loc_1769FA0:     var_25C = Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_176A019:     var_1A0 = CVar(Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176A0B4:     var_240 = CVar(Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176A0F3:     Call Proc_331_7_11B6A94(var_25C, CStr(IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1"))) = vbNullString), "No", var_1A0)), CStr(IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2"))) = vbNullString), "No", var_240)))
  loc_176A144:   Else
  loc_176A17D:     If (Proc_6_38_E69628(CVar(var_9C.Fields.Item("GroupName")), "Uttarakhand") = "INDIRECT INCOME") Then
  loc_176A1CB:       var_25C = Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_176A244:       var_1A0 = CVar(Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176A2DF:       var_240 = CVar(Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176A31E:       Call Proc_331_7_11B6A94(var_25C, CStr(IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1"))) = vbNullString), "No", var_1A0)), CStr(IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2"))) = vbNullString), "No", var_240)))
  loc_176A36F:     Else
  loc_176A3BA:       var_264 = Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Name")), "Uttarakhand"), "&", "&amp;", 1, -1, 0)
  loc_176A3D4:       var_11C = var_9C.Fields.Item("Add1")
  loc_176A3DC:       var_12C = CVar(var_11C) 'Address
  loc_176A3F7:       var_13C = var_9C.Fields
  loc_176A407:       var_160 = CVar(var_13C.Item("Add1")) 'Address
  loc_176A433:       var_1A0 = CVar(Replace(Proc_6_38_E69628(var_160), "&", "&amp;", 1, -1, 0)) 'String
  loc_176A43B:       var_190 = "No"
  loc_176A4CE:       var_240 = CVar(Replace(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176A4DF:       var_114 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2")))
  loc_176A512:       var_294 = CVar(var_9C.Fields.Item("GroupName")) 'Address
  loc_176A53E:       var_25C = Replace(Proc_6_38_E69628(var_294), "&", "&amp;", 1, -1, 0)
  loc_176A558:       Call Proc_331_7_11B6A94(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1"))), CStr(IIf((Proc_6_38_E69628(var_12C, "INDIRECT INCOMES") = vbNullString), var_190, var_1A0)), CStr(IIf((var_114 = vbNullString), "No", var_240)))
  loc_176A5B0:     End If
  loc_176A5B0:   End If
  loc_176A5BA:   Me.lblStatus.Refresh
  loc_176A5CE:   Me.lblStatus.Visible = True
  loc_176A5E4:   Me.ProgressBar1.Visible = True
  loc_176A617:   var_E8 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Name")), "Transferring Master ", "Uttarakhand")
  loc_176A628:   Me.lblStatus.Caption = var_25C & var_E8
  loc_176A655:   var_D4 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_176A65E:   Set var_10C = Me.ProgressBar1
  loc_176A664:   var_10C.Value = "Name"
  loc_176A676:   var_9C.MoveNext
  loc_176A67B:   GoTo loc_1769F07
  loc_176A67E: End If
  loc_176A683: Print 1, "</TALLYMESSAGE>"
  loc_176A68E: Print 1, "</REQUESTDATA>"
  loc_176A699: Print 1, "</IMPORTDATA>"
  loc_176A6A4: Print 1, "</BODY>"
  loc_176A6AF: Print 1, "</ENVELOPE>"
  loc_176A6B7: Close 1
  loc_176A6CB: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_176A6DF: Me.lblStatus.Visible = False
  loc_176A6F6: Me.ProgressBar1.Visible = False
  loc_176A70B: Me.lblStatus.Caption = "LedgerMaster.xml Generated Successfully"
  loc_176A71D: Me.lblStatus.Refresh
  loc_176A739: var_EC = "Select Distinct L.Docid, cast(ltrim(L.V_No) as Integer) as V_No, LM.Narration, L.V_Date, Case when L.V_Type like 'MT then 'Payment' when L.V_Type like 'PV then 'Payment' when L.V_Type like 'CT then 'Receipt' when L.V_Type like 'RV then 'Receipt' when L.V_Type like 'NT then 'Contra' when L.V_Type like 'N then 'Credit Note' when L.V_Type like 'N then 'Debit Note' when L.V_Type like 'BPB then 'Purchase' when L.V_Type like 'RPB then 'Purchase' when L.V_Type like 'BPC then 'Purchase' when L.V_Type like 'RPC then 'Purchase' else 'Journal' end as VouchType,cast(year(L.V_Date) as Varchar) + case when len(month(L.V_Date)) <=1 then '0' + cast(month(L.V_Date) as Varchar) else cast(month(L.V_Date) as Varchar) end + case when len(day(L.V_Date)) <=1 then '0' + cast(day(L.V_Date) as Varchar) else cast(day(L.V_Date) as Varchar) end as mDate " & " ,(Select Top 1 M.name from Subgroup M Left Join Ledger L1 On L1.Subcode=M.Subcode where L1.Docid=L.Docid) as Party from Ledger L Left Join LedgerM LM on L.Docid=LM.Docid Left Join Acgroup Grp On L.groupcode=Grp.groupcode where L.V_Date between '"
  loc_176A748: Set var_C4 = Me.Txt
  loc_176A74E: Call 0.Method_btnStart_Click0 (0, var_10C, var_E8, var_25C & var_E8)
  loc_176A756: var_FC = var_10C.Text
  loc_176A75F: var_110 = -1 & var_E8
  loc_176A766: var_130 = Proc_6_38_E69628(var_160) & "' and '"
  loc_176A775: Set var_118 = Me.Txt
  loc_176A77B: Call 0.Method_btnStart_Click0 (1, var_11C, var_114)
  loc_176A783: var_130 = var_11C.Text
  loc_176A79A: var_254 = var_13C & var_114 & "' and L.v_type Not like '_ao and L.Docid not in (Select Docid from ledger where logsite_code='" & MemVar_1F95078
  loc_176A7B8: unk_46A2B2.Execute var_254 & "' and isnull(subcode,'')='') and L.logsite_code='" & MemVar_1F95078 & "' Order By L.V_Date, V_No ", "DIRECT EXPENSES", 
  loc_176A7C3: Set var_90 = var_13C
  loc_176A803: If (var_90.RecordCount = 0) Then
  loc_176A81F:   MsgBox("No Records To Post", 0, var_12C, var_160, var_190)
  loc_176A82F:   Exit Sub
  loc_176A830: End If
  loc_176A84E: Me.ProgressBar1.Max = CVar(CDbl(var_90.RecordCount))
  loc_176A862: var_C4 = Me.var_C4.App
  loc_176A87D: Open App.Path & "\Ledger.xml" For Output As 2 Len = &HFF
  loc_176A890: Print 2, "<ENVELOPE>"
  loc_176A89B: Print 2, "<HEADER>"
  loc_176A8A6: Print 2, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_176A8B1: Print 2, "</HEADER>"
  loc_176A8BC: Print 2, "<BODY>"
  loc_176A8C7: Print 2, "<IMPORTDATA>"
  loc_176A8D2: Print 2, "<REQUESTDESC>"
  loc_176A8DD: Print 2, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_176A8E8: Print 2, "<STATICVARIABLES>"
  loc_176A901: Print 2, "<SVCURRENTCOMPANY>" & MemVar_1F95130 & "</SVCURRENTCOMPANY>"
  loc_176A913: Print 2, "</STATICVARIABLES>"
  loc_176A91E: Print 2, "</REQUESTDESC>"
  loc_176A929: Print 2, "<REQUESTDATA>"
  loc_176A92F: ' Referenced from: 176B394
  loc_176A93E: If Not(var_90.EOF) Then
  loc_176A947:   var_A2 = (var_A2 + 1)
  loc_176A973:   var_A0 = CStr(Format(var_A2, "00000000"))
  loc_176A982:   Print 2, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_176A9D2:   var_130 = "<VOUCHER REMOTEID=""" & var_A0 & """ VCHKEY="""" VCHTYPE=""" & Proc_6_38_E69628(CVar(var_90.Fields.Item("Vouchtype")), 1) & """ ACTION=""Create"" OBJVIEW=""Accounting Voucher View"">"
  loc_176A9D7:   Print 2, var_130
  loc_176AA30:   Print 2, "<DATE>" & var_90.Fields.Item("mDate").Value & "</DATE>"
  loc_176AA59:   Print 2, "<GUID>" & var_A0 & "</GUID>"
  loc_176AAB1:   var_134 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("Narration")), 1), "&", "&amp;", 1, -1, 0)
  loc_176AACA:   Print 2, "<NARRATION>" & Proc_6_38_E69628(CVar(var_90.Fields.Item("Vouchtype")), 1) & "</NARRATION>"
  loc_176AB26:   Print 2, "<VOUCHERTYPENAME>" & Proc_6_38_E69628(CVar(var_90.Fields.Item("Vouchtype"))) & "</VOUCHERTYPENAME>"
  loc_176AB7E:   Print 2, "<VOUCHERNUMBER>" & Proc_6_38_E69628(CVar(var_90.Fields.Item("V_NO"))) & "</VOUCHERNUMBER>"
  loc_176ABE0:   var_134 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("Party"))), "&", "&amp;", 1, -1, 0)
  loc_176ABF9:   Print 2, "<PARTYLEDGERNAME>" & Proc_6_38_E69628(CVar(var_90.Fields.Item("Vouchtype")), 1) & "</PARTYLEDGERNAME>"
  loc_176AC19:   Print 2, "<FBTPAYMENTTYPE>Default</FBTPAYMENTTYPE>"
  loc_176AC24:   Print 2, "<PERSISTEDVIEW>Accounting Voucher View</PERSISTEDVIEW>"
  loc_176AC2F:   Print 2, "<AUDITED>No</AUDITED>"
  loc_176AC3A:   Print 2, "<ISOPTIONAL>No</ISOPTIONAL>"
  loc_176AC7E:   Print 2, "<EFFECTIVEDATE>" & var_90.Fields.Item("mDate").Value & "</EFFECTIVEDATE>"
  loc_176AC99:   Print 2, "<ALTERID></ALTERID>"
  loc_176ACA4:   Print 2, "<ISCANCELLED>No</ISCANCELLED>"
  loc_176ACAF:   Print 2, "<HASCASHFLOW>No</HASCASHFLOW>"
  loc_176ACBA:   Print 2, "<ISPOSTDATED>No</ISPOSTDATED>"
  loc_176ACC5:   Print 2, "<ISINVOICE>No</ISINVOICE>"
  loc_176ACD0:   Print 2, "<ISCOSTCENTRE>No</ISCOSTCENTRE>"
  loc_176ACDB:   Print 2, "<ISDELETED>No</ISDELETED>"
  loc_176ACE6:   Print 2, "<ASORIGINAL>No</ASORIGINAL>"
  loc_176ACF1:   Print 2, "<VCHISFROMSYNC>No</VCHISFROMSYNC>"
  loc_176ACFC:   Print 2, "<MASTERID></MASTERID>"
  loc_176AD07:   Print 2, "<VOUCHERKEY></VOUCHERKEY>"
  loc_176AD12:   Print 2, "<AUDITENTRIES.LIST></AUDITENTRIES.LIST>"
  loc_176AD1C:   Set var_88 = New 
  loc_176AD2C:   var_E4 = "Select L.*, m.Name, LM.Narration as NarrationNew, 0 as Amt, 1 As Lvl from Ledger L Left Join Subgroup M On L.Subcode=M.Subcode Left Join LedgerM LM on L.Docid=LM.Docid Left Join Acgroup Grp On L.groupcode=Grp.Groupcode where L.Docid='"
  loc_176AD5B:   var_12C = var_E4 & Me.Recordset15.Fields.Item("DocID").Value 
  loc_176AD7B:   var_1C4 = " Union All Select L.*, m.Name, LM.Narration as NarrationNew, 0 as Amt, 2 As Lvl from Ledger L Left Join Subgroup M On L.Subcode=M.Subcode Left Join LedgerM LM on L.Docid=LM.Docid Left Join Acgroup Grp On L.groupcode=Grp.Groupcode where L.Docid='"
  loc_176ADAE:   var_200 = var_12C & "'  and L.LogSite_Code='" & CVar(MemVar_1F95078) & "' And L.AmtCr>0" & var_1C4 & var_90.Fields.Item("DocID").Value 
  loc_176ADD8:   unk_46A2B2.Execute CStr(var_200 & "'  and L.LogSite_Code='" & CVar(MemVar_1F95078) & "' And L.AmtDr>0 Order By Lvl,V_SNo"), var_294, -1
  loc_176ADE3:   Set var_88 = var_13C
  loc_176AE11:   ' Referenced from: 176B1EF
  loc_176AE20:   If Not(var_88.EOF) Then
  loc_176AE49:     Proc_6_39_E7D3A0(var_12C, CVar(var_88.Fields.Item("AmtCr")))
  loc_176AE85:     Proc_6_39_E7D3A0(var_12C, CVar(var_88.Fields.Item("AmtDr")), CSng(var_12C))
  loc_176AEC1:     Proc_6_39_E7D3A0(var_12C, CVar(var_88.Fields.Item("Amt")), CSng(var_12C))
  loc_176AEDB:     If (var_12C > 0) Then
  loc_176AF04:       Proc_6_39_E7D3A0(var_12C, CVar(var_88.Fields.Item("AmtCr")))
  loc_176AF1E:       If (var_12C > 0) Then
  loc_176AF47:         Proc_6_39_E7D3A0(var_12C, CVar(var_88.Fields.Item("Amt")))
  loc_176AF50:         var_B8 = CSng(var_12C)
  loc_176AF60:       Else
  loc_176AF86:         Proc_6_39_E7D3A0(var_12C, CVar(var_88.Fields.Item("AmtDr")), var_B8)
  loc_176AFA0:         If (var_12C > 0) Then
  loc_176AFC2:           var_FC = CVar(var_88.Fields.Item("Amt")) 'Address
  loc_176AFC9:           Proc_6_39_E7D3A0(var_12C, var_FC)
  loc_176AFD2:           var_C0 = CSng(var_12C)
  loc_176AFDF:         End If
  loc_176AFDF:       End If
  loc_176AFDF:     End If
  loc_176AFEA:     Proc_6_39_E7D3A0(var_FC, var_B8, var_C0)
  loc_176AFFD:     If (var_FC = 0) Then
  loc_176B003:       var_B0 = "DR"
  loc_176B011:       Proc_6_39_E7D3A0(var_FC, var_C0)
  loc_176B01A:       var_AC = CSng(var_FC)
  loc_176B023:     Else
  loc_176B02E:       Proc_6_39_E7D3A0(var_FC, var_C0, var_AC)
  loc_176B041:       If (var_FC = 0) Then
  loc_176B047:         var_B0 = "CR"
  loc_176B055:         Proc_6_39_E7D3A0(var_FC, var_B8)
  loc_176B05E:         var_AC = CSng(var_FC)
  loc_176B067:       Else
  loc_176B072:         Proc_6_39_E7D3A0(var_FC, var_B8, var_AC)
  loc_176B085:         Proc_6_39_E7D3A0(var_12C, var_C0, var_FC)
  loc_176B08D:         var_160 = (var_13C - var_12C)
  loc_176B092:         var_AC = CSng(var_12C & "'  and L.LogSite_Code='")
  loc_176B0A7:         Proc_6_39_E7D3A0(var_FC, var_AC)
  loc_176B0BA:         If (var_FC < 0) Then
  loc_176B0C0:           var_B0 = "DR"
  loc_176B0C6:         Else
  loc_176B0D1:           Proc_6_39_E7D3A0(var_FC, var_AC)
  loc_176B0E4:           If (var_FC > 0) Then
  loc_176B0EA:             var_B0 = "CR"
  loc_176B0ED:           End If
  loc_176B0ED:         End If
  loc_176B101:         var_AC = CSng(Abs(var_AC))
  loc_176B107:       End If
  loc_176B107:     End If
  loc_176B152:     var_134 = Replace(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), var_AC), "&", "&amp;", 1, -1, 0)
  loc_176B160:     Proc_6_39_E7D3A0(var_12C, var_AC)
  loc_176B184:     var_160 = CVar(var_88.Fields.Item("Narration")) 'Address
  loc_176B1B0:     var_114 = Replace(Proc_6_38_E69628(var_160, var_AC), "&", "&amp;", 1, -1, 0)
  loc_176B1C1:     Call Proc_331_8_104FBE4(Proc_6_38_E69628(CVar(var_90.Fields.Item("Vouchtype")), 1), CSng(var_12C), var_B0)
  loc_176B1EA:     var_88.MoveNext
  loc_176B1EF:     GoTo loc_176AE11
  loc_176B1F2:   End If
  loc_176B1F7:   Print 2, "<ATTDRECORDS.LIST></ATTDRECORDS.LIST>"
  loc_176B202:   Print 2, "<LEDGERENTRIESRECORDS.LIST></LEDGERENTRIESRECORDS.LIST>"
  loc_176B20D:   Print 2, "<LEDGERCSTENTRIESRECORDS.LIST></LEDGERCSTENTRIESRECORDS.LIST>"
  loc_176B218:   Print 2, "</VOUCHER>"
  loc_176B223:   Print 2, "</TALLYMESSAGE>"
  loc_176B233:   Me.lblStatus.Refresh
  loc_176B247:   Me.lblStatus.Visible = True
  loc_176B25D:   Me.ProgressBar1.Visible = True
  loc_176B294:   var_EC = "<PARTYLEDGERNAME>" & Proc_6_38_E69628(CVar(var_90.Fields.Item("Vouchtype")), 1) & "</PARTYLEDGERNAME>" & Proc_6_38_E69628(CVar(var_90.Fields.Item("DocID")), "Transferring Voucher ")
  loc_176B2A1:   Me.lblStatus.Caption = var_EC
  loc_176B2CE:   var_D4 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_176B2D7:   Set var_10C = Me.ProgressBar1
  loc_176B2DD:   var_10C.Value = "DocID"
  loc_176B305:   Set var_C4 = Me.Txt
  loc_176B30B:   Call 0.Method_btnStart_Click0 (1, var_10C, "Update Ledger set TImp_Dt='", var_160)
  loc_176B31C:   var_E8 = Proc_6_38_E69628(CVar(var_10C), -1)
  loc_176B352:   var_114 = Proc_6_38_E69628(CVar(var_90.Fields.Item("DocID")), var_13C & Proc_6_38_E69628(CVar(var_90.Fields.Item("DocID")), "Transferring Voucher ") & "' where Docid='")
  loc_176B366:   unk_46A2B2.Execute var_A2 & var_114 & "'", , 
  loc_176B38F:   var_90.MoveNext
  loc_176B394:   GoTo loc_176A92F
  loc_176B397: End If
  loc_176B39C: Print 2, "</REQUESTDATA>"
  loc_176B3A7: Print 2, "</IMPORTDATA>"
  loc_176B3B2: Print 2, "</BODY>"
  loc_176B3BD: Print 2, "</ENVELOPE>"
  loc_176B3C5: Close 2
  loc_176B3D3: Me.lblLastExpDate.Visible = True
  loc_176B3E7: Set var_C4 = Me.Txt
  loc_176B3ED: Call 0.Method_btnStart_Click0 (1, var_10C)
  loc_176B40F: Me.lblLastExpDate.Caption = "Last Exported Upto " & Proc_6_38_E69628(CVar(var_10C))
  loc_176B434: Me.ProgressBar1.Visible = False
  loc_176B449: Me.lblStatus.Caption = "LedgerMaster.xml and Ledger.xml Generated Successfully"
  loc_176B463: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_176B470: Call 0.Method_arg_A4 (0)
  loc_176B475: Exit Sub
End Sub

Private Sub Form_Load() '10122B4
  'Data Table: 46A2A8
  Dim var_AC As Variant
  Dim var_B0 As TextBox
  Dim unk_46A2B2 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  loc_10120AF: Call 0.Method_arg_7C (CDbl(0))
  loc_10120BB: Call 0.Method_arg_74 (CDbl(0))
  loc_10120C8: Call 0.Method_MeC (CDbl(5475))
  loc_10120D5: Call 0.Method_Me4 (CDbl(10230))
  loc_10120EC: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_1012100: Me.lblStatus.Visible = False
  loc_1012117: Me.ProgressBar1.Visible = False
  loc_1012130: Set var_AC = Me.Txt
  loc_1012136: Call 0.Method_Form_Load0 (0, var_B0)
  loc_101213E: var_B0.Text = CStr(MemVar_1F950F4)
  loc_1012164: Call 0.Method_Form_Load0 (1, var_B0)
  loc_101216C: var_B0.Text = CStr(MemVar_1F950EC)
  loc_101219F: unk_46A2B2.Execute "Select max(TImp_Dt) as TImp_Dt from Ledger where Logsite_code='" & MemVar_1F95078 & "'", var_C8, -1
  loc_10121AA: Set var_88 = Me.Txt
  loc_10121C9: var_AC = var_88.Fields
  loc_1012230: If (var_AC Or (Proc_6_38_E69628(CVar(var_88.Fields.Item("TImp_Dt")), (Proc_6_38_E69628(CVar(var_AC.Item("TImp_Dt"))) = "01/Jan/1900")) = vbNullString)) Then
  loc_101223F:   Me.lblLastExpDate.Visible = False
  loc_101224A: Else
  loc_1012256:   Me.lblLastExpDate.Visible = True
  loc_101229A:   Me.lblLastExpDate.Caption = "Last Exported Upto " & Proc_6_38_E69628(CVar(var_88.Fields.Item("TImp_Dt")))
  loc_10122B0: End If
  loc_10122B0: Exit Sub
End Sub

Private Sub Command1_Click() 'E009B4
  'Data Table: 46A2A8
  loc_E009AC: Call Proc_331_9_1813528()
  loc_E009B1: Exit Sub
End Sub

Public Sub Proc_331_6_F94D78(arg_C, arg_10) 'F94D78
  'Data Table: 46A2A8
  loc_F94C13: var_88 = arg_C
  loc_F94C3D: Print 1, "<GROUP NAME=""" & var_88 & """ RESERVEDNAME=""" & var_88 & """>"
  loc_F94C61: Print 1, "<PARENT>" & arg_10 & "</PARENT>"
  loc_F94C73: Print 1, "<GRPDEBITPARENT></GRPDEBITPARENT>"
  loc_F94C7E: Print 1, "<GRPCREDITPARENT></GRPCREDITPARENT>"
  loc_F94C89: Print 1, "<ISBILLWISEON>No</ISBILLWISEON>"
  loc_F94C94: Print 1, "<ISCOSTCENTRESON>No</ISCOSTCENTRESON>"
  loc_F94C9F: Print 1, "<ISADDABLE>No</ISADDABLE>"
  loc_F94CAA: Print 1, "<ISSUBLEDGER>No</ISSUBLEDGER>"
  loc_F94CB5: Print 1, "<ISREVENUE>No</ISREVENUE>"
  loc_F94CC0: Print 1, "<AFFECTSGROSSPROFIT>No</AFFECTSGROSSPROFIT>"
  loc_F94CCB: Print 1, "<ISDEEMEDPOSITIVE>No</ISDEEMEDPOSITIVE>"
  loc_F94CD6: Print 1, "<TRACKNEGATIVEBALANCES>No</TRACKNEGATIVEBALANCES>"
  loc_F94CE1: Print 1, "<ISCONDENSED>No</ISCONDENSED>"
  loc_F94CEC: Print 1, "<AFFECTSSTOCK>No</AFFECTSSTOCK>"
  loc_F94CF7: Print 1, "<ISGROUPFORLOANRCPT>No</ISGROUPFORLOANRCPT>"
  loc_F94D02: Print 1, "<ISGROUPFORLOANPYMNT>No</ISGROUPFORLOANPYMNT>"
  loc_F94D0D: Print 1, "<SORTPOSITION>No</SORTPOSITION>"
  loc_F94D18: Print 1, "<LANGUAGENAME.LIST>"
  loc_F94D23: Print 1, "<NAME.LIST TYPE=""SString"">"
  loc_F94D3C: Print 1, "<NAME>" & var_88 & "</NAME>"
  loc_F94D4E: Print 1, "</NAME.LIST>"
  loc_F94D59: Print 1, "<LANGUAGEID>1033</LANGUAGEID>"
  loc_F94D64: Print 1, "</LANGUAGENAME.LIST>"
  loc_F94D6F: Print 1, "</GROUP>"
  loc_F94D75: Exit Sub
End Sub

Public Sub Proc_331_7_11B6A94(arg_C, arg_10, arg_14, arg_18, arg_1C) '11B6A94
  'Data Table: 46A2A8
  loc_11B6653: var_88 = arg_C
  loc_11B6681: Print 1, "<LEDGER NAME=""" & var_88 & """ RESERVEDNAME="""">"
  loc_11B6693: Print 1, "<ADDRESS.LIST TYPE=""String"">"
  loc_11B66AC: Print 1, "<ADDRESS>" & arg_10 & "</ADDRESS>"
  loc_11B66CC: Print 1, "<ADDRESS>" & arg_14 & "</ADDRESS>"
  loc_11B66DE: Print 1, "</ADDRESS.LIST>"
  loc_11B66E9: Print 1, "<MAILINGNAME.LIST TYPE=""String"">"
  loc_11B6702: Print 1, "<MAILINGNAME>" & var_88 & "</MAILINGNAME>"
  loc_11B6714: Print 1, "</MAILINGNAME.LIST>"
  loc_11B672D: Print 1, "<STATENAME>" & arg_18 & "</STATENAME>"
  loc_11B673F: Print 1, "<SALESTAXNUMBER>05002007343</SALESTAXNUMBER>"
  loc_11B674A: Print 1, "<PRICELEVEL>PL</PRICELEVEL>"
  loc_11B6763: Print 1, "<PARENT>" & arg_1C & "</PARENT>"
  loc_11B6775: Print 1, "<TAXCLASSIFICATIONNAME></TAXCLASSIFICATIONNAME>"
  loc_11B6780: Print 1, "<TAXTYPE>Others</TAXTYPE>"
  loc_11B678B: Print 1, "<BILLCREDITPERIOD>5 Days</BILLCREDITPERIOD>"
  loc_11B6796: Print 1, "<GSTTYPE></GSTTYPE>"
  loc_11B67A1: Print 1, "<APPROPRIATEFOR></APPROPRIATEFOR>"
  loc_11B67AC: Print 1, "<SERVICECATEGORY></SERVICECATEGORY>"
  loc_11B67B7: Print 1, "<EXCISELEDGERCLASSIFICATION></EXCISELEDGERCLASSIFICATION>"
  loc_11B67C2: Print 1, "<EXCISEDUTYTYPE></EXCISEDUTYTYPE>"
  loc_11B67CD: Print 1, "<EXCISENATUREOFPURCHASE></EXCISENATUREOFPURCHASE>"
  loc_11B67D8: Print 1, "<LEDGERFBTCATEGORY></LEDGERFBTCATEGORY>"
  loc_11B67E3: Print 1, "<ISBILLWISEON>Yes</ISBILLWISEON>"
  loc_11B67EE: Print 1, "<ISCOSTCENTRESON>No</ISCOSTCENTRESON>"
  loc_11B67F9: Print 1, "<ISINTERESTON>No</ISINTERESTON>"
  loc_11B6804: Print 1, "<ALLOWINMOBILE>No</ALLOWINMOBILE>"
  loc_11B680F: Print 1, "<ISCOSTTRACKINGON>No</ISCOSTTRACKINGON>"
  loc_11B681A: Print 1, "<ISCONDENSED>No</ISCONDENSED>"
  loc_11B6825: Print 1, "<AFFECTSSTOCK>No</AFFECTSSTOCK>"
  loc_11B6830: Print 1, "<FORPAYROLL>No</FORPAYROLL>"
  loc_11B683B: Print 1, "<INTERESTONBILLWISE>No</INTERESTONBILLWISE>"
  loc_11B6846: Print 1, "<OVERRIDEINTEREST>No</OVERRIDEINTEREST>"
  loc_11B6851: Print 1, "<OVERRIDEADVINTEREST>No</OVERRIDEADVINTEREST>"
  loc_11B685C: Print 1, "<USEFORVAT>No</USEFORVAT>"
  loc_11B6867: Print 1, "<IGNORETDSEXEMPT>No</IGNORETDSEXEMPT>"
  loc_11B6872: Print 1, "<ISTCSAPPLICABLE>No</ISTCSAPPLICABLE>"
  loc_11B687D: Print 1, "<ISTDSAPPLICABLE>No</ISTDSAPPLICABLE>"
  loc_11B6888: Print 1, "<ISFBTAPPLICABLE>No</ISFBTAPPLICABLE>"
  loc_11B6893: Print 1, "<ISGSTAPPLICABLE>No</ISGSTAPPLICABLE>"
  loc_11B689E: Print 1, "<ISEXCISEAPPLICABLE>No</ISEXCISEAPPLICABLE>"
  loc_11B68A9: Print 1, "<ISTDSEXPENSE>No</ISTDSEXPENSE>"
  loc_11B68B4: Print 1, "<ISEDLIAPPLICABLE>No</ISEDLIAPPLICABLE>"
  loc_11B68BF: Print 1, "<ISRELATEDPARTY>No</ISRELATEDPARTY>"
  loc_11B68CA: Print 1, "<USEFORESIELIGIBILITY>No</USEFORESIELIGIBILITY>"
  loc_11B68D5: Print 1, "<SHOWINPAYSLIP>No</SHOWINPAYSLIP>"
  loc_11B68E0: Print 1, "<USEFORGRATUITY>No</USEFORGRATUITY>"
  loc_11B68EB: Print 1, "<ISTDSPROJECTED>No</ISTDSPROJECTED>"
  loc_11B68F6: Print 1, "<FORSERVICETAX>No</FORSERVICETAX>"
  loc_11B6901: Print 1, "<ISINPUTCREDIT>No</ISINPUTCREDIT>"
  loc_11B690C: Print 1, "<ISEXEMPTED>No</ISEXEMPTED>"
  loc_11B6917: Print 1, "<ISABATEMENTAPPLICABLE>No</ISABATEMENTAPPLICABLE>"
  loc_11B6922: Print 1, "<ISSTXPARTY>No</ISSTXPARTY>"
  loc_11B692D: Print 1, "<ISSTXNONREALIZEDTYPE>No</ISSTXNONREALIZEDTYPE>"
  loc_11B6938: Print 1, "<TDSDEDUCTEEISSPECIALRATE>No</TDSDEDUCTEEISSPECIALRATE>"
  loc_11B6943: Print 1, "<AUDITED>No</AUDITED>"
  loc_11B694E: Print 1, "<SORTPOSITION>1000</SORTPOSITION>"
  loc_11B6959: Print 1, "<LANGUAGENAME.LIST>"
  loc_11B6964: Print 1, "<NAME.LIST TYPE=""String"">"
  loc_11B697D: Print 1, "<NAME>" & var_88 & "</NAME>"
  loc_11B698F: Print 1, "</NAME.LIST>"
  loc_11B699A: Print 1, "<LANGUAGEID>1033</LANGUAGEID>"
  loc_11B69A5: Print 1, "</LANGUAGENAME.LIST>"
  loc_11B69B0: Print 1, "<SLABPERIOD.LIST>      </SLABPERIOD.LIST>"
  loc_11B69BB: Print 1, "<GRATUITYPERIOD.LIST>      </GRATUITYPERIOD.LIST>"
  loc_11B69C6: Print 1, "<ADDITIONALCOMPUTATIONS.LIST>      </ADDITIONALCOMPUTATIONS.LIST>"
  loc_11B69D1: Print 1, "<BANKALLOCATIONS.LIST>      </BANKALLOCATIONS.LIST>"
  loc_11B69DC: Print 1, "<PAYMENTDETAILS.LIST>      </PAYMENTDETAILS.LIST>"
  loc_11B69E7: Print 1, "<BANKEXPORTFORMATS.LIST>      </BANKEXPORTFORMATS.LIST>"
  loc_11B69F2: Print 1, "<BILLALLOCATIONS.LIST>      </BILLALLOCATIONS.LIST>"
  loc_11B69FD: Print 1, "<INTERESTCOLLECTION.LIST>      </INTERESTCOLLECTION.LIST>"
  loc_11B6A08: Print 1, "<LEDGERCLOSINGVALUES.LIST>      </LEDGERCLOSINGVALUES.LIST>"
  loc_11B6A13: Print 1, "<LEDGERAUDITCLASS.LIST>      </LEDGERAUDITCLASS.LIST>"
  loc_11B6A1E: Print 1, "<AUDITENTRIES.LIST>      </AUDITENTRIES.LIST>"
  loc_11B6A29: Print 1, "<TDSEXEMPTIONRULES.LIST>      </TDSEXEMPTIONRULES.LIST>"
  loc_11B6A34: Print 1, "<DEDUCTINSAMEVCHRULES.LIST>      </DEDUCTINSAMEVCHRULES.LIST>"
  loc_11B6A3F: Print 1, "<LOWERDEDUCTION.LIST>      </LOWERDEDUCTION.LIST>"
  loc_11B6A4A: Print 1, "<STXABATEMENTDETAILS.LIST>      </STXABATEMENTDETAILS.LIST>"
  loc_11B6A55: Print 1, "<LEDMULTIADDRESSLIST.LIST>      </LEDMULTIADDRESSLIST.LIST>"
  loc_11B6A60: Print 1, "<STXTAXDETAILS.LIST>      </STXTAXDETAILS.LIST>"
  loc_11B6A6B: Print 1, "<UDF:_UDF_788538166.LIST DESC="""" ISLIST=""YES"" TYPE=""String"">"
  loc_11B6A76: Print 1, "<UDF:_UDF_788538166 DESC="""">NKT18</UDF:_UDF_788538166>"
  loc_11B6A81: Print 1, "</UDF:_UDF_788538166.LIST>"
  loc_11B6A8C: Print 1, "</LEDGER>"
  loc_11B6A92: Exit Sub
End Sub

Public Sub Proc_331_8_104FBE4(arg_C, arg_10) '104FBE4
  'Data Table: 46A2A8
  Dim var_F8 As Variant
  loc_104F9A5: var_8C = arg_18
  loc_104F9B3: Print 2, "<ALLLEDGERENTRIES.LIST>"
  loc_104F9CC: Print 2, "<NARRATION>" & arg_1C & "</NARRATION>"
  loc_104F9EC: Print 2, "<LEDGERNAME>" & arg_C & "</LEDGERNAME>"
  loc_104F9FE: Print 2, "<GSTCLASS />"
  loc_104FA45: Print 2, "<ISDEEMEDPOSITIVE>" & IIf((var_8C = "DR"), "Yes", "No") & "</ISDEEMEDPOSITIVE>"
  loc_104FA5F: Print 2, "<REMOVEZEROENTRIES>No</REMOVEZEROENTRIES>"
  loc_104FA6A: Print 2, "<ISPARTYLEDGER>Yes</ISPARTYLEDGER>"
  loc_104FAB1: Print 2, "<ISLASTDEEMEDPOSITIVE>" & IIf((var_8C = "DR"), "Yes", "No") & "</ISLASTDEEMEDPOSITIVE>"
  loc_104FB16: var_F8 = -Format(arg_10, "0.00")
  loc_104FB4C: Print 2, "<AMOUNT>" & IIf((var_8C = "DR"), IIf((var_8C = "DR"), "Yes", "No"), Format(arg_10, "0.00")) & "</AMOUNT>"
  loc_104FB6C: Print 2, "<BANKALLOCATIONS.LIST />"
  loc_104FB77: Print 2, "<BILLALLOCATIONS.LIST />"
  loc_104FB82: Print 2, "<INTERESTCOLLECTION.LIST />"
  loc_104FB8D: Print 2, "<AUDITENTRIES.LIST />"
  loc_104FB98: Print 2, "<INVENTORYALLOCATIONS.LIST>"
  loc_104FBA3: Print 2, "</INVENTORYALLOCATIONS.LIST>"
  loc_104FBAE: Print 2, "<TAXBILLALLOCATIONS.LIST />"
  loc_104FBB9: Print 2, "<TAXOBJECTALLOCATIONS.LIST />"
  loc_104FBC4: Print 2, "<TDSEXPENSEALLOCATIONS.LIST />"
  loc_104FBCF: Print 2, "<VATSTATUTORYDETAILS.LIST />"
  loc_104FBDA: Print 2, "</ALLLEDGERENTRIES.LIST>"
  loc_104FBE0: Exit Sub
End Sub

Public Sub Proc_331_9_1813528
  'Data Table: 46A2A8
  Dim var_9E As Integer
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_46A2B2 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_120 As Variant
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_138 As String
  Dim var_130 As Variant
  Dim var_160 As Fields15
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_200 As Fields15
  Dim var_264 As Variant
  Dim var_158 As String
  Dim var_280 As String
  Dim var_27C As String
  Dim var_140 As TextBox
  Dim var_8C As Recordset15
  Dim var_288 As String
  Dim var_290 As String
  Dim var_2C4 As String
  Dim var_2DC As String
  Dim var_1B4 As Variant
  Dim var_2E8 As String
  Dim var_88 As Recordset15
  Dim var_A8 As Double
  loc_1811236: var_9E = 0
  loc_181123C: var_E4 = vbNullString
  loc_181123F: On Error Goto loc_18134C1
  loc_1811245: var_B8 = "DAILY PAYMENT/CHARGES POSTING A/C"
  loc_1811254: Me.lblStatus.Visible = False
  loc_181126B: Me.ProgressBar1.Visible = False
  loc_1811278: Call 0.Method_arg_A4 (&HB)
  loc_1811284: Set var_E8 = Me.lblStatus
  loc_181128A: var_E8.Caption = vbNullString
  loc_18112A6: var_10C = "Select Distinct Grp.groupname,(select GroupName from AcGroup where MainGrCode=substring(Grp.MainGrCode,1,len(Grp.MainGrCode)-3))  as UnderGroupName From Acgroup Grp WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_18112B6: unk_46A2B2.Execute var_10C & "' OR LOGSITE_CODE='HO') Order By Grp.groupname", var_120, -1
  loc_18112C1: Set var_90 = var_E8
  loc_18112E5: var_10C = "Select M.*, G.Groupname, S.Name as Statename, G.Sysgroup From Subgroup M Left Join AcGroup G On M.GroupCode=G.GroupCode Left Join City C On M.Citycode=C.Citycode Left Join State S On C.Statecode=S.code where (M.LOGSITE_CODE='" & MemVar_1F95078
  loc_18112F5: unk_46A2B2.Execute var_10C & "' OR M.LOGSITE_CODE='HO') ", var_120, -1
  loc_1811300: Set var_94 = var_E8
  loc_181132E: var_F8 = CVar(CDbl((var_90.RecordCount + var_94.RecordCount))) 'Single
  loc_181133D: Me.ProgressBar1.Max = False
  loc_1811351: var_E8 = Me.var_E8.App
  loc_181136C: Open App.Path & "\LedgerMaster.xml" For Output As 1 Len = &HFF
  loc_181137F: Print 1, "<ENVELOPE>"
  loc_181138A: Print 1, "<HEADER>"
  loc_1811395: Print 1, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_18113A0: Print 1, "</HEADER>"
  loc_18113AB: Print 1, "<BODY>"
  loc_18113B6: Print 1, "<IMPORTDATA>"
  loc_18113C1: Print 1, "<REQUESTDESC>"
  loc_18113CC: Print 1, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_18113D7: Print 1, "<STATICVARIABLES>"
  loc_18113F0: Print 1, "<SVCURRENTCOMPANY>" & MemVar_1F95130 & "</SVCURRENTCOMPANY>"
  loc_1811402: Print 1, "</STATICVARIABLES>"
  loc_181140D: Print 1, "</REQUESTDESC>"
  loc_1811418: Print 1, "<REQUESTDATA>"
  loc_1811423: Print 1, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_1811429: ' Referenced from: 1811A68
  loc_1811438: If Not(var_90.EOF) Then
  loc_181144A:   var_E8 = var_90.Fields
  loc_1811474:   If (Proc_6_38_E69628(CVar(var_E8.Item("UnderGroupName")), var_E8) = "DIRECT EXPENSE") Then
  loc_1811486:     var_E8 = var_90.Fields
  loc_18114C2:     var_138 = Replace(Proc_6_38_E69628(CVar(var_E8.Item("GroupName")), var_E8), "&", "&amp;", 1, -1, 0)
  loc_18114CE:     Call Proc_331_6_F94D78(var_138, "DIRECT EXPENSES")
  loc_18114E7:   Else
  loc_1811520:     If (Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_181156E:       var_138 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_181157A:       Call Proc_331_6_F94D78(var_138, "INDIRECT INCOMES")
  loc_1811593:     Else
  loc_18115CC:       If (Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_181161A:         var_138 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1811626:         Call Proc_331_6_F94D78(var_138, "SUSPENSE A/C")
  loc_181163F:       Else
  loc_1811678:         If (Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))) = "PROFIT & LOSS A/C") Then
  loc_18116C6:           var_138 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_18116D2:           Call Proc_331_6_F94D78(var_138, "SUSPENSE A/C")
  loc_18116EB:         Else
  loc_1811724:           If (Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))) = "DIRECT EXPENSE") Then
  loc_1811772:             var_110 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1811778:             Call Proc_331_6_F94D78("DIRECT EXPENSES", var_138)
  loc_181178F:           Else
  loc_18117C8:             If (Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_1811816:               var_110 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_181181C:               Call Proc_331_6_F94D78("INDIRECT INCOMES", var_138)
  loc_1811833:             Else
  loc_181186C:               If (Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_18118BA:                 var_110 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_18118C0:                 Call Proc_331_6_F94D78("SUSPENSE A/C", var_138)
  loc_18118D7:               Else
  loc_1811922:                 var_158 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1811970:                 var_138 = Replace(Proc_6_38_E69628(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1811979:                 Call Proc_331_6_F94D78(var_158, var_138)
  loc_181199D:               End If
  loc_181199D:             End If
  loc_181199D:           End If
  loc_181199D:         End If
  loc_181199D:       End If
  loc_181199D:     End If
  loc_181199D:   End If
  loc_18119A7:   Me.lblStatus.Refresh
  loc_18119BB:   Me.lblStatus.Visible = True
  loc_18119D1:   Me.ProgressBar1.Visible = True
  loc_1811A15:   Me.lblStatus.Caption = var_9E & Proc_6_38_E69628(CVar(var_90.Fields.Item("GroupName")), "Transferring Group ")
  loc_1811A42:   var_F8 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_1811A51:   Me.ProgressBar1.Value = "GroupName"
  loc_1811A63:   var_90.MoveNext
  loc_1811A68:   GoTo loc_1811429
  loc_1811A6B:   ' Referenced from: 18121DF
  loc_1811A6B: End If
  loc_1811A7A: If Not(var_94.EOF) Then
  loc_1811AB6:   If (Proc_6_38_E69628(CVar(var_94.Fields.Item("GroupName"))) = "DIRECT EXPENSE") Then
  loc_1811B04:     var_280 = Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_1811B7D:     var_1C4 = CVar(Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1811C18:     var_264 = CVar(Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1811C57:     Call Proc_331_7_11B6A94(var_280, CStr(IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1"))) = vbNullString), "No", var_1C4)), CStr(IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2"))) = vbNullString), "No", var_264)), "Uttarakhand", "DIRECT EXPENSES")
  loc_1811CA8:   Else
  loc_1811CE1:     If (Proc_6_38_E69628(CVar(var_94.Fields.Item("GroupName"))) = "INDIRECT INCOME") Then
  loc_1811D2F:       var_280 = Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_1811DA8:       var_1C4 = CVar(Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1811E43:       var_264 = CVar(Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1811E82:       Call Proc_331_7_11B6A94(var_280, CStr(IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1"))) = vbNullString), "No", var_1C4)), CStr(IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2"))) = vbNullString), "No", var_264)), "Uttarakhand", "INDIRECT INCOMES")
  loc_1811ED3:     Else
  loc_1811F1E:       var_288 = Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_1811F38:       var_140 = var_94.Fields.Item("Add1")
  loc_1811F40:       var_150 = CVar(var_140) 'Address
  loc_1811F6B:       var_184 = CVar(var_94.Fields.Item("Add1")) 'Address
  loc_1811F97:       var_1C4 = CVar(Replace(Proc_6_38_E69628(var_184), "&", "&amp;", 1, -1, 0)) 'String
  loc_1811F9F:       var_1B4 = "No"
  loc_1811FF6:       var_200 = var_94.Fields
  loc_1812032:       var_264 = CVar(Replace(Proc_6_38_E69628(CVar(var_200.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_18120A2:       var_280 = Replace(Proc_6_38_E69628(CVar(var_94.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_18120BC:       Call Proc_331_7_11B6A94(Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1"))), CStr(IIf((Proc_6_38_E69628(var_150) = vbNullString), var_1B4, var_1C4)), CStr(IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2"))) = vbNullString), "No", var_264)), "Uttarakhand", var_280)
  loc_1812114:     End If
  loc_1812114:   End If
  loc_181211E:   Me.lblStatus.Refresh
  loc_1812132:   Me.lblStatus.Visible = True
  loc_1812148:   Me.ProgressBar1.Visible = True
  loc_181218C:   Me.lblStatus.Caption = "Transferring Master " & Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")))
  loc_18121AC:   var_120 = Me.ProgressBar1.Value
  loc_18121B9:   var_F8 = CVar((CDbl(var_120) + CDbl(1))) 'Single
  loc_18121C2:   Set var_130 = Me.ProgressBar1
  loc_18121C8:   var_130.Value = "Name"
  loc_18121DA:   var_94.MoveNext
  loc_18121DF:   GoTo loc_1811A6B
  loc_18121E2: End If
  loc_18121E7: Print 1, "</TALLYMESSAGE>"
  loc_18121F2: Print 1, "</REQUESTDATA>"
  loc_18121FD: Print 1, "</IMPORTDATA>"
  loc_1812208: Print 1, "</BODY>"
  loc_1812213: Print 1, "</ENVELOPE>"
  loc_181221B: Close 1
  loc_181222F: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_1812243: Me.lblStatus.Visible = False
  loc_181225A: Me.ProgressBar1.Visible = False
  loc_181226F: Me.lblStatus.Caption = "LedgerMaster.xml Generated Successfully"
  loc_1812281: Me.lblStatus.Refresh
  loc_181229D: var_110 = "Select 1 as mType, P.FolioNoDocid as Docid, cast(ltrim(max(P.Bill_No)) as Integer) as VNo, 'Agnst. Guest Bill No. ' + ltrim(max(P.Bill_No)) as Narration, max(P.SettleDate) as VDate, 'Sales' as VouchType, cast(year(max(P.SettleDate)) as Varchar) + case when len(month(max(P.SettleDate))) <=1 then '0' + cast(month(max(P.SettleDate)) as Varchar) else cast(month(max(P.SettleDate)) as Varchar) end + case when len(day(max(P.SettleDate))) <=1 then '0' + cast(day(max(P.SettleDate)) as Varchar) else cast(day(max(P.SettleDate)) as Varchar) end as mDate, '" & Proc_6_38_E69628(var_B8)
  loc_18122A4: var_138 = "Transferring Master " & Proc_6_38_E69628(CVar(var_94.Fields.Item("Name"))) & "' as Party from PayCharge P where P.SettleDate between '"
  loc_18122B9: Call 0.Method_Proc_331_9_18135280 (0, var_130)
  loc_18122E0: Set var_13C = Me.Txt
  loc_18122E6: Call 0.Method_Proc_331_9_18135280 (1, var_140)
  loc_18122FE: var_2C8 = var_138 & var_130.Text & "' and '" & var_140.Text & "' and (isnull(P.AmtDr,0)<>0 Or isnull(P.AmtCr,0)<>0) Group by P.FolioNoDocid Order By Cast(max(P.Bill_No) As Integer)"
  loc_1812335: unk_46A2B2.Execute var_2C8, var_120, -1
  loc_1812340: Set var_8C = Me.Txt
  loc_181235D: If (var_8C.RecordCount = 0) Then
  loc_1812379:   MsgBox("No Records To Post", 0, var_150, var_184, var_1B4)
  loc_1812389:   Exit Sub
  loc_181238A: End If
  loc_18123A8: Me.ProgressBar1.Max = CVar(CDbl(var_8C.RecordCount))
  loc_18123BC: var_E8 = Me.var_E8.App
  loc_18123D7: Open App.Path & "\Ledger.xml" For Output As 2 Len = &HFF
  loc_18123EA: Print 2, "<ENVELOPE>"
  loc_18123F5: Print 2, "<HEADER>"
  loc_1812400: Print 2, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_181240B: Print 2, "</HEADER>"
  loc_1812416: Print 2, "<BODY>"
  loc_1812421: Print 2, "<IMPORTDATA>"
  loc_181242C: Print 2, "<REQUESTDESC>"
  loc_1812437: Print 2, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_1812442: Print 2, "<STATICVARIABLES>"
  loc_181245B: Print 2, "<SVCURRENTCOMPANY>" & MemVar_1F95130 & "</SVCURRENTCOMPANY>"
  loc_181246D: Print 2, "</STATICVARIABLES>"
  loc_1812478: Print 2, "</REQUESTDESC>"
  loc_1812483: Print 2, "<REQUESTDATA>"
  loc_1812489: ' Referenced from: 1813418
  loc_1812498: If Not(var_8C.EOF) Then
  loc_18124A0:   Print 2, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_18124DF:   If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("mtype"))) = "1") Then
  loc_1812520:     Print 2, "<VOUCHERTYPE NAME=""" & var_8C.Fields.Item("Vouchtype").Value & """>"
  loc_181253B:     Print 2, "<RESERVEDNAME></RESERVEDNAME>"
  loc_1812546:     Print 2, "<PARENT>Receipt</PARENT>"
  loc_1812551:     Print 2, "<MAILINGNAME>"
  loc_181255C:     Print 2, "<NUMBERINGMETHOD>Manual</NUMBERINGMETHOD>"
  loc_1812567:     Print 2, "<EXCISEUNITNAME></EXCISEUNITNAME>"
  loc_1812572:     Print 2, "<CONTRACONTRA></CONTRACONTRA>"
  loc_181257D:     Print 2, "<PAYMENTCONTRA></PAYMENTCONTRA>"
  loc_1812588:     Print 2, "<RECEIPTCONTRA></RECEIPTCONTRA>"
  loc_1812593:     Print 2, "<JOURNALCONTRA></JOURNALCONTRA>"
  loc_181259E:     Print 2, "<CNOTECONTRA></CNOTECONTRA>"
  loc_18125A9:     Print 2, "<DNOTECONTRA></DNOTECONTRA>"
  loc_18125B4:     Print 2, "<SALESCONTRA></SALESCONTRA>"
  loc_18125BF:     Print 2, "<PURCHASECONTRA></PURCHASECONTRA>"
  loc_18125CA:     Print 2, "<CREDITCSTCTR></CREDITCSTCTR>"
  loc_18125D5:     Print 2, "<DEBITCSTCTR></DEBITCSTCTR>"
  loc_18125E0:     Print 2, "<PREVIOUSPURCHASE></PREVIOUSPURCHASE>"
  loc_18125EB:     Print 2, "<PREVIOUSSALES></PREVIOUSSALES>"
  loc_18125F6:     Print 2, "<PREVIOUSGODOWN></PREVIOUSGODOWN>"
  loc_1812601:     Print 2, "<PREVNARRATION></PREVNARRATION>"
  loc_181260C:     Print 2, "<ISDEEMEDPOSITIVE>Yes</ISDEEMEDPOSITIVE>"
  loc_1812617:     Print 2, "<AFFECTSSTOCK>No</AFFECTSSTOCK>"
  loc_1812622:     Print 2, "<PREVENTDUPLICATES>No</PREVENTDUPLICATES>"
  loc_181262D:     Print 2, "<PREFILLZERO>No</PREFILLZERO>"
  loc_1812638:     Print 2, "<PRINTAFTERSAVE>No</PRINTAFTERSAVE>"
  loc_1812643:     Print 2, "<FORMALRECEIPT>No</FORMALRECEIPT>"
  loc_181264E:     Print 2, "<ISOPTIONAL>No</ISOPTIONAL>"
  loc_1812659:     Print 2, "<ASMFGJRNL>No</ASMFGJRNL>"
  loc_1812664:     Print 2, "<EFFECTIVEDATE>No</EFFECTIVEDATE>"
  loc_181266F:     Print 2, "<COMMONNARRATION>Yes</COMMONNARRATION>"
  loc_181267A:     Print 2, "<MULTINARRATION>Yes</MULTINARRATION>"
  loc_1812685:     Print 2, "<ISTAXINVOICE>No</ISTAXINVOICE>"
  loc_1812690:     Print 2, "<USEFORPOSINVOICE>No</USEFORPOSINVOICE>"
  loc_181269B:     Print 2, "<USEFOREXCISETRADERINVOICE>No</USEFOREXCISETRADERINVOICE>"
  loc_18126A6:     Print 2, "<USEFOREXCISE>No</USEFOREXCISE>"
  loc_18126B1:     Print 2, "<USEFORJOBWORK>No</USEFORJOBWORK>"
  loc_18126BC:     Print 2, "<ISFORJOBWORKIN>No</ISFORJOBWORKIN>"
  loc_18126C7:     Print 2, "<ALLOWCONSUMPTION>No</ALLOWCONSUMPTION>"
  loc_18126D2:     Print 2, "<SORTPOSITION>No</SORTPOSITION>"
  loc_18126DD:     Print 2, "<BEGINNINGNUMBER>No</BEGINNINGNUMBER>"
  loc_18126E8:     Print 2, "<LANGUAGENAME.LIST>"
  loc_18126F3:     Print 2, "<NAME.LIST>"
  loc_18126FE:     Print 2, "<TYPE=""String"">"
  loc_1812742:     Print 2, "<NAME>" & var_8C.Fields.Item("Vouchtype").Value & "</NAME>"
  loc_181275D:     Print 2, "</NAME.LIST>"
  loc_1812768:     Print 2, "<LANGUAGEID>1033</LANGUAGEID>"
  loc_1812773:     Print 2, "</LANGUAGENAME.LIST>"
  loc_181277E:     Print 2, "<PREFIXLIST.LIST></PREFIXLIST.LIST>"
  loc_1812789:     Print 2, "<SUFFIXLIST.LIST></SUFFIXLIST.LIST>"
  loc_1812794:     Print 2, "<RESTARTFROMLIST.LIST></RESTARTFROMLIST.LIST>"
  loc_181279F:     Print 2, "<VOUCHERCLASSLIST.LIST></VOUCHERCLASSLIST.LIST>"
  loc_18127AA:     Print 2, "</VOUCHERTYPE>"
  loc_18127B0:   End If
  loc_18127B5:   Print 2, "<VOUCHER>"
  loc_18127F9:   Print 2, "<DATE>" & var_8C.Fields.Item("mDate").Value & "</DATE>"
  loc_181284D:   Print 2, "<NARRATION>" & var_8C.Fields.Item("Narration").Value & "</NARRATION>"
  loc_18128A1:   Print 2, "<VOUCHERTYPENAME>" & var_8C.Fields.Item("Vouchtype").Value & "</VOUCHERTYPENAME>"
  loc_18128F5:   Print 2, "<VOUCHERNUMBER>" & var_8C.Fields.Item("VNo").Value & "</VOUCHERNUMBER>"
  loc_181291E:   Print 2, "<Reference>" & vbNullString & "</Reference>"
  loc_1812976:   var_158 = Replace(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Party"))), "&", "&amp;", 1, -1, 0)
  loc_181298F:   Print 2, "<PARTYLEDGERNAME>" & var_140.Text & "</PARTYLEDGERNAME>"
  loc_18129AF:   Print 2, "<FBTPAYMENTTYPE>Default</FBTPAYMENTTYPE>"
  loc_18129BA:   Print 2, "<PERSISTEDVIEW>Accounting Voucher View</PERSISTEDVIEW>"
  loc_18129C5:   Print 2, "<AUDITED>No</AUDITED>"
  loc_18129D0:   Print 2, "<ISOPTIONAL>No</ISOPTIONAL>"
  loc_1812A14:   Print 2, "<EFFECTIVEDATE>" & var_8C.Fields.Item("mDate").Value & "</EFFECTIVEDATE>"
  loc_1812A2F:   Print 2, "<ALTERID></ALTERID>"
  loc_1812A3A:   Print 2, "<ISCANCELLED>No</ISCANCELLED>"
  loc_1812A45:   Print 2, "<HASCASHFLOW>No</HASCASHFLOW>"
  loc_1812A50:   Print 2, "<ISPOSTDATED>No</ISPOSTDATED>"
  loc_1812A5B:   Print 2, "<ISINVOICE>No</ISINVOICE>"
  loc_1812A66:   Print 2, "<ISCOSTCENTRE>No</ISCOSTCENTRE>"
  loc_1812A71:   Print 2, "<ISDELETED>No</ISDELETED>"
  loc_1812A7C:   Print 2, "<ASORIGINAL>No</ASORIGINAL>"
  loc_1812A87:   Print 2, "<VCHISFROMSYNC>No</VCHISFROMSYNC>"
  loc_1812A92:   Print 2, "<MASTERID></MASTERID>"
  loc_1812A9D:   Print 2, "<VOUCHERKEY></VOUCHERKEY>"
  loc_1812AA8:   Print 2, "<AUDITENTRIES.LIST />"
  loc_1812AB3:   Print 2, "<INVOICEDELNOTES.LIST />"
  loc_1812ABE:   Print 2, "<INVOICEORDERLIST.LIST />"
  loc_1812AC9:   Print 2, "<INVOICEINDENTLIST.LIST />"
  loc_1812AD4:   Print 2, "<ATTENDANCEENTRIES.LIST />"
  loc_1812B13:   If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("mtype"))) = "1") Then
  loc_1812B35:     var_E8 = var_8C.Fields
  loc_1812B4E:     var_10C = Proc_6_38_E69628(CVar(var_E8.Item("DocID")), "Select L.Name as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON R.AcCode=L.SubCode where O.FolioNoDocid='", var_1C4)
  loc_1812B52:     var_110 = -1 & var_10C
  loc_1812B60:     var_138 = var_140.Text & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And Not (O.ModeSet='S' And O.PayCode<>'" & MemVar_1F95078
  loc_1812B6E:     var_158 = var_138 & "ROFF') " & "Union All Select L.Name as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON O.CompCode=L.SubCode where O.PayType IN ('Company','Member') And O.FolioNoDocid='"
  loc_1812B90:     var_150 = CVar(var_8C.Fields.Item("DocID")) 'Address
  loc_1812BA4:     var_27C = var_200 & Proc_6_38_E69628(var_150, var_158) & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And Not (O.ModeSet='S' And O.PayCode<>'"
  loc_1812BC7:     var_290 = var_27C & MemVar_1F95078 & "ROFF') " & "Union All Select '" & var_B8 & "' as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON O.CompCode=L.SubCode where O.PayType IN ('Company','Member') And O.FolioNoDocid='"
  loc_1812BD9:     var_160 = var_8C.Fields
  loc_1812BFD:     var_2C4 = var_E8 & Proc_6_38_E69628(CVar(var_160.Item("DocID")), var_290) & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And (O.ModeSet='S' And O.PayCode<>'"
  loc_1812C20:     var_2DC = var_2C4 & MemVar_1F95078 & "ROFF')" & "Union All Select '" & var_B8 & "' as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON R.AcCode=L.SubCode where O.FolioNoDocid='"
  loc_1812C42:     var_1B4 = CVar(var_8C.Fields.Item("DocID")) 'Address
  loc_1812C56:     var_2E8 = var_2DC & Proc_6_38_E69628(var_1B4) & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And (O.ModeSet='S' And O.PayCode<>'"
  loc_1812C6D:     unk_46A2B2.Execute var_2E8 & MemVar_1F95078 & "ROFF')", , 
  loc_1812C78:     Set var_88 = var_200
  loc_1812CCE:     ' Referenced from: 1813273
  loc_1812CCE:   End If
  loc_1812CDD:   If Not(var_88.EOF) Then
  loc_1812CFF:     var_120 = CVar(var_88.Fields.Item("AmtCr")) 'Address
  loc_1812D06:     Proc_6_39_E7D3A0(var_150)
  loc_1812D34:     Proc_6_39_E7D3A0(var_1B4, CVar(var_88.Fields.Item("AmtDr")))
  loc_1812D3C:     var_1C4 = (var_150 + var_1B4)
  loc_1812D5C:     If CBool(var_1C4 <> 0) Then
  loc_1812D85:       Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("Amt")))
  loc_1812D9F:       If (var_150 > 0) Then
  loc_1812DC8:         Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("AmtCr")))
  loc_1812DE2:         If (var_150 > 0) Then
  loc_1812E0B:           Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("Amt")))
  loc_1812E1D:           var_88.Collect = "AmtCr"
  loc_1812E2F:         Else
  loc_1812E55:           Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("AmtDr")))
  loc_1812E6F:           If (var_150 > 0) Then
  loc_1812E98:             Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("Amt")))
  loc_1812EAA:             var_88.Collect = "AmtDr"
  loc_1812EB9:           End If
  loc_1812EB9:         End If
  loc_1812EB9:       End If
  loc_1812EDF:       Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("AmtCr")), var_150)
  loc_1812EF9:       If (var_150 = 0) Then
  loc_1812EFF:         var_AC = "DR"
  loc_1812F28:         Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("AmtDr")))
  loc_1812F31:         var_A8 = CSng(var_150)
  loc_1812F41:       Else
  loc_1812F67:         Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("AmtDr")), var_A8)
  loc_1812F81:         If (var_150 = 0) Then
  loc_1812F87:           var_AC = "CR"
  loc_1812FB0:           Proc_6_39_E7D3A0(var_150, CVar(var_88.Fields.Item("AmtCr")))
  loc_1812FB9:           var_A8 = CSng(var_150)
  loc_1812FC9:         Else
  loc_1812FE8:           var_120 = CVar(var_88.Fields.Item("AmtCr")) 'Address
  loc_1812FEF:           Proc_6_39_E7D3A0(var_150, var_120, var_A8)
  loc_181301D:           Proc_6_39_E7D3A0(var_1B4, CVar(var_88.Fields.Item("AmtDr")), var_150)
  loc_1813025:           var_1C4 = (var_150 - var_1B4)
  loc_181302A:           var_A8 = CSng(var_1C4)
  loc_181304A:           Proc_6_39_E7D3A0(var_120, var_A8)
  loc_181305D:           If (var_120 < 0) Then
  loc_1813063:             var_AC = "DR"
  loc_1813069:           Else
  loc_1813074:             Proc_6_39_E7D3A0(var_120, var_A8)
  loc_1813087:             If (var_120 > 0) Then
  loc_181308D:               var_AC = "CR"
  loc_1813090:             End If
  loc_1813090:           End If
  loc_1813094:           var_A8 = Abs(var_A8)
  loc_1813097:         End If
  loc_1813097:       End If
  loc_18130D0:       If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("mType")), var_A8) = "2") Then
  loc_18130F3:         If (InStr(1, CStr(var_A8), ".", 0) > 0) Then
  loc_181312B:           var_184 = Mid(CVar(CStr(var_A8)), (InStr(1, CStr(var_A8), ".", 0) + 1), CVar(Len(CStr(var_A8))))
  loc_181314F:           If (Len(CVar(var_88.Fields.Item("AmtDr"))) > 2) Then
  loc_1813161:             var_120 = CVar((Len(CStr(var_A8)) - 1)) 'Long
  loc_1813175:             var_150 = Mid(var_A8, 1, CVar(CStr(var_A8)))
  loc_181317E:             var_A8 = CSng(var_150)
  loc_181318B:           End If
  loc_181318B:         End If
  loc_181318B:       End If
  loc_18131D6:       var_158 = Replace(Proc_6_38_E69628(CVar(var_88.Fields.Item("acledname")), var_A8), "&", "&amp;", 1, -1, 0)
  loc_18131E4:       Proc_6_39_E7D3A0(var_150, var_A8)
  loc_1813208:       var_184 = CVar(var_88.Fields.Item("Comments")) 'Address
  loc_1813234:       var_138 = Replace(Proc_6_38_E69628(var_184, var_A8), "&", "&amp;", 1, -1, 0)
  loc_1813245:       Call Proc_331_8_104FBE4(var_158, CSng(var_150))
  loc_181326B:     End If
  loc_181326E:     var_88.MoveNext
  loc_1813273:     GoTo loc_1812CCE
  loc_1813276:   End If
  loc_181327B:   Print 2, "<ATTDRECORDS.LIST />"
  loc_1813286:   Print 2, "<LEDGERENTRIESRECORDS.LIST />"
  loc_1813291:   Print 2, "<LEDGERCSTENTRIESRECORDS.LIST />"
  loc_181329C:   Print 2, "</VOUCHER>"
  loc_18132A7:   Print 2, "</TALLYMESSAGE>"
  loc_18132B7:   Me.lblStatus.Refresh
  loc_18132CB:   Me.lblStatus.Visible = True
  loc_18132E1:   Me.ProgressBar1.Visible = True
  loc_1813325:   Me.lblStatus.Caption = var_138 & Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC)
  loc_1813352:   var_F8 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_181335B:   Set var_130 = Me.ProgressBar1
  loc_1813361:   var_130.Value = "DocID"
  loc_1813389:   Set var_E8 = Me.Txt
  loc_181338F:   Call 0.Method_Proc_331_9_18135280 (1, var_130, "Update Ledger set TImp_Dt='", var_184)
  loc_1813397:   var_120 = CVar(var_130) 'Address
  loc_18133A0:   var_10C = Proc_6_38_E69628(var_120, -1)
  loc_18133D6:   var_138 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), var_160 & Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC) & "' where Docid='")
  loc_18133EA:   unk_46A2B2.Execute var_120 & var_138 & "'", , 
  loc_1813413:   var_8C.MoveNext
  loc_1813418:   GoTo loc_1812489
  loc_181341B: End If
  loc_1813420: Print 2, "</REQUESTDATA>"
  loc_181342B: Print 2, "</IMPORTDATA>"
  loc_1813436: Print 2, "</BODY>"
  loc_1813441: Print 2, "</ENVELOPE>"
  loc_1813449: Close 2
  loc_1813455: Me.lblStatus.Refresh
  loc_1813469: Me.lblStatus.Visible = True
  loc_181347F: Me.ProgressBar1.Visible = True
  loc_1813494: Me.lblStatus.Caption = "Ledger.xml Generated Successfully"
  loc_18134AE: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_18134BB: Call 0.Method_arg_A4 (0)
  loc_18134C0: Exit Sub
  loc_18134C1: ' Referenced from: 181123F
  loc_18134CB: Me.lblStatus.Refresh
  loc_18134DB: Set var_E8 = Err()
  loc_18134E1: Call 0.Method_arg_2C (Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC))
  loc_18134F3: Me.lblStatus.Caption = Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC)
  loc_1813514: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_1813521: Call 0.Method_arg_A4 (0)
  loc_1813526: Exit Sub
End Sub
