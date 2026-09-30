VERSION 5.00
Begin VB.Form FaAdjust
  Caption = "Adjustment Entry"
  BackColor = &HE6AC86&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11550
  ClientHeight = 7260
  Begin TextBox TXT_DATE
    BackColor = &HF7F0DF&
    ForeColor = &HC00000&
    Left = 1995
    Top = 570
    Width = 1410
    Height = 300
    TabIndex = 0
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
  Begin Frame Frame1
    Left = 120
    Top = 8295
    Width = 9405
    Height = 615
    TabIndex = 19
    ClipControls = 0   'False
    Begin Label COMP_LABEL
      Left = 300
      Top = 165
      Width = 5070
      Height = 345
      TabIndex = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin DataCombo TXT_ACCOUNT
    Left = 1995
    Top = 1260
    Width = 4110
    Height = 360
    TabIndex = 2
  End
  Begin Frame FRAMEADJUST
    Caption = "Adjustment"
    BackColor = &HB7A4F0&
    ForeColor = &HC00000&
    Left = -645
    Top = 3240
    Width = 11835
    Height = 5430
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BTS_AUTO_ADJ
      Caption = "Auto"
      Left = 11055
      Top = 450
      Width = 585
      Height = 495
      TabIndex = 22
      BeginProperty Font
        Name = "Times New Roman"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DisabledPicture = "FaAdjust.frx":0
      ToolTipText = "Ok"
      Style = 1
    End
    Begin TextBox TXTADJ_AMT
      BackColor = &HF7F0DF&
      Left = 4905
      Top = 0
      Width = 1065
      Height = 285
      TabIndex = 21
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TXTNARRATION
      BackColor = &HD5E2E3&
      ForeColor = &H0&
      Left = 90
      Top = 4590
      Width = 9210
      Height = 795
      Visible = 0   'False
      Text = "Text1"
      TabIndex = 7
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton Command2
      Left = 11055
      Top = 945
      Width = 585
      Height = 495
      TabIndex = 10
      Picture = "FaAdjust.frx":102
      ToolTipText = "Full Adjuatments"
      Style = 1
    End
    Begin CommandButton ADJ_OK
      Left = 11055
      Top = 1440
      Width = 585
      Height = 495
      TabIndex = 9
      Picture = "FaAdjust.frx":544
      DisabledPicture = "FaAdjust.frx":686
      ToolTipText = "Ok"
      Style = 1
    End
    Begin CommandButton ADJ_CANCLE
      Left = 11055
      Top = 1935
      Width = 585
      Height = 495
      TabIndex = 8
      Picture = "FaAdjust.frx":788
      DisabledPicture = "FaAdjust.frx":8CA
      ToolTipText = "Cancel Changes"
      Style = 1
    End
    Begin MSFlexGrid FgridAdjust
      Left = 90
      Top = 465
      Width = 10920
      Height = 4125
      TabIndex = 11
    End
    Begin Label ADJ_LAB7
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 5625
      Top = 195
      Width = 1050
      Height = 240
      TabIndex = 17
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin Label ADJ_LAB6
      Caption = "Pend."
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 4770
      Top = 195
      Width = 870
      Height = 240
      TabIndex = 16
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB3
      Caption = "Tr.Amt."
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 2280
      Top = 195
      Width = 675
      Height = 240
      TabIndex = 15
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB4
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 2955
      Top = 195
      Width = 1290
      Height = 240
      TabIndex = 14
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin Label ADJ_LAB5
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 4245
      Top = 195
      Width = 510
      Height = 240
      TabIndex = 13
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
    Begin Label ADJ_LAB8
      ForeColor = &HFFFF&
      Left = 6720
      Top = 195
      Width = 480
      Height = 240
      TabIndex = 12
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
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
  End
  Begin Frame FRAMELEDGER
    Caption = "Credit List"
    BackColor = &HA9A765&
    ForeColor = &HC00000&
    Left = 0
    Top = 1650
    Width = 11190
    Height = 5080
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox TxtNARATION1
      BackColor = &HE0E0E0&
      ForeColor = &H0&
      Left = 30
      Top = 4380
      Width = 10335
      Height = 660
      Text = "Text1"
      TabIndex = 18
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton BTSADJUST
      Caption = "A&djust"
      Left = 10440
      Top = 1155
      Width = 705
      Height = 600
      TabIndex = 4
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSFlexGrid FGridLedger
      Left = 45
      Top = 255
      Width = 10335
      Height = 4125
      TabIndex = 3
    End
  End
  Begin DataCombo TXT_Group
    Left = 1995
    Top = 885
    Width = 4110
    Height = 360
    TabIndex = 1
  End
  Begin BtnEnh BtnExit
    Left = 9735
    Top = 840
    Width = 1365
    Height = 570
    TabIndex = 27
  End
  Begin BtnEnh BtnFill
    Left = 8370
    Top = 825
    Width = 1365
    Height = 570
    TabIndex = 28
  End
  Begin BtnEnh BtnAdd
    Left = 6930
    Top = 825
    Width = 1365
    Height = 570
    TabIndex = 29
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 26
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
  Begin Label Label
    Caption = "For A/c Group"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 480
    Top = 930
    Width = 1320
    Height = 240
    TabIndex = 25
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Upto Date"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 870
    Top = 600
    Width = 930
    Height = 240
    TabIndex = 24
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "For Account"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 690
    Top = 1305
    Width = 1140
    Height = 240
    TabIndex = 23
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "FaAdjust"

Private global_56 As Integer
Private global_68 As Double
Private global_60 As Double

Private Sub BtnAdd_UnknownEvent_9 'FE7144
  'Data Table: 4D7B24
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_DC As String
  Dim var_537C As Variant
  loc_FE6F74: On Error Goto loc_FE7119
  loc_FE6F8A: Me.FgridAdjust.Rows = 1
  loc_FE6F92: var_94 = vbNullString
  loc_FE6F9C: Set var_A8 = Me.FgridAdjust
  loc_FE6FC0: Me.FGridLedger.Rows = 1
  loc_FE6FC8: var_94 = vbNullString
  loc_FE6FD2: Set var_A8 = Me.FGridLedger
  loc_FE6FEF: Me.TXT_DATE.Enabled = True
  loc_FE7030: Me.TXT_DATE.Text = CStr(Format(Now, "Short Date"))
  loc_FE7052: Me.TXT_ACCOUNT.Enabled = True
  loc_FE705A: var_94 = True
  loc_FE7068: Me.TXT_Group.Enabled = var_94
  loc_FE707A: Me.TXT_DATE.SetFocus
  loc_FE70B6: Proc_183_43_EF88E4("SELECT GroupName,GroupCode FROM ACGROUP WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY GroupName", Me.TXT_Group, "GroupName", "GroupCode", 1)
  loc_FE70F6: var_DC = "SELECT NAME,SUBCODE FROM SUBGROUP WHERE SUBCODE IN (SELECT SUBGROUP.SubCode FROM (Ledger LEFT JOIN LedgerAdj ON (Ledger.DocId=LedgerAdj.DocId1) AND (Ledger.V_SNo=LedgerAdj.V_SNo1)) LEFT JOIN SUBGROUP ON Ledger.SubCode=SUBGROUP.SubCode Where (((Ledger.AmtCr) > 0)) AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_FE7101: Proc_183_43_EF88E4(var_DC & "' OR LOGSITE_CODE='HO') GROUP BY SUBGROUP.SubCode, SUBGROUP.Name, Ledger.DocId, Ledger.V_SNo Having MAX(Ledger.AmtCr) > IsNull(Sum(LEDGERADJ.cr), 0)) ORDER BY NAME", Me.TXT_ACCOUNT, "NAME", "SUBCODE", 1)
  loc_FE7118: Exit Sub
  loc_FE7119: ' Referenced from: FE6F74
  loc_FE711F: Call 0.Method_arg_50 (var_DC, FGridLedger.DispID_10000, var_94)
  loc_FE7134: Proc_183_57_104B0BC(var_DC, "BtnAdd_Click")
  loc_FE7140: Exit Sub
  loc_FE7141: var_537C = var_94 & FgridAdjust.DispID_10000 
End Sub

Private Sub BTNFILL_UnknownEvent_9 '13AAA74
  'Data Table: 4D7B24
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_100 As Variant
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_154 As String
  Dim unk_4D7B28 As Connection15
  Dim var_94 As Recordset15
  Dim var_178 As Variant
  Dim var_1F0 As Variant
  Dim var_F0 As Variant
  Dim var_174 As Variant
  Dim var_1DC As Variant
  Dim var_1E0 As Fields15
  Dim var_1F4 As Field20
  Dim var_90 As Double
  Dim var_204 As Variant
  Dim var_244 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_4BC As Variant
  Dim var_504 As Variant
  Dim var_5BC As Variant
  loc_13AA26C: On Error Goto loc_13AAA4C
  loc_13AA282: Me.FGridLedger.Rows = 1
  loc_13AA2AD: If (CStr(Me.TXT_ACCOUNT.Text) <> vbNullString) Then
  loc_13AA2D6:   var_D0 = "Select L.DocId,V_SNo,L.V_Type,L.V_Prefix,L.V_No,L.V_Date,AmtCr As Credit,M.NARRATION+' '+L.Narration AS NARR,ContraSub AS Party1,SG.Name as PartyName From (Ledger L Left Join SubGroup SG on SG.SubCode=L.CONTRASUB) LEFT JOIN LEDGERM M ON M.DOCID=L.DOCID Where L.SubCode='" & CStr(Me.TXT_ACCOUNT.BoundText)
  loc_13AA2EB:   Proc_183_7_EB17D4(var_F0, CVar(Me.TXT_DATE), CVar(var_D0 & "' AND L.V_Date<="))
  loc_13AA313:   var_154 = CStr(var_174 & var_F0 & " AND AMTCR>0 AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' Order By L.V_Date,L.V_Type,L.V_No")
  loc_13AA31D:   unk_4D7B28.Execute var_154, -1, var_178
  loc_13AA328:   Set var_94 = var_178
  loc_13AA350:   ' Referenced from: 13AA8F8
  loc_13AA35F:   If Not(var_94.EOF) Then
  loc_13AA3C9:     var_1F0 = 0
  loc_13AA3F7:     var_110 = "Select IsNull(Sum(CR),0) From LEDGERAdj Where DocId1='" & var_94.Fields.Item("DocID").Value & "' And V_SNo1=" & var_94.Fields.Item("V_SNo").Value 
  loc_13AA422:     unk_4D7B28.Execute CStr(var_110 & " And SubCode='" & CVar(CStr(Me.TXT_ACCOUNT.BoundText)) & "'"), var_1D8, -1
  loc_13AA42A:     var_1DC = var_1DC.Fields
  loc_13AA432:     var_1F0 = var_1E0.Item(var_1E0)
  loc_13AA43A:     var_1F4 = var_1F4.Value
  loc_13AA443:     var_90 = CSng(var_204)
  loc_13AA4B5:     If (CVar(var_90) < var_94.Fields.Item("Credit").Value) Then
  loc_13AA52C:       var_E0 = vbNullString & Chr(9) 
  loc_13AA53F:       var_100 = "Short Date"
  loc_13AA548:       var_F0 = CVar(var_94.Fields.Item("V_DATE")) 'Address
  loc_13AA5EF:       var_244 = 1 & Format(var_F0, var_100) & Chr(9) & var_94.Fields.Item("V_Type").Value & Chr(9) & var_94.Fields.Item("V_NO").Value & Chr(9) 
  loc_13AA6A1:       var_2F4 = var_244 & var_94.Fields.Item("v_Prefix").Value & Chr(9) & var_94.Fields.Item("V_SNo").Value & Chr(9) & var_94.Fields.Item("PartyName").Value 
  loc_13AA6B5:       var_314 = var_2F4 & Chr(9) 
  loc_13AA764:       var_42C = 1 & Format(CVar(var_94.Fields.Item("Credit")), "0.00") & Chr(9) & var_94.Fields.Item("NARR").Value & Chr(9) & var_94.Fields.Item("Party1").Value 
  loc_13AA778:       var_44C = var_42C & Chr(9) 
  loc_13AA7B8:       var_4BC = 1 & Format(var_90, "0.00") & Chr(9) 
  loc_13AA7DB:       var_504 = (var_94.Fields.Item("Credit").Value - CVar(var_90))
  loc_13AA838:       var_5BC = CVar(CStr(1 & Format(var_504, "0.00") & Chr(9) & var_94.Fields.Item("DocID").Value)) 'String
  loc_13AA840:       Set var_5D0 = Me.FGridLedger
  loc_13AA8F0:     End If
  loc_13AA8F3:     var_94.MoveNext
  loc_13AA8F8:     GoTo loc_13AA350
  loc_13AA8FB:   End If
  loc_13AA91A:   If (CLng(Me.FGridLedger.Rows) = 1) Then
  loc_13AA91D:     var_A4 = vbNullString
  loc_13AA927:     Set var_B8 = Me.FGridLedger
  loc_13AA93B:   Else
  loc_13AA94E:     var_A4 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_13AA953:     var_140 = 8
  loc_13AA97E:     Me.TxtNARATION1.Text = CStr(Me.FGridLedger.TextMatrix))
  loc_13AA996:   End If
  loc_13AA9BD:   var_CC = CStr(Me.FGridLedger.TextMatrix))
  loc_13AA9CE:   If (var_CC = vbNullString) Then
  loc_13AA9D7:     Call 0.Method_arg_50 (var_CC, 1, 1, 1, 1, FGridLedger.DispID_10000, 1, FGridLedger.DispID_10000)
  loc_13AA9F8:     MsgBox("* No Entries to Adjust *", &H40, CVar(var_CC), var_F0, var_100)
  loc_13AAA08:     Exit Sub
  loc_13AAA09:   End If
  loc_13AAA15:   Me.BTSADJUST.Enabled = True
  loc_13AAA26:   Set var_B8 = Me.BtnAdd
  loc_13AAA2C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_13AAA3D:   Set var_B8 = Me.BtnFill
  loc_13AAA43:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_13AAA4B: End If
  loc_13AAA4B: Exit Sub
  loc_13AAA4C: ' Referenced from: 13AA26C
  loc_13AAA52: Call 0.Method_arg_50 (var_CC, var_5BC, 1, var_4BC)
  loc_13AAA67: Proc_183_57_104B0BC(var_CC, "BTNFILL_Click", 1)
  loc_13AAA73: Exit Sub
End Sub

Private Sub TXT_Group_UnknownEvent_8 'F1DFF4
  'Data Table: 4D7B24
  Dim var_A0 As String
  Dim var_A4 As String
  loc_F1DF0C: On Error Goto loc_F1DFC9
  loc_F1DF12: var_88 = vbNullString
  loc_F1DF38: If (CStr(Me.TXT_Group.BoundText) <> vbNullString) Then
  loc_F1DF75:   var_B4 = "SUBCODE"
  loc_F1DF7E:   var_B0 = "NAME"
  loc_F1DF94:   var_A0 = "SELECT NAME,SUBCODE FROM SUBGROUP WHERE SUBCODE IN (SELECT SUBGROUP.SubCode FROM (Ledger LEFT JOIN LedgerAdj ON (Ledger.DocId=LedgerAdj.DocId1) AND (Ledger.V_SNo=LedgerAdj.V_SNo1)) LEFT JOIN SUBGROUP ON Ledger.SubCode=SUBGROUP.SubCode Where (((Ledger.AmtCr) > 0)) AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_F1DF9B:   var_A4 = var_A0 & "' OR LOGSITE_CODE='HO') GROUP BY SUBGROUP.SubCode, SUBGROUP.Name, Ledger.DocId, Ledger.V_SNo Having MAX(Ledger.AmtCr) > IsNull(Sum(LEDGERADJ.cr), 0)) "
  loc_F1DFAD:   Proc_183_43_EF88E4(var_A4 & " And GROUPCODE='" & CStr(Me.TXT_Group.BoundText) & "'" & " ORDER BY NAME", Me.TXT_ACCOUNT)
  loc_F1DFC8: End If
  loc_F1DFC8: Exit Sub
  loc_F1DFC9: ' Referenced from: F1DF0C
  loc_F1DFCF: Call 0.Method_arg_50 (var_A0, var_B0)
  loc_F1DFE4: Proc_183_57_104B0BC(var_A0, "TXT_Group_Validate")
  loc_F1DFF0: Exit Sub
End Sub

Private Sub TXT_Group_UnknownEvent_11 'E1CF70
  'Data Table: 4D7B24
  loc_E1CF64: Me.TXT_ACCOUNT.BoundText = vbNullString
  loc_E1CF6C: Exit Sub
End Sub

Private Sub TXT_ACCOUNT_UnknownEvent_9 'E199E0
  'Data Table: 4D7B24
  loc_E199D0: Set var_A8 = Me.BtnFill
  loc_E199D6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_E199DE: Exit Sub
End Sub

Private Sub ADJ_OK_Click() '131C0D0
  'Data Table: 4D7B24
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_4D7B28 As Connection15
  Dim var_D4 As Long
  Dim var_E8 As String
  Dim var_124 As Variant
  Dim var_144 As Long
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As MSFlexGrid
  Dim var_1CC As Variant
  Dim var_1E8 As Variant
  Dim var_21C As MSFlexGrid
  Dim var_3E0 As Double
  Dim var_3E8 As Double
  Dim var_2B4 As Variant
  Dim var_100 As String
  Dim var_23C As String
  Dim var_348 As Variant
  Dim var_2E8 As Variant
  loc_131B9F8: On Error Goto loc_131C09A
  loc_131B9FF: var_88 = CByte(0) 'Byte
  loc_131BA0F: Me.BTSADJUST.Enabled = False
  loc_131BA1F: Set var_8C = Me.BtnAdd
  loc_131BA25: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_131BA35: Set var_8C = Me.BtnExit
  loc_131BA3B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_131BA4B: Set var_8C = Me.BtnFill
  loc_131BA51: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_131BA65: Me.TXT_DATE.Enabled = False
  loc_131BA7B: Me.TXT_Group.Enabled = True
  loc_131BA92: Me.TXT_ACCOUNT.Enabled = False
  loc_131BAA6: Me.FRAMELEDGER.Visible = True
  loc_131BABE: Me.FRAMELEDGER.ZOrder 0
  loc_131BAD2: Me.BTSADJUST.Enabled = True
  loc_131BAE6: Me.TXTNARRATION.Visible = False
  loc_131BAFA: Me.TXTADJ_AMT.Visible = False
  loc_131BB0E: Me.FRAMEADJUST.Visible = False
  loc_131BB1F: unk_4D7B28.BeginTrans var_B0
  loc_131BB28: var_88 = CByte(1) 'Byte
  loc_131BB51: For var_C4 = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_C4 'Integer
  loc_131BB5B:   var_9C = CVar(CLng(var_86)) 'Long
  loc_131BB60:   var_D4 = 9
  loc_131BB94:   If (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) > CDbl(0)) Then
  loc_131BBAA:     var_9C = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131BBAF:     var_D4 = &HC
  loc_131BBE1:     var_124 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131BBE6:     var_144 = 5
  loc_131BC13:     var_188 = CVar(CLng(var_86)) 'Long
  loc_131BC18:     var_1A8 = &HC
  loc_131BC3B:     var_1E8 = CVar(CLng(var_86)) 'Long
  loc_131BC66:     var_3E0 = Val(CStr(Me.FgridAdjust.TextMatrix)))
  loc_131BC98:     var_3E8 = Val(CStr(Me.FgridAdjust.TextMatrix)))
  loc_131BCA5:     var_2B4 = Me.TXT_ACCOUNT.BoundText
  loc_131BCB9:     Proc_183_7_EB17D4(var_2E8, MemVar_1F950EC, var_2B4, var_3E8, 9, CVar(CLng(var_86)), var_3E0, 4)
  loc_131BCD6:     var_100 = "Insert Into LEDGERAdj (DocId1,V_SNo1,DocId2,V_SNo2,CR,SubCode,U_Name,U_EntDt,U_AE,site_code,logsite_code) Values ('" & CStr(Me.FGridLedger.TextMatrix))
  loc_131BD0E:     var_23C = var_100 & "'," & CStr(Val(CStr(Me.FGridLedger.TextMatrix)))) & ",'" & CStr(Me.FgridAdjust.TextMatrix)) & "'," & CStr(var_3E0)
  loc_131BD61:     var_348 = CVar(var_23C & "," & CStr(var_3E8) & ",'" & CStr(var_2B4) & "','" & MemVar_1F950C8 & "',") & var_2E8 & ",'A','" & CVar(MemVar_1F95070) 
  loc_131BD8B:     unk_4D7B28.Execute CStr(var_348 & "','" & CVar(MemVar_1F95078) & "')"), var_3CC, -1
  loc_131BE0E:     var_9C = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131BE13:     var_D4 = &HA
  loc_131BE40:     var_124 = CVar(CLng(var_86)) 'Long
  loc_131BE45:     var_144 = 9
  loc_131BE81:     var_1A8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131BE86:     var_1E8 = &HA
  loc_131BEAB:     var_168 = CVar((Val(CStr(Me.FGridLedger.TextMatrix))) + Val(CStr(Me.FgridAdjust.TextMatrix))))) 'Double
  loc_131BEBB:     var_2B4 = CVar(CStr(Format(Me.FGridLedger.TextMatrix), "0.00"))) 'String
  loc_131BEC3:     Set var_1BC = Me.FGridLedger
  loc_131BEC9:     LateIdCallSt
  loc_131BF0B:     var_9C = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131BF10:     var_D4 = 7
  loc_131BF4C:     var_124 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131BF51:     var_144 = &HA
  loc_131BF8D:     var_1A8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131BF92:     var_1E8 = &HB
  loc_131BFB7:     var_1CC = CVar((Val(CStr(Me.FGridLedger.TextMatrix))) - Val(CStr(Me.FGridLedger.TextMatrix))))) 'Double
  loc_131BFC7:     var_2E8 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_131BFCF:     Set var_21C = Me.FGridLedger
  loc_131BFD5:     LateIdCallSt
  loc_131C008:   End If
  loc_131C00B: Next var_C4 'Integer
  loc_131C023: Me.FgridAdjust.Row = 0
  loc_131C03E: var_9C = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_131C043: var_D4 = &HA
  loc_131C061: var_E8 = CStr(Me.FgridAdjust.TextMatrix))
  loc_131C06E: Me.TXTNARRATION.Text = var_E8
  loc_131C08C: unk_4D7B28.CommitTrans
  loc_131C095: var_88 = CByte(0) 'Byte
  loc_131C099: Exit Sub
  loc_131C09A: ' Referenced from: 131B9F8
  loc_131C0A0: unk_4D7B28.RollbackTrans
  loc_131C0AB: Call 0.Method_arg_50 (var_E8, var_D4)
  loc_131C0C0: Proc_183_57_104B0BC(var_E8, "ADJ_OK_Click")
  loc_131C0CC: Exit Sub
End Sub

Private Sub ADJ_CANCLE_Click() 'F2C0DC
  'Data Table: 4D7B24
  Dim var_88 As Variant
  loc_F2BFD0: Me.BTSADJUST.Enabled = False
  loc_F2BFE0: Set var_88 = Me.BtnAdd
  loc_F2BFE6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F2BFF6: Set var_88 = Me.BtnExit
  loc_F2BFFC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F2C00C: Set var_88 = Me.BtnFill
  loc_F2C012: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_F2C026: Me.TXT_DATE.Enabled = False
  loc_F2C03D: Me.TXT_Group.Enabled = False
  loc_F2C054: Me.TXT_ACCOUNT.Enabled = False
  loc_F2C068: Me.FRAMELEDGER.Visible = True
  loc_F2C080: Me.FRAMELEDGER.ZOrder 0
  loc_F2C094: Me.BTSADJUST.Enabled = True
  loc_F2C0A8: Me.TXTNARRATION.Visible = False
  loc_F2C0BC: Me.TXTADJ_AMT.Visible = False
  loc_F2C0D0: Me.FRAMEADJUST.Visible = False
  loc_F2C0D8: Exit Sub
End Sub

Private Sub Form_Load() '132C5B4
  'Data Table: 4D7B24
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_D0 As Variant
  loc_132BE08: On Error Goto loc_132C58C
  loc_132BE17: Me.BTSADJUST.Enabled = False
  loc_132BE2B: Me.TXT_DATE.Enabled = False
  loc_132BE42: Me.TXT_ACCOUNT.Enabled = False
  loc_132BE59: Me.TXT_Group.Enabled = False
  loc_132BE66: global_56 = 1
  loc_132BE70: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_132BE88: Me.FgridAdjust.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_132BE9E: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_132BEB2: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_132BEC3: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_132BED4: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_132BEE5: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_132BEF6: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_132BF07: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_132BF18: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_132BF29: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_132BF3A: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_132BF4B: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_132BF65: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_132BF73: Set var_88 = MemVar_1F95044
  loc_132BF82: Call 0.Method_Form_Load8 (var_88)
  loc_132BF98: Me.Recordset20.Clone
  loc_132BFB2: Call 0.Method_arg_50 (var_88, -1)
  loc_132BFC6: Set var_88 = Me.FRAMELEDGER
  loc_132BFCC: Me.FRAMELEDGER.Left = CDbl(0)
  loc_132BFE3: Me.FRAMELEDGER.Top = CDbl(1650)
  loc_132BFFA: Me.FRAMELEDGER.Width = CDbl(11190)
  loc_132C011: Me.FRAMELEDGER.Height = CDbl(5080)
  loc_132C038: Me.FRAMEADJUST.Left = Me.FRAMELEDGER.Left
  loc_132C063: Me.FRAMEADJUST.Top = Me.FRAMELEDGER.Top
  loc_132C08E: Me.FRAMEADJUST.Width = Me.FRAMELEDGER.Width
  loc_132C0B9: Me.FRAMEADJUST.Height = Me.FRAMELEDGER.Height
  loc_132C0E7: Me.FgridAdjust.Left = CVar(CDbl(Me.FGridLedger.Left))
  loc_132C10E: var_98 = CVar((CDbl(Me.FGridLedger.Top) + CDbl(200))) 'Single
  loc_132C11D: Me.FgridAdjust.Top = CVar(CDbl(Me.FGridLedger.Left))
  loc_132C14E: Me.FgridAdjust.Width = CVar(CDbl(Me.FGridLedger.Width))
  loc_132C175: var_98 = CVar((CDbl(Me.FGridLedger.Height) - CDbl(200))) 'Single
  loc_132C184: Me.FgridAdjust.Height = CVar(CDbl(Me.FGridLedger.Width))
  loc_132C1B2: Me.TXTNARRATION.Top = Me.TxtNARATION1.Top
  loc_132C1DD: Me.TXTNARRATION.Left = Me.TxtNARATION1.Left
  loc_132C208: Me.TXTNARRATION.Width = Me.TxtNARATION1.Width
  loc_132C233: Me.TXTNARRATION.Height = Me.TxtNARATION1.Height
  loc_132C24E: Me.BTS_AUTO_ADJ.Left = CDbl(10450)
  loc_132C265: Me.Command2.Left = CDbl(10450)
  loc_132C27C: Me.ADJ_OK.Left = CDbl(10450)
  loc_132C293: Me.ADJ_CANCLE.Left = CDbl(10450)
  loc_132C29B: var_98 = 1
  loc_132C2AA: var_D0 = CVar(CInt(1)) 'Integer
  loc_132C2B2: Set var_88 = Me.FGridLedger
  loc_132C2B8: LateIdCallSt
  loc_132C2C3: var_98 = 3
  loc_132C2D2: var_D0 = CVar(CInt(1)) 'Integer
  loc_132C2DA: Set var_88 = Me.FGridLedger
  loc_132C2E0: LateIdCallSt
  loc_132C2EB: var_98 = 7
  loc_132C2FA: var_D0 = CVar(CInt(7)) 'Integer
  loc_132C302: Set var_88 = Me.FGridLedger
  loc_132C308: LateIdCallSt
  loc_132C313: var_98 = &HA
  loc_132C322: var_D0 = CVar(CInt(7)) 'Integer
  loc_132C32A: Set var_88 = Me.FGridLedger
  loc_132C330: LateIdCallSt
  loc_132C33B: var_98 = &HB
  loc_132C34A: var_D0 = CVar(CInt(7)) 'Integer
  loc_132C352: Set var_88 = Me.FGridLedger
  loc_132C358: LateIdCallSt
  loc_132C363: var_98 = 8
  loc_132C36C: var_D0 = 0
  loc_132C379: Set var_88 = Me.FGridLedger
  loc_132C37F: LateIdCallSt
  loc_132C38A: var_98 = 9
  loc_132C393: var_D0 = 0
  loc_132C3A0: Set var_88 = Me.FGridLedger
  loc_132C3A6: LateIdCallSt
  loc_132C3B1: var_98 = 4
  loc_132C3BA: var_D0 = 0
  loc_132C3C7: Set var_88 = Me.FGridLedger
  loc_132C3CD: LateIdCallSt
  loc_132C3D8: var_98 = &HC
  loc_132C3E1: var_D0 = 0
  loc_132C3EE: Set var_88 = Me.FGridLedger
  loc_132C3F4: LateIdCallSt
  loc_132C3FF: var_98 = 2
  loc_132C40E: var_D0 = CVar(CInt(1)) 'Integer
  loc_132C416: Set var_88 = Me.FgridAdjust
  loc_132C41C: LateIdCallSt
  loc_132C427: var_98 = 5
  loc_132C436: var_D0 = CVar(CInt(1)) 'Integer
  loc_132C43E: Set var_88 = Me.FgridAdjust
  loc_132C444: LateIdCallSt
  loc_132C44F: var_98 = 7
  loc_132C45E: var_D0 = CVar(CInt(7)) 'Integer
  loc_132C466: Set var_88 = Me.FgridAdjust
  loc_132C46C: LateIdCallSt
  loc_132C477: var_98 = 8
  loc_132C486: var_D0 = CVar(CInt(7)) 'Integer
  loc_132C48E: Set var_88 = Me.FgridAdjust
  loc_132C494: LateIdCallSt
  loc_132C49F: var_98 = 9
  loc_132C4AE: var_D0 = CVar(CInt(7)) 'Integer
  loc_132C4B6: Set var_88 = Me.FgridAdjust
  loc_132C4BC: LateIdCallSt
  loc_132C4C7: var_98 = 3
  loc_132C4D0: var_D0 = 0
  loc_132C4DD: Set var_88 = Me.FgridAdjust
  loc_132C4E3: LateIdCallSt
  loc_132C4EE: var_98 = &HA
  loc_132C4F7: var_D0 = 0
  loc_132C504: Set var_88 = Me.FgridAdjust
  loc_132C50A: LateIdCallSt
  loc_132C515: var_98 = &HB
  loc_132C51E: var_D0 = 0
  loc_132C52B: Set var_88 = Me.FgridAdjust
  loc_132C531: LateIdCallSt
  loc_132C53C: var_98 = &HC
  loc_132C545: var_D0 = 0
  loc_132C552: Set var_88 = Me.FgridAdjust
  loc_132C558: LateIdCallSt
  loc_132C56F: Me.TXTADJ_AMT.Visible = False
  loc_132C57D: Set var_88 = Me.FRAMEADJUST
  loc_132C583: var_88.Visible = False
  loc_132C58B: Exit Sub
  loc_132C58C: ' Referenced from: 132BE08
  loc_132C592: Call 0.Method_arg_50 (var_E4, var_88, var_D0, var_98, var_88, var_D0, var_98)
  loc_132C5A7: Proc_183_57_104B0BC(var_E4, "Form_Load", var_88, var_D0, var_98)
  loc_132C5B3: Exit Sub
End Sub

Private Sub Form_Resize() 'E6E1D4
  'Data Table: 4D7B24
  loc_E6E17E: Call 0.Method_arg_50 (var_88)
  loc_E6E190: Me.LblFormCaption.Caption = var_88
  loc_E6E1A9: Me.LblFormCaption.Left = CDbl(0)
  loc_E6E1B7: Call 0.Method_arg_100 (var_90)
  loc_E6E1C9: Me.LblFormCaption.Width = var_90
  loc_E6E1D1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E12894
  'Data Table: 4D7B24
  loc_E1288B: Set global_84 = Nothing
  loc_E12892: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E221D4
  'Data Table: 4D7B24
  loc_E221BA: If (KeyCode = &HD) Then
  loc_E221CB:   Proc_303_0_FBACC8("	")
  loc_E221D3: End If
  loc_E221D3: Exit Sub
End Sub

Private Sub FGridLedger_UnknownEvent_12 'E83884
  'Data Table: 4D7B24
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_E8383B: var_A8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_E83840: var_C8 = 8
  loc_E8386B: Me.TxtNARATION1.Text = CStr(Me.FGridLedger.TextMatrix))
  loc_E83883: Exit Sub
End Sub

Private Sub TXTADJ_AMT_GotFocus() 'E8D298
  'Data Table: 4D7B24
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F0 As String
  loc_E8D23F: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_E8D244: var_C8 = 9
  loc_E8D289: var_F0 = "{Home}+{End}"
  loc_E8D28F: Proc_303_0_FBACC8(CStr(Me.FgridAdjust.TextMatrix)), 0, Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_E8D297: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyDown(KeyCode As Integer, Shift As Integer) 'E3F52C
  'Data Table: 4D7B24
  loc_E3F51D: Proc_183_21_FA21CC(Me.TXTADJ_AMT, KeyCode)
  loc_E3F529: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyPress(KeyAscii As Integer) 'E407EC
  'Data Table: 4D7B24
  loc_E407DD: Proc_183_22_129BBAC(Me.TXTADJ_AMT, KeyAscii)
  loc_E407E9: Exit Sub
End Sub

Private Sub TXTADJ_AMT_Validate(Cancel As Boolean) '117D210
  'Data Table: 4D7B24
  Dim var_98 As String
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_160 As Double
  Dim var_168 As Double
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_324 As Double
  Dim var_24C As Variant
  Dim var_22C As Boolean
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim Cancel As Integer
  loc_117CE80: On Error Goto loc_117D1E7
  loc_117CE8B: Proc_183_6_EA3B94(CVar(Me.TXTADJ_AMT))
  loc_117CE9F: Me.TXTADJ_AMT.Text = CStr()
  loc_117CEC0: var_B0 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_117CEC5: var_D0 = &HB
  loc_117CEEB: var_160 = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_117CEFB: var_158 = Me.TXTADJ_AMT.Text
  loc_117CF18: var_98 = Me.TXTADJ_AMT.Text
  loc_117CF40: var_108 = CVar(CLng(global_56)) 'Long
  loc_117CF93: If (8 Or (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(var_158)))) Then
  loc_117CF9D:   var_B0 = CVar(CLng(global_56)) 'Long
  loc_117CFA2:   var_D0 = 8
  loc_117CFC0:   var_98 = CStr(Me.FgridAdjust.TextMatrix))
  loc_117CFC8:   var_160 = Val(var_98)
  loc_117CFDE:   var_108 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_117CFE3:   var_128 = &HB
  loc_117D009:   var_168 = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_117D04A:   var_324 = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_117D08B:   var_24C = CVar(((var_324 - global_60) + global_76)) 'Double
  loc_117D0A6:   var_22C = (CDbl(var_160) > CDbl(((var_168 - global_60) + global_76)))
  loc_117D0CE:   Call 0.Method_arg_50 (var_158, 8, CVar(CLng(global_56)), var_324, &HB, CVar(CLng(Me.FGridLedger.Row)))
  loc_117D0EC:   var_2AC = (" Amount is Greater Then Pendng Adj.Amt. You Can Adjust Only " + LTrim(RTrim(IIf(var_22C, var_24C, CVar(CStr(Me.FgridAdjust.TextMatrix)))))))
  loc_117D0F5:   var_2CC = (var_2AC + " Here")
  loc_117D0F9:   MsgBox(var_2CC, &H10, CVar(var_158), var_2FC, var_31C)
  loc_117D151:   Me.FgridAdjust.Row = CVar(CLng(global_56))
  loc_117D15B:   Cancel = &HFF
  loc_117D161: Else
  loc_117D1B3:   LateIdCallSt
  loc_117D1CD:   Call Proc_192_27_F6F08C(Me.FgridAdjust, CVar(CStr(Format(CVar(Me.TXTADJ_AMT), "0.00"))), 1, 1, 9, CVar(CLng(global_56)), Cancel)
  loc_117D1DE:   Me.TXTADJ_AMT.Visible = False
  loc_117D1E6: End If
  loc_117D1E6: Exit Sub
  loc_117D1E7: ' Referenced from: 117CE80
  loc_117D1ED: Call 0.Method_arg_50 (var_98, var_168, var_128, var_108)
  loc_117D202: Proc_183_57_104B0BC(var_98, "TXTADJ_AMT_Validate", var_160)
  loc_117D20E: Exit Sub
End Sub

Private Sub BTS_AUTO_ADJ_Click() '1141428
  'Data Table: 4D7B24
  Dim var_A4 As MSFlexGrid
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_FC As String
  Dim var_10C As Variant
  Dim var_12C As Long
  Dim var_144 As MSFlexGrid
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_184 As Long
  Dim var_1AC As String
  Dim var_8C As Long
  loc_11410AC: On Error Goto loc_11413FD
  loc_11410EE: For var_B8 = CInt(CLng(Me.FgridAdjust.Row)) To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_B8 'Integer
  loc_1141107:   var_C8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_114110C:   var_E8 = &HB
  loc_114114B:   If (CDbl(Val(CStr(Me.FGridLedger.TextMatrix)))) > global_60) Then
  loc_1141152:     var_10C = CVar(CLng(var_86)) 'Long
  loc_1141157:     var_12C = 8
  loc_1141193:     var_164 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1141198:     var_184 = &HB
  loc_11411BB:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_11411C0:     var_E8 = 9
  loc_114121C:     If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (global_60 <= CDbl(CStr(Me.FGridLedger.TextMatrix))))) Then
  loc_1141223:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_1141228:       var_E8 = 9
  loc_114124F:       var_8C = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_114125F:       var_10C = CVar(CLng(var_86)) 'Long
  loc_1141264:       var_12C = 8
  loc_11412A0:       var_C8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_11412A5:       var_E8 = &HB
  loc_11412F6:       If (CDbl((Val(CStr(Me.FGridLedger.TextMatrix))) - (global_60 - CDbl(var_8C)))) >= CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) Then
  loc_11412FD:         var_10C = CVar(CLng(var_86)) 'Long
  loc_1141302:         var_12C = 9
  loc_114130F:         var_C8 = CVar(CLng(var_86)) 'Long
  loc_1141314:         var_E8 = 8
  loc_114133C:         var_B4 = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_1141344:         Set var_A4 = Me.FgridAdjust
  loc_114134A:         LateIdCallSt
  loc_1141366:       Else
  loc_114136A:         var_10C = CVar(CLng(var_86)) 'Long
  loc_114136F:         var_12C = 9
  loc_114138B:         var_C8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1141390:         var_E8 = &HB
  loc_114139D:         Set var_A4 = Me.FGridLedger
  loc_11413A3:         var_B4 = var_A4.TextMatrix)
  loc_11413AE:         var_FC = CStr(var_B4)
  loc_11413C4:         var_154 = CVar(CStr((Val(var_FC) - (global_60 - CDbl(var_8C))))) 'String
  loc_11413CC:         Set var_144 = Me.FgridAdjust
  loc_11413D2:         LateIdCallSt
  loc_11413EF:       End If
  loc_11413EF:     End If
  loc_11413EF:   End If
  loc_11413EF:   Call Proc_192_26_FEDF94(var_144, Me.FgridAdjust.TextMatrix), var_E8, var_C8, var_12C, var_10C, var_A4, var_B4)
  loc_11413F7: Next var_B8 'Integer
  loc_11413FC: Exit Sub
  loc_11413FD: ' Referenced from: 11410AC
  loc_1141403: Call 0.Method_arg_50 (var_FC)
  loc_114140B: var_1AC = "BTS_AUTO_ADJ_Click"
  loc_1141418: Proc_183_57_104B0BC(var_FC)
  loc_1141424: Exit Sub
End Sub

Private Sub Command2_Click() '112FDE8
  'Data Table: 4D7B24
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_14C As MSFlexGrid
  Dim var_15C As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Long
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_F4 As String
  Dim var_88 As Long
  loc_112FA8C: On Error Goto loc_112FDBF
  loc_112FAA2: var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_112FAA7: var_138 = 8
  loc_112FAE3: var_184 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_112FAE8: var_1A4 = &HB
  loc_112FB1A: var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_112FB1F: var_CC = 9
  loc_112FB83: If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (global_60 < CDbl(CStr(Me.FGridLedger.TextMatrix))))) Then
  loc_112FB99:   var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_112FB9E:   var_CC = 9
  loc_112FBC5:   var_88 = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_112FBEC:   var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_112FBF1:   var_138 = 8
  loc_112FC2D:   var_AC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_112FC32:   var_CC = &HB
  loc_112FC87:   If (CDbl((Val(CStr(Me.FGridLedger.TextMatrix))) - (global_60 - CDbl(var_88)))) >= CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) Then
  loc_112FC9D:     var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_112FCA2:     var_138 = 9
  loc_112FCBE:     var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_112FCC3:     var_CC = 8
  loc_112FCEB:     var_15C = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_112FCF3:     Set var_14C = Me.FgridAdjust
  loc_112FCF9:     LateIdCallSt
  loc_112FD1D:   Else
  loc_112FD30:     var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_112FD35:     var_138 = 9
  loc_112FD51:     var_AC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_112FD56:     var_CC = &HB
  loc_112FD74:     var_F4 = CStr(Me.FGridLedger.TextMatrix))
  loc_112FD8A:     var_15C = CVar(CStr((Val(var_F4) - (global_60 - CDbl(var_88))))) 'String
  loc_112FD92:     Set var_14C = Me.FgridAdjust
  loc_112FD98:     LateIdCallSt
  loc_112FDB9:   End If
  loc_112FDB9:   Call Proc_192_26_FEDF94(var_14C, var_15C, var_CC, var_AC, var_138, var_118, var_14C, var_15C)
  loc_112FDBE: End If
  loc_112FDBE: Exit Sub
  loc_112FDBF: ' Referenced from: 112FA8C
  loc_112FDC5: Call 0.Method_arg_50 (var_F4, var_CC, var_AC, var_138)
  loc_112FDDA: Proc_183_57_104B0BC(var_F4, "Command2_Click", var_118)
  loc_112FDE6: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E19994
  'Data Table: 4D7B24
  Dim var_5301 As Double
  loc_E19989: Me.Global.Unload Me
  loc_E19991: Exit Sub
  loc_E19992: var_5301 = 
End Sub

Private Sub TXT_DATE_GotFocus() 'E19948
  'Data Table: 4D7B24
  loc_E19938: var_88 = "{Home}+{End}"
  loc_E1993E: Proc_303_0_FBACC8(var_88)
  loc_E19946: Exit Sub
End Sub

Private Sub TXT_DATE_Validate(Cancel As Boolean) 'E56074
  'Data Table: 4D7B24
  loc_E56052: Call 0.Method_arg_184 (Me.TXT_DATE)
  loc_E5605E: Set var_90 = Me.TXT_DATE
  loc_E56064: Me.TXT_DATE.Text = var_8C
  loc_E56073: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_9 'E0089C
  'Data Table: 4D7B24
  loc_E00894: Call Proc_192_26_FEDF94()
  loc_E00899: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_D 'E00784
  'Data Table: 4D7B24
  loc_E0077C: Call Proc_192_26_FEDF94()
  loc_E00781: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_12 'E825F0
  'Data Table: 4D7B24
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_E825A7: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_E825AC: var_C8 = &HA
  loc_E825D7: Me.TXTNARRATION.Text = CStr(Me.FgridAdjust.TextMatrix))
  loc_E825EF: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_15 'E006A4
  'Data Table: 4D7B24
  loc_E0069C: Call Proc_192_26_FEDF94()
  loc_E006A1: Exit Sub
  loc_E006A2:  = 
End Sub

Private Sub BTSADJUST_Click() '14882D4
  'Data Table: 4D7B24
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_15C As String
  Dim unk_4D7B28 As Connection15
  Dim Me As Recordset15
  Dim var_1CC As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As Fields15
  Dim var_1D0 As Field20
  Dim var_1B4 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_350 As Variant
  Dim var_3D8 As Variant
  Dim var_420 As Variant
  Dim var_430 As Variant
  Dim var_440 As Variant
  Dim var_4A0 As Variant
  Dim var_5D0 As Variant
  Dim var_5E0 As Variant
  Dim var_5FC As Double
  loc_14877A8: On Error Goto loc_14882AC
  loc_14877BE: var_EC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_14877E1: var_134 = CStr(Me.FGridLedger.TextMatrix))
  loc_14877FF: If (CDbl(Val(var_134)) <= CDbl(0)) Then
  loc_1487808:   Call 0.Method_arg_50 (var_134, &HB)
  loc_1487829:   MsgBox("* Amount Already Adjusted *", &H40, CVar(var_134), var_144, var_154)
  loc_1487839:   Exit Sub
  loc_148783A: End If
  loc_1487846: Me.FRAMELEDGER.Visible = False
  loc_148785A: Me.FRAMEADJUST.Visible = True
  loc_1487871: Me.FgridAdjust.Redraw = False
  loc_148787F: global_68 = CDbl(0)
  loc_1487888: global_60 = CDbl(0)
  loc_1487890: var_C4 = 0 'Variant
  loc_1487899: var_B4 = 0 'Variant
  loc_14878B0: var_EC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_14878B5: var_10C = &HB
  loc_14878C2: Set var_120 = Me.FGridLedger
  loc_14878C8: var_130 = var_120.TextMatrix)
  loc_14878E0: Me.ADJ_LAB4.Caption = CStr(var_130)
  loc_1487905: Me.ADJ_LAB5.Caption = "Cr."
  loc_1487920: Me.FgridAdjust.Rows = 1
  loc_148794E: var_15C = "Select DocId,V_SNo,V_Type,V_Prefix,V_No,V_Date,AmtDr As Amount,Narration,SG.Name As PartyName FROM Ledger L Left Join SubGroup SG on SG.SubCode=L.SubCode Where L.SubCode='" & CStr(Me.TXT_ACCOUNT.BoundText)
  loc_148796C: unk_4D7B28.Execute var_15C & "' AND L.LOGSITE_CODE='" & MemVar_1F95078 & "' ORDER BY V_Date,V_Type,V_No", var_130, -1
  loc_148797D: Set global_52 = var_120
  loc_148799E: ' Referenced from: 1487F51
  loc_14879B0: If Not(Me.EOF) Then
  loc_1487A20:   var_1CC = 0
  loc_1487A3D:   var_134 = CStr(Me.TXT_ACCOUNT.BoundText)
  loc_1487A4E:   var_154 = CVar("SELECT IsNull(Sum(CR),0) AS TSum From LEDGERAdj Where SubCode='" & var_134 & "' And DocId2='") & Me.Fields.Item("DocID").Value 
  loc_1487A6C:   unk_4D7B28.Execute CStr(var_154 & "' And V_SNo2=" & Me.Fields.Item("V_SNo").Value), var_1B4, -1
  loc_1487A74:   var_1B8 = var_1B8.Fields
  loc_1487A7C:   var_1CC = var_1BC.Item(var_1BC)
  loc_1487A84:   var_1D0 = var_1D0.Value
  loc_1487A90:   global_68 = CSng(var_1E0)
  loc_1487AFB:   var_130 = (Me.Fields.Item("Amount").Value - CVar(global_68))
  loc_1487B11:   If (Me.Fields.Item("DocID").Value > 0) Then
  loc_1487BBA:     var_144 = Me.Fields.Item("V_Type").Value
  loc_1487BC2:     var_154 = vbNullString & Chr(9) & var_144 
  loc_1487C91:     var_250 = var_154 & Chr(9) & Me.Fields.Item("V_NO").Value & Chr(9) & Me.Fields.Item("v_Prefix").Value & Chr(9) & Me.Fields.Item("V_SNo").Value 
  loc_1487CA5:     var_270 = var_250 & Chr(9) 
  loc_1487D29:     var_350 = 1 & Format(CVar(Me.Fields.Item("V_DATE")), "Short Date") & Chr(9) & Me.Fields.Item("PartyName").Value & Chr(9) 
  loc_1487D68:     var_3D8 = 1 & Format(CVar(Me.Fields.Item("Amount")), "0.00") & Chr(9) 
  loc_1487D8E:     var_420 = (Me.Fields.Item("Amount").Value - CVar(global_68))
  loc_1487D95:     var_430 = (var_420 + var_B4)
  loc_1487D9C:     var_440 = (var_430 + var_C4)
  loc_1487DBF:     var_4A0 = 1 & Format(var_440, "0.00") & Chr(9) 
  loc_1487E8D:     var_5D0 = 1 & Format(var_B4, "0.00") & Chr(9) & Me.Fields.Item("Narration").Value & Chr(9) & vbNullString & Chr(9) & Me.Fields.Item("DocID").Value 
  loc_1487E92:     var_5E0 = CVar(CStr(var_5D0)) 'String
  loc_1487E9A:     Set var_5F4 = Me.FgridAdjust
  loc_1487F46:   End If
  loc_1487F4C:   Me.MoveNext
  loc_1487F51:   GoTo loc_148799E
  loc_1487F54: End If
  loc_1487F73: If (CLng(Me.FgridAdjust.Rows) <= 1) Then
  loc_1487F84:   Me.FgridAdjust.Redraw = True
  loc_1487F92:   Call 0.Method_arg_50 (var_134, FgridAdjust.DispID_10000, var_5E0, 1, var_4A0, 1, var_3D8)
  loc_1487FB3:   MsgBox("   Entries Not Found   ", &H40, CVar(var_134), var_144, var_154)
  loc_1487FCF:   Me.BTSADJUST.Enabled = False
  loc_1487FDF:   Set var_CC = Me.BtnAdd
  loc_1487FE5:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1487FF5:   Set var_CC = Me.BtnExit
  loc_1487FFB:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_148800B:   Set var_CC = Me.BtnFill
  loc_1488011:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_1488025:   Me.TXT_DATE.Enabled = False
  loc_148803C:   Me.TXT_ACCOUNT.Enabled = False
  loc_1488050:   Me.FRAMELEDGER.Visible = True
  loc_1488068:   Me.FRAMELEDGER.ZOrder 0
  loc_148807C:   Me.BTSADJUST.Enabled = True
  loc_1488090:   Me.TXTNARRATION.Visible = False
  loc_14880A4:   Me.TXTADJ_AMT.Visible = False
  loc_14880B8:   Me.FRAMEADJUST.Visible = False
  loc_14880C0:   Exit Sub
  loc_14880C1: End If
  loc_14880C7: global_60 = CDbl(0)
  loc_14880D6: Me.FRAMEADJUST.Visible = True
  loc_14880EE: Me.FRAMEADJUST.ZOrder 0
  loc_1488102: Me.TXTNARRATION.Visible = True
  loc_1488116: Me.BTSADJUST.Enabled = False
  loc_148812A: Me.ADJ_CANCLE.Enabled = True
  loc_148813E: Me.ADJ_OK.Enabled = True
  loc_1488152: Me.BTS_AUTO_ADJ.Enabled = True
  loc_148816D: var_EC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1488172: var_10C = &HB
  loc_1488198: var_5FC = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_14881BA: var_144 = CVar((var_5FC - global_60)) 'Double
  loc_14881D7: Me.ADJ_LAB7.Caption = CStr(Format(var_144, "0.00"))
  loc_1488206: Me.ADJ_LAB8.Caption = "Dr"
  loc_1488221: var_EC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_1488226: var_10C = &HA
  loc_1488244: var_134 = CStr(Me.FgridAdjust.TextMatrix))
  loc_1488251: Me.TXTNARRATION.Text = var_134
  loc_1488277: Me.FgridAdjust.Redraw = True
  loc_148827F: var_EC = False
  loc_1488288: Set var_CC = Me.BtnExit
  loc_148828E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_EC)
  loc_148829A: Set var_CC = Me.FgridAdjust
  loc_14882AB: Exit Sub
  loc_14882AC: ' Referenced from: 14877A8
  loc_14882B2: Call 0.Method_arg_50 (var_134, FgridAdjust.DispID_8001, var_10C, var_EC, 1, 1, var_5FC, var_10C)
  loc_14882C7: Proc_183_57_104B0BC(var_134, "BTSADJUST_Click", var_EC, global_60, 1)
  loc_14882D3: Exit Sub
End Sub

Public Sub Proc_192_26_FEDF94
  'Data Table: 4D7B24
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Long
  Dim var_F4 As String
  loc_FEDDB8: On Error Goto loc_FEDF6C
  loc_FEDDFA: If (CLng(Me.FgridAdjust.Col) = 9) Then
  loc_FEDE09:   Me.TXTADJ_AMT.Visible = True
  loc_FEDE21:   Me.TXTADJ_AMT.ZOrder 0
  loc_FEDE29:   var_A8 = 9
  loc_FEDE54:   Me.TXTADJ_AMT.Width = CDbl(CLng(Me.FgridAdjust.ColWidth)))
  loc_FEDE9B:   Me.TXTADJ_AMT.Top = (CDbl(Me.FgridAdjust.Top) + CDbl(CLng(Me.FgridAdjust.CellTop)))
  loc_FEDEBA:   var_CC = Me.FgridAdjust.CellLeft
  loc_FEDEE8:   Me.TXTADJ_AMT.Left = (CDbl(Me.FgridAdjust.Left) + CDbl(CLng(var_CC)))
  loc_FEDF04:   var_A8 = CVar(CLng(CInt(CLng(Me.FgridAdjust.Row)))) 'Long
  loc_FEDF09:   var_E0 = 9
  loc_FEDF27:   var_F4 = CStr(Me.FgridAdjust.TextMatrix))
  loc_FEDF3E:   Me.TXTADJ_AMT.Text = CStr(Val(var_F4))
  loc_FEDF5E:   Me.TXTADJ_AMT.SetFocus
  loc_FEDF66: End If
  loc_FEDF66: Call Proc_192_27_F6F08C(var_E0, var_A8, var_CC)
  loc_FEDF6B: Exit Sub
  loc_FEDF6C: ' Referenced from: FEDDB8
  loc_FEDF72: Call 0.Method_arg_50 (var_F4, var_CC)
  loc_FEDF87: Proc_183_57_104B0BC(var_F4, "UPD_ADJ")
  loc_FEDF93: Exit Sub
End Sub

Public Sub Proc_192_27_F6F08C
  'Data Table: 4D7B24
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_120 As Variant
  loc_F6EF6A: global_60 = CDbl(0)
  loc_F6EF92: For var_A0 = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_A0 'Integer
  loc_F6EF9C:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_F6EFA1:   var_D0 = 9
  loc_F6EFD7:   global_60 = (global_60 + Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_F6EFE6: Next var_A0 'Integer
  loc_F6EFFE: var_B0 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_F6F003: var_D0 = &HB
  loc_F6F04B: var_120 = CVar((Val(CStr(Me.FGridLedger.TextMatrix))) - global_60)) 'Double
  loc_F6F068: Me.ADJ_LAB7.Caption = CStr(Format(var_120, "0.00"))
  loc_F6F08A: Exit Sub
End Sub
