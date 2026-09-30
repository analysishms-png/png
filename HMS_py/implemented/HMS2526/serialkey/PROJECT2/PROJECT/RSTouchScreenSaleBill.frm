VERSION 5.00
Begin VB.Form RSTouchScreenSaleBill
  Caption = "Sale Bill Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 12795
  ClientHeight = 9225
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
  WhatsThisHelp = -1  'True
  Begin Frame FrDiscType
    BackColor = &HFFC0C0&
    Left = 14340
    Top = 2295
    Width = 1185
    Height = 2355
    Visible = 0   'False
    TabIndex = 90
    BorderStyle = 0 'None
    Begin BtnEnh CmdDiscType
      Index = 0
      Left = 15
      Top = 15
      Width = 1155
      Height = 560
      TabIndex = 91
    End
    Begin BtnEnh CmdDiscType
      Index = 1
      Left = 15
      Top = 585
      Width = 1155
      Height = 575
      TabIndex = 92
    End
    Begin BtnEnh CmdDiscType
      Index = 2
      Left = 15
      Top = 1170
      Width = 1155
      Height = 570
      TabIndex = 93
    End
    Begin BtnEnh CmdDiscType
      Index = 3
      Left = 15
      Top = 1755
      Width = 1155
      Height = 570
      Visible = 0   'False
      TabIndex = 108
    End
  End
  Begin Frame FrameQty
    BackColor = &H808080&
    ForeColor = &H8000000A&
    Left = 420
    Top = 7950
    Width = 7755
    Height = 1590
    Visible = 0   'False
    TabIndex = 127
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TxtQtyFormat
      Left = 45
      Top = 810
      Width = 495
      Height = 360
      Visible = 0   'False
      TabIndex = 129
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtQty
      ForeColor = &HFF0000&
      Left = 15
      Top = 1200
      Width = 2190
      Height = 390
      TabIndex = 128
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin BtnEnh CmdQty
      Index = 1
      Left = 2220
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 130
    End
    Begin BtnEnh CmdQty
      Index = 0
      Left = 4605
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 131
    End
    Begin BtnEnh CmdQty
      Index = 2
      Left = 3015
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 132
    End
    Begin BtnEnh CmdQty
      Index = 3
      Left = 3810
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 133
    End
    Begin BtnEnh CmdQty
      Index = 4
      Left = 4605
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 134
    End
    Begin BtnEnh CmdQty
      Index = 5
      Left = 5385
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 135
    End
    Begin BtnEnh CmdQty
      Index = 6
      Left = 6165
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 136
    End
    Begin BtnEnh CmdQty
      Index = 7
      Left = 2220
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 137
    End
    Begin BtnEnh CmdQty
      Index = 8
      Left = 3015
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 138
    End
    Begin BtnEnh CmdQty
      Index = 9
      Left = 3810
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 139
    End
    Begin BtnEnh CmdQty
      Index = 10
      Left = 5385
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 140
    End
    Begin BtnEnh CmdQty
      Index = 11
      Left = 6945
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 141
    End
    Begin BtnEnh CmdQty
      Index = 12
      Left = 6945
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 142
    End
    Begin BtnEnh CmdQty
      Index = 13
      Left = 6165
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 143
    End
    Begin Label LblIndex
      Left = 585
      Top = 825
      Width = 1500
      Height = 360
      Visible = 0   'False
      TabIndex = 145
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblVtype
      BackColor = &HFF8080&
      ForeColor = &HFFFFFF&
      Left = 15
      Top = 810
      Width = 2190
      Height = 390
      TabIndex = 144
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 9000
    Width = 12795
    Height = 225
    Visible = 0   'False
    TabIndex = 109
  End
  Begin Frame FrameGrpItem
    BackColor = &H80000003&
    Left = 8190
    Top = 4635
    Width = 6600
    Height = 4845
    TabIndex = 59
    BorderStyle = 0 'None
    Begin BtnEnh CmdCatType
      Index = 3
      Left = 0
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 151
    End
    Begin BtnEnh CmdCatType
      Index = 0
      Left = 0
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 146
    End
    Begin SSPanel SSPMain
      Left = 120
      Top = 3750
      Width = 1245
      Height = 945
      Visible = 0   'False
      TabIndex = 60
    End
    Begin BtnEnh SSPItem
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 107
    End
    Begin BtnEnh SSPGroup
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 106
    End
    Begin BtnEnh CmdCatType
      Index = 1
      Left = 1875
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 147
    End
End

Attribute VB_Name = "RSTouchScreenSaleBill"

Private global_72 As Integer
Private global_202 As Integer
Private global_60 As Long
Private global_64 As Long
Private global_80 As Single
Private global_320 As Long
Private global_84 As Single
Private global_92 As Single
Private global_168 As Long
Private global_368 As Double
Private global_144 As Integer
Private global_136 As Double
Private global_276 As Double

Private Sub CmdDebitCard_UnknownEvent_9 '101CD60
  'Data Table: 5B2118
  Dim var_88 As Variant
  Dim unk_5B2155 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_101CB60: On Error Goto loc_101CD5A
  loc_101CB69: Set var_88 = (0)
  loc_101CB6F: var_88.Visible = 
  loc_101CB7A: var_98 = "Cash Card"
  loc_101CBA1: unk_5B2155.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_C0, -1
  loc_101CBAC: Set var_8C = var_88
  loc_101CBD0: If (var_8C.RecordCount > 0) Then
  loc_101CBE2:   var_88 = var_8C.Fields
  loc_101CBFB:   var_CC = Proc_6_38_E69628(CVar(var_88.Item("Interface")))
  loc_101CC0C:   If (var_CC = "SmartCard_ACR") Then
  loc_101CC17:     If (Proc_275_20_13682EC(var_88) = 0) Then
  loc_101CC1A:       Exit Sub
  loc_101CC1B:     End If
  loc_101CC3A:     var_E0 = 0
  loc_101CC89:     If (Proc_275_12_130B494(2, 0, var_90, var_94, 0) = 0) Then
  loc_101CC8C:       Exit Sub
  loc_101CC8D:     End If
  loc_101CC90:     var_F4 = var_94
  loc_101CC9B:     If (var_F4 = "Member") Then
  loc_101CCA4:       Call Proc_258_137_F970C0(var_98, var_90, 0, 0)
  loc_101CCAC:     Else
  loc_101CCB4:       If (var_F4 = "Cash Card") Then
  loc_101CCBD:         Call Proc_258_137_F970C0(var_98, var_90, var_E0)
  loc_101CCC2:       End If
  loc_101CCC2:     End If
  loc_101CCC5:   Else
  loc_101CCCD:     If (var_CC = "NBSD_Mifare") Then
  loc_101CCE9:       MsgBox("Procedure Not Defined!", &H40, var_114, var_134, var_154)
  loc_101CCFC:     Else
  loc_101CD15:       MsgBox("Smart Card Interface Not Defined!", &H40, var_114, var_134, var_154)
  loc_101CD25:     End If
  loc_101CD25:   End If
  loc_101CD28: Else
  loc_101CD41:   MsgBox("Member Environment Settings NOT SET!", 0, var_114, var_134, var_154)
  loc_101CD51: End If
  loc_101CD56: Set var_8C = Nothing
  loc_101CD59: Exit Sub
  loc_101CD5A: ' Referenced from: 101CB60
  loc_101CD5A: Proc_6_60_E63754(0)
  loc_101CD5F: Exit Sub
End Sub

Private Sub ImageExit_Click() 'EA1618
  'Data Table: 5B2118
  Dim var_8C As String
  loc_EA15AD:  = (var_8C).Caption
  loc_EA15C0: If (var_8C = "Update &Cash Register") Then
  loc_EA15CF:   (0).Visible = 
  loc_EA15DA: Else
  loc_EA1601:   MsgBox(CVar("Do not close at this movement." & vbCrLf & "Process is running...!"), &H10, "Close...", var_DC, var_FC)
  loc_EA1614:   Exit Sub
  loc_EA1615: End If
  loc_EA1615: Exit Sub
End Sub

Private Sub cmdTransfer_Click() '1398784
  'Data Table: 5B2118
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_168 As String
  Dim var_170 As String
  Dim var_94 As Recordset15
  Dim unk_5B2155 As Connection15
  Dim var_124 As Variant
  Dim var_164 As String
  Dim var_12C As Variant
  Dim var_100 As Variant
  Dim var_9C As Recordset15
  Dim var_130 As Field20
  Dim var_1A0 As Variant
  Dim var_1E0 As Variant
  Dim var_270 As Variant
  Dim var_330 As Variant
  Dim var_260 As Variant
  loc_1397F37: If (global_76 = vbNullString) Then
  loc_1397F5B:   MsgBox("Please select Outlet!", &H40, "Outlet...", var_100, var_120)
  loc_1397F6B:   Exit Sub
  loc_1397F6C: End If
  loc_1397F77: Set var_124 = var_128(CInt(0))
  loc_1397F7D: Call 0.Method_cmdTransfer_Click0 ()
  loc_1397FA0: Set var_12C = var_130(CInt(0))
  loc_1397FA6: Call 0.Method_cmdTransfer_Click0 ((IsDate(CVar(var_128)) = 0))
  loc_1397FB5: var_100 = Trim(CVar(var_130))
  loc_1397FDF: If CBool( Or (var_100 = vbNullString)) Then
  loc_1398003:   MsgBox("Please Check Bill Date.", &H40, "Validation...", var_100, var_120)
  loc_1398013:   Call Proc_258_136_143EE54()
  loc_1398018:   Exit Sub
  loc_1398019: End If
  loc_1398024: Set var_124 = var_128(CInt(1))
  loc_139802A: Call 0.Method_cmdTransfer_Click0 ()
  loc_139805B: Set var_12C = var_130(CInt(1))
  loc_1398061: Call 0.Method_cmdTransfer_Click0 (1)
  loc_1398069: var_120 = CVar(var_130) 'Address
  loc_139809D: If CBool( Or (InStr((Trim(CVar(var_128)) = vbNullString), var_120, ".mdb", 0) <= 0)) Then
  loc_13980BB:   var_C0 = "Please verify database."
  loc_13980C1:   MsgBox(var_C0, &H40, "Validation...", var_100, var_120)
  loc_13980D1:   Call Proc_258_136_143EE54()
  loc_13980D6:   Exit Sub
  loc_13980D7: End If
  loc_13980F9: Call 0.Method_cmdTransfer_Click0 (var_164, "Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=", vbNullString)
  loc_1398101: vbNullString = var_128.Text
  loc_139810A: var_168 = -1 & var_164
  loc_1398132: Me.Connection15.Open var_168 & ";Data Source=" & MemVar_1F95098 & ";pwd=" & MemVar_1F950DC, , , 
  loc_1398166: Me.Connection15.Execute "SELECT * FROM Item", var_C0, -1
  loc_1398171: Set var_94 = var_128(CInt(1))
  loc_1398180: var_17C = var_94.RecordCount
  loc_13981C6: If ((var_17C > 0) And (MsgBox("Do You want to Update Item Master?", &H144, "Item Master...", var_100, var_120) = 6)) Then
  loc_13981D2:   unk_5B2155.BeginTrans var_17C
  loc_13981D7:   ' Referenced from: 1398722
  loc_13981E6:   If Not(var_94.EOF) Then
  loc_1398215:     var_128 = var_94.Fields.Item("I_Code")
  loc_139821D:     var_C0 = var_128.Value
  loc_1398225:     var_E0 = "SELECT Code FROM ItemMast WHERE DispCode=" & var_C0 
  loc_1398233:     unk_5B2155.Execute CStr(var_E0), var_100, -1
  loc_139823E:     Set var_9C = var_12C
  loc_139825C:     var_D0 = 0
  loc_139827B:     unk_5B2155.Execute "Select iif(IsNull(Max(val(MID(Code,2)))),1,Max(val(MID(Code,2)))+1)AS MyCode From ItemMast ", var_C0, -1
  loc_1398283:     var_124 = var_124.Fields
  loc_139828B:     var_D0 = var_128.Item(var_128)
  loc_1398293:     var_12C = var_12C.Value
  loc_13982B2:     var_F0 = CVar(MemVar_1F95078) 'String
  loc_13982DD:     var_100 = (1 + Format(CStr(var_E0), "0000000"))
  loc_13982E2:     var_98 = CStr(var_100)
  loc_1398302:     If (var_9C.RecordCount >= 0) Then
  loc_1398345:       If (MsgBox(CVar("Item Allready Exist!" & vbCrLf & "Do You Want Replace it?"), &H144, "Item Master...", var_100, var_120) = 6) Then
  loc_1398392:         unk_5B2155.Execute CStr("DELETE FROM ItemMast WHERE DispCode=" & var_94.Fields.Item("I_Code").Value), var_100, -1
  loc_13983FF:         unk_5B2155.Execute CStr("DELETE FROM ItemRate WHERE ItemCode='" & var_9C.Fields.Item("Code").Value & "'"), var_120, -1
  loc_139841B:       End If
  loc_139842F:       var_164 = "INSERT INTO ItemMast " & "(Code,Name,DispCode,Unit,Type,RestCode,ItemGroup,ItemCatCode,PurchRate,SaleRate,ReStock,Kitchen,DiscApp,RateEdit,SChrgApp,DirectYN,Site_Code,U_Name,U_EntDt,U_AE) VALUES "
  loc_1398444:       var_E0 = CVar(var_164 & "('" & var_98 & "','") 'String
  loc_1398484:       var_F0 = "I_Code"
  loc_1398490:       var_12C = var_94.Fields
  loc_13984BE:       var_1A0 = var_E0 & var_94.Fields.Item("I_Name").Value & "'," & var_12C.Item(var_F0).Value & ",'PLATE','Finish','" & CVar(global_76) 
  loc_13984D0:       var_1E0 = var_1A0 & "','GRP','CAT'" & ",0," 
  loc_1398535:       var_270 = var_1E0 & var_94.Fields.Item("I_Price1").Value & "," & var_94.Fields.Item("I_Reorder_Level").Value 
  loc_1398572:       var_330 = var_270 & ",'" & CVar(MemVar_1F95078 & "MK','Y','N','N','N','") & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "','" 
  loc_1398584:       Proc_6_7_F26918(var_350, Date, var_330, var_3A0, -1, var_3A4, var_12C)
  loc_13985A3:       unk_5B2155.Execute CStr(var_12C & var_350 & "','A')"), 1, var_F0
  loc_1398636:       Proc_6_7_F26918(var_1E0, Date, var_E0)
  loc_1398664:       var_170 = "INSERT INTO ItemRate " & "(ItemCode,RestCode,Rate,Site_Code,U_Name,U_EntDt,U_AE,AppDate) VALUES " & "('" & var_98 & "','"
  loc_139867B:       var_100 = CVar(var_170 & global_76 & "',") & var_94.Fields.Item("I_Price1").Value 
  loc_1398684:       var_120 = var_100 & ",'" 
  loc_13986CE:       var_260 = var_120 & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "','" & var_1E0 & "','A','" & CDate(MemVar_1F950EC) & "')" 
  loc_13986DC:       unk_5B2155.Execute CStr(var_260), var_270, -1
  loc_139871A:     End If
  loc_139871D:     var_94.MoveNext
  loc_1398722:     GoTo loc_13981D7
  loc_1398725:   End If
  loc_139872B:   unk_5B2155.CommitTrans
  loc_1398751:   MsgBox("Item Master Update Successfully.", &H40, "Updation...", var_100, var_120)
  loc_1398761: End If
  loc_1398766: Set var_94 = Nothing
  loc_139876E: Set var_9C = Nothing
  loc_139877C: Set global_52 = Nothing
  loc_1398783: Exit Sub
End Sub

Private Sub Command3_Click() 'F06E88
  'Data Table: 5B2118
  Dim var_A8 As TextBox
  Dim var_F0 As TextBox
  Dim var_EC As TextBox
  loc_F06DBE: Set var_A8 = ("*.mdb")
  loc_F06DD0: Set var_A8 = (TxtNetAmt.DispID_3)
  loc_F06DD6: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1E
  loc_F06DE5: Set var_A8 = ()
  loc_F06E15: If CBool(Trim(CVar(CStr(TxtNetAmt.DispID_1))) <> vbNullString) Then
  loc_F06E1C:   Set var_A8 = ()
  loc_F06E38:   Set var_EC = var_F0(CInt(1))
  loc_F06E3E:   Call 0.Method_Command3_Click0 (CStr(TxtNetAmt.DispID_1))
  loc_F06E46:   var_F0.Text = 
  loc_F06E5D: Else
  loc_F06E6B:   Set var_A8 = var_EC(CInt(1))
  loc_F06E71:   Call 0.Method_Command3_Click0 (vbNullString)
  loc_F06E79:   var_EC.Text = 
  loc_F06E85: End If
  loc_F06E85: Exit Sub
End Sub

Private Sub Form_Load() '1769648
  'Data Table: 5B2118
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_5B2155 As Connection15
  Dim var_C4 As Recordset15
  Dim var_E8 As Variant
  Dim MemVar_1F95E84 As String
  Dim var_D0 As String
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As Variant
  Dim var_90 As Recordset15
  Dim var_100 As Variant
  Dim var_8C As Recordset15
  Dim var_104 As Variant
  Dim var_16C As Variant
  Dim var_114 As Variant
  Dim var_19C As String
  Dim var_1AC As Variant
  Dim var_15C As Variant
  Dim var_94 As Recordset15
  Dim var_1C0 As Recordset15
  loc_1767890: (0).Visible = 
  loc_1767898: On Error Goto loc_176963F
  loc_17678AA: (&H64).Interval = 
  loc_17678B8: Set var_88 = (0)
  loc_17678BE: var_88.Enabled = 
  loc_17678D1: var_B8 = Trim(MemVar_1F951A8)
  loc_17678E0: global_76 = CStr(var_B8)
  loc_17678FB: If (OpenMode = 1) Then
  loc_1767907:   global_76 = global_328
  loc_176790B:   GoTo loc_176790E
  loc_176790E:   ' Referenced from: 176790B
  loc_176790E: End If
  loc_1767911: MemVar_1F95E84 = "***P"
  loc_176793E: var_D4 = "SELECT Param_Str AS UPrivilege FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128 & "' AND [Option]='"
  loc_1767947: Call 0.Method_arg_50 (var_D0, var_D4, var_B8)
  loc_1767950: var_D8 = -1 & var_D0
  loc_1767971: unk_5B2155.Execute var_D8 & "' And OutletCode='" & global_76 & "'", var_88, 
  loc_176797C: Set var_C4 = var_88
  loc_17679AE: If (var_C4.RecordCount > 0) Then
  loc_17679C3:   var_88 = var_C4.Fields
  loc_17679D3:   var_B8 = var_88.Item("UPrivilege").Value
  loc_17679DC:   MemVar_1F95E84 = CStr(var_B8)
  loc_17679EA: End If
  loc_17679EF: Set var_C4 = Nothing
  loc_17679F8: global_304 = MemVar_1F951AC
  loc_1767A13: var_BC = "Select Distinct IG.Code,IG.Name as Name,IC.CatType,IG.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & global_76
  loc_1767A28: var_D0 = var_BC & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_1767A31: unk_5B2155.Execute var_D0, var_B8, -1
  loc_1767A72: var_BC = "Select I.Code,I.Name as Name,I.ItemGroup,IC.CatType,i.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & global_76
  loc_1767A87: var_D0 = var_BC & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_1767A90: unk_5B2155.Execute var_D0, var_B8, -1
  loc_1767AA1: Set global_400 = var_88
  loc_1767ACB: var_B8 = CVar(Me.RecordCount) 'Long
  loc_1767AD2: Proc_6_39_E7D3A0(var_F8, var_B8, var_88)
  loc_1767AF3: Set var_104 = Me.SSPItem
  loc_1767B19: Set var_88 = Me.SSPGroup
  loc_1767B1F: Call Proc_258_134_1307FFC(var_88, CInt(4), var_88, CInt(4), var_104)
  loc_1767B60: unk_5B2155.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_1767B71: Set global_296 = var_88
  loc_1767B9D: If (Me.RecordCount > 0) Then
  loc_1767BB2:   var_88 = Me.Fields
  loc_1767BCB:   var_F8 = CVar(Proc_6_38_E69628(CVar(var_88.Item("MemberShipModule")), var_88, CInt(CVar(var_88.Item("MemberShipModule"))), CVar(var_88.Item("MemberShipModule")))) 'String
  loc_1767BED:   If (Ucase(var_F8) = "YES") Then
  loc_1767BFE:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(CInt(var_F8)(True))
  loc_1767C06:   End If
  loc_1767C37:   global_416 = Proc_6_38_E69628(CVar(Me.Fields.Item("DisplayPort")))
  loc_1767C5E:   var_E8 = Me.Fields.Item("DisplayMode")
  loc_1767C66:   var_B8 = CVar(var_E8) 'Address
  loc_1767C75:   global_420 = Proc_6_38_E69628(var_B8)
  loc_1767C82: End If
  loc_1767C8A: If (MemVar_1F951AC = "Room Service") Then
  loc_1767C98:   Set var_88 = var_E8(4)
  loc_1767C9E:   Call 0.Method_Form_Load0 (0)
  loc_1767CA6:   var_E8.Visible = MemVar_1F95E84
  loc_1767CBD:   Set var_88 = var_E8(5)
  loc_1767CC3:   Call 0.Method_Form_Load0 (0)
  loc_1767CCB:   var_E8.Visible = 
  loc_1767CE2:   Set var_88 = var_E8(6)
  loc_1767CE8:   Call 0.Method_Form_Load0 (0)
  loc_1767CF0:   var_E8.Visible = 
  loc_1767D07:   Set var_88 = var_E8(6)
  loc_1767D0D:   Call 0.Method_Form_Load0 (0)
  loc_1767D15:   var_E8.Visible = 
  loc_1767D2C:   Set var_88 = var_E8(7)
  loc_1767D32:   Call 0.Method_Form_Load0 (0)
  loc_1767D3A:   var_E8.Visible = 
  loc_1767D51:   Set var_88 = var_E8(8)
  loc_1767D57:   Call 0.Method_Form_Load0 (0)
  loc_1767D5F:   var_E8.Visible = 
  loc_1767D6B: End If
  loc_1767D92: unk_5B2155.Execute "Select RateInclTax,AutoSettlement from depart where code='" & global_76 & "'", var_B8, -1
  loc_1767D9D: Set var_90 = var_88
  loc_1767DC1: If (var_90.RecordCount > 0) Then
  loc_1767DF5:   global_176 = Proc_6_38_E69628(CVar(var_90.Fields.Item("RateInclTax")))
  loc_1767E18:   var_E8 = var_90.Fields.Item("AutoSettlement")
  loc_1767E20:   var_B8 = CVar(var_E8) 'Address
  loc_1767E2F:   global_288 = Proc_6_38_E69628(var_B8)
  loc_1767E3C: End If
  loc_1767E41: Set var_90 = Nothing
  loc_1767E4A: var_124 = 0
  loc_1767E7A: unk_5B2155.Execute "Select KOtYn from depart where Code='" & global_76 & "'", var_B8, -1
  loc_1767E82: var_88 = var_88.Fields
  loc_1767E8A: var_124 = var_E8.Item(var_E8)
  loc_1767E92: var_100 = var_100.Value
  loc_1767EA5: global_240 = Proc_6_38_E69628(var_F8, var_F8)
  loc_1767EC8: var_124 = 0
  loc_1767EF8: unk_5B2155.Execute "Select AutoSplit from depart where Code='" & global_76 & "'", var_B8, -1
  loc_1767F00: var_88 = var_88.Fields
  loc_1767F08: var_124 = var_E8.Item(var_E8)
  loc_1767F10: var_100 = var_100.Value
  loc_1767F23: global_284 = Proc_6_38_E69628(var_F8, var_F8)
  loc_1767F4B: If (global_284 = "Yes") Then
  loc_1767F5F:   Call 0.Method_Form_Load0 (0)
  loc_1767F67:   var_E8.Visible = var_E8(4)
  loc_1767F7E:   Set var_88 = var_E8(5)
  loc_1767F84:   Call 0.Method_Form_Load0 (0)
  loc_1767F8C:   var_E8.Visible = 
  loc_1767FA3:   Set var_88 = var_E8(6)
  loc_1767FA9:   Call 0.Method_Form_Load0 (0)
  loc_1767FB1:   var_E8.Visible = 
  loc_1767FC8:   Set var_88 = var_E8(6)
  loc_1767FCE:   Call 0.Method_Form_Load0 (0)
  loc_1767FD6:   var_E8.Visible = 
  loc_1767FED:   Set var_88 = var_E8(7)
  loc_1767FF3:   Call 0.Method_Form_Load0 (0)
  loc_1767FFB:   var_E8.Visible = 
  loc_1768012:   Set var_88 = var_E8(8)
  loc_1768018:   Call 0.Method_Form_Load0 (0)
  loc_1768020:   var_E8.Visible = 
  loc_1768035:   Set var_88 = (False)
  loc_176803B:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_1768043: End If
  loc_176806A: unk_5B2155.Execute "Select ShortName,Code,CustInfo from Depart Where Code='" & global_76 & "'", var_B8, -1
  loc_1768075: Set var_8C = var_88
  loc_1768099: If (var_8C.RecordCount > 0) Then
  loc_17680CD:   global_308 = CStr(var_8C.Fields.Item("ShortName").Value)
  loc_176810F:   global_312 = CStr(var_8C.Fields.Item("Code").Value)
  loc_1768159:   If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("CustInfo"))) = "Y") Then
  loc_1768168:     var_88(&HFF).Visible = 
  loc_1768178:     Set var_88 = (True)
  loc_176817E:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_1768186:   End If
  loc_1768186: End If
  loc_17681A2: Me.CursorLocation = 3
  loc_17681CC: var_B8 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_17681D6: Me.Open var_B8, CVar(MemVar_1F95044), 3
  loc_17681EA: CVarUnk
  loc_17681EF: VerifyVarObj
  loc_17681F5: Set var_88 = 1(New)
  loc_17681FB: LateIdStAd
  loc_1768213: Set global_128 = New 
  loc_1768225: Me.Recordset15.CursorLocation = 3
  loc_176824F: var_C8 = "select Order_Booking as OrderBooking from Depart where (Logsite_code='" & MemVar_1F95078 & "'or LOGSITE_CODE='HO') and Code='"
  loc_176826A: Me.Open CVar(var_C8 & global_76 & "'"), CVar(MemVar_1F95044), 3
  loc_1768284: var_C0 = Me.RecordCount
  loc_1768292: If (var_C0 > 0) Then
  loc_17682AF:   var_E8 = Me.Fields.Item("OrderBooking")
  loc_17682C0:   var_BC = Proc_6_38_E69628(CVar(var_E8), 1, -1)
  loc_17682DE:   If ("select Order_Booking as OrderBooking from Depart where (Logsite_code='" & MemVar_1F95078 = "Y") Then
  loc_17682F4:     Call 0.Method_Form_Load0 (&HFF, var_E8(CInt(&HB)))
  loc_17682FC:     var_E8.Visible = True
  loc_1768313:     Set var_88 = var_E8(7)
  loc_1768319:     Call 0.Method_Form_Load0 (&HFF)
  loc_1768321:     var_E8.Visible = 
  loc_176833A:     Set var_88 = var_E8(CInt(&HC))
  loc_1768340:     Call 0.Method_Form_Load0 (&HFF)
  loc_1768348:     var_E8.Visible = 
  loc_176835F:     Set var_88 = var_E8(8)
  loc_1768365:     Call 0.Method_Form_Load0 (&HFF)
  loc_176836D:     var_E8.Visible = 
  loc_1768379:   End If
  loc_1768379: End If
  loc_1768395: Me.CursorLocation = 3
  loc_17683B8: var_BC = "SELECT  Distinct  CAST(P.Vno AS varchar(10)) AS SearchCode, CAST(P.Vno AS varchar(10)) AS Vno, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F95078
  loc_17683D0: var_B8 = CVar(var_BC & "') AND (P.RestCode = '" & global_76 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '')") 'String
  loc_17683DA: Me.Open var_B8, CVar(MemVar_1F95044), 3
  loc_17683F4: CVarUnk
  loc_17683F9: VerifyVarObj
  loc_17683FF: Set var_88 = 1(New)
  loc_1768405: LateIdStAd
  loc_1768427: Call 0.Method_Form_Load0 (var_C0, var_E8(CInt(&HB)))
  loc_176842F: -1 = var_E8.Left
  loc_1768440: Set var_100 = (CVar(var_C0))
  loc_1768446: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_1768462: Set var_100 = var_104(CInt(&HB))
  loc_1768468: Call 0.Method_Form_Load0 (var_138)
  loc_1768470:  = var_104.Height
  loc_1768483: Set var_88 = var_E8(CInt(&HB))
  loc_1768489: Call 0.Method_Form_Load0 (var_C0)
  loc_1768491:  = var_E8.Top
  loc_176849D: var_A8 = CVar((var_C0 + var_138)) 'Single
  loc_17684A6: Set var_13C = (CVar(var_C0))
  loc_17684AC: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_17684BE: Call Proc_258_156_114BEF4()
  loc_17684C9: var_124 = 0
  loc_17684F9: unk_5B2155.Execute "Select Name From Depart Where Code ='" & global_76 & "'", var_B8, -1
  loc_1768501: var_88 = var_88.Fields
  loc_1768509: var_124 = var_E8.Item(var_E8)
  loc_1768511: var_100 = var_100.Value
  loc_1768527: var_F8(CStr(var_F8)).Caption = 
  loc_1768551: Set global_116 = New 
  loc_1768563: Me.Recordset15.CursorLocation = 3
  loc_1768585: var_E8 = Me.Fields.Item("MultiBillGeneration")
  loc_176858D: var_B8 = var_E8.Value
  loc_17685A7: If (var_B8 = "Yes") Then
  loc_17685B5:   If (global_284 = "Yes") Then
  loc_17685BB:     var_A8 = MemVar_1F950EC
  loc_17685C3:     Proc_6_7_F26918(var_B8)
  loc_17685CE:     var_16C = 0
  loc_17685EE:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_17685FE:     unk_5B2155.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_15C, -1
  loc_1768606:     var_88 = var_88.Fields
  loc_176860E:     var_16C = var_E8.Item(var_E8)
  loc_1768616:     var_100 = var_100.Value
  loc_1768639:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From SplitSale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F95078
  loc_176865F:     var_1AC = CVar(var_BC & "' AND S.VDate=") & var_B8 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_17C & "' ORDER BY S.DOCID" 
  loc_176866A:     Me.Open var_1AC, CVar(MemVar_1F95044), 3
  loc_1768697:   Else
  loc_17686A2:     Proc_6_7_F26918(var_B8, MemVar_1F950EC, 1)
  loc_17686AD:     var_16C = 0
  loc_17686CD:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_17686DD:     unk_5B2155.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_15C, -1
  loc_17686E5:     var_88 = var_88.Fields
  loc_17686ED:     var_16C = var_E8.Item(var_E8)
  loc_17686F5:     var_100 = var_100.Value
  loc_1768718:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F95078
  loc_176871F:     var_F8 = CVar(var_BC & "' AND S.VDate=") 'String
  loc_1768749:     Me.Open var_F8 & var_B8 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_17C & "' ORDER BY S.DOCID", CVar(MemVar_1F95044), 3
  loc_1768773:   End If
  loc_1768776: Else
  loc_1768789:   If (PRemark = "Unsettled") Then
  loc_1768792:     var_124 = 0
  loc_17687B2:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_17687C2:     unk_5B2155.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_B8, -1
  loc_17687CA:     var_88 = var_88.Fields
  loc_17687D2:     var_124 = var_E8.Item(var_E8)
  loc_17687DA:     var_100 = var_100.Value
  loc_17687FD:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From ((Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE)) LEFT JOIN PayCharge ON S.DocId = PayCharge.DocId) WHERE S.LOGSITE_CODE='" & MemVar_1F95078
  loc_1768813:     var_15C = CVar(var_BC & "' AND IsNULL(PayCharge.DocId,'')='' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='") & var_F8 & "' ORDER BY S.DOCID" 
  loc_176881E:     Me.Open var_15C, CVar(MemVar_1F95044), 3
  loc_1768845:   Else
  loc_1768850:     Proc_6_7_F26918(var_B8, MemVar_1F950EC, 1, -1, var_F8, 1)
  loc_176885B:     var_16C = 0
  loc_176887B:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_176888B:     unk_5B2155.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_15C, -1
  loc_1768893:     var_88 = var_88.Fields
  loc_176889B:     var_16C = var_E8.Item(var_E8)
  loc_17688A3:     var_100 = var_100.Value
  loc_17688C6:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F95078
  loc_17688CD:     var_F8 = CVar(var_BC & "' AND S.VDate=") 'String
  loc_17688F7:     Me.Open var_F8 & var_B8 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_17C & "' ORDER BY S.DOCID", CVar(MemVar_1F95044), 3
  loc_1768921:   End If
  loc_1768921: End If
  loc_176893D: Me.Recordset15.CursorLocation = 3
  loc_1768959: var_A8 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,IC.CatType,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Type='Finish' And I.DispCode <>9999 Order by I.Name"
  loc_1768965: Me.Open var_A8, CVar(MemVar_1F95044), 3
  loc_1768973: CVarUnk
  loc_1768978: VerifyVarObj
  loc_176897E: Set var_88 = 1(New)
  loc_1768984: LateIdStAd
  loc_176899C: Set global_112 = New 
  loc_17689AE: Me.Recordset15.CursorLocation = 3
  loc_17689E2: var_CC = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 & "'or LOGSITE_CODE='HO') and Code='" & global_76
  loc_17689F3: Me.Open CVar(var_CC & "'"), CVar(MemVar_1F95044), 3
  loc_1768A1B: If (Me.RecordCount > 0) Then
  loc_1768A21:   var_A8 = "MemberInfo"
  loc_1768A30:   var_88 = Me.Fields
  loc_1768A38:   var_E8 = var_88.Item(var_A8)
  loc_1768A40:   var_B8 = CVar(var_E8) 'Address
  loc_1768A49:   var_BC = Proc_6_38_E69628(var_B8, 1, -1, var_88, -1, 1, -1)
  loc_1768A5A:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 = "Y") Then
  loc_1768A6A:     Set var_88 = var_E8(CInt(&HD))
  loc_1768A70:     Call 0.Method_Form_Load0 (&HFF, var_17C, -1, var_17C)
  loc_1768A78:     var_E8.Visible = True
  loc_1768A8F:     Set var_88 = var_E8(9)
  loc_1768A95:     Call 0.Method_Form_Load0 (&HFF, var_17C)
  loc_1768A9D:     var_E8.Visible = var_A8
  loc_1768AB6:     Set var_88 = var_E8(CInt(&HF))
  loc_1768ABC:     Call 0.Method_Form_Load0 (&HFF)
  loc_1768AC4:     var_E8.Visible = 
  loc_1768AE3:     Call 0.Method_Form_Load0 (3, var_E8)
  loc_1768AEB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_1768B1B:     unk_5B2155.Execute "SELECT * FROM MemENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_1768B26:     Set var_94 = Me.CmdDiscType
  loc_1768B4A:     If (var_94.RecordCount > 0) Then
  loc_1768B7B:       global_432 = Proc_6_38_E69628(CVar(var_94.Fields.Item("MemberVarification")))
  loc_1768B97:       var_88 = var_94.Fields
  loc_1768BA7:       var_B8 = CVar(var_88.Item("MemberSaleBillDiscEditable")) 'Address
  loc_1768BB6:       global_440 = Proc_6_38_E69628(var_B8)
  loc_1768BC3:     End If
  loc_1768BC8:     Set var_94 = Nothing
  loc_1768BCB:   End If
  loc_1768BCB: End If
  loc_1768BF4: var_D0 = "SELECT RefundCashCardAmt FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128 & "' And UserName='"
  loc_1768C0B: unk_5B2155.Execute var_D0 & MemVar_1F950C8 & "'", var_B8, -1
  loc_1768C16: Set var_1C0 = var_88
  loc_1768C42: If (var_1C0.RecordCount > 0) Then
  loc_1768C54:   var_88 = var_1C0.Fields
  loc_1768C5C:   var_E8 = var_88.Item("RefundCashCardAmt")
  loc_1768C7E:   If (Proc_6_38_E69628(CVar(var_E8), var_88) = "Yes") Then
  loc_1768C89:     Set var_88 = var_88(True)
  loc_1768C8F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_1768C97:   End If
  loc_1768C97: End If
  loc_1768C9C: Set var_1C0 = Nothing
  loc_1768CBB: Me.Recordset15.CursorLocation = 3
  loc_1768CDE: var_BC = "Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078
  loc_1768CF3: var_B8 = CVar(var_BC & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='" & MemVar_1F95078 & "') Order By Name") 'String
  loc_1768CFD: Me.Open var_B8, CVar(MemVar_1F95044), 3
  loc_1768D17: CVarUnk
  loc_1768D1C: VerifyVarObj
  loc_1768D28: LateIdStAd
  loc_1768D5B: Call 0.Method_arg_50 (var_BC, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_B8, -1, 1(New), var_E8)
  loc_1768D82: unk_5B2155.Execute 0 & var_BC & "' AND UNAME='" & MemVar_1F950C8 & "'", var_100, var_F8
  loc_1768D8A: var_88 = var_88.Fields
  loc_1768D92:  = var_E8.Item(-1)
  loc_1768D9A:  = var_100.Value
  loc_1768DC7: If (var_F8 > 0) Then
  loc_1768E02:   Call 0.Method_arg_50 (var_BC, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_B8, -1, var_88, var_E8, 0)
  loc_1768E29:   unk_5B2155.Execute var_100 & var_BC & "' AND UNAME='" & MemVar_1F950C8 & "'", var_F8, "SearchCode='"
  loc_1768E31:   0 = var_88.Fields
  loc_1768E39:   var_19C = var_E8.Item(1)
  loc_1768E41:    = var_100.Value
  loc_1768E60:   Me.Find CStr(var_F8 & "'"), , 
  loc_1768E88: End If
  loc_1768E9F: If (Me.RecordCount > 0) Then
  loc_1768EAB:   var_FA = Me.EOF
  loc_1768EB6:   If (var_FA = &HFF) Then
  loc_1768EBF:     Me.MoveLast
  loc_1768EC4:   End If
  loc_1768EC4: End If
  loc_1768ECD: Call 0.Method_arg_160 (var_88)
  loc_1768EDB: Call 0.Method_arg_164 (var_88)
  loc_1768F06: Call Proc_258_148_107A830(Proc_5_1_100EC1C("INI", Me))
  loc_1768F29: Proc_6_23_DFC5B8(Me, 7590)
  loc_1768F38: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), 11940)
  loc_1768F4A: Set var_88 = global_116(CVar(CLng(MemVar_1F951B8)))
  loc_1768F50: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_12()
  loc_1768F66: (CLng(MemVar_1F951B4)).BackColor = 
  loc_1768F7A: Set var_88 = var_96(var_FA)
  loc_1768F80: Call 0.Method_Form_Load8 (0)
  loc_1768F8B: For var_1C4 =  To var_FA:  = var_1C4 'Integer
  loc_1768FA2:   Set var_88 = var_E8(var_96)
  loc_1768FA8:   Call 0.Method_Form_Load0 (CVar(MemVar_1F951B4))
  loc_1768FB0:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D()
  loc_1768FBF: Next var_1C4 'Integer
  loc_1768FD0: Set var_88 = Me.CmdDiscType
  loc_1768FD6: Call 0.Method_Form_Load8 (var_FA, var_96)
  loc_1768FE1: For var_1C8 =  To var_FA: 0 = var_1C8 'Integer
  loc_1768FF8:   Set var_88 = Me.CmdDiscType
  loc_1768FFE:   Call 0.Method_Form_Load0 (var_96, var_E8)
  loc_1769006:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F951B4))
  loc_1769015: Next var_1C8 'Integer
  loc_1769026: Set var_88 = var_96(var_FA)
  loc_176902C: Call 0.Method_Form_Load8 (0)
  loc_1769037: For var_1CC =  To var_FA:  = var_1CC 'Integer
  loc_176904E:   Set var_88 = var_E8(var_96)
  loc_1769054:   Call 0.Method_Form_Load0 (CVar(MemVar_1F951B4))
  loc_176905C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D()
  loc_176906B: Next var_1CC 'Integer
  loc_176907C: Set var_88 = Me.CmdCatType
  loc_1769082: Call 0.Method_Form_Load8 (var_FA, var_96)
  loc_176908D: For var_1D0 =  To var_FA: 0 = var_1D0 'Integer
  loc_17690A4:   Set var_88 = Me.CmdCatType
  loc_17690AA:   Call 0.Method_Form_Load0 (var_96, var_E8)
  loc_17690B2:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_1D(CVar(MemVar_1F951B4))
  loc_17690C1: Next var_1D0 'Integer
  loc_17690D1: Set var_88 = (CVar(MemVar_1F951B4))
  loc_17690D7: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_1D()
  loc_17690EA: Set var_88 = (CVar(MemVar_1F951B4))
  loc_17690F0: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_1D()
  loc_1769103: Set var_88 = (CVar(MemVar_1F951B4))
  loc_1769109: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_1D()
  loc_176911F: Me.FrDiscType.BackColor = CLng(MemVar_1F951B4)
  loc_1769135: (CLng(MemVar_1F951B4)).BackColor = 
  loc_176914B: (CLng(MemVar_1F951B4)).BackColor = 
  loc_176915E: Set var_88 = (CVar(MemVar_1F951B4))
  loc_1769177: Set var_88 = FrDiscType.DispID_1D(CVar(MemVar_1F951B4))
  loc_1769190: Set var_88 = FrDiscType.DispID_1D(CVar(MemVar_1F951B4))
  loc_17691AC: FrDiscType.DispID_1D(CLng(MemVar_1F951B4)).BackColor = 
  loc_17691BF: Set var_88 = (CVar(MemVar_1F951B4))
  loc_17691D8: Set var_88 = FrDiscType.DispID_1D(CVar(MemVar_1F951B4))
  loc_17691F4: Me.FrameGrpItem.BackColor = CLng(MemVar_1F951B4)
  loc_176920A: FrDiscType.DispID_1D(CLng(MemVar_1F951B4)).BackColor = 
  loc_1769220: Me.FrameQty.BackColor = CLng(MemVar_1F951B4)
  loc_1769236: (CLng(MemVar_1F951B4)).BackColor = 
  loc_176923E: Call Proc_258_136_143EE54()
  loc_1769265: (CVar(CDbl(().Top))).Top = 
  loc_176927E: var_F8 = ().Width
  loc_1769291: var_114 = (var_F8).Width
  loc_17692B9: var_A8 = CVar((CDbl((var_114).Left) + (CDbl(var_F8) - CDbl(var_114)))) 'Single
  loc_17692C8: (CVar(CDbl(().Top))).Left = 
  loc_1769303: (CVar(CDbl(().Height))).Height = 
  loc_1769334: (CVar(CDbl(().Top))).Top = 
  loc_176934D: var_F8 = ().Width
  loc_1769360: var_114 = (var_F8).Width
  loc_1769388: var_A8 = CVar((CDbl((var_114).Left) + (CDbl(var_F8) - CDbl(var_114)))) 'Single
  loc_1769397: (CVar(CDbl(().Top))).Left = 
  loc_17693BA: var_B8 = ().Height
  loc_17693CC: Set var_E8 = (CVar(CDbl(var_B8)))
  loc_17693D2: var_E8.Height = 
  loc_17693EA: Set var_88 = Me.SSPGroup
  loc_17693F0: Call 0.Method_Form_Load0 (0)
  loc_17693F8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_E8)
  loc_1769419: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_B8)) + CDbl(&H32))
  loc_1769447: If (Me.FrameGrpItem.Width < CDbl(6600)) Then
  loc_1769459:   Me.FrameGrpItem.Width = CDbl(6600)
  loc_1769461: End If
  loc_176946A: Set var_88 = Me.SSPGroup
  loc_1769470: Call 0.Method_Form_Load0 (0)
  loc_1769478: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_E8)
  loc_176949D: Set var_100 = Me.FrameGrpItem
  loc_17694A3: var_100.Height = (((CDbl((CInt(4) + 1)) * CDbl(var_B8)) + CDbl(&H32)) + CDbl(300))
  loc_17694B7: var_124 = 0
  loc_17694E4: unk_5B2155.Execute "Select FreeiteminKOT from enviro where LogSite_code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_17694EC: var_88 = var_88.Fields
  loc_17694F4: var_124 = var_E8.Item(var_E8)
  loc_1769524: If (Proc_6_38_E69628(CVar(var_100)) = "Yes") Then
  loc_1769532:   If (global_240 = "Y") Then
  loc_1769544:     Set var_88 = var_E8(CInt(5))
  loc_176954A:     Call 0.Method_Form_Load0 (True)
  loc_1769552:     var_E8.Visible = var_100
  loc_176955E:     GoTo loc_1769561
  loc_1769561:     ' Referenced from: 176955E
  loc_1769561:   End If
  loc_1769561: End If
  loc_176956C: If (global_240 = "Y") Then
  loc_176957E:   (False).Enabled = 
  loc_1769592:   Me.FrameGrpItem.Visible = False
  loc_17695A8:   Set var_88 = var_E8(2)
  loc_17695AE:   Call 0.Method_Form_Load0 (False)
  loc_17695B6:   var_E8.Visible = 
  loc_17695D0:   Set var_88 = var_E8(4)
  loc_17695D6:   Call 0.Method_Form_Load0 (False)
  loc_17695DE:   var_E8.Visible = 
  loc_17695EA: End If
  loc_17695FE: If (RSTouchScreenSaleBill.OpenMode = 1) Then
  loc_1769612:   Set var_88 = var_E8(CInt(3))
  loc_1769618:   Call 0.Method_Form_Load0 (global_324)
  loc_1769620:   var_E8.Text = 
  loc_176962C:   Call Form_Activate()
  loc_1769634: Else
  loc_1769634:   Call Proc_258_145_1BA3A9C()
  loc_1769639: End If
  loc_1769639: Call Proc_258_133_122007C()
  loc_176963E: Exit Sub
  loc_176963F: ' Referenced from: 1767898
  loc_176963F: Proc_6_60_E63754()
  loc_1769644: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EC25D0
  'Data Table: 5B2118
  loc_EC252F: Set global_100 = Nothing
  loc_EC2541: Set global_96 = Nothing
  loc_EC2553: Set global_120 = Nothing
  loc_EC255F: global_72 = 0
  loc_EC256D: Set global_100 = Nothing
  loc_EC257F: Set global_52 = Nothing
  loc_EC2591: Set global_128 = Nothing
  loc_EC25A3: Set global_124 = Nothing
  loc_EC25B5: Set global_112 = Nothing
  loc_EC25C7: Set global_108 = Nothing
  loc_EC25CE: Exit Sub
End Sub

Private Sub Form_Activate() '101E0D8
  'Data Table: 5B2118
  Dim var_C8 As Integer
  Dim var_8C As String
  Dim unk_5B2155 As Connection15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_101DEE4: var_C8 = 0
  loc_101DF04: var_8C = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_101DF14: unk_5B2155.Execute var_8C & "'", var_B0, -1
  loc_101DF1C: var_B4 = var_B4.Fields
  loc_101DF24: var_C8 = var_B8.Item(var_B8)
  loc_101DF2C: var_CC = var_CC.Value
  loc_101DF34: var_FC = var_DC & var_DC 
  loc_101DF3D: var_11C = var_FC & "' Order by Description" 
  loc_101DF4B: unk_5B2155.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_101DF56: Set var_88 = var_144
  loc_101DF8E: If (var_88.RecordCount > 0) Then
  loc_101DFAB:   var_B8 = var_88.Fields.Item(0)
  loc_101DFC2:   global_184 = CStr(var_B8.Value)
  loc_101DFD6: Else
  loc_101DFE9:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_101DFEF:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_101E00C:   Me.Global.Unload Me
  loc_101E014:   Exit Sub
  loc_101E015: End If
  loc_101E01B: var_C8 = 0
  loc_101E04B: unk_5B2155.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_184 & "'", var_B0, -1
  loc_101E053: var_B4 = var_B4.Fields
  loc_101E05B: var_C8 = var_B8.Item(var_B8)
  loc_101E063: var_CC = var_CC.Value
  loc_101E08A: If (var_DC <= 0) Then
  loc_101E0A6:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_101E0C3:   Me.Global.Unload Me
  loc_101E0CB:   Exit Sub
  loc_101E0CC: End If
  loc_101E0D1: Set var_88 = Nothing
  loc_101E0D4: Exit Sub
  loc_101E0D5: ThisVCallHidden
End Sub

Private Sub Form_Deactivate() 'E2654C
  'Data Table: 5B2118
  loc_E26531: If (global_72 = &HFF) Then
  loc_E26541:   Me.Global.Unload Me
  loc_E26549: End If
  loc_E26549: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '10998E4
  'Data Table: 5B2118
  Dim var_E8 As Variant
  Dim var_130 As Variant
  loc_1099630: On Error Goto loc_10998DB
  loc_1099672:  = (Ucase(Chr(CLng(KeyCode))) = "C") And (Shift = 2)(var_EA).Visible
  loc_10996A7: If CBool( And (var_EA = 0) And (MemVar_1F950C8 = "SA")) Then
  loc_10996B6:   (&HFF).Visible = 
  loc_10996BE:   Call Proc_258_165_F81234()
  loc_10996CF:   (0).Visible = 
  loc_10996E2:   Set var_E8 = var_130(CInt(1))
  loc_10996E8:   Call 0.Method_Form_KeyDown0 ()
  loc_10996F0:   var_130.SetFocus
  loc_10996FF: Else
  loc_109973E:    = (Ucase(Chr(CLng(KeyCode))) = "I") And (Shift = 2)(var_EA).Visible
  loc_1099761:   If CBool( And (var_EA = &HFF)) Then
  loc_109976C:     If (MemVar_1F953B0 = "A") Then
  loc_109977B:       (&HFF).Visible = 
  loc_1099783:       Call Proc_258_165_F81234()
  loc_1099788:     End If
  loc_109978B:   Else
  loc_10997CA:      = (Ucase(Chr(CLng(KeyCode))) = "H") And (Shift = 2)(var_EA).Visible
  loc_10997EA:      =  And (var_EA = &HFF)(var_132).Visible
  loc_1099813:     If CBool( And (var_132 = &HFF)) Then
  loc_1099822:       (0).Visible = 
  loc_109982D:     Else
  loc_109986C:        = (Ucase(Chr(CLng(KeyCode))) = "H") And (Shift = 2)(var_EA).Visible
  loc_109988F:       If CBool( And (var_EA = &HFF)) Then
  loc_109989E:         (0).Visible = 
  loc_10998B2:         (0).Visible = 
  loc_10998BA:       End If
  loc_10998BA:     End If
  loc_10998BA:   End If
  loc_10998BA: End If
  loc_10998D2: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_10998DA: Exit Sub
  loc_10998DB: ' Referenced from: 1099630
  loc_10998DB: Proc_6_60_E63754(Shift)
  loc_10998E0: Exit Sub
End Sub

Private Sub CmdSave_Click() 'DFF2F4
  'Data Table: 5B2118
  loc_DFF2EC: Call TopCtrl1_UnknownEvent_16()
  loc_DFF2F1: Exit Sub
End Sub

Private Sub HeadAdd_UnknownEvent_9 'DFF674
  'Data Table: 5B2118
  loc_DFF66C: Call TopCtrl1_UnknownEvent_A()
  loc_DFF671: Exit Sub
  loc_DFF672: CExtInstUnk
End Sub

Private Sub HeadEdit_UnknownEvent_9 'DFF71C
  'Data Table: 5B2118
  loc_DFF714: Call TopCtrl1_UnknownEvent_D()
  loc_DFF719: Exit Sub
End Sub

Private Sub HeadDelete_UnknownEvent_9 'DFF86C
  'Data Table: 5B2118
  loc_DFF864: Call TopCtrl1_UnknownEvent_C()
  loc_DFF869: Exit Sub
End Sub

Private Sub SSPMain_UnknownEvent_9 'FA05B0
  'Data Table: 5B2118
  Dim Me As Variant
  loc_FA0457: If (Me.RecordCount = 0) Then
  loc_FA046D:   var_A8 = "No Item Groups are present"
  loc_FA0473:   MsgBox(var_A8, &H40, var_C8, var_E8, var_108)
  loc_FA0483:   Exit Sub
  loc_FA0484: End If
  loc_FA048A: Me.MoveFirst
  loc_FA049D: Set var_10C = Me.SSPGroup
  loc_FA04A3: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_110)
  loc_FA04AB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_FA04C5: Set var_10C = Me.SSPItem
  loc_FA04CB: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_110)
  loc_FA04D3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_FA04EA: If (global_384 = "Group") Then
  loc_FA04F3:   global_384 = "Group"
  loc_FA050B:   Set var_110 = Me.SSPGroup
  loc_FA052E:   Call Proc_258_134_1307FFC(Me.SSPGroup, CInt(4), global_396)
  loc_FA053A:   global_380 = CInt(var_A8)
  loc_FA054E: Else
  loc_FA0554:   global_384 = "Group"
  loc_FA058F:   Call Proc_258_134_1307FFC(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPItem)
  loc_FA059B:   global_380 = CInt(var_A8)
  loc_FA05AC: End If
  loc_FA05AC: Exit Sub
  loc_FA05AD: StAryRecMove
End Sub

Private Sub HeadPrint_UnknownEvent_9 'DFFB44
  'Data Table: 5B2118
  loc_DFFB3C: Call TopCtrl1_UnknownEvent_14()
  loc_DFFB41: Exit Sub
  loc_DFFB42: Loop Until  'do at: DF9B4B
End Sub

Private Sub HeadSave_UnknownEvent_9 'DFFC94
  'Data Table: 5B2118
  loc_DFFC8C: Call TopCtrl1_UnknownEvent_16()
  loc_DFFC91: Exit Sub
  loc_DFFC92: Set var_5F9C = 
End Sub

Private Sub HeadCancel_UnknownEvent_9 'DFF364
  'Data Table: 5B2118
  loc_DFF35C: Call TopCtrl1_UnknownEvent_B()
  loc_DFF361: Exit Sub
End Sub

Private Sub CmdAutoSettlement_UnknownEvent_9 '101CAF8
  'Data Table: 5B2118
  Dim unk_5B2155 As Connection15
  Dim var_A0 As Recordset15
  Dim var_88 As Variant
  Dim var_98 As Variant
  loc_101C8F4: On Error Goto loc_101CAF2
  loc_101C8FB: Set var_88 = Me.TopCtrl1
  loc_101C901: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_101C91A: If (CStr() <> "Browse") Then
  loc_101C91D:   Exit Sub
  loc_101C91E: End If
  loc_101C942: unk_5B2155.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_98, -1
  loc_101C94D: Set var_A0 = var_88
  loc_101C971: If (var_A0.RecordCount > 0) Then
  loc_101C99C:   var_C8 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("Interface")))
  loc_101C9AD:   If (var_C8 = "SmartCard_ACR") Then
  loc_101C9CF:     var_DC = 0
  loc_101CA1E:     If (Proc_275_12_130B494(2, 0, var_A4, var_A8, 0, 0) = 0) Then
  loc_101CA21:       Exit Sub
  loc_101CA22:     End If
  loc_101CA25:     var_F0 = var_A8
  loc_101CA30:     If (var_F0 = "Member") Then
  loc_101CA3F:       0(&HFF).Visible = var_DC
  loc_101CA4A:     Else
  loc_101CA52:       If (var_F0 = "Cash Card") Then
  loc_101CA55:         Call CmdDebitCard_UnknownEvent_9()
  loc_101CA5A:       End If
  loc_101CA5A:     End If
  loc_101CA5D:   Else
  loc_101CA65:     If (var_C8 = "NBSD_Mifare") Then
  loc_101CA81:       MsgBox("Procedure Not Defined!", &H40, var_110, var_130, var_150)
  loc_101CA94:     Else
  loc_101CAAD:       MsgBox("Smart Card Interface Not Defined!", &H40, var_110, var_130, var_150)
  loc_101CABD:     End If
  loc_101CABD:   End If
  loc_101CAC0: Else
  loc_101CAD9:   MsgBox("Member Environment Settings NOT SET!", 0, var_110, var_130, var_150)
  loc_101CAE9: End If
  loc_101CAEE: Set var_A0 = Nothing
  loc_101CAF1: Exit Sub
  loc_101CAF2: ' Referenced from: 101C8F4
  loc_101CAF2: Proc_6_60_E63754(0, 0)
  loc_101CAF7: Exit Sub
End Sub

Private Sub CmdTipAmt_UnknownEvent_9 'EBDCA8
  'Data Table: 5B2118
  loc_EBDC0C: Me.FrameQty.Visible = True
  loc_EBDC21: Me.LblIndex.Caption = vbNullString
  loc_EBDC36: Me.LblIndex.Tag = vbNullString
  loc_EBDC4B: Me.LblVtype.Caption = "Tip Amount"
  loc_EBDC60: Me.LblVtype.Tag = vbNullString
  loc_EBDC75: Me.TxtQty.Text = vbNullString
  loc_EBDC8A: Me.TxtQty.Tag = vbNullString
  loc_EBDC9E: Me.FrameGrpItem.Enabled = False
  loc_EBDCA6: Exit Sub
End Sub

Public Sub CmFgrid_UnknownEvent_9(Index As Integer) '149F9F4
  'Data Table: 5B2118
  Dim var_AC As Variant
  Dim var_8C As Variant
  Dim var_C2 As Integer
  Dim var_E4 As Variant
  Dim var_F8 As String
  Dim var_128 As Variant
  Dim var_170 As String
  Dim var_13C As Frame
  Dim CmFgrid_UnknownEvent_93 As Variant
  Dim var_9C As Variant
  Dim var_180 As TextBox
  Dim var_1FC As Variant
  Dim var_21C As Variant
  loc_149ED6C: Set var_8C = ()
  loc_149ED84: Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149ED9D: Set var_8C = (FrameGrpItem.DispID_A)
  loc_149EDB2: var_AC = CVar((CLng(FrameGrpItem.DispID_5) - 1)) 'Long
  loc_149EDBB: Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149EDDD: Me.LblIndex.Caption = vbNullString
  loc_149EDF2: Me.LblIndex.Tag = vbNullString
  loc_149EE07: Me.LblVtype.Caption = vbNullString
  loc_149EE1C: Me.LblVtype.Tag = vbNullString
  loc_149EE31: Me.TxtQty.Text = vbNullString
  loc_149EE46: Me.TxtQty.Tag = vbNullString
  loc_149EE51: var_C2 = Index
  loc_149EE5C: If (var_C2 = CInt(0)) Then
  loc_149EE63:   Set var_8C = FrameGrpItem.DispID_D(var_C2)
  loc_149EE7E:   If (CLng(TxtQty.DispID_A) > 1) Then
  loc_149EE85:     Set var_8C = ()
  loc_149EE9A:     var_AC = CVar((CLng(TxtQty.DispID_A) - 1)) 'Long
  loc_149EEA3:     Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149EEBC:     Set var_8C = (TxtQty.DispID_A)
  loc_149EED1:     var_AC = CVar((CLng(TxtQty.DispID_5) - 1)) 'Long
  loc_149EEDA:     Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149EEF3:     Set var_8C = (TxtQty.DispID_D)
  loc_149EF0B:     Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149EF20:   End If
  loc_149EF23: Else
  loc_149EF2B:   If (var_C2 = CInt(1)) Then
  loc_149EF32:     Set var_8C = (TxtQty.DispID_8)
  loc_149EF45:     Set var_C0 = (CLng(TxtQty.DispID_A))
  loc_149EF69:     If ( < (CLng(TxtQty.DispID_4) - 1)) Then
  loc_149EF70:       Set var_8C = ()
  loc_149EF85:       var_AC = CVar((CLng(TxtQty.DispID_A) + 1)) 'Long
  loc_149EF8E:       Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149EFA7:       Set var_8C = (TxtQty.DispID_A)
  loc_149EFBC:       var_AC = CVar((CLng(TxtQty.DispID_5) - 1)) 'Long
  loc_149EFC5:       Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149EFDE:       Set var_8C = (TxtQty.DispID_D)
  loc_149EFF6:       Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149F00B:     End If
  loc_149F00E:   Else
  loc_149F016:     If (var_C2 = CInt(2)) Then
  loc_149F025:       Me.FrameQty.Visible = True
  loc_149F031:       Set var_8C = (TxtQty.DispID_8)
  loc_149F051:       Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(&HB)))
  loc_149F07B:       If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149F07E:         Exit Sub
  loc_149F07F:       End If
  loc_149F083:       Set var_8C = ()
  loc_149F0A3:       Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(0)))
  loc_149F0CD:       If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149F0D0:         Exit Sub
  loc_149F0D1:       End If
  loc_149F0DE:       Me.TxtQty.Text = vbNullString
  loc_149F0F7:       Me.TxtQty.Tag = CStr(2)
  loc_149F10F:       Me.LblVtype.Caption = "Qty"
  loc_149F123:       Me.FrameGrpItem.Enabled = False
  loc_149F13A:       (False).Enabled = 
  loc_149F145:     Else
  loc_149F14D:       If (var_C2 = CInt(3)) Then
  loc_149F15C:         Me.FrameQty.Visible = True
  loc_149F168:         Set var_8C = ()
  loc_149F188:         Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(&HB)))
  loc_149F1B2:         If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149F1B5:           Exit Sub
  loc_149F1B6:         End If
  loc_149F1BA:         Set var_8C = ()
  loc_149F1DA:         Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(0)))
  loc_149F204:         If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149F207:           Exit Sub
  loc_149F208:         End If
  loc_149F20C:         Set var_8C = ()
  loc_149F22C:         Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(&H19)))
  loc_149F265:         If (Ucase(CVar(CStr(FrameQty.DispID_41))) = "Y") Then
  loc_149F275:           Me.TxtQty.Text = vbNullString
  loc_149F28E:           Me.TxtQty.Tag = CStr(3)
  loc_149F2A6:           Me.LblVtype.Caption = "Rate"
  loc_149F2BA:           Me.FrameGrpItem.Enabled = False
  loc_149F2D1:           (False).Enabled = 
  loc_149F2D9:         End If
  loc_149F2DC:       Else
  loc_149F2E4:         If (var_C2 = CInt(4)) Then
  loc_149F2FA:           var_AC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149F302:           var_E4 = CVar(CLng(0)) 'Long
  loc_149F315:           var_F8 = CStr(FrameGrpItem.DispID_41)
  loc_149F329:           var_128 = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149F35F:           If (CVar(CLng(&HB)) And (CStr(FrameGrpItem.DispID_41) <> vbNullString)) Then
  loc_149F36E:             var_AC = CVar(CLng(FrameGrpItem.DispID_C)) 'Long
  loc_149F376:             CmFgrid_UnknownEvent_93 = ().Name
  loc_149F3AB:             For var_174 = CInt(CLng(FrameGrpItem.DispID_C)) To CInt((CLng(FrameGrpItem.DispID_4) - 1)):         var_86 = var_174 'Integer
  loc_149F3B5:               var_AC = CVar(CLng(var_86)) 'Long
  loc_149F3BD:               var_E4 = CVar(CLng(0)) 'Long
  loc_149F3C7:               var_9C = CVar(CStr(var_86)) 'String
  loc_149F3CE:               LateIdCallSt
  loc_149F3DC:             Next var_174 'Integer
  loc_149F3E1:           End If
  loc_149F3E3:           Set var_13C = Nothing 
  loc_149F3EC:           Call Proc_258_158_19037C8(&H32)
  loc_149F3F4:         Else
  loc_149F3FC:           If (var_C2 = CInt(5)) Then
  loc_149F403:             Set var_8C = ()
  loc_149F423:             Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149F440:             Set var_17C = ((CStr(FrameGrpItem.DispID_41) = vbNullString))
  loc_149F460:             Set var_180 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E)))
  loc_149F497:             If ( Or (CStr(FrameGrpItem.DispID_41) = "Free")) Then
  loc_149F49A:               Exit Sub
  loc_149F49B:             End If
  loc_149F49F:             Set var_8C = ()
  loc_149F4BF:             Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(0)))
  loc_149F4E9:             If (CStr(FrameGrpItem.DispID_41) = vbNullString) Then
  loc_149F4EC:               Exit Sub
  loc_149F4ED:             End If
  loc_149F4FA:             Me.TxtQty.Text = vbNullString
  loc_149F513:             Me.TxtQty.Tag = CStr(5)
  loc_149F52B:             Me.LblVtype.Caption = "Free Qty"
  loc_149F53F:             Me.FrameGrpItem.Enabled = False
  loc_149F556:             (False).Enabled = 
  loc_149F561:           Else
  loc_149F569:             If (var_C2 = CInt(6)) Then
  loc_149F570:               Set var_8C = ()
  loc_149F590:               Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(0)))
  loc_149F5AD:               Set var_17C = ((CStr(FrameGrpItem.DispID_41) <> vbNullString))
  loc_149F5CD:               Set var_180 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149F5DE:               var_170 = CStr(FrameGrpItem.DispID_41)
  loc_149F604:               If ( And (var_170 <> vbNullString)) Then
  loc_149F60B:                 Set var_8C = ()
  loc_149F62B:                 Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E)))
  loc_149F642:                 var_118 = Trim(CVar(CStr(FrameGrpItem.DispID_41)))
  loc_149F664:                 If (var_118 = "Free") Then
  loc_149F66B:                   Set var_8C = ()
  loc_149F697:                   LateIdCallSt
  loc_149F6AD:                   Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E))(vbNullString))
  loc_149F6CD:                   Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149F6ED:                   Set var_17C = var_180(CInt(1))
  loc_149F6F3:                   Call 0.Method_CmFgrid_UnknownEvent_90 (var_170)
  loc_149F6FB:                   FrameGrpItem.DispID_41 = var_180.Text
  loc_149F704:                   Set var_184 = ()
  loc_149F724:                   Set var_188 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1)))
  loc_149F750:                   Call Proc_258_162_F21398(CStr(var_D4), var_170, CStr(var_118))
  loc_149F759:                   Set var_1DC = FrameGrpItem.DispID_41(var_198)
  loc_149F770:                   var_21C = CVar(CLng(8)) 'Long
  loc_149F7AB:                   LateIdCallSt
  loc_149F7E8:                   Set var_8C = 1(1(CVar(CStr(Format(CVar(var_198), "0.00")))))
  loc_149F808:                   Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149F828:                   Set var_17C = var_180(CInt(1))
  loc_149F82E:                   Call 0.Method_CmFgrid_UnknownEvent_90 (var_170, FrameGrpItem.DispID_41)
  loc_149F836:                   var_21C = var_180.Text
  loc_149F83F:                   Set var_184 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149F85F:                   Set var_188 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1)))
  loc_149F88B:                   Call Proc_258_162_F21398(CStr(var_D4), var_170, CStr(var_118))
  loc_149F894:                   Set var_1DC = FrameGrpItem.DispID_41(var_198)
  loc_149F8A3:                   var_1FC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149F8AB:                   var_21C = CVar(CLng(9)) 'Long
  loc_149F8E0:                   Set var_250 = 1(CVar(CStr(Format(CVar(var_198), "0.00"))))
  loc_149F8E6:                   LateIdCallSt
  loc_149F922:                 Else
  loc_149F926:                   Set var_8C = 1(var_250)
  loc_149F952:                   LateIdCallSt
  loc_149F968:                   Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E))("Free"))
  loc_149F994:                   LateIdCallSt
  loc_149F9AA:                   Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(8))("0.00"))
  loc_149F9B9:                   var_AC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149F9D0:                   Set var_C0 = CVar(CLng(9))("0.00")
  loc_149F9D6:                   LateIdCallSt
  loc_149F9E8:                 End If
  loc_149F9ED:                 Call Proc_258_158_19037C8(&H32, var_C0, var_AC)
  loc_149F9F2:               End If
  loc_149F9F2:             End If
  loc_149F9F2:           End If
  loc_149F9F2:         End If
  loc_149F9F2:       End If
  loc_149F9F2:     End If
  loc_149F9F2:   End If
  loc_149F9F2: End If
  loc_149F9F2: Exit Sub
End Sub

Private Sub CmdCashRecd_UnknownEvent_9 'EBDAF0
  'Data Table: 5B2118
  loc_EBDA55: Me.LblIndex.Caption = vbNullString
  loc_EBDA6A: Me.LblIndex.Tag = vbNullString
  loc_EBDA7E: Me.FrameQty.Visible = True
  loc_EBDA93: Me.LblVtype.Caption = "Cash Recd."
  loc_EBDAA8: Me.LblVtype.Tag = vbNullString
  loc_EBDABD: Me.TxtQty.Text = vbNullString
  loc_EBDAD2: Me.TxtQty.Tag = vbNullString
  loc_EBDAE6: Me.FrameGrpItem.Enabled = False
  loc_EBDAEE: Exit Sub
End Sub

Private Sub HeadFind_UnknownEvent_9 'DFFAD4
  'Data Table: 5B2118
  loc_DFFACC: Call TopCtrl1_UnknownEvent_F()
  loc_DFFAD1: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '128F3A4
  'Data Table: 5B2118
  Dim var_8C As TextBox
  Dim var_92 As Integer
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_128EDD6: Set var_88 = var_8C(Index)
  loc_128EDDC: Call 0.Method_TxtGrid_GotFocus0 ()
  loc_128EDEA: Proc_6_74_E23240(var_8C)
  loc_128EDF6: Call Proc_258_149_FD7788()
  loc_128EE09: Set var_88 = var_8C(0)
  loc_128EE0F: Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_128EE17: var_8C.MaxLength = 
  loc_128EE26: var_92 = Index
  loc_128EE2F: If (var_92 = 0) Then
  loc_128EE36:   Set var_88 = (var_92)
  loc_128EE4E:   Set var_8C = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_128EE66:   Set var_90 = (CVar(CLng(FrameGrpItem.DispID_B)))
  loc_128EE84:   Set var_108 = var_10C(Index)
  loc_128EE8A:   Call 0.Method_TxtGrid_GotFocus0 (CStr(FrameGrpItem.DispID_41))
  loc_128EE92:   var_10C.Tag = 
  loc_128EEB4:   Set var_88 = ()
  loc_128EEC3:   var_114 = CLng(FrameGrpItem.DispID_B)
  loc_128EED3:   If (var_114 = CLng(3)) Then
  loc_128EEDD:     Set var_88 = var_114("OutletCode='")
  loc_128EEFD:     Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1)))
  loc_128EF23:     Me.Filter = CVar(CStr(FrameGrpItem.DispID_41) & "'")
  loc_128EF4D:     Set var_88 = var_8C(0)
  loc_128EF53:     Call 0.Method_TxtGrid_GotFocus0 (4)
  loc_128EF5B:     var_8C.MaxLength = 
  loc_128EF6A:   Else
  loc_128EF71:     If (var_114 = CLng(4)) Then
  loc_128EF8B:       If (Me.RecordCount > 0) Then
  loc_128EF99:         Set var_8C = ()
  loc_128EFB1:         Proc_6_137_1192FDC((), global_96)
  loc_128EFBF:       End If
  loc_128EFC6:       Set var_88 = Index("OutletCode='")
  loc_128F00C:       Me.Filter = CVar(CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1))) & CStr(FrameGrpItem.DispID_41) & "'")
  loc_128F06D:       Set var_88 = (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_128F08D:       Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_128F0B8:       If ( Or (CStr(FrameGrpItem.DispID_41) = vbNullString)) Then
  loc_128F0BB:         Exit Sub
  loc_128F0BC:       End If
  loc_128F0C2:       Me.MoveFirst
  loc_128F0CB:       Set var_88 = ()
  loc_128F0EB:       Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_128F126:       Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_128F156:       If (Me.EOF = &HFF) Then
  loc_128F15F:         Me.MoveFirst
  loc_128F164:       End If
  loc_128F16D:       CVarUnk
  loc_128F172:       VerifyVarObj
  loc_128F178:       Set var_88 = var_134(global_96)
  loc_128F17E:       LateIdStAd
  loc_128F18F:     Else
  loc_128F196:       If (var_114 = CLng(8)) Then
  loc_128F1AE:         Call 0.Method_TxtGrid_GotFocus0 (0, var_8C(Index))
  loc_128F1B6:         var_8C.MaxLength = FrameGrpItem.DispID_41
  loc_128F1CB:         If (global_202 = 0) Then
  loc_128F1D6:           var_110 = "{Home}+{End}"
  loc_128F1DC:           Proc_303_0_FBACC8(CStr(var_B4))
  loc_128F1E4:         End If
  loc_128F1E7:       Else
  loc_128F1EE:         If (var_114 = CLng(2)) Then
  loc_128F208:           If (Me.RecordCount > 0) Then
  loc_128F216:             Set var_8C = ()
  loc_128F22E:             Proc_6_137_1192FDC((0), global_100)
  loc_128F23C:           End If
  loc_128F281:           Set var_88 = Index(((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_128F2CC:           If (CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1))) Or (CStr(FrameGrpItem.DispID_41) = vbNullString)) Then
  loc_128F2CF:             Exit Sub
  loc_128F2D0:           End If
  loc_128F2D6:           Me.MoveFirst
  loc_128F2DF:           Set var_88 = ()
  loc_128F2FF:           Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1)))
  loc_128F33A:           Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_128F36A:           If (Me.EOF = &HFF) Then
  loc_128F373:             Me.MoveFirst
  loc_128F378:           End If
  loc_128F381:           CVarUnk
  loc_128F386:           VerifyVarObj
  loc_128F38C:           Set var_88 = var_134(global_100)
  loc_128F392:           LateIdStAd
  loc_128F3A0:         End If
  loc_128F3A0:       End If
  loc_128F3A0:     End If
  loc_128F3A0:   End If
  loc_128F3A0: End If
  loc_128F3A0: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '132CD9C
  'Data Table: 5B2118
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_94 As String
  loc_132C5FF: var_86 = Shift
  loc_132C605: var_88 = KeyCode
  loc_132C60E: If (var_88 = 0) Then
  loc_132C61B:   If (CLng(Shift) = &H1B) Then
  loc_132C62B:     Set var_8C = var_90(KeyCode)
  loc_132C631:     Call 0.Method_TxtGrid_KeyDown0 (var_94, var_88)
  loc_132C639:     var_86 = var_90.Tag
  loc_132C64B:     Set var_98 = var_9C(KeyCode)
  loc_132C651:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_132C659:     var_9C.Text = 
  loc_132C675:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_132C67A:     Call Proc_258_149_FD7788(arg_14)
  loc_132C683:     Set var_8C = ()
  loc_132C6A0:     Set var_8C = var_90(KeyCode)
  loc_132C6A6:     Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_132C6AE:     var_90.Visible = FrameGrpItem.DispID_8001
  loc_132C6BA:     Exit Sub
  loc_132C6BB:   End If
  loc_132C6BF:   Set var_8C = ()
  loc_132C6CE:   var_B0 = CLng(FrameGrpItem.DispID_B)
  loc_132C6DE:   If (var_B0 = CLng(2)) Then
  loc_132C709:     Set var_98 = Nothing
  loc_132C737:     Proc_6_69_134A630((var_B0), (), KeyCode, global_100, Shift)
  loc_132C7A6:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_132C7AD:       Set var_98 = 1(&HFF)
  loc_132C7B4:       Set var_90 = ()(var_98)
  loc_132C7CC:       Proc_6_138_106E830(var_98, global_100, KeyCode)
  loc_132C7DA:     End If
  loc_132C7E4:     If (CLng(Shift) = &HD) Then
  loc_132C7ED:       Call Proc_258_144_18E8774(KeyCode, var_B2)
  loc_132C7F8:       If (var_B2 = &HFF) Then
  loc_132C83E:         Proc_6_62_1254E68(0(()), (), KeyCode, Shift, global_202)
  loc_132C84E:       End If
  loc_132C84E:     End If
  loc_132C851:   Else
  loc_132C858:     If (var_B0 = CLng(4)) Then
  loc_132C883:       Set var_98 = Nothing
  loc_132C8B1:       Proc_6_69_134A630(0(7), 0(3), KeyCode, global_96, Shift)
  loc_132C920:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_132C927:         Set var_98 = 1(&HFF)
  loc_132C92E:         Set var_90 = ()(var_98)
  loc_132C946:         Proc_6_138_106E830(var_98, global_96, KeyCode)
  loc_132C954:       End If
  loc_132C95E:       If (CLng(Shift) = &HD) Then
  loc_132C967:         Call Proc_258_144_18E8774(KeyCode, var_B2)
  loc_132C972:         If (var_B2 = &HFF) Then
  loc_132C9BF:           Proc_6_62_1254E68(0(()), (), KeyCode, Shift, global_202)
  loc_132C9CF:         End If
  loc_132C9CF:       End If
  loc_132C9D2:     Else
  loc_132C9D9:       If (var_B0 = CLng(8)) Then
  loc_132CA1C:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_202 = &HFF))) Then
  loc_132CA25:           Call Proc_258_144_18E8774(KeyCode, var_B2, CByte((CInt(&HA) + 1)))
  loc_132CA30:           If (var_B2 = &HFF) Then
  loc_132CA76:             Proc_6_62_1254E68(7(0), (0), KeyCode, Shift, global_202)
  loc_132CA8A:             Set var_8C = 0(8)
  loc_132CABA:             LateIdCallSt
  loc_132CAD0:             Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1))(global_312))
  loc_132CADF:             var_DC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_132CB00:             LateIdCallSt
  loc_132CB15:             var_DC = CVar(CLng(3)) 'Long
  loc_132CB1E:             Set var_8C = CVar(CLng(2))(global_308)(var_DC)
  loc_132CB2C:           End If
  loc_132CB2C:         End If
  loc_132CB2F:       Else
  loc_132CB36:         If (var_B0 = CLng(7)) Then
  loc_132CB79:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_202 = &HFF))) Then
  loc_132CB82:             Call Proc_258_144_18E8774(KeyCode, var_B2, FrameGrpItem.DispID_B)
  loc_132CB8D:             If (var_B2 = &HFF) Then
  loc_132CBD3:               Proc_6_62_1254E68(0(var_DC), (0), KeyCode, Shift, global_202)
  loc_132CBE7:               Set var_8C = 0(8)
  loc_132CC17:               LateIdCallSt
  loc_132CC2D:               Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1))(global_312))
  loc_132CC3C:               var_DC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_132CC5D:               LateIdCallSt
  loc_132CC72:               var_DC = CVar(CLng(3)) 'Long
  loc_132CC7B:               Set var_8C = CVar(CLng(2))(global_308)(var_DC)
  loc_132CC89:             End If
  loc_132CC89:           End If
  loc_132CC8C:         Else
  loc_132CC93:           If (var_B0 = CLng(3)) Then
  loc_132CCA0:             If (CLng(Shift) = &HD) Then
  loc_132CCA9:               Call Proc_258_144_18E8774(KeyCode, var_B2, FrameGrpItem.DispID_B)
  loc_132CCB4:               If (var_B2 = &HFF) Then
  loc_132CD01:                 Proc_6_62_1254E68(0(var_DC), (0), KeyCode, Shift, global_202)
  loc_132CD15:                 Set var_8C = 0(CByte((CInt(7) + 1)))
  loc_132CD35:                 Set var_90 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(3)))
  loc_132CD5F:                 If (CStr(FrameGrpItem.DispID_41) = vbNullString) Then
  loc_132CD6E:                   Set var_8C = 0(CVar(CLng(3)))
  loc_132CD7F:                 Else
  loc_132CD8B:                   Set var_8C = FrameGrpItem.DispID_B(CVar(CLng(7)))
  loc_132CD99:                 End If
  loc_132CD99:               End If
  loc_132CD99:             End If
  loc_132CD99:           End If
  loc_132CD99:         End If
  loc_132CD99:       End If
  loc_132CD99:     End If
  loc_132CD99:   End If
  loc_132CD99: End If
  loc_132CD99: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10E5E5C
  'Data Table: 5B2118
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim var_8C As Frame
  loc_10E5B3F: Proc_6_58_E06050(arg_10)
  loc_10E5B47: var_86 = KeyAscii
  loc_10E5B50: If (var_86 = 0) Then
  loc_10E5B57:   Set var_8C = (var_86)
  loc_10E5B66:   var_A0 = CLng(FrameGrpItem.DispID_B)
  loc_10E5B76:   If (var_A0 = CLng(3)) Then
  loc_10E5B94:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E5BA3:       Set var_8C = var_A0(CVar(CLng(4)))
  loc_10E5BCD:       If (CBool((FrameGrpItem.DispID_B).Visible) = &HFF) Then
  loc_10E5BDF:         var_C4 = "Name"
  loc_10E5BFA:         Proc_6_89_1470B00((), KeyAscii, global_96)
  loc_10E5C09:       End If
  loc_10E5C09:     End If
  loc_10E5C0C:   Else
  loc_10E5C13:     If (var_A0 = CLng(2)) Then
  loc_10E5C32:       If (CBool(var_C4(arg_10).Visible) = &HFF) Then
  loc_10E5C5F:         Proc_6_89_1470B00((0), KeyAscii, global_100)
  loc_10E5C79:         Set var_CC = (0)
  loc_10E5C91:         Proc_6_138_106E830("Name"(arg_10), global_96)
  loc_10E5C9F:       End If
  loc_10E5CA2:     Else
  loc_10E5CA9:       If (var_A0 = CLng(4)) Then
  loc_10E5CC8:         If (CBool(var_CC(KeyAscii).Visible) = &HFF) Then
  loc_10E5CF5:           Proc_6_89_1470B00((), KeyAscii, global_96)
  loc_10E5D0F:           Set var_CC = (0)
  loc_10E5D27:           Proc_6_138_106E830("Name"(arg_10), global_96)
  loc_10E5D35:         End If
  loc_10E5D38:       Else
  loc_10E5D3F:         If (var_A0 = CLng(7)) Then
  loc_10E5D4C:           Set var_8C = var_CC(KeyAscii)
  loc_10E5D52:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_10E5D6D:           Proc_6_42_129B55C(var_CC, arg_10, 8)
  loc_10E5D7C:         Else
  loc_10E5D83:           If (var_A0 = CLng(8)) Then
  loc_10E5D90:             Set var_8C = var_CC(KeyAscii)
  loc_10E5D96:             Call 0.Method_TxtGrid_KeyPress0 (3)
  loc_10E5DB1:             Proc_6_42_129B55C(var_CC, arg_10, 8)
  loc_10E5DC0:           Else
  loc_10E5DC7:             If (var_A0 = CLng(3)) Then
  loc_10E5DE5:               If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E5DF4:                 Set var_8C = 3(CVar(CLng(4)))
  loc_10E5E1E:                 If (CBool(var_CC(FrameGrpItem.DispID_B).Visible) = &HFF) Then
  loc_10E5E30:                   var_C4 = "Name"
  loc_10E5E4B:                   Proc_6_89_1470B00((), KeyAscii, global_96)
  loc_10E5E5A:                 End If
  loc_10E5E5A:               End If
  loc_10E5E5A:             End If
  loc_10E5E5A:           End If
  loc_10E5E5A:         End If
  loc_10E5E5A:       End If
  loc_10E5E5A:     End If
  loc_10E5E5A:   End If
  loc_10E5E5A: End If
  loc_10E5E5A: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F63048
  'Data Table: 5B2118
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim var_8C As Frame
  loc_F62F18: On Error Goto loc_F63042
  loc_F62F1E: var_86 = KeyCode
  loc_F62F27: If (var_86 = 0) Then
  loc_F62F2E:   Set var_8C = (var_86)
  loc_F62F3D:   var_A0 = CLng(FrameGrpItem.DispID_B)
  loc_F62F4D:   If (var_A0 = CLng(2)) Then
  loc_F62F73:     If ( And (CBool(var_A0((Shift <> &HD)).Visible) = 0)) Then
  loc_F62F84:       Call TxtGrid_KeyDown(KeyCode, global_200)
  loc_F62F98:       var_A8 = "Name"
  loc_F62FB3:       Proc_6_89_1470B00((0), KeyCode, global_100)
  loc_F62FC2:     End If
  loc_F62FC5:   Else
  loc_F62FCC:     If (var_A0 = CLng(4)) Then
  loc_F62FF2:       If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_F63003:         Call TxtGrid_KeyDown(KeyCode, global_200)
  loc_F63017:         var_A8 = "Name"
  loc_F63032:         Proc_6_89_1470B00(&HFF(0), KeyCode, global_96)
  loc_F63041:       End If
  loc_F63041:     End If
  loc_F63041:   End If
  loc_F63041: End If
  loc_F63041: Exit Sub
  loc_F63042: ' Referenced from: F62F18
  loc_F63042: Proc_6_60_E63754(Shift, var_A8)
  loc_F63047: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E211C4
  'Data Table: 5B2118
  Dim arg_10 As Integer
  loc_E211AC: If (Cancel = 0) Then
  loc_E211B5:   Call Proc_258_144_18E8774(Cancel, var_88)
  loc_E211BE:   arg_10 = Not(var_88)
  loc_E211C1: End If
  loc_E211C1: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED01F8
  'Data Table: 5B2118
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED015A: Set var_88 = var_8C(Index)
  loc_ED0160: Call 0.Method_TxtGt_GotFocus0 ()
  loc_ED016E: Proc_6_74_E23240(var_8C)
  loc_ED017A: Call Proc_258_149_FD7788()
  loc_ED018E: Set var_88 = var_8C(Index)
  loc_ED0194: Call 0.Method_TxtGt_GotFocus0 (0)
  loc_ED019C: var_8C.SelStart = 
  loc_ED01B5: Set var_88 = var_8C(Index)
  loc_ED01BB: Call 0.Method_TxtGt_GotFocus0 (var_94)
  loc_ED01C3:  = var_8C.Text
  loc_ED01D6: Set var_90 = var_98(Index)
  loc_ED01DC: Call 0.Method_TxtGt_GotFocus0 (Len(var_94))
  loc_ED01E4: var_98.SelLength = 
  loc_ED01F7: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BD28
  'Data Table: 5B2118
  loc_E5BCF5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BCFE:   Proc_6_75_E5335C(Shift)
  loc_E5BD03: End If
  loc_E5BD18: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BD21:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5BD26: End If
  loc_E5BD26: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E5876C
  'Data Table: 5B2118
  loc_E5873E: Set var_88 = var_8C(KeyAscii)
  loc_E58744: Call 0.Method_TxtGt_KeyPress0 ()
  loc_E5875F: Proc_6_42_129B55C(var_8C, arg_10)
  loc_E5876B: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E48ADC
  'Data Table: 5B2118
  loc_E48ABA: Set var_88 = var_8C(Index)
  loc_E48AC0: Call 0.Method_TxtGt_LostFocus0 ()
  loc_E48ACE: Proc_6_73_E23294(var_8C)
  loc_E48ADA: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E020BC
  'Data Table: 5B2118
  loc_E020B6: Call Proc_258_158_19037C8(Cancel)
  loc_E020BB: Exit Sub
End Sub

Private Sub CmdCatType_UnknownEvent_9 '101ED20
  'Data Table: 5B2118
  Dim Me As Variant
  Dim var_A8 As Variant
  loc_101EB08: Set var_8C = Me.CmdCatType
  loc_101EB0E: Call 0.Method_CmdCatType_UnknownEvent_98 (var_8E, var_86)
  loc_101EB19: For var_92 =  To var_8E: 0 = var_92 'Integer
  loc_101EB29:   Set var_8C = Me.CmdCatType
  loc_101EB2F:   Call 0.Method_CmdCatType_UnknownEvent_90 (var_86)
  loc_101EB37:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_69(var_98)
  loc_101EB4C:   If (CInt() = 1) Then
  loc_101EB59:     Set var_8C = Me.CmdCatType
  loc_101EB5F:     Call 0.Method_CmdCatType_UnknownEvent_90 (Cancel)
  loc_101EB67:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_FFFFFDFA(var_98)
  loc_101EB75:     global_148 = CStr()
  loc_101EB86:   End If
  loc_101EB89: Next var_92 'Integer
  loc_101EB9D: Me.Filter = 0
  loc_101EBA8: Me.MoveFirst
  loc_101EBBB: Set var_8C = Me.SSPGroup
  loc_101EBC1: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101EBC9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_101EBE3: Set var_8C = Me.SSPItem
  loc_101EBE9: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101EBF1: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_101EC18: Me.Filter = CVar("CatType='" & global_148 & "'")
  loc_101EC34: var_A8 = CVar(Me.RecordCount) 'Long
  loc_101EC3B: Proc_6_39_E7D3A0(var_E0)
  loc_101EC47: global_392 = CInt(var_E0)
  loc_101EC5C: If (global_384 = "Group") Then
  loc_101EC65:   global_384 = "Group"
  loc_101EC7D:   Set var_98 = Me.SSPGroup
  loc_101ECA0:   Call Proc_258_134_1307FFC(Me.SSPGroup, CInt(4), global_396, CInt(4))
  loc_101ECAC:   global_380 = CInt(var_A8)
  loc_101ECC0: Else
  loc_101ECC6:   global_384 = "Group"
  loc_101ED01:   Call Proc_258_134_1307FFC(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPItem, var_A8)
  loc_101ED0D:   global_380 = CInt(var_A8)
  loc_101ED1E: End If
  loc_101ED1E: Exit Sub
End Sub

Private Sub SSPGroup_UnknownEvent_9 'F77790
  'Data Table: 5B2118
  Dim Me As Variant
  Dim var_CC As Variant
  loc_F7766F: Me.Filter = 0
  loc_F7767A: Me.MoveFirst
  loc_F7768C: Set var_98 = Me.SSPGroup
  loc_F77692: Call 0.Method_SSPGroup_UnknownEvent_90 (Cancel, var_9C)
  loc_F7769A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B("ItemGroup='")
  loc_F776BE: var_CC = CVar(CStr() & "' And CatType='" & global_148 & "'") 'String
  loc_F776C8: Me.Filter = var_CC
  loc_F776FE: Proc_6_39_E7D3A0(var_CC)
  loc_F7770A: global_392 = CInt(var_CC)
  loc_F7772B: If (Me.RecordCount > 0) Then
  loc_F77734:   global_384 = "Item"
  loc_F7774C:   Set var_9C = Me.SSPGroup
  loc_F7776F:   Call Proc_258_134_1307FFC(Me.SSPItem, CInt(4), global_400, CInt(4))
  loc_F7777B:   global_380 = CInt(CVar(Me.RecordCount))
  loc_F7778C: End If
  loc_F7778C: Exit Sub
End Sub

Private Sub SSPItem_UnknownEvent_9 '1477ADC
  'Data Table: 5B2118
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5B2155 As Connection15
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Fields15
  Dim var_98 As Variant
  Dim var_134 As Variant
  Dim var_178 As TextBox
  Dim var_174 As Variant
  Dim var_DC As Variant
  Dim var_90 As Recordset15
  Dim var_154 As Variant
  loc_1476EFE: Set var_94 = Me.SSPItem
  loc_1476F04: Call 0.Method_SSPItem_UnknownEvent_90 (Cancel, var_98, "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,IC.CatType,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Code='")
  loc_1476F0C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_DC)
  loc_1476F14: var_AC = CStr(-1)
  loc_1476F18: var_B0 = var_E0 & var_AC
  loc_1476F39: unk_5B2155.Execute var_B0 & "' And I.RestCode='" & global_76 & "' And I.Type='Finish' And I.DispCode <>9999 Order by I.Name", , 
  loc_1476F44: Set var_8C = var_E0
  loc_1476F68: Set var_E4 = ()
  loc_1476F6E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1476F7D: var_CC = CVar((CLng() - 1)) 'Long
  loc_1476F8D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng(0)))
  loc_1476F9E: var_124 = CVar(CStr((CLng(var_CC) - 1))) 'String
  loc_1476FA5: LateIdCallSt
  loc_1476FB9: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476FC8: var_F4 = CVar((CLng(var_124) - 1)) 'Long
  loc_1476FD0: var_114 = CVar(CLng(4)) 'Long
  loc_1477007: LateIdCallSt
  loc_1477022: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477031: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("Name").Value))) - 1)) 'Long
  loc_1477039: var_114 = CVar(CLng(&HB)) 'Long
  loc_1477070: LateIdCallSt
  loc_147708B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_147709A: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("Code").Value))) - 1)) 'Long
  loc_14770A2: var_114 = CVar(CLng(1)) 'Long
  loc_14770D9: LateIdCallSt
  loc_14770F4: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477103: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("OutletCode").Value))) - 1)) 'Long
  loc_147710B: var_114 = CVar(CLng(3)) 'Long
  loc_1477142: LateIdCallSt
  loc_147715D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_147716C: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("DispCode").Value))) - 1)) 'Long
  loc_1477174: var_114 = CVar(CLng(6)) 'Long
  loc_14771AB: LateIdCallSt
  loc_14771C6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14771D5: var_104 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("Unit").Value))) - 1)) 'Long
  loc_1477215: LateIdCallSt
  loc_147725F: Set var_E0 = var_178(CInt(1))
  loc_1477265: Call 0.Method_SSPItem_UnknownEvent_90 (var_B0, var_E4, CVar(CStr(Format("1", "0.000"))), 1, 1, CVar(CLng(7)))
  loc_147726D: var_104 = var_178.Text
  loc_1477278: var_F4 = "OutletCode"
  loc_14772B3: Call Proc_258_162_F21398(CStr(var_8C.Fields.Item("Code").Value), var_B0, CStr(var_8C.Fields.Item(var_F4).Value), var_188, var_114)
  loc_14772BB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_F4)
  loc_14772CA: var_134 = CVar((CLng(var_114) - 1)) 'Long
  loc_14772D2: var_174 = CVar(CLng(8)) 'Long
  loc_1477306: LateIdCallSt
  loc_1477351: var_98 = var_8C.Fields.Item("Code")
  loc_147736C: Set var_E0 = var_178(CInt(1))
  loc_1477372: Call 0.Method_SSPItem_UnknownEvent_90 (var_B0, var_E4, CVar(CStr(Format(CVar(var_188), "0.00"))), 1, 1)
  loc_147737A: var_174 = var_178.Text
  loc_1477385: var_F4 = "OutletCode"
  loc_14773C0: Call Proc_258_162_F21398(CStr(var_98.Value), var_B0, CStr(var_8C.Fields.Item(var_F4).Value), var_188)
  loc_14773C8: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng(7)))
  loc_14773D7: var_134 = CVar((CLng(var_F4) - 1)) 'Long
  loc_14773DF: var_174 = CVar(CLng(9)) 'Long
  loc_1477413: LateIdCallSt
  loc_1477447: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477456: var_F4 = CVar((CLng(CVar(CStr(Format(CVar(var_188), "0.00")))) - 1)) 'Long
  loc_147747A: LateIdCallSt
  loc_147748C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_147749B: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(global_188, CVar(CLng(&H15)), var_F4, 1))) - 1)) 'Long
  loc_14774BF: LateIdCallSt
  loc_14774D1: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14774E0: var_CC = CVar((CLng(CVar(Proc_6_38_E69628(global_192, CVar(CLng(&H16)), var_F4, 1))) - 1)) 'Long
  loc_14774FB: Set var_94 = var_98(CInt(3))
  loc_1477501: Call 0.Method_SSPItem_UnknownEvent_90 (var_AC, CVar(CLng(&H17)), global_192)
  loc_1477509: var_174 = var_98.Tag
  loc_1477511: var_DC = CVar(var_AC) 'String
  loc_1477518: LateIdCallSt
  loc_1477531: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477540: var_F4 = CVar((CLng(var_DC) - 1)) 'Long
  loc_147757C: LateIdCallSt
  loc_1477593: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14775A2: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("DiscApp")), CVar(CLng(&H13)), var_F4))) - 1)) 'Long
  loc_14775DE: LateIdCallSt
  loc_14775F5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477604: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RoundOff")), CVar(CLng(&H14)), var_F4))) - 1)) 'Long
  loc_1477640: LateIdCallSt
  loc_1477657: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477666: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(&H18)), var_F4))) - 1)) 'Long
  loc_14776A2: LateIdCallSt
  loc_14776B9: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14776C8: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Kitchen")), CVar(CLng(&H1A)), var_F4))) - 1)) 'Long
  loc_1477704: LateIdCallSt
  loc_147771B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_147772A: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), var_F4))) - 1)) 'Long
  loc_1477766: LateIdCallSt
  loc_147777D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_147778C: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), var_F4))) - 1)) 'Long
  loc_14777C8: LateIdCallSt
  loc_14777DF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14777EE: var_F4 = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RateEdit")), CVar(CLng(&H19)), var_F4))) - 1)) 'Long
  loc_14777F6: var_114 = CVar(CLng(&H1F)) 'Long
  loc_147782A: LateIdCallSt
  loc_1477841: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477850: var_CC = CVar((CLng(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CatType")), var_114, var_F4))) - 1)) 'Long
  loc_147785D: var_134 = vbNullString
  loc_1477866: LateIdCallSt
  loc_1477884: var_CC = "TaxStru"
  loc_14778A9: var_AC = Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_CC)), "Select * from taxStru where code='", var_DC, -1, var_E0, var_E4)
  loc_14778BD: unk_5B2155.Execute var_134 & var_AC & "'", CVar(CLng(&H1E)), var_CC
  loc_14778C8: Set var_90 = var_E0
  loc_14778F6: If (var_90.RecordCount > 0) Then
  loc_14778FC:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_134)
  loc_147790B:   var_F4 = CVar((CLng(var_114) - 1)) 'Long
  loc_1477913:   var_114 = CVar(CLng(&H10)) 'Long
  loc_147793E:   Proc_6_39_E7D3A0(var_DC, CVar(var_90.Fields.Item("Rate")))
  loc_1477947:   var_154 = CVar(CStr(var_DC)) 'String
  loc_147794E:   LateIdCallSt
  loc_1477964: End If
  loc_1477967: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1477976: var_CC = CVar((CLng(var_154) - 1)) 'Long
  loc_1477988: LateIdCallSt
  loc_1477997: Set var_94 = global_68(var_E4)
  loc_147799D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4("Rate")
  loc_14779AC: var_CC = CVar((CLng(var_114) - 1)) 'Long
  loc_14779B5: Set var_98 = var_F4("Rate")
  loc_14779BB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_14779CE: Set var_94 = ()
  loc_14779D4: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_14779E6: Set var_98 = (CVar(CLng()))
  loc_14779EC: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8()
  loc_1477A00: Call Proc_258_158_19037C8(&H32)
  loc_1477A08: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1477A17: var_CC = CVar((CLng() + 1)) 'Long
  loc_1477A1F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng()))
  loc_1477A2A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1477A39: var_CC = CVar((CLng() - 1)) 'Long
  loc_1477A4B: LateIdCallSt
  loc_1477A61: Set var_8C = Nothing
  loc_1477A69: Set var_90 = Nothing
  loc_1477A70: Set var_94 = global_68(Nothing)
  loc_1477A76: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng()))
  loc_1477A85: var_CC = CVar((CLng() - 2)) 'Long
  loc_1477A8E: Set var_98 = (CVar(CLng()))
  loc_1477A94: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_1477AA7: Set var_94 = ()
  loc_1477AAD: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_5()
  loc_1477ABC: var_CC = CVar((CLng() - 1)) 'Long
  loc_1477AC5: Set var_98 = (CVar(CLng()))
  loc_1477ACB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_D()
  loc_1477ADA: Exit Sub
End Sub

Private Sub CmdGrpDiscType_UnknownEvent_9 'EFC4B4
  'Data Table: 5B2118
  Dim var_88 As Variant
  loc_EFC3EC: Me.FrameQty.Visible = True
  loc_EFC401: Me.LblIndex.Caption = vbNullString
  loc_EFC416: Me.LblIndex.Tag = vbNullString
  loc_EFC428: Set var_88 = var_8C(Cancel)
  loc_EFC42E: Call 0.Method_CmdGrpDiscType_UnknownEvent_90 ()
  loc_EFC44B: Me.LblVtype.Caption = CStr(LblIndex.DispID_FFFFFDFA)
  loc_EFC46C: Me.LblVtype.Tag = vbNullString
  loc_EFC481: Me.TxtQty.Text = vbNullString
  loc_EFC496: Me.TxtQty.Tag = vbNullString
  loc_EFC4AA: Me.FrameGrpItem.Enabled = False
  loc_EFC4B2: Exit Sub
End Sub

Private Sub Command2_Click() 'DFF524
  'Data Table: 5B2118
  loc_DFF51C: Call TopCtrl1_UnknownEvent_14()
  loc_DFF521: Exit Sub
  loc_DFF522: Set var_5F88 = 
End Sub

Public Sub CmdQty_UnknownEvent_9(Index As Integer) '166550C
  'Data Table: 5B2118
  Dim var_88 As Integer
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_C4 As Variant
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_13C As Variant
  Dim var_C8 As String
  Dim var_184 As Double
  Dim var_15C As Variant
  Dim var_1E4 As Double
  Dim var_17C As Variant
  Dim var_1E8 As Variant
  Dim var_1F0 As Variant
  Dim var_204 As Double
  Dim var_1F8 As TextBox
  Dim var_1EC As Label
  loc_1663E1B: var_88 = Index
  loc_1663E24: If Not (var_88 = 0) Then
  loc_1663E2D:   If Not (var_88 = 1) Then
  loc_1663E36:     If Not (var_88 = 2) Then
  loc_1663E3F:       If Not (var_88 = 3) Then
  loc_1663E48:         If Not (var_88 = 4) Then
  loc_1663E51:           If Not (var_88 = 5) Then
  loc_1663E5A:             If Not (var_88 = 6) Then
  loc_1663E63:               If Not (var_88 = 7) Then
  loc_1663E6C:                 If Not (var_88 = 8) Then
  loc_1663E75:                   If (var_88 = 9) Then
  loc_1663E78:                   End If
  loc_1663E78:                 End If
  loc_1663E78:               End If
  loc_1663E78:             End If
  loc_1663E78:           End If
  loc_1663E78:         End If
  loc_1663E78:       End If
  loc_1663E78:     End If
  loc_1663E78:   End If
  loc_1663E9C:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1663EBE:     Set var_BC = Me.CmdQty
  loc_1663EC4:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1663ECC:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1663EE5:     Me.TxtQty.Text = CStr(var_88)
  loc_1663F04:   Else
  loc_1663F13:     Me.TxtQty.MaxLength = 5
  loc_1663F3A:     Set var_BC = Me.CmdQty
  loc_1663F40:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1663F48:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1663F61:     Me.TxtQty.Text = CStr()
  loc_1663F7D:   End If
  loc_1663F80: Else
  loc_1663F86:   If (var_88 = &HA) Then
  loc_1663FB3:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_1663FD5:       Set var_C0 = Me.TxtQty
  loc_1663FDB:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_1664006:       Set var_BC = Me.CmdQty
  loc_166400C:       Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1664014:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_166402D:       Me.TxtQty.Text = CStr()
  loc_1664088:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_1664098:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_16640B1:     End If
  loc_16640B4:   Else
  loc_16640BC:     If (var_88 = CInt(&HB)) Then
  loc_16640CC:       Me.TxtQty.Text = vbNullString
  loc_16640D7:     Else
  loc_16640DD:       If (var_88 = &HC) Then
  loc_16640EC:         Me.FrameQty.Visible = False
  loc_16640F7:       Else
  loc_16640FF:         If (var_88 = CInt(&HD)) Then
  loc_166413E:           Set var_C4 = Me.LblIndex
  loc_1664169:           If (((Me.LblVtype.Caption = "Qty") Or (Me.LblVtype.Caption = "Rate")) And (CDbl(Val(var_C4.Caption)) = CDbl(0))) Then
  loc_1664170:             Set var_12C = ()
  loc_166417F:             var_98 = CVar(CLng(LblIndex.DispID_C)) 'Long
  loc_1664187:             var_13C = CVar(CLng(0)) 'Long
  loc_16641AC:             If (CStr(LblIndex.DispID_41) = vbNullString) Then
  loc_16641AF:               Exit Sub
  loc_16641B0:             End If
  loc_16641D5:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_16641F8:               If (Me.TxtQty.Text = vbNullString) Then
  loc_1664208:                 Me.TxtQty.Text = "1"
  loc_1664210:               End If
  loc_1664239:               var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1664241:               var_15C = CVar(CLng(7)) 'Long
  loc_166426E:               var_118 = CVar(CStr(Format(CVar(Val(Me.TxtQty.Text)), "0.000"))) 'String
  loc_1664275:               LateIdCallSt
  loc_1664290:             End If
  loc_16642B5:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(3)) Then
  loc_16642D2:               var_184 = Val(Me.TxtQty.Text)
  loc_16642E1:               var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16642E9:               var_15C = CVar(CLng(8)) 'Long
  loc_1664316:               var_118 = CVar(CStr(Format(CVar(var_184), "0.00"))) 'String
  loc_166431D:               LateIdCallSt
  loc_1664338:             End If
  loc_166433D:             Call Proc_258_158_19037C8(&H32, var_12C, var_118, 1, 1, var_15C, var_13C, var_184)
  loc_1664344:             Set var_12C = Nothing 
  loc_166434B:           Else
  loc_166436B:             If (Me.LblVtype.Caption = "Free Qty") Then
  loc_1664372:               Set var_18C = var_118(var_12C)
  loc_1664381:               var_98 = CVar(CLng(LblVtype.DispID_C)) 'Long
  loc_1664389:               var_13C = CVar(CLng(0)) 'Long
  loc_16643AE:               If (CStr(LblVtype.DispID_41) = vbNullString) Then
  loc_16643B1:                 Exit Sub
  loc_16643B2:               End If
  loc_16643D7:               If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(5)) Then
  loc_16643E6:                 var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16643EE:                 var_13C = CVar(CLng(7)) 'Long
  loc_1664439:                 var_D0 = Me.TxtQty.Text
  loc_1664463:                 If ((CDbl(Val(Me.TxtQty.Text)) > CDbl(Val(CStr(TxtQty.DispID_41)))) Or (CDbl(Val(var_D0)) = CDbl(0))) Then
  loc_1664466:                   Exit Sub
  loc_166446A:                 Else
  loc_1664476:                   var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_166447E:                   var_13C = CVar(CLng(7)) 'Long
  loc_16644CD:                   If (CDbl(Val(Me.TxtQty.Text)) = CDbl(Val(CStr(TxtQty.DispID_41)))) Then
  loc_16644DC:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16644E4:                     var_13C = CVar(CLng(8)) 'Long
  loc_16644E9:                     var_15C = "0.00"
  loc_16644F2:                     LateIdCallSt
  loc_1664509:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1664511:                     var_13C = CVar(CLng(9)) 'Long
  loc_1664516:                     var_15C = "0.00"
  loc_166451F:                     LateIdCallSt
  loc_1664536:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_166453E:                     var_13C = CVar(CLng(&H1E)) 'Long
  loc_1664543:                     var_15C = "Free"
  loc_166454C:                     LateIdCallSt
  loc_166455A:                   Else
  loc_1664566:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_166456E:                     var_13C = CVar(CLng(7)) 'Long
  loc_1664589:                     var_184 = Val(CStr(TxtQty.DispID_41))
  loc_16645B5:                     var_17C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16645DE:                     var_F4 = CVar((var_184 - Val(Me.TxtQty.Text))) 'Double
  loc_16645F5:                     LateIdCallSt
  loc_1664632:                     var_1E4 = Val(Me.TxtQty.Text)
  loc_166464C:                     Call Proc_258_141_12F9380(var_1E4, CInt(CLng(TxtQty.DispID_C)), var_1E4, var_18C, CVar(CStr(Format(Format(CVar(var_184), "0.00"), "0.00"))), 1, 1, CVar(CLng(7)))
  loc_166465A:                   End If
  loc_166465A:                 End If
  loc_166465A:               End If
  loc_166465F:               Call Proc_258_158_19037C8(&H32, var_17C, var_1E4, var_184, var_13C)
  loc_1664666:               Set var_18C = Nothing 
  loc_166466D:             Else
  loc_16646B5:               If ((Me.LblVtype.Caption = "Cash Recd.") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_16646C5:                 var_C8 = Me.TxtQty.Text
  loc_16646D2:                 var_184 = Val(var_C8)
  loc_16646FC:                 var_CC = CStr(Format(CVar(var_184), "0.00"))
  loc_166470B:                 Set var_C0 = var_C4(CInt(6))
  loc_1664711:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_CC, 1, 1, var_184)
  loc_1664719:                 var_C4.Text = var_98
  loc_1664745:                 Set var_BC = var_C0(CInt(6))
  loc_166474B:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_C8, var_18C)
  loc_1664753:                 var_15C = var_C0.Text
  loc_1664760:                 var_184 = Val(var_C8)
  loc_166476A:                 Set var_C4 = var_184(var_186)
  loc_1664770:                 Call 0.Method_CmdQty_UnknownEvent_98 (var_13C)
  loc_1664782:                 Set var_D4 = var_1E8(var_186)
  loc_1664788:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_1664790:                  = var_1E8.Text
  loc_166479D:                 var_1E4 = Val(var_CC)
  loc_16647AE:                 Set var_1EC = var_1F0(CInt(7))
  loc_16647B4:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_D0)
  loc_16647EC:                 var_A8 = CVar(((var_184 - var_1F0.Text) - Val(var_D0))) 'Double
  loc_166480A:                 Set var_1F4 = var_1F8(CInt(8))
  loc_1664810:                 Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(var_184), "0.00")), 1)
  loc_1664818:                 var_1F8.Text = 1
  loc_1664849:               Else
  loc_1664891:                 If ((Me.LblVtype.Caption = "Tip Amount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_16648A1:                   var_C8 = Me.TxtQty.Text
  loc_16648AE:                   var_184 = Val(var_C8)
  loc_16648D8:                   var_CC = CStr(Format(CVar(var_184), "0.00"))
  loc_16648E7:                   Set var_C0 = var_C4(CInt(7))
  loc_16648ED:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC, 1, 1)
  loc_16648F5:                   var_C4.Text = var_184
  loc_1664921:                   Set var_BC = var_C0(CInt(6))
  loc_1664927:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_166492F:                   var_204 = var_C0.Text
  loc_166493C:                   var_184 = Val(var_C8)
  loc_1664946:                   Set var_C4 = var_184(var_186)
  loc_166494C:                   Call 0.Method_CmdQty_UnknownEvent_98 ()
  loc_166495E:                   Set var_D4 = var_1E8(var_186)
  loc_1664964:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_166496C:                    = var_1E8.Text
  loc_1664979:                   var_1E4 = Val(var_CC)
  loc_166498A:                   Set var_1EC = var_1F0(CInt(7))
  loc_1664990:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_D0)
  loc_16649C8:                   var_A8 = CVar(((var_184 - var_1F0.Text) - Val(var_D0))) 'Double
  loc_16649E6:                   Set var_1F4 = var_1F8(CInt(8))
  loc_16649EC:                   Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(var_184), "0.00")), 1)
  loc_16649F4:                   var_1F8.Text = 1
  loc_1664A25:                 Else
  loc_1664A6D:                   If ((Me.LblVtype.Caption = "Bill Discount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1664A79:                     Set var_BC = 1(var_86)
  loc_1664A95:                     For var_208 =  To CInt((CLng(LblIndex.DispID_4) - 1)):                 var_204 = var_208 'Integer
  loc_1664A9F:                       var_98 = CVar(CLng(var_86)) 'Long
  loc_1664AB6:                       Set var_BC = CVar(CLng(&HE))("0.00")
  loc_1664ABC:                       LateIdCallSt
  loc_1664ADC:                       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H13)))
  loc_1664AFE:                       If (CStr(LblIndex.DispID_41) = "Y") Then
  loc_1664B05:                         var_98 = CVar(CLng(var_86)) 'Long
  loc_1664B36:                         Set var_C0 = CVar(CLng(&HE))(CVar(CStr(Val(Me.TxtQty.Text))))
  loc_1664B3C:                         LateIdCallSt
  loc_1664B51:                       End If
  loc_1664B54:                     Next var_208 'Integer
  loc_1664B5E:                     Call Proc_258_158_19037C8(&H32)
  loc_1664B66:                   Else
  loc_1664BBD:                     Set var_D4 = Me.LblVtype
  loc_1664BD8:                     Set var_1E8 = Me.LblVtype
  loc_1664C0E:                     Set var_1F0 = Me.LblIndex
  loc_1664C49:                     If (((((((Me.LblVtype.Caption = "Beverage") Or (Me.LblVtype.Caption = "Confectionary")) Or (Me.LblVtype.Caption = "Food")) Or (var_D4.Caption = "Liquor")) Or (var_1E8.Caption = "Tobacco")) Or (Me.LblVtype.Caption = "Miscellaneous")) And (CDbl(Val(var_1F0.Caption)) = CDbl(0))) Then
  loc_1664C55:                       Set var_BC = 1(var_86)
  loc_1664C71:                       For var_218 =  To CInt((CLng(LblIndex.DispID_4) - 1)):                    = var_218 'Integer
  loc_1664C8C:                         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H13)))
  loc_1664CBA:                         Set var_C0 = CVar(CLng(var_86))(CVar(CLng(&H1F)))
  loc_1664CFF:                         If ((CStr(LblIndex.DispID_41) = "Y") And (CStr(LblIndex.DispID_41) = Me.LblVtype.Caption)) Then
  loc_1664D06:                           var_98 = CVar(CLng(var_86)) 'Long
  loc_1664D37:                           Set var_C0 = CVar(CLng(&HE))(CVar(CStr(Val(Me.TxtQty.Text))))
  loc_1664D3D:                           LateIdCallSt
  loc_1664D52:                         End If
  loc_1664D55:                       Next var_218 'Integer
  loc_1664D5F:                       Call Proc_258_158_19037C8(&H32)
  loc_1664D67:                     Else
  loc_1664DAF:                       If ((Me.LblVtype.Caption = "Item Discount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1664DB6:                         Set var_BC = ()
  loc_1664DD6:                         Set var_C0 = CVar(CLng(LblIndex.DispID_C))(CVar(CLng(&H13)))
  loc_1664E00:                         If (CStr(LblIndex.DispID_41) = "Y") Then
  loc_1664E07:                           Set var_C0 = ()
  loc_1664E16:                           var_98 = CVar(CLng(LblIndex.DispID_C)) 'Long
  loc_1664E47:                           Set var_C4 = CVar(CLng(&HE))(CVar(CStr(Val(Me.TxtQty.Text))))
  loc_1664E4D:                           LateIdCallSt
  loc_1664E68:                         End If
  loc_1664E6D:                         Call Proc_258_158_19037C8(&H32, var_C4)
  loc_1664E75:                       Else
  loc_1664E9A:                         If (CDbl(Val(Me.LblIndex.Caption)) <> CDbl(0)) Then
  loc_1664EBD:                           If (Me.TxtQty.Tag = "P") Then
  loc_1664EF7:                             var_1E4 = Val(Me.LblVtype.Tag)
  loc_1664F30:                             Set var_C4 = var_D4(CInt(var_1E4))
  loc_1664F36:                             Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(Val(Me.TxtQty.Text)), "0.00")), 1, 1)
  loc_1664F3E:                             var_D4.Text = var_1E4
  loc_1664F63:                           Else
  loc_1664F7D:                             var_184 = Val(Me.TxtQty.Text)
  loc_1664F87:                             Set var_C0 = Me.LblVtype
  loc_1664F8D:                             var_CC = var_C0.Tag
  loc_1664F9A:                             var_1E4 = Val(var_CC)
  loc_1664FC4:                             var_D0 = CStr(Format(CVar(var_184), "0.00"))
  loc_1664FD3:                             Set var_C4 = var_D4(CInt(var_1E4))
  loc_1664FD9:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_D0, 1, 1, var_1E4)
  loc_1664FE1:                             var_D4.Text = var_184
  loc_1665003:                           End If
  loc_1665010:                           var_C8 = Me.LblVtype.Tag
  loc_1665021:                           Call Proc_258_158_19037C8(CInt(Val(var_C8)), var_184)
  loc_166503A:                           Set var_BC = var_C0(CInt(6))
  loc_1665040:                           Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_1665048:                           var_98 = var_C0.Text
  loc_1665068:                           Set var_C4 = var_D4(CInt(7))
  loc_166506E:                           Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_1665076:                           (CDbl(Val(var_C8)) <> CDbl(0)) = var_D4.Text
  loc_166509B:                           If ( Or (CDbl(Val(var_CC)) <> CDbl(0))) Then
  loc_16650AC:                             Set var_BC = var_C0(CInt(6))
  loc_16650B2:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_16650BA:                              = var_C0.Text
  loc_16650C7:                             var_184 = Val(var_C8)
  loc_16650D1:                             Set var_C4 = var_184(var_186)
  loc_16650D7:                             Call 0.Method_CmdQty_UnknownEvent_98 ()
  loc_16650E9:                             Set var_D4 = var_1E8(var_186)
  loc_16650EF:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_16650F7:                              = var_1E8.Text
  loc_1665104:                             var_1E4 = Val(var_CC)
  loc_1665115:                             Set var_1EC = var_1F0(CInt(7))
  loc_166511B:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_D0)
  loc_1665153:                             var_A8 = CVar(((var_184 - var_1F0.Text) - Val(var_D0))) 'Double
  loc_1665171:                             Set var_1F4 = var_1F8(CInt(8))
  loc_1665177:                             Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(var_184), "0.00")), 1)
  loc_166517F:                             var_1F8.Text = 1
  loc_16651AD:                           End If
  loc_16651DA:                           If (CDbl(Val(Me.LblIndex.Caption)) >= CDbl(UBound(global_404, 1))) Then
  loc_16651E9:                             Me.FrameGrpItem.Enabled = True
  loc_16651F4:                           Else
  loc_1665214:                             var_CC = CStr((Val(Me.LblIndex.Caption) + CDbl(1)))
  loc_1665221:                             Me.LblIndex.Caption = var_CC
  loc_1665240:                             Set var_BC = var_86(var_186)
  loc_1665246:                             Call 0.Method_CmdQty_UnknownEvent_98 (1)
  loc_1665251:                             For var_21C =  To var_186:                         var_204 = var_21C 'Integer
  loc_1665264:                               var_C8 = Me.LblIndex.Caption
  loc_1665286:                               Set var_C0 = var_C4(var_86)
  loc_166528C:                               Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_1665294:                               global_404(CLng(Val(var_C8))) = var_C4.Tag
  loc_16652AE:                               If ( = var_CC) Then
  loc_16652BE:                                 Set var_BC = var_C0(var_86)
  loc_16652C4:                                 Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_16652CC:                                  = var_C0.Caption
  loc_16652DE:                                 Me.LblVtype.Caption = var_C8
  loc_1665301:                                 Me.LblVtype.Tag = CStr(var_86)
  loc_1665332:                                 Set var_C0 = Me.TxtQty
  loc_1665338:                                 var_C0.Tag = global_408(CLng(Val(Me.LblIndex.Caption)))
  loc_1665354:                                 var_C8 = Me.TxtQty.Tag
  loc_1665367:                                 If (var_C8 = "P") Then
  loc_1665377:                                   Set var_BC = var_C0(var_86)
  loc_166537D:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_1665385:                                    = var_C0.Text
  loc_1665392:                                   var_184 = Val(var_C8)
  loc_16653A2:                                   Set var_C4 = var_D4(var_86)
  loc_16653A8:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_16653EB:                                   Me.TxtQty.Text = CStr(IIf((CDbl(var_D4.Text) > CDbl(0)), CVar(var_CC), vbNullString))
  loc_1665412:                                 Else
  loc_166541F:                                   Set var_BC = var_C0(var_86)
  loc_1665425:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_166542D:                                    = var_C0.Text
  loc_166543A:                                   var_184 = Val(var_C8)
  loc_166544A:                                   Set var_C4 = var_D4(var_86)
  loc_1665450:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_1665493:                                   Me.TxtQty.Text = CStr(IIf((CDbl(var_D4.Text) > CDbl(0)), CVar(var_CC), vbNullString))
  loc_16654B7:                                 End If
  loc_16654B7:                               End If
  loc_16654BA:                             Next var_21C 'Integer
  loc_16654BF:                           End If
  loc_16654BF:                         End If
  loc_16654BF:                       End If
  loc_16654BF:                     End If
  loc_16654BF:                   End If
  loc_16654BF:                 End If
  loc_16654BF:               End If
  loc_16654BF:             End If
  loc_16654BF:           End If
  loc_16654CB:           Me.FrameQty.Visible = False
  loc_16654D6:         Else
  loc_16654DE:           If (var_88 = CInt(&HC)) Then
  loc_16654ED:             Me.FrameGrpItem.Enabled = True
  loc_1665503:             (True).Enabled = 
  loc_166550B:           End If
  loc_166550B:         End If
  loc_166550B:       End If
  loc_166550B:     End If
  loc_166550B:   End If
  loc_166550B: End If
  loc_166550B: Exit Sub
End Sub

Private Sub cmdCashReg_Click() '1913D1C
  'Data Table: 5B2118
  Dim var_C0 As Variant
  Dim var_D8 As Variant
  Dim var_130 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_100 As Variant
  Dim var_160 As Variant
  Dim var_C4 As String
  Dim unk_5B2155 As Connection15
  Dim var_B0 As Recordset15
  Dim var_C8 As Variant
  Dim var_19C As String
  Dim var_1A0 As String
  Dim var_1A8 As String
  Dim var_1B4 As Double
  Dim var_A0 As Integer
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_DC As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As Variant
  Dim var_E0 As Variant
  Dim var_190 As Variant
  Dim var_1E0 As Variant
  Dim var_1C0 As Fields15
  Dim var_518 As Double
  Dim var_520 As Double
  Dim var_528 As Double
  Dim var_530 As Double
  Dim var_224 As String
  Dim var_210 As Variant
  Dim var_2B4 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_4E8 As Variant
  Dim var_A6 As Integer
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_9C As Recordset15
  Dim var_90 As Recordset15
  Dim var_510 As Fields15
  Dim var_434 As Variant
  Dim var_4B8 As Variant
  Dim var_50C As Variant
  Dim var_568 As Variant
  loc_191130D:  = (var_C4).Caption
  loc_1911320: If (var_C4 = "Update &Cash Register") Then
  loc_191132E:   Set var_C0 = var_C8(CInt(0))
  loc_1911334:   Call 0.Method_cmdCashReg_Click0 ()
  loc_1911357:   Set var_DC = var_E0(CInt(0))
  loc_191135D:   Call 0.Method_cmdCashReg_Click0 ((IsDate(CVar(var_C8)) = 0))
  loc_191136C:   var_100 = Trim(CVar(var_E0))
  loc_1911396:   If CBool( Or (var_100 = vbNullString)) Then
  loc_19113BA:     MsgBox("Please Check Bill Date.", &H40, "Validation...", var_100, var_120)
  loc_19113CA:     Call Proc_258_165_F81234()
  loc_19113CF:     Exit Sub
  loc_19113D0:   End If
  loc_19113DB:   Set var_C0 = var_C8(CInt(1))
  loc_19113E1:   Call 0.Method_cmdCashReg_Click0 ()
  loc_1911412:   Set var_DC = var_E0(CInt(1))
  loc_1911418:   Call 0.Method_cmdCashReg_Click0 (1)
  loc_1911420:   var_120 = CVar(var_E0) 'Address
  loc_191143C:   var_180 =  Or (InStr((Trim(CVar(var_C8)) = vbNullString), var_120, ".mdb", 0) <= 0)
  loc_1911454:   If CBool(var_180) Then
  loc_1911462:     var_F0 = "Validation..."
  loc_1911478:     MsgBox("Please verify database.", &H40, var_F0, var_100, var_120)
  loc_1911488:     Call Proc_258_165_F81234()
  loc_191148D:     Exit Sub
  loc_191148E:   End If
  loc_19114AB:   Set var_C0 = var_C8(CInt(0))
  loc_19114B1:   Call 0.Method_cmdCashReg_Click0 ("SELECT count(*) FROM Paycharge WHERE VDate=", var_180)
  loc_19114C0:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_19114C8:   var_100 = -1 & var_F0 
  loc_19114D1:   var_120 = var_100 & " AND VType='" 
  loc_19114DE:   var_140 = var_120 & CVar(global_184) 
  loc_19114E7:   var_170 = var_140 & "'" 
  loc_19114F5:   unk_5B2155.Execute CStr(var_170), var_DC, 
  loc_1911538:   var_C8 = var_DC.Fields.Item(0)
  loc_1911563:   If (CDbl(Val(CStr(var_C8.Value))) > CDbl(0)) Then
  loc_1911571:     var_F0 = "Cash Register..."
  loc_19115A6:     If (MsgBox(CVar("Data Allready Transfered for this Data!" & vbCrLf & "Do You want Continue...?"), &H14, var_F0, var_100, var_120) = 7) Then
  loc_19115A9:       Call Proc_258_165_F81234()
  loc_19115BB:       ("Update &Cash Register").Caption = 
  loc_19115C3:       Exit Sub
  loc_19115C7:     Else
  loc_19115E4:       Set var_C0 = var_C8(CInt(0))
  loc_19115EA:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM CashRegData WHERE VDate=", var_120)
  loc_19115F9:       Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1911601:       var_100 = -1 & var_F0 
  loc_191160F:       unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1911646:       Set var_C0 = var_C8(CInt(0))
  loc_191164C:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Stock WHERE VDate=", var_120)
  loc_191165B:       Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1911663:       var_100 = -1 & var_F0 
  loc_1911671:       unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_19116A8:       Set var_C0 = var_C8(CInt(0))
  loc_19116AE:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale1 WHERE VDate=", var_120)
  loc_19116BD:       Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_19116C5:       var_100 = -1 & var_F0 
  loc_19116D3:       unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_191170A:       Set var_C0 = var_C8(CInt(0))
  loc_1911710:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale2 WHERE VDate=", var_120)
  loc_191171F:       Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1911727:       var_100 = -1 & var_F0 
  loc_1911735:       unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_191176C:       Set var_C0 = var_C8(CInt(0))
  loc_1911772:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM SunTran WHERE VDate=", var_120)
  loc_1911781:       Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1911789:       var_100 = -1 & var_F0 
  loc_1911797:       unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_19117CE:       Set var_C0 = var_C8(CInt(0))
  loc_19117D4:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Paycharge WHERE VDate=", var_120)
  loc_19117E3:       Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_19117EB:       var_100 = -1 & var_F0 
  loc_19117EF:       var_C4 = CStr(var_100)
  loc_19117F9:       unk_5B2155.Execute var_C4, var_DC, 
  loc_1911813:     End If
  loc_1911813:   End If
  loc_1911820:   ("&Cancel Update").Caption = 
  loc_1911834:   (&HFF).Enabled = 
  loc_1911844:   Call Proc_258_140_134E0B0(CByte(0))
  loc_1911863:   If (Me.Connection15.State = 1) Then
  loc_191186F:     Me.Connection15.Close
  loc_1911874:   End If
  loc_1911890:   Set var_C0 = var_C8(CInt(1))
  loc_1911896:   Call 0.Method_cmdCashReg_Click0 (var_C4, "Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=", vbNullString)
  loc_191189E:   vbNullString = var_C8.Text
  loc_19118A7:   var_19C = -1 & var_C4
  loc_19118CF:   Me.Connection15.Open var_19C & ";Data Source=" & MemVar_1F95098 & ";pwd=" & MemVar_1F950DC, , , 
  loc_19118EA: End If
  loc_1911907: Set var_C0 = var_C8(CInt(0))
  loc_191190D: Call 0.Method_cmdCashReg_Click0 ("SELECT * FROM ItemData WHERE BillDate =", var_120)
  loc_191191C: Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1911924: var_100 = -1 & var_F0 
  loc_1911935: Me.Connection15.Execute CStr(var_100), var_DC, 
  loc_1911940: Set var_B0 = var_DC
  loc_191195E: var_198 = var_B0.RecordCount
  loc_191196C: If (var_198 > 0) Then
  loc_19119B2:   Call Proc_258_138_1150180(MemVar_1F95044, CVar(Val(CStr(var_B0.Fields.Item("BillNo").Value))))
  loc_19119BA:   var_B4 = var_19C
  loc_19119D7:   unk_5B2155.BeginTrans var_198
  loc_19119DC:   ' Referenced from: 191227F
  loc_19119EB:   If Not(var_B0.EOF) Then
  loc_1911A07:     var_A0 = CInt(Val(CStr(var_B0.RecordCount)))
  loc_1911A16:     var_A0 = CInt((CDbl(var_A0) / CDbl(2)))
  loc_1911A31:     var_1B4 = Val(CStr(var_B0.AbsolutePosition))
  loc_1911A40:     If (CDbl(var_A0) = CDbl(var_1B4)) Then
  loc_1911A4B:       Call Proc_258_140_134E0B0(CByte(1), var_1B4, var_A0)
  loc_1911A50:     End If
  loc_1911A8C:     var_F0 = "SELECT Code,DispCode,Unit,RestCode,SaleRate AS Rate,DiscApp,Kitchen FROM ItemMast WHERE DispCode=" & var_B0.Fields.Item("ItemCode").Value 
  loc_1911A9A:     unk_5B2155.Execute CStr(var_F0), var_100, -1
  loc_1911AA5:     Set var_BC = var_DC
  loc_1911AD1:     If (var_BC.RecordCount > 0) Then
  loc_1911B1A:       If (CDbl(Val(CStr(var_B0.Fields.Item("BillNo").Value))) = CDbl(var_A6)) Then
  loc_1911B23:         var_96 = (var_96 + 1)
  loc_1911B29:       Else
  loc_1911B2B:         var_96 = 1
  loc_1911B61:         var_1B4 = Val(CStr(var_B0.Fields.Item("BillNo").Value))
  loc_1911B6A:         var_F0 = CVar(var_1B4) 'Double
  loc_1911B71:         Call Proc_258_138_1150180(MemVar_1F95044, var_F0, var_19C, var_1B4, var_96)
  loc_1911B79:         var_B4 = var_19C
  loc_1911BBB:         var_100 = CVar("SELECT Count(*) FROM CashRegData WHERE DocId='" & var_B4 & "' AND SNo=" & CStr(var_96) & " AND VDate=") 'String
  loc_1911BE4:         Proc_6_7_F26918(var_F0, CVar(var_B0.Fields.Item("Billdate")), var_100, var_140, -1, var_DC)
  loc_1911BFA:         unk_5B2155.Execute CStr(var_96 & var_F0), var_DC, var_A0
  loc_1911C05:         Set var_B8 = var_DC
  loc_1911C29:       End If
  loc_1911C5C:       var_1B4 = Val(CStr(var_B0.Fields.Item("BillNo").Value))
  loc_1911C85:       Proc_6_7_F26918(var_100, CVar(var_B0.Fields.Item("Billdate")), var_1B4)
  loc_1911C8D:       var_160 = 0
  loc_1911CCD:       Me.Connection15.Execute CStr(CVar("SELECT BillTime FROM BillData WHERE BillNo=" & CStr(var_1B4) & "AND BillDate=") & var_100), var_170, -1
  loc_1911CD5:       var_1B8 = var_1B8.Fields
  loc_1911CDD:       var_160 = var_1BC.Item(var_1BC)
  loc_1911CFA:       var_AC = CStr(Left(CVar(var_1C0), 5))
  loc_1911D40:       If (InStr(4, var_AC, ":", 0) > 0) Then
  loc_1911D60:         var_F0 = ("0" + Left(var_AC, 4))
  loc_1911D65:         var_AC = CStr(CVar(var_B0.Fields.Item("Billdate")))
  loc_1911D6F:       End If
  loc_1911D95:       Proc_6_7_F26918(CVar(var_B0.Fields.Item("Billdate")), CVar(var_B0.Fields.Item("Billdate")), var_1C0)
  loc_1911DE5:       var_100 = "DELETE FROM CashRegData WHERE VDate=" & CVar(var_B0.Fields.Item("Billdate")) 
  loc_1911E1A:       unk_5B2155.Execute CStr(var_100 & " AND VNo=" & CVar(Val(CStr(var_B0.Fields.Item("BillNo").Value))) & " AND SNo=" & CVar(var_96)), var_210, -1
  loc_1911E79:       var_1B4 = Val(CStr(var_B0.Fields.Item("BillNo").Value))
  loc_1911E8B:       var_DC = var_B0.Fields
  loc_1911E93:       var_E0 = var_DC.Item("Billdate")
  loc_1911EA2:       Proc_6_7_F26918(var_100, CVar(var_E0), var_1B4, var_1B8)
  loc_1911EB9:       var_1B8 = var_BC.Fields
  loc_1911F28:       var_518 = Val(CStr(var_B0.Fields.Item("ItemQty").Value))
  loc_1911F5E:       var_520 = Val(CStr(var_BC.Fields.Item("Rate").Value))
  loc_1911F94:       var_528 = Val(CStr(var_BC.Fields.Item("Rate").Value))
  loc_1911FCA:       var_530 = Val(CStr(var_B0.Fields.Item("ItemQty").Value))
  loc_1911FDB:       Proc_6_7_F26918(var_4B8, Date, var_530, var_528, var_520)
  loc_1911FFB:       var_19C = "INSERT INTO CashRegData " & "(DocId,SNo,VType,VNo,Site_Code,VPrefix,VDate,VTime,RestCode," & "RoomCat,RoomType,RoomNo,Item,Qty,Rate,Amount,"
  loc_191203B:       var_224 = var_19C & "VoidYN,Pending," & "U_Name,U_EntDt,U_AE,DelFlag) VALUES " & "('" & var_B4 & "'," & CStr(var_96) & ",'" & global_312
  loc_1912074:       var_120 = CVar(var_224 & "'," & CStr(var_1B4) & ",'" & MemVar_1F95078 & "','" & global_164 & "',") 'String
  loc_191208D:       var_180 = var_120 & var_100 & ",'" & CVar(var_AC) 
  loc_19120CC:       var_2E8 = var_180 & "','" & CVar(global_76) & "'" & ",'REST','TB','" & var_1B8.Item("DispCode").Value & "','" & var_BC.Fields.Item("Code").Value 
  loc_19120D5:       var_308 = var_2E8 & "'," 
  loc_191212E:       var_4E8 = var_308 & CVar(var_518) & "," & CVar(var_520) & "," & CVar((var_528 * var_530)) & ",'N','N'" & ",'SA'," & var_4B8 & ",'A','N')" 
  loc_191213C:       unk_5B2155.Execute CStr(var_4E8), var_50C, -1
  loc_19121F6:       var_C8 = var_B0.Fields.Item("BillNo")
  loc_1912210:       var_A6 = CInt(Val(CStr(var_C8.Value)))
  loc_1912223:     Else
  loc_1912247:       var_19C = "Item details not found!" & vbCrLf & "Please validate Item Master."
  loc_1912255:       var_D8 = CVar(var_19C & vbCrLf & " And Re-Update Cash Register...") 'String
  loc_1912258:       MsgBox(var_C8.Value, &H10, "Cash Register...", var_100, var_120)
  loc_1912271:       Call Proc_258_165_F81234(var_A6, var_510, var_518)
  loc_1912276:       Exit Sub
  loc_1912277:     End If
  loc_191227A:     var_B0.MoveNext
  loc_191227F:     GoTo loc_19119DC
  loc_1912282:   End If
  loc_1912288:   unk_5B2155.CommitTrans
  loc_1912292:   Set var_BC = Nothing
  loc_1912298: Else
  loc_19122A4:   var_1B4(0).Enabled = var_19C
  loc_19122B4:   Call Proc_258_140_134E0B0(CByte(0))
  loc_19122C6:   var_1B4("Update &Cash Register").Caption = 
  loc_19122D9:   var_F0 = "Cash Register..."
  loc_19122EF:   MsgBox("No more record for updation.", &H40, var_F0, var_100, var_120)
  loc_19122FF:   Call Proc_258_165_F81234()
  loc_1912304:   Exit Sub
  loc_1912305: End If
  loc_191230D: Call Proc_258_140_134E0B0(CByte(2))
  loc_191232F: Set var_C0 = var_C8(CInt(0))
  loc_1912335: Call 0.Method_cmdCashReg_Click0 ("SELECT Distinct DocId,VNo,VDate,VTime,VType,VPrefix,RestCode FROM CashRegData WHERE Vdate=", var_120)
  loc_1912344: Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_191234C: var_100 = -1 & var_F0 
  loc_191235A: unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1912365: Set var_8C = var_DC
  loc_1912387: Set var_C0 = Me.TopCtrl1
  loc_191238D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Add")
  loc_191239C: Call Proc_258_157_1BC3D2C(MemVar_1F950EC)
  loc_19123AB: Set var_C0 = Me.TopCtrl1
  loc_19123B1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Browse")
  loc_19123CD: If (var_8C.RecordCount > 0) Then
  loc_19123D0:   ' Referenced from: 191342C
  loc_19123DF:   If Not(var_8C.EOF) Then
  loc_19123EC:     Set var_C0 = Me.TopCtrl1
  loc_19123F2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Add")
  loc_1912433:     Set var_DC = var_E0(CInt(0))
  loc_1912439:     Call 0.Method_cmdCashReg_Click0 (CStr(var_8C.Fields.Item("VNo").Value))
  loc_1912441:     var_E0.Text = 
  loc_1912490:     Set var_DC = var_E0(CInt(1))
  loc_1912496:     Call 0.Method_cmdCashReg_Click0 (CStr(var_8C.Fields.Item("VDate").Value))
  loc_191249E:     var_E0.Text = 
  loc_19124ED:     Set var_DC = var_E0(CInt(2))
  loc_19124F3:     Call 0.Method_cmdCashReg_Click0 (CStr(var_8C.Fields.Item("DocID").Value))
  loc_19124FB:     var_E0.Text = 
  loc_191254C:     var_100 = Format(CVar(var_8C.Fields.Item("VTIME")), "hh:nn")
  loc_1912563:     Set var_DC = var_E0(CInt(5))
  loc_1912569:     Call 0.Method_cmdCashReg_Click0 (CStr(var_100), 1)
  loc_1912571:     var_E0.Text = 1
  loc_1912596:     If (global_240 = "N") Then
  loc_191259D:       Set var_88 = New 
  loc_19125A8:       Me.Recordset15.CursorLocation = 3
  loc_19125E0:       var_1B4 = Val(CStr(var_8C.Fields.Item("VNo").Value))
  loc_1912609:       Proc_6_7_F26918(var_100, CVar(var_8C.Fields.Item("VDate")))
  loc_1912627:       var_1A0 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,IC.CatType,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((CashRegData K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VNo=" & CStr(var_1B4)
  loc_191264B:       unk_5B2155.Execute CStr(CVar(var_1A0 & " AND k.VDate=") & var_100 & " AND DelFlag<>'Y' Order by K.DOCID,K.SNo"), var_180, -1
  loc_1912656:       Set var_88 = var_1B8
  loc_1912694:       If (var_88.RecordCount > 0) Then
  loc_19126A0:         Set var_C0 = var_1B8(False)
  loc_19126A6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19(var_1B4)
  loc_19126B2:         Set var_C0 = ()
  loc_19126B8:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19126C8:         var_96 = CInt((CLng() - 1))
  loc_19126D1:         ' Referenced from: 19131A0
  loc_19126E0:         If Not(var_88.EOF) Then
  loc_19126EC:           Set var_C0 = 1(var_A0)
  loc_19126F2:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_96)
  loc_1912708:           For var_534 =  To CInt((CLng() - 1)):  = var_534 'Integer
  loc_1912723:             Set var_C0 = CVar(CLng(var_A0))(CVar(CLng(&HD)))
  loc_1912729:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_191277B:             Set var_E0 = CVar(CLng(var_A0))(CVar(CLng(&HC)))
  loc_1912781:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CVar(CStr()) = var_88.Fields.Item("DocID").Value))
  loc_19127E2:             If CBool( And (CVar(CStr()) = var_88.Fields.Item("SNo").Value)) Then
  loc_19127E9:               var_9E = CByte(1) 'Byte
  loc_19127ED:               GoTo loc_1913190
  loc_19127F0:             End If
  loc_19127F3:           Next var_534 'Integer
  loc_1912802:           Set var_C0 = (vbNullString)
  loc_1912808:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1912817:           Set var_538 = ()
  loc_191281E:           var_110 = CVar(CLng(var_96)) 'Long
  loc_1912826:           var_150 = CVar(CLng(0)) 'Long
  loc_1912830:           var_D8 = CVar(CStr(var_96)) 'String
  loc_1912837:           LateIdCallSt
  loc_1912846:           var_130 = CVar(CLng(var_96)) 'Long
  loc_191284E:           var_160 = CVar(CLng(&HB)) 'Long
  loc_191287E:           var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1912885:           LateIdCallSt
  loc_191289F:           var_130 = CVar(CLng(var_96)) 'Long
  loc_19128A7:           var_160 = CVar(CLng(3)) 'Long
  loc_19128D7:           var_F0 = CVar(CStr(var_88.Fields.Item("DispCode").Value)) 'String
  loc_19128DE:           LateIdCallSt
  loc_19128F8:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1912900:           var_160 = CVar(CLng(4)) 'Long
  loc_1912930:           var_F0 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_1912937:           LateIdCallSt
  loc_1912951:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1912959:           var_160 = CVar(CLng(6)) 'Long
  loc_1912989:           var_F0 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_1912990:           LateIdCallSt
  loc_19129C6:           var_150 = CVar(CLng(var_96)) 'Long
  loc_19129CE:           var_190 = CVar(CLng(7)) 'Long
  loc_19129FB:           var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.00"))) 'String
  loc_1912A02:           LateIdCallSt
  loc_1912A38:           var_150 = CVar(CLng(var_96)) 'Long
  loc_1912A40:           var_190 = CVar(CLng(8)) 'Long
  loc_1912A6D:           var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1912A74:           LateIdCallSt
  loc_1912AAA:           var_150 = CVar(CLng(var_96)) 'Long
  loc_1912AB2:           var_190 = CVar(CLng(9)) 'Long
  loc_1912ADF:           var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1912AE6:           LateIdCallSt
  loc_1912B35:           var_DC = var_88.Fields
  loc_1912B3D:           var_E0 = var_DC.Item("Rate")
  loc_1912B4E:           var_160 = CVar(CLng(var_96)) 'Long
  loc_1912B56:           var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1912B7A:           var_120 = (var_88.Fields.Item("qty").Value * var_E0.Value) 'Variant
  loc_1912B8D:           var_180 = CVar(CStr(Format(var_120, "0.00"))) 'String
  loc_1912B94:           LateIdCallSt
  loc_1912BD6:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1912BDE:           var_160 = CVar(CLng(5)) 'Long
  loc_1912C05:           var_100 = CVar(CStr(Val(CStr(Right(CVar(var_88.Fields.Item("DocID")), 8))))) 'String
  loc_1912C0C:           LateIdCallSt
  loc_1912C27:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1912C2F:           var_160 = CVar(CLng(&HD)) 'Long
  loc_1912C5F:           var_F0 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_1912C66:           LateIdCallSt
  loc_1912C80:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1912C88:           var_160 = CVar(CLng(&HC)) 'Long
  loc_1912CB8:           var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1912CBF:           LateIdCallSt
  loc_1912D0E:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_96)), var_538, var_F0, CVar(CLng(&H19)), CVar(CLng(var_96)))) 'String
  loc_1912D15:           LateIdCallSt
  loc_1912D60:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_96)), var_538, var_F0, var_538)) 'String
  loc_1912D67:           LateIdCallSt
  loc_1912DB2:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1912DB9:           LateIdCallSt
  loc_1912E04:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1912E0B:           LateIdCallSt
  loc_1912E56:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1912E5D:           LateIdCallSt
  loc_1912E7B:           var_160 = CVar(CLng(&H1A)) 'Long
  loc_1912EA8:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Kitchen")), var_160, CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1912EAF:           LateIdCallSt
  loc_1912EF9:           var_C4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_F0, -1, var_DC, var_538)
  loc_1912F0D:           unk_5B2155.Execute var_F0 & CStr(Right(CVar(var_88.Fields.Item("DocID")), 8)) & "'", var_F0, var_160
  loc_1912F18:           Set var_9C = var_DC
  loc_1912F38:           var_198 = var_9C.RecordCount
  loc_1912F46:           If (var_198 > 0) Then
  loc_1912F4D:             var_130 = CVar(CLng(var_96)) 'Long
  loc_1912F80:             Proc_6_39_E7D3A0(var_F0, CVar(var_9C.Fields.Item("Rate")), CVar(CLng(&H10)), var_130)
  loc_1912F89:             var_100 = CVar(CStr(var_F0)) 'String
  loc_1912F91:             Set var_DC = var_130(var_100)
  loc_1912F97:             LateIdCallSt
  loc_1912FAF:           End If
  loc_1912FD0:           var_D8 = CVar(Proc_6_38_E69628(global_192, CVar(CLng(&H16)), CVar(CLng(var_96)))) 'String
  loc_1912FD7:           LateIdCallSt
  loc_1913022:           LateIdCallSt
  loc_191305C:           var_C4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")), var_538, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_96)), var_538)), CVar(var_88.Fields.Item("RoomNo")))
  loc_1913070:           Call 0.Method_cmdCashReg_Click0 (var_C4, var_E0(CInt(3)))
  loc_1913078:           var_E0.Tag = var_538
  loc_1913090:           var_130 = CVar(CLng(var_96)) 'Long
  loc_19130C5:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)))) 'String
  loc_19130CC:           LateIdCallSt
  loc_1913117:           var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_96)), var_538)) 'String
  loc_191311E:           LateIdCallSt
  loc_1913134:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1913151:           var_D8 = CVar(Proc_6_38_E69628(global_188, CVar(CLng(&H15)), var_130, var_538)) 'String
  loc_1913158:           LateIdCallSt
  loc_1913167:           var_110 = CVar(CLng(var_96)) 'Long
  loc_1913179:           LateIdCallSt
  loc_1913183:           Set var_538 = Nothing 
  loc_191318D:           var_96 = (var_96 + 1)
  loc_1913190:           ' Referenced from: 19127ED
  loc_1913193:           var_88.MoveNext
  loc_191319C:           var_9E = CByte(0) 'Byte
  loc_19131A0:           GoTo loc_19126D1
  loc_19131A3:         End If
  loc_19131A7:         Set var_C0 = var_538(var_96)
  loc_19131AD:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(global_68)
  loc_19131BC:         var_110 = CVar((CLng(var_110) - 1)) 'Long
  loc_19131D5:         LateIdCallSt
  loc_19131F4:         Set var_C0 = 1(global_68)(1)
  loc_19131FA:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6(var_538)
  loc_1913205:       Else
  loc_191320D:         Set var_C0 = var_D8(True)
  loc_1913213:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19(var_F0)
  loc_1913221:         If (var_96 = 1) Then
  loc_1913231:           Set var_C0 = var_F0(1)
  loc_1913237:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_130)
  loc_1913265:           Set var_C8 = CInt(0)(CVar(CStr(Proc_6_127_F25B10((var_100)))))
  loc_191326B:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1913283:           Set var_C0 = ()
  loc_1913289:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1913298:           var_110 = CVar((CLng() - 1)) 'Long
  loc_19132B1:           LateIdCallSt
  loc_19132D0:           Set var_C0 = 1(global_68)(1)
  loc_19132D6:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_19132DE:         End If
  loc_19132DE:       End If
  loc_19132DE:     End If
  loc_19132E6:     Set var_C0 = (True)
  loc_19132EC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_19132FA:     If (var_96 = 1) Then
  loc_191330A:       Set var_C0 = (1)
  loc_1913310:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_191331C:       Set var_DC = ()
  loc_191333E:       Set var_C8 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(var_DC))))
  loc_1913344:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_191335C:       Set var_C0 = ()
  loc_1913362:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1913371:       var_110 = CVar((CLng() - 1)) 'Long
  loc_1913384:       Set var_C8 = 1(global_68)
  loc_191338A:       LateIdCallSt
  loc_19133A9:       Set var_C0 = var_C8(1)
  loc_19133AF:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_19133B7:     End If
  loc_19133BC:     Call Proc_258_158_19037C8(3)
  loc_19133C4:     var_8C.MoveNext
  loc_19133D0:     Proc_96_21_E587E0(CDbl(1))
  loc_19133D5:     Call Proc_258_139_1B84538()
  loc_19133E4:     Set var_C0 = Me.TopCtrl1
  loc_19133EA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Save")
  loc_19133F2:     DoEvents()
  loc_19133FB:     Set var_C0 = ()
  loc_1913401:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0()
  loc_1913419:     Set var_C0 = (2)
  loc_191341F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1913427:     Call Proc_258_136_143EE54()
  loc_191342C:     GoTo loc_19123D0
  loc_191342F:   End If
  loc_1913437:   Call Proc_258_140_134E0B0(CByte(3))
  loc_1913459:   Set var_C0 = var_C8(CInt(0))
  loc_191345F:   Call 0.Method_cmdCashReg_Click0 ("SELECT DocId,VNo,VDate,VTime,VType,VPrefix,RestCode,NetAmt FROM Sale1 WHERE VDate=", var_120)
  loc_191346E:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1913476:   var_100 = -1 & var_F0 
  loc_1913484:   unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_191348F:   Set var_90 = var_DC
  loc_19134A7:   ' Referenced from: 191398E
  loc_19134B6:   If Not(var_90.EOF) Then
  loc_19134D1:     var_1A0 = "(" & global_312 & ") " & "BILL NO.- "
  loc_1913512:     var_A4 = var_F0 & CStr(Right(CVar(var_88.Fields.Item("DocID")), 8)) & "'" & CStr(var_90.Fields.Item("VNo").Value) & " " & vbNullString
  loc_1913537:     unk_5B2155.BeginTrans var_198
  loc_191355B:     var_D8 = CVar(var_90.Fields.Item("VDate")) 'Address
  loc_1913562:     Proc_6_7_F26918(var_F0)
  loc_19135D4:     unk_5B2155.Execute CStr("DELETE FROM Paycharge WHERE VDate=" & var_F0 & " AND VNo=" & CVar(Val(CStr(var_90.Fields.Item("VNo").Value)))), var_180, -1
  loc_1913616:     var_C8 = var_90.Fields.Item("DocID")
  loc_1913635:     var_DC = var_90.Fields
  loc_191365C:     var_1B8 = var_90.Fields
  loc_191367D:     var_1B4 = Val(CStr(var_1B8.Item("VNo").Value))
  loc_19136CD:     Proc_6_7_F26918(var_308, CVar(var_90.Fields.Item("VDate")), var_1B4)
  loc_191372C:     var_518 = Val(CStr(var_90.Fields.Item("NetAmt").Value))
  loc_1913762:     var_520 = Val(CStr(var_90.Fields.Item("NetAmt").Value))
  loc_1913773:     Proc_6_7_F26918(var_588, Date, var_520, var_518)
  loc_19137BA:     var_19C = "Insert Into PayCharge(" & "DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, GuestProf," & "EmpCode,CompCode,Comments,PayCode,PayType,"
  loc_19137CF:     var_1A8 = var_19C & "BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo," & "CardNo,CardHolder,ChqNo,ChqDate,ExpDate," & "U_Name,U_EntDt,U_AE,RestCode,batchno) "
  loc_19137E3:     var_100 = CVar(var_1A8 & "VALUES " & "('") & var_C8.Value 
  loc_19137EC:     var_120 = var_100 & "',1,'" 
  loc_191382A:     var_2B4 = var_120 & var_DC.Item("vType").Value & "'," & CVar(var_1B4) & ",'" & CVar(MemVar_1F95070) & "','" & var_90.Fields.Item("vPrefix").Value 
  loc_191386F:     var_434 = var_2B4 & "'," & var_308 & ",'" & var_90.Fields.Item("VTIME").Value & "'," & "'','','','" & CVar(var_A4) & "','KCASH','Cash'," 
  loc_19138B3:     var_568 = var_434 & CVar(var_518) & "," & CVar(var_520) & ",0,'REST','TB','F',0," & "'','','',Null,Null,'" & CVar(MemVar_1F950C8) & "'," 
  loc_19138E1:     unk_5B2155.Execute CStr(var_568 & var_588 & ",'A','" & var_90.Fields.Item("RestCode").Value & "',0)"), var_62C, -1
  loc_1913981:     unk_5B2155.CommitTrans
  loc_1913989:     var_90.MoveNext
  loc_191398E:     GoTo loc_19134A7
  loc_1913991:   End If
  loc_1913999:   Call Proc_258_140_134E0B0(CByte(4), var_630, var_1B8)
  loc_191399E: End If
  loc_19139B9: var_D8 = "Bill transfered successfully!"
  loc_19139BF: MsgBox(var_D8, &H40, "Cash Register", var_100, var_120)
  loc_19139F2: Call Proc_258_148_107A830(Proc_5_1_100EC1C("INI", Me, global_116), var_1B4)
  loc_1913A02: Set var_9C = Nothing
  loc_1913A0A: Set var_88 = Nothing
  loc_1913A18: Set global_52 = Nothing
  loc_1913A1F: Call Proc_258_165_F81234(var_D8)
  loc_1913A31: ("Update &Cash Register").Caption = 
  loc_1913A45: (0).Enabled = 
  loc_1913A59: (0).Visible = 
  loc_1913A6C: var_F0 = "Cash Register..."
  loc_1913A98: If (MsgBox("Are You Sure to Cancel all Process?", &H14, var_F0, var_100, var_120) = 6) Then
  loc_1913AA4:   unk_5B2155.BeginTrans var_198
  loc_1913AC6:   Set var_C0 = var_C8(CInt(0))
  loc_1913ACC:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM CashRegData WHERE VDate=", var_120)
  loc_1913ADB:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1913AE3:   var_100 = -1 & var_F0 
  loc_1913AF1:   unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1913B28:   Set var_C0 = var_C8(CInt(0))
  loc_1913B2E:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Stock WHERE VDate=", var_120)
  loc_1913B3D:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1913B45:   var_100 = -1 & var_F0 
  loc_1913B53:   unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1913B8A:   Set var_C0 = var_C8(CInt(0))
  loc_1913B90:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale1 WHERE VDate=", var_120)
  loc_1913B9F:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1913BA7:   var_100 = -1 & var_F0 
  loc_1913BB5:   unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1913BEC:   Set var_C0 = var_C8(CInt(0))
  loc_1913BF2:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale2 WHERE VDate=", var_120)
  loc_1913C01:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1913C09:   var_100 = -1 & var_F0 
  loc_1913C17:   unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1913C4E:   Set var_C0 = var_C8(CInt(0))
  loc_1913C54:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM SunTran WHERE VDate=", var_120)
  loc_1913C63:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1913C6B:   var_100 = -1 & var_F0 
  loc_1913C79:   unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1913CB0:   Set var_C0 = var_C8(CInt(0))
  loc_1913CB6:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Paycharge WHERE VDate=", var_120)
  loc_1913CC5:   Proc_6_7_F26918(var_F0, CVar(var_C8))
  loc_1913CCD:   var_100 = -1 & var_F0 
  loc_1913CDB:   unk_5B2155.Execute CStr(var_100), var_DC, 
  loc_1913CFB:   unk_5B2155.CommitTrans
  loc_1913D00:   Call Proc_258_165_F81234()
  loc_1913D12:   ("Update &Cash Register").Caption = 
  loc_1913D1A:   Exit Sub
  loc_1913D1B: End If
  loc_1913D1B: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'DFF7FC
  'Data Table: 5B2118
  loc_DFF7F4: Call TopCtrl1_UnknownEvent_E()
  loc_DFF7F9: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F3561C
  'Data Table: 5B2118
  Dim Me As Variant
  loc_F3550F: If (global_384 = "Item") Then
  loc_F35518:   global_384 = "Item"
  loc_F35533:   If (Me.AbsolutePosition > 0) Then
  loc_F3553C:     Me.MoveNext
  loc_F35555:     Set var_94 = Me.SSPItem
  loc_F35578:     Call Proc_258_134_1307FFC(Me.SSPItem, CInt(4), global_400)
  loc_F35584:     global_380 = CInt(var_A4)
  loc_F35595:   End If
  loc_F35598: Else
  loc_F3559E:   global_384 = "Group"
  loc_F355B9:   If (Me.AbsolutePosition > 0) Then
  loc_F355C2:     Me.MoveNext
  loc_F355FE:     Call Proc_258_134_1307FFC(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPGroup)
  loc_F3560A:     global_380 = CInt(var_A4)
  loc_F3561B:   End If
  loc_F3561B: End If
  loc_F3561B: Exit Sub
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10F01F8
  'Data Table: 5B2118
  Dim Me As Variant
  loc_10EFEDB: If (global_384 = "Item") Then
  loc_10EFEE4:   global_384 = "Item"
  loc_10EFEFF:   If (Me.AbsolutePosition = -3) Then
  loc_10EFF0D:     If (global_392 > CInt(&H10)) Then
  loc_10EFF31:       Me.AbsolutePosition = CLng((((global_392 - (global_392 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EFF4A:       Set var_94 = Me.SSPItem
  loc_10EFF6D:       Call Proc_258_134_1307FFC(Me.SSPItem, CInt(4), global_400)
  loc_10EFF79:       global_380 = CInt(var_A4)
  loc_10EFF8A:     End If
  loc_10EFF8D:   Else
  loc_10EFFBC:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EFFD4:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EFFE2:         Me.AbsolutePosition = 1
  loc_10EFFEA:       Else
  loc_10F0010:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10F0015:       End If
  loc_10F004C:       Call Proc_258_134_1307FFC(Me.SSPItem, CInt(4), global_400, CInt(4), Me.SSPItem)
  loc_10F0058:       global_380 = CInt(var_A4)
  loc_10F0069:     End If
  loc_10F0069:   End If
  loc_10F006C: Else
  loc_10F0072:   global_384 = "Group"
  loc_10F008D:   If (Me.AbsolutePosition = -3) Then
  loc_10F009B:     If (global_388 > CInt(&H10)) Then
  loc_10F00BF:       Me.AbsolutePosition = CLng((((global_388 - (global_388 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10F00FB:       Call Proc_258_134_1307FFC(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPGroup, var_A4)
  loc_10F0107:       global_380 = CInt(var_A4)
  loc_10F0118:     End If
  loc_10F011B:   Else
  loc_10F014A:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10F0162:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10F0170:         Me.AbsolutePosition = 1
  loc_10F0178:       Else
  loc_10F019E:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10F01A3:       End If
  loc_10F01DA:       Call Proc_258_134_1307FFC(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPGroup, var_A4, global_380)
  loc_10F01E6:       global_380 = CInt(var_A4)
  loc_10F01F7:     End If
  loc_10F01F7:   End If
  loc_10F01F7: End If
  loc_10F01F7: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECFE48
  'Data Table: 5B2118
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECFDAA: Set var_88 = var_8C(Index)
  loc_ECFDB0: Call 0.Method_TxtPer_GotFocus0 ()
  loc_ECFDBE: Proc_6_74_E23240(var_8C)
  loc_ECFDCA: Call Proc_258_149_FD7788()
  loc_ECFDDE: Set var_88 = var_8C(Index)
  loc_ECFDE4: Call 0.Method_TxtPer_GotFocus0 (0)
  loc_ECFDEC: var_8C.SelStart = 
  loc_ECFE05: Set var_88 = var_8C(Index)
  loc_ECFE0B: Call 0.Method_TxtPer_GotFocus0 (var_94)
  loc_ECFE13:  = var_8C.Text
  loc_ECFE26: Set var_90 = var_98(Index)
  loc_ECFE2C: Call 0.Method_TxtPer_GotFocus0 (Len(var_94))
  loc_ECFE34: var_98.SelLength = 
  loc_ECFE47: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BFF8
  'Data Table: 5B2118
  loc_E5BFC5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BFCE:   Proc_6_75_E5335C(Shift)
  loc_E5BFD3: End If
  loc_E5BFE8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BFF1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5BFF6: End If
  loc_E5BFF6: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E58358
  'Data Table: 5B2118
  loc_E5832A: Set var_88 = var_8C(KeyAscii)
  loc_E58330: Call 0.Method_TxtPer_KeyPress0 ()
  loc_E5834B: Proc_6_42_129B55C(var_8C, arg_10)
  loc_E58357: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E02044
  'Data Table: 5B2118
  loc_E0203E: Call Proc_258_158_19037C8(KeyCode)
  loc_E02043: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E47D0C
  'Data Table: 5B2118
  loc_E47CEA: Set var_88 = var_8C(Index)
  loc_E47CF0: Call 0.Method_TxtPer_LostFocus0 ()
  loc_E47CFE: Proc_6_73_E23294(var_8C)
  loc_E47D0A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D678
  'Data Table: 5B2118
  loc_E0D669: Call FGrid_UnknownEvent_C()
  loc_E0D673: global_202 = 0
  loc_E0D676: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'E9A084
  'Data Table: 5B2118
  Dim var_A0 As Long
  Dim MeFF As Double
  loc_E9A008: Set var_88 = Me.TopCtrl1
  loc_E9A00E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E9A027: If (CStr() = "Browse") Then
  loc_E9A02A:   Exit Sub
  loc_E9A02B: End If
  loc_E9A02F: Set var_88 = ()
  loc_E9A035: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_E9A03E: var_A0 = CLng()
  loc_E9A04E: If (var_A0 = CLng(4)) Then
  loc_E9A051:   GoTo loc_E9A06B
  loc_E9A054: End If
  loc_E9A05B: If (var_A0 = CLng(2)) Then
  loc_E9A05E:   GoTo loc_E9A06B
  loc_E9A061: End If
  loc_E9A068: If (var_A0 = CLng(7)) Then
  loc_E9A06B:   ' Referenced from: E9A05E
  loc_E9A06B:   ' Referenced from: E9A051
  loc_E9A06B: End If
  loc_E9A075: If (CLng(Index) <> &HD) Then
  loc_E9A07D:   global_202 = &HFF
  loc_E9A080: End If
  loc_E9A080: Exit Sub
  loc_E9A081: MeFF = global_202
End Sub

Public Sub FGrid_UnknownEvent_E(Index As Integer) 'E52C98
  'Data Table: 5B2118
  loc_E52C6A: If (Index = 1) Then
  loc_E52C71:   Set var_88 = ()
  loc_E52C77:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_E52C83:   global_60 = CLng()
  loc_E52C93:   global_64 = CLng(arg_18)
  loc_E52C96: End If
  loc_E52C96: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_F(Index As Integer) 'F2D46C
  'Data Table: 5B2118
  Dim var_A8 As Variant
  loc_F2D362: If (Index = 1) Then
  loc_F2D37E:   If (CDbl(Abs(((arg_18 - CDbl(global_64)) / CDbl(global_68)))) >= CDbl(1)) Then
  loc_F2D38D:     If (CDbl(arg_18) > CDbl(global_64)) Then
  loc_F2D394:       Set var_88 = ()
  loc_F2D39A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2D3AF:       If (CLng() > 1) Then
  loc_F2D3B6:         Set var_88 = ()
  loc_F2D3BC:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2D3CB:         var_A8 = CVar((CLng() - 1)) 'Long
  loc_F2D3D4:         Set var_BC = (var_A8)
  loc_F2D3DA:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2D3E9:       End If
  loc_F2D3EC:     Else
  loc_F2D3F0:       Set var_88 = ()
  loc_F2D3F6:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2D409:       Set var_BC = ((CLng() + 1))
  loc_F2D40F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_F2D427:       If ( < CLng()) Then
  loc_F2D42E:         Set var_88 = ()
  loc_F2D434:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2D443:         var_A8 = CVar((CLng() + 1)) 'Long
  loc_F2D44C:         Set var_BC = (var_A8)
  loc_F2D452:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2D461:       End If
  loc_F2D461:     End If
  loc_F2D468:     global_64 = CLng(arg_18)
  loc_F2D46B:   End If
  loc_F2D46B: End If
  loc_F2D46B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 '1026800
  'Data Table: 5B2118
  Dim var_88 As Variant
  Dim var_F4 As Long
  loc_10265E1: Me.TxtQty.Text = vbNullString
  loc_10265F6: Me.TxtQty.Tag = vbNullString
  loc_102660B: Me.LblVtype.Caption = vbNullString
  loc_1026617: Set var_88 = Me.TopCtrl1
  loc_102661D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1026636: If (CStr() = "Browse") Then
  loc_1026639:   Exit Sub
  loc_102663A: End If
  loc_102663E: Set var_88 = ()
  loc_1026644: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_102665E: Set var_E0 = CVar(CLng())(CVar(CLng(&HB)))
  loc_1026664: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1026688: If (CStr() = vbNullString) Then
  loc_102668B:   Exit Sub
  loc_102668C: End If
  loc_1026690: Set var_88 = ()
  loc_1026696: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_10266B0: Set var_E0 = CVar(CLng())(CVar(CLng(0)))
  loc_10266B6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_10266DA: If (CStr() = vbNullString) Then
  loc_10266DD:   Exit Sub
  loc_10266DE: End If
  loc_10266E2: Set var_88 = ()
  loc_10266E8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_10266F1: var_F4 = CLng()
  loc_1026701: If (var_F4 = CLng(7)) Then
  loc_1026711:   Me.TxtQty.Text = vbNullString
  loc_102672A:   Me.TxtQty.Tag = CStr(2)
  loc_1026742:   Me.LblVtype.Caption = "Qty"
  loc_102674D: Else
  loc_1026754:   If (var_F4 = CLng(8)) Then
  loc_102675B:     Set var_88 = (var_F4)
  loc_102677B:     Set var_E0 = CVar(CLng(LblVtype.DispID_A))(CVar(CLng(&H19)))
  loc_10267B4:     If (Ucase(CVar(CStr(LblVtype.DispID_41))) = "Y") Then
  loc_10267C4:       Me.TxtQty.Text = vbNullString
  loc_10267DD:       Me.TxtQty.Tag = CStr(3)
  loc_10267F5:       Me.LblVtype.Caption = "Rate"
  loc_10267FD:     End If
  loc_10267FD:   End If
  loc_10267FD: End If
  loc_10267FD: Exit Sub
End Sub

Private Sub CmdSettlement_UnknownEvent_9 'F789F0
  'Data Table: 5B2118
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_E4 As Double
  loc_F788E6: Set var_88 = var_8C(CInt(3))
  loc_F788EC: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_90)
  loc_F788F4:  = var_8C.Tag
  loc_F78907: Set var_94 = var_98(CInt(2))
  loc_F7890D: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_C4)
  loc_F78915:  = var_98.Text
  loc_F78928: Set var_9C = var_A0(CInt(3))
  loc_F7892E: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_D0)
  loc_F78936:  = var_A0.Text
  loc_F78942: Set var_A4 = (var_A6)
  loc_F78948: Call 0.Method_CmdSettlement_UnknownEvent_98 ()
  loc_F7895A: Set var_AC = var_B0(var_A6)
  loc_F78960: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_B4)
  loc_F78968:  = var_B0.Text
  loc_F78975: var_E4 = Val(var_B4)
  loc_F789C7: Proc_6_132_ECD044(1, 5, global_184, var_90, var_C4, 0)
  loc_F789EE: Exit Sub
End Sub

Private Sub CmdCustInfo_UnknownEvent_9 'F65B88
  'Data Table: 5B2118
  Dim var_98 As Variant
  loc_F65A5C: Set var_88 = New RsTouchOrderPersonDetails
  loc_F65A6A: var_88.ParentForm = CVar(Me)
  loc_F65A77: var_88.EntryType = "SALEBILLENTRY"
  loc_F65A86: Set var_AC = var_B0(CInt(0))
  loc_F65A8C: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F65AA7: var_88.tPhoneNo = Trim(CVar(var_B0))
  loc_F65AC0: Set var_AC = var_B0(CInt(1))
  loc_F65AC6: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F65AE1: var_88.tCustName = Trim(CVar(var_B0))
  loc_F65AFA: Set var_AC = var_B0(CInt(2))
  loc_F65B00: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F65B1B: var_88.tAddress1 = Trim(CVar(var_B0))
  loc_F65B34: Set var_AC = var_B0(CInt(3))
  loc_F65B3A: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F65B55: var_88.tAddress2 = Trim(CVar(var_B0))
  loc_F65B66: Call var_88.SetOnLineCustDetail
  loc_F65B6C: var_98 = 1
  loc_F65B78: Call var_88.Show
  loc_F65B80: Set var_88 = Nothing 
  loc_F65B84: Exit Sub
End Sub

Public Sub CmdDiscType_UnknownEvent_9(Index As Integer) '11DABB0
  'Data Table: 5B2118
  Dim var_8C As Integer
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B8 As String
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_DC As TextBox
  Dim var_D4 As TextBox
  Dim var_B0 As Variant
  loc_11DA74B: var_8C = Index
  loc_11DA754: If (var_8C = 0) Then
  loc_11DA763:   Me.FrameQty.Visible = True
  loc_11DA778:   Me.LblIndex.Caption = vbNullString
  loc_11DA78D:   Me.LblIndex.Tag = vbNullString
  loc_11DA7A2:   Me.LblVtype.Caption = "Bill Discount"
  loc_11DA7B7:   Me.LblVtype.Tag = vbNullString
  loc_11DA7CC:   Me.TxtQty.Text = vbNullString
  loc_11DA7E1:   Me.TxtQty.Tag = vbNullString
  loc_11DA7F5:   Me.FrameGrpItem.Enabled = False
  loc_11DA800: Else
  loc_11DA806:   If (var_8C = 1) Then
  loc_11DA809:     Call Proc_258_167_10D9B94(var_8C)
  loc_11DA81D:     (CDbl(12045)).Left = 
  loc_11DA834:     (CDbl(3675)).Top = 
  loc_11DA848:     Me.FrDiscType.Visible = False
  loc_11DA85C:     (&HFF).Visible = 
  loc_11DA874:     (0).ZOrder 
  loc_11DA888:     Me.FrameGrpItem.Enabled = False
  loc_11DA893:   Else
  loc_11DA899:     If (var_8C = 2) Then
  loc_11DA8A8:       Me.FrameQty.Visible = True
  loc_11DA8BD:       Me.LblIndex.Caption = vbNullString
  loc_11DA8D2:       Me.LblIndex.Tag = vbNullString
  loc_11DA8E7:       Me.LblVtype.Caption = "Item Discount"
  loc_11DA8FC:       Me.LblVtype.Tag = vbNullString
  loc_11DA911:       Me.TxtQty.Text = vbNullString
  loc_11DA926:       Me.TxtQty.Tag = vbNullString
  loc_11DA934:       Set var_90 = Me.FrameGrpItem
  loc_11DA93A:       var_90.Enabled = False
  loc_11DA945:     Else
  loc_11DA94B:       If (var_8C = 3) Then
  loc_11DA957:         RsTouchScreenSteward.pOpenAs = "Member"
  loc_11DA96F:         Call 0.Method_arg_2B0 (1)
  loc_11DA98F:         var_B8 = "Select Name,CardNo,Discount From SubGroup where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And SubCode='"
  loc_11DA9A6:         RsTouchScreenSteward.Connection15.Execute var_B8 & MemVar_1F95234 & "'", var_D0, -1
  loc_11DA9B1:         Set var_88 = var_90
  loc_11DA9D4:         var_90 = var_88.Fields
  loc_11DA9DC:         var_D4 = var_90.Item("Name")
  loc_11DA9FB:         Set var_D8 = var_DC(CInt(&HD))
  loc_11DAA01:         Call 0.Method_CmdDiscType_UnknownEvent_90 (Proc_6_38_E69628(CVar(var_D4), var_90))
  loc_11DAA09:         var_DC.Text = var_B0
  loc_11DAA2B:         Set var_90 = var_D4(CInt(&HD))
  loc_11DAA31:         Call 0.Method_CmdDiscType_UnknownEvent_90 (MemVar_1F95234)
  loc_11DAA39:         var_D4.Tag = 
  loc_11DAA7B:         Set var_D8 = var_DC(CInt(&HF))
  loc_11DAA81:         Call 0.Method_CmdDiscType_UnknownEvent_90 (Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo"))))
  loc_11DAA89:         var_DC.Text = 
  loc_11DAAA6:         Set var_90 = 1(var_8A)
  loc_11DAAC2:         For var_E0 =  To CInt((CLng(FrameGrpItem.DispID_4) - 1)):        = var_E0 'Integer
  loc_11DAACC:           var_A0 = CVar(CLng(var_8A)) 'Long
  loc_11DAAE3:           Set var_90 = CVar(CLng(&HE))("0.00")
  loc_11DAAE9:           LateIdCallSt
  loc_11DAB09:           Set var_90 = CVar(CLng(var_8A))(CVar(CLng(&H13)))
  loc_11DAB2B:           If (CStr(FrameGrpItem.DispID_41) = "Y") Then
  loc_11DAB65:             Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("Discount")), CVar(CLng(&HE)))
  loc_11DAB76:             Set var_D8 = CVar(CLng(var_8A))(CVar(CStr(var_130)))
  loc_11DAB7C:             LateIdCallSt
  loc_11DAB94:           End If
  loc_11DAB97:         Next var_E0 'Integer
  loc_11DABA1:         Call Proc_258_158_19037C8(&H32)
  loc_11DABA6:       End If
  loc_11DABA6:     End If
  loc_11DABA6:   End If
  loc_11DABA6: End If
  loc_11DABAB: Set var_88 = Nothing
  loc_11DABAE: Exit Sub
End Sub

Private Sub Timer1_Timer() 'EFDAA4
  'Data Table: 5B2118
  Dim var_88 As Line
  loc_EFD9D3: global_80 = (global_80 + 0.2617993875)
  loc_EFD9FB: Set var_88 = Cos(global_80)((global_88 + (Cos(global_80) * global_84)))
  loc_EFDA01: var_88.X1 = global_80
  loc_EFDA2E: Set var_88 = Sin(global_80)((global_92 + (Sin(global_80) * global_84)))
  loc_EFDA34: var_88.Y1 = 
  loc_EFDA61: Set var_88 = Cos(global_80)((global_88 - (Cos(global_80) * global_84)))
  loc_EFDA67: var_88.X2 = 
  loc_EFDA94: Set var_88 = Sin(global_80)((global_92 - (Sin(global_80) * global_84)))
  loc_EFDA9A: var_88.Y2 = 
  loc_EFDAA2: Exit Sub
End Sub

Private Sub CmdFSundry_UnknownEvent_9 '10F9D64
  'Data Table: 5B2118
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_98 As Variant
  Dim var_A4 As Label
  Dim var_90 As String
  Dim var_108 As Double
  Dim var_A8 As TextBox
  loc_10F9A54: Me.FrameQty.Visible = True
  loc_10F9A69: Me.LblIndex.Caption = "0"
  loc_10F9A81: If (UBound(global_404, 1) > 0) Then
  loc_10F9AA4:   var_94 = CStr((Val(Me.LblIndex.Caption) + CDbl(1)))
  loc_10F9AB1:   Me.LblIndex.Caption = var_94
  loc_10F9AD0:   Set var_8C = var_86(var_9A)
  loc_10F9AD6:   Call 0.Method_CmdFSundry_UnknownEvent_98 (1)
  loc_10F9AE1:   For var_9E =  To var_9A:  = var_9E 'Integer
  loc_10F9AF4:     var_90 = Me.LblIndex.Caption
  loc_10F9B16:     Set var_98 = var_A4(var_86)
  loc_10F9B1C:     Call 0.Method_CmdFSundry_UnknownEvent_90 (var_94)
  loc_10F9B24:     global_404(CLng(Val(var_90))) = var_A4.Tag
  loc_10F9B3E:     If ( = var_94) Then
  loc_10F9B4E:       Set var_8C = var_98(var_86)
  loc_10F9B54:       Call 0.Method_CmdFSundry_UnknownEvent_90 (var_90)
  loc_10F9B5C:        = var_98.Caption
  loc_10F9B6E:       Me.LblVtype.Caption = var_90
  loc_10F9B91:       Me.LblVtype.Tag = CStr(var_86)
  loc_10F9BC2:       Set var_98 = Me.TxtQty
  loc_10F9BC8:       var_98.Tag = global_408(CLng(Val(Me.LblIndex.Caption)))
  loc_10F9BE4:       var_90 = Me.TxtQty.Tag
  loc_10F9BF7:       If (var_90 = "P") Then
  loc_10F9C07:         Set var_8C = var_98(var_86)
  loc_10F9C0D:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_90)
  loc_10F9C15:          = var_98.Text
  loc_10F9C22:         var_108 = Val(var_90)
  loc_10F9C32:         Set var_A4 = var_A8(var_86)
  loc_10F9C38:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_94)
  loc_10F9C7B:         Me.TxtQty.Text = CStr(IIf((CDbl(var_A8.Text) > CDbl(0)), CVar(var_94), vbNullString))
  loc_10F9CA2:       Else
  loc_10F9CAF:         Set var_8C = var_98(var_86)
  loc_10F9CB5:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_90)
  loc_10F9CBD:          = var_98.Text
  loc_10F9CCA:         var_108 = Val(var_90)
  loc_10F9CDA:         Set var_A4 = var_A8(var_86)
  loc_10F9CE0:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_94)
  loc_10F9D23:         Me.TxtQty.Text = CStr(IIf((CDbl(var_A8.Text) > CDbl(0)), CVar(var_94), vbNullString))
  loc_10F9D47:       End If
  loc_10F9D47:     End If
  loc_10F9D4A:   Next var_9E 'Integer
  loc_10F9D5B:   Me.FrameGrpItem.Enabled = False
  loc_10F9D63: End If
  loc_10F9D63: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '122BABC
  'Data Table: 5B2118
  Dim var_98 As String
  Dim var_A4 As Variant
  Dim var_114 As Double
  Dim var_108 As String
  Dim unk_5B2155 As Connection15
  Dim var_90 As Recordset15
  Dim var_9C As Variant
  Dim var_B4 As Variant
  Dim var_11C As Variant
  Dim var_130 As TextBox
  Dim Me As Recordset15
  Dim var_12C As Integer
  Dim var_13C As TextBox
  loc_122B5D4: On Error Goto loc_122BAB3
  loc_122B5FA: Call Proc_258_148_107A830(Proc_5_1_100EC1C("ADD", Me))
  loc_122B605: Call Proc_258_133_122007C(global_116)
  loc_122B60A: Call Proc_258_147_10EBD9C()
  loc_122B622: Set var_9C = var_A4(CInt(1))
  loc_122B628: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CStr(MemVar_1F950EC))
  loc_122B630: var_A4.Text = 
  loc_122B67F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CStr(Format(Time, "hh:nn")), 1)
  loc_122B687: var_A4.Text = 1
  loc_122B6A2: var_B4 = Time
  loc_122B6B6: var_D4 = "HH:MM"
  loc_122B6FD: var_88 = Replace(CStr(Left(CVar(CStr(Format(var_B4, var_D4))), 5)), ":", ".", 1, -1, 0)
  loc_122B71A: var_114 = Val(var_88)
  loc_122B746: unk_5B2155.Execute "Select Name From SessionMast WHERE " & CStr(var_114) & " BETWEEN FromTime AND ToTime", var_B4, -1
  loc_122B751: Set var_90 = var_A4(CInt(5))
  loc_122B777: If (var_90.RecordCount > 0) Then
  loc_122B789:   var_9C = var_90.Fields
  loc_122B791:   var_A4 = var_9C.Item("Name")
  loc_122B799:   var_B4 = CVar(var_A4) 'Address
  loc_122B7A2:   var_98 = Proc_6_38_E69628(var_B4, var_9C, var_114)
  loc_122B7AF:   1(var_98).Caption = 1
  loc_122B7C1: End If
  loc_122B7CD: Set var_9C = (CVar(CLng(3)))
  loc_122B7E1: Call Proc_258_151_10E8A40(MemVar_1F95044, var_98)
  loc_122B7F4: Set var_9C = var_A4(CInt(2))
  loc_122B7FA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_98)
  loc_122B81F: Set var_9C = var_A4(CInt(1))
  loc_122B825: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_98)
  loc_122B82D:  = FrameGrpItem.DispID_B
  loc_122B83B: Call Proc_258_157_1BC3D2C(CDate(var_98))
  loc_122B858: Set var_9C = var_A4(CInt(&HD))
  loc_122B85E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_9E)
  loc_122B866:  = var_A4.Visible
  loc_122B87F: Set var_11C = var_130(CInt(&HD))
  loc_122B885: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_132)
  loc_122B88D: (var_9E = &HFF) = var_130.Enabled
  loc_122B8A4: If ( And (var_132 = &HFF)) Then
  loc_122B8B2:   Set var_9C = var_A4(CInt(&HD))
  loc_122B8B8:   Call 0.Method_TopCtrl1_UnknownEvent_A0 ()
  loc_122B8C0:   var_A4.SetFocus
  loc_122B8CF: Else
  loc_122B8DD:   Set var_9C = var_A4(CInt(3))
  loc_122B8E3:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_9E)
  loc_122B8EB:    = var_A4.Visible
  loc_122B904:   Set var_11C = var_130(CInt(3))
  loc_122B90A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_132)
  loc_122B912:   (var_9E = &HFF) = var_130.Enabled
  loc_122B929:   If ( And (var_132 = &HFF)) Then
  loc_122B937:     Set var_9C = var_A4(CInt(3))
  loc_122B93D:     Call 0.Method_TopCtrl1_UnknownEvent_A0 ()
  loc_122B945:     var_A4.SetFocus
  loc_122B954:   Else
  loc_122B958:     Set var_9C = ()
  loc_122B969:   End If
  loc_122B969: End If
  loc_122B974: If (global_188 <> "FAST") Then
  loc_122B982:   Me.Requery -1
  loc_122B987: End If
  loc_122B992: If (global_188 <> "FAST") Then
  loc_122B9A0:   Me.Requery -1
  loc_122B9A5: End If
  loc_122B9B9: If (RSTouchScreenSaleBill.OpenMode = 1) Then
  loc_122B9C2:   var_12C = 0
  loc_122B9E9:   var_108 = "SELECT ISNULL(MAX(GUARATT),1) FROM KOT WHERE RestCode='" & global_76 & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_122BA03:   unk_5B2155.Execute var_108 & global_324 & "'", var_B4, -1
  loc_122BA0B:   var_9C = var_9C.Fields
  loc_122BA13:   var_12C = var_A4.Item(var_A4)
  loc_122BA1B:   var_11C = var_11C.Value
  loc_122BA32:   Set var_130 = var_13C(CInt(4))
  loc_122BA38:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CStr(var_D4), var_D4)
  loc_122BA40:   var_13C.Text = FrameGrpItem.DispID_8001
  loc_122BA77:   Set var_9C = var_A4(CInt(3))
  loc_122BA7D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (global_324)
  loc_122BA85:   var_A4.Text = 
  loc_122BA9D:   Call Txt_Validate(CInt(3))
  loc_122BAA2: End If
  loc_122BAA7: Set var_94 = Nothing
  loc_122BAAF: Set var_90 = Nothing
  loc_122BAB2: Exit Sub
  loc_122BAB3: ' Referenced from: 122B5D4
  loc_122BAB3: Proc_6_60_E63754(0)
  loc_122BAB8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA6120
  'Data Table: 5B2118
  loc_EA60A4: On Error Goto loc_EA611A
  loc_EA60DE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA6104:   Call Proc_258_148_107A830(Proc_5_1_100EC1C("INI", Me))
  loc_EA610F:   Call Proc_258_145_1BA3A9C(global_116)
  loc_EA6114:   Call Proc_258_133_122007C()
  loc_EA6119: End If
  loc_EA6119: Exit Sub
  loc_EA611A: ' Referenced from: EA60A4
  loc_EA611A: Proc_6_60_E63754()
  loc_EA611F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12C6FD4
  'Data Table: 5B2118
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_124 As Variant
  Dim unk_5B2155 As Connection15
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_11C As Variant
  loc_12C6994: On Error Goto loc_12C6F84
  loc_12C69CE: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_12C69E2:   var_94 = Me.Bookmark 'Variant
  loc_12C69EE:   If (MemVar_1F951AC = "Outlet") Then
  loc_12C6A23:     var_138 = "Settlement"
  loc_12C6A6B:     If (Proc_6_108_101061C(MemVar_1F95044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_12C6A6E:       Exit Sub
  loc_12C6A6F:       ' Referenced from: 12C6B19
  loc_12C6A6F:     End If
  loc_12C6A6F:   End If
  loc_12C6A73:   Set var_140 = New RsTouchScreenKeyBoard
  loc_12C6A81:   var_140.ParentForm = CVar(Me)
  loc_12C6A8E:   var_140.CAPTION = "Please Specify, Reason of Deletion ?"
  loc_12C6AA0:   var_140.TxtKeyBoard.MaxLength = 150
  loc_12C6AA7:   var_AC = 1
  loc_12C6AB3:   Call var_140.Show
  loc_12C6AC4:   var_9C = TxtKeyBoard
  loc_12C6AE5:   If (Trim(var_9C) = vbNullString) Then
  loc_12C6B09:     MsgBox("Please Enter a Valid Reason for Deletion.", 0, "Void Reason", var_FC, var_11C)
  loc_12C6B19:     GoTo loc_12C6A6F
  loc_12C6B1C:   End If
  loc_12C6B1E:   Set var_140 = Nothing 
  loc_12C6B2B:   unk_5B2155.BeginTrans var_134
  loc_12C6B38:   If (MemVar_1F951AC = "Room Service") Then
  loc_12C6B91:     unk_5B2155.Execute CStr("DELETE FROM PAYCHARGE WHERE dOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C6BAD:   End If
  loc_12C6C03:   unk_5B2155.Execute CStr("Update KOT set delflag='Y' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C6C75:   unk_5B2155.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C6D09:   var_11C = "Update Sale1 set delflag='D',Remark='" & Left(Trim(var_9C), &H19) & "',U_name='" 
  loc_12C6D37:   unk_5B2155.Execute CStr(var_11C & Trim(MemVar_1F950C8) & "',U_AE='E' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_1F4, -1
  loc_12C6DB7:   unk_5B2155.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C6E02:   var_124 = Me.Fields.Item("SearchCode")
  loc_12C6E1F:   var_128 = CStr("Update SunTran set delflag='D' where docid='" & var_124.Value & "'")
  loc_12C6E29:   unk_5B2155.Execute var_128, var_11C, -1
  loc_12C6E53:   Set var_120 = var_124(CInt(&HB))
  loc_12C6E59:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (var_128, var_144, var_144, var_144, var_144)
  loc_12C6E61:   var_144 = var_124.Tag
  loc_12C6E78:   If (var_128 <> vbNullString) Then
  loc_12C6EC3:     var_FC = "update packingorderdetail set contradocid='' ,ContraSno=0 where contradocid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12C6EC7:     var_128 = CStr(var_FC)
  loc_12C6ED1:     unk_5B2155.Execute var_128, var_11C, -1
  loc_12C6EED:   End If
  loc_12C6EF3:   unk_5B2155.CommitTrans
  loc_12C6F03:   Me.Requery -1
  loc_12C6F23:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12C6F30:     Me.Bookmark = var_94
  loc_12C6F38:   Else
  loc_12C6F4C:     If (Me.EOF = 0) Then
  loc_12C6F55:       Me.MoveLast
  loc_12C6F5A:     End If
  loc_12C6F5A:   End If
  loc_12C6F5A:   Call Proc_258_145_1BA3A9C(var_144, var_144)
  loc_12C6F7B:   Proc_5_0_1107AD0(&HFF, Me, global_116)
  loc_12C6F83: End If
  loc_12C6F83: Exit Sub
  loc_12C6F84: ' Referenced from: 12C6994
  loc_12C6F8A: unk_5B2155.RollbackTrans
  loc_12C6F97: Set var_120 = Err()
  loc_12C6F9D: Call 0.Method_arg_2C (var_128, 0)
  loc_12C6FBE: MsgBox(CVar(var_128), &H10, " Deletion Message", var_FC, var_11C)
  loc_12C6FD1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA7608
  'Data Table: 5B2118
  Dim var_94 As TextBox
  Dim var_AC As Variant
  Dim var_88 As String
  Dim var_8C As Frame
  Dim TopCtrl1_UnknownEvent_D2 As Variant
  loc_FA747C: On Error Goto loc_FA7602
  loc_FA7494: var_88 = "EDIT"
  loc_FA74A2: Call Proc_258_148_107A830(Proc_5_1_100EC1C(var_88, Me))
  loc_FA74AD: Call Proc_258_133_122007C(global_116)
  loc_FA74BF: Set var_8C = var_94(CInt(0))
  loc_FA74C5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_FA74CD: var_94.Enabled = 
  loc_FA74E6: Set var_8C = var_94(CInt(1))
  loc_FA74EC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_FA74F4: var_94.Enabled = 
  loc_FA750D: Set var_8C = var_94(CInt(3))
  loc_FA7513: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_FA751B: var_94.Enabled = 
  loc_FA7535: Set var_8C = var_94(CInt(1))
  loc_FA753B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_88)
  loc_FA7543:  = var_94.Text
  loc_FA7551: Call Proc_258_157_1BC3D2C(CDate(var_88))
  loc_FA756C: Set var_8C = (CVar(CLng(3)))
  loc_FA757E: Set var_8C = (FrameGrpItem.DispID_B)
  loc_FA7593: var_AC = CVar((CLng(FrameGrpItem.DispID_4) - 1)) 'Long
  loc_FA75A4: Set var_94 = CVar(CLng(3))(CVar(CLng(&HB)))
  loc_FA75CE: If (CStr(FrameGrpItem.DispID_41) <> vbNullString) Then
  loc_FA75E1:   TopCtrl1_UnknownEvent_D2 = (vbNullString).Name
  loc_FA75EC: End If
  loc_FA75F0: Set var_8C = (TopCtrl1_UnknownEvent_D2)
  loc_FA7601: Exit Sub
  loc_FA7602: ' Referenced from: FA747C
  loc_FA7602: Proc_6_60_E63754(FrameGrpItem.DispID_8001)
  loc_FA7607: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E6B750
  'Data Table: 5B2118
  loc_E6B709: Me.Global.Unload Me
  loc_E6B730: If (Not((ParentForm Is Nothing)) And (global_240 <> "Y")) Then
  loc_E6B747:   Me.Global.Unload ParentForm
  loc_E6B74F: End If
  loc_E6B74F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '1027BC0
  'Data Table: 5B2118
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim var_E8 As Variant
  Dim var_118 As String
  Dim unk_5B2155 As Connection15
  Dim var_120 As Recordset15
  Dim var_124 As Fields15
  Dim var_128 As Field20
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim MemVar_1F950E4 As String
  Dim var_C8 As Variant
  Dim var_F8 As Integer
  loc_10279B4: On Error Goto loc_1027BB8
  loc_10279CE: If (Me.RecordCount <= 0) Then
  loc_10279DC:   var_C8 = "Information"
  loc_10279EC:   var_A8 = "No Records To Search."
  loc_10279F2:   MsgBox(var_A8, &H40, var_C8, var_E8, var_108)
  loc_1027A02:   Exit Sub
  loc_1027A03: End If
  loc_1027A16: If (PRemark = "Unsettled") Then
  loc_1027A20:   var_10C = "Select S.DocId as SearchCode,S.VNo as [No] ,Convert(Varchar(11),S.VDate,106) as [Date],s.RoomNo as TableNo From ((Sale1 S INNER JOIN VOUCHER_TYPE V ON " & "(S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE)) LEFT JOIN PayCharge ON S.DocId = PayCharge.DocId) WHERE "
  loc_1027A35:   var_E8 = CVar(var_10C & "S.LOGSITE_CODE='" & MemVar_1F95078 & "' AND IsNULL(PayCharge.DocId,'')='' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='") 'String
  loc_1027A3E:   var_B8 = 0
  loc_1027A5E:   var_118 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1027A6E:   unk_5B2155.Execute var_118 & "'", var_A8, -1
  loc_1027A76:   var_120 = var_120.Fields
  loc_1027A7E:   var_B8 = var_124.Item(var_124)
  loc_1027A86:   var_128 = var_128.Value
  loc_1027A97:   var_138 = var_C8 & var_C8 & "' ORDER BY S.DOCID" 
  loc_1027A9C:   MemVar_1F950E4 = CStr(var_138)
  loc_1027AC6: Else
  loc_1027ACD:   var_10C = "Select  S.Docid as SearchCode,S.VNo as [No] ,Convert(Varchar(11),S.VDate,106) as [Date],s.RoomNo as TableNo " & "From (Sale1 S INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.LOGSITE_CODE=V.LOGSITE_CODE)) "
  loc_1027AE2:   Proc_6_7_F26918(var_A8, MemVar_1F950EC, CVar(var_10C & "INNER Join Depart H on S.RestCode = H.Code Where S.VDate="))
  loc_1027AEE:   var_B8 = " And (S.DELFLAG='N' OR S.DELFLAG='') And V_Type='"
  loc_1027AF3:   var_108 = MemVar_1F950E4 & var_A8 & var_B8 
  loc_1027AFD:   var_F8 = 0
  loc_1027B1D:   var_110 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1027B2D:   unk_5B2155.Execute var_10C & "S.LOGSITE_CODE='" & "'", var_138, -1
  loc_1027B35:   var_120 = var_120.Fields
  loc_1027B3D:   var_F8 = var_124.Item(var_124)
  loc_1027B45:   var_128 = var_128.Value
  loc_1027B5B:   MemVar_1F950E4 = CStr(var_148 & var_148 & "' Order By S.docid")
  loc_1027B84: End If
  loc_1027B8D: Proc_6_126_F1C850("1000,1500,1000", MemVar_1F950E4)
  loc_1027B9B: MemVar_1F95120 = Me
  loc_1027BB2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_1027BB7: Exit Sub
  loc_1027BB8: ' Referenced from: 10279B4
  loc_1027BB8: Proc_6_60_E63754(var_108)
  loc_1027BBD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32CA8
  'Data Table: 5B2118
  loc_E32C98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32CA0: Call Proc_258_145_1BA3A9C(global_116)
  loc_E32CA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32C48
  'Data Table: 5B2118
  Dim var_5F01 As Double
  loc_E32C38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32C40: Call Proc_258_145_1BA3A9C(global_116)
  loc_E32C45: Exit Sub
  loc_E32C46: var_5F01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32D68
  'Data Table: 5B2118
  loc_E32D58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32D60: Call Proc_258_145_1BA3A9C(global_116)
  loc_E32D65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3A508
  'Data Table: 5B2118
  loc_E3A4F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A500: Call Proc_258_145_1BA3A9C(global_116)
  loc_E3A505: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F665B4
  'Data Table: 5B2118
  Dim Me As Variant
  Dim var_88 As Variant
  loc_F66488: Set var_88 = Me.TopCtrl1
  loc_F6648E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_F664A7: If (CStr() = "Browse") Then
  loc_F664EA:   Call Proc_258_168_EB7024(CStr(Me.Fields.Item("SearchCode").Value), var_B2)
  loc_F66503:   If ((global_240 = "N") And (var_B2 = 0)) Then
  loc_F66506:     Exit Sub
  loc_F66507:   End If
  loc_F66553:   Proc_260_20_1596E88(global_76, CStr(Me.Fields.Item("SearchCode").Value))
  loc_F66561:   global_236 = var_B8
  loc_F66589:   If (global_236 = "Y") Then
  loc_F66598:     global_236(0).Enabled = 0
  loc_F665A0:   End If
  loc_F665A3: Else
  loc_F665A8:   global_56 = &HFF
  loc_F665AB:   Call TopCtrl1_UnknownEvent_16()
  loc_F665B0: End If
  loc_F665B0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E7DFE0
  'Data Table: 5B2118
  Dim Me As Recordset15
  loc_E7DF7F: If (global_188 <> "FAST") Then
  loc_E7DF8D:   Me.Requery -1
  loc_E7DF92: End If
  loc_E7DF9D: If (global_188 <> "FAST") Then
  loc_E7DFAB:   Me.Requery -1
  loc_E7DFB0: End If
  loc_E7DFBB: Me.Requery -1
  loc_E7DFCB: If (global_196 = "Y") Then
  loc_E7DFD9:   Me.Requery -1
  loc_E7DFDE: End If
  loc_E7DFDE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1CA95E0
  'Data Table: 5B2118
  Dim var_98 As Variant
  Dim Me As Variant
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_1E0 As Variant
  Dim var_CC As Variant
  Dim var_220 As Variant
  Dim var_1C8 As String
  Dim unk_5B2155 As Connection15
  Dim var_D0 As Variant
  Dim var_1C4 As Variant
  Dim var_22C As Variant
  Dim var_238 As Double
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_1F0 As Variant
  Dim var_AC As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_274 As String
  Dim var_228 As Variant
  Dim var_FC As Double
  Dim var_114 As Double
  Dim var_190 As Double
  Dim var_198 As Double
  Dim var_104 As Double
  Dim var_10C As Variant
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_144 As Double
  Dim var_11C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_180 As Double
  Dim var_188 As Double
  Dim var_230 As String
  Dim MemVar_1F950EC As Double
  Dim var_2CC As String
  Dim var_2D0 As String
  Dim var_2D4 As String
  Dim var_2A8 As Variant
  Dim var_160 As Recordset15
  Dim var_D2 As Variant
  Dim var_172 As Integer
  Dim var_328 As Variant
  Dim var_380 As Variant
  Dim var_3A8 As TextBox
  Dim var_470 As TextBox
  Dim var_4FC As Variant
  Dim var_4EC As Variant
  Dim var_544 As TextBox
  Dim var_D34 As Double
  Dim var_590 As TextBox
  Dim var_D3C As Double
  Dim var_860 As Variant
  Dim var_D44 As Double
  Dim var_8EC As TextBox
  Dim var_D4C As Double
  Dim var_9D8 As String
  Dim var_A70 As Variant
  Dim var_B3C As TextBox
  Dim var_B88 As TextBox
  Dim var_BD4 As TextBox
  Dim var_C20 As TextBox
  Dim var_C6C As TextBox
  Dim var_CB8 As TextBox
  Dim var_D54 As Double
  Dim var_300 As String
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_338 As Variant
  Dim var_348 As Variant
  Dim var_368 As Variant
  Dim var_378 As Variant
  Dim var_390 As Variant
  Dim var_3A0 As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_428 As Variant
  Dim var_468 As Variant
  Dim var_51C As Variant
  Dim var_53C As Variant
  Dim var_564 As Variant
  Dim var_584 As Variant
  Dim var_5B4 As Variant
  Dim var_5F4 As Variant
  Dim var_614 As Variant
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_694 As Variant
  Dim var_6B4 As Variant
  Dim var_6D4 As Variant
  Dim var_6F4 As Variant
  Dim var_734 As Variant
  Dim var_794 As Variant
  Dim var_7F4 As Variant
  Dim var_854 As Variant
  Dim var_950 As Variant
  Dim var_970 As Variant
  Dim var_A48 As Variant
  Dim var_A68 As Variant
  Dim var_AD4 As Variant
  Dim var_B14 As Variant
  Dim var_B80 As Variant
  Dim var_BE8 As Variant
  Dim var_C18 As Variant
  Dim var_C64 As Variant
  Dim var_CDC As Variant
  Dim var_3A4 As Variant
  Dim var_46C As TextBox
  Dim var_478 As TextBox
  Dim var_58C As TextBox
  Dim var_864 As String
  Dim var_85C As TextBox
  Dim var_8E8 As TextBox
  Dim var_4CC As Variant
  Dim var_50C As Variant
  Dim var_C70 As String
  Dim var_324 As TextBox
  Dim var_BD8 As String
  Dim var_C24 As String
  Dim var_CBC As String
  Dim var_DBC As String
  Dim var_118C As Double
  Dim var_E20 As String
  Dim var_1194 As Double
  Dim var_E84 As String
  Dim var_119C As Double
  Dim var_EE8 As String
  Dim var_11A4 As Double
  Dim var_11AC As Double
  Dim var_308 As String
  Dim var_30C As String
  Dim var_318 As String
  Dim var_320 As String
  Dim var_594 As String
  Dim var_A74 As String
  Dim var_B40 As String
  Dim var_9D4 As Variant
  Dim var_314 As String
  Dim var_8F0 As String
  Dim var_37C As TextBox
  Dim var_474 As Variant
  Dim var_4BC As Variant
  Dim var_858 As TextBox
  Dim var_1BE As Integer
  Dim var_1A0 As Recordset15
  Dim var_1A4 As Recordset15
  Dim var_A6C As Fields15
  Dim var_B8C As String
  loc_1CA2DC1: var_9C = Me.Fields.Item("MultiBillGeneration")
  loc_1CA2DE3: If (var_9C.Value = "Yes") Then
  loc_1CA2DF1:   If (global_284 = "Yes") Then
  loc_1CA2DF4:     Call Proc_258_153_1D71198()
  loc_1CA2DF9:     Exit Sub
  loc_1CA2DFA:   End If
  loc_1CA2DFA: End If
  loc_1CA2DFA: On Error Goto loc_1CA95C6
  loc_1CA2E08: Set var_88 = var_9C(CInt(1))
  loc_1CA2E0E: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA2E16: var_1C8 = "Voucher Date"
  loc_1CA2E37: If (Proc_6_27_EA61EC(var_9C) = 0) Then
  loc_1CA2E3A:   Exit Sub
  loc_1CA2E3B: End If
  loc_1CA2E46: If (global_240 <> "Y") Then
  loc_1CA2E54:   Set var_88 = var_9C(CInt(3))
  loc_1CA2E5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA2E62:   var_1C8 = "Table No"
  loc_1CA2E83:   If (Proc_6_27_EA61EC(var_9C) = 0) Then
  loc_1CA2E86:     Exit Sub
  loc_1CA2E87:   End If
  loc_1CA2E87: End If
  loc_1CA2EA0: Set var_88 = var_9C(CInt(&HB))
  loc_1CA2EA6: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, (global_240 = "N"))
  loc_1CA2EC6: If ( And (var_9C.Tag <> vbNullString)) Then
  loc_1CA2ED4:   Set var_88 = var_9C(CInt(&HB))
  loc_1CA2EDA:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA2EE2:   var_1C8 = "Order No"
  loc_1CA2F03:   If (Proc_6_27_EA61EC(var_9C) = 0) Then
  loc_1CA2F06:     Exit Sub
  loc_1CA2F07:   End If
  loc_1CA2F07: End If
  loc_1CA2F0E: Set var_88 = var_1C8(var_1CA)
  loc_1CA2F14: Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA2F27: Call TxtGt_Validate((var_1CA + 1))
  loc_1CA2F3A: Set var_88 = var_9C(CInt(0))
  loc_1CA2F40: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1CA2F48: var_1C8 = "Voucher No"
  loc_1CA2F69: If (Proc_6_27_EA61EC(var_9C) = 0) Then
  loc_1CA2F6C:   Exit Sub
  loc_1CA2F6D: End If
  loc_1CA2F78: Set var_88 = var_9C(CInt(5))
  loc_1CA2F7E: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA2F86: var_1C8 = "KOT Time"
  loc_1CA2F8F: Set var_1C4 = var_9C
  loc_1CA2FA7: If (Proc_6_27_EA61EC(var_1C4) = 0) Then
  loc_1CA2FAA:   Exit Sub
  loc_1CA2FAB: End If
  loc_1CA2FB6: If (global_76 = vbNullString) Then
  loc_1CA2FD2:   MsgBox("Open RestaurantChange Form ", 0, var_CC, var_1F0, var_210)
  loc_1CA2FE2:   Exit Sub
  loc_1CA2FE3: End If
  loc_1CA2FF8: Set var_88 = 1(CVar(CLng(4)))
  loc_1CA2FFE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1C8)
  loc_1CA3009: var_CC = CVar(CStr()) 'String
  loc_1CA300F: var_1F0 = Trim(var_CC)
  loc_1CA302B: If (var_1F0 = vbNullString) Then
  loc_1CA3041:   var_AC = "No Item On First Row.."
  loc_1CA3047:   MsgBox(var_AC, 0, var_CC, var_1F0, var_210)
  loc_1CA3064:   Set var_88 = (1)
  loc_1CA306A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1CA3076:   Set var_88 = ()
  loc_1CA307C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1CA3087:   Exit Sub
  loc_1CA3088: End If
  loc_1CA3093: If (global_304 = "Room Service") Then
  loc_1CA30B3:   Proc_6_17_EAAE40(var_AC, MemVar_1F95078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1CA30C9:   unk_5B2155.Execute CStr(var_1F0 & var_AC), -1, var_88
  loc_1CA30D4:   Set var_D0 = var_88
  loc_1CA30FA:   If (var_D0.RecordCount > 0) Then
  loc_1CA310F:     var_88 = var_D0.Fields
  loc_1CA3141:     If (Proc_6_38_E69628(var_88.Item(0).Value) = vbNullString) Then
  loc_1CA315F:       var_AC = "Please define Room Payment Type From Enviro"
  loc_1CA3165:       MsgBox(var_AC, &H40, "Aatithya", var_1F0, var_210)
  loc_1CA3175:       Exit Sub
  loc_1CA3176:     End If
  loc_1CA3176:   End If
  loc_1CA3179: Else
  loc_1CA3196:   Proc_6_17_EAAE40(var_AC, MemVar_1F95078, "Select CashPayType From enviro WHERE LOGSITE_CODE=")
  loc_1CA31A2:   var_1C8 = CStr(var_1F0 & var_AC)
  loc_1CA31AC:   unk_5B2155.Execute var_1C8, -1, var_88
  loc_1CA31B7:   Set var_D0 = var_88
  loc_1CA31DD:   If (var_D0.RecordCount > 0) Then
  loc_1CA320F:     var_19C = Proc_6_38_E69628(var_D0.Fields.Item(0).Value)
  loc_1CA3224:     If (var_19C = vbNullString) Then
  loc_1CA3248:       MsgBox("Please define Cash Payment Type From Enviro", &H40, vbNullString, var_1F0, var_210)
  loc_1CA3258:       Exit Sub
  loc_1CA3259:     End If
  loc_1CA3259:   End If
  loc_1CA3259: End If
  loc_1CA3260: Set var_88 = (var_1CA)
  loc_1CA3266: Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA3278: Set var_9C = var_1C4(var_1CA)
  loc_1CA327E: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA3286:  = var_1C4.Text
  loc_1CA32A4: If (CDbl(Val(var_1C8)) < CDbl(0)) Then
  loc_1CA32C8:   MsgBox("Bill Can't be saved with Negative Net Amount.", &H10, "Net Amount", var_1F0, var_210)
  loc_1CA32D8:   Exit Sub
  loc_1CA32D9: End If
  loc_1CA32E7: Set var_88 = var_9C(CInt(6))
  loc_1CA32ED: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA32F5:  = var_9C.Text
  loc_1CA3311: If (CDbl(Val(var_1C8)) <> CDbl(0)) Then
  loc_1CA331B:   Set var_1C4 = (var_1CA)
  loc_1CA3321:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA3333:   Set var_228 = var_22C(var_1CA)
  loc_1CA3339:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230)
  loc_1CA3341:    = var_22C.Text
  loc_1CA334E:   var_238 = Val(var_230)
  loc_1CA335F:   Set var_88 = var_9C(CInt(6))
  loc_1CA3365:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA3394:   If (CDbl(Val(var_1C8)) < CDbl(var_9C.Text)) Then
  loc_1CA33B8:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1F0, var_210)
  loc_1CA33D3:     Set var_88 = var_9C(CInt(6))
  loc_1CA33D9:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA33E1:     var_9C.SetFocus
  loc_1CA33ED:     Exit Sub
  loc_1CA33EE:   End If
  loc_1CA33EE: End If
  loc_1CA33F7: Set var_88 = 1(var_DA)
  loc_1CA33FD: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1CA3413: For var_23C =  To CInt((CLng() - 1)):  = var_23C 'Integer
  loc_1CA342E:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&H11)))
  loc_1CA3434:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3455:   If (CDbl(Val(CStr())) > CDbl(0)) Then
  loc_1CA346D:     Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA3473:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3486:     var_238 = Val(CStr())
  loc_1CA3490:     var_EC = (var_EC + var_238)
  loc_1CA349F:   Else
  loc_1CA34B4:     Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA34BA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_EC)
  loc_1CA34D7:     var_F4 = (var_F4 + Val(CStr(var_238)))
  loc_1CA34E3:   End If
  loc_1CA34E6: Next var_23C 'Integer
  loc_1CA34F7: Set var_88 = var_DA(var_1CA)
  loc_1CA34FD: Call 0.Method_TopCtrl1_UnknownEvent_168 (1)
  loc_1CA3508: For var_240 =  To var_1CA:  = var_240 'Integer
  loc_1CA3531:   var_1C8 = "Select IsNull(Max(Nature),'') from SundryType Where  LOGSITE_CODE='" & MemVar_1F95078
  loc_1CA3538:   var_1F0 = CVar(var_1C8 & "' AND SundryCode='") 'String
  loc_1CA3548:   Set var_88 = var_9C(var_DA)
  loc_1CA354E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230, var_1F0, var_284, -1, var_1C4)
  loc_1CA3556:   var_228 = var_9C.Tag
  loc_1CA355E:   var_AC = CVar(var_230) 'String
  loc_1CA3564:   var_CC = Trim(var_AC)
  loc_1CA3599:   unk_5B2155.Execute CStr(0 & var_CC & "' And V_Type='" & CVar(global_184) & "'"), var_22C, var_294
  loc_1CA35A1:    = var_1C4.Fields
  loc_1CA35A9:    = var_228.Item()
  loc_1CA35B1:    = var_22C.Value
  loc_1CA35ED:   var_298 = Proc_6_38_E69628(var_294)
  loc_1CA35F8:   If (var_298 = "Addition") Then
  loc_1CA3608:     Set var_88 = var_9C(var_DA)
  loc_1CA360E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA3616:      = var_9C.Text
  loc_1CA362D:     var_FC = (var_FC + Val(var_1C8))
  loc_1CA3647:     Set var_88 = var_9C(var_DA)
  loc_1CA364D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_FC)
  loc_1CA3655:     var_238 = var_9C.Text
  loc_1CA366C:     var_114 = (var_114 + Val(var_1C8))
  loc_1CA367C:   Else
  loc_1CA3684:     If (var_298 = "Advance") Then
  loc_1CA3694:       Set var_88 = var_9C(var_DA)
  loc_1CA369A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_114)
  loc_1CA36A2:       var_238 = var_9C.Text
  loc_1CA36B9:       var_190 = (var_190 + Val(var_1C8))
  loc_1CA36D3:       Set var_88 = var_9C(var_DA)
  loc_1CA36D9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_190)
  loc_1CA36E1:       var_238 = var_9C.Text
  loc_1CA36F8:       var_198 = (var_198 + Val(var_1C8))
  loc_1CA3708:     Else
  loc_1CA3710:       If (var_298 = "Deduction") Then
  loc_1CA3720:         Set var_88 = var_9C(var_DA)
  loc_1CA3726:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_198)
  loc_1CA372E:         var_238 = var_9C.Text
  loc_1CA3745:         var_104 = (var_104 + Val(var_1C8))
  loc_1CA375F:         Set var_88 = var_9C(var_DA)
  loc_1CA3765:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_104)
  loc_1CA376D:         var_238 = var_9C.Text
  loc_1CA3784:         var_10C = (var_10C + Val(var_1C8))
  loc_1CA3794:       Else
  loc_1CA379C:         If (var_298 = "Discount") Then
  loc_1CA37AC:           Set var_88 = var_9C(var_DA)
  loc_1CA37B2:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_10C)
  loc_1CA37BA:           var_238 = var_9C.Text
  loc_1CA37D1:           var_124 = (var_124 + Val(var_1C8))
  loc_1CA37EB:           Set var_88 = var_9C(var_DA)
  loc_1CA37F1:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_124)
  loc_1CA37F9:           var_238 = var_9C.Text
  loc_1CA3810:           var_12C = (var_12C + Val(var_1C8))
  loc_1CA3820:         Else
  loc_1CA3828:           If (var_298 = "Luxury Tax") Then
  loc_1CA3838:             Set var_88 = var_9C(var_DA)
  loc_1CA383E:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_12C)
  loc_1CA3846:             var_238 = var_9C.Text
  loc_1CA385D:             var_144 = (var_144 + Val(var_1C8))
  loc_1CA3877:             Set var_88 = var_9C(var_DA)
  loc_1CA387D:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_144)
  loc_1CA3885:             var_238 = var_9C.Text
  loc_1CA389C:             var_11C = (var_11C + Val(var_1C8))
  loc_1CA38AC:           Else
  loc_1CA38B4:             If (var_298 = "Round Off") Then
  loc_1CA38C4:               Set var_88 = var_9C(var_DA)
  loc_1CA38CA:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_11C)
  loc_1CA38D2:               var_238 = var_9C.Text
  loc_1CA38E9:               var_134 = (var_134 + Val(var_1C8))
  loc_1CA3903:               Set var_88 = var_9C(var_DA)
  loc_1CA3909:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_134)
  loc_1CA3911:               var_238 = var_9C.Text
  loc_1CA3928:               var_13C = (var_13C + Val(var_1C8))
  loc_1CA3938:             Else
  loc_1CA3940:               If (var_298 = "Sale Tax") Then
  loc_1CA3950:                 Set var_88 = var_9C(var_DA)
  loc_1CA3956:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_13C)
  loc_1CA395E:                 var_238 = var_9C.Text
  loc_1CA3975:                 var_144 = (var_144 + Val(var_1C8))
  loc_1CA398F:                 Set var_88 = var_9C(var_DA)
  loc_1CA3995:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_144)
  loc_1CA399D:                 var_238 = var_9C.Text
  loc_1CA39B4:                 var_11C = (var_11C + Val(var_1C8))
  loc_1CA39C4:               Else
  loc_1CA39CC:                 If (var_298 = "Service Charge") Then
  loc_1CA39DC:                   Set var_88 = var_9C(var_DA)
  loc_1CA39E2:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_11C)
  loc_1CA39EA:                   var_238 = var_9C.Text
  loc_1CA3A01:                   var_14C = (var_14C + Val(var_1C8))
  loc_1CA3A1B:                   Set var_88 = var_9C(var_DA)
  loc_1CA3A21:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_14C)
  loc_1CA3A29:                   var_238 = var_9C.Text
  loc_1CA3A40:                   var_154 = (var_154 + Val(var_1C8))
  loc_1CA3A50:                 Else
  loc_1CA3A58:                   If (var_298 = "Service Tax") Then
  loc_1CA3A68:                     Set var_88 = var_9C(var_DA)
  loc_1CA3A6E:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_154)
  loc_1CA3A76:                     var_238 = var_9C.Text
  loc_1CA3A8D:                     var_180 = (var_180 + Val(var_1C8))
  loc_1CA3AA7:                     Set var_88 = var_9C(var_DA)
  loc_1CA3AAD:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_180)
  loc_1CA3AB5:                     var_238 = var_9C.Text
  loc_1CA3ACC:                     var_188 = (var_188 + Val(var_1C8))
  loc_1CA3AD9:                   End If
  loc_1CA3AD9:                 End If
  loc_1CA3AD9:               End If
  loc_1CA3AD9:             End If
  loc_1CA3AD9:           End If
  loc_1CA3AD9:         End If
  loc_1CA3AD9:       End If
  loc_1CA3AD9:     End If
  loc_1CA3AD9:   End If
  loc_1CA3ADC: Next var_240 'Integer
  loc_1CA3AE4: var_E4 = vbNullString
  loc_1CA3AEA: Call Proc_258_146_1120BB0(var_1CA)
  loc_1CA3AF5: If (var_1CA = 0) Then
  loc_1CA3AF8:   Exit Sub
  loc_1CA3AF9: End If
  loc_1CA3B04: Set var_88 = var_9C(0)
  loc_1CA3B0A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1CA3B12: var_9C.Visible = 
  loc_1CA3B1E: Call Proc_258_149_FD7788()
  loc_1CA3B31: Set var_88 = var_9C(CInt(1))
  loc_1CA3B37: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA3B3F:  = var_9C.Text
  loc_1CA3B5F: If (Proc_6_91_EF38D0(CDate(var_1C8)) = 0) Then
  loc_1CA3B6D:   Set var_88 = var_9C(CInt(1))
  loc_1CA3B73:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA3B7B:   var_9C.SetFocus
  loc_1CA3B87:   Exit Sub
  loc_1CA3B88: End If
  loc_1CA3B8C: Set var_88 = Me.TopCtrl1
  loc_1CA3B92: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA3BAB: If (CStr() = "Add") Then
  loc_1CA3BB4:   var_BC = 0
  loc_1CA3BD1:   var_1C8 = "Select NCUR from enviro where Logsite_code='" & MemVar_1F95078
  loc_1CA3BE1:   unk_5B2155.Execute var_1C8 & "'", var_AC, -1
  loc_1CA3BE9:   var_88 = var_88.Fields
  loc_1CA3BF1:   var_BC = var_9C.Item(var_9C)
  loc_1CA3BF9:   var_1C4 = var_1C4.Value
  loc_1CA3C03:   MemVar_1F950EC = CDate(var_CC)
  loc_1CA3C23:   var_BC = 0
  loc_1CA3C4A:   Set var_88 = var_9C(CInt(2))
  loc_1CA3C50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Select Count(*) From Sale1 Where DocID='", var_AC, -1, var_1C4, var_228)
  loc_1CA3C58:   var_BC = var_9C.Text
  loc_1CA3C71:   unk_5B2155.Execute var_22C & var_1C8 & "'", var_CC, MemVar_1F950EC
  loc_1CA3C81:    = var_228.Item()
  loc_1CA3C89:    = var_22C.Value
  loc_1CA3CB6:   If (var_1C4.Fields > 0) Then
  loc_1CA3CBF:     Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1CA3CD2:     Set var_88 = var_9C(CInt(2))
  loc_1CA3CD8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA3CE0:     var_9C.Text = var_1C8
  loc_1CA3CEF:     Exit Sub
  loc_1CA3CF0:   End If
  loc_1CA3CF3: Else
  loc_1CA3D18:   var_AC = Me.Fields.Item("DocID").Value
  loc_1CA3D27:   global_156 = CStr(var_AC)
  loc_1CA3D38: End If
  loc_1CA3D4D: Set var_88 = 1(CVar(CLng(&HD)))
  loc_1CA3D53: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3D74: Set var_9C = 1(CVar(CLng(&HC)))
  loc_1CA3D7A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3D8D: var_238 = Val(CStr())
  loc_1CA3DC4: unk_5B2155.Execute "Select Waiter From KOT where DocID='" & CStr(var_AC) & "' And SNO =" & CStr(var_238), var_1F0, -1
  loc_1CA3DCF: Set var_D0 = var_1C4
  loc_1CA3E07: If (var_D0.RecordCount > 0) Then
  loc_1CA3E1C:   var_88 = var_D0.Fields
  loc_1CA3E2C:   var_AC = var_88.Item(0).Value
  loc_1CA3E3B:   global_292 = CStr(var_AC)
  loc_1CA3E4C: End If
  loc_1CA3E52: global_180 = vbNullString
  loc_1CA3E5C: Call Proc_258_155_EA954C(var_160, var_88)
  loc_1CA3E64: Set var_160 = var_88
  loc_1CA3E70: Set var_88 = 1(var_DA)
  loc_1CA3E76: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_1C4)
  loc_1CA3E8C: For var_2E8 =  To CInt((CLng(var_238) - 1)):  = var_2E8 'Integer
  loc_1CA3EA7:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA3EAD:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3EC6:   var_220 = vbNullString
  loc_1CA3EE5:   Set var_9C = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA3EEB:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> var_220))
  loc_1CA3F24:   If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1CA3F3B:     If (var_160.RecordCount > 0) Then
  loc_1CA3F41:       var_160.MoveFirst
  loc_1CA3F4A:       var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA3F5B:       Set var_88 = var_98(CVar(CLng(&HD)))
  loc_1CA3F61:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3FBB:       var_160.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(var_AC)), 8))))), 0, 1
  loc_1CA3FE5:       If var_160.EOF Then
  loc_1CA3FF3:         var_160.AddNew var_98, var_BC
  loc_1CA3FFC:         var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA400D:         Set var_88 = var_98(CVar(CLng(&HD)))
  loc_1CA4013:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_220)
  loc_1CA404A:         var_2A8 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_AC)), 8))))) 'Double
  loc_1CA4058:         var_160.Collect = "V_NO"
  loc_1CA4079:         var_160.Update var_98, var_BC
  loc_1CA407E:       End If
  loc_1CA4081:     Else
  loc_1CA408C:       var_160.AddNew var_98, var_BC
  loc_1CA4095:       var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA40A6:       Set var_88 = var_98(CVar(CLng(&HD)))
  loc_1CA40AC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2A8)
  loc_1CA40E3:       var_2A8 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_AC)), 8))))) 'Double
  loc_1CA40F1:       var_160.Collect = "V_NO"
  loc_1CA4112:       var_160.Update var_98, var_BC
  loc_1CA4117:     End If
  loc_1CA4117:   End If
  loc_1CA411A: Next var_2E8 'Integer
  loc_1CA4125: var_224 = var_160.RecordCount
  loc_1CA4133: If (var_224 > 0) Then
  loc_1CA413C:   var_160.Sort = "V_NO"
  loc_1CA4144:   var_160.MoveFirst
  loc_1CA4149:   ' Referenced from: 1CA423B
  loc_1CA414F:   var_1CA = var_160.EOF
  loc_1CA4158:   If Not(var_1CA) Then
  loc_1CA4166:     If (global_180 <> vbNullString) Then
  loc_1CA41BB:       global_180 = CStr(Trim(CVar(global_180 & "," & CStr(var_160.Fields.Item("V_NO").Value))))
  loc_1CA41DB:     Else
  loc_1CA41F5:       var_9C = var_160.Fields.Item("V_NO")
  loc_1CA4207:       var_CC = CVar(CStr(var_9C.Value)) 'String
  loc_1CA420D:       var_1F0 = Trim(var_CC)
  loc_1CA4216:       var_1C8 = CStr(var_1F0)
  loc_1CA421C:       global_180 = var_1C8
  loc_1CA4233:     End If
  loc_1CA4236:     var_160.MoveNext
  loc_1CA423B:     GoTo loc_1CA4149
  loc_1CA423E:   End If
  loc_1CA4247:   global_180 = global_180
  loc_1CA424B: End If
  loc_1CA424D: var_D2 = &HFF
  loc_1CA4259: unk_5B2155.BeginTrans var_224
  loc_1CA4269: var_AC = Ucase(MemVar_1F950C8)
  loc_1CA427C: If (var_AC = "HTW_SYSTEM") Then
  loc_1CA429D:   Set var_88 = var_9C(CInt(2))
  loc_1CA42A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM Sale1Log Where Docid= '", var_AC)
  loc_1CA42AB:   -1 = var_9C.Text
  loc_1CA42C4:   unk_5B2155.Execute var_1C4 & var_1C8 & "'", var_D2, 
  loc_1CA42FC:   Set var_88 = var_9C(CInt(2))
  loc_1CA4302:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM Sale2Log Where Docid= '", var_AC)
  loc_1CA430A:   -1 = var_9C.Text
  loc_1CA4323:   unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA435B:   Set var_88 = var_9C(CInt(2))
  loc_1CA4361:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM StockLog Where Docid= '", var_AC)
  loc_1CA4369:   -1 = var_9C.Text
  loc_1CA4382:   unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA43BA:   Set var_88 = var_9C(CInt(2))
  loc_1CA43C0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM SunTranLog Where Docid= '", var_AC)
  loc_1CA43C8:   -1 = var_9C.Text
  loc_1CA43E1:   unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA4419:   Set var_88 = var_9C(CInt(2))
  loc_1CA441F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM PayChargeLog Where Docid= '", var_AC)
  loc_1CA4427:   -1 = var_9C.Text
  loc_1CA4440:   unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA445D: Else
  loc_1CA4466:   If (global_436 = &HFF) Then
  loc_1CA4487:     Set var_88 = var_9C(CInt(2))
  loc_1CA448D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into Sale1Log Select * from Sale1 Where Docid= '", var_AC)
  loc_1CA4495:     -1 = var_9C.Text
  loc_1CA44AE:     unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA44E6:     Set var_88 = var_9C(CInt(2))
  loc_1CA44EC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into Sale2Log Select * from Sale2 Where Docid= '", var_AC)
  loc_1CA44F4:     -1 = var_9C.Text
  loc_1CA450D:     unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA4545:     Set var_88 = var_9C(CInt(2))
  loc_1CA454B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into StockLog Select * from Stock Where Docid= '", var_AC)
  loc_1CA4553:     -1 = var_9C.Text
  loc_1CA456C:     unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA45A4:     Set var_88 = var_9C(CInt(2))
  loc_1CA45AA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into SunTranLog Select * from SunTran Where Docid= '", var_AC)
  loc_1CA45B2:     -1 = var_9C.Text
  loc_1CA45CB:     unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA4603:     Set var_88 = var_9C(CInt(2))
  loc_1CA4609:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into PayChargeLog Select * from PayCharge Where Docid= '", var_AC)
  loc_1CA4611:     -1 = var_9C.Text
  loc_1CA462A:     unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA4671:     Set var_88 = var_9C(CInt(2))
  loc_1CA4677:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Select Max(SeqNo) From Sale1Log  Where Docid= '", var_AC, -1, var_1C4)
  loc_1CA467F:     var_228 = var_9C.Text
  loc_1CA468F:     var_274 = 0 & var_1C8 & "'"
  loc_1CA4698:     unk_5B2155.Execute var_274, var_22C, var_CC
  loc_1CA46A0:      = var_1C4.Fields
  loc_1CA46A8:      = var_228.Item()
  loc_1CA46B0:      = var_22C.Value
  loc_1CA46BB:     Proc_6_39_E7D3A0(var_1F0)
  loc_1CA46C4:     var_172 = CInt(var_1F0)
  loc_1CA46FE:     var_1C8 = CStr((var_172 + 1))
  loc_1CA471A:     Set var_88 = var_9C(CInt(2))
  loc_1CA4720:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update Sale1Log Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC, -1)
  loc_1CA4728:     var_1C4 = var_9C.Text
  loc_1CA4741:     unk_5B2155.Execute var_172 & var_274 & "'", var_CC, 
  loc_1CA4779:     var_1C8 = CStr((var_172 + 1))
  loc_1CA4795:     Set var_88 = var_9C(CInt(2))
  loc_1CA479B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update Sale2Log Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC)
  loc_1CA47A3:     -1 = var_9C.Text
  loc_1CA47BC:     unk_5B2155.Execute var_1C4 & var_274 & "'", , 
  loc_1CA47F4:     var_1C8 = CStr((var_172 + 1))
  loc_1CA4810:     Set var_88 = var_9C(CInt(2))
  loc_1CA4816:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update StockLog Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC)
  loc_1CA481E:     -1 = var_9C.Text
  loc_1CA4837:     unk_5B2155.Execute var_1C4 & var_274 & "'", , 
  loc_1CA486F:     var_1C8 = CStr((var_172 + 1))
  loc_1CA488B:     Set var_88 = var_9C(CInt(2))
  loc_1CA4891:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update SunTranLog Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC)
  loc_1CA4899:     -1 = var_9C.Text
  loc_1CA48B2:     unk_5B2155.Execute var_1C4 & var_274 & "'", , 
  loc_1CA48EA:     var_1C8 = CStr((var_172 + 1))
  loc_1CA48F5:     var_2CC = "Update PayChargeLog Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '"
  loc_1CA4906:     Set var_88 = var_9C(CInt(2))
  loc_1CA490C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, var_2CC, var_AC)
  loc_1CA4914:     -1 = var_9C.Text
  loc_1CA492D:     unk_5B2155.Execute var_1C4 & var_274 & "'", , 
  loc_1CA494D:   End If
  loc_1CA494D: End If
  loc_1CA4951: Set var_88 = Me.TopCtrl1
  loc_1CA4957: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA495F: var_1C8 = CStr()
  loc_1CA4970: If (var_1C8 = "Add") Then
  loc_1CA4981:   Set var_88 = var_9C(CInt(2))
  loc_1CA4987:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA498F:    = var_9C.Text
  loc_1CA49A7:   Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1CA49BA:   Set var_88 = var_9C(CInt(2))
  loc_1CA49C0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA49C8:   var_9C.Text = var_1C8
  loc_1CA49E5:   Set var_88 = var_9C(CInt(2))
  loc_1CA49EB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA49F3:    = var_9C.Text
  loc_1CA4A0A:   If (var_1C8 <> var_1C8) Then
  loc_1CA4A18:     Set var_88 = var_9C(CInt(2))
  loc_1CA4A1E:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA4A23:     var_98 = "Bill No. has saved As "
  loc_1CA4A30:     var_AC = CVar(var_9C) 'Address
  loc_1CA4A37:     var_CC = Right(var_AC, 8)
  loc_1CA4A56:     Set var_1C4 = (CStr(var_98 & Trim(var_CC)))
  loc_1CA4A5C:     var_1C4.Caption = 
  loc_1CA4A76:   End If
  loc_1CA4A79: Else
  loc_1CA4A87:   Set var_88 = var_9C(CInt(2))
  loc_1CA4A8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA4A95:    = var_9C.Text
  loc_1CA4A9F:   var_320 = 0
  loc_1CA4AB2:   var_318 = 0
  loc_1CA4ABD:   var_314 = 0
  loc_1CA4B36:   Proc_154_5_10E3BD4(MemVar_1F95044, "Sale1", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA4B69:   Set var_88 = var_9C(CInt(2))
  loc_1CA4B6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA4B77:   0 = var_9C.Text
  loc_1CA4B81:   var_320 = 0
  loc_1CA4B94:   var_318 = 0
  loc_1CA4B9F:   var_314 = 0
  loc_1CA4C18:   Proc_154_5_10E3BD4(MemVar_1F95044, "Stock", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA4C4B:   Set var_88 = var_9C(CInt(2))
  loc_1CA4C51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA4C59:   0 = var_9C.Text
  loc_1CA4C63:   var_320 = 0
  loc_1CA4C76:   var_318 = 0
  loc_1CA4C81:   var_314 = 0
  loc_1CA4CFA:   Proc_154_5_10E3BD4(MemVar_1F95044, "Sale2", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA4D2D:   Set var_88 = var_9C(CInt(2))
  loc_1CA4D33:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA4D3B:   0 = var_9C.Text
  loc_1CA4D45:   var_320 = 0
  loc_1CA4D58:   var_318 = 0
  loc_1CA4D63:   var_314 = 0
  loc_1CA4DDC:   Proc_154_5_10E3BD4(MemVar_1F95044, "SunTran", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA4E0F:   Set var_88 = var_9C(CInt(2))
  loc_1CA4E15:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA4E1D:   0 = var_9C.Text
  loc_1CA4E27:   var_320 = 0
  loc_1CA4E3A:   var_318 = 0
  loc_1CA4E45:   var_314 = 0
  loc_1CA4E58:   var_30C = 0
  loc_1CA4E63:   var_308 = 0
  loc_1CA4EB5:   var_1C8 = "PayCharge"
  loc_1CA4EBE:   Proc_154_5_10E3BD4(MemVar_1F95044, var_1C8, "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA4F01:   Set var_88 = var_9C(CInt(2))
  loc_1CA4F07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From Sale1 Where DocID='", var_AC, -1, var_1C4, 0)
  loc_1CA4F0F:   0 = var_9C.Text
  loc_1CA4F28:   unk_5B2155.Execute var_308 & var_1C8 & "'", var_30C, 0
  loc_1CA4F60:   Set var_88 = var_9C(CInt(2))
  loc_1CA4F66:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From Sale2 Where DocID='", var_AC, -1)
  loc_1CA4F6E:   var_1C4 = var_9C.Text
  loc_1CA4F87:   unk_5B2155.Execute var_314 & var_1C8 & "'", var_318, 
  loc_1CA4FBF:   Set var_88 = var_9C(CInt(2))
  loc_1CA4FC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From Stock Where DocID='", var_AC)
  loc_1CA4FCD:   -1 = var_9C.Text
  loc_1CA4FE6:   unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA501E:   Set var_88 = var_9C(CInt(2))
  loc_1CA5024:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From SunTran Where DocID='", var_AC)
  loc_1CA502C:   -1 = var_9C.Text
  loc_1CA5045:   unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA505F: End If
  loc_1CA506A: If (global_304 = "Room Service") Then
  loc_1CA507B:   Set var_88 = var_9C(CInt(2))
  loc_1CA5081:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA5089:    = var_9C.Text
  loc_1CA509C:   Set var_1C4 = var_228(CInt(0))
  loc_1CA50A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA50AA:    = var_228.Text
  loc_1CA50B7:   var_238 = Val(var_2CC)
  loc_1CA50C5:   Set var_22C = var_324(CInt(1))
  loc_1CA50CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_1CA50D3:   var_AC = CVar(var_324) 'Address
  loc_1CA50DA:   Proc_6_7_F26918(var_CC)
  loc_1CA50EC:    = var_AC(var_308).Caption
  loc_1CA50FF:   Set var_37C = var_380(CInt(&HA))
  loc_1CA5105:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA510D:    = var_380.Text
  loc_1CA511A:   var_D2C = Val(var_30C)
  loc_1CA512B:   Set var_3A4 = var_3A8(CInt(&HA))
  loc_1CA5131:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_314)
  loc_1CA514C:   Set var_46C = var_470(CInt(3))
  loc_1CA5152:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_318)
  loc_1CA515A:    = var_470.Text
  loc_1CA516A:   Set var_474 = var_478(CInt(3))
  loc_1CA5170:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA518A:   Set var_4BC = 1(CVar(CLng(&H17)))
  loc_1CA5190:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA51C7:   Set var_540 = var_544(CInt(4))
  loc_1CA51CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA51D5:    = var_544.Text
  loc_1CA51E2:   var_D34 = Val(var_320)
  loc_1CA51EC:   Set var_588 = var_D34(var_1CA)
  loc_1CA51F2:   Call 0.Method_TopCtrl1_UnknownEvent_164 ()
  loc_1CA5204:   Set var_58C = var_590(var_1CA)
  loc_1CA520A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_594)
  loc_1CA5212:    = var_590.Text
  loc_1CA521F:   var_D3C = Val(var_594)
  loc_1CA5229:   Set var_858 = var_D3C(var_1CC)
  loc_1CA522F:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA5241:   Set var_85C = var_860(var_1CC)
  loc_1CA5247:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_864)
  loc_1CA524F:    = var_860.Text
  loc_1CA525C:   var_D44 = Val(var_864)
  loc_1CA526D:   Set var_8E8 = var_8EC(CInt(&HE))
  loc_1CA5273:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA5288:   var_D4C = Val(var_8F0)
  loc_1CA5299:   Proc_6_7_F26918(var_990, Date)
  loc_1CA52A2:   Set var_9C4 = Me.TopCtrl1
  loc_1CA52A8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D4C)
  loc_1CA52CB:   var_9D8 = CStr(var_9D4)
  loc_1CA52ED:   Set var_A6C = var_A70(CInt(5))
  loc_1CA52F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA52FB:    = var_A70.Text
  loc_1CA530E:   Set var_B38 = var_B3C(CInt(&HE))
  loc_1CA5314:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA531C:    = var_B3C.Text
  loc_1CA532F:   Set var_B84 = var_B88(CInt(0))
  loc_1CA5335:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA533D:    = var_B88.Text
  loc_1CA5350:   Set var_BD0 = var_BD4(CInt(1))
  loc_1CA5356:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA535E:    = var_BD4.Text
  loc_1CA5371:   Set var_C1C = var_C20(CInt(2))
  loc_1CA5377:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA537F:    = var_C20.Text
  loc_1CA5392:   Set var_C68 = var_C6C(CInt(3))
  loc_1CA5398:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA53A0:    = var_C6C.Text
  loc_1CA53B3:   Set var_CB4 = var_CB8(CInt(6))
  loc_1CA53B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_CBC)
  loc_1CA53C1:    = var_CB8.Text
  loc_1CA53E5:   var_230 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,FolioNo,FolioNoDocId,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE,Remark,PhoneNo,CustName,Addr1,Addr2,CashRecd) Values (" & "'"
  loc_1CA5410:   var_98 = ",'"
  loc_1CA541F:   var_BC = CVar(global_184) 'String
  loc_1CA5448:   var_348 = CVar(var_230 & var_1C8 & "'," & CStr(var_238) & ",") & var_CC & var_98 & var_BC & "','" & CVar(var_308) & "','" & CVar(MemVar_1F95070) 
  loc_1CA548E:   var_3E8 = var_348 & "','" & CVar(global_76) & "'," & CVar(var_3A8.Tag) & ",'" & CVar(var_314) & "','" 
  loc_1CA54C1:   var_51C = var_3E8 & CVar(global_188) & "','" & CVar(global_192) & "','" & IIf((var_318 <> vbNullString), CVar(var_478), CVar(CStr())) 
  loc_1CA552E:   var_694 = var_51C & "'," & CVar(var_D34) & "," & CVar(var_D3C) & "," & CVar(var_12C) & "," & CVar(var_124) & "," & CVar(var_F4) & "," 
  loc_1CA559D:   var_7F4 = var_694 & CVar(var_EC) & "," & CVar(var_144) & ", " & CVar(var_14C) & "," & CVar(var_180) & "," & CVar(var_FC) & "," & CVar(var_104) 
  loc_1CA5602:   var_950 = var_7F4 & "," & CVar(var_134) & "," & CVar(var_8EC.Text) & ",'" & CVar(global_180) & "'," & CVar(var_D4C) & ", '" & CVar(MemVar_1F950C8) 
  loc_1CA564B:   var_AD4 = var_950 & "'," & var_990 & ",'" & IIf((var_9D8 = "Add"), "A", "E") & "','" & CVar(var_A74) & "','" & CVar(global_292) 
  loc_1CA56A0:   var_C18 = var_AD4 & "','N','" & CVar(MemVar_1F95078) & "','" & CVar(var_B40) & "','" & CVar(var_B8C) & "','" & CVar(var_BD8) & "','" 
  loc_1CA56E8:   unk_5B2155.Execute CStr(var_C18 & CVar(var_C24) & "','" & CVar(var_C70) & "'," & CVar(Val(var_CBC)) & ")"), var_D20, -1
  loc_1CA582D: Else
  loc_1CA583B:   Set var_88 = var_9C(CInt(2))
  loc_1CA5841:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_D24)
  loc_1CA5849:   var_D54 = var_9C.Text
  loc_1CA585C:   Set var_1C4 = var_228(CInt(0))
  loc_1CA5862:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA586A:    = var_228.Text
  loc_1CA5877:   var_238 = Val(var_2CC)
  loc_1CA5885:   Set var_22C = var_324(CInt(1))
  loc_1CA588B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_1CA5893:   var_AC = CVar(var_324) 'Address
  loc_1CA589A:   Proc_6_7_F26918(var_CC)
  loc_1CA58AC:    = var_AC(var_308).Caption
  loc_1CA58C6:   Set var_37C = 1(CVar(CLng(&H17)))
  loc_1CA58CC:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA58E6:   Set var_380 = var_3A4(CInt(&HD))
  loc_1CA58EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA58F4:    = var_3A4.Tag
  loc_1CA5907:   Set var_3A8 = var_46C(CInt(4))
  loc_1CA590D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_314)
  loc_1CA5915:    = var_46C.Text
  loc_1CA5922:   var_D2C = Val(var_314)
  loc_1CA592C:   Set var_470 = var_D2C(var_1CA)
  loc_1CA5932:   Call 0.Method_TopCtrl1_UnknownEvent_164 ()
  loc_1CA5944:   Set var_474 = var_478(var_1CA)
  loc_1CA594A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_318)
  loc_1CA5952:    = var_478.Text
  loc_1CA595F:   var_D34 = Val(var_318)
  loc_1CA5969:   Set var_4BC = var_D34(var_1CC)
  loc_1CA596F:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA5981:   Set var_540 = var_544(var_1CC)
  loc_1CA5987:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA598F:    = var_544.Text
  loc_1CA599C:   var_D3C = Val(var_320)
  loc_1CA59B2:   var_884 = Left(global_180, &HFF)
  loc_1CA59D0:   Set var_588 = var_58C(CInt(&HE))
  loc_1CA59D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_594)
  loc_1CA59EB:   var_D44 = Val(var_594)
  loc_1CA59FC:   Proc_6_7_F26918(var_990, Date)
  loc_1CA5A05:   Set var_590 = Me.TopCtrl1
  loc_1CA5A0B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D44)
  loc_1CA5A19:   var_A28 = "E"
  loc_1CA5A50:   Set var_858 = var_85C(CInt(5))
  loc_1CA5A56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA5A5E:    = var_85C.Text
  loc_1CA5A71:   Set var_860 = var_8E8(CInt(&HE))
  loc_1CA5A77:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9D8)
  loc_1CA5A7F:    = var_8E8.Text
  loc_1CA5A92:   Set var_8EC = var_9C4(CInt(0))
  loc_1CA5A98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA5AA0:    = var_9C4.Text
  loc_1CA5AB3:   Set var_A6C = var_A70(CInt(1))
  loc_1CA5AB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA5AC1:    = var_A70.Text
  loc_1CA5AD4:   Set var_B38 = var_B3C(CInt(2))
  loc_1CA5ADA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA5AE2:    = var_B3C.Text
  loc_1CA5AF5:   Set var_B84 = var_B88(CInt(3))
  loc_1CA5AFB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA5B03:    = var_B88.Text
  loc_1CA5B16:   Set var_BD0 = var_BD4(CInt(6))
  loc_1CA5B1C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA5B24:    = var_BD4.Text
  loc_1CA5B31:   var_D4C = Val(var_C24)
  loc_1CA5B48:   var_230 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,Advance,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE,Remark,PhoneNo,CustName,Addr1,Addr2,CashRecd) Values (" & "'"
  loc_1CA5B82:   var_BC = CVar(global_184) 'String
  loc_1CA5B98:   var_294 = CVar(var_230 & var_1C8 & "'," & CStr(var_238) & ",") & var_CC & ",'" & var_BC & "','" & CVar(var_308) 
  loc_1CA5BC1:   var_368 = var_294 & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_76) 
  loc_1CA5C11:   var_468 = CVar(var_30C) 'String
  loc_1CA5C1D:   var_4EC = var_368 & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_3E8)) & "','" & var_468 & "'," 
  loc_1CA5C31:   var_50C = var_4EC & CVar(var_D2C) & "," 
  loc_1CA5C59:   var_584 = var_50C & CVar(var_D34) & "," & CVar(var_12C) & "," 
  loc_1CA5C81:   var_614 = var_584 & CVar(var_124) & "," & CVar(var_F4) & "," 
  loc_1CA5CC8:   var_6F4 = var_614 & CVar(var_EC) & "," & CVar(var_144) & ", " & CVar(var_14C) & "," & CVar(var_180) 
  loc_1CA5D35:   var_854 = var_6F4 & "," & CVar(var_FC) & "," & CVar(var_190) & "," & CVar(var_104) & "," & CVar(var_134) & "," & CVar(var_58C.Text) & ",'" 
  loc_1CA5D83:   var_A48 = var_854 & Trim(var_884) & "'," & CVar(var_D44) & ", '" & CVar(MemVar_1F950C8) & "'," & var_990 & ",'" & IIf((CStr(var_9D4) = "Add"), "A", var_A28) 
  loc_1CA5D8C:   var_A68 = var_A48 & "','" 
  loc_1CA5DBF:   var_B14 = var_A68 & CVar(var_8F0) & "','" & CVar(global_292) & "','N','" & CVar(MemVar_1F95078) 
  loc_1CA5DDB:   var_B80 = var_B14 & "','" & CVar(var_9D8) & "','" 
  loc_1CA5DF5:   var_BE8 = CVar(var_B40) 'String
  loc_1CA5E32:   var_CDC = var_B80 & CVar(var_A74) & "','" & var_BE8 & "','" & CVar(var_B8C) & "','" & CVar(var_BD8) & "'," & CVar(var_D4C) 
  loc_1CA5E49:   unk_5B2155.Execute CStr(var_CDC & ")"), var_D20, -1
  loc_1CA5F7B: End If
  loc_1CA5F84: Set var_88 = 1(var_DA)
  loc_1CA5F8A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_C1C)
  loc_1CA5FA0: For var_D58 =  To CInt((CLng(var_D4C) - 1)):  = var_D58 'Integer
  loc_1CA5FBB:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA5FC1:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA5FD2:   var_1F0 = Trim(CVar(CStr()))
  loc_1CA5FF9:   Set var_9C = CVar(CLng(var_DA))(CVar(CLng(7)))
  loc_1CA5FFF:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_1F0 <> vbNullString))
  loc_1CA600A:   var_1C8 = CStr()
  loc_1CA6038:   If CBool( And (CDbl(Val(var_1C8)) <> CDbl(0))) Then
  loc_1CA6049:     Set var_88 = var_9C(CInt(2))
  loc_1CA604F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA6057:      = var_9C.Text
  loc_1CA6060:     var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA6071:     Set var_1C4 = var_98(CVar(CLng(0)))
  loc_1CA6077:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA608A:     var_238 = Val(CStr())
  loc_1CA609A:      = var_238(var_314).Caption
  loc_1CA60AD:     Set var_22C = var_324(CInt(0))
  loc_1CA60B3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA60BB:      = var_324.Text
  loc_1CA60C8:     var_D2C = Val(var_8F0)
  loc_1CA60D6:     Set var_328 = var_37C(CInt(1))
  loc_1CA60DC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_D2C)
  loc_1CA60E4:     var_CC = CVar(var_37C) 'Address
  loc_1CA60EB:     Proc_6_7_F26918(var_1F0)
  loc_1CA6105:     Set var_380 = CVar(CLng(var_DA))(CVar(CLng(&H15)))
  loc_1CA610B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_CC)
  loc_1CA612C:     Set var_3A4 = CVar(CLng(var_DA))(CVar(CLng(&H16)))
  loc_1CA6132:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA614C:     Set var_3A8 = var_46C(CInt(3))
  loc_1CA6152:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA615A:      = var_46C.Text
  loc_1CA616A:     Set var_470 = var_474(CInt(3))
  loc_1CA6170:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA618A:     Set var_478 = 1(CVar(CLng(&H17)))
  loc_1CA6190:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA61CE:     Set var_4BC = CVar(CLng(var_DA))(CVar(CLng(&HB)))
  loc_1CA61D4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA61F5:     Set var_540 = CVar(CLng(var_DA))(CVar(CLng(&H13)))
  loc_1CA61FB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA621C:     Set var_544 = CVar(CLng(var_DA))(CVar(CLng(&H14)))
  loc_1CA6222:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6243:     Set var_588 = CVar(CLng(var_DA))(CVar(CLng(6)))
  loc_1CA6249:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA626A:     Set var_58C = CVar(CLng(var_DA))(CVar(CLng(7)))
  loc_1CA6270:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6283:     var_D34 = Val(CStr())
  loc_1CA629B:     Set var_590 = CVar(CLng(var_DA))(CVar(CLng(9)))
  loc_1CA62A1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D34)
  loc_1CA62B4:     var_D3C = Val(CStr())
  loc_1CA62CC:     Set var_858 = CVar(CLng(var_DA))(CVar(CLng(8)))
  loc_1CA62D2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D3C)
  loc_1CA62E5:     var_D44 = Val(CStr())
  loc_1CA62FD:     Set var_85C = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA6303:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D44)
  loc_1CA6316:     var_D4C = Val(CStr())
  loc_1CA632E:     Set var_860 = CVar(CLng(var_DA))(CVar(CLng(&H10)))
  loc_1CA6334:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D4C)
  loc_1CA6347:     var_D54 = Val(CStr())
  loc_1CA635F:     Set var_8E8 = CVar(CLng(var_DA))(CVar(CLng(&H11)))
  loc_1CA6365:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D54)
  loc_1CA6378:     var_118C = Val(CStr())
  loc_1CA6390:     Set var_8EC = CVar(CLng(var_DA))(CVar(CLng(&HE)))
  loc_1CA6396:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_118C)
  loc_1CA63A9:     var_1194 = Val(CStr())
  loc_1CA63C1:     Set var_9C4 = CVar(CLng(var_DA))(CVar(CLng(&HF)))
  loc_1CA63C7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1194)
  loc_1CA63DA:     var_119C = Val(CStr())
  loc_1CA63F2:     Set var_A6C = CVar(CLng(var_DA))(CVar(CLng(&H12)))
  loc_1CA63F8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_119C)
  loc_1CA640B:     var_11A4 = Val(CStr())
  loc_1CA6419:     Proc_6_7_F26918(var_A28, MemVar_1F950EC)
  loc_1CA6422:     Set var_A70 = Me.TopCtrl1
  loc_1CA6428:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_11A4)
  loc_1CA6474:     Set var_B38 = CVar(CLng(var_DA))(CVar(CLng(&H1A)))
  loc_1CA647A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA649B:     Set var_B3C = CVar(CLng(var_DA))(CVar(CLng(&H1A)))
  loc_1CA64A1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA64C2:     Set var_B84 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA64C8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA64E9:     Set var_B88 = CVar(CLng(var_DA))(CVar(CLng(&HC)))
  loc_1CA64EF:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6502:     var_11AC = Val(CStr())
  loc_1CA651A:     Set var_BD0 = CVar(CLng(var_DA))(CVar(CLng(1)))
  loc_1CA6520:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_11AC)
  loc_1CA6540:     var_230 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,LOGSITE_CODE,ItemRestCode) Values (" & "'"
  loc_1CA659A:     var_B40 = var_230 & var_1C8 & "'," & CStr(var_238) & ",'" & global_184 & "','" & var_314 & "','" & MemVar_1F95070 & "'," & CStr(var_D2C)
  loc_1CA65A1:     var_210 = CVar(var_B40 & ",") 'String
  loc_1CA65CE:     var_338 = CVar(CStr(var_294)) 'String
  loc_1CA65F5:     var_428 = var_210 & var_1F0 & ",'" & CVar(global_76) & "','" & var_338 & "','" & CVar(CStr(var_368)) & "','" & IIf((var_B8C <> vbNullString), CVar(var_474), CVar(CStr())) 
  loc_1CA6609:     var_4EC = var_428 & "','" & CVar(CStr(var_468)) 
  loc_1CA661A:     var_51C = CVar(CStr(var_50C)) 'String
  loc_1CA6642:     var_634 = CVar(CStr(var_614)) 'String
  loc_1CA6676:     var_734 = var_4EC & "','" & var_51C & "','" & CVar(CStr(var_584)) & "','" & var_634 & "'," & CVar(var_D34) & "," & CVar(var_D3C) & "," 
  loc_1CA66E5:     var_970 = var_734 & CVar(var_D44) & "," & CVar(var_D4C) & "," & CVar(var_D54) & "," & CVar(var_118C) & "," & CVar(var_1194) & "," & CVar(var_119C) 
  loc_1CA672C:     var_AD4 = var_970 & "," & CVar(var_11A4) & ",'" & CVar(MemVar_1F950C8) & "'," & var_A28 & ",'" & IIf((CStr(var_A68) = "Add"), "A", "E") 
  loc_1CA677C:     var_C64 = var_AD4 & "','" & CVar(CStr(var_B14)) & "','" & CVar(CStr(var_B80)) & "','" & CVar(CStr(var_BE8)) & "'," & CVar(var_11AC) 
  loc_1CA67BA:     unk_5B2155.Execute CStr(var_C64 & ",'N','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_CDC)) & "')"), var_1184, -1
  loc_1CA691B:     If (global_240 = "Y") Then
  loc_1CA692C:       Set var_88 = var_9C(CInt(2))
  loc_1CA6932:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA693A:       var_BD4 = var_9C.Text
  loc_1CA6954:       Set var_1C4 = CVar(CLng(var_DA))(CVar(CLng(0)))
  loc_1CA695A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA696D:       var_238 = Val(CStr())
  loc_1CA6985:       Set var_228 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA698B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_238)
  loc_1CA69AC:       Set var_22C = CVar(CLng(var_DA))(CVar(CLng(&HC)))
  loc_1CA69B2:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6A08:       var_318 = "Update KOT Set ContraDocId='" & var_1C8 & "',ContraSno=" & CStr(var_238) & " where docid='" & CStr(var_CC) & "' And SNo="
  loc_1CA6A1D:       unk_5B2155.Execute var_318 & CStr(Val(CStr())), var_210, -1
  loc_1CA6A59:     End If
  loc_1CA6A64:     If (global_196 = "Y") Then
  loc_1CA6A75:       Set var_88 = var_9C(CInt(2))
  loc_1CA6A7B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_324)
  loc_1CA6A83:       var_D2C = var_9C.Text
  loc_1CA6A9D:       Set var_1C4 = CVar(CLng(var_DA))(CVar(CLng(0)))
  loc_1CA6AA3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6AB6:       var_238 = Val(CStr())
  loc_1CA6ACE:       Set var_228 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA6AD4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_238)
  loc_1CA6AF5:       Set var_22C = CVar(CLng(var_DA))(CVar(CLng(&HC)))
  loc_1CA6AFB:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6B4A:       var_30C = "Update PackingOrderDetail set ContraDocID='" & var_1C8 & "',ContraSno=" & CStr(var_238) & " where docid='" & CStr(var_CC)
  loc_1CA6B64:       var_864 = var_30C & "' and SNo=" & CStr(Val(CStr())) & vbNullString
  loc_1CA6B6D:       unk_5B2155.Execute var_864, var_210, -1
  loc_1CA6BAB:     End If
  loc_1CA6BAB:   End If
  loc_1CA6BAE: Next var_D58 'Integer
  loc_1CA6BBC: Set var_88 = 0(var_DA)
  loc_1CA6BC2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1CA6BD8: For var_11B0 =  To CInt((CLng() - 1)):  = var_11B0 'Integer
  loc_1CA6BF3:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(2)))
  loc_1CA6BF9:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6C04:   var_CC = CVar(CStr()) 'String
  loc_1CA6C31:   Set var_9C = CVar(CLng(var_DA))(CVar(CLng(6)))
  loc_1CA6C37:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(var_CC) <> vbNullString))
  loc_1CA6C42:   var_1C8 = CStr()
  loc_1CA6C70:   If CBool( And (CDbl(Val(var_1C8)) <> CDbl(0))) Then
  loc_1CA6C81:     Set var_88 = var_9C(CInt(2))
  loc_1CA6C87:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA6C8F:      = var_9C.Text
  loc_1CA6CA9:     Set var_1C4 = CVar(CLng(var_DA))(CVar(CLng(1)))
  loc_1CA6CAF:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6CC2:     var_238 = Val(CStr())
  loc_1CA6CDA:     Set var_228 = CVar(CLng(var_DA))(CVar(CLng(0)))
  loc_1CA6CE0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_238)
  loc_1CA6CEB:     var_308 = CStr()
  loc_1CA6CF3:     var_D2C = Val(var_308)
  loc_1CA6D03:      = var_D2C(var_864).Caption
  loc_1CA6D16:     Set var_324 = var_328(CInt(0))
  loc_1CA6D1C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA6D24:      = var_328.Text
  loc_1CA6D31:     var_D34 = Val(var_B8C)
  loc_1CA6D3F:     Set var_37C = var_380(CInt(1))
  loc_1CA6D45:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_D34)
  loc_1CA6D54:     Proc_6_7_F26918(var_210)
  loc_1CA6D6E:     Set var_3A4 = CVar(CLng(var_DA))(CVar(CLng(2)))
  loc_1CA6D74:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_380))
  loc_1CA6D95:     Set var_3A8 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA6D9B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA6DAE:     var_D3C = Val(CStr())
  loc_1CA6DC6:     Set var_46C = CVar(CLng(var_DA))(CVar(CLng(5)))
  loc_1CA6DCC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D3C)
  loc_1CA6DDF:     var_D44 = Val(CStr())
  loc_1CA6DF7:     Set var_470 = CVar(CLng(var_DA))(CVar(CLng(6)))
  loc_1CA6DFD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D44)
  loc_1CA6E10:     var_D4C = Val(CStr())
  loc_1CA6E1E:     Proc_6_7_F26918(var_4EC, MemVar_1F950EC)
  loc_1CA6E27:     Set var_474 = Me.TopCtrl1
  loc_1CA6E2D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D4C)
  loc_1CA6E78:     var_230 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1CA6EAC:     var_320 = var_230 & var_1C8 & "'," & CStr(var_238) & "," & CStr(var_D2C) & ",'"
  loc_1CA6EB6:     var_594 = var_320 & global_184
  loc_1CA6EBD:     var_8F0 = var_594 & "','"
  loc_1CA6EC4:     var_9D8 = var_8F0 & var_864
  loc_1CA6ECB:     var_A74 = var_9D8 & "','"
  loc_1CA6ED2:     var_B40 = var_A74 & MemVar_1F95070
  loc_1CA6ED9:     var_BD8 = var_B40 & "',"
  loc_1CA6EE5:     var_C70 = var_BD8 & CStr(var_D34)
  loc_1CA6F44:     var_3C8 = CVar(var_C70 & ",") & var_210 & ",'" & CVar(global_76) & "','" & CVar(CStr(var_338)) & "'," & CVar(var_D3C) & "," & CVar(var_D44) 
  loc_1CA6F8B:     var_5B4 = var_3C8 & "," & CVar(var_D4C) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4EC & ",'" & IIf((CStr(var_51C) = "Add"), "A", "E") 
  loc_1CA6FA7:     var_614 = var_5B4 & "','N','" & CVar(MemVar_1F95078) & "')" 
  loc_1CA6FB5:     unk_5B2155.Execute CStr(var_614), var_634, -1
  loc_1CA705F:   End If
  loc_1CA7062: Next var_11B0 'Integer
  loc_1CA7073: Set var_88 = var_DA(var_1CA)
  loc_1CA7079: Call 0.Method_TopCtrl1_UnknownEvent_168 (1)
  loc_1CA7084: For var_11B4 =  To var_1CA:  = var_11B4 'Integer
  loc_1CA7097:   Set var_88 = var_9C(var_DA)
  loc_1CA709D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1CA)
  loc_1CA70A5:    = var_9C.Visible
  loc_1CA70B7:   If (var_1CA = &HFF) Then
  loc_1CA70CE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA70D6:      = var_9C.Text
  loc_1CA70E9:     Set var_1C4 = var_228(CInt(0))
  loc_1CA70EF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_308)
  loc_1CA70F7:      = var_228.Text
  loc_1CA7104:     var_238 = Val(var_308)
  loc_1CA7112:     Set var_22C = var_324(CInt(1))
  loc_1CA7118:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_1CA7120:     var_AC = CVar(var_324) 'Address
  loc_1CA7127:     Proc_6_7_F26918(var_CC)
  loc_1CA713A:     Set var_328 = var_37C(CInt(&HD))
  loc_1CA7140:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA7148:     var_AC = var_37C.Tag
  loc_1CA715A:     Set var_380 = var_3A4(var_DA)
  loc_1CA7160:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_594)
  loc_1CA7168:      = var_3A4.Tag
  loc_1CA7170:     var_294 = CVar(var_594) 'String
  loc_1CA7188:     Set var_3A8 = var_46C(var_DA)
  loc_1CA718E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_864)
  loc_1CA7196:      = var_46C.Tag
  loc_1CA71A3:     var_D2C = Val(var_864)
  loc_1CA71B3:     Set var_470 = var_474(var_DA)
  loc_1CA71B9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA71D3:     Set var_478 = var_4BC(var_DA)
  loc_1CA71D9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9D8)
  loc_1CA71E1:      = var_4BC.Tag
  loc_1CA71F3:     Set var_540 = var_544(var_DA)
  loc_1CA71F9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA7201:      = var_544.Tag
  loc_1CA7213:     Set var_588 = var_58C(var_DA)
  loc_1CA7219:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA7221:      = var_58C.Text
  loc_1CA722E:     var_D34 = Val(var_B40)
  loc_1CA723E:     Set var_590 = var_858(var_DA)
  loc_1CA7244:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA7259:     var_D3C = Val(var_B8C)
  loc_1CA7269:     Set var_85C = var_860(var_DA)
  loc_1CA726F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA7284:     var_D44 = Val(var_BD8)
  loc_1CA7292:     Proc_6_7_F26918(var_5B4, MemVar_1F950EC)
  loc_1CA729B:     Set var_8E8 = Me.TopCtrl1
  loc_1CA72A1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D44)
  loc_1CA72AF:     var_654 = "E"
  loc_1CA72C4:     var_C24 = CStr(var_614)
  loc_1CA72E3:     Set var_8EC = var_9C4(CInt(9))
  loc_1CA72E9:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA72F1:     var_6D4 = CVar(var_9C4) 'Address
  loc_1CA72F8:     Proc_6_7_F26918(var_6F4)
  loc_1CA730A:     Set var_A6C = var_A70(var_DA)
  loc_1CA7310:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA7318:     var_6D4 = var_A70.Tag
  loc_1CA7331:     var_230 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_1C8
  loc_1CA7338:     var_274 = var_230 & "',"
  loc_1CA7340:     var_2CC = CStr(var_DA)
  loc_1CA737E:     var_250 = CVar(var_274 & var_2CC & ",'" & global_184 & "'," & CStr(var_238) & ",") & var_CC & ",'" 
  loc_1CA73D2:     var_3E8 = var_250 & CVar(var_320) & "','" & Trim(var_294) & "'," & CVar(var_474.Caption) & ",'" & CVar(var_8F0) & "','" & CVar(var_9D8) 
  loc_1CA7434:     var_564 = var_3E8 & "','" & CVar(var_A74) & "'," & CVar(var_858.Text) & "," & CVar(var_860.Caption) & "," & CVar(var_D44) & ",'" & CVar(MemVar_1F950C8) 
  loc_1CA744D:     var_5F4 = var_564 & "'," & var_5B4 & ",'" 
  loc_1CA745D:     var_6B4 = var_5F4 & IIf((var_C24 = "Add"), "A", var_654) & "'," 
  loc_1CA74A0:     var_7F4 = var_6B4 & var_6F4 & ",'" & CVar(var_C70) & "','" & CVar(global_76) & "','N','" & CVar(MemVar_1F95070) 
  loc_1CA74CA:     unk_5B2155.Execute CStr(var_7F4 & "','" & CVar(MemVar_1F95078) & "')"), var_884, -1
  loc_1CA75A0:   End If
  loc_1CA75A3: Next var_11B4 'Integer
  loc_1CA75B3: If (global_240 = "Y") Then
  loc_1CA75BF:   Set var_88 = 1(var_DA)
  loc_1CA75C5:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1CA75DB:   For var_11B8 =  To CInt((CLng() - 1)):  = var_11B8 'Integer
  loc_1CA75F6:     Set var_88 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA75FC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA7629:     If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_1CA762F:       Proc_6_104_ED68A8(var_AC)
  loc_1CA7649:       Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA764F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA7690:       var_270 = CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_AC & ",U_AE1='E' where docid='" & CVar(CStr(var_250)) 
  loc_1CA76A7:       unk_5B2155.Execute CStr(var_270 & "'"), var_294, -1
  loc_1CA76CF:     End If
  loc_1CA76D2:   Next var_11B8 'Integer
  loc_1CA76D7: End If
  loc_1CA76E2: If (global_304 = "Room Service") Then
  loc_1CA76E8:   var_BC = 0
  loc_1CA7718:   unk_5B2155.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_76 & "'", var_AC, -1
  loc_1CA7720:   var_88 = var_88.Fields
  loc_1CA7728:   var_BC = var_9C.Item(var_9C)
  loc_1CA773F:   var_1E0 = " BILL NO.-"
  loc_1CA7744:   var_210 = (Trim(CVar(var_1C4)) + CVar(CLng(4)))
  loc_1CA774D:   var_250 = (CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_AC & ",U_AE1='E' where docid='" + " ")
  loc_1CA775F:   Set var_228 = var_22C(CInt(0))
  loc_1CA7765:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, var_250)
  loc_1CA776D:   var_1C4 = var_22C.Text
  loc_1CA7778:   var_270 = ( + CVar(var_274))
  loc_1CA777D:   var_16C = CStr(var_270)
  loc_1CA77A9:   var_1BE = (var_1BE + 1)
  loc_1CA77C0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA77DB:   Set var_1C4 = var_228(CInt(0))
  loc_1CA77E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA77E9:    = var_228.Text
  loc_1CA77F6:   var_238 = Val(var_320)
  loc_1CA77FD:   var_AC = CVar((var_238)) 'Address
  loc_1CA7814:   Set var_22C = var_324(CInt(1))
  loc_1CA781A:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA7829:   Proc_6_7_F26918(var_270)
  loc_1CA7839:   Set var_328 = var_37C(CInt(5))
  loc_1CA783F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CVar(var_324))
  loc_1CA785A:   Set var_380 = (var_1CA)
  loc_1CA7860:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA7872:   Set var_3A4 = var_3A8(var_1CA)
  loc_1CA7878:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA7880:    = var_3A8.Text
  loc_1CA788D:   var_D2C = Val(var_B40)
  loc_1CA7897:   Set var_46C = var_D2C(var_1CC)
  loc_1CA789D:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA78AF:   Set var_470 = var_474(var_1CC)
  loc_1CA78B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA78BD:    = var_474.Text
  loc_1CA78CA:   var_D34 = Val(var_B8C)
  loc_1CA78DB:   Set var_478 = var_4BC(CInt(7))
  loc_1CA78E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA78F6:   var_D3C = Val(var_BD8)
  loc_1CA7907:   Set var_540 = var_544(CInt(3))
  loc_1CA790D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA7925:   Set var_588 = var_58C(CInt(3))
  loc_1CA792B:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA793E:   Set var_590 = var_858(CInt(3))
  loc_1CA7944:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA794C:    = var_858.Tag
  loc_1CA797D:   Proc_183_7_EB17D4(var_5F4)
  loc_1CA798D:   Proc_183_7_EB17D4(var_654, MemVar_1F950EC)
  loc_1CA7996:   Set var_85C = Me.TopCtrl1
  loc_1CA799C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F950EC)
  loc_1CA79BF:   var_CBC = CStr(var_6B4)
  loc_1CA79E7:   var_1C8 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1CA79F5:   var_274 = var_1C8 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,AU_EntDt,U_AE,RestCode,lOGSITE_CODE) Values ("
  loc_1CA7A48:   var_A74 = var_274 & "'" & var_2CC & "'," & CStr(var_9C.Text) & ",'" & global_184 & "'," & CStr(var_238) & ",'" & MemVar_1F95070
  loc_1CA7A55:   var_210 = CVar(var_A74 & "','") & Trim(var_AC) 
  loc_1CA7AAD:   var_3C8 = var_210 & "'," & var_270 & ",'" & Trim(CVar(var_37C)) & "'" & ",'','','" & CVar(var_16C) & "','" & CVar(var_19C) & "','Room'," 
  loc_1CA7AF9:   var_53C = var_3C8 & CVar(var_D2C) & "," & CVar(var_4BC.Text) & "," & CVar(var_544.Text) & ",'REST'," & "'RO','" & IIf((var_C24 <> vbNullString), CVar(var_58C), CVar(var_C70)) 
  loc_1CA7B45:   var_734 = var_53C & "','','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_5F4 & "," & var_654 & ",'" & IIf((var_CBC = "Add"), "A", "E") 
  loc_1CA7B64:   var_794 = var_734 & "','" & CVar(global_76) & "','" 
  loc_1CA7B85:   unk_5B2155.Execute CStr(var_794 & CVar(MemVar_1F95078) & "')"), var_7F4, -1
  loc_1CA7C7E:   unk_5B2155.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_AC, -1
  loc_1CA7C89:   Set var_1A0 = var_9C(CInt(2))
  loc_1CA7CAF:   If (var_1A0.RecordCount > 0) Then
  loc_1CA7CDE:     var_9C = var_1A0.Fields.Item("TaxStru")
  loc_1CA7CEE:     var_CC = "Select * from taxstru where Code='" & var_9C.Value 
  loc_1CA7CF7:     var_1F0 = var_CC & "' Order by Sno" 
  loc_1CA7CFB:     var_1C8 = CStr(var_1F0)
  loc_1CA7D05:     unk_5B2155.Execute var_1C8, var_210, -1
  loc_1CA7D10:     Set var_160 = var_1C4
  loc_1CA7D2D:   Else
  loc_1CA7D46:     MsgBox("System Defined Revenue is not defined", 0, var_CC, var_1F0, var_210)
  loc_1CA7D5C:     unk_5B2155.RollbackTrans
  loc_1CA7D61:     Exit Sub
  loc_1CA7D62:   End If
  loc_1CA7D68:   var_1BE = (var_1BE + 1)
  loc_1CA7D91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Select Docid,GuestProf from GuestFolio where Docid=", var_210, -1, var_1C4)
  loc_1CA7D99:   var_1BE = var_9C.Tag
  loc_1CA7DA7:   Proc_6_17_EAAE40(var_CC, CVar(var_1C8), var_1C4)
  loc_1CA7DBD:   unk_5B2155.Execute CStr(var_9C(CInt(&HA)) & var_CC), var_860, 
  loc_1CA7DC8:   Set var_1A4 = var_1C4
  loc_1CA7DF6:   If (var_1A4.RecordCount > 0) Then
  loc_1CA7E13:     var_9C = var_1A4.Fields.Item("GuestProf")
  loc_1CA7E24:     var_164 = CStr(var_9C.Value)
  loc_1CA7E31:   End If
  loc_1CA7E3F:   Set var_88 = var_9C(CInt(2))
  loc_1CA7E45:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA7E4D:    = var_9C.Text
  loc_1CA7E60:   Set var_1C4 = var_228(CInt(0))
  loc_1CA7E66:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA7E6E:    = var_228.Text
  loc_1CA7E7B:   var_238 = Val(var_320)
  loc_1CA7E99:   Set var_22C = var_324(CInt(1))
  loc_1CA7E9F:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA7EAE:   Proc_6_7_F26918(var_270)
  loc_1CA7EBE:   Set var_328 = var_37C(CInt(5))
  loc_1CA7EC4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CVar(var_324))
  loc_1CA7ECC:   var_338 = CVar(var_37C) 'Address
  loc_1CA7F06:   Set var_3A8 = (var_1CA)
  loc_1CA7F0C:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA7F1E:   Set var_46C = var_470(var_1CA)
  loc_1CA7F24:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA7F2C:    = var_470.Text
  loc_1CA7F39:   var_D2C = Val(var_B40)
  loc_1CA7F43:   Set var_474 = var_D2C(var_1CC)
  loc_1CA7F49:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA7F5B:   Set var_478 = var_4BC(var_1CC)
  loc_1CA7F61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA7F69:    = var_4BC.Text
  loc_1CA7F76:   var_D34 = Val(var_B8C)
  loc_1CA7F87:   Set var_540 = var_544(CInt(7))
  loc_1CA7F8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA7FA2:   var_D3C = Val(var_BD8)
  loc_1CA7FB3:   Set var_588 = var_58C(CInt(3))
  loc_1CA7FB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA7FD1:   Set var_590 = var_858(CInt(3))
  loc_1CA7FD7:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA7FEA:   Set var_85C = var_860(CInt(3))
  loc_1CA7FF0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA7FF8:    = var_860.Tag
  loc_1CA8000:   var_5F4 = CVar(var_C70) 'String
  loc_1CA802C:   Set var_8E8 = var_8EC(CInt(&HA))
  loc_1CA8032:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_CBC)
  loc_1CA803A:    = var_8EC.Text
  loc_1CA804A:   Proc_183_7_EB17D4(var_734)
  loc_1CA805A:   Proc_183_7_EB17D4(var_794, MemVar_1F950EC)
  loc_1CA8063:   Set var_9C4 = Me.TopCtrl1
  loc_1CA8069:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F950EC)
  loc_1CA80DB:   var_1C8 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1CA80E2:   var_230 = var_1C8 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,"
  loc_1CA80E9:   var_274 = var_230 & "ExpDate,U_Name,U_EntDt,AU_EntDt,U_AE,RestCode,FolionoDocid,LogSite_Code) Values ("
  loc_1CA80F0:   var_2D0 = var_274 & "'"
  loc_1CA80F7:   var_2D4 = var_2D0 & var_2CC
  loc_1CA810A:   var_30C = var_2D4 & "'," & CStr(var_1BE)
  loc_1CA8135:   var_9D8 = var_30C & ",'" & global_184 & "'," & CStr(var_238) & ",'"
  loc_1CA814D:   var_98 = "',"
  loc_1CA8185:   var_390 = CVar(var_9D8 & MemVar_1F95070 & "','") & Trim(CVar((var_238))) & var_98 & var_270 & ",'" & Trim(var_338) & "'" & ",'" & CVar(var_164) 
  loc_1CA81D0:   var_4CC = var_390 & "','','" & CVar(var_16C) & "','" & var_1A0.Fields.Item("Code").Value & "','Room'," & CVar(var_D2C) & "," & CVar(var_544.Text) 
  loc_1CA8219:   var_584 = var_4CC & "," & CVar(var_58C.Text) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) 
  loc_1CA8232:   var_654 = var_584 & "','" & IIf((var_C24 <> vbNullString), CVar(var_858), var_5F4) & "'," 
  loc_1CA8288:   var_884 = var_654 & CVar(var_CBC) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_734 & "," & var_794 & ",'" & IIf((CStr(var_7F4) = "Add"), "A", "E") 
  loc_1CA82CA:   var_980 = var_884 & "','" & CVar(global_76) & "','" & var_1A4.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1CA82D8:   unk_5B2155.Execute CStr(var_980), var_990, -1
  loc_1CA83DA:   Set var_88 = var_9C(CInt(2))
  loc_1CA83E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA83E8:   var_B38 = var_9C.Text
  loc_1CA83FB:   Set var_1C4 = var_228(CInt(0))
  loc_1CA8401:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA8409:    = var_228.Text
  loc_1CA8416:   var_D54 = Val(var_1C8)
  loc_1CA841D:   var_AC = CVar((var_D54)) 'Address
  loc_1CA8437:   Set var_22C = var_324(CInt(1))
  loc_1CA843D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA8445:    = var_324.Text
  loc_1CA8455:   Set var_328 = var_37C(CInt(5))
  loc_1CA845B:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA846A:   var_210 = Trim(CVar(var_37C))
  loc_1CA8481:   var_380 = var_1A0.Fields
  loc_1CA8491:   var_378 = var_380.Item("Code").Value
  loc_1CA849D:   Set var_3A8 = (var_1CA)
  loc_1CA84A3:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA84B5:   Set var_46C = var_470(var_1CA)
  loc_1CA84BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230)
  loc_1CA84C3:    = var_470.Text
  loc_1CA84DA:   Set var_474 = Val(var_230)(var_1CC)
  loc_1CA84E0:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA84F2:   Set var_478 = var_4BC(var_1CC)
  loc_1CA84F8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA8500:    = var_4BC.Text
  loc_1CA850D:   var_1194 = Val(var_274)
  loc_1CA851E:   Set var_540 = var_544(CInt(7))
  loc_1CA8524:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA852C:   var_1194 = var_544.Text
  loc_1CA8539:   var_119C = Val(var_2CC)
  loc_1CA854A:   Set var_588 = var_58C(CInt(3))
  loc_1CA8550:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D0)
  loc_1CA8558:   var_119C = var_58C.Text
  loc_1CA8568:   Set var_590 = var_858(CInt(3))
  loc_1CA856E:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA8581:   Set var_85C = var_860(CInt(3))
  loc_1CA8587:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D4)
  loc_1CA858F:    = var_860.Tag
  loc_1CA85B0:   var_270 = IIf((var_2D0 <> vbNullString), CVar(var_858), CVar(var_2D4))
  loc_1CA85C3:   Set var_8E8 = var_8EC(CInt(&HA))
  loc_1CA85C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA85D1:    = var_8EC.Text
  loc_1CA85D9:   var_284 = Date
  loc_1CA85E1:   var_294 = Date
  loc_1CA85EA:   Set var_9C4 = Me.TopCtrl1
  loc_1CA85F0:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA8622:   var_368 = IIf((CStr(var_338) = "Add"), "A", "E")
  loc_1CA8649:   var_390 = var_1A4.Fields.Item("DocID").Value
  loc_1CA8653:   var_EE8 = 0
  loc_1CA865E:   var_E84 = 0
  loc_1CA8671:   var_E20 = 0
  loc_1CA867C:   var_DBC = 0
  loc_1CA86B3:   var_C70 = vbNullString
  loc_1CA86BC:   var_C24 = vbNullString
  loc_1CA86C5:   var_BD8 = vbNullString
  loc_1CA86FE:   var_A74 = "Room"
  loc_1CA8712:   var_8F0 = vbNullString
  loc_1CA871B:   var_864 = vbNullString
  loc_1CA875F:   Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_30C, var_1BE, global_184, CLng(var_D54), MemVar_1F95070, CStr(Trim(var_AC)), CDate(var_320))
  loc_1CA87FC: Else
  loc_1CA8807:   If (global_288 = "Yes") Then
  loc_1CA8817:     Set var_88 = var_1C4(var_1CA)
  loc_1CA881D:     Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1C8, CStr(var_210), var_864, var_8F0)
  loc_1CA8829:     Set var_9C = var_16C(var_1CA)
  loc_1CA882F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CStr(var_378), var_A74)
  loc_1CA8837:     var_118C = var_1C4.Text
  loc_1CA884A:     Set var_228 = var_22C(CInt(6))
  loc_1CA8850:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA8858:     var_22C.Text = 
  loc_1CA886D:   End If
  loc_1CA887B:   Set var_88 = var_9C(CInt(6))
  loc_1CA8881:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA8889:    = var_9C.Text
  loc_1CA88A5:   If (CDbl(Val(var_1C8)) > CDbl(0)) Then
  loc_1CA88B8:      = "CASH RECD. "(var_1C8).Caption
  loc_1CA88CF:     var_2CC = var_1C8 & " " & "BILL NO.-"
  loc_1CA88D6:     var_2D4 = var_2CC & " "
  loc_1CA88E7:     Set var_9C = var_1C4(CInt(0))
  loc_1CA88ED:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D0)
  loc_1CA88F5:     var_2D4 = var_1C4.Text
  loc_1CA8931:     If (InStr(1, var_2D0, "'", 0) > 0) Then
  loc_1CA8951:       var_16C = Replace(var_16C, "'", ", 1, -1, 0)
  loc_1CA8954:     End If
  loc_1CA8972:     Set var_88 = var_9C(CInt(2))
  loc_1CA8978:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From PayCharge Where DocID='", var_AC)
  loc_1CA8980:     -1 = var_9C.Text
  loc_1CA8999:     unk_5B2155.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA89C1:     Set var_88 = var_9C(CInt(2))
  loc_1CA89C7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA89CF:      = var_9C.Text
  loc_1CA89E2:     Set var_1C4 = var_228(CInt(0))
  loc_1CA89E8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA89F0:      = var_228.Text
  loc_1CA89FD:     var_238 = Val(var_30C)
  loc_1CA8A0B:     var_CC = Trim(CVar((var_238)))
  loc_1CA8A1B:     Set var_22C = var_324(CInt(1))
  loc_1CA8A21:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA8A29:     var_260 = CVar(var_324) 'Address
  loc_1CA8A30:     Proc_6_7_F26918(var_270)
  loc_1CA8A3C:     Set var_328 = var_260(var_1CA)
  loc_1CA8A42:     Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA8A54:     Set var_37C = var_380(var_1CA)
  loc_1CA8A5A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA8A62:      = var_380.Text
  loc_1CA8A6F:     var_D2C = Val(var_8F0)
  loc_1CA8A79:     Set var_3A4 = var_D2C(var_1CC)
  loc_1CA8A7F:     Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA8A91:     Set var_3A8 = var_46C(var_1CC)
  loc_1CA8A97:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9D8)
  loc_1CA8A9F:      = var_46C.Text
  loc_1CA8AAC:     var_D34 = Val(var_9D8)
  loc_1CA8ABD:     Set var_470 = var_474(CInt(7))
  loc_1CA8AC3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA8AD8:     var_D3C = Val(var_A74)
  loc_1CA8AE9:     Set var_478 = var_4BC(CInt(3))
  loc_1CA8AEF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA8B07:     Proc_183_7_EB17D4(var_584)
  loc_1CA8B17:     Proc_183_7_EB17D4(var_5F4, MemVar_1F950EC)
  loc_1CA8B20:     Set var_540 = Me.TopCtrl1
  loc_1CA8B26:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F950EC)
  loc_1CA8B71:     var_1C8 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1CA8B7F:     var_274 = var_1C8 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,AU_EntDt,U_AE,RestCode,LogSite_Code) Values ("
  loc_1CA8B8D:     var_2D4 = var_274 & "'" & var_2CC
  loc_1CA8BB1:     var_320 = var_2D4 & "',1,'" & global_184 & "'," & CStr(var_238)
  loc_1CA8BDC:     var_284 = CVar(var_320 & ",'" & MemVar_1F95070 & "','") & var_CC & "'," & var_270 
  loc_1CA8C2A:     var_3A0 = var_284 & ",'','','" & CVar(var_274 & "'") & "','" & CVar(var_19C) & "','Cash'," & CVar(var_D2C) & "," & CVar(var_474.Text) 
  loc_1CA8C86:     var_4FC = var_3A0 & "," & CVar(var_4BC.Tag) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) & "','" & CVar(var_B40) 
  loc_1CA8CD2:     var_6D4 = var_4FC & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_584 & "," & var_5F4 & ",'" & IIf((CStr(var_654) = "Add"), "A", "E") 
  loc_1CA8D12:     unk_5B2155.Execute CStr(var_6D4 & "','" & CVar(global_76) & "','" & CVar(MemVar_1F95078) & "')"), var_794, -1
  loc_1CA8DC8:   End If
  loc_1CA8DC8: End If
  loc_1CA8DCC: Set var_88 = Me.TopCtrl1
  loc_1CA8DD2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_544)
  loc_1CA8DEB: If (CStr() = "Add") Then
  loc_1CA8E02:   var_1C8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1CA8E28:   var_1F0 = CVar(var_1C8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_184 & "' And VP.Date_From<=") 'String
  loc_1CA8E39:   Set var_88 = var_9C(CInt(1))
  loc_1CA8E3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D4, var_1F0, var_260)
  loc_1CA8E47:   -1 = var_9C.Text
  loc_1CA8E55:   Proc_6_7_F26918(var_CC, CVar(var_2D4))
  loc_1CA8E74:   unk_5B2155.Execute CStr(var_1C4 & var_CC & " Order By VP.Date_From DESC"), , 
  loc_1CA8E7F:   Set var_D0 = var_1C4
  loc_1CA8EBD:   If (var_D0.RecordCount > 0) Then
  loc_1CA8ECE:     Set var_88 = var_9C(CInt(0))
  loc_1CA8ED4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA8EDC:      = var_9C.Text
  loc_1CA8EE9:     var_238 = Val(var_1C8)
  loc_1CA8EFE:     var_1C4 = var_D0.Fields
  loc_1CA8F06:     var_228 = var_1C4.Item("V_Type")
  loc_1CA8F0E:     var_AC = var_228.Value
  loc_1CA8F2A:     var_324 = var_D0.Fields.Item("Date_From")
  loc_1CA8F39:     Proc_6_7_F26918(var_260, CVar(var_324))
  loc_1CA8F53:     var_230 = CStr(var_238)
  loc_1CA8F73:     var_300 = "Update Voucher_Prefix Set Start_Srl_No=" & var_230 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1CA8F90:     var_270 = CVar(var_300 & "') and V_Type='") & var_AC & "' and Date_From=" & var_260 
  loc_1CA8F9E:     unk_5B2155.Execute CStr(var_270), var_284, -1
  loc_1CA8FD8:   End If
  loc_1CA8FD8: End If
  loc_1CA8FDC: Set var_88 = Me.TopCtrl1
  loc_1CA8FE2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_328)
  loc_1CA8FFB: If (CStr(var_238) = "Add") Then
  loc_1CA9021:   var_1C8 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_1CA9031:   Call 0.Method_arg_50 (var_230, var_1C8 & "' AND ENAME='", var_AC, -1, var_88)
  loc_1CA9041:   var_2D0 = var_9C & var_230 & "' "
  loc_1CA904A:   unk_5B2155.Execute var_2D0, 0, var_1C4
  loc_1CA905A:    = var_9C.Item()
  loc_1CA9062:    = var_1C4.Value
  loc_1CA908F:   If (var_88.Fields > 0) Then
  loc_1CA90B0:     Set var_88 = var_9C(CInt(2))
  loc_1CA90B6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "UPDATE LASTVOU  SET DOCID='", var_AC)
  loc_1CA90BE:     -1 = var_9C.Text
  loc_1CA90C7:     var_230 = var_1C4 & var_1C8
  loc_1CA90E5:     Call 0.Method_arg_50 (var_2D0)
  loc_1CA90FE:     unk_5B2155.Execute var_230 & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='" & var_2D0 & "'  ", , 
  loc_1CA9125:   Else
  loc_1CA9140:     var_274 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "','"
  loc_1CA9149:     Call 0.Method_arg_50 (var_230, var_274, var_270)
  loc_1CA9152:     var_2CC = -1 & var_230
  loc_1CA9159:     var_2D4 = var_230 & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1CA916A:     Set var_88 = var_9C(CInt(2))
  loc_1CA9170:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D0, var_2D4)
  loc_1CA9178:     var_1C4 = var_9C.Text
  loc_1CA918F:     var_30C = var_2D0 & "','" & MemVar_1F95078
  loc_1CA919C:     var_98 = MemVar_1F950EC
  loc_1CA91A4:     Proc_6_7_F26918(var_AC, var_98)
  loc_1CA91D6:     unk_5B2155.Execute CStr(CVar(var_30C & "',") & var_AC & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CA920C:   End If
  loc_1CA920C: End If
  loc_1CA9210: Set var_88 = Me.TopCtrl1
  loc_1CA9216: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA921E: var_1C8 = CStr()
  loc_1CA922F: If (var_1C8 = "Add") Then
  loc_1CA9240:   Set var_88 = var_9C(CInt(0))
  loc_1CA9246:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA924E:    = var_9C.Text
  loc_1CA9269:   Set var_1C4 = var_228(CInt(1))
  loc_1CA926F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230)
  loc_1CA9277:   (var_1C8 <> vbNullString) = var_228.Text
  loc_1CA9293:   Set var_22C = var_324(CInt(2))
  loc_1CA9299:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA92A1:   ( Or (var_230 <> vbNullString)) = var_324.Text
  loc_1CA92BD:   Set var_328 = var_37C(CInt(3))
  loc_1CA92C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230 & "' WHERE UNAME='" & MemVar_1F950C8)
  loc_1CA92CB:   ( Or (var_274 <> vbNullString)) = var_37C.Text
  loc_1CA92F7:   If ( Or (var_230 & "' WHERE UNAME='" & MemVar_1F950C8 <> vbNullString)) Then
  loc_1CA9318:     Set var_88 = var_9C(CInt(2))
  loc_1CA931E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert Into OrderPersonDetails (DocId,PhoneNo,CustName,Addr1,Addr2) values('", var_AC)
  loc_1CA9326:     -1 = var_9C.Text
  loc_1CA9336:     var_2CC = var_3A8 & var_1C8 & "','"
  loc_1CA9347:     Set var_1C4 = var_228(CInt(0))
  loc_1CA934D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA9355:     var_2CC = var_228.Text
  loc_1CA9365:     var_300 = var_274 & "','"
  loc_1CA9376:     Set var_22C = var_324(CInt(1))
  loc_1CA937C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D4)
  loc_1CA9384:     var_300 = var_324.Text
  loc_1CA9394:     var_314 = var_2D4 & "','"
  loc_1CA93A5:     Set var_328 = var_37C(CInt(2))
  loc_1CA93AB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA93B3:     var_314 = var_37C.Text
  loc_1CA93C3:     var_594 = var_30C & "','"
  loc_1CA93D4:     Set var_380 = var_3A4(CInt(3))
  loc_1CA93DA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA93E2:     var_594 = var_3A4.Text
  loc_1CA93FB:     unk_5B2155.Execute var_320 & "')", , 
  loc_1CA943D:   End If
  loc_1CA943D: End If
  loc_1CA9443: unk_5B2155.CommitTrans
  loc_1CA944A: var_D2 = 0
  loc_1CA945B: Set var_88 = var_9C(CInt(2))
  loc_1CA9461: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA9469: var_D2 = var_9C.Text
  loc_1CA9471: var_D8 = var_1C8
  loc_1CA947D: var_D2 = 0
  loc_1CA948B: Me.Requery -1
  loc_1CA94B5: Me.Find "SearchCode ='" & var_D8 & "'", 0, 1
  loc_1CA94CC: If (global_188 <> "FAST") Then
  loc_1CA94DA:   Me.Requery -1
  loc_1CA94DF: End If
  loc_1CA94EA: Me.Requery -1
  loc_1CA9512: Call Proc_258_148_107A830(Proc_5_1_100EC1C("INI", Me, global_116), var_98)
  loc_1CA9526: var_1CA = Me.EOF
  loc_1CA9531: If (var_1CA = 0) Then
  loc_1CA9534:   Call Proc_258_145_1BA3A9C(var_D2)
  loc_1CA9539: End If
  loc_1CA9539: Call Proc_258_133_122007C()
  loc_1CA9543: Set var_D0 = Nothing
  loc_1CA954B: Set var_1A4 = Nothing
  loc_1CA9553: Call Proc_258_132_1234D14(&HFF)
  loc_1CA9563: If (global_240 = "N") Then
  loc_1CA9575:   Call Proc_258_168_EB7024(var_D8, var_1CA)
  loc_1CA9581:   If ((global_56 = &HFF) And (var_1CA = &HFF)) Then
  loc_1CA9589:     global_56 = 0
  loc_1CA958C:     Call TopCtrl1_UnknownEvent_14()
  loc_1CA9591:   End If
  loc_1CA959C:   If (global_288 = "Yes") Then
  loc_1CA959F:     Call TopCtrl1_UnknownEvent_A()
  loc_1CA95A4:   End If
  loc_1CA95A7: Else
  loc_1CA95B0:   If (global_56 = &HFF) Then
  loc_1CA95B8:     global_56 = 0
  loc_1CA95BB:     Call TopCtrl1_UnknownEvent_14()
  loc_1CA95C0:   End If
  loc_1CA95C0:   Call TopCtrl1_UnknownEvent_E()
  loc_1CA95C5: End If
  loc_1CA95C5: Exit Sub
  loc_1CA95C6: ' Referenced from: 1CA2DFA
  loc_1CA95CC: If (var_D2 = &HFF) Then
  loc_1CA95D5:   unk_5B2155.RollbackTrans
  loc_1CA95DA: End If
  loc_1CA95DA: Proc_6_60_E63754(global_56)
  loc_1CA95DF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12C5BBC
  'Data Table: 5B2118
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_12C555A: Set var_88 = var_8C(Index)
  loc_12C5560: Call 0.Method_Txt_GotFocus0 ()
  loc_12C556E: Proc_6_74_E23240(var_8C)
  loc_12C557A: Call Proc_258_149_FD7788()
  loc_12C5582: var_92 = Index
  loc_12C558D: If (var_92 = CInt(3)) Then
  loc_12C55A7:   If (Me.RecordCount > 0) Then
  loc_12C55B5:     Set var_8C = ()
  loc_12C55CD:     Proc_6_137_1192FDC((var_92), global_120)
  loc_12C55DB:   End If
  loc_12C5629:   Set var_88 = var_8C(Index)
  loc_12C562F:   Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12C5637:   Index = var_8C.Text
  loc_12C564F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C5652:     Exit Sub
  loc_12C5653:   End If
  loc_12C5660:   Set var_88 = var_8C(Index)
  loc_12C5666:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C566E:    = var_8C.Text
  loc_12C5676:   var_D4 = CVar(var_A0) 'String
  loc_12C5697:   var_B4 = Me.Fields.Item("Name")
  loc_12C56BB:   If CBool(var_D4 <> var_B4.Value) Then
  loc_12C56C4:     Me.MoveFirst
  loc_12C56E9:     Set var_88 = var_8C(Index)
  loc_12C56EF:     Call 0.Method_Txt_GotFocus0 (var_A0, "Name =", 0)
  loc_12C56F7:     1 = var_8C.Text
  loc_12C5705:     Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_12C571B:     Me.Find CStr(var_F8 & var_D4), , 
  loc_12C5733:   End If
  loc_12C5736: Else
  loc_12C573E:   If Not (var_92 = CInt(4)) Then
  loc_12C5749:     If Not (var_92 = CInt(7)) Then
  loc_12C5754:       If (var_92 = CInt(8)) Then
  loc_12C5757:       End If
  loc_12C5757:     End If
  loc_12C5766:     Set var_88 = var_8C(Index)
  loc_12C576C:     Call 0.Method_Txt_GotFocus0 (0)
  loc_12C5774:     var_8C.SelStart = 
  loc_12C578D:     Set var_88 = var_8C(Index)
  loc_12C5793:     Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C579B:      = var_8C.Text
  loc_12C57AE:     Set var_90 = var_B4(Index)
  loc_12C57B4:     Call 0.Method_Txt_GotFocus0 (Len(var_A0))
  loc_12C57BC:     var_B4.SelLength = 
  loc_12C57D2:   Else
  loc_12C57DA:     If (var_92 = CInt(6)) Then
  loc_12C57EC:       Set var_88 = var_8C(Index)
  loc_12C57F2:       Call 0.Method_Txt_GotFocus0 (0)
  loc_12C57FA:       var_8C.SelStart = 
  loc_12C5813:       Set var_88 = var_8C(Index)
  loc_12C5819:       Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C5821:        = var_8C.Text
  loc_12C5834:       Set var_90 = var_B4(Index)
  loc_12C583A:       Call 0.Method_Txt_GotFocus0 (Len(var_A0))
  loc_12C5842:       var_B4.SelLength = 
  loc_12C5858:     Else
  loc_12C5860:       If (var_92 = CInt(&HB)) Then
  loc_12C587A:         If (Me.RecordCount > 0) Then
  loc_12C5888:           Set var_8C = ()
  loc_12C58A0:           Proc_6_137_1192FDC((), global_124)
  loc_12C58AE:         End If
  loc_12C58FC:         Set var_88 = var_8C(Index)
  loc_12C5902:         Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12C590A:         Index = var_8C.Text
  loc_12C5922:         If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C5925:           Exit Sub
  loc_12C5926:         End If
  loc_12C5933:         Set var_88 = var_8C(Index)
  loc_12C5939:         Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C5941:          = var_8C.Text
  loc_12C5949:         var_D4 = CVar(var_A0) 'String
  loc_12C598E:         If CBool(var_D4 <> Me.Fields.Item("VNo").Value) Then
  loc_12C5997:           Me.MoveFirst
  loc_12C59BD:           Set var_88 = var_8C(CInt(&HB))
  loc_12C59C3:           Call 0.Method_Txt_GotFocus0 (var_A0, "Vno =", 0)
  loc_12C59CB:           1 = var_8C.Text
  loc_12C59D9:           Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_12C59EF:           Me.Find CStr(var_F8 & var_D4), , 
  loc_12C5A07:         End If
  loc_12C5A0A:       Else
  loc_12C5A12:         If (var_92 = CInt(&HD)) Then
  loc_12C5A2C:           If (Me.RecordCount > 0) Then
  loc_12C5A3A:             Set var_8C = ()
  loc_12C5A52:             Proc_6_137_1192FDC((), global_108)
  loc_12C5A60:           End If
  loc_12C5AAE:           Set var_88 = var_8C(Index)
  loc_12C5AB4:           Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12C5ABC:           Index = var_8C.Text
  loc_12C5AD4:           If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C5AD7:             Exit Sub
  loc_12C5AD8:           End If
  loc_12C5AE5:           Set var_88 = var_8C(Index)
  loc_12C5AEB:           Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C5AF3:            = var_8C.Text
  loc_12C5AFB:           var_D4 = CVar(var_A0) 'String
  loc_12C5B40:           If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12C5B49:             Me.MoveFirst
  loc_12C5B6E:             Set var_88 = var_8C(Index)
  loc_12C5B74:             Call 0.Method_Txt_GotFocus0 (var_A0, "Name =", 0)
  loc_12C5B7C:             1 = var_8C.Text
  loc_12C5B8A:             Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_12C5BA0:             Me.Find CStr(var_F8 & var_D4), , 
  loc_12C5BB8:           End If
  loc_12C5BB8:         End If
  loc_12C5BB8:       End If
  loc_12C5BB8:     End If
  loc_12C5BB8:   End If
  loc_12C5BB8: End If
  loc_12C5BB8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11EC3BC
  'Data Table: 5B2118
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As TextBox
  Dim var_9C As Frame
  loc_11EBF3F: var_86 = Shift
  loc_11EBF4C: If (CLng(Shift) = &H1B) Then
  loc_11EBF4F:   Call Proc_258_149_FD7788(var_86)
  loc_11EBF54:   Exit Sub
  loc_11EBF55: End If
  loc_11EBF58: var_88 = KeyCode
  loc_11EBF63: If (var_88 = CInt(3)) Then
  loc_11EBF8E:   Set var_9C = Nothing
  loc_11EBFC0:   Proc_6_69_134A630((var_88), (), CInt(3), global_120, Shift)
  loc_11EC02F:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EC036:     Set var_9C = 1(0)
  loc_11EC03D:     Set var_90 = ()(var_9C)
  loc_11EC055:     Proc_6_138_106E830(var_9C, global_120, KeyCode)
  loc_11EC071:     Set var_8C = var_90(CInt(3))
  loc_11EC077:     Call 0.Method_Txt_KeyDown0 (var_B8, var_90)
  loc_11EC07F:     0 = var_90.Tag
  loc_11EC08A:     global_324 = var_B8
  loc_11EC098:   End If
  loc_11EC09B: Else
  loc_11EC0A3:   If (var_88 = CInt(&HB)) Then
  loc_11EC0CE:     Set var_9C = Nothing
  loc_11EC100:     Proc_6_69_134A630((), (), CInt(&HB), global_124, Shift)
  loc_11EC16F:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EC176:       Set var_9C = 1(0)
  loc_11EC17D:       Set var_90 = ()(var_9C)
  loc_11EC195:       Proc_6_138_106E830(var_9C, global_124, KeyCode)
  loc_11EC1A3:     End If
  loc_11EC1A6:   Else
  loc_11EC1AE:     If (var_88 = CInt(&HD)) Then
  loc_11EC1D9:       Set var_9C = Nothing
  loc_11EC20B:       Proc_6_69_134A630(0(()), (), CInt(&HD), global_108, Shift)
  loc_11EC27A:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EC281:         Set var_9C = 1(0)
  loc_11EC288:         Set var_90 = ()(var_9C)
  loc_11EC2A0:         Proc_6_138_106E830(var_9C, global_108, KeyCode)
  loc_11EC2AE:       End If
  loc_11EC2AE:     End If
  loc_11EC2AE:   End If
  loc_11EC2AE: End If
  loc_11EC2B2: Set var_8C = 0(var_90)
  loc_11EC2B8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EC2C8: Set var_90 = ((CBool() = 0))
  loc_11EC2CE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EC2E8:  = ( And (CBool() = 0))(var_92).Visible
  loc_11EC2F8: Set var_A0 = (( And (var_92 = 0)))
  loc_11EC2FE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EC30F: Set var_A8 = (( And (CBool() = 0)))
  loc_11EC315: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EC33A: If ( And (CBool() = 0)) Then
  loc_11EC35B:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_11EC361:     Call Proc_258_150_F662C0(KeyCode)
  loc_11EC366:     Exit Sub
  loc_11EC367:   End If
  loc_11EC37C:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11EC385:     Proc_6_75_E5335C(Shift)
  loc_11EC38A:   End If
  loc_11EC392:   If (KeyCode <> CInt(3)) Then
  loc_11EC3AA:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11EC3B3:       Proc_6_76_E533C8(Shift, arg_14)
  loc_11EC3B8:     End If
  loc_11EC3B8:   End If
  loc_11EC3B8: End If
  loc_11EC3B8: Exit Sub
  loc_11EC3B9: DOC
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '105A1BC
  'Data Table: 5B2118
  Dim var_86 As Integer
  loc_1059F40: On Error Goto loc_105A1B4
  loc_1059F46: Proc_6_58_E06050(arg_10)
  loc_1059F4E: var_86 = KeyAscii
  loc_1059F59: If Not (var_86 = CInt(0)) Then
  loc_1059F64:   If (var_86 = CInt(4)) Then
  loc_1059F67:   End If
  loc_1059F71:   Set var_8C = var_90(KeyAscii)
  loc_1059F77:   Call 0.Method_Txt_KeyPress0 (var_86)
  loc_1059F92:   Proc_6_42_129B55C(var_90, arg_10)
  loc_1059FA1: Else
  loc_1059FA9:   If Not (var_86 = CInt(6)) Then
  loc_1059FB4:     If (var_86 = CInt(7)) Then
  loc_1059FB7:     End If
  loc_1059FC1:     Set var_8C = var_90(KeyAscii)
  loc_1059FC7:     Call 0.Method_Txt_KeyPress0 (8)
  loc_1059FE2:     Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_1059FF1:   Else
  loc_1059FF9:     If (var_86 = CInt(3)) Then
  loc_105A000:       Set var_8C = 0(2)
  loc_105A006:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_105A018:       If (CBool() = &HFF) Then
  loc_105A045:         Proc_6_89_1470B00((), KeyAscii, global_120)
  loc_105A05F:         Set var_90 = (0)
  loc_105A077:         Proc_6_138_106E830("Name"(arg_10), global_120)
  loc_105A085:       End If
  loc_105A088:     Else
  loc_105A090:       If (var_86 = CInt(&HB)) Then
  loc_105A097:         Set var_8C = var_90(KeyAscii)
  loc_105A09D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_105A0AF:         If (CBool() = &HFF) Then
  loc_105A0DC:           Proc_6_89_1470B00((), KeyAscii, global_124)
  loc_105A0F6:           Set var_90 = (0)
  loc_105A10E:           Proc_6_138_106E830("Vno"(arg_10), global_124)
  loc_105A11C:         End If
  loc_105A11F:       Else
  loc_105A127:         If (var_86 = CInt(&HD)) Then
  loc_105A12E:           Set var_8C = var_90(KeyAscii)
  loc_105A134:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_105A146:           If (CBool() = &HFF) Then
  loc_105A173:             Proc_6_89_1470B00((), KeyAscii, global_108)
  loc_105A18D:             Set var_90 = (0)
  loc_105A1A5:             Proc_6_138_106E830("Name"(arg_10), global_108)
  loc_105A1B3:           End If
  loc_105A1B3:         End If
  loc_105A1B3:       End If
  loc_105A1B3:     End If
  loc_105A1B3:   End If
  loc_105A1B3: End If
  loc_105A1B3: Exit Sub
  loc_105A1B4: ' Referenced from: 1059F40
  loc_105A1B4: Proc_6_60_E63754(KeyAscii)
  loc_105A1B9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F851F4
  'Data Table: 5B2118
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F850CB: var_86 = KeyCode
  loc_F850D6: If Not (var_86 = CInt(6)) Then
  loc_F850E1:   If (var_86 = CInt(7)) Then
  loc_F850E4:   End If
  loc_F850F2:   Set var_8C = var_90(CInt(6))
  loc_F850F8:   Call 0.Method_Txt_KeyUp0 (var_94)
  loc_F85100:   var_86 = var_90.Text
  loc_F8510D:   var_118 = Val(var_94)
  loc_F85117:   Set var_98 = var_118(var_9A)
  loc_F8511D:   Call 0.Method_Txt_KeyUp8 ()
  loc_F8512F:   Set var_A0 = var_A4(var_9A)
  loc_F85135:   Call 0.Method_Txt_KeyUp0 (var_A8)
  loc_F8513D:    = var_A4.Text
  loc_F8514A:   var_120 = Val(var_A8)
  loc_F8515B:   Set var_AC = var_B0(CInt(7))
  loc_F85161:   Call 0.Method_Txt_KeyUp0 (var_B4)
  loc_F85199:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F851B7:   Set var_108 = var_10C(CInt(8))
  loc_F851BD:   Call 0.Method_Txt_KeyUp0 (CStr(Format(var_D4, "0.00")), 1)
  loc_F851C5:   var_10C.Text = 1
  loc_F851F3: End If
  loc_F851F3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47484
  'Data Table: 5B2118
  loc_E47462: Set var_88 = var_8C(Index)
  loc_E47468: Call 0.Method_Txt_LostFocus0 ()
  loc_E47476: Proc_6_73_E23294(var_8C)
  loc_E47482: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1A25584
  'Data Table: 5B2118
  Dim var_AA As Integer
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_C0 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim var_120 As Variant
  Dim var_B8 As Variant
  Dim var_128 As Variant
  Dim var_134 As Double
  Dim var_15C As Variant
  Dim var_E4 As Variant
  Dim var_178 As Variant
  Dim var_190 As Double
  Dim var_180 As Variant
  Dim var_198 As Double
  Dim var_14C As Variant
  Dim var_188 As TextBox
  Dim unk_5B2155 As Connection15
  Dim var_124 As Variant
  Dim arg_10 As Integer
  Dim var_104 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_8C As Recordset15
  Dim var_92 As Integer
  Dim var_17C As Variant
  Dim var_22C As Variant
  Dim var_98 As Recordset15
  Dim var_184 As Field20
  loc_1A21F40: On Error Goto loc_1A2557B
  loc_1A21F51: If (Cancel = CInt(&HD)) Then
  loc_1A21F6B:   If (Me.RecordCount > 0) Then
  loc_1A21F74:     Me.MoveFirst
  loc_1A21F79:   End If
  loc_1A21F99:   var_B2 = Me.EOF
  loc_1A21FBA:   If ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A21FCA:     Set var_B8 = var_BC(Cancel)
  loc_1A21FD0:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A21FD8:     var_AA = var_BC.Text
  loc_1A21FEF:     If (var_C0 = vbNullString) Then
  loc_1A21FFF:       Set var_B8 = var_BC(Cancel)
  loc_1A22005:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2200D:       var_BC.Text = 
  loc_1A22026:       Set var_B8 = var_BC(Cancel)
  loc_1A2202C:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2204E:       Set var_B8 = var_BC(CInt(&HF))
  loc_1A22054:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2205C:       var_BC.Text = 
  loc_1A22074:       Set var_B8 = var_92(var_B2)
  loc_1A2207A:       Call 0.Method_Txt_Validate8 (2)
  loc_1A22085:       For var_C4 =  To var_B2:  = var_C4 'Integer
  loc_1A22098:         Set var_B8 = var_BC(var_92)
  loc_1A2209E:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A220A6:          = 
  loc_1A220D9:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1A220E0:           var_C0 = CStr(0)
  loc_1A220ED:           Set var_B8 = var_BC(var_92)
  loc_1A220F3:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A220FB:           var_BC.Text = 
  loc_1A2210A:         End If
  loc_1A2210D:       Next var_C4 'Integer
  loc_1A22115:       var_A8 = "CashCard"
  loc_1A22118:     End If
  loc_1A2211B:   Else
  loc_1A22128:     Set var_B8 = var_BC(Cancel)
  loc_1A2212E:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22136:      = var_BC.Text
  loc_1A2214D:     If (var_C0 = vbNullString) Then
  loc_1A2215D:       Set var_B8 = var_BC(Cancel)
  loc_1A22163:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2216B:        = var_BC.Text
  loc_1A22182:       If (var_C0 = vbNullString) Then
  loc_1A22192:         Set var_B8 = var_BC(Cancel)
  loc_1A22198:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A221A0:         var_BC.Text = 
  loc_1A221B9:         Set var_B8 = var_BC(Cancel)
  loc_1A221BF:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A221C7:         var_BC.Tag = 
  loc_1A221E1:         Set var_B8 = var_BC(CInt(&HF))
  loc_1A221E7:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A221EF:         var_BC.Text = 
  loc_1A22207:         Set var_B8 = var_92(var_B2)
  loc_1A2220D:         Call 0.Method_Txt_Validate8 (2)
  loc_1A22218:         For var_108 =  To var_B2:    = var_108 'Integer
  loc_1A2222B:           Set var_B8 = var_BC(var_92)
  loc_1A22231:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22239:            = var_BC.Tag
  loc_1A2226C:           If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1A22273:             var_C0 = CStr(0)
  loc_1A22280:             Set var_B8 = var_BC(var_92)
  loc_1A22286:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2228E:             var_BC.Text = 
  loc_1A2229D:           End If
  loc_1A222A0:         Next var_108 'Integer
  loc_1A222A8:         var_A8 = "CashCard"
  loc_1A222AB:       End If
  loc_1A222AE:     Else
  loc_1A222CD:       Set var_B8 = var_BC(CInt(&HD))
  loc_1A222D3:       Call 0.Method_Txt_Validate0 (var_C0, "Code='", 0)
  loc_1A222DB:       1 = var_BC.Tag
  loc_1A222E4:       var_10C = var_120 & var_C0
  loc_1A222F4:       Me.Find var_10C & "'", , 
  loc_1A22312:       var_B2 = Me.EOF
  loc_1A22333:       If Not(((var_B2 = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A22371:         Set var_124 = var_128(Cancel)
  loc_1A22377:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1A2237F:         var_128.Text = 
  loc_1A223D0:         Set var_124 = var_128(Cancel)
  loc_1A223D6:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A223DE:         var_128.Tag = 
  loc_1A22411:         var_BC = Me.Fields.Item("CardNo")
  loc_1A22422:         var_C0 = CStr(var_BC.Value)
  loc_1A22430:         Set var_124 = var_128(CInt(&HF))
  loc_1A22436:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2243E:         var_128.Text = 
  loc_1A22460:         Set var_B8 = var_92(var_B2)
  loc_1A22466:         Call 0.Method_Txt_Validate8 (2)
  loc_1A22471:         For var_12C =  To var_B2:      = var_12C 'Integer
  loc_1A22484:           Set var_B8 = var_BC(var_92)
  loc_1A2248A:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22492:            = var_BC.Tag
  loc_1A224AF:           var_F4 = CVar(MemVar_1F95078 & "DIS") 'String
  loc_1A224C5:           If (Trim(CVar(var_C0)) = var_F4) Then
  loc_1A224E5:             var_BC = Me.Fields.Item("Discount")
  loc_1A224F6:             var_C0 = CStr(var_BC.Value)
  loc_1A22503:             Set var_124 = var_128(var_92)
  loc_1A22509:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22511:             var_128.Text = 
  loc_1A22527:           End If
  loc_1A2252A:         Next var_12C 'Integer
  loc_1A22532:         var_A8 = "Member"
  loc_1A2254F:         Set var_B8 = var_BC(Cancel)
  loc_1A22555:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2255D:         0 = var_BC.Tag
  loc_1A22577:         If (Proc_96_1_F8D0C4(var_C0) = 0) Then
  loc_1A22587:           Set var_B8 = var_BC(Cancel)
  loc_1A2258D:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A22595:            = var_BC.Tag
  loc_1A225A1:           Proc_96_2_100E504(var_10C)
  loc_1A225AF:           var_120 = "Member Varification"
  loc_1A225C6:           var_C0 = "Credit Is Not allowed to this Member" & vbCrLf
  loc_1A225DC:           MsgBox(CVar(var_C0 & " & Current A/c Balance is Rs.:     " & CStr()), &H40, var_120, var_F4, var_104)
  loc_1A225FE:         End If
  loc_1A22601:       Else
  loc_1A2260F:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A22615:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2261D:         var_134 = var_BC.Tag
  loc_1A22634:         If (var_C0 <> vbNullString) Then
  loc_1A2263A:           var_A8 = "CashCard"
  loc_1A2263D:         End If
  loc_1A2263D:       End If
  loc_1A2263D:     End If
  loc_1A2263D:   End If
  loc_1A22656:   Set var_B8 = var_BC(CInt(&HD))
  loc_1A2265C:   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22664:   (global_440 = "No") = var_BC.Tag
  loc_1A22685:   If (( And (var_C0 <> vbNullString)) And (var_A8 = "Member")) Then
  loc_1A22694:     Set var_B8 = var_92(var_B2)
  loc_1A2269A:     Call 0.Method_Txt_Validate8 (2)
  loc_1A226A5:     For var_160 =  To var_B2:  = var_160 'Integer
  loc_1A226B8:       Set var_B8 = var_BC(var_92)
  loc_1A226BE:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A226C6:        = var_BC.Tag
  loc_1A226F9:       If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1A22708:         Set var_B8 = var_BC(var_92)
  loc_1A2270E:         Call 0.Method_Txt_Validate0 (0)
  loc_1A22716:         var_BC.Enabled = 
  loc_1A2272E:         Set var_B8 = var_BC(var_92)
  loc_1A22734:         Call 0.Method_Txt_Validate0 (0)
  loc_1A2273C:         var_BC.Enabled = 
  loc_1A22748:       End If
  loc_1A2274B:     Next var_160 'Integer
  loc_1A22753:   Else
  loc_1A2275F:     Set var_B8 = var_92(var_B2)
  loc_1A22765:     Call 0.Method_Txt_Validate8 (2)
  loc_1A22770:     For var_164 =  To var_B2:    = var_164 'Integer
  loc_1A22783:       Set var_B8 = var_BC(var_92)
  loc_1A22789:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22791:        = var_BC.Tag
  loc_1A227C4:       If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1A227D3:         Set var_B8 = var_BC(var_92)
  loc_1A227D9:         Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A227E1:         var_BC.Enabled = 
  loc_1A227F9:         Set var_B8 = var_BC(var_92)
  loc_1A227FF:         Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A22807:         var_BC.Enabled = 
  loc_1A22813:       End If
  loc_1A22816:     Next var_164 'Integer
  loc_1A2281B:   End If
  loc_1A22821:   Call Proc_258_158_19037C8(Cancel)
  loc_1A22829: Else
  loc_1A22831:   If (var_AA = CInt(&HF)) Then
  loc_1A2283E:     Set var_B8 = var_BC(Cancel)
  loc_1A22844:     Call 0.Method_Txt_Validate0 ()
  loc_1A2285B:     var_C0 = CStr(Trim(CVar(var_BC)))
  loc_1A22869:     Set var_124 = var_128(Cancel)
  loc_1A2286F:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22877:     var_128.Text = 
  loc_1A228A6:     If (Me.RecordCount > 0) Then
  loc_1A228AF:       Me.MoveFirst
  loc_1A228D2:       Set var_B8 = var_BC(Cancel)
  loc_1A228D8:       Call 0.Method_Txt_Validate0 (var_C0, "CardNo='", 0)
  loc_1A228E0:       1 = var_BC.Text
  loc_1A228E9:       var_10C = var_120 & var_C0
  loc_1A228F0:       var_110 = var_10C & "'"
  loc_1A228F9:       Me.Find var_110, , 
  loc_1A22917:       var_B2 = Me.EOF
  loc_1A22937:       If ((var_B2 = &HFF) Or (Me.BOF = &HFF)) Then
  loc_1A22948:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A2294E:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A22956:         var_BC.Text = 
  loc_1A22970:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A22976:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2297E:         var_BC.Tag = 
  loc_1A22997:         Set var_B8 = var_BC(Cancel)
  loc_1A2299D:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A229A5:         var_BC.Text = 
  loc_1A229BD:         Set var_B8 = var_92(var_B2)
  loc_1A229C3:         Call 0.Method_Txt_Validate8 (2)
  loc_1A229CE:         For var_168 =  To var_B2:    = var_168 'Integer
  loc_1A229E1:           Set var_B8 = var_BC(var_92)
  loc_1A229E7:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A229EF:            = var_BC.Tag
  loc_1A22A22:           If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1A22A36:             Set var_B8 = var_BC(var_92)
  loc_1A22A3C:             Call 0.Method_Txt_Validate0 (CStr(0))
  loc_1A22A44:             var_BC.Text = 
  loc_1A22A53:           End If
  loc_1A22A56:         Next var_168 'Integer
  loc_1A22A5E:         var_A8 = "CashCard"
  loc_1A22A64:       Else
  loc_1A22AA0:         Set var_124 = var_128(CInt(&HD))
  loc_1A22AA6:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1A22AAE:         var_128.Text = 
  loc_1A22B00:         Set var_124 = var_128(CInt(&HD))
  loc_1A22B06:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A22B0E:         var_128.Tag = 
  loc_1A22B41:         var_BC = Me.Fields.Item("CardNo")
  loc_1A22B52:         var_C0 = CStr(var_BC.Value)
  loc_1A22B5F:         Set var_124 = var_128(Cancel)
  loc_1A22B65:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22B6D:         var_128.Text = 
  loc_1A22B8F:         Set var_B8 = var_92(var_B2)
  loc_1A22B95:         Call 0.Method_Txt_Validate8 (2)
  loc_1A22BA0:         For var_16C =  To var_B2:      = var_16C 'Integer
  loc_1A22BB3:           Set var_B8 = var_BC(var_92)
  loc_1A22BB9:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22BC1:            = var_BC.Tag
  loc_1A22BDE:           var_F4 = CVar(MemVar_1F95078 & "DIS") 'String
  loc_1A22BF4:           If (Trim(CVar(var_C0)) = var_F4) Then
  loc_1A22C14:             var_BC = Me.Fields.Item("Discount")
  loc_1A22C25:             var_C0 = CStr(var_BC.Value)
  loc_1A22C32:             Set var_124 = var_128(var_92)
  loc_1A22C38:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22C40:             var_128.Text = 
  loc_1A22C56:           End If
  loc_1A22C59:         Next var_16C 'Integer
  loc_1A22C61:         var_A8 = "Member"
  loc_1A22C7F:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A22C85:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22C8D:         0 = var_BC.Tag
  loc_1A22CA7:         If (Proc_96_1_F8D0C4(var_C0) = 0) Then
  loc_1A22CB8:           Set var_B8 = var_BC(CInt(&HD))
  loc_1A22CBE:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A22CC6:            = var_BC.Tag
  loc_1A22CD2:           Proc_96_2_100E504(var_10C)
  loc_1A22CF7:           var_C0 = "Credit Is Not allowed to this Member" & vbCrLf
  loc_1A22D0D:           MsgBox(CVar(var_C0 & " & Current A/c Balance is Rs.:     " & CStr()), &H40, "Member Varification", var_F4, var_104)
  loc_1A22D2F:         End If
  loc_1A22D2F:       End If
  loc_1A22D32:     Else
  loc_1A22D40:       Set var_B8 = var_BC(CInt(&HD))
  loc_1A22D46:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22D4E:       var_134 = var_BC.Tag
  loc_1A22D65:       If (var_C0 <> vbNullString) Then
  loc_1A22D6B:         var_A8 = "CashCard"
  loc_1A22D6E:       End If
  loc_1A22D6E:     End If
  loc_1A22D87:     Set var_B8 = var_BC(CInt(&HD))
  loc_1A22D8D:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22D95:     (global_440 = "No") = var_BC.Tag
  loc_1A22DB6:     If (( And (var_C0 <> vbNullString)) And (var_A8 = "Member")) Then
  loc_1A22DC5:       Set var_B8 = var_92(var_B2)
  loc_1A22DCB:       Call 0.Method_Txt_Validate8 (2)
  loc_1A22DD6:       For var_170 =  To var_B2:    = var_170 'Integer
  loc_1A22DE9:         Set var_B8 = var_BC(var_92)
  loc_1A22DEF:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22DF7:          = var_BC.Tag
  loc_1A22E2A:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1A22E39:           Set var_B8 = var_BC(var_92)
  loc_1A22E3F:           Call 0.Method_Txt_Validate0 (0)
  loc_1A22E47:           var_BC.Enabled = 
  loc_1A22E5F:           Set var_B8 = var_BC(var_92)
  loc_1A22E65:           Call 0.Method_Txt_Validate0 (0)
  loc_1A22E6D:           var_BC.Enabled = 
  loc_1A22E79:         End If
  loc_1A22E7C:       Next var_170 'Integer
  loc_1A22E84:     Else
  loc_1A22E90:       Set var_B8 = var_92(var_B2)
  loc_1A22E96:       Call 0.Method_Txt_Validate8 (2)
  loc_1A22EA1:       For var_174 =  To var_B2:      = var_174 'Integer
  loc_1A22EB4:         Set var_B8 = var_BC(var_92)
  loc_1A22EBA:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22EC2:          = var_BC.Tag
  loc_1A22EF5:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1A22F04:           Set var_B8 = var_BC(var_92)
  loc_1A22F0A:           Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A22F12:           var_BC.Enabled = 
  loc_1A22F2A:           Set var_B8 = var_BC(var_92)
  loc_1A22F30:           Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A22F38:           var_BC.Enabled = 
  loc_1A22F44:         End If
  loc_1A22F47:       Next var_174 'Integer
  loc_1A22F4C:     End If
  loc_1A22F4F:   Else
  loc_1A22F57:     If Not (var_AA = CInt(6)) Then
  loc_1A22F62:       If (var_AA = CInt(7)) Then
  loc_1A22F65:       End If
  loc_1A22F72:       Set var_B8 = var_BC(Cancel)
  loc_1A22F78:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A22F80:        = var_BC.Text
  loc_1A22F91:       Proc_6_40_EA5C80(CVar(Val(var_C0)))
  loc_1A22FB8:       var_104 = Format(CVar(), "0.00")
  loc_1A22FC0:       var_10C = CStr(var_104)
  loc_1A22FCE:       Set var_124 = var_128(Cancel)
  loc_1A22FD4:       Call 0.Method_Txt_Validate0 (var_10C, 1)
  loc_1A22FDC:       var_128.Text = 1
  loc_1A2300C:       Set var_B8 = var_BC(CInt(6))
  loc_1A23012:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2301A:       var_134 = var_BC.Text
  loc_1A23027:       var_134 = Val(var_C0)
  loc_1A23031:       Set var_124 = var_134(var_B2)
  loc_1A23037:       Call 0.Method_Txt_Validate8 ()
  loc_1A23049:       Set var_128 = var_178(var_B2)
  loc_1A2304F:       Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A23057:        = var_178.Text
  loc_1A23064:       var_190 = Val(var_10C)
  loc_1A23075:       Set var_17C = var_180(CInt(7))
  loc_1A2307B:       Call 0.Method_Txt_Validate0 (var_110)
  loc_1A23090:       var_198 = Val(var_110)
  loc_1A230A2:       var_E4 = "0.00"
  loc_1A230B3:       var_D4 = CVar(((var_134 - var_180.Text) - var_198)) 'Double
  loc_1A230BA:       var_F4 = Format(CVar(Val(var_C0)), var_E4)
  loc_1A230D1:       Set var_184 = var_188(CInt(8))
  loc_1A230D7:       Call 0.Method_Txt_Validate0 (CStr(var_F4), 1)
  loc_1A230DF:       var_188.Text = 1
  loc_1A23110:     Else
  loc_1A23118:       If (var_AA = CInt(0)) Then
  loc_1A2311F:         Set var_B8 = Me.TopCtrl1
  loc_1A23125:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_198)
  loc_1A2312D:         var_C0 = CStr()
  loc_1A2313E:         If (var_C0 = "Add") Then
  loc_1A23147:           Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1A2315A:           Set var_B8 = var_BC(CInt(2))
  loc_1A23160:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23168:           var_BC.Text = var_C0
  loc_1A23177:         End If
  loc_1A2317B:         Set var_B8 = Me.TopCtrl1
  loc_1A23181:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1A23189:         var_C0 = CStr()
  loc_1A2319A:         If (var_C0 = "Add") Then
  loc_1A231CA:           Set var_B8 = var_BC(CInt(2))
  loc_1A231D0:           Call 0.Method_Txt_Validate0 (var_C0, "Select Count(*) From Sale1 Where DocID='", CVar(Val(var_C0)), -1, var_124)
  loc_1A231E1:           var_10C = 0 & var_C0
  loc_1A231F1:           unk_5B2155.Execute var_10C & "'", var_178, var_E4
  loc_1A231F9:            = var_124.Fields
  loc_1A23201:            = var_BC.Text.Item()
  loc_1A23209:            = var_178.Value
  loc_1A23236:           If (var_E4 > 0) Then
  loc_1A2323F:             Call 0.Method_arg_50 (var_C0)
  loc_1A23260:             MsgBox("Duplicate Voucher No.", &H40, CVar(var_C0), var_F4, var_104)
  loc_1A23276:             Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1A23286:             If (var_C0 = vbNullString) Then
  loc_1A23293:               Set var_B8 = var_BC(Cancel)
  loc_1A23299:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A232A1:               var_BC.SetFocus
  loc_1A232AF:               arg_10 = &HFF
  loc_1A232B2:               Exit Sub
  loc_1A232B3:             End If
  loc_1A232B9:             Call Proc_258_151_10E8A40(MemVar_1F95044, var_C0)
  loc_1A232CC:             Set var_B8 = var_BC(CInt(2))
  loc_1A232D2:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A232DA:             var_BC.Text = arg_10
  loc_1A232EB:             arg_10 = &HFF
  loc_1A232EE:             Exit Sub
  loc_1A232EF:           End If
  loc_1A232EF:         End If
  loc_1A232F2:       Else
  loc_1A232FA:         If (var_AA = CInt(1)) Then
  loc_1A2330B:           Set var_B8 = var_BC(CInt(1))
  loc_1A23311:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23319:           arg_10 = var_BC.Text
  loc_1A2332F:           var_F4 = Len(Trim(CVar(var_C0)))
  loc_1A23349:           If (var_F4 = 0) Then
  loc_1A2335F:             Set var_B8 = var_BC(CInt(1))
  loc_1A23365:             Call 0.Method_Txt_Validate0 (CStr(MemVar_1F950EC))
  loc_1A2336D:             var_BC.Text = 
  loc_1A2337F:           Else
  loc_1A23389:             Set var_B8 = var_BC(Cancel)
  loc_1A2338F:             Call 0.Method_Txt_Validate0 ()
  loc_1A233A2:             var_C0 = Proc_6_33_15125B8(var_BC)
  loc_1A233AF:             Set var_128 = var_178(Cancel)
  loc_1A233B5:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A233BD:             var_178.Text = 
  loc_1A233D0:           End If
  loc_1A233DD:           Set var_B8 = var_BC(Cancel)
  loc_1A233E3:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A233EB:            = var_BC.Text
  loc_1A23406:           Set var_124 = var_128(Cancel)
  loc_1A2340C:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A23414:           (CDate(var_C0) >= MemVar_1F950F4) = var_128.Text
  loc_1A23436:           If Not(( And (CDate(var_10C) <= MemVar_1F950FC))) Then
  loc_1A23444:             var_E4 = "Date Validate"
  loc_1A2345A:             MsgBox("V.Date Not Between Current Fin. Year", 0, var_E4, var_F4, var_104)
  loc_1A23474:             Set var_B8 = var_BC(Cancel)
  loc_1A2347A:             Call 0.Method_Txt_Validate0 ()
  loc_1A23482:             var_BC.SetFocus
  loc_1A23490:             arg_10 = &HFF
  loc_1A23493:             Exit Sub
  loc_1A23494:           End If
  loc_1A23498:           Set var_B8 = Me.TopCtrl1
  loc_1A2349E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_1A234A6:           var_C0 = CStr()
  loc_1A234BC:           Set var_BC = var_124(CInt(0))
  loc_1A234C2:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A234CA:           (var_C0 = "Add") = var_124.Text
  loc_1A234EB:           If ( And (var_10C = vbNullString)) Then
  loc_1A234F4:             Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1A23507:             Set var_B8 = var_BC(CInt(2))
  loc_1A2350D:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23515:             var_BC.Text = var_C0
  loc_1A23524:           End If
  loc_1A23527:         Else
  loc_1A2352F:           If (var_AA = CInt(&HB)) Then
  loc_1A23573:             If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A23583:               Set var_B8 = var_BC(Cancel)
  loc_1A23589:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23591:                = var_BC.Text
  loc_1A235A8:               If (var_C0 = vbNullString) Then
  loc_1A235B8:                 Set var_B8 = var_BC(Cancel)
  loc_1A235BE:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A235C6:                 var_BC.Text = 
  loc_1A235DF:                 Set var_B8 = var_BC(Cancel)
  loc_1A235E5:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A235ED:                 var_BC.Tag = 
  loc_1A23607:                 Set var_B8 = var_BC(CInt(&HC))
  loc_1A2360D:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23615:                 var_BC.Text = 
  loc_1A23638:                 If (Me.RecordCount <> 0) Then
  loc_1A2363F:                   Set var_B8 = ()
  loc_1A23645:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0()
  loc_1A23650:                 End If
  loc_1A23650:                 Call Proc_258_136_143EE54()
  loc_1A23655:               End If
  loc_1A23658:             Else
  loc_1A23665:               Set var_B8 = var_BC(Cancel)
  loc_1A2366B:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23673:                = var_BC.Text
  loc_1A2368A:               If (var_C0 <> vbNullString) Then
  loc_1A236C8:                 Set var_124 = var_128(Cancel)
  loc_1A236CE:                 Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("VNo").Value))
  loc_1A236D6:                 var_128.Text = 
  loc_1A23727:                 Set var_124 = var_128(Cancel)
  loc_1A2372D:                 Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("DocID").Value))
  loc_1A23735:                 var_128.Tag = 
  loc_1A23768:                 var_BC = Me.Fields.Item("CustName")
  loc_1A23770:                 var_D4 = var_BC.Value
  loc_1A23779:                 var_C0 = CStr(var_D4)
  loc_1A23787:                 Set var_124 = var_128(CInt(&HC))
  loc_1A2378D:                 Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23795:                 var_128.Text = 
  loc_1A237AE:                 Call Proc_258_135_14011F0(var_D4)
  loc_1A237B6:               End If
  loc_1A237B6:             End If
  loc_1A237BB:             Call Proc_258_158_19037C8(&H32)
  loc_1A237C3:           Else
  loc_1A237CB:             If (var_AA = CInt(3)) Then
  loc_1A2380F:               If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A2381F:                 Set var_B8 = var_BC(Cancel)
  loc_1A23825:                 Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2382D:                  = var_BC.Text
  loc_1A23844:                 If (var_C0 = vbNullString) Then
  loc_1A23854:                   Set var_B8 = var_BC(Cancel)
  loc_1A2385A:                   Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23862:                   var_BC.Text = 
  loc_1A2387B:                   Set var_B8 = var_BC(Cancel)
  loc_1A23881:                   Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23889:                   var_BC.Tag = 
  loc_1A238A0:                   If (global_192 = "RO") Then
  loc_1A238A9:                     global_188 = vbNullString
  loc_1A238AD:                   End If
  loc_1A238AD:                 End If
  loc_1A238B0:               Else
  loc_1A238BD:                 Set var_B8 = var_BC(Cancel)
  loc_1A238C3:                 Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A238CB:                  = var_BC.Text
  loc_1A238E2:                 If (var_C0 = vbNullString) Then
  loc_1A238F2:                   Set var_B8 = var_BC(Cancel)
  loc_1A238F8:                   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23900:                    = var_BC.Text
  loc_1A23917:                   If (var_C0 = vbNullString) Then
  loc_1A23927:                     Set var_B8 = var_BC(Cancel)
  loc_1A2392D:                     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23935:                     var_BC.Text = 
  loc_1A2394E:                     Set var_B8 = var_BC(Cancel)
  loc_1A23954:                     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2395C:                     var_BC.Tag = 
  loc_1A23973:                     If (global_192 = "RO") Then
  loc_1A2397C:                       global_188 = vbNullString
  loc_1A23980:                     End If
  loc_1A23980:                   End If
  loc_1A23983:                 Else
  loc_1A239AA:                   var_BC = Me.Fields.Item("Code")
  loc_1A239C9:                   var_15C = (global_316 <> vbNullString)
  loc_1A239CD:                   var_F4 = (CVar(global_316) <> var_BC.Value) And var_15C
  loc_1A239E1:                   If CBool(var_F4) Then
  loc_1A23A13:                     If (MsgBox("Do You Want to Select Another Table", &H24, var_E4, var_F4, var_104) = 7) Then
  loc_1A23A16:                       Exit Sub
  loc_1A23A17:                     End If
  loc_1A23A17:                   End If
  loc_1A23A2F:                   Set var_B8 = var_BC(Cancel)
  loc_1A23A35:                   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23A3D:                   (global_324 <> vbNullString) = var_BC.Tag
  loc_1A23A55:                   If ( Or (var_C0 <> vbNullString)) Then
  loc_1A23A65:                     Set var_B8 = var_BC(Cancel)
  loc_1A23A6B:                     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23A73:                      = var_BC.Tag
  loc_1A23A9F:                     If (Trim(CVar(var_C0)) = vbNullString) Then
  loc_1A23AB2:                       Set var_B8 = var_BC(Cancel)
  loc_1A23AB8:                       Call 0.Method_Txt_Validate0 (global_324)
  loc_1A23AC0:                       var_BC.Tag = 
  loc_1A23ACC:                     End If
  loc_1A23AD2:                     Me.MoveFirst
  loc_1A23AF7:                     Set var_B8 = var_BC(Cancel)
  loc_1A23AFD:                     Call 0.Method_Txt_Validate0 (var_C0, "Code='", 0)
  loc_1A23B05:                     1 = var_BC.Tag
  loc_1A23B28:                     var_10C = CStr(var_15C & Trim(CVar(var_C0)) & "'")
  loc_1A23B32:                     Me.Find var_10C, , 
  loc_1A23B4C:                   End If
  loc_1A23B87:                   Set var_124 = var_128(Cancel)
  loc_1A23B8D:                   Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1A23B95:                   var_128.Text = 
  loc_1A23BE6:                   Set var_124 = var_128(Cancel)
  loc_1A23BEC:                   Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A23BF4:                   var_128.Tag = 
  loc_1A23C42:                   global_316 = CStr(Trim(CVar(Me.Fields.Item("Code"))))
  loc_1A23C5E:                   If (global_304 = "Room Service") Then
  loc_1A23C9D:                     Set var_124 = var_128(CInt(&HA))
  loc_1A23CA3:                     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A23CAB:                     var_128.Text = 
  loc_1A23CFD:                     Set var_124 = var_128(CInt(&HA))
  loc_1A23D03:                     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("FolioNoDocid").Value))
  loc_1A23D0B:                     var_128.Tag = 
  loc_1A23D21:                   End If
  loc_1A23D2C:                   If (global_192 = "RO") Then
  loc_1A23D4C:                     var_BC = Me.Fields.Item("RoomCat")
  loc_1A23D63:                     global_188 = CStr(var_BC.Value)
  loc_1A23D74:                   End If
  loc_1A23D74:                 End If
  loc_1A23D74:               End If
  loc_1A23D7F:               If (global_240 = "Y") Then
  loc_1A23D8C:                 Set global_104 = New 
  loc_1A23D9E:                 Me.Recordset15.CursorLocation = 3
  loc_1A23DB4:                 If (global_304 = "Hall") Then
  loc_1A23DC5:                   Set var_B8 = var_BC(CInt(3))
  loc_1A23DCB:                   Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A23DD3:                    = var_BC.Tag
  loc_1A23DF9:                   var_C0 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_76
  loc_1A23E0E:                   var_D4 = CVar(var_C0 & "'AND K.RoomNo ='" & var_10C & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_1A23E18:                   Me.Open var_D4, CVar(MemVar_1F95044), 3
  loc_1A23E35:                 Else
  loc_1A23E40:                   Proc_6_7_F26918(var_D4, MemVar_1F950EC)
  loc_1A23E53:                   Set var_B8 = var_BC(CInt(3))
  loc_1A23E59:                   Call 0.Method_Txt_Validate0 (var_C0, 1)
  loc_1A23E61:                   -1 = var_BC.Text
  loc_1A23E7D:                   var_14C = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,IC.CatType,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1A23EB2:                   var_1FC = "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Order by K.DOCID,K.SNo"
  loc_1A23EB7:                   var_20C = var_14C & var_D4 & " And K.RestCode='" & CVar(global_76) & "' aND K.RoomNo ='" & CVar(var_C0) & var_1FC 
  loc_1A23EC2:                   Me.Open var_20C, CVar(MemVar_1F95044), 3
  loc_1A23EEE:                   var_14C = "Select Max(Party) As Party From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1A23EFE:                   Proc_6_7_F26918(var_D4, MemVar_1F950EC, var_14C, var_22C)
  loc_1A23F06:                   var_E4 = -1 & var_D4 
  loc_1A23F0F:                   var_F4 = var_14C & var_D4 & " And K.RestCode='" 
  loc_1A23F1C:                   var_104 = var_F4 & CVar(global_76) 
  loc_1A23F37:                   Set var_B8 = var_BC(CInt(3))
  loc_1A23F3D:                   Call 0.Method_Txt_Validate0 (var_C0, var_104 & "' aND K.RoomNo ='", var_124)
  loc_1A23F45:                   1 = var_BC.Text
  loc_1A23F50:                   var_1EC = -1 & CVar(var_C0) 
  loc_1A23F59:                   var_20C = var_14C & var_D4 & " And K.RestCode='" & CVar(global_76) & "' aND K.RoomNo ='" & CVar(var_C0) & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y'" 
  loc_1A23F67:                   unk_5B2155.Execute CStr(var_20C), , 
  loc_1A23FA5:                   var_B8 = var_124.Fields
  loc_1A23FB5:                   var_D4 = CVar(var_B8.Item("Party")) 'Address
  loc_1A23FDB:                   var_C0 = "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='" & Proc_6_38_E69628(var_D4)
  loc_1A23FEB:                   unk_5B2155.Execute var_C0 & "'", var_D4, -1
  loc_1A23FF6:                   Set var_8C = var_B8
  loc_1A24006:                 End If
  loc_1A2401D:                 If (Me.RecordCount > 0) Then
  loc_1A24029:                   Set var_B8 = var_B8(False)
  loc_1A2402F:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A2403B:                   Set var_B8 = ()
  loc_1A24041:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A24051:                   var_92 = CInt((CLng() - 1))
  loc_1A2406C:                   If ((global_304 = "Room Service") And (var_92 <> 1)) Then
  loc_1A24077:                     Set var_B8 = var_92(True)
  loc_1A2407D:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A240BD:                     If (MsgBox(CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), &H14, var_14C & CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), var_F4, var_104) = 7) Then
  loc_1A240C0:                       ' Referenced from:             1A24F03
  loc_1A240C0:                     End If
  loc_1A240C0:                   End If
  loc_1A240D2:                   If Not(Me.EOF) Then
  loc_1A240DE:                     Set var_B8 = 1(var_A2)
  loc_1A240E4:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A240FA:                     For var_230 =  To CInt((CLng() - 1)):              = var_230 'Integer
  loc_1A24115:                       Set var_B8 = CVar(CLng(var_A2))(CVar(CLng(&HD)))
  loc_1A2411B:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1A24170:                       Set var_128 = CVar(CLng(var_A2))(CVar(CLng(&HC)))
  loc_1A24176:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CVar(CStr()) = Me.Fields.Item("DocID").Value))
  loc_1A241A2:                       var_17C = Me.Fields.Item("SNo")
  loc_1A241DA:                       If CBool( And (CVar(CStr()) = var_17C.Value)) Then
  loc_1A241E1:                         var_9A = CByte(1) 'Byte
  loc_1A241E5:                         GoTo loc_1A24CC4
  loc_1A241E8:                       End If
  loc_1A241EB:                     Next var_230 'Integer
  loc_1A241FA:                     Set var_B8 = (vbNullString)
  loc_1A24200:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1A2420F:                     Set var_264 = ()
  loc_1A24216:                     var_120 = CVar(CLng(var_92)) 'Long
  loc_1A2421E:                     var_15C = CVar(CLng(0)) 'Long
  loc_1A24228:                     var_D4 = CVar(CStr(var_92)) 'String
  loc_1A2422F:                     LateIdCallSt
  loc_1A2423E:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A24246:                     var_1A8 = CVar(CLng(&HB)) 'Long
  loc_1A24279:                     var_E4 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_1A24280:                     LateIdCallSt
  loc_1A2429A:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A242A2:                     var_1A8 = CVar(CLng(3)) 'Long
  loc_1A242D5:                     var_E4 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1A242DC:                     LateIdCallSt
  loc_1A242F6:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A242FE:                     var_1A8 = CVar(CLng(4)) 'Long
  loc_1A24331:                     var_E4 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_1A24338:                     LateIdCallSt
  loc_1A24352:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A2435A:                     var_1A8 = CVar(CLng(6)) 'Long
  loc_1A2438D:                     var_E4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1A24394:                     LateIdCallSt
  loc_1A243CD:                     var_15C = CVar(CLng(var_92)) 'Long
  loc_1A243D5:                     var_1BC = CVar(CLng(7)) 'Long
  loc_1A24402:                     var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.000"))) 'String
  loc_1A24409:                     LateIdCallSt
  loc_1A24442:                     var_15C = CVar(CLng(var_92)) 'Long
  loc_1A2444A:                     var_1BC = CVar(CLng(8)) 'Long
  loc_1A24477:                     var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1A2447E:                     LateIdCallSt
  loc_1A244B7:                     var_15C = CVar(CLng(var_92)) 'Long
  loc_1A244BF:                     var_1BC = CVar(CLng(9)) 'Long
  loc_1A244EC:                     var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1A244F3:                     LateIdCallSt
  loc_1A24548:                     var_124 = Me.Fields
  loc_1A24550:                     var_128 = var_124.Item("Rate")
  loc_1A24561:                     var_1A8 = CVar(CLng(var_92)) 'Long
  loc_1A24569:                     var_1FC = CVar(CLng(&HA)) 'Long
  loc_1A245A0:                     var_1EC = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_128.Value), "0.00"))) 'String
  loc_1A245A7:                     LateIdCallSt
  loc_1A245EC:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A245F4:                     var_1A8 = CVar(CLng(5)) 'Long
  loc_1A2461B:                     var_F4 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_1A24622:                     LateIdCallSt
  loc_1A2463D:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A24645:                     var_1A8 = CVar(CLng(&HD)) 'Long
  loc_1A24678:                     var_E4 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1A2467F:                     LateIdCallSt
  loc_1A24699:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A246A1:                     var_1A8 = CVar(CLng(&HC)) 'Long
  loc_1A246D4:                     var_E4 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_1A246DB:                     LateIdCallSt
  loc_1A2472D:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_92)), var_264, var_E4, CVar(CLng(&H19)), CVar(CLng(var_92)))) 'String
  loc_1A24734:                     LateIdCallSt
  loc_1A24782:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_92)), var_264, var_E4, var_264)) 'String
  loc_1A24789:                     LateIdCallSt
  loc_1A247D7:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A247DE:                     LateIdCallSt
  loc_1A2482C:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A24833:                     LateIdCallSt
  loc_1A24881:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A24888:                     LateIdCallSt
  loc_1A248D6:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A248DD:                     LateIdCallSt
  loc_1A24959:                     var_1CC = (Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("VoidYN")), var_264, var_E4, var_E4))) = "F") 'Variant
  loc_1A24973:                     LateIdCallSt
  loc_1A2499D:                     var_1A8 = CVar(CLng(&H1A)) 'Long
  loc_1A249CD:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), var_1A8, CVar(CLng(var_92)), var_264, CVar(CStr(IIf(var_1CC, "Free", vbNullString))), CVar(CLng(&H1E)))) 'String
  loc_1A249D4:                     LateIdCallSt
  loc_1A24A21:                     var_C0 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_E4, -1, var_124, var_264)
  loc_1A24A35:                     unk_5B2155.Execute var_E4 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", CVar(CLng(var_92)), var_1A8
  loc_1A24A40:                     Set var_98 = var_124
  loc_1A24A6E:                     If (var_98.RecordCount > 0) Then
  loc_1A24A75:                       var_14C = CVar(CLng(var_92)) 'Long
  loc_1A24AA8:                       Proc_6_39_E7D3A0(var_E4, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H10)), var_14C)
  loc_1A24AB9:                       Set var_124 = var_14C(CVar(CStr(var_E4)))
  loc_1A24ABF:                       LateIdCallSt
  loc_1A24AD7:                     End If
  loc_1A24AF8:                     var_D4 = CVar(Proc_6_38_E69628(global_192, CVar(CLng(&H16)), CVar(CLng(var_92)))) 'String
  loc_1A24AFF:                     LateIdCallSt
  loc_1A24B46:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_92)), var_264)) 'String
  loc_1A24B4D:                     LateIdCallSt
  loc_1A24B8A:                     var_C0 = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), var_264, var_E4, CVar(Me.Fields.Item("RoomNo")))
  loc_1A24B9E:                     Call 0.Method_Txt_Validate0 (var_C0, var_128(CInt(3)))
  loc_1A24BA6:                     var_128.Tag = var_264
  loc_1A24BBE:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A24BF6:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)))) 'String
  loc_1A24BFD:                     LateIdCallSt
  loc_1A24C4B:                     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_92)), var_264)) 'String
  loc_1A24C52:                     LateIdCallSt
  loc_1A24C85:                     var_D4 = CVar(Proc_6_38_E69628(global_188, CVar(CLng(&H15)), CVar(CLng(var_92)), var_264)) 'String
  loc_1A24C8C:                     LateIdCallSt
  loc_1A24C9B:                     var_120 = CVar(CLng(var_92)) 'Long
  loc_1A24CAD:                     LateIdCallSt
  loc_1A24CB7:                     Set var_264 = Nothing 
  loc_1A24CC1:                     var_92 = (var_92 + 1)
  loc_1A24CC4:                     ' Referenced from:             1A241E5
  loc_1A24CCA:                     Me.MoveNext
  loc_1A24CED:                     If ((Me.EOF = &HFF) And (CInt(var_9A) = 0)) Then
  loc_1A24CFB:                       If (global_304 = "Room Service") Then
  loc_1A24D0B:                         var_264 = var_92(var_C0).Caption
  loc_1A24D1E:                         If (var_C0 = vbNullString) Then
  loc_1A24D21:                           var_14C = "Room # "
  loc_1A24D2C:                           var_120 = "Name"
  loc_1A24D57:                           var_C0 = CStr(var_14C & Me.Fields.Item(var_120).Value)
  loc_1A24D65:                           global_68(var_C0).Caption = var_120
  loc_1A24D80:                         Else
  loc_1A24D8D:                           var_D4 = var_264(var_C0).Caption
  loc_1A24D99:                           var_E4 = CVar(var_C0 & ",") 'String
  loc_1A24DDB:                           var_E4(CStr(var_E4 & Me.Fields.Item("Name").Value)).Caption = var_E4
  loc_1A24DFB:                         End If
  loc_1A24DFE:                       Else
  loc_1A24E0B:                         var_F4 = var_14C(var_C0).Caption
  loc_1A24E1E:                         If (var_C0 = vbNullString) Then
  loc_1A24E57:                           var_C0 = CStr("Table # " & Me.Fields.Item("Code").Value)
  loc_1A24E65:                           (var_C0).Caption = 
  loc_1A24E80:                         Else
  loc_1A24E8D:                            = (var_C0).Caption
  loc_1A24EC9:                           var_F4 = CVar(var_C0 & ",") & Me.Fields.Item("Code").Value 
  loc_1A24ECD:                           var_10C = CStr(var_F4)
  loc_1A24ED5:                           Set var_128 = (var_10C)
  loc_1A24EDB:                           var_128.Caption = 
  loc_1A24EFB:                         End If
  loc_1A24EFB:                       End If
  loc_1A24EFB:                     End If
  loc_1A24EFF:                     var_9A = CByte(0) 'Byte
  loc_1A24F03:                     GoTo loc_1A240C0
  loc_1A24F06:                   End If
  loc_1A24F0A:                   Set var_B8 = ()
  loc_1A24F10:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A24F1F:                   var_120 = CVar((CLng() - 1)) 'Long
  loc_1A24F38:                   LateIdCallSt
  loc_1A24F57:                   Set var_B8 = "Code"(global_68)(1)
  loc_1A24F5D:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1A24F68:                 Else
  loc_1A24F70:                   Set var_B8 = (True)
  loc_1A24F76:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A24F84:                   If (var_92 = 1) Then
  loc_1A24F94:                     Set var_B8 = (1)
  loc_1A24F9A:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A24FC8:                     Set var_BC = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_1A24FCE:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1A24FE6:                     Set var_B8 = ()
  loc_1A24FEC:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A24FFB:                     var_120 = CVar((CLng() - 1)) 'Long
  loc_1A25014:                     LateIdCallSt
  loc_1A25033:                     Set var_B8 = 1(global_68)(1)
  loc_1A25039:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1A25041:                   End If
  loc_1A25041:                 End If
  loc_1A25041:               End If
  loc_1A25049:               Set var_B8 = (True)
  loc_1A2504F:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A2505D:               If (var_92 = 1) Then
  loc_1A2506D:                 Set var_B8 = (1)
  loc_1A25073:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A250A1:                 Set var_BC = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_1A250A7:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1A250BF:                 Set var_B8 = ()
  loc_1A250C5:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A250D4:                 var_120 = CVar((CLng() - 1)) 'Long
  loc_1A250E7:                 Set var_BC = 1(global_68)
  loc_1A250ED:                 LateIdCallSt
  loc_1A2510C:                 Set var_B8 = var_BC(1)
  loc_1A25112:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1A2511A:               End If
  loc_1A25120:               Call Proc_258_158_19037C8(Cancel)
  loc_1A25132:               Set var_B8 = var_BC(Cancel)
  loc_1A25138:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A25140:                = var_BC.Text
  loc_1A25163:               If ((var_C0 <> vbNullString) And (global_240 = "Y")) Then
  loc_1A25173:                 Set var_B8 = var_BC(Cancel)
  loc_1A25179:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A25181:                 var_BC.Text = 
  loc_1A251A1:                 If (var_8C.RecordCount > 0) Then
  loc_1A251B2:                   Set var_B8 = var_BC(CInt(&HD))
  loc_1A251B8:                   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A251C0:                    = var_BC.Tag
  loc_1A251EC:                   If (Trim(CVar(var_C0)) = vbNullString) Then
  loc_1A25228:                     Set var_124 = var_128(CInt(&HD))
  loc_1A2522E:                     Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(0).Value))
  loc_1A25236:                     var_128.Tag = 
  loc_1A25285:                     Set var_124 = var_128(CInt(&HD))
  loc_1A2528B:                     Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(1).Value))
  loc_1A25293:                     var_128.Text = 
  loc_1A252C3:                     var_BC = var_8C.Fields.Item(2)
  loc_1A252D3:                     var_C0 = CStr(var_BC.Value)
  loc_1A252E2:                     Set var_124 = var_128(CInt(&HF))
  loc_1A252E8:                     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A252F0:                     var_128.Text = 
  loc_1A25312:                     Call Txt_Validate(CInt(&HD))
  loc_1A2531A:                   Else
  loc_1A25328:                     Set var_B8 = var_BC(CInt(&HD))
  loc_1A2532E:                     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A25336:                     0 = var_BC.Tag
  loc_1A2535C:                     var_128 = var_8C.Fields.Item(0)
  loc_1A2537E:                     Set var_178 = var_17C(CInt(&HD))
  loc_1A25384:                     Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A2538C:                     (CVar(var_C0) <> var_128.Value) = var_17C.Text
  loc_1A253BA:                     var_104 = var_8C.Fields.Item(1).Value
  loc_1A253EA:                     If CBool( And (CVar(var_10C) <> var_104)) Then
  loc_1A2542D:                       If (MsgBox(CVar("Would u like to change Member Name" & vbCrLf & "With KOT Member Name."), &H24, "Member Information", var_F4, var_104) = 6) Then
  loc_1A25469:                         Set var_124 = var_128(CInt(&HD))
  loc_1A2546F:                         Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(0).Value))
  loc_1A25477:                         var_128.Tag = 
  loc_1A254C6:                         Set var_124 = var_128(CInt(&HD))
  loc_1A254CC:                         Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(1).Value))
  loc_1A254D4:                         var_128.Text = 
  loc_1A25523:                         Set var_124 = var_128(CInt(&HF))
  loc_1A25529:                         Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(2).Value))
  loc_1A25531:                         var_128.Text = 
  loc_1A25553:                         Call Txt_Validate(CInt(&HD))
  loc_1A25558:                       End If
  loc_1A25558:                     End If
  loc_1A25558:                   End If
  loc_1A25558:                 End If
  loc_1A25558:               End If
  loc_1A25558:             End If
  loc_1A25558:           End If
  loc_1A25558:         End If
  loc_1A25558:       End If
  loc_1A25558:     End If
  loc_1A25558:   End If
  loc_1A25558: End If
  loc_1A2555D: Set var_98 = Nothing
  loc_1A25565: Set var_88 = Nothing
  loc_1A25573: Set global_104 = Nothing
  loc_1A2557A: Exit Sub
  loc_1A2557B: ' Referenced from: 1A21F40
  loc_1A2557B: Proc_6_60_E63754(0)
  loc_1A25580: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5B090
  'Data Table: 5B2118
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5AF70: On Error Goto loc_F5B08A
  loc_F5AF7C: Set var_A8 = (False)
  loc_F5AF82: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_F5AFA1: If (Me.RecordCount > 0) Then
  loc_F5AFE0:   Set var_B4 = var_B8(CInt(3))
  loc_F5AFE6:   Call 0.Method_DGTable_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F5AFEE:   var_B8.Text = 
  loc_F5B021:   var_B0 = Me.Fields.Item("Code")
  loc_F5B040:   Set var_B4 = var_B8(CInt(3))
  loc_F5B046:   Call 0.Method_DGTable_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F5B04E:   var_B8.Tag = 
  loc_F5B064: End If
  loc_F5B06F: Set var_A8 = var_B0(CInt(3))
  loc_F5B075: Call 0.Method_DGTable_UnknownEvent_90 ()
  loc_F5B07D: var_B0.SetFocus
  loc_F5B089: Exit Sub
  loc_F5B08A: ' Referenced from: F5AF70
  loc_F5B08A: Proc_6_60_E63754()
  loc_F5B08F: Exit Sub
End Sub

Private Sub CmdRefundCashCardAmt_UnknownEvent_9 '13D6EE8
  'Data Table: 5B2118
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_184 As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_F8 As Variant
  Dim var_A8 As String
  Dim unk_5B2155 As Connection15
  Dim var_12C As Variant
  Dim var_130 As Fields15
  Dim var_144 As Variant
  Dim var_118 As Variant
  Dim var_1F0 As Recordset15
  Dim var_208 As String
  Dim var_204 As String
  loc_13D656C: On Error Goto loc_13D6E9A
  loc_13D657D: Set var_A0 = var_A4(CInt(1))
  loc_13D6583: Call 0.Method_CmdRefundCashCardAmt_UnknownEvent_90 (var_A8)
  loc_13D658B:  = var_A4.Text
  loc_13D65A3: If (CDate(var_A8) <> MemVar_1F950EC) Then
  loc_13D65AC:   Call 0.Method_arg_50 (var_A8)
  loc_13D65CD:   MsgBox("Only Current Date Settlement can be refund.", &H10, CVar(var_A8), var_F8, var_118)
  loc_13D65DD:   Exit Sub
  loc_13D65DE: End If
  loc_13D65E6: var_184 = (MemVar_1F951AC = "Outlet")
  loc_13D65F0: var_140 = 0
  loc_13D6638: var_D8 = "Select Count(*) From Paycharge Where PayType='Cash Card' And docid='" & Me.Fields.Item("SearchCode").Value 
  loc_13D6641: var_F8 = var_D8 & "'" 
  loc_13D664F: unk_5B2155.Execute CStr(var_F8), var_118, -1
  loc_13D6657: var_12C = var_12C.Fields
  loc_13D665F: var_140 = var_130.Item(var_130)
  loc_13D6667: var_144 = var_144.Value
  loc_13D66A2: If CBool(Not var_154 And (var_154 > 0)) Then
  loc_13D66BE:   MsgBox("Not a Cash Card Settlement", &H10, var_D8, var_F8, var_118)
  loc_13D66CE:   Exit Sub
  loc_13D66CF: End If
  loc_13D66E0: var_94 = Me.Bookmark 'Variant
  loc_13D66E8: Set var_1A8 = New RsTouchScreenKeyBoard
  loc_13D66F6: var_1A8.ParentForm = CVar(Me)
  loc_13D6703: var_1A8.CAPTION = "Please Specify, Reason of Deletion ?"
  loc_13D6715: var_1A8.TxtKeyBoard.MaxLength = 150
  loc_13D671C: var_B8 = 1
  loc_13D6728: Call var_1A8.Show
  loc_13D6739: var_9C = TxtKeyBoard
  loc_13D675A: If (Trim(var_9C) = vbNullString) Then
  loc_13D6768:   var_D8 = "Void Reason"
  loc_13D677E:   MsgBox("Please Enter a Valid Reason for Deletion.", 0, var_D8, var_F8, var_118)
  loc_13D67A7:   MsgBox("Transaction Cancelled", &H10, var_D8, var_F8, var_118)
  loc_13D67B7:   Exit Sub
  loc_13D67B8: End If
  loc_13D67BA: Set var_1A8 = Nothing 
  loc_13D67C7: unk_5B2155.BeginTrans var_1AC
  loc_13D6822: unk_5B2155.Execute CStr("Update KOT set delflag='Y' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D6894: unk_5B2155.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D6928: var_118 = "Update Sale1 set delflag='D',Remark='" & Left(Trim(var_9C), &H19) & "',U_name='" 
  loc_13D6943: var_184 = "'"
  loc_13D6956: unk_5B2155.Execute CStr(var_118 & Trim(MemVar_1F950C8) & "',U_AE='E' where docid='" & Me.Fields.Item("SearchCode").Value & var_184), var_1EC, -1
  loc_13D69D6: unk_5B2155.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D6A21: var_A4 = Me.Fields.Item("SearchCode")
  loc_13D6A3E: var_A8 = CStr("Update SunTran set delflag='D' where docid='" & var_A4.Value & "'")
  loc_13D6A48: unk_5B2155.Execute var_A8, var_118, -1
  loc_13D6A72: Set var_A0 = var_A4(CInt(&HB))
  loc_13D6A78: Call 0.Method_CmdRefundCashCardAmt_UnknownEvent_90 (var_A8, var_12C, var_12C, var_12C)
  loc_13D6A80: var_12C = var_A4.Tag
  loc_13D6A97: If (var_A8 <> vbNullString) Then
  loc_13D6AE2:   var_F8 = "update packingorderdetail set contradocid='' ,ContraSno=0 where contradocid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13D6AF0:   unk_5B2155.Execute CStr(var_F8), var_118, -1
  loc_13D6B0C: End If
  loc_13D6B54: var_F8 = "Select Code,VType,VNo,AmtDr,HW_Id,PreBalance From SmartCardLedger Where docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13D6B62: unk_5B2155.Execute CStr(var_F8), var_118, -1
  loc_13D6B6D: Set var_1F0 = var_12C
  loc_13D6B87: ' Referenced from: 13D6D14
  loc_13D6B96: If Not(var_1F0.EOF) Then
  loc_13D6B9F:   var_B8 = "vType"
  loc_13D6BCF:   var_208 = var_12C & Proc_6_38_E69628(CVar(var_1F0.Fields.Item(var_B8)), "Refund Agnst. (", var_12C, var_12C) & ") BILL NO.- "
  loc_13D6C54:   var_12C = var_1F0.Fields
  loc_13D6C96:   Proc_6_39_E7D3A0(var_118, CVar(var_1F0.Fields.Item("AmtDr")))
  loc_13D6CBD:   var_204 = Proc_6_14_EF402C(var_184)
  loc_13D6CE4:   Proc_275_17_1187538(Proc_6_38_E69628(CVar(var_1F0.Fields.Item("Code"))), Proc_6_38_E69628(CVar(var_12C.Item("HW_Id"))), "Refund", MemVar_1F950EC, CSng(var_118), CDbl(0), "Code" & Proc_6_38_E69628(CVar(var_1F0.Fields.Item("VNo")), Proc_6_38_E69628(CVar(var_1F0.Fields.Item("Code")))))
  loc_13D6D0F:   var_1F0.MoveNext
  loc_13D6D14:   GoTo loc_13D6B87
  loc_13D6D17: End If
  loc_13D6D6D: unk_5B2155.Execute CStr("DELETE FROM SmartCardLedger WHERE docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D6DD1: var_F8 = "DELETE FROM PAYCHARGE WHERE docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13D6DD5: var_A8 = CStr(var_F8)
  loc_13D6DDF: unk_5B2155.Execute var_A8, var_118, -1
  loc_13D6E01: unk_5B2155.CommitTrans
  loc_13D6E0B: Set var_1F0 = Nothing
  loc_13D6E19: Me.Requery -1
  loc_13D6E39: If (CVar(Me.RecordCount) >= var_94) Then
  loc_13D6E46:   Me.Bookmark = var_94
  loc_13D6E4E: Else
  loc_13D6E62:   If (Me.EOF = 0) Then
  loc_13D6E6B:     Me.MoveLast
  loc_13D6E70:   End If
  loc_13D6E70: End If
  loc_13D6E70: Call Proc_258_145_1BA3A9C(var_12C, var_12C, MemVar_1F950C8, CDate(var_204))
  loc_13D6E91: Proc_5_0_1107AD0(&HFF, Me, global_116, 0)
  loc_13D6E99: Exit Sub
  loc_13D6E9A: ' Referenced from: 13D656C
  loc_13D6EA0: unk_5B2155.RollbackTrans
  loc_13D6EAD: Set var_A0 = Err()
  loc_13D6EB3: Call 0.Method_arg_2C (var_A8, "A", global_156)
  loc_13D6ED4: MsgBox(CVar(var_A8), &H10, " Refund Message", var_F8, var_118)
  loc_13D6EE7: Exit Sub
End Sub

Private Sub CmdDisc_UnknownEvent_9 'EED778
  'Data Table: 5B2118
  loc_EED6CD:  = (Me.FrDiscType.Visible = &HFF)(var_92).Visible
  loc_EED6E0: If ( Or (var_92 = &HFF)) Then
  loc_EED6EF:   (0).Visible = 
  loc_EED703:   Me.FrDiscType.Visible = False
  loc_EED717:   Me.FrameGrpItem.Enabled = True
  loc_EED722: Else
  loc_EED72E:   (0).Visible = 
  loc_EED742:   Me.FrDiscType.Visible = True
  loc_EED75A:   Me.FrDiscType.ZOrder 0
  loc_EED76E:   Me.FrameGrpItem.Enabled = False
  loc_EED776: End If
  loc_EED776: Exit Sub
End Sub

Private Sub Txt1_GotFocus(Index As Integer) 'E4A33C
  'Data Table: 5B2118
  loc_E4A31A: Set var_88 = var_8C(Index)
  loc_E4A320: Call 0.Method_Txt1_GotFocus0 ()
  loc_E4A32E: Proc_6_74_E23240(var_8C)
  loc_E4A33A: Exit Sub
End Sub

Private Sub Txt1_KeyDown(KeyCode As Integer, Shift As Integer) 'E7F1B0
  'Data Table: 5B2118
  Dim var_86 As Integer
  Dim var_8C As CommandButton
  Dim var_90 As TextBox
  loc_E7F14B: var_86 = KeyCode
  loc_E7F154: If (var_86 = 0) Then
  loc_E7F15D:   If (Shift = &HD) Then
  loc_E7F16A:     (var_86).SetFocus
  loc_E7F172:   End If
  loc_E7F175: Else
  loc_E7F17B:   If (var_86 = 1) Then
  loc_E7F184:     If (Shift = &HD) Then
  loc_E7F192:       Set var_8C = var_90(CInt(0))
  loc_E7F198:       Call 0.Method_Txt1_KeyDown0 ()
  loc_E7F1A0:       var_90.SetFocus
  loc_E7F1AC:     End If
  loc_E7F1AC:   End If
  loc_E7F1AC: End If
  loc_E7F1AC: Exit Sub
End Sub

Private Sub Txt1_LostFocus(Index As Integer) 'E4A19C
  'Data Table: 5B2118
  loc_E4A17A: Set var_88 = var_8C(Index)
  loc_E4A180: Call 0.Method_Txt1_LostFocus0 ()
  loc_E4A18E: Proc_6_73_E23294(var_8C)
  loc_E4A19A: Exit Sub
End Sub

Private Sub Txt1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'EC2854
  'Data Table: 5B2118
  Dim var_8C As TextBox
  Dim var_D4 As TextBox
  loc_EC27CF: Set var_88 = var_8C(CInt(1))
  loc_EC27D5: Call 0.Method_Txt1_MouseMove0 ()
  loc_EC27FE: If CBool(Trim(CVar(var_8C)) <> vbNullString) Then
  loc_EC280F:   Set var_88 = var_8C(CInt(1))
  loc_EC2815:   Call 0.Method_Txt1_MouseMove0 (var_D8)
  loc_EC281D:    = var_8C.Text
  loc_EC2830:   Set var_D0 = var_D4(CInt(1))
  loc_EC2836:   Call 0.Method_Txt1_MouseMove0 (var_D8)
  loc_EC283E:   var_D4.ToolTipText = 
  loc_EC2851: End If
  loc_EC2851: Exit Sub
End Sub

Private Sub Txt1_Validate(Cancel As Boolean) 'F10754
  'Data Table: 5B2118
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  loc_F1067F: var_86 = Cancel
  loc_F1068A: If (var_86 = CInt(0)) Then
  loc_F10698:   Set var_8C = var_90(CInt(0))
  loc_F1069E:   Call 0.Method_Txt1_Validate0 (var_86)
  loc_F106CB:   If (Len(Trim(CVar(var_90))) = 0) Then
  loc_F106E1:     Set var_8C = var_90(CInt(0))
  loc_F106E7:     Call 0.Method_Txt1_Validate0 (CStr(MemVar_1F950EC))
  loc_F106EF:     var_90.Text = 
  loc_F10701:   Else
  loc_F1070B:     Set var_8C = var_90(Cancel)
  loc_F10711:     Call 0.Method_Txt1_Validate0 ()
  loc_F10731:     Set var_EC = var_F0(Cancel)
  loc_F10737:     Call 0.Method_Txt1_Validate0 (Proc_6_33_15125B8(var_90))
  loc_F1073F:     var_F0.Text = 
  loc_F10752:   End If
  loc_F10752: End If
  loc_F10752: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F0FDD8
  'Data Table: 5B2118
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_88 As Frame
  Dim var_A0 As String
  loc_F0FD00: Set var_A4 = ()
  loc_F0FD16: var_C8 = Val(CStr(var_A4.Tag))
  loc_F0FD20: Set var_88 = var_C8(var_A0)
  loc_F0FD37:  = FrameGrpItem.DispID_D.Text
  loc_F0FD4A: Set var_BC = var_C0(CInt(var_C8))
  loc_F0FD50: Call 0.Method_ListView_UnknownEvent_130 (var_A0)
  loc_F0FD58: var_C0.Text = 
  loc_F0FD84: (0).Visible = 
  loc_F0FDA6: var_C8 = Val(CStr(().Tag))
  loc_F0FDB4: Set var_9C = var_A4(CInt(var_C8))
  loc_F0FDBA: Call 0.Method_ListView_UnknownEvent_130 (var_C8)
  loc_F0FDC2: var_A4.SetFocus
  loc_F0FDD6: Exit Sub
End Sub

Public Function global_5972248Get() '5B6944
  BVM60.DLL.GetMemNewObj
End Function

Public Function global_5972248Get() '5B695E
  BVM60.DLL.PutMemNewObj
End Function

Public Function global_5972248Get() '5B6978
  BVM60.DLL.SetMemNewObj
End Function

Public Function global_56Get() '5B6992
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5B69A1
  global_56 = Value
End Sub

Public Function global_60Get() '5B69B0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5B69BF
  global_60 = Value
End Sub

Public Function global_64Get() '5B69CE
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '5B69DD
  global_64 = Value
End Sub

Public Function global_68Get() '5B69EC
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '5B69FB
  global_68 = Value
End Sub

Public Function global_72Get() '5B6A0A
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '5B6A19
  global_72 = Value
End Sub

Public Function global_76Get() '5B6A28
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '5B6A37
  global_76 = Value
End Sub

Public Sub SetOnLineBookingDetail() 'ECBD30
  'Data Table: 5B2118
  Dim var_90 As TextBox
  loc_ECBC9E: Set var_8C = var_90(CInt(&HB))
  loc_ECBCA4: Call 0.Method_SetOnLineBookingDetail0 (oBookingNo)
  loc_ECBCAC: var_90.Text = 
  loc_ECBCD1: Set var_8C = var_90(CInt(&HB))
  loc_ECBCD7: Call 0.Method_SetOnLineBookingDetail0 (oBookingDocId)
  loc_ECBCDF: var_90.Tag = 
  loc_ECBD04: Set var_8C = var_90(CInt(&HC))
  loc_ECBD0A: Call 0.Method_SetOnLineBookingDetail0 (oCustName)
  loc_ECBD12: var_90.Text = 
  loc_ECBD24: Call Proc_258_135_14011F0(var_A0)
  loc_ECBD2C: Exit Sub
  loc_ECBD2D:  = 
End Sub

Public Sub SetOnLineSalingCustDetail() 'F66E64
  'Data Table: 5B2118
  Dim var_90 As TextBox
  Dim var_8C As Frame
  loc_F66D3C: On Error Goto loc_F66E20
  loc_F66D55: Set var_8C = var_90(CInt(0))
  loc_F66D5B: Call 0.Method_SetOnLineSalingCustDetail0 (sPhoneNo)
  loc_F66D63: var_90.Text = 
  loc_F66D88: Set var_8C = var_90(CInt(1))
  loc_F66D8E: Call 0.Method_SetOnLineSalingCustDetail0 (sCustName)
  loc_F66D96: var_90.Text = 
  loc_F66DBB: Set var_8C = var_90(CInt(2))
  loc_F66DC1: Call 0.Method_SetOnLineSalingCustDetail0 (sAddress1)
  loc_F66DC9: var_90.Text = 
  loc_F66DDB: var_88 = sAddress2
  loc_F66DEE: Set var_8C = var_90(CInt(3))
  loc_F66DF4: Call 0.Method_SetOnLineSalingCustDetail0 (var_88)
  loc_F66DFC: var_90.Text = 
  loc_F66E17: (&HFF).Visible = 
  loc_F66E1F: Exit Sub
  loc_F66E20: ' Referenced from: F66D3C
  loc_F66E28: Set var_8C = Err()
  loc_F66E2E: Call 0.Method_arg_2C (var_88)
  loc_F66E4F: MsgBox(CVar(var_88), &H40, "Information", var_E0, var_100)
  loc_F66E62: Exit Sub
  loc_F66E63: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E0E094
  'Data Table: 5B2118
  loc_E0E08D: Set global_412 = vNewValue
  loc_E0E091: Exit Sub
End Sub

Public Property Get ParentForm() 'E0DF74
  'Data Table: 5B2118
  loc_E0DF68: Set var_88 = global_412 
  loc_E0DF6C: ParentForm = 
End Sub

Public Property Let PTableNo(vNewValue) 'E0DE9C
  'Data Table: 5B2118
  loc_E0DE94: global_324 = vNewValue
  loc_E0DE98: Exit Sub
End Sub

Public Property Get PTableNo() 'E0CE04
  'Data Table: 5B2118
  loc_E0CDF8: var_88 = global_324
  loc_E0CDFB: PTableNo = 
  loc_E0CE01: Exit Sub
End Sub

Public Property Let pRestCode(vNewValue) 'E0D944
  'Data Table: 5B2118
  loc_E0D93C: global_328 = vNewValue
  loc_E0D940: Exit Sub
  loc_E0D941: Exit Sub
End Sub

Public Property Get pRestCode() 'E0CCE4
  'Data Table: 5B2118
  loc_E0CCD8: var_88 = global_328
  loc_E0CCDB: pRestCode = 
End Sub

Public Property Get OpenMode() 'E04CD0
  'Data Table: 5B2118
  loc_E04CC9: OpenMode = global_320
End Sub

Public Property Let OpenMode(vNewValue) 'E0139C
  'Data Table: 5B2118
  loc_E01396: global_320 = vNewValue
  loc_E01399: Exit Sub
End Sub

Public Property Let oBookingNo(vNewValue) 'E0CD2C
  'Data Table: 5B2118
  loc_E0CD24: global_332 = vNewValue
  loc_E0CD28: Exit Sub
End Sub

Public Property Get oBookingNo() 'E0C864
  'Data Table: 5B2118
  loc_E0C858: var_88 = global_332
  loc_E0C85B: oBookingNo = 
  loc_E0C861: Set var_8C = 
End Sub

Public Property Let oBookingDocId(vNewValue) 'E0C8F4
  'Data Table: 5B2118
  loc_E0C8EC: global_336 = vNewValue
  loc_E0C8F0: Exit Sub
End Sub

Public Property Get oBookingDocId() 'E0C624
  'Data Table: 5B2118
  loc_E0C618: var_88 = global_336
  loc_E0C61B: oBookingDocId = 
End Sub

Public Property Let oCustName(vNewValue) 'E0CA14
  'Data Table: 5B2118
  loc_E0CA0C: global_340 = vNewValue
  loc_E0CA10: Exit Sub
End Sub

Public Property Get oCustName() 'E0CB34
  'Data Table: 5B2118
  loc_E0CB28: var_88 = global_340
  loc_E0CB2B: oCustName = 
End Sub

Public Property Let sPhoneNo(vNewValue) 'E0CD74
  'Data Table: 5B2118
  loc_E0CD6C: global_348 = vNewValue
  loc_E0CD70: Exit Sub
End Sub

Public Property Get sPhoneNo() 'E0CDBC
  'Data Table: 5B2118
  loc_E0CDB0: var_88 = global_348
  loc_E0CDB3: sPhoneNo = 
End Sub

Public Property Let sCustName(vNewValue) 'E0D284
  'Data Table: 5B2118
  loc_E0D27C: global_352 = vNewValue
  loc_E0D280: Exit Sub
  loc_E0D281: Set var_8C = 
End Sub

Public Property Get sCustName() 'E0CBC4
  'Data Table: 5B2118
  loc_E0CBB8: var_88 = global_352
  loc_E0CBBB: sCustName = 
End Sub

Public Property Let sAddress1(vNewValue) 'E0CC0C
  'Data Table: 5B2118
  loc_E0CC04: global_356 = vNewValue
  loc_E0CC08: Exit Sub
End Sub

Public Property Get sAddress1() 'E0DAF4
  'Data Table: 5B2118
  loc_E0DAE8: var_88 = global_356
  loc_E0DAEB: sAddress1 = 
  loc_E0DAF1: Set var_8C = 
End Sub

Public Property Let sAddress2(vNewValue) 'E0DAAC
  'Data Table: 5B2118
  loc_E0DAA4: global_360 = vNewValue
  loc_E0DAA8: Exit Sub
End Sub

Public Property Get sAddress2() 'E0E364
  'Data Table: 5B2118
  loc_E0E358: var_88 = global_360
  loc_E0E35B: sAddress2 = 
End Sub

Public Property Let PRemark(vNewValue) 'E0E514
  'Data Table: 5B2118
  loc_E0E50C: global_344 = vNewValue
  loc_E0E510: Exit Sub
End Sub

Public Property Get PRemark() 'E0D1AC
  'Data Table: 5B2118
  loc_E0D1A0: var_88 = global_344
  loc_E0D1A3: PRemark = 
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E0EEEC
  'Data Table: 5B2118
  loc_E0EEE4: global_364 = vNewValue
  loc_E0EEE8: Exit Sub
End Sub

Public Property Get TxtKeyBoard() 'E0D47C
  'Data Table: 5B2118
  loc_E0D470: var_88 = global_364
  loc_E0D473: TxtKeyBoard = 
End Sub

Public Sub FindMove(mDocId) 'E77134
  'Data Table: 5B2118
  Dim Me As Recordset15
  loc_E770DE: Me.MoveFirst
  loc_E77108: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E77128: If (Me.EOF = 0) Then
  loc_E7712B:   Call Proc_258_145_1BA3A9C(var_9C)
  loc_E77130: End If
  loc_E77130: Exit Sub
End Sub

Public Sub OutLetPaymentAdjustment(OpenMode, OpenType, AdvType, IdNo, DocID, PersonCode, TableOrRoomNo, RoomCat, Roomtype, BillAmount, RestCode, mSettlementmode, CardType, RegId) 'FAE940
  'Data Table: 5B2118
  Dim var_C4 As Integer
  Dim unk_5B2155 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_9C As Variant
  loc_FAE7C6: var_C4 = 0
  loc_FAE7F3: unk_5B2155.Execute "Select Count(*) From Depart Where Code='" & RestCode & "' And RestType='Production'", var_AC, -1
  loc_FAE7FB: var_B0 = var_B0.Fields
  loc_FAE803: var_C4 = var_B4.Item(var_B4)
  loc_FAE80B: var_C8 = var_C8.Value
  loc_FAE832: If (var_D8 > 0) Then
  loc_FAE84E:   MsgBox("Operation is not allowed for Perticular Department", &H10, var_D8, var_F8, var_118)
  loc_FAE85E:   Exit Sub
  loc_FAE85F: End If
  loc_FAE863: Set var_11C = New rsTouchScreenAdvanceDepDialog
  loc_FAE871: var_11C.OpenMode = CVar(OpenMode)
  loc_FAE880: var_11C.OpenType = CVar(OpenType)
  loc_FAE88E: var_11C.AdvType = CVar(AdvType)
  loc_FAE89C: var_11C.IdNo = CVar(IdNo)
  loc_FAE8AA: var_11C.pDocId = CVar(DocID)
  loc_FAE8B8: var_11C.PersonCode = CVar(PersonCode)
  loc_FAE8C6: var_11C.PTableOrRoomNo = CVar(TableOrRoomNo)
  loc_FAE8D4: var_11C.PRoomtype = CVar(Roomtype)
  loc_FAE8E2: var_11C.PRoomCat = CVar(RoomCat)
  loc_FAE8F1: var_11C.PBillAmt = CVar(BillAmount)
  loc_FAE8FF: var_11C.LocalRestCode = CVar(RestCode)
  loc_FAE90D: var_11C.PSettlementMode = CVar(mSettlementmode)
  loc_FAE91B: var_11C.PCardType = CVar(CardType)
  loc_FAE929: var_11C.PCardCode = CVar(OutLetPaymentAdjustment0)
  loc_FAE92D: var_9C = 1
  loc_FAE936: Call var_11C.Show
  loc_FAE93C: Exit Sub
  loc_FAE93D: var_9C = var_D8
End Sub

Public Sub SEARCHBACK(MyValue) 'E968A0
  'Data Table: 5B2118
  Dim Me As Recordset15
  loc_E9682E: On Error Goto loc_E96897
  loc_E96837: Me.MoveFirst
  loc_E96861: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96889: Proc_5_0_1107AD0(&HFF, Me, global_116)
  loc_E96891: Call Proc_258_145_1BA3A9C(0)
  loc_E96896: Exit Sub
  loc_E96897: ' Referenced from: E9682E
  loc_E96897: Proc_6_60_E63754(var_A0)
  loc_E9689C: Exit Sub
End Sub

Public Sub Proc_258_131_E85DCC(arg_C) 'E85DCC
  'Data Table: 5B2118
  loc_E85D6A: For var_90 = 1 To CInt(Len(arg_C)): var_88 = var_90 'Integer
  loc_E85DAF:   If Not(((Asc(CStr(Mid(arg_C, CLng(var_88), 1))) >= &H30) And (Asc(CStr(Mid(arg_C, CLng(var_88), 1))) <= &H39))) Then
  loc_E85DB2:     GoTo loc_E85DBD
  loc_E85DB5:   End If
  loc_E85DB8: Next var_90 'Integer
  loc_E85DBD: ' Referenced from: E85DB2
  loc_E85DC3: Proc_258_131_E85DCC = var_88
End Sub

Public Sub Proc_258_132_1234D14(arg_C) '1234D14
  'Data Table: 5B2118
  Dim var_D0 As Variant
  Dim var_92 As Integer
  Dim var_D4 As Label
  Dim var_D8 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_174 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_310 As Variant
  Dim var_B0 As Variant
  Dim var_150 As Variant
  Dim var_21C As Variant
  loc_1234875: var_D0 = ("echo" + Space(1))
  loc_123487A: var_8C = CStr(var_D0)
  loc_123488E: var_90 = " > " & global_416
  loc_1234893: var_92 = &H16
  loc_1234899: var_98 = "** WELCOME **"
  loc_12348A9:  = var_92(var_D8).Caption
  loc_12348B1: var_9C = var_D8
  loc_12348BD: If (arg_C = &HFF) Then
  loc_12348C2:   Close 1
  loc_12348CB:   Open "C:\reptmp\Display.BAT" For Output As 1 Len = &HFF
  loc_12348D4:   Print 1, "@echo off"
  loc_12348E9:   Print 1, "mode " & global_420
  loc_1234901:   If ((CLng(var_92) - Len(var_98)) >= 2) Then
  loc_1234918:     var_B0 = Space(CLng(Int((CDbl((CLng(var_92) - Len(var_98))) / CDbl(2)))))
  loc_1234926:     var_D0 = (CVar(var_8C) + Space(1))
  loc_1234930:     var_F8 = (var_D0 + CVar(var_98))
  loc_123493A:     var_118 = (var_F8 + CVar(var_90))
  loc_1234940:     Print 1, var_118
  loc_1234954:   Else
  loc_1234967:     Print 1, var_8C & var_98 & var_90
  loc_1234974:   End If
  loc_1234983:   If ((CLng(var_92) - Len(var_9C)) >= 2) Then
  loc_123499A:     var_B0 = Space(CLng(Int((CDbl((CLng(var_92) - Len(var_9C))) / CDbl(2)))))
  loc_12349A8:     var_D0 = (CVar(var_8C) + Space(1))
  loc_12349B2:     var_F8 = (var_D0 + CVar(var_9C))
  loc_12349BC:     var_118 = (var_F8 + CVar(var_90))
  loc_12349C2:     Print 1, var_118
  loc_12349D6:   Else
  loc_12349E9:     Print 1, var_8C & var_9C & var_90
  loc_12349F6:   End If
  loc_12349F8:   Close 1
  loc_12349FD: Else
  loc_12349FF:   Close 1
  loc_1234A08:   Open "C:\reptmp\Display.BAT" For Output As 1 Len = &HFF
  loc_1234A11:   Print 1, "@echo off"
  loc_1234A26:   Print 1, "mode " & global_420
  loc_1234A33:   Set var_D4 = ()
  loc_1234A53:   Set var_130 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_1234A8C:   If CBool(Trim(CVar(CStr(FrameGrpItem.DispID_41))) <> vbNullString) Then
  loc_1234A93:     Set var_D4 = ()
  loc_1234AB3:     Set var_130 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(4)))
  loc_1234AD3:     Set var_178 = ()
  loc_1234AF3:     Set var_1BC = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(7)))
  loc_1234B33:     Set var_264 = 1(1)
  loc_1234B53:     Set var_2B8 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(8)))
  loc_1234B94:     var_174 = (CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(FrameGrpItem.DispID_41)))))) + Space(1))
  loc_1234BAD:     var_240 = (var_174 + CVar(Proc_6_52_EAE084(CStr(Format(Trim(CVar(CStr(FrameGrpItem.DispID_41))), "0")), 3)))
  loc_1234BC1:     var_260 = (var_240 + Space(1))
  loc_1234BDA:     var_310 = (var_260 + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(FrameGrpItem.DispID_41)))), 6)))
  loc_1234BDF:     var_A0 = CStr(var_310)
  loc_1234C2B:   End If
  loc_1234CC4:   var_150 = (CVar(var_8C & var_A0 & " Net Amt:") + Format(CVar(Abs(global_424)), "0.00"))
  loc_1234CCB:   var_174 = (Space(1) + Space(1))
  loc_1234CD2:   var_21C = (var_174 + IIf((global_424 > CDbl(0)), "Pay", IIf((global_424 < CDbl(0)), "Refund", vbNullString)))
  loc_1234CDC:   var_230 = (Format(Trim(CVar(CStr(FrameGrpItem.DispID_41))), "0") + CVar(var_90))
  loc_1234CE2:   Print 1, CVar(Proc_6_52_EAE084(CStr(Format(Trim(CVar(CStr(FrameGrpItem.DispID_41))), "0")), 3))
  loc_1234D10:   Close 1
  loc_1234D12: End If
  loc_1234D12: Exit Sub
End Sub

Public Sub Proc_258_133_122007C
  'Data Table: 5B2118
  Dim var_88 As Frame
  loc_121FB7C: Set var_88 = Me.TopCtrl1
  loc_121FB82: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030019()
  loc_121FB94: Set var_BC = (CBool())
  loc_121FB9A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FBB1: Set var_88 = Me.TopCtrl1
  loc_121FBB7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030016()
  loc_121FBC9: Set var_BC = (CBool())
  loc_121FBCF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FBE6: Set var_88 = Me.TopCtrl1
  loc_121FBEC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030017()
  loc_121FBFE: Set var_BC = (CBool())
  loc_121FC04: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FC1B: Set var_88 = Me.TopCtrl1
  loc_121FC21: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030014()
  loc_121FC33: Set var_BC = (CBool())
  loc_121FC39: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FC50: Set var_88 = Me.TopCtrl1
  loc_121FC56: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000F()
  loc_121FC68: Set var_BC = (CBool())
  loc_121FC6E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FC85: Set var_88 = Me.TopCtrl1
  loc_121FC8B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000D()
  loc_121FC9D: Set var_BC = (CBool())
  loc_121FCA3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FCBA: Set var_88 = Me.TopCtrl1
  loc_121FCC0: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030018()
  loc_121FCD2: Set var_BC = (CBool())
  loc_121FCD8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FCF3: Set var_88 = (True)
  loc_121FCF9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FD0D: Me.FrameGrpItem.Enabled = True
  loc_121FD19: Set var_88 = Me.TopCtrl1
  loc_121FD1F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_121FD38: If (CStr() = "Add") Then
  loc_121FD43:   Set var_88 = (True)
  loc_121FD49:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FD60:   Set var_88 = var_BC(CInt(2))
  loc_121FD66:   Call 0.Method_Proc_258_133_122007C0 (True)
  loc_121FD6E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FD89:   Set var_88 = var_BC(CInt(4))
  loc_121FD8F:   Call 0.Method_Proc_258_133_122007C0 (True)
  loc_121FD97:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FDB2:   Set var_88 = var_BC(CInt(3))
  loc_121FDB8:   Call 0.Method_Proc_258_133_122007C0 (True)
  loc_121FDC0:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FDD4:   Set var_88 = (True)
  loc_121FDDA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FDEA:   Set var_88 = (True)
  loc_121FDF0:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FE04:   Me.FrameGrpItem.Enabled = True
  loc_121FE18:   (&HFF).Enabled = 
  loc_121FE23: Else
  loc_121FE27:   Set var_88 = Me.TopCtrl1
  loc_121FE2D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_121FE46:   If (CStr() = "Edit") Then
  loc_121FE51:     Set var_88 = (True)
  loc_121FE57:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FE6E:     Set var_88 = var_BC(CInt(2))
  loc_121FE74:     Call 0.Method_Proc_258_133_122007C0 (True)
  loc_121FE7C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FE97:     Set var_88 = var_BC(CInt(4))
  loc_121FE9D:     Call 0.Method_Proc_258_133_122007C0 (True)
  loc_121FEA5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FEC0:     Set var_88 = var_BC(CInt(3))
  loc_121FEC6:     Call 0.Method_Proc_258_133_122007C0 (True)
  loc_121FECE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FEE2:     Set var_88 = (True)
  loc_121FEE8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FEF8:     Set var_88 = (True)
  loc_121FEFE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FF09:   Else
  loc_121FF0D:     Set var_88 = Me.TopCtrl1
  loc_121FF13:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_121FF2C:     If (CStr() = "Browse") Then
  loc_121FF3A:       If (global_240 <> "Y") Then
  loc_121FF45:         Set var_88 = (True)
  loc_121FF4B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FF56:       Else
  loc_121FF5F:         Set var_88 = (False)
  loc_121FF65:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FF6D:       End If
  loc_121FF7D:       Set var_88 = var_BC(CInt(2))
  loc_121FF83:       Call 0.Method_Proc_258_133_122007C0 (False)
  loc_121FF8B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FFA7:       Set var_88 = var_BC(CInt(4))
  loc_121FFAD:       Call 0.Method_Proc_258_133_122007C0 (False)
  loc_121FFB5:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FFD1:       Set var_88 = var_BC(CInt(3))
  loc_121FFD7:       Call 0.Method_Proc_258_133_122007C0 (False)
  loc_121FFDF:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121FFF4:       Set var_88 = (False)
  loc_121FFFA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_122000B:       Set var_88 = (False)
  loc_1220011:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_122002C:       If (PRemark = "Unsettled") Then
  loc_1220038:         Set var_88 = (False)
  loc_122003E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_1220046:       End If
  loc_1220052:       Me.FrameGrpItem.Enabled = False
  loc_1220066:       (0).Enabled = 
  loc_1220073:       Call CmdCatType_UnknownEvent_9()
  loc_1220078:     End If
  loc_1220078:   End If
  loc_1220078: End If
  loc_1220078: Exit Sub
End Sub

Public Sub Proc_258_134_1307FFC
  'Data Table: 5B2118
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_FC As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_124 As Variant
  Dim var_148 As Variant
  Dim var_114 As Variant
  Dim var_180 As String
  Dim Me As Recordset15
  loc_13078E6: var_D4 = False
  loc_13078FE: ).Visible = 0
  loc_1307905: var_D4 = False
  loc_130791D: ).Visible = 0
  loc_1307935: For var_F8 = 1 To CInt(Me.UBound): var_9E = var_F8 'Integer
  loc_130793B:   var_C4 = False
  loc_1307954:   ).Visible = var_9E
  loc_130797B:   Me..FrameGrpItem.Unload )
  loc_1307989: Next var_F8 'Integer
  loc_130799F: For var_100 = 1 To CInt(Me.UBound): var_9E = var_100 'Integer
  loc_13079A5:   var_C4 = False
  loc_13079BE:   ).Visible = var_9E
  loc_13079E5:   Me..FrameGrpItem.Unload )
  loc_13079F3: Next var_100 'Integer
  loc_1307A06: var_F4 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_1307A0D: Proc_6_39_E7D3A0(var_114)
  loc_1307A24: If (var_114 > 0) Then
  loc_1307A2D:   var_96 = (arg_18 + 1)
  loc_1307A32:   var_98 = 0
  loc_1307A37:   var_9A = 0
  loc_1307A54:   Proc_6_39_E7D3A0(var_114, CVar(Me.Recordset15.RecordCount), var_9C, 1)
  loc_1307A64:   For var_128 = var_98 To CInt(var_114): var_9A = var_128 'Integer
  loc_1307A8A:     Me..FrameGrpItem.Load )
  loc_1307AA9:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_1307AB2:       var_B4 = CVar((var_9C - 1)) 'Integer
  loc_1307ACF:       var_D4 = CVar((var_9C - 1)) 'Integer
  loc_1307AE6:       var_148 = (var_D4 + ).height)
  loc_1307AFF:       ).top = var_9C
  loc_1307B18:       var_B4 = CVar((var_9C - 1)) 'Integer
  loc_1307B29:       var_114 = ).left
  loc_1307B44:       ).left = var_9C
  loc_1307B51:       var_C4 = True
  loc_1307B69:       ).Visible = var_9C
  loc_1307B73:       var_B4 = "Name"
  loc_1307B98:       var_114 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_B4)), var_C4, var_114, var_B4, var_148, ).top)) 'String
  loc_1307BB0:       ).CAPTION = var_9C
  loc_1307BC3:       var_B4 = "Code"
  loc_1307C00:       ).Tag = var_9C
  loc_1307C38:       var_180 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PicPath")), CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PicPath")), var_114, "PicPath", var_9C)), var_98)
  loc_1307C49:       If (var_180 <> vbNullString) Then
  loc_1307C83:         Call 0.Method_Proc_258_134_1307FFC4 (CStr(Me.Recordset15.Fields.Item("PicPath").Value), var_182)
  loc_1307C98:         If var_182 Then
  loc_1307CBD:           var_FC = Me.Recordset15.Fields
  loc_1307CCD:           var_F4 = CVar(var_FC.Item("PicPath")) 'Address
  loc_1307CE0:           Me.Global.LoadPicture CVar(Proc_6_38_E69628(var_F4, var_C4, var_D4, var_E4)), var_158, var_188, var_96, var_F4
  loc_1307CE8:           var_124 = CVar(var_188) 'Address
  loc_1307D01:           ).Picture = var_9C
  loc_1307D16:         Else
  loc_1307D34:           Me.Global.LoadPicture var_B4, var_C4, var_D4, var_E4, var_158
  loc_1307D3C:           var_F4 = CVar(var_FC) 'Address
  loc_1307D55:           ).Picture = var_9C
  loc_1307D60:         End If
  loc_1307D60:         GoTo loc_1307D63
  loc_1307D63:         ' Referenced from: 1307D60
  loc_1307D63:       End If
  loc_1307D6E:       If (var_9C = (arg_18 * arg_10)) Then
  loc_1307D83:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_1307D87:         Exit For
  loc_1307D8A:       End If
  loc_1307D8D:     Else
  loc_1307D98:       If ((var_9C Mod var_96) = var_98) Then
  loc_1307DA2:         var_B4 = CVar((var_9C - arg_18)) 'Integer
  loc_1307DB3:         var_124 = ).left
  loc_1307DC0:         var_D4 = CVar((var_9C - arg_18)) 'Integer
  loc_1307DD7:         var_148 = (var_D4 + ).width)
  loc_1307DF0:         ).left = var_9C
  loc_1307E0A:         var_B4 = CVar((var_9C - arg_18)) 'Integer
  loc_1307E1B:         var_114 = ).top
  loc_1307E36:         ).top = var_9C
  loc_1307E5B:         ).Visible = var_9C
  loc_1307E65:         var_B4 = "Name"
  loc_1307E8A:         var_114 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_B4)), True, var_114, var_B4, var_148)) 'String
  loc_1307EA2:         ).CAPTION = var_9C
  loc_1307EB5:         var_B4 = "Code"
  loc_1307EDA:         var_114 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_B4)), var_114, var_124, var_B4)) 'String
  loc_1307EF2:         ).Tag = var_9C
  loc_1307F08:         var_9A = (var_9A + 1)
  loc_1307F12:         var_98 = (var_96 - var_9A)
  loc_1307F15:       End If
  loc_1307F15:     End If
  loc_1307F18:     Me.MoveNext
  loc_1307F31:     If (Me.AbsolutePosition = -3) Then
  loc_1307F34:       GoTo loc_1307F3F
  loc_1307F37:     End If
  loc_1307F3A:   Next var_128 'Integer
  loc_1307F3F:   ' Referenced from: 1307F34
  loc_1307F3F:   ' Referenced from: 1307D87
  loc_1307F3F: End If
  loc_1307F66: Proc_6_39_E7D3A0(var_114)
  loc_1307F85: Call Proc_258_143_E62948((), CInt(Me.Recordset15.AbsolutePosition), CInt(var_114))
  loc_1307FBA: var_F4 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_1307FC1: Proc_6_39_E7D3A0(var_114)
  loc_1307FE0: Call Proc_258_142_E54EF0(CVar(Me.Recordset15.RecordCount)(var_124), CInt(Me.Recordset15.AbsolutePosition), CInt(var_114))
  loc_1307FF5: Proc_258_134_1307FFC = var_124
End Sub

Public Sub Proc_258_135_14011F0
  'Data Table: 5B2118
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_CC As String
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim var_128 As Variant
  Dim var_C4 As TextBox
  Dim Proc_258_135_14011F02 As Variant
  loc_14007C6: Set var_9C = ()
  loc_14007CC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_44
  loc_14007D7: Call Proc_258_136_143EE54()
  loc_14007E9: Set var_9C = (2)
  loc_1400801: Set global_132 = New 
  loc_1400816: Set var_9C = var_C4(CInt(&HB))
  loc_140081C: Call 0.Method_Proc_258_135_14011F00 (var_C8)
  loc_1400824: FrameGrpItem.DispID_4 = Me.TextBox.Text
  loc_1400847: var_C0 = "SELECT  PackingOrderDetail.Docid,PackingOrderDetail.SNo,ItemMast.Name, ItemMast.Unit, ItemMast.DispCode, PackingOrderDetail.Qty, PackingOrderDetail.Rate, PackingOrderDetail.Amount, PackingOrder.Vno, " & "PackingOrder.CustName, Depart.Code, ItemCatMast.RoundOff, ItemCatMast.TaxStru,ItemCatMast.CatType, ItemMast.DiscApp, ItemMast.RateEdit, ItemMast.RateIncTax, "
  loc_140084E: var_CC = var_C0 & "ItemMast.SChrgApp , ItemMast.Kitchen, ItemMast.Code as ItemCode, Depart.ShortName from (((ItemMast INNER JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code ) INNER JOIN PackingOrderDetail ON ItemMast.Code = PackingOrderDetail.ItemCode And ItemMast.RestCode=PackingOrderDetail.ItemRestCode) INNER JOIN PackingOrder  ON PackingOrderDetail.DocID = PackingOrder.DocID  ) INNER JOIN Depart ON ItemCatMast.RestCode = Depart.Code  where packingorderdetail.Vno="
  loc_1400877: Me.Open CVar(var_CC & var_C8 & " And PackingOrder.RestCode='" & global_76 & "'"), CVar(MemVar_1F95044), 0
  loc_14008A9: If (Me.EOF <> &HFF) Then
  loc_14008C3:   For var_F4 = 1 To CInt(Me.RecordCount): var_96 = var_F4 'Integer
  loc_14008CD:     Set var_F8 = 1(1)
  loc_14008E2:     var_AC = CVar((CLng(FrameGrpItem.DispID_4) + 1)) 'Long
  loc_14008F6:     var_AC = CVar(CLng(var_96)) 'Long
  loc_1400908:     var_E8 = CVar(CStr(var_96)) 'String
  loc_140090F:     LateIdCallSt
  loc_1400956:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(var_96)), var_F8, CVar(Me.Fields.Item("Code")))) 'String
  loc_140095D:     LateIdCallSt
  loc_14009AB:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ShortName")), CVar(CLng(2)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_14009B2:     LateIdCallSt
  loc_1400A00:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_1400A07:     LateIdCallSt
  loc_1400A55:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")), CVar(CLng(4)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_1400A5C:     LateIdCallSt
  loc_1400AAA:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_1400AB1:     LateIdCallSt
  loc_1400AEC:     Proc_6_39_E7D3A0(var_138, CVar(Me.Fields.Item("qty")), var_F8, var_138, CVar(CLng(0)))
  loc_1400AF5:     var_108 = CVar(CLng(var_96)) 'Long
  loc_1400AFD:     var_128 = CVar(CLng(7)) 'Long
  loc_1400B2D:     LateIdCallSt
  loc_1400B6E:     Proc_6_39_E7D3A0(var_138, CVar(Me.Fields.Item("Rate")), var_F8, CVar(CStr(Format(var_138, "0.000"))), 1, 1)
  loc_1400B77:     var_108 = CVar(CLng(var_96)) 'Long
  loc_1400B7F:     var_128 = CVar(CLng(8)) 'Long
  loc_1400BAF:     LateIdCallSt
  loc_1400C01:     Proc_6_39_E7D3A0(var_138, CVar(Me.Fields.Item("Rate")), CVar(CLng(9)), CVar(CLng(var_96)), var_F8, CVar(CStr(Format(var_138, "0.00"))), 1)
  loc_1400C11:     LateIdCallSt
  loc_1400C5F:     Proc_6_39_E7D3A0(var_138, CVar(Me.Fields.Item("Amount")), CVar(CLng(&HA)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)), 1)
  loc_1400C6F:     LateIdCallSt
  loc_1400CBF:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCode")), CVar(CLng(&HB)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)), var_128)) 'String
  loc_1400CC6:     LateIdCallSt
  loc_1400D14:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SNo")), CVar(CLng(&HC)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_1400D1B:     LateIdCallSt
  loc_1400D67:     Proc_6_39_E7D3A0(var_138, CVar(Me.Fields.Item("DocID")), CVar(CLng(&HD)), CVar(CLng(var_96)), var_F8, var_138)
  loc_1400D77:     LateIdCallSt
  loc_1400DC7:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)))) 'String
  loc_1400DCE:     LateIdCallSt
  loc_1400E0B:     var_C4 = Me.Fields.Item("RoundOff")
  loc_1400E23:     LateIdCallSt
  loc_1400E56:     var_E8 = CVar(Proc_6_38_E69628(global_188, CVar(CLng(&H15)), CVar(CLng(var_96)), var_F8, CVar(Proc_6_38_E69628(CVar(var_C4), CVar(CLng(&H14)), CVar(CLng(var_96)), var_F8, var_138)))) 'String
  loc_1400E5D:     LateIdCallSt
  loc_1400E90:     LateIdCallSt
  loc_1400EBA:     Set var_9C = var_C4(CInt(3))
  loc_1400EC0:     Call 0.Method_Proc_258_135_14011F00 (var_C0, CVar(CLng(&H17)), CVar(CLng(var_96)), var_F8, CVar(Proc_6_38_E69628(global_192, CVar(CLng(&H16)), CVar(CLng(var_96)), var_F8, var_E8)))
  loc_1400ED8:     var_138 = CVar(Proc_6_38_E69628(CVar(var_C0), var_128, var_C4.Tag)) 'String
  loc_1400EDF:     LateIdCallSt
  loc_1400F31:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_96)), var_F8)) 'String
  loc_1400F38:     LateIdCallSt
  loc_1400F86:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_96)), var_F8)) 'String
  loc_1400F8D:     LateIdCallSt
  loc_1400FDB:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_1400FE2:     LateIdCallSt
  loc_1401030:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_1401037:     LateIdCallSt
  loc_1401083:     Proc_6_39_E7D3A0(var_138, CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_96)), var_F8)
  loc_1401093:     LateIdCallSt
  loc_14010E3:     var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)))) 'String
  loc_14010EA:     LateIdCallSt
  loc_1401100:     var_AC = CVar(CLng(var_96)) 'Long
  loc_1401108:     var_108 = CVar(CLng(&H1E)) 'Long
  loc_140110D:     var_128 = vbNullString
  loc_1401116:     LateIdCallSt
  loc_1401124:     Me.MoveNext
  loc_140112B:     Set var_F8 = Nothing 
  loc_1401132:   Next var_F4 'Integer
  loc_140113B:   Set var_9C = ()
  loc_1401150:   var_AC = CVar((CLng(FrameGrpItem.DispID_4) - 1)) 'Long
  loc_1401159:   Set var_C4 = (var_AC)
  loc_1401172:   Set var_9C = (FrameGrpItem.DispID_4)
  loc_1401187:   var_AC = CVar((CLng(FrameGrpItem.DispID_4) - 1)) 'Long
  loc_1401198:   Set var_C4 = var_AC(CVar(CLng(&HB)))
  loc_14011C2:   If (CStr(FrameGrpItem.DispID_41) <> vbNullString) Then
  loc_14011D5:     Proc_258_135_14011F02 = (vbNullString).Name
  loc_14011E0:   End If
  loc_14011E5:   Call Proc_258_158_19037C8(&H32)
  loc_14011EA: End If
  loc_14011EA: Proc_258_135_14011F0 = Proc_258_135_14011F02
End Sub

Public Sub Proc_258_136_143EE54
  'Data Table: 5B2118
  Dim var_94 As Variant
  Dim var_A8 As Frame
  Dim var_AC As TextBox
  Dim var_B4 As Frame
  Dim var_B8 As TextBox
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_143E34E: (CVar(CDbl(&HF))).Left = 
  loc_143E369: (CVar(CDbl(1425))).Top = 
  loc_143E384: (CVar(CDbl(5950))).Height = 
  loc_143E39F: (CVar(CDbl(7200))).Width = 
  loc_143E3BA: (CVar(CDbl(3000))).Left = 
  loc_143E3D5: (CVar(CDbl(1000))).Top = 
  loc_143E3EB: Set var_A8 = var_AC(CInt(3))
  loc_143E3F1: Call 0.Method_Proc_258_136_143EE540 (var_B0)
  loc_143E3F9:  = var_AC.Left
  loc_143E410: (CVar(var_B0)).Left = 
  loc_143E42C: Set var_B4 = var_B8(CInt(3))
  loc_143E432: Call 0.Method_Proc_258_136_143EE540 (var_BC)
  loc_143E43A:  = var_B8.Height
  loc_143E44D: Set var_A8 = var_AC(CInt(3))
  loc_143E453: Call 0.Method_Proc_258_136_143EE540 (var_B0)
  loc_143E45B:  = var_AC.Top
  loc_143E46B: var_94 = CVar(((var_B0 + var_BC) + CDbl(&H1E))) 'Single
  loc_143E47A: (CVar(var_B0)).Top = 
  loc_143E49A: Set var_A8 = var_AC(CInt(&HD))
  loc_143E4A0: Call 0.Method_Proc_258_136_143EE540 (var_B0)
  loc_143E4A8:  = var_AC.Left
  loc_143E4BF: (CVar(var_B0)).Left = 
  loc_143E4DB: Set var_B4 = var_B8(CInt(&HD))
  loc_143E4E1: Call 0.Method_Proc_258_136_143EE540 (var_BC)
  loc_143E4E9:  = var_B8.Height
  loc_143E4FC: Set var_A8 = var_AC(CInt(&HD))
  loc_143E502: Call 0.Method_Proc_258_136_143EE540 (var_B0)
  loc_143E50A:  = var_AC.Top
  loc_143E51A: var_94 = CVar(((var_B0 + var_BC) + CDbl(&H1E))) 'Single
  loc_143E529: (CVar(var_B0)).Top = 
  loc_143E54E: (CVar(CDbl(3000))).Left = 
  loc_143E569: (CVar(CDbl(1000))).Top = 
  loc_143E580: Me.FrameQty.Top = CDbl(7375)
  loc_143E597: Me.FrameQty.Left = CDbl(200)
  loc_143E5AE: Set var_C4 = (&H258)
  loc_143E5C5: global_152 = CStr(CLng(FrameQty.DispID_FFFFFE0B))
  loc_143E5CF: var_94 = &H1F
  loc_143E5E3: var_94 = CVar(CLng(0)) 'Long
  loc_143E5E8: var_E8 = &H13B
  loc_143E5F4: LateIdCallSt
  loc_143E5FC: var_94 = 0
  loc_143E608: var_E8 = CVar(CLng(&HC)) 'Long
  loc_143E60D: var_108 = "KSNo"
  loc_143E616: LateIdCallSt
  loc_143E621: var_94 = CVar(CLng(&HC)) 'Long
  loc_143E626: var_E8 = 0
  loc_143E632: LateIdCallSt
  loc_143E63A: var_94 = 0
  loc_143E646: var_E8 = CVar(CLng(1)) 'Long
  loc_143E64B: var_108 = "Rest"
  loc_143E654: LateIdCallSt
  loc_143E65F: var_94 = CVar(CLng(1)) 'Long
  loc_143E66A: var_E8 = CVar(CInt(1)) 'Integer
  loc_143E671: LateIdCallSt
  loc_143E67C: var_94 = CVar(CLng(1)) 'Long
  loc_143E681: var_E8 = 0
  loc_143E68D: LateIdCallSt
  loc_143E695: var_94 = 0
  loc_143E6A1: var_E8 = CVar(CLng(2)) 'Long
  loc_143E6A6: var_108 = "Rest."
  loc_143E6AF: LateIdCallSt
  loc_143E6BA: var_94 = CVar(CLng(2)) 'Long
  loc_143E6C5: var_E8 = CVar(CInt(1)) 'Integer
  loc_143E6CC: LateIdCallSt
  loc_143E6D7: var_94 = CVar(CLng(2)) 'Long
  loc_143E6DC: var_E8 = 0
  loc_143E6E8: LateIdCallSt
  loc_143E6F0: var_94 = 0
  loc_143E6FC: var_E8 = CVar(CLng(3)) 'Long
  loc_143E701: var_108 = "Item Code"
  loc_143E70A: LateIdCallSt
  loc_143E715: var_94 = CVar(CLng(3)) 'Long
  loc_143E720: var_E8 = CVar(CInt(1)) 'Integer
  loc_143E727: LateIdCallSt
  loc_143E732: var_94 = CVar(CLng(3)) 'Long
  loc_143E737: var_E8 = 0
  loc_143E743: LateIdCallSt
  loc_143E74B: var_94 = 0
  loc_143E757: var_E8 = CVar(CLng(4)) 'Long
  loc_143E75C: var_108 = "Item Name"
  loc_143E765: LateIdCallSt
  loc_143E770: var_94 = CVar(CLng(4)) 'Long
  loc_143E77B: var_E8 = CVar(CInt(1)) 'Integer
  loc_143E782: LateIdCallSt
  loc_143E78D: var_94 = CVar(CLng(4)) 'Long
  loc_143E792: var_E8 = &H960
  loc_143E79E: LateIdCallSt
  loc_143E7A6: var_94 = 0
  loc_143E7B2: var_E8 = CVar(CLng(5)) 'Long
  loc_143E7B7: var_108 = "KOT No."
  loc_143E7C0: LateIdCallSt
  loc_143E7CB: var_94 = CVar(CLng(5)) 'Long
  loc_143E7D6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E7DD: LateIdCallSt
  loc_143E7E8: var_94 = CVar(CLng(5)) 'Long
  loc_143E7F3: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E7FA: LateIdCallSt
  loc_143E805: var_94 = CVar(CLng(5)) 'Long
  loc_143E80A: var_E8 = 0
  loc_143E816: LateIdCallSt
  loc_143E81E: var_94 = 0
  loc_143E82A: var_E8 = CVar(CLng(6)) 'Long
  loc_143E82F: var_108 = "Unit"
  loc_143E838: LateIdCallSt
  loc_143E843: var_94 = CVar(CLng(6)) 'Long
  loc_143E84E: var_E8 = CVar(CInt(1)) 'Integer
  loc_143E855: LateIdCallSt
  loc_143E860: var_94 = CVar(CLng(6)) 'Long
  loc_143E865: var_E8 = &H320
  loc_143E871: LateIdCallSt
  loc_143E879: var_94 = 0
  loc_143E885: var_E8 = CVar(CLng(7)) 'Long
  loc_143E88A: var_108 = "Qty"
  loc_143E893: LateIdCallSt
  loc_143E89E: var_94 = CVar(CLng(7)) 'Long
  loc_143E8A9: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E8B0: LateIdCallSt
  loc_143E8BB: var_94 = CVar(CLng(7)) 'Long
  loc_143E8C6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E8CD: LateIdCallSt
  loc_143E8D8: var_94 = CVar(CLng(7)) 'Long
  loc_143E8DD: var_E8 = &H320
  loc_143E8E9: LateIdCallSt
  loc_143E8F1: var_94 = 0
  loc_143E8FD: var_E8 = CVar(CLng(8)) 'Long
  loc_143E902: var_108 = "Rate"
  loc_143E90B: LateIdCallSt
  loc_143E916: var_94 = CVar(CLng(8)) 'Long
  loc_143E921: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E928: LateIdCallSt
  loc_143E933: var_94 = CVar(CLng(8)) 'Long
  loc_143E93E: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E945: LateIdCallSt
  loc_143E950: var_94 = CVar(CLng(8)) 'Long
  loc_143E955: var_E8 = &H320
  loc_143E961: LateIdCallSt
  loc_143E969: var_94 = 0
  loc_143E975: var_E8 = CVar(CLng(9)) 'Long
  loc_143E97A: var_108 = "Rate1"
  loc_143E983: LateIdCallSt
  loc_143E98E: var_94 = CVar(CLng(9)) 'Long
  loc_143E999: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E9A0: LateIdCallSt
  loc_143E9AB: var_94 = CVar(CLng(9)) 'Long
  loc_143E9B6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143E9BD: LateIdCallSt
  loc_143E9C8: var_94 = CVar(CLng(9)) 'Long
  loc_143E9CD: var_E8 = 0
  loc_143E9D9: LateIdCallSt
  loc_143E9E1: var_94 = 0
  loc_143E9ED: var_E8 = CVar(CLng(&HA)) 'Long
  loc_143E9F2: var_108 = "Amount"
  loc_143E9FB: LateIdCallSt
  loc_143EA06: var_94 = CVar(CLng(&HA)) 'Long
  loc_143EA11: var_E8 = CVar(CInt(7)) 'Integer
  loc_143EA18: LateIdCallSt
  loc_143EA23: var_94 = CVar(CLng(&HA)) 'Long
  loc_143EA2E: var_E8 = CVar(CInt(7)) 'Integer
  loc_143EA35: LateIdCallSt
  loc_143EA40: var_94 = CVar(CLng(&HA)) 'Long
  loc_143EA45: var_E8 = &H3E8
  loc_143EA51: LateIdCallSt
  loc_143EA59: var_94 = 0
  loc_143EA65: var_E8 = CVar(CLng(&HF)) 'Long
  loc_143EA6A: var_108 = "Disc"
  loc_143EA73: LateIdCallSt
  loc_143EA7E: var_94 = CVar(CLng(&HF)) 'Long
  loc_143EA89: var_E8 = CVar(CInt(7)) 'Integer
  loc_143EA90: LateIdCallSt
  loc_143EA9B: var_94 = CVar(CLng(&HF)) 'Long
  loc_143EAA6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143EAAD: LateIdCallSt
  loc_143EAB8: var_94 = CVar(CLng(&HF)) 'Long
  loc_143EABD: var_E8 = &H320
  loc_143EAC9: LateIdCallSt
  loc_143EAD4: var_94 = CVar(CLng(&HD)) 'Long
  loc_143EAD9: var_E8 = 0
  loc_143EAE5: LateIdCallSt
  loc_143EAF0: var_94 = CVar(CLng(&HB)) 'Long
  loc_143EAF5: var_E8 = 0
  loc_143EB01: LateIdCallSt
  loc_143EB0C: var_94 = CVar(CLng(&HE)) 'Long
  loc_143EB11: var_E8 = 0
  loc_143EB1D: LateIdCallSt
  loc_143EB28: var_94 = CVar(CLng(&H10)) 'Long
  loc_143EB2D: var_E8 = 0
  loc_143EB39: LateIdCallSt
  loc_143EB44: var_94 = CVar(CLng(&H11)) 'Long
  loc_143EB49: var_E8 = 0
  loc_143EB55: LateIdCallSt
  loc_143EB60: var_94 = CVar(CLng(&H12)) 'Long
  loc_143EB65: var_E8 = 0
  loc_143EB71: LateIdCallSt
  loc_143EB7C: var_94 = CVar(CLng(&H14)) 'Long
  loc_143EB81: var_E8 = 0
  loc_143EB8D: LateIdCallSt
  loc_143EB98: var_94 = CVar(CLng(&H13)) 'Long
  loc_143EB9D: var_E8 = 0
  loc_143EBA9: LateIdCallSt
  loc_143EBB4: var_94 = CVar(CLng(&H18)) 'Long
  loc_143EBB9: var_E8 = 0
  loc_143EBC5: LateIdCallSt
  loc_143EBD0: var_94 = CVar(CLng(&H19)) 'Long
  loc_143EBD5: var_E8 = 0
  loc_143EBE1: LateIdCallSt
  loc_143EBEC: var_94 = CVar(CLng(&H1A)) 'Long
  loc_143EBF1: var_E8 = 0
  loc_143EBFD: LateIdCallSt
  loc_143EC05: var_94 = 0
  loc_143EC11: var_E8 = CVar(CLng(&HB)) 'Long
  loc_143EC16: var_108 = "Item Code"
  loc_143EC1F: LateIdCallSt
  loc_143EC27: var_94 = 0
  loc_143EC33: var_E8 = CVar(CLng(&HE)) 'Long
  loc_143EC38: var_108 = "Disc %"
  loc_143EC41: LateIdCallSt
  loc_143EC49: var_94 = 0
  loc_143EC55: var_E8 = CVar(CLng(&H10)) 'Long
  loc_143EC5A: var_108 = "Tax %"
  loc_143EC63: LateIdCallSt
  loc_143EC6B: var_94 = 0
  loc_143EC77: var_E8 = CVar(CLng(&H11)) 'Long
  loc_143EC7C: var_108 = "Tax Amt"
  loc_143EC85: LateIdCallSt
  loc_143EC8D: var_94 = 0
  loc_143EC99: var_E8 = CVar(CLng(&H12)) 'Long
  loc_143EC9E: var_108 = "Total"
  loc_143ECA7: LateIdCallSt
  loc_143ECAF: var_94 = 0
  loc_143ECBB: var_E8 = CVar(CLng(&H14)) 'Long
  loc_143ECC0: var_108 = "R Off"
  loc_143ECC9: LateIdCallSt
  loc_143ECD1: var_94 = 0
  loc_143ECDD: var_E8 = CVar(CLng(&H13)) 'Long
  loc_143ECE2: var_108 = "Disc Y/N"
  loc_143ECEB: LateIdCallSt
  loc_143ECF3: var_94 = 0
  loc_143ECFF: var_E8 = CVar(CLng(&H18)) 'Long
  loc_143ED04: var_108 = "Tax Cat Code"
  loc_143ED0D: LateIdCallSt
  loc_143ED18: var_94 = CVar(CLng(&H15)) 'Long
  loc_143ED1D: var_E8 = 0
  loc_143ED29: LateIdCallSt
  loc_143ED34: var_94 = CVar(CLng(&H16)) 'Long
  loc_143ED39: var_E8 = 0
  loc_143ED45: LateIdCallSt
  loc_143ED50: var_94 = CVar(CLng(&H17)) 'Long
  loc_143ED55: var_E8 = 0
  loc_143ED61: LateIdCallSt
  loc_143ED6C: var_94 = CVar(CLng(&H1B)) 'Long
  loc_143ED71: var_E8 = 0
  loc_143ED7D: LateIdCallSt
  loc_143ED88: var_94 = CVar(CLng(&H1C)) 'Long
  loc_143ED8D: var_E8 = 0
  loc_143ED99: LateIdCallSt
  loc_143EDA4: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143EDA9: var_E8 = 0
  loc_143EDB5: LateIdCallSt
  loc_143EDC0: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143EDC5: var_E8 = 0
  loc_143EDD1: LateIdCallSt
  loc_143EDDC: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143EDED: LateIdCallSt
  loc_143EDFF: Set var_11C = 0(Nothing)
  loc_143EE16: global_152 = CStr(CLng(FrameQty.DispID_FFFFFE0B))
  loc_143EE23: var_94 = CVar(CLng(3)) 'Long
  loc_143EE28: var_E8 = &H7D0
  loc_143EE34: LateIdCallSt
  loc_143EE3C: var_94 = 9
  loc_143EE4F: Set var_11C = Nothing 
  loc_143EE53: Exit Sub
End Sub

Public Sub Proc_258_137_F970C0(arg_C, arg_10) 'F970C0
  'Data Table: 5B2118
  Dim var_94 As TextBox
  Dim var_A0 As TextBox
  Dim var_A8 As TextBox
  Dim var_B8 As TextBox
  loc_F96FA6: Set var_90 = var_94(CInt(3))
  loc_F96FAC: Call 0.Method_Proc_258_137_F970C00 (var_98)
  loc_F96FB4:  = var_94.Tag
  loc_F96FC7: Set var_9C = var_A0(CInt(2))
  loc_F96FCD: Call 0.Method_Proc_258_137_F970C00 (var_CC)
  loc_F96FD5:  = var_A0.Text
  loc_F96FE8: Set var_A4 = var_A8(CInt(3))
  loc_F96FEE: Call 0.Method_Proc_258_137_F970C00 (var_D8)
  loc_F96FF6:  = var_A8.Text
  loc_F97002: Set var_AC = (var_AE)
  loc_F97008: Call 0.Method_Proc_258_137_F970C08 ()
  loc_F9701A: Set var_B4 = var_B8(var_AE)
  loc_F97020: Call 0.Method_Proc_258_137_F970C00 (var_BC)
  loc_F97028:  = var_B8.Text
  loc_F97096: Call OutLetPaymentAdjustment(1, 5, global_184, var_98, var_CC, 0, var_D8, global_188, global_192, Val(var_BC), global_76, "Auto", arg_C, arg_10)
  loc_F970BF: Exit Sub
End Sub

Public Sub Proc_258_138_1150180
  'Data Table: 5B2118
  Dim var_D4 As Variant
  Dim var_98 As String
  Dim unk_5B2155 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_8C As Recordset15
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_1EC As Variant
  loc_114FE35: var_D4 = 0
  loc_114FE65: unk_5B2155.Execute "SELECT ShortName FROM Depart WHERE Code='" & global_76 & "'", var_BC, -1
  loc_114FE6D: var_C0 = var_C0.Fields
  loc_114FE75: var_D4 = var_C4.Item(var_C4)
  loc_114FE7D: var_D8 = var_D8.Value
  loc_114FE85: var_108 = (var_E8 + var_E8)
  loc_114FE8A: var_94 = CStr(var_108)
  loc_114FEBA: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_114FEEB: Set var_C0 = var_C4(CInt(0))
  loc_114FEF1: Call 0.Method_Proc_258_138_11501800 (CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_94 & "' And VP.Date_From<="), var_148, -1)
  loc_114FF00: Proc_6_7_F26918(var_E8, CVar(var_C4))
  loc_114FF1F: unk_5B2155.Execute CStr(var_D8 & var_E8 & " Order By VP.Date_From DESC"), "B", 
  loc_114FF2A: Set var_8C = var_D8
  loc_114FF66: If (var_8C.RecordCount > 0) Then
  loc_114FFA5:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_114FFC2:     var_C4 = var_8C.Fields.Item("Prefix")
  loc_114FFD9:     global_164 = CStr(var_C4.Value)
  loc_115001E:     var_124 = "UPDATE Voucher_Prefix SET start_srl_no=" & arg_10 & " WHERE (SITE_CODE='" & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" 
  loc_1150053:     Set var_C0 = var_C4(CInt(0))
  loc_1150059:     Call 0.Method_Proc_258_138_11501800 (var_124 & CVar(MemVar_1F95078) & "') and V_Type='" & CVar(var_94) & "' AND ", var_23C)
  loc_1150068:     Proc_6_7_F26918(var_1EC, CVar(var_C4))
  loc_1150070:     var_1FC = -1 & var_1EC 
  loc_1150087:     unk_5B2155.Execute CStr(var_1FC & " BETWEEN Date_From AND Date_To"), var_D8, 
  loc_11500B3:   End If
  loc_11500B3: End If
  loc_11500DD: var_BC = Space((5 - Len(var_94)))
  loc_11500E5: var_108 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_94) + "UPDATE Voucher_Prefix SET start_srl_no=" & arg_10)
  loc_11500F9: var_124 = Space((5 - Len(global_164)))
  loc_1150101: var_134 = ("UPDATE Voucher_Prefix SET start_srl_no=" & arg_10 & " WHERE (SITE_CODE='" & CVar(MemVar_1F95070) + var_124)
  loc_115010E: var_148 = (var_124 & CVar(MemVar_1F95078) + CVar(global_164))
  loc_1150127: var_1AC = Space((8 - Len(CStr(arg_10))))
  loc_115012F: var_1CC = (var_124 & CVar(MemVar_1F95078) & "') and V_Type='" + var_124 & CVar(MemVar_1F95078) & "') and V_Type='" & CVar(var_94))
  loc_115013E: var_1EC = (var_124 & CVar(MemVar_1F95078) & "') and V_Type='" & CVar(var_94) & "' AND " + CVar(CStr(arg_10)))
  loc_115016D: var_88 = CStr(CVar(MemVar_1F9506C) & var_1EC)
  loc_1150175: Set var_8C = Nothing
  loc_1150178: Proc_258_138_1150180 = 
End Sub

Public Sub Proc_258_139_1B84538
  'Data Table: 5B2118
  Dim var_17C As Variant
  Dim var_1BC As Variant
  Dim var_1AC As Variant
  Dim var_1FC As Variant
  Dim var_19C As Variant
  Dim var_164 As String
  Dim unk_5B2155 As Connection15
  Dim var_88 As Variant
  Dim var_158 As Variant
  Dim var_15C As Variant
  Dim var_208 As Variant
  Dim var_214 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_25C As Variant
  Dim var_18C As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_20C As String
  Dim var_160 As Variant
  Dim var_204 As Variant
  Dim var_B4 As Double
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_274 As String
  Dim Me As Recordset15
  Dim var_298 As String
  Dim var_29C As String
  Dim var_2A0 As String
  Dim var_11C As Recordset15
  Dim var_8A As Variant
  Dim var_2D4 As Variant
  Dim var_2FC As Variant
  Dim var_3E8 As TextBox
  Dim var_478 As Variant
  Dim var_4C0 As TextBox
  Dim var_A58 As Double
  Dim var_510 As TextBox
  Dim var_A60 As Double
  Dim var_7E0 As Variant
  Dim var_A68 As Double
  Dim var_90C As String
  Dim var_9A4 As TextBox
  Dim var_2C8 As String
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_370 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_498 As Variant
  Dim var_4E4 As Variant
  Dim var_504 As Variant
  Dim var_534 As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_614 As Variant
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_6D4 As Variant
  Dim var_714 As Variant
  Dim var_734 As Variant
  Dim var_774 As Variant
  Dim var_7B4 As Variant
  Dim var_804 As Variant
  Dim var_97C As Variant
  Dim var_A28 As Variant
  Dim var_A2C As String
  Dim var_2D0 As Variant
  Dim var_3E4 As Variant
  Dim var_3F0 As Variant
  Dim var_4BC As TextBox
  Dim var_50C As TextBox
  Dim var_7E4 As String
  Dim var_7DC As TextBox
  Dim var_488 As Variant
  Dim var_9A8 As String
  Dim var_2CC As TextBox
  Dim var_508 As TextBox
  Dim var_A80 As String
  Dim var_A84 As String
  Dim var_AA8 As String
  Dim var_109C As Double
  Dim var_10A4 As Double
  Dim var_B70 As String
  Dim var_10AC As Double
  Dim var_BD8 As String
  Dim var_10B4 As Double
  Dim var_10BC As Double
  Dim var_CA8 As String
  Dim var_10D4 As Double
  Dim var_2D8 As String
  Dim var_300 As String
  Dim var_4C4 As String
  Dim var_514 As String
  Dim var_A70 As String
  Dim var_A74 As String
  Dim var_8C4 As Variant
  Dim var_908 As Variant
  Dim var_D70 As Variant
  Dim var_FB4 As Variant
  Dim var_3EC As String
  Dim var_A7C As String
  Dim var_438 As Variant
  Dim var_7D8 As TextBox
  Dim var_BD4 As Label
  Dim var_152 As Integer
  Dim var_134 As Recordset15
  Dim var_138 As Recordset15
  Dim var_3F4 As TextBox
  Dim var_9A0 As TextBox
  Dim var_A50 As TextBox
  Dim var_C3C As Fields15
  Dim var_CA4 As Field20
  Dim var_A78 As String
  loc_1B7F5DC: On Error Goto loc_1B8451D
  loc_1B7F5EA: Set var_158 = var_15C(CInt(1))
  loc_1B7F5F0: Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B7F5F8: var_164 = "Voucher Date"
  loc_1B7F619: If (Proc_6_27_EA61EC(var_15C) = 0) Then
  loc_1B7F61C:   Exit Sub
  loc_1B7F61D: End If
  loc_1B7F624: Set var_158 = var_164(var_166)
  loc_1B7F62A: Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B7F63D: Call TxtGt_Validate((var_166 + 1))
  loc_1B7F650: Set var_158 = var_15C(CInt(0))
  loc_1B7F656: Call 0.Method_Proc_258_139_1B845380 (0)
  loc_1B7F65E: var_164 = "Voucher No"
  loc_1B7F67F: If (Proc_6_27_EA61EC(var_15C) = 0) Then
  loc_1B7F682:   Exit Sub
  loc_1B7F683: End If
  loc_1B7F68E: Set var_158 = var_15C(CInt(5))
  loc_1B7F694: Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B7F69C: var_164 = "CashRegData Time"
  loc_1B7F6BD: If (Proc_6_27_EA61EC(var_15C) = 0) Then
  loc_1B7F6C0:   Exit Sub
  loc_1B7F6C1: End If
  loc_1B7F6CC: If (global_76 = vbNullString) Then
  loc_1B7F6E8:   MsgBox("Open RestaurantChange Form ", 0, var_1AC, var_1CC, var_1EC)
  loc_1B7F6F8:   Exit Sub
  loc_1B7F6F9: End If
  loc_1B7F70E: Set var_158 = 1(CVar(CLng(4)))
  loc_1B7F714: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_164)
  loc_1B7F71F: var_1AC = CVar(CStr()) 'String
  loc_1B7F725: var_1CC = Trim(var_1AC)
  loc_1B7F741: If (var_1CC = vbNullString) Then
  loc_1B7F757:   var_18C = "No Item On First Row.."
  loc_1B7F75D:   MsgBox(var_18C, 0, var_1AC, var_1CC, var_1EC)
  loc_1B7F77A:   Set var_158 = (1)
  loc_1B7F780:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1B7F78C:   Set var_158 = ()
  loc_1B7F792:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1B7F79D:   Exit Sub
  loc_1B7F79E: End If
  loc_1B7F7A9: If (global_304 = "Room Service") Then
  loc_1B7F7C9:   Proc_6_17_EAAE40(var_18C, MemVar_1F95078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1B7F7DF:   unk_5B2155.Execute CStr(var_1CC & var_18C), -1, var_158
  loc_1B7F7EA:   Set var_88 = var_158
  loc_1B7F810:   If (var_88.RecordCount > 0) Then
  loc_1B7F825:     var_158 = var_88.Fields
  loc_1B7F857:     If (Proc_6_38_E69628(var_158.Item(0).Value) = vbNullString) Then
  loc_1B7F875:       var_18C = "Please define Room Payment Type From Enviro"
  loc_1B7F87B:       MsgBox(var_18C, &H40, "Aatithya", var_1CC, var_1EC)
  loc_1B7F88B:       Exit Sub
  loc_1B7F88C:     End If
  loc_1B7F88C:   End If
  loc_1B7F88F: Else
  loc_1B7F8AC:   Proc_6_17_EAAE40(var_18C, MemVar_1F95078, "Select CashPayType From enviro WHERE LOGSITE_CODE=")
  loc_1B7F8B8:   var_164 = CStr(var_1CC & var_18C)
  loc_1B7F8C2:   unk_5B2155.Execute var_164, -1, var_158
  loc_1B7F8CD:   Set var_88 = var_158
  loc_1B7F8F3:   If (var_88.RecordCount > 0) Then
  loc_1B7F910:     var_15C = var_88.Fields.Item(0)
  loc_1B7F925:     var_130 = Proc_6_38_E69628(var_15C.Value)
  loc_1B7F93A:     If (var_130 = vbNullString) Then
  loc_1B7F95E:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "Aatithya", var_1CC, var_1EC)
  loc_1B7F96E:       Exit Sub
  loc_1B7F96F:     End If
  loc_1B7F96F:   End If
  loc_1B7F96F: End If
  loc_1B7F97D: Set var_158 = var_15C(CInt(6))
  loc_1B7F983: Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B7F98B:  = var_15C.Text
  loc_1B7F9A7: If (CDbl(Val(var_164)) <> CDbl(0)) Then
  loc_1B7F9B1:   Set var_160 = (var_166)
  loc_1B7F9B7:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B7F9C9:   Set var_204 = var_208(var_166)
  loc_1B7F9CF:   Call 0.Method_Proc_258_139_1B845380 (var_20C)
  loc_1B7F9D7:    = var_208.Text
  loc_1B7F9E4:   var_214 = Val(var_20C)
  loc_1B7F9F5:   Set var_158 = var_15C(CInt(6))
  loc_1B7F9FB:   Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B7FA2A:   If (CDbl(Val(var_164)) < CDbl(var_15C.Text)) Then
  loc_1B7FA4E:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1CC, var_1EC)
  loc_1B7FA69:     Set var_158 = var_15C(CInt(6))
  loc_1B7FA6F:     Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B7FA77:     var_15C.SetFocus
  loc_1B7FA83:     Exit Sub
  loc_1B7FA84:   End If
  loc_1B7FA84: End If
  loc_1B7FA8D: Set var_158 = 1(var_92)
  loc_1B7FA93: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B7FAA9: For var_218 =  To CInt((CLng() - 1)):  = var_218 'Integer
  loc_1B7FAC4:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1B7FACA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7FAEB:   If (CDbl(Val(CStr())) > CDbl(0)) Then
  loc_1B7FB03:     Set var_158 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B7FB09:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7FB1C:     var_214 = Val(CStr())
  loc_1B7FB26:     var_A4 = (var_A4 + var_214)
  loc_1B7FB35:   Else
  loc_1B7FB4A:     Set var_158 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B7FB50:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A4)
  loc_1B7FB5B:     var_164 = CStr(var_214)
  loc_1B7FB6D:     var_AC = (var_AC + Val(var_164))
  loc_1B7FB79:   End If
  loc_1B7FB7C: Next var_218 'Integer
  loc_1B7FB8D: Set var_158 = var_92(var_166)
  loc_1B7FB93: Call 0.Method_Proc_258_139_1B845388 (1)
  loc_1B7FB9E: For var_21C =  To var_166:  = var_21C 'Integer
  loc_1B7FBD2:   Set var_158 = var_15C(var_92)
  loc_1B7FBD8:   Call 0.Method_Proc_258_139_1B845380 (var_164, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_24C, -1, var_160)
  loc_1B7FBE0:   var_204 = var_15C.Tag
  loc_1B7FBE8:   var_18C = CVar(var_164) 'String
  loc_1B7FBEE:   var_1AC = Trim(var_18C)
  loc_1B7FBF6:   var_1CC = 0 & var_1AC 
  loc_1B7FC23:   unk_5B2155.Execute CStr(var_1CC & "' And V_Type='" & CVar(global_184) & "'"), var_208, var_26C
  loc_1B7FC2B:    = var_160.Fields
  loc_1B7FC33:    = var_204.Item()
  loc_1B7FC3B:    = var_208.Value
  loc_1B7FC71:   var_270 = Proc_6_38_E69628(var_26C)
  loc_1B7FC7C:   If (var_270 = "Addition") Then
  loc_1B7FC8C:     Set var_158 = var_15C(var_92)
  loc_1B7FC92:     Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B7FC9A:      = var_15C.Text
  loc_1B7FCB1:     var_B4 = (var_B4 + Val(var_164))
  loc_1B7FCCB:     Set var_158 = var_15C(var_92)
  loc_1B7FCD1:     Call 0.Method_Proc_258_139_1B845380 (var_164, var_B4)
  loc_1B7FCD9:     var_214 = var_15C.Text
  loc_1B7FCF0:     var_CC = (var_CC + Val(var_164))
  loc_1B7FD00:   Else
  loc_1B7FD08:     If (var_270 = "Deduction") Then
  loc_1B7FD18:       Set var_158 = var_15C(var_92)
  loc_1B7FD1E:       Call 0.Method_Proc_258_139_1B845380 (var_164, var_CC)
  loc_1B7FD26:       var_214 = var_15C.Text
  loc_1B7FD3D:       var_BC = (var_BC + Val(var_164))
  loc_1B7FD57:       Set var_158 = var_15C(var_92)
  loc_1B7FD5D:       Call 0.Method_Proc_258_139_1B845380 (var_164, var_BC)
  loc_1B7FD65:       var_214 = var_15C.Text
  loc_1B7FD7C:       var_C4 = (var_C4 + Val(var_164))
  loc_1B7FD8C:     Else
  loc_1B7FD94:       If (var_270 = "Discount") Then
  loc_1B7FDA4:         Set var_158 = var_15C(var_92)
  loc_1B7FDAA:         Call 0.Method_Proc_258_139_1B845380 (var_164, var_C4)
  loc_1B7FDB2:         var_214 = var_15C.Text
  loc_1B7FDC9:         var_DC = (var_DC + Val(var_164))
  loc_1B7FDE3:         Set var_158 = var_15C(var_92)
  loc_1B7FDE9:         Call 0.Method_Proc_258_139_1B845380 (var_164, var_DC)
  loc_1B7FDF1:         var_214 = var_15C.Text
  loc_1B7FE08:         var_E4 = (var_E4 + Val(var_164))
  loc_1B7FE18:       Else
  loc_1B7FE20:         If (var_270 = "Luxury Tax") Then
  loc_1B7FE30:           Set var_158 = var_15C(var_92)
  loc_1B7FE36:           Call 0.Method_Proc_258_139_1B845380 (var_164, var_E4)
  loc_1B7FE3E:           var_214 = var_15C.Text
  loc_1B7FE55:           var_FC = (var_FC + Val(var_164))
  loc_1B7FE6F:           Set var_158 = var_15C(var_92)
  loc_1B7FE75:           Call 0.Method_Proc_258_139_1B845380 (var_164, var_FC)
  loc_1B7FE7D:           var_214 = var_15C.Text
  loc_1B7FE94:           var_D4 = (var_D4 + Val(var_164))
  loc_1B7FEA4:         Else
  loc_1B7FEAC:           If (var_270 = "Round Off") Then
  loc_1B7FEBC:             Set var_158 = var_15C(var_92)
  loc_1B7FEC2:             Call 0.Method_Proc_258_139_1B845380 (var_164, var_D4)
  loc_1B7FECA:             var_214 = var_15C.Text
  loc_1B7FEE1:             var_EC = (var_EC + Val(var_164))
  loc_1B7FEFB:             Set var_158 = var_15C(var_92)
  loc_1B7FF01:             Call 0.Method_Proc_258_139_1B845380 (var_164, var_EC)
  loc_1B7FF09:             var_214 = var_15C.Text
  loc_1B7FF20:             var_F4 = (var_F4 + Val(var_164))
  loc_1B7FF30:           Else
  loc_1B7FF38:             If (var_270 = "Sale Tax") Then
  loc_1B7FF48:               Set var_158 = var_15C(var_92)
  loc_1B7FF4E:               Call 0.Method_Proc_258_139_1B845380 (var_164, var_F4)
  loc_1B7FF56:               var_214 = var_15C.Text
  loc_1B7FF6D:               var_FC = (var_FC + Val(var_164))
  loc_1B7FF87:               Set var_158 = var_15C(var_92)
  loc_1B7FF8D:               Call 0.Method_Proc_258_139_1B845380 (var_164, var_FC)
  loc_1B7FF95:               var_214 = var_15C.Text
  loc_1B7FFAC:               var_D4 = (var_D4 + Val(var_164))
  loc_1B7FFBC:             Else
  loc_1B7FFC4:               If (var_270 = "Service Charge") Then
  loc_1B7FFD4:                 Set var_158 = var_15C(var_92)
  loc_1B7FFDA:                 Call 0.Method_Proc_258_139_1B845380 (var_164, var_D4)
  loc_1B7FFE2:                 var_214 = var_15C.Text
  loc_1B7FFF9:                 var_104 = (var_104 + Val(var_164))
  loc_1B80013:                 Set var_158 = var_15C(var_92)
  loc_1B80019:                 Call 0.Method_Proc_258_139_1B845380 (var_164, var_104)
  loc_1B80021:                 var_214 = var_15C.Text
  loc_1B80038:                 var_10C = (var_10C + Val(var_164))
  loc_1B80048:               Else
  loc_1B80050:                 If (var_270 = "Service Tax") Then
  loc_1B80060:                   Set var_158 = var_15C(var_92)
  loc_1B80066:                   Call 0.Method_Proc_258_139_1B845380 (var_164, var_10C)
  loc_1B8006E:                   var_214 = var_15C.Text
  loc_1B80085:                   var_FC = (var_FC + Val(var_164))
  loc_1B8009F:                   Set var_158 = var_15C(var_92)
  loc_1B800A5:                   Call 0.Method_Proc_258_139_1B845380 (var_164, var_FC)
  loc_1B800AD:                   var_214 = var_15C.Text
  loc_1B800C4:                   var_D4 = (var_D4 + Val(var_164))
  loc_1B800D1:                 End If
  loc_1B800D1:               End If
  loc_1B800D1:             End If
  loc_1B800D1:           End If
  loc_1B800D1:         End If
  loc_1B800D1:       End If
  loc_1B800D1:     End If
  loc_1B800D1:   End If
  loc_1B800D4: Next var_21C 'Integer
  loc_1B800DC: var_9C = vbNullString
  loc_1B800E2: Call Proc_258_146_1120BB0(var_166)
  loc_1B800ED: If (var_166 = 0) Then
  loc_1B800F0:   Exit Sub
  loc_1B800F1: End If
  loc_1B800FC: Set var_158 = var_15C(0)
  loc_1B80102: Call 0.Method_Proc_258_139_1B845380 (0)
  loc_1B8010A: var_15C.Visible = 
  loc_1B80116: Call Proc_258_149_FD7788()
  loc_1B80129: Set var_158 = var_15C(CInt(1))
  loc_1B8012F: Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B80137:  = var_15C.Text
  loc_1B80157: If (Proc_6_91_EF38D0(CDate(var_164)) = 0) Then
  loc_1B80165:   Set var_158 = var_15C(CInt(1))
  loc_1B8016B:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B80173:   var_15C.SetFocus
  loc_1B8017F:   Exit Sub
  loc_1B80180: End If
  loc_1B80184: Set var_158 = Me.TopCtrl1
  loc_1B8018A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1B8019E: Set var_15C = Me.TopCtrl1
  loc_1B801A4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((CStr() = "Add"))
  loc_1B801CA: If ( Or (CStr() = "Edit")) Then
  loc_1B801D3:   var_19C = 0
  loc_1B801F0:   var_164 = "Select NCUR from enviro where logsite_code='" & MemVar_1F95078
  loc_1B80200:   unk_5B2155.Execute var_164 & "'", var_18C, -1
  loc_1B80208:   var_158 = var_158.Fields
  loc_1B80210:   var_19C = var_15C.Item(var_15C)
  loc_1B80218:   var_160 = var_160.Value
  loc_1B80242:   var_19C = 0
  loc_1B80269:   Set var_158 = var_15C(CInt(2))
  loc_1B8026F:   Call 0.Method_Proc_258_139_1B845380 (var_164, "Select Count(*) From Sale1 Where DocID='", var_18C, -1, var_160, var_204)
  loc_1B80277:   var_19C = var_15C.Text
  loc_1B80290:   unk_5B2155.Execute var_208 & var_164 & "'", var_1AC, CDate(var_1AC)
  loc_1B802A0:    = var_204.Item()
  loc_1B802A8:    = var_208.Value
  loc_1B802D5:   If (var_160.Fields > 0) Then
  loc_1B802DE:     Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1B802F1:     Set var_158 = var_15C(CInt(2))
  loc_1B802F7:     Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B802FF:     var_15C.Text = var_164
  loc_1B8030E:     Exit Sub
  loc_1B8030F:   End If
  loc_1B80312: Else
  loc_1B80337:   var_18C = Me.Fields.Item("DocID").Value
  loc_1B80346:   global_156 = CStr(var_18C)
  loc_1B80357: End If
  loc_1B8036C: Set var_158 = 1(CVar(CLng(&HD)))
  loc_1B80372: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B80393: Set var_15C = 1(CVar(CLng(&HC)))
  loc_1B80399: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B803AC: var_214 = Val(CStr())
  loc_1B803CE: var_298 = "Select Waiter From CashRegData where DocID='" & CStr(var_18C) & "' And SNO ="
  loc_1B803E3: unk_5B2155.Execute var_298 & CStr(var_214), var_1CC, -1
  loc_1B803EE: Set var_88 = var_160
  loc_1B80426: If (var_88.RecordCount > 0) Then
  loc_1B8043B:   var_158 = var_88.Fields
  loc_1B8044B:   var_18C = var_158.Item(0).Value
  loc_1B8045A:   global_292 = CStr(var_18C)
  loc_1B8046B: End If
  loc_1B80471: global_180 = vbNullString
  loc_1B8047B: Call Proc_258_155_EA954C(var_11C, var_158)
  loc_1B80483: Set var_11C = var_158
  loc_1B8048F: Set var_158 = 1(var_92)
  loc_1B80495: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_160)
  loc_1B804AB: For var_2B4 =  To CInt((CLng(var_214) - 1)):  = var_2B4 'Integer
  loc_1B804C6:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B804CC:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B804E5:   var_1FC = vbNullString
  loc_1B80504:   Set var_15C = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B8050A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> var_1FC))
  loc_1B80543:   If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1B8055A:     If (var_11C.RecordCount > 0) Then
  loc_1B80560:       var_11C.MoveFirst
  loc_1B80569:       var_17C = CVar(CLng(var_92)) 'Long
  loc_1B8057A:       Set var_158 = var_17C(CVar(CLng(&HD)))
  loc_1B80580:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B805DA:       var_11C.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(var_18C)), 8))))), 0, 1
  loc_1B80604:       If var_11C.EOF Then
  loc_1B80612:         var_11C.AddNew var_17C, var_19C
  loc_1B8061B:         var_17C = CVar(CLng(var_92)) 'Long
  loc_1B8062C:         Set var_158 = var_17C(CVar(CLng(&HD)))
  loc_1B80632:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1FC)
  loc_1B80669:         var_25C = CVar(Val(CStr(Trim(Right(CVar(CStr(var_18C)), 8))))) 'Double
  loc_1B80677:         var_11C.Collect = "V_NO"
  loc_1B80698:         var_11C.Update var_17C, var_19C
  loc_1B8069D:       End If
  loc_1B806A0:     Else
  loc_1B806AB:       var_11C.AddNew var_17C, var_19C
  loc_1B806B4:       var_17C = CVar(CLng(var_92)) 'Long
  loc_1B806C5:       Set var_158 = var_17C(CVar(CLng(&HD)))
  loc_1B806CB:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_25C)
  loc_1B80702:       var_25C = CVar(Val(CStr(Trim(Right(CVar(CStr(var_18C)), 8))))) 'Double
  loc_1B80710:       var_11C.Collect = "V_NO"
  loc_1B80731:       var_11C.Update var_17C, var_19C
  loc_1B80736:     End If
  loc_1B80736:   End If
  loc_1B80739: Next var_2B4 'Integer
  loc_1B80744: var_200 = var_11C.RecordCount
  loc_1B80752: If (var_200 > 0) Then
  loc_1B8075B:   var_11C.Sort = "V_NO"
  loc_1B80763:   var_11C.MoveFirst
  loc_1B80768:   ' Referenced from: 1B8085A
  loc_1B8076E:   var_166 = var_11C.EOF
  loc_1B80777:   If Not(var_166) Then
  loc_1B80785:     If (global_180 <> vbNullString) Then
  loc_1B807DA:       global_180 = CStr(Trim(CVar(global_180 & "," & CStr(var_11C.Fields.Item("V_NO").Value))))
  loc_1B807FA:     Else
  loc_1B80814:       var_15C = var_11C.Fields.Item("V_NO")
  loc_1B8081C:       var_18C = var_15C.Value
  loc_1B80826:       var_1AC = CVar(CStr(var_18C)) 'String
  loc_1B80835:       var_164 = CStr(Trim(var_1AC))
  loc_1B8083B:       global_180 = var_164
  loc_1B80852:     End If
  loc_1B80855:     var_11C.MoveNext
  loc_1B8085A:     GoTo loc_1B80768
  loc_1B8085D:   End If
  loc_1B80866:   global_180 = global_180
  loc_1B8086A: End If
  loc_1B8086C: var_8A = &HFF
  loc_1B80878: unk_5B2155.BeginTrans var_200
  loc_1B8089B: Set var_158 = var_15C(CInt(2))
  loc_1B808A1: Call 0.Method_Proc_258_139_1B845380 (var_164, "Delete From Stock Where DocID='", var_18C)
  loc_1B808A9: -1 = var_15C.Text
  loc_1B808C2: unk_5B2155.Execute var_160 & var_164 & "'", var_8A, 
  loc_1B808FA: Set var_158 = var_15C(CInt(2))
  loc_1B80900: Call 0.Method_Proc_258_139_1B845380 (var_164, "Delete From Sale1 Where DocID='", var_18C)
  loc_1B80908: -1 = var_15C.Text
  loc_1B80921: unk_5B2155.Execute var_160 & var_164 & "'", , 
  loc_1B80959: Set var_158 = var_15C(CInt(2))
  loc_1B8095F: Call 0.Method_Proc_258_139_1B845380 (var_164, "Delete From Sale2 Where DocID='", var_18C)
  loc_1B80967: -1 = var_15C.Text
  loc_1B80980: unk_5B2155.Execute var_160 & var_164 & "'", , 
  loc_1B809B8: Set var_158 = var_15C(CInt(2))
  loc_1B809BE: Call 0.Method_Proc_258_139_1B845380 (var_164, "Delete From SunTran Where DocID='", var_18C)
  loc_1B809C6: -1 = var_15C.Text
  loc_1B809DF: unk_5B2155.Execute var_160 & var_164 & "'", , 
  loc_1B80A04: If (global_304 = "Room Service") Then
  loc_1B80A15:   Set var_158 = var_15C(CInt(2))
  loc_1B80A1B:   Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B80A23:    = var_15C.Text
  loc_1B80A36:   Set var_160 = var_204(CInt(0))
  loc_1B80A3C:   Call 0.Method_Proc_258_139_1B845380 (var_298)
  loc_1B80A44:    = var_204.Text
  loc_1B80A51:   var_214 = Val(var_298)
  loc_1B80A5F:   Set var_208 = var_2CC(CInt(1))
  loc_1B80A65:   Call 0.Method_Proc_258_139_1B845380 (var_214)
  loc_1B80A6D:   var_18C = CVar(var_2CC) 'Address
  loc_1B80A74:   Proc_6_7_F26918(var_1AC)
  loc_1B80A87:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B80A8D:   Call 0.Method_Proc_258_139_1B845380 (var_2D8)
  loc_1B80A95:   var_18C = var_2D4.Text
  loc_1B80AA7:    = (var_300).Caption
  loc_1B80ABA:   Set var_3E4 = var_3E8(CInt(3))
  loc_1B80AC0:   Call 0.Method_Proc_258_139_1B845380 (var_3EC)
  loc_1B80AC8:    = var_3E8.Text
  loc_1B80AD8:   Set var_3F0 = var_3F4(CInt(3))
  loc_1B80ADE:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B80AF8:   Set var_438 = 1(CVar(CLng(&H17)))
  loc_1B80AFE:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B80B35:   Set var_4BC = var_4C0(CInt(4))
  loc_1B80B3B:   Call 0.Method_Proc_258_139_1B845380 (var_4C4)
  loc_1B80B43:    = var_4C0.Text
  loc_1B80B50:   var_A58 = Val(var_4C4)
  loc_1B80B5A:   Set var_508 = var_A58(var_166)
  loc_1B80B60:   Call 0.Method_Proc_258_139_1B845384 ()
  loc_1B80B72:   Set var_50C = var_510(var_166)
  loc_1B80B78:   Call 0.Method_Proc_258_139_1B845380 (var_514)
  loc_1B80B80:    = var_510.Text
  loc_1B80B8D:   var_A60 = Val(var_514)
  loc_1B80B97:   Set var_7D8 = var_A60(var_168)
  loc_1B80B9D:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B80BAF:   Set var_7DC = var_7E0(var_168)
  loc_1B80BB5:   Call 0.Method_Proc_258_139_1B845380 (var_7E4)
  loc_1B80BBD:    = var_7E0.Text
  loc_1B80BCA:   var_A68 = Val(var_7E4)
  loc_1B80BDB:   Proc_6_7_F26918(var_8C4, Date)
  loc_1B80BE4:   Set var_8F8 = Me.TopCtrl1
  loc_1B80BEA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1B80C0D:   var_90C = CStr(var_908)
  loc_1B80C2F:   Set var_9A0 = var_9A4(CInt(5))
  loc_1B80C35:   Call 0.Method_Proc_258_139_1B845380 (var_9A8)
  loc_1B80C3D:    = var_9A4.Text
  loc_1B80C56:   var_20C = "Insert Into Sale1(Docid,VNo,VDate,VTime,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B80CAF:   var_2F8 = CVar(var_20C & var_164 & "'," & CStr(var_214) & ",") & var_1AC & ",'" & CVar(var_2D8) & "','" & CVar(global_184) & "','" 
  loc_1B80D01:   var_3A0 = var_2F8 & CVar(var_300) & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_76) & "','" & CVar(global_188) & "','" 
  loc_1B80D32:   var_4E4 = var_3A0 & CVar(global_192) & "','" & IIf((var_3EC <> vbNullString), CVar(var_3F4), CVar(CStr())) & "'," & CVar(var_A58) 
  loc_1B80DAA:   var_674 = var_4E4 & "," & CVar(var_A60) & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) 
  loc_1B80E22:   var_804 = var_674 & ", " & CVar(var_104) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) 
  loc_1B80E6B:   var_97C = var_804 & ",'" & CVar(global_180) & "', '" & CVar(MemVar_1F950C8) & "'," & var_8C4 & ",'" & IIf((var_90C = "Add"), "A", "E") 
  loc_1B80EAB:   unk_5B2155.Execute CStr(var_97C & "','" & CVar(var_9A8) & "','" & CVar(global_292) & "','N')"), var_A4C, -1
  loc_1B80F9C: Else
  loc_1B80FAA:   Set var_158 = var_15C(CInt(2))
  loc_1B80FB0:   Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B80FB8:   var_A50 = var_15C.Text
  loc_1B80FCB:   Set var_160 = var_204(CInt(0))
  loc_1B80FD1:   Call 0.Method_Proc_258_139_1B845380 (var_298)
  loc_1B80FD9:    = var_204.Text
  loc_1B80FE6:   var_214 = Val(var_298)
  loc_1B80FF4:   Set var_208 = var_2CC(CInt(1))
  loc_1B80FFA:   Call 0.Method_Proc_258_139_1B845380 (var_214)
  loc_1B81009:   Proc_6_7_F26918(var_1AC)
  loc_1B8101B:    = CVar(var_2CC)(var_2D8).Caption
  loc_1B81035:   Set var_2D4 = 1(CVar(CLng(&H17)))
  loc_1B8103B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81055:   Set var_2FC = var_3E4(CInt(&HD))
  loc_1B8105B:   Call 0.Method_Proc_258_139_1B845380 (var_300)
  loc_1B81063:    = var_3E4.Tag
  loc_1B81076:   Set var_3E8 = var_3F0(CInt(4))
  loc_1B8107C:   Call 0.Method_Proc_258_139_1B845380 (var_3EC)
  loc_1B81084:    = var_3F0.Text
  loc_1B81091:   var_A58 = Val(var_3EC)
  loc_1B8109B:   Set var_3F4 = var_A58(var_166)
  loc_1B810A1:   Call 0.Method_Proc_258_139_1B845384 ()
  loc_1B810B3:   Set var_438 = var_4BC(var_166)
  loc_1B810B9:   Call 0.Method_Proc_258_139_1B845380 (var_4C4)
  loc_1B810C1:    = var_4BC.Text
  loc_1B810CE:   var_A60 = Val(var_4C4)
  loc_1B810D8:   Set var_4C0 = var_A60(var_168)
  loc_1B810DE:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B810F0:   Set var_508 = var_50C(var_168)
  loc_1B810F6:   Call 0.Method_Proc_258_139_1B845380 (var_514)
  loc_1B810FE:    = var_50C.Text
  loc_1B8110B:   var_A68 = Val(var_514)
  loc_1B8113F:   Proc_6_7_F26918(var_8C4, Date)
  loc_1B81148:   Set var_510 = Me.TopCtrl1
  loc_1B8114E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1B81193:   Set var_7D8 = var_7DC(CInt(5))
  loc_1B81199:   Call 0.Method_Proc_258_139_1B845380 (var_90C)
  loc_1B811A1:    = var_7DC.Text
  loc_1B811BA:   var_20C = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B8120A:   var_2E8 = CVar(var_20C & var_164 & "'," & CStr(var_214) & ",") & var_1AC & ",'" & CVar(global_184) & "','" & CVar(var_2D8) 
  loc_1B81233:   var_330 = var_2E8 & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_76) 
  loc_1B81286:   var_478 = var_330 & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_3A0)) & "','" & CVar(var_300) 
  loc_1B8129A:   var_498 = var_478 & "'," & CVar(var_A58) 
  loc_1B812C2:   var_534 = var_498 & "," & CVar(var_A60) & "," & CVar(var_E4) 
  loc_1B812EA:   var_5B4 = var_534 & "," & CVar(var_DC) & "," & CVar(var_AC) 
  loc_1B81312:   var_634 = var_5B4 & "," & CVar(var_A4) & "," & CVar(var_FC) 
  loc_1B8138A:   var_7B4 = var_634 & ", " & CVar(var_104) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) 
  loc_1B813CD:   var_97C = var_7B4 & ",'" & Trim(Left(global_180, &HFF)) & "', '" & CVar(MemVar_1F950C8) & "'," & var_8C4 & ",'" & IIf((CStr(var_908) = "Add"), "A", "E") 
  loc_1B813FF:   var_A28 = var_97C & "','" & CVar(var_90C) & "','" & CVar(global_292) & "','N')" 
  loc_1B81403:   var_9A8 = CStr(var_A28)
  loc_1B8140D:   unk_5B2155.Execute var_9A8, var_A4C, -1
  loc_1B814F1: End If
  loc_1B814FA: Set var_158 = 1(var_92)
  loc_1B81500: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_7E0)
  loc_1B81516: For var_A6C =  To CInt((CLng() - 1)):  = var_A6C 'Integer
  loc_1B81531:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B81537:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81548:   var_1CC = Trim(CVar(CStr()))
  loc_1B8156F:   Set var_15C = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1B81575:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_1CC <> vbNullString))
  loc_1B81580:   var_164 = CStr()
  loc_1B815AE:   If CBool( And (CDbl(Val(var_164)) <> CDbl(0))) Then
  loc_1B815BF:     Set var_158 = var_15C(CInt(2))
  loc_1B815C5:     Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B815CD:      = var_15C.Text
  loc_1B815E7:     Set var_160 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1B815ED:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81600:     var_214 = Val(CStr())
  loc_1B81610:      = var_214(var_3EC).Caption
  loc_1B81623:     Set var_208 = var_2CC(CInt(0))
  loc_1B81629:     Call 0.Method_Proc_258_139_1B845380 (var_9A8)
  loc_1B81631:      = var_2CC.Text
  loc_1B8163E:     var_A58 = Val(var_9A8)
  loc_1B8164C:     Set var_2D0 = var_2D4(CInt(1))
  loc_1B81652:     Call 0.Method_Proc_258_139_1B845380 (var_A58)
  loc_1B8165A:     var_1AC = CVar(var_2D4) 'Address
  loc_1B81661:     Proc_6_7_F26918(var_1CC)
  loc_1B8167B:     Set var_2FC = CVar(CLng(var_92))(CVar(CLng(&H15)))
  loc_1B81681:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1AC)
  loc_1B816A2:     Set var_3E4 = CVar(CLng(var_92))(CVar(CLng(&H16)))
  loc_1B816A8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B816C2:     Set var_3E8 = var_3F0(CInt(3))
  loc_1B816C8:     Call 0.Method_Proc_258_139_1B845380 (var_A78)
  loc_1B816D0:      = var_3F0.Text
  loc_1B816E0:     Set var_3F4 = var_438(CInt(3))
  loc_1B816E6:     Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B81700:     Set var_4BC = 1(CVar(CLng(&H17)))
  loc_1B81706:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B8173D:     Set var_4C0 = var_508(CInt(&HD))
  loc_1B81743:     Call 0.Method_Proc_258_139_1B845380 (var_A7C)
  loc_1B8174B:      = var_508.Tag
  loc_1B81765:     Set var_50C = CVar(CLng(var_92))(CVar(CLng(&HB)))
  loc_1B8176B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B8178C:     Set var_510 = CVar(CLng(var_92))(CVar(CLng(&H13)))
  loc_1B81792:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B817B3:     Set var_7D8 = CVar(CLng(var_92))(CVar(CLng(&H14)))
  loc_1B817B9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B817DA:     Set var_7DC = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1B817E0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81801:     Set var_7E0 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1B81807:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B8181A:     var_A60 = Val(CStr())
  loc_1B81832:     Set var_8F8 = CVar(CLng(var_92))(CVar(CLng(9)))
  loc_1B81838:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1B8184B:     var_A68 = Val(CStr())
  loc_1B81863:     Set var_9A0 = CVar(CLng(var_92))(CVar(CLng(8)))
  loc_1B81869:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1B8187C:     var_109C = Val(CStr())
  loc_1B81894:     Set var_9A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B8189A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_109C)
  loc_1B818AD:     var_10A4 = Val(CStr())
  loc_1B818C5:     Set var_A50 = CVar(CLng(var_92))(CVar(CLng(&H10)))
  loc_1B818CB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10A4)
  loc_1B818DE:     var_10AC = Val(CStr())
  loc_1B818F6:     Set var_BD4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1B818FC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10AC)
  loc_1B8190F:     var_10B4 = Val(CStr())
  loc_1B81927:     Set var_C3C = CVar(CLng(var_92))(CVar(CLng(&HE)))
  loc_1B8192D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10B4)
  loc_1B81940:     var_10BC = Val(CStr())
  loc_1B81958:     Set var_CA4 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1B8195E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10BC)
  loc_1B81971:     var_10C4 = Val(CStr())
  loc_1B81989:     Set var_D0C = CVar(CLng(var_92))(CVar(CLng(&H12)))
  loc_1B8198F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10C4)
  loc_1B819A2:     var_10CC = Val(CStr())
  loc_1B819B3:     Proc_6_7_F26918(var_A28, Date)
  loc_1B819BC:     Set var_D74 = Me.TopCtrl1
  loc_1B819C2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_10CC)
  loc_1B81A0E:     Set var_E5C = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1B81A14:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81A35:     Set var_EF0 = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1B81A3B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81A5C:     Set var_F84 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1B81A62:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81A83:     Set var_1018 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1B81A89:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81AB3:     var_20C = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Party,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag) Values (" & "'"
  loc_1B81AFA:     var_90C = var_20C & var_164 & "'," & CStr(var_214) & ",'" & global_184 & "','" & var_3EC & "','" & MemVar_1F95070
  loc_1B81B14:     var_1EC = CVar(var_90C & "'," & CStr(var_A58) & ",") 'String
  loc_1B81B41:     var_2F8 = CVar(CStr(var_2E8)) 'String
  loc_1B81B68:     var_3E0 = var_1EC & var_1CC & ",'" & CVar(global_76) & "','" & var_2F8 & "','" & CVar(CStr(var_330)) & "','" & IIf((var_A78 <> vbNullString), CVar(var_438), CVar(CStr())) 
  loc_1B81B98:     var_504 = var_3E0 & "','" & CVar(var_A7C) & "','" & CVar(CStr(var_498)) & "','" 
  loc_1B81BB4:     var_5D4 = CVar(CStr(var_5B4)) 'String
  loc_1B81BCB:     var_674 = var_504 & CVar(CStr(var_534)) & "','" & var_5D4 & "','" & CVar(CStr(var_634)) 
  loc_1B81C10:     var_7B4 = var_674 & "'," & CVar(var_A60) & "," & CVar(var_A68) & "," & CVar(var_109C) & "," 
  loc_1B81C4C:     var_8C4 = var_7B4 & CVar(var_10A4) & "," & CVar(var_10AC) & "," & CVar(var_10B4) & "," 
  loc_1B81CAB:     var_D70 = var_8C4 & CVar(var_10BC) & "," & CVar(var_10C4) & "," & CVar(var_10CC) & ",'" & CVar(MemVar_1F950C8) & "'," & var_A28 & ",'" 
  loc_1B81CEE:     var_FB4 = var_D70 & IIf((CStr(var_D84) = "Add"), "A", "E") & "','" & CVar(CStr(var_E6C)) & "','" & CVar(CStr(var_F00)) & "','" & CVar(CStr(var_F94)) 
  loc_1B81D19:     unk_5B2155.Execute CStr(var_FB4 & "'," & CVar(Val(CStr())) & ",'N')"), var_1090, -1
  loc_1B81E78:     If (global_240 = "Y") Then
  loc_1B81E89:       Set var_158 = var_15C(CInt(2))
  loc_1B81E8F:       Call 0.Method_Proc_258_139_1B845380 (var_164, var_1094)
  loc_1B81E97:       var_10D4 = var_15C.Text
  loc_1B81EB1:       Set var_160 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1B81EB7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81ECA:       var_214 = Val(CStr())
  loc_1B81EE2:       Set var_204 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1B81EE8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_214)
  loc_1B81F09:       Set var_208 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1B81F0F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B81F65:       var_4C4 = "Update CashRegData Set ContraDocId='" & var_164 & "',ContraSno=" & CStr(var_214) & " where docid='" & CStr(var_1AC) & "' And SNo="
  loc_1B81F7A:       unk_5B2155.Execute var_4C4 & CStr(Val(CStr())), var_1EC, -1
  loc_1B81FB6:     End If
  loc_1B81FB6:   End If
  loc_1B81FB9: Next var_A6C 'Integer
  loc_1B81FC7: Set var_158 = 0(var_92)
  loc_1B81FCD: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B81FE3: For var_10D8 =  To CInt((CLng() - 1)):  = var_10D8 'Integer
  loc_1B81FFE:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1B82004:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B8200F:   var_1AC = CVar(CStr()) 'String
  loc_1B8203C:   Set var_15C = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1B82042:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(var_1AC) <> vbNullString))
  loc_1B8204D:   var_164 = CStr()
  loc_1B8207B:   If CBool( And (CDbl(Val(var_164)) <> CDbl(0))) Then
  loc_1B8208C:     Set var_158 = var_15C(CInt(2))
  loc_1B82092:     Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B8209A:      = var_15C.Text
  loc_1B820B4:     Set var_160 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1B820BA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B820CD:     var_214 = Val(CStr())
  loc_1B820E5:     Set var_204 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1B820EB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_214)
  loc_1B820F6:     var_2D8 = CStr()
  loc_1B820FE:     var_A58 = Val(var_2D8)
  loc_1B8210E:      = var_A58(var_90C).Caption
  loc_1B82121:     Set var_2CC = var_2D0(CInt(0))
  loc_1B82127:     Call 0.Method_Proc_258_139_1B845380 (var_A78)
  loc_1B8212F:      = var_2D0.Text
  loc_1B8213C:     var_A60 = Val(var_A78)
  loc_1B8214A:     Set var_2D4 = var_2FC(CInt(1))
  loc_1B82150:     Call 0.Method_Proc_258_139_1B845380 (var_A60)
  loc_1B8215F:     Proc_6_7_F26918(var_1EC)
  loc_1B82179:     Set var_3E4 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1B8217F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_2FC))
  loc_1B821A0:     Set var_3E8 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B821A6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B821B9:     var_A68 = Val(CStr())
  loc_1B821D1:     Set var_3F0 = CVar(CLng(var_92))(CVar(CLng(5)))
  loc_1B821D7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1B821EA:     var_109C = Val(CStr())
  loc_1B82202:     Set var_3F4 = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1B82208:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_109C)
  loc_1B8221B:     var_10A4 = Val(CStr())
  loc_1B8222C:     Proc_6_7_F26918(var_498, Date)
  loc_1B82235:     Set var_438 = Me.TopCtrl1
  loc_1B8223B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_10A4)
  loc_1B82254:     var_534 = "A"
  loc_1B82286:     var_20C = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag) Values (" & "'"
  loc_1B822BA:     var_514 = var_20C & var_164 & "'," & CStr(var_214) & "," & CStr(var_A58) & ",'"
  loc_1B822C4:     var_7E4 = var_514 & global_184
  loc_1B822CB:     var_9A8 = var_7E4 & "','"
  loc_1B822D2:     var_A2C = var_9A8 & var_90C
  loc_1B822D9:     var_A70 = var_A2C & "','"
  loc_1B822E0:     var_A74 = var_A70 & MemVar_1F95070
  loc_1B822EF:     var_A80 = CStr(var_A60)
  loc_1B8233E:     var_350 = CVar(var_A74 & "'," & var_A80 & ",") & var_1EC & ",'" & CVar(global_76) & "','" & CVar(CStr(var_2F8)) & "'," & CVar(var_A68) 
  loc_1B82399:     var_594 = var_350 & "," & CVar(var_109C) & "," & CVar(var_10A4) & ",'" & CVar(MemVar_1F950C8) & "'," & var_498 & ",'" & IIf((CStr(var_504) = "Add"), var_534, "E") 
  loc_1B823B0:     unk_5B2155.Execute CStr(var_594 & "','N')"), var_5D4, -1
  loc_1B82458:   End If
  loc_1B8245B: Next var_10D8 'Integer
  loc_1B8246C: Set var_158 = var_92(var_166)
  loc_1B82472: Call 0.Method_Proc_258_139_1B845388 (1)
  loc_1B8247D: For var_10DC =  To var_166:  = var_10DC 'Integer
  loc_1B82490:   Set var_158 = var_15C(var_92)
  loc_1B82496:   Call 0.Method_Proc_258_139_1B845380 (var_166)
  loc_1B8249E:    = var_15C.Visible
  loc_1B824B0:   If (var_166 = &HFF) Then
  loc_1B824C1:     Set var_158 = var_15C(CInt(2))
  loc_1B824C7:     Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B824CF:      = var_15C.Text
  loc_1B824E2:     Set var_160 = var_204(CInt(0))
  loc_1B824E8:     Call 0.Method_Proc_258_139_1B845380 (var_2D8)
  loc_1B824F0:      = var_204.Text
  loc_1B824FD:     var_214 = Val(var_2D8)
  loc_1B8250B:     Set var_208 = var_2CC(CInt(1))
  loc_1B82511:     Call 0.Method_Proc_258_139_1B845380 (var_214)
  loc_1B82519:     var_18C = CVar(var_2CC) 'Address
  loc_1B82520:     Proc_6_7_F26918(var_1AC)
  loc_1B82532:     Set var_2D0 = var_2D4(var_92)
  loc_1B82538:     Call 0.Method_Proc_258_139_1B845380 (var_514)
  loc_1B82540:     var_18C = var_2D4.Tag
  loc_1B82560:     Set var_2FC = var_3E4(var_92)
  loc_1B82566:     Call 0.Method_Proc_258_139_1B845380 (var_7E4)
  loc_1B8256E:      = var_3E4.Tag
  loc_1B8257B:     var_A58 = Val(var_7E4)
  loc_1B8258B:     Set var_3E8 = var_3F0(var_92)
  loc_1B82591:     Call 0.Method_Proc_258_139_1B845380 (var_90C)
  loc_1B825AB:     Set var_3F4 = var_438(var_92)
  loc_1B825B1:     Call 0.Method_Proc_258_139_1B845380 (var_9A8)
  loc_1B825B9:      = var_438.Tag
  loc_1B825CB:     Set var_4BC = var_4C0(var_92)
  loc_1B825D1:     Call 0.Method_Proc_258_139_1B845380 (var_A2C)
  loc_1B825D9:      = var_4C0.Tag
  loc_1B825EB:     Set var_508 = var_50C(var_92)
  loc_1B825F1:     Call 0.Method_Proc_258_139_1B845380 (var_A70)
  loc_1B825F9:      = var_50C.Text
  loc_1B82606:     var_A60 = Val(var_A70)
  loc_1B82616:     Set var_510 = var_7D8(var_92)
  loc_1B8261C:     Call 0.Method_Proc_258_139_1B845380 (var_A74)
  loc_1B82631:     var_A68 = Val(var_A74)
  loc_1B82641:     Set var_7DC = var_7E0(var_92)
  loc_1B82647:     Call 0.Method_Proc_258_139_1B845380 (var_A78)
  loc_1B8265C:     var_109C = Val(var_A78)
  loc_1B8266D:     Proc_6_7_F26918(var_534, Date)
  loc_1B82676:     Set var_8F8 = Me.TopCtrl1
  loc_1B8267C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_109C)
  loc_1B8268A:     var_5D4 = "E"
  loc_1B8269F:     var_A7C = CStr(var_594)
  loc_1B826BE:     Set var_9A0 = var_9A4(CInt(9))
  loc_1B826C4:     Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B826CC:     var_654 = CVar(var_9A4) 'Address
  loc_1B826D3:     Proc_6_7_F26918(var_674)
  loc_1B826E5:     Set var_A50 = var_BD4(var_92)
  loc_1B826EB:     Call 0.Method_Proc_258_139_1B845380 (var_A80)
  loc_1B826F3:     var_654 = var_BD4.Tag
  loc_1B8270C:     var_20C = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode) Values ('" & var_164
  loc_1B82713:     var_274 = var_20C & "',"
  loc_1B8271B:     var_298 = CStr(var_92)
  loc_1B82759:     var_22C = CVar(var_274 & var_298 & ",'" & global_184 & "'," & CStr(var_214) & ",") & var_1AC & ",'" 
  loc_1B82769:     var_2E8 = var_22C & Trim(CVar(var_514)) & "'," 
  loc_1B827C1:     var_3E0 = var_2E8 & CVar(var_3F0.Caption) & ",'" & CVar(var_90C) & "','" & CVar(var_9A8) & "','" & CVar(var_A2C) & "'," & CVar(var_7D8.Text) 
  loc_1B8281C:     var_614 = var_3E0 & "," & CVar(var_7E0.Caption) & "," & CVar(var_109C) & ",'" & CVar(MemVar_1F950C8) & "'," & var_534 & ",'" & IIf((var_A7C = "Add"), "A", var_5D4) 
  loc_1B82825:     var_634 = var_614 & "'," 
  loc_1B82855:     var_734 = var_634 & var_674 & ",'" & CVar(var_A80) & "','" & CVar(global_76) 
  loc_1B82868:     var_774 = var_734 & "','N','" & CVar(MemVar_1F95070) 
  loc_1B82875:     var_A84 = CStr(var_774 & "')")
  loc_1B8287F:     unk_5B2155.Execute var_A84, var_7B4, -1
  loc_1B82949:   End If
  loc_1B8294C: Next var_10DC 'Integer
  loc_1B8295C: If (global_240 = "Y") Then
  loc_1B82968:   Set var_158 = 1(var_92)
  loc_1B8296E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B82984:   For var_10E0 =  To CInt((CLng() - 1)):  = var_10E0 'Integer
  loc_1B8299F:     Set var_158 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B829A5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B829DD:     Set var_15C = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B829E3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> vbNullString))
  loc_1B82A1C:     If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1B82A22:       Proc_6_104_ED68A8(var_18C)
  loc_1B82A3C:       Set var_158 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1B82A42:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B82A78:       var_1EC = CVar("Update CashRegData Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_18C & ",U_AE1='E' where docid='" 
  loc_1B82A9A:       unk_5B2155.Execute CStr(var_1EC & CVar(CStr(var_22C)) & "'"), var_2E8, -1
  loc_1B82AC2:     End If
  loc_1B82AC5:   Next var_10E0 'Integer
  loc_1B82ACA: End If
  loc_1B82AD5: If (global_304 = "Room Service") Then
  loc_1B82ADB:   var_19C = 0
  loc_1B82B0B:   unk_5B2155.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_76 & "'", var_18C, -1
  loc_1B82B13:   var_158 = var_158.Fields
  loc_1B82B1B:   var_19C = var_15C.Item(var_15C)
  loc_1B82B32:   var_1BC = " BILL NO.-"
  loc_1B82B37:   var_1EC = (Trim(CVar(var_160)) + CVar(CLng(4)))
  loc_1B82B40:   var_22C = (var_1EC + " ")
  loc_1B82B52:   Set var_204 = var_208(CInt(0))
  loc_1B82B58:   Call 0.Method_Proc_258_139_1B845380 (var_274, var_22C)
  loc_1B82B60:   var_160 = var_208.Text
  loc_1B82B6B:   var_24C = ( + CVar(var_274))
  loc_1B82B70:   var_12C = CStr(var_1EC & CVar(CStr(var_22C)))
  loc_1B82B9C:   var_152 = (var_152 + 1)
  loc_1B82BB3:   Call 0.Method_Proc_258_139_1B845380 (var_298)
  loc_1B82BCE:   Set var_160 = var_204(CInt(0))
  loc_1B82BD4:   Call 0.Method_Proc_258_139_1B845380 (var_514)
  loc_1B82BDC:    = var_204.Text
  loc_1B82BE9:   var_214 = Val(var_514)
  loc_1B82BF0:   var_18C = CVar((var_214)) 'Address
  loc_1B82C07:   Set var_208 = var_2CC(CInt(1))
  loc_1B82C0D:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B82C1C:   Proc_6_7_F26918(var_1EC & CVar(CStr(var_22C)))
  loc_1B82C2C:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B82C32:   Call 0.Method_Proc_258_139_1B845380 (CVar(var_2CC))
  loc_1B82C4D:   Set var_2FC = (var_166)
  loc_1B82C53:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B82C65:   Set var_3E4 = var_3E8(var_166)
  loc_1B82C6B:   Call 0.Method_Proc_258_139_1B845380 (var_A74)
  loc_1B82C73:    = var_3E8.Text
  loc_1B82C80:   var_A58 = Val(var_A74)
  loc_1B82C8A:   Set var_3F0 = var_A58(var_168)
  loc_1B82C90:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B82CA2:   Set var_3F4 = var_438(var_168)
  loc_1B82CA8:   Call 0.Method_Proc_258_139_1B845380 (var_A78)
  loc_1B82CB0:    = var_438.Text
  loc_1B82CBD:   var_A60 = Val(var_A78)
  loc_1B82CCE:   Set var_4BC = var_4C0(CInt(7))
  loc_1B82CD4:   Call 0.Method_Proc_258_139_1B845380 (var_A7C)
  loc_1B82CE9:   var_A68 = Val(var_A7C)
  loc_1B82CFA:   Set var_508 = var_50C(CInt(3))
  loc_1B82D00:   Call 0.Method_Proc_258_139_1B845380 (var_A80)
  loc_1B82D18:   Set var_510 = var_7D8(CInt(3))
  loc_1B82D1E:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B82D31:   Set var_7DC = var_7E0(CInt(3))
  loc_1B82D37:   Call 0.Method_Proc_258_139_1B845380 (var_A84)
  loc_1B82D3F:    = var_7E0.Tag
  loc_1B82D73:   Proc_6_7_F26918(var_5D4)
  loc_1B82D7C:   Set var_8F8 = Me.TopCtrl1
  loc_1B82D82:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Date)
  loc_1B82DA5:   var_AA8 = CStr(var_634)
  loc_1B82DCD:   var_164 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B82DE9:   var_2A0 = var_164 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'" & var_298
  loc_1B82E35:   var_1CC = CVar(var_2A0 & "'," & CStr(var_15C.Text) & ",'" & global_184 & "'," & CStr(var_214) & ",'" & MemVar_1F95070 & "','") 'String
  loc_1B82E3B:   var_1EC = var_1CC & Trim(var_18C) 
  loc_1B82E80:   var_360 = var_1EC & "'," & var_1EC & CVar(CStr(var_1EC & "',")) & ",'" & Trim(CVar(var_2D4)) & "'" & ",'','','" & CVar(var_12C) & "','" 
  loc_1B82ED8:   var_488 = var_360 & CVar(var_130) & "','Room'," & CVar(var_A58) & "," & CVar(var_4C0.Text) & "," & CVar(var_50C.Text) & ",'REST'," & "'RO','" 
  loc_1B82EFB:   var_574 = var_488 & IIf((var_A80 <> vbNullString), CVar(var_7D8), CVar(var_A84)) & "','','','',Null," & "Null,'" & CVar(MemVar_1F950C8) 
  loc_1B82F3A:   var_714 = var_574 & "'," & var_5D4 & ",'" & IIf((var_AA8 = "Add"), "A", "E") & "','" & CVar(global_76) & "')" 
  loc_1B82F48:   unk_5B2155.Execute CStr(var_714), var_734, -1
  loc_1B83039:   unk_5B2155.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_18C, -1
  loc_1B83044:   Set var_134 = var_15C(CInt(2))
  loc_1B8306A:   If (var_134.RecordCount > 0) Then
  loc_1B83099:     var_15C = var_134.Fields.Item("TaxStru")
  loc_1B830A9:     var_1AC = "Select * from taxstru where Code='" & var_15C.Value 
  loc_1B830B2:     var_1CC = var_1AC & "' Order by Sno" 
  loc_1B830B6:     var_164 = CStr(var_1CC)
  loc_1B830C0:     unk_5B2155.Execute var_164, var_1EC, -1
  loc_1B830CB:     Set var_11C = var_160
  loc_1B830E8:   Else
  loc_1B830FB:     var_18C = "System Defined Revenue is not defined"
  loc_1B83101:     MsgBox(var_18C, 0, var_1AC, var_1CC, var_1EC)
  loc_1B83117:     unk_5B2155.RollbackTrans
  loc_1B8311C:     Exit Sub
  loc_1B8311D:   End If
  loc_1B83123:   var_152 = (var_152 + 1)
  loc_1B8314A:   Call 0.Method_Proc_258_139_1B845380 (var_164, "Select GuestProf,Docid from GuestFolio where FolioNo=", var_18C, -1, var_160)
  loc_1B83152:   var_152 = var_15C.Text
  loc_1B83164:   unk_5B2155.Execute var_160 & var_164, var_15C(CInt(&HA)), var_9A0
  loc_1B8316F:   Set var_138 = var_160
  loc_1B83199:   If (var_138.RecordCount > 0) Then
  loc_1B831B6:     var_15C = var_138.Fields.Item("GuestProf")
  loc_1B831C7:     var_120 = CStr(var_15C.Value)
  loc_1B831D4:   End If
  loc_1B831E2:   Set var_158 = var_15C(CInt(2))
  loc_1B831E8:   Call 0.Method_Proc_258_139_1B845380 (var_298)
  loc_1B831F0:    = var_15C.Text
  loc_1B83203:   Set var_160 = var_204(CInt(0))
  loc_1B83209:   Call 0.Method_Proc_258_139_1B845380 (var_514)
  loc_1B83211:    = var_204.Text
  loc_1B8321E:   var_214 = Val(var_514)
  loc_1B8323C:   Set var_208 = var_2CC(CInt(1))
  loc_1B83242:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B83251:   Proc_6_7_F26918(var_1EC & CVar(CStr(var_1EC & "',")))
  loc_1B83261:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B83267:   Call 0.Method_Proc_258_139_1B845380 (CVar(var_2CC))
  loc_1B83276:   var_310 = Trim(CVar(var_2D4))
  loc_1B832A9:   Set var_3E8 = (var_166)
  loc_1B832AF:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B832C1:   Set var_3F0 = var_3F4(var_166)
  loc_1B832C7:   Call 0.Method_Proc_258_139_1B845380 (var_A74)
  loc_1B832CF:    = var_3F4.Text
  loc_1B832DC:   var_A58 = Val(var_A74)
  loc_1B832E6:   Set var_438 = var_A58(var_168)
  loc_1B832EC:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B832FE:   Set var_4BC = var_4C0(var_168)
  loc_1B83304:   Call 0.Method_Proc_258_139_1B845380 (var_A78)
  loc_1B8330C:    = var_4C0.Text
  loc_1B83319:   var_A60 = Val(var_A78)
  loc_1B8332A:   Set var_508 = var_50C(CInt(7))
  loc_1B83330:   Call 0.Method_Proc_258_139_1B845380 (var_A7C)
  loc_1B83345:   var_A68 = Val(var_A7C)
  loc_1B83356:   Set var_510 = var_7D8(CInt(3))
  loc_1B8335C:   Call 0.Method_Proc_258_139_1B845380 (var_A80)
  loc_1B83374:   Set var_7DC = var_7E0(CInt(3))
  loc_1B8337A:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B8338D:   Set var_8F8 = var_9A0(CInt(3))
  loc_1B83393:   Call 0.Method_Proc_258_139_1B845380 (var_A84)
  loc_1B8339B:    = var_9A0.Tag
  loc_1B833BC:   var_5D4 = IIf((var_A80 <> vbNullString), CVar(var_7E0), CVar(var_A84))
  loc_1B833CF:   Set var_9A4 = var_A50(CInt(&HA))
  loc_1B833D5:   Call 0.Method_Proc_258_139_1B845380 (var_AA8)
  loc_1B833DD:    = var_A50.Text
  loc_1B833F0:   Proc_6_7_F26918(var_714)
  loc_1B833F9:   Set var_BD4 = Me.TopCtrl1
  loc_1B833FF:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Date)
  loc_1B83471:   var_164 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1B83478:   var_20C = var_164 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,"
  loc_1B8347F:   var_274 = var_20C & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid) Values ("
  loc_1B83486:   var_29C = var_274 & "'"
  loc_1B8348D:   var_2A0 = var_29C & var_298
  loc_1B834A0:   var_300 = var_2A0 & "'," & CStr(var_152)
  loc_1B834CB:   var_A2C = var_300 & ",'" & global_184 & "'," & CStr(var_214) & ",'"
  loc_1B834EF:   var_26C = CVar(var_A2C & MemVar_1F95070 & "','") & Trim(CVar((var_214))) & "'," & CVar(var_A2C & MemVar_1F95070 & "','") & Trim(CVar((var_214))) & CVar(CStr(CVar(var_A2C & MemVar_1F95070 & "','") & Trim(CVar((var_214))) & "',")) 
  loc_1B8353E:   var_3C0 = var_26C & ",'" & var_310 & "'" & ",'" & CVar(var_120) & "','','" & CVar(var_12C) & "','" & var_134.Fields.Item("Code").Value 
  loc_1B83590:   var_4E4 = var_3C0 & "','Room'," & CVar(var_A58) & "," & CVar(var_50C.Text) & "," & CVar(var_7D8.Text) & ",'" & CVar(global_188) 
  loc_1B835B8:   var_574 = var_4E4 & "'," & "'" & CVar(global_192) & "','" 
  loc_1B835F7:   var_6D4 = var_574 & var_5D4 & "'," & CVar(var_AA8) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," 
  loc_1B83634:   var_8A4 = var_6D4 & var_714 & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") & "','" & CVar(global_76) & "','" & var_138.Fields.Item("DocID").Value 
  loc_1B8364B:   unk_5B2155.Execute CStr(var_8A4 & "')"), var_8C4, -1
  loc_1B83745:   Set var_158 = var_15C(CInt(2))
  loc_1B8374B:   Call 0.Method_Proc_258_139_1B845380 (var_300)
  loc_1B83753:   var_D0C = var_15C.Text
  loc_1B83766:   Set var_160 = var_204(CInt(0))
  loc_1B8376C:   Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B83774:    = var_204.Text
  loc_1B83781:   var_10B4 = Val(var_164)
  loc_1B837A2:   Set var_208 = var_2CC(CInt(1))
  loc_1B837A8:   Call 0.Method_Proc_258_139_1B845380 (var_514)
  loc_1B837B0:    = var_2CC.Text
  loc_1B837C0:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B837C6:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B837D5:   var_1EC = Trim(CVar(var_2D4))
  loc_1B837EC:   var_2FC = var_134.Fields
  loc_1B837FC:   var_350 = var_2FC.Item("Code").Value
  loc_1B83808:   Set var_3E8 = (var_166)
  loc_1B8380E:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B83820:   Set var_3F0 = var_3F4(var_166)
  loc_1B83826:   Call 0.Method_Proc_258_139_1B845380 (var_20C)
  loc_1B8382E:    = var_3F4.Text
  loc_1B83845:   Set var_438 = Val(var_20C)(var_168)
  loc_1B8384B:   Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B8385D:   Set var_4BC = var_4C0(var_168)
  loc_1B83863:   Call 0.Method_Proc_258_139_1B845380 (var_274)
  loc_1B8386B:    = var_4C0.Text
  loc_1B83878:   var_10C4 = Val(var_274)
  loc_1B83889:   Set var_508 = var_50C(CInt(7))
  loc_1B8388F:   Call 0.Method_Proc_258_139_1B845380 (var_298)
  loc_1B83897:   var_10C4 = var_50C.Text
  loc_1B838A4:   var_10CC = Val(var_298)
  loc_1B838B5:   Set var_510 = var_7D8(CInt(3))
  loc_1B838BB:   Call 0.Method_Proc_258_139_1B845380 (var_29C)
  loc_1B838C3:   var_10CC = var_7D8.Text
  loc_1B838D3:   Set var_7DC = var_7E0(CInt(3))
  loc_1B838D9:   Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B838EC:   Set var_8F8 = var_9A0(CInt(3))
  loc_1B838F2:   Call 0.Method_Proc_258_139_1B845380 (var_2A0)
  loc_1B838FA:    = var_9A0.Tag
  loc_1B8391B:   var_24C = IIf((var_29C <> vbNullString), CVar(var_7E0), CVar(var_2A0))
  loc_1B8392E:   Set var_9A4 = var_A50(CInt(&HA))
  loc_1B83934:   Call 0.Method_Proc_258_139_1B845380 (var_A78)
  loc_1B8393C:    = var_A50.Text
  loc_1B83944:   var_26C = Date
  loc_1B8394C:   var_2E8 = Date
  loc_1B83954:   var_2F8 = Date
  loc_1B8395D:   Set var_BD4 = Me.TopCtrl1
  loc_1B83963:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1B83995:   var_340 = IIf((CStr(var_310) = "Add"), "A", "E")
  loc_1B839BC:   var_360 = var_138.Fields.Item("DocID").Value
  loc_1B839C6:   var_CA8 = 0
  loc_1B839D1:   var_C40 = 0
  loc_1B839E4:   var_BD8 = 0
  loc_1B839EF:   var_B70 = 0
  loc_1B83A2C:   var_A84 = vbNullString
  loc_1B83A35:   var_A80 = vbNullString
  loc_1B83A3E:   var_A7C = vbNullString
  loc_1B83A77:   var_A70 = "Room"
  loc_1B83A8B:   var_9A8 = vbNullString
  loc_1B83A94:   var_90C = vbNullString
  loc_1B83AD8:   Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_300, var_152, global_184, CLng(var_10B4), MemVar_1F95070, CStr(Trim(CVar((var_10B4)))), CDate(var_514))
  loc_1B83B77: Else
  loc_1B83B85:   Set var_158 = var_15C(CInt(6))
  loc_1B83B8B:   Call 0.Method_Proc_258_139_1B845380 (var_164, CStr(var_1EC), var_90C, var_9A8)
  loc_1B83B93:   var_12C = var_15C.Text
  loc_1B83BAF:   If (CDbl(Val(var_164)) > CDbl(0)) Then
  loc_1B83BC2:     CStr(var_350) = "CASH RECD. "(var_164).Caption
  loc_1B83BD9:     var_298 = var_A70 & var_164 & " " & "BILL NO.-"
  loc_1B83BF1:     Set var_15C = var_160(CInt(0))
  loc_1B83BF7:     Call 0.Method_Proc_258_139_1B845380 (var_29C, var_298 & " ")
  loc_1B83BFF:     var_10BC = var_160.Text
  loc_1B83C31:     Set var_158 = var_15C(CInt(2))
  loc_1B83C37:     Call 0.Method_Proc_258_139_1B845380 (var_298)
  loc_1B83C3F:      = var_15C.Text
  loc_1B83C52:     Set var_160 = var_204(CInt(0))
  loc_1B83C58:     Call 0.Method_Proc_258_139_1B845380 (var_300)
  loc_1B83C60:      = var_204.Text
  loc_1B83C6D:     var_214 = Val(var_300)
  loc_1B83C7B:     var_1AC = Trim(CVar((var_214)))
  loc_1B83C8B:     Set var_208 = var_2CC(CInt(1))
  loc_1B83C91:     Call 0.Method_Proc_258_139_1B845380 ()
  loc_1B83C99:     var_23C = CVar(var_2CC) 'Address
  loc_1B83CA0:     Proc_6_7_F26918(var_24C)
  loc_1B83CAC:     Set var_2D0 = var_23C(var_166)
  loc_1B83CB2:     Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B83CC4:     Set var_2D4 = var_2FC(var_166)
  loc_1B83CCA:     Call 0.Method_Proc_258_139_1B845380 (var_9A8)
  loc_1B83CD2:      = var_2FC.Text
  loc_1B83CDF:     var_A58 = Val(var_9A8)
  loc_1B83CE9:     Set var_3E4 = var_A58(var_168)
  loc_1B83CEF:     Call 0.Method_Proc_258_139_1B845388 ()
  loc_1B83D01:     Set var_3E8 = var_3F0(var_168)
  loc_1B83D07:     Call 0.Method_Proc_258_139_1B845380 (var_A2C)
  loc_1B83D0F:      = var_3F0.Text
  loc_1B83D1C:     var_A60 = Val(var_A2C)
  loc_1B83D2D:     Set var_3F4 = var_438(CInt(7))
  loc_1B83D33:     Call 0.Method_Proc_258_139_1B845380 (var_A70)
  loc_1B83D48:     var_A68 = Val(var_A70)
  loc_1B83D59:     Set var_4BC = var_4C0(CInt(3))
  loc_1B83D5F:     Call 0.Method_Proc_258_139_1B845380 (var_A74)
  loc_1B83D7A:     Proc_6_7_F26918(var_574)
  loc_1B83D83:     Set var_508 = Me.TopCtrl1
  loc_1B83D89:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Date)
  loc_1B83DD4:     var_164 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B83DE9:     var_29C = var_164 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'"
  loc_1B83DF0:     var_2A0 = var_29C & var_298
  loc_1B83E3F:     var_26C = CVar(var_2A0 & "',1,'" & global_184 & "'," & CStr(var_214) & ",'" & MemVar_1F95070 & "','") & var_1AC & "'," & var_24C 
  loc_1B83E96:     var_370 = var_26C & ",'','','" & CVar(var_29C) & "','" & CVar(var_130) & "','Cash'," & CVar(var_A58) & "," & CVar(var_438.Text) & "," 
  loc_1B83EE9:     var_498 = var_370 & CVar(var_4C0.Tag) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) & "','" & CVar(var_A74) 
  loc_1B83F25:     var_654 = var_498 & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_574 & ",'" & IIf((CStr(var_5D4) = "Add"), "A", "E") 
  loc_1B83F52:     unk_5B2155.Execute CStr(var_654 & "','" & CVar(global_76) & "')"), var_6D4, -1
  loc_1B84000:   End If
  loc_1B84000: End If
  loc_1B84004: Set var_158 = Me.TopCtrl1
  loc_1B8400A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_50C)
  loc_1B84023: If (CStr() = "Add") Then
  loc_1B8403A:   var_164 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1B84060:   var_1CC = CVar(var_164 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_184 & "' And VP.Date_From<=") 'String
  loc_1B84071:   Set var_158 = var_15C(CInt(1))
  loc_1B84077:   Call 0.Method_Proc_258_139_1B845380 (var_2A0, var_1CC, var_23C)
  loc_1B8407F:   -1 = var_15C.Text
  loc_1B8408D:   Proc_6_7_F26918(var_1AC, CVar(var_2A0))
  loc_1B840AC:   unk_5B2155.Execute CStr(var_160 & var_1AC & " Order By VP.Date_From DESC"), , 
  loc_1B840B7:   Set var_88 = var_160
  loc_1B840F5:   If (var_88.RecordCount > 0) Then
  loc_1B84106:     Set var_158 = var_15C(CInt(0))
  loc_1B8410C:     Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B84114:      = var_15C.Text
  loc_1B84121:     var_214 = Val(var_164)
  loc_1B84136:     var_160 = var_88.Fields
  loc_1B84146:     var_18C = var_160.Item("V_Type").Value
  loc_1B84171:     Proc_6_7_F26918(var_23C, CVar(var_88.Fields.Item("Date_From")))
  loc_1B8418B:     var_20C = CStr(var_214)
  loc_1B841AB:     var_2C8 = "Update Voucher_Prefix Set Start_Srl_No=" & var_20C & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1B841D6:     unk_5B2155.Execute CStr(CVar(var_2C8 & "') and V_Type='") & var_18C & "' and Date_From=" & var_23C), var_26C, -1
  loc_1B84210:   End If
  loc_1B84210: End If
  loc_1B84214: Set var_158 = Me.TopCtrl1
  loc_1B8421A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_2D0)
  loc_1B84233: If (CStr(var_214) = "Add") Then
  loc_1B84259:   var_164 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_1B84269:   Call 0.Method_arg_50 (var_20C, var_164 & "' AND ENAME='", var_18C, -1, var_158)
  loc_1B84279:   var_29C = var_15C & var_20C & "' "
  loc_1B84282:   unk_5B2155.Execute var_29C, 0, var_160
  loc_1B8428A:   var_1AC = var_158.Fields
  loc_1B84292:    = var_15C.Item()
  loc_1B8429A:    = var_160.Value
  loc_1B842C7:   If (var_1AC > 0) Then
  loc_1B842E8:     Set var_158 = var_15C(CInt(2))
  loc_1B842EE:     Call 0.Method_Proc_258_139_1B845380 (var_164, "UPDATE LASTVOU  SET DOCID='", var_18C)
  loc_1B842F6:     -1 = var_15C.Text
  loc_1B842FF:     var_20C = var_160 & var_164
  loc_1B8431D:     Call 0.Method_arg_50 (var_29C)
  loc_1B84336:     unk_5B2155.Execute var_20C & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='" & var_29C & "'  ", , 
  loc_1B8435D:   Else
  loc_1B84371:     var_164 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE) VALUES ('" & MemVar_1F950C8
  loc_1B84381:     Call 0.Method_arg_50 (var_20C, var_164 & "','", var_23C)
  loc_1B8438A:     var_298 = -1 & var_20C
  loc_1B843A2:     Set var_158 = var_15C(CInt(2))
  loc_1B843A8:     Call 0.Method_Proc_258_139_1B845380 (var_29C, var_20C & "' WHERE UNAME='" & MemVar_1F950C8 & "','")
  loc_1B843B0:     var_160 = var_15C.Text
  loc_1B843DF:     Proc_6_7_F26918(var_1AC, Date)
  loc_1B843EB:     var_17C = ",'A')"
  loc_1B843FE:     unk_5B2155.Execute CStr(CVar(var_29C & "','" & MemVar_1F95078 & "',") & var_1AC & var_17C), , 
  loc_1B84432:   End If
  loc_1B84432: End If
  loc_1B84438: unk_5B2155.CommitTrans
  loc_1B8443F: var_8A = 0
  loc_1B84450: Set var_158 = var_15C(CInt(2))
  loc_1B84456: Call 0.Method_Proc_258_139_1B845380 (var_164)
  loc_1B8445E: var_8A = var_15C.Text
  loc_1B84472: var_8A = 0
  loc_1B84480: Me.Requery -1
  loc_1B844AA: Me.Find "SearchCode ='" & var_164 & "'", 0, 1
  loc_1B844C1: If (global_188 <> "FAST") Then
  loc_1B844CF:   Me.Requery -1
  loc_1B844D4: End If
  loc_1B844F7: Call Proc_258_148_107A830(Proc_5_1_100EC1C("INI", Me, global_116), var_17C)
  loc_1B84502: Call Proc_258_145_1BA3A9C(var_8A)
  loc_1B84507: Call Proc_258_133_122007C()
  loc_1B84511: Set var_88 = Nothing
  loc_1B84519: Set var_138 = Nothing
  loc_1B8451C: Exit Sub
  loc_1B8451D: ' Referenced from: 1B7F5DC
  loc_1B84523: If (var_8A = &HFF) Then
  loc_1B8452C:   unk_5B2155.RollbackTrans
  loc_1B84531: End If
  loc_1B84531: Proc_6_60_E63754()
  loc_1B84536: Exit Sub
End Sub

Public Sub Proc_258_140_134E0B0(arg_C) '134E0B0
  'Data Table: 5B2118
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_88 As Single
  Dim var_8C As Single
  Dim var_EC As Image
  loc_134D8B1: Set var_94 = CInt(arg_C)(var_96)
  loc_134D8B7: Call 0.Method_Proc_258_140_134E0B08 ()
  loc_134D8C3: If ( <= var_96) Then
  loc_134D8D2:   (0).Enabled = 
  loc_134D8E6:   (&HFF).Visible = 
  loc_134D8FE:   Set var_94 = var_9C(CInt(arg_C))
  loc_134D904:   Call 0.Method_Proc_258_140_134E0B00 (var_A0)
  loc_134D90C:    = var_9C.Top
  loc_134D91D:   Set var_A4 = ((var_A0 + CDbl(&H64)))
  loc_134D923:   var_A4.Y1 = 
  loc_134D941:   Set var_94 = var_9C(CInt(arg_C))
  loc_134D947:   Call 0.Method_Proc_258_140_134E0B00 (var_A0)
  loc_134D94F:    = var_9C.Top
  loc_134D960:   Set var_A4 = ((var_A0 + CDbl(&H64)))
  loc_134D966:   var_A4.Y2 = 
  loc_134D978:   var_88 = CDbl(225)
  loc_134D988:    = var_88(var_A8).Y1
  loc_134D99A:    = (var_A0).Y2
  loc_134D9A6:   var_8C = (var_A0 - var_A8)
  loc_134D9CC:   global_84 = (Sqr(((var_88 * var_88) + (var_8C * var_8C))) / CDbl(2))
  loc_134D9EA:   global_84 = (CDbl(585) / CDbl(2))(var_A8).Y2
  loc_134D9FC:    = var_8C(var_A0).Y1
  loc_134DA0F:   global_92 = ((var_A0 + var_A8) / CDbl(2))
  loc_134DA25:   global_92(&HFF).Enabled = 
  loc_134DA2D: End If
  loc_134DA31: var_AA = arg_C 'Byte
  loc_134DA3E: If (var_AA = CByte(0)) Then
  loc_134DA51:   Set var_94 = var_8E(var_96)
  loc_134DA57:   Call 0.Method_Proc_258_140_134E0B08 (CInt(arg_C))
  loc_134DA62:   For var_AE =  To var_96:  = var_AE 'Integer
  loc_134DA77:     Set var_94 = var_A4(2)
  loc_134DA7D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DA88:     Set var_9C = 
  loc_134DA8E:      = var_9C.ControlDefault
  loc_134DA96:      = var_A4.Picture
  loc_134DAAB:     Set var_E8 = var_EC(var_8E)
  loc_134DAB1:     Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DAB9:     var_EC.Picture = 
  loc_134DAD7:   Next var_AE 'Integer
  loc_134DAEB:   Set var_94 = var_9C(CInt(arg_C))
  loc_134DAF1:   Call 0.Method_Proc_258_140_134E0B00 (&HFF)
  loc_134DAF9:   var_9C.FontBold = 
  loc_134DB08: Else
  loc_134DB11:   If (var_AA = CByte(1)) Then
  loc_134DB24:     Set var_94 = var_8E(var_96)
  loc_134DB2A:     Call 0.Method_Proc_258_140_134E0B08 (CInt(arg_C))
  loc_134DB35:     For var_F4 =  To var_96:    = var_F4 'Integer
  loc_134DB4A:       Set var_94 = var_A4(2)
  loc_134DB50:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DB5B:       Set var_9C = 
  loc_134DB61:        = var_9C.ControlDefault
  loc_134DB69:        = var_A4.Picture
  loc_134DB7E:       Set var_E8 = var_EC(var_8E)
  loc_134DB84:       Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DB8C:       var_EC.Picture = 
  loc_134DBAA:     Next var_F4 'Integer
  loc_134DBBE:     Set var_94 = var_9C(CInt(arg_C))
  loc_134DBC4:     Call 0.Method_Proc_258_140_134E0B00 (&HFF)
  loc_134DBCC:     var_9C.FontBold = 
  loc_134DBED:     Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134DBF3:     Call 0.Method_Proc_258_140_134E0B00 (&HFF0000)
  loc_134DBFB:     var_9C.ForeColor = 
  loc_134DC16:     Set var_94 = var_A4(1)
  loc_134DC1C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DC2D:      = .ControlDefault
  loc_134DC35:      = var_A4.Picture
  loc_134DC50:     Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134DC56:     Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DC5E:     var_EC.Picture = 
  loc_134DC7C:   Else
  loc_134DC85:     If (var_AA = CByte(2)) Then
  loc_134DC98:       Set var_94 = var_8E(var_96)
  loc_134DC9E:       Call 0.Method_Proc_258_140_134E0B08 (CInt(arg_C))
  loc_134DCA9:       For var_F8 =  To var_96:      = var_F8 'Integer
  loc_134DCBE:         Set var_94 = var_A4(2)
  loc_134DCC4:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DCCF:         Set var_9C = 
  loc_134DCD5:          = var_9C.ControlDefault
  loc_134DCDD:          = var_A4.Picture
  loc_134DCF2:         Set var_E8 = var_EC(var_8E)
  loc_134DCF8:         Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DD00:         var_EC.Picture = 
  loc_134DD1E:       Next var_F8 'Integer
  loc_134DD32:       Set var_94 = var_9C(CInt(arg_C))
  loc_134DD38:       Call 0.Method_Proc_258_140_134E0B00 (&HFF)
  loc_134DD40:       var_9C.FontBold = 
  loc_134DD61:       Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134DD67:       Call 0.Method_Proc_258_140_134E0B00 (&HFF0000)
  loc_134DD6F:       var_9C.ForeColor = 
  loc_134DD8A:       Set var_94 = var_A4(1)
  loc_134DD90:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DDA1:        = .ControlDefault
  loc_134DDA9:        = var_A4.Picture
  loc_134DDC4:       Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134DDCA:       Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DDD2:       var_EC.Picture = 
  loc_134DDF0:     Else
  loc_134DDF9:       If (var_AA = CByte(3)) Then
  loc_134DE0C:         Set var_94 = var_8E(var_96)
  loc_134DE12:         Call 0.Method_Proc_258_140_134E0B08 (CInt(arg_C))
  loc_134DE1D:         For var_FC =  To var_96:        = var_FC 'Integer
  loc_134DE32:           Set var_94 = var_A4(2)
  loc_134DE38:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DE43:           Set var_9C = 
  loc_134DE49:            = var_9C.ControlDefault
  loc_134DE51:            = var_A4.Picture
  loc_134DE66:           Set var_E8 = var_EC(var_8E)
  loc_134DE6C:           Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DE74:           var_EC.Picture = 
  loc_134DE92:         Next var_FC 'Integer
  loc_134DEA6:         Set var_94 = var_9C(CInt(arg_C))
  loc_134DEAC:         Call 0.Method_Proc_258_140_134E0B00 (&HFF)
  loc_134DEB4:         var_9C.FontBold = 
  loc_134DED5:         Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134DEDB:         Call 0.Method_Proc_258_140_134E0B00 (&HFF0000)
  loc_134DEE3:         var_9C.ForeColor = 
  loc_134DEFE:         Set var_94 = var_A4(1)
  loc_134DF04:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DF15:          = .ControlDefault
  loc_134DF1D:          = var_A4.Picture
  loc_134DF38:         Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134DF3E:         Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DF46:         var_EC.Picture = 
  loc_134DF64:       Else
  loc_134DF6D:         If (var_AA = CByte(4)) Then
  loc_134DF80:           Set var_94 = var_8E(var_96)
  loc_134DF86:           Call 0.Method_Proc_258_140_134E0B08 (CInt(arg_C))
  loc_134DF91:           For var_100 =  To var_96:          = var_100 'Integer
  loc_134DFA6:             Set var_94 = var_A4(2)
  loc_134DFAC:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134DFB7:             Set var_9C = 
  loc_134DFBD:              = var_9C.ControlDefault
  loc_134DFC5:              = var_A4.Picture
  loc_134DFDA:             Set var_E8 = var_EC(var_8E)
  loc_134DFE0:             Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134DFE8:             var_EC.Picture = 
  loc_134E006:           Next var_100 'Integer
  loc_134E020:           Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134E026:           Call 0.Method_Proc_258_140_134E0B00 (&HFF0000)
  loc_134E02E:           var_9C.ForeColor = 
  loc_134E049:           Set var_94 = var_A4(1)
  loc_134E04F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134E060:            = .ControlDefault
  loc_134E068:            = var_A4.Picture
  loc_134E083:           Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134E089:           Call 0.Method_Proc_258_140_134E0B00 (var_E4)
  loc_134E091:           var_EC.Picture = 
  loc_134E0AC:         End If
  loc_134E0AC:       End If
  loc_134E0AC:     End If
  loc_134E0AC:   End If
  loc_134E0AC: End If
  loc_134E0AC: Exit Sub
End Sub

Public Sub Proc_258_141_12F9380(arg_C, arg_10) '12F9380
  'Data Table: 5B2118
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_12F8C78: Set var_88 = ()
  loc_12F8C7E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_12F8C8D: var_B8 = CVar((CLng() - 1)) 'Long
  loc_12F8C9D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_12F8CAE: var_F8 = CVar(CStr((CLng(var_B8) - 1))) 'String
  loc_12F8CB5: LateIdCallSt
  loc_12F8CC9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8CD8: var_108 = CVar((CLng(var_F8) - 1)) 'Long
  loc_12F8CE0: var_128 = CVar(CLng(4)) 'Long
  loc_12F8CF9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(4)))
  loc_12F8D0B: LateIdCallSt
  loc_12F8D1F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8D2E: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F8D36: var_128 = CVar(CLng(&HB)) 'Long
  loc_12F8D4F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HB)))
  loc_12F8D61: LateIdCallSt
  loc_12F8D75: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8D84: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F8D8C: var_128 = CVar(CLng(3)) 'Long
  loc_12F8DA5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(3)))
  loc_12F8DB7: LateIdCallSt
  loc_12F8DCB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8DDA: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F8DE2: var_128 = CVar(CLng(5)) 'Long
  loc_12F8DFB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(5)))
  loc_12F8E0D: LateIdCallSt
  loc_12F8E21: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8E30: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F8E38: var_128 = CVar(CLng(6)) 'Long
  loc_12F8E51: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_12F8E63: LateIdCallSt
  loc_12F8E77: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8E86: var_D8 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F8E8E: var_108 = CVar(CLng(7)) 'Long
  loc_12F8EC3: LateIdCallSt
  loc_12F8ED9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8EE8: var_B8 = CVar((CLng(CVar(CStr(Format(arg_C, "0.00")))) - 1)) 'Long
  loc_12F8EF0: var_D8 = CVar(CLng(8)) 'Long
  loc_12F8EFE: LateIdCallSt
  loc_12F8F0C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8F1B: var_B8 = CVar((CLng("0.00") - 1)) 'Long
  loc_12F8F23: var_D8 = CVar(CLng(9)) 'Long
  loc_12F8F28: var_108 = "0.00"
  loc_12F8F31: LateIdCallSt
  loc_12F8F3F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8F4E: var_108 = CVar((CLng(var_108) - 1)) 'Long
  loc_12F8F56: var_128 = CVar(CLng(&H15)) 'Long
  loc_12F8F6F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H15)))
  loc_12F8F81: LateIdCallSt
  loc_12F8F95: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8FA4: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F8FAC: var_128 = CVar(CLng(&H16)) 'Long
  loc_12F8FC5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H16)))
  loc_12F8FD7: LateIdCallSt
  loc_12F8FEB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F8FFA: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F9002: var_128 = CVar(CLng(&H17)) 'Long
  loc_12F901B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H17)))
  loc_12F902D: LateIdCallSt
  loc_12F9041: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F9050: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F9058: var_128 = CVar(CLng(&H13)) 'Long
  loc_12F9071: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H13)))
  loc_12F9083: LateIdCallSt
  loc_12F9097: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F90A6: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F90AE: var_128 = CVar(CLng(&H14)) 'Long
  loc_12F90C7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H14)))
  loc_12F90D9: LateIdCallSt
  loc_12F90ED: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F90FC: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F9104: var_128 = CVar(CLng(&H18)) 'Long
  loc_12F911D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H18)))
  loc_12F912F: LateIdCallSt
  loc_12F9143: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F9152: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F915A: var_128 = CVar(CLng(&H1A)) 'Long
  loc_12F9173: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1A)))
  loc_12F9185: LateIdCallSt
  loc_12F9199: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F91A8: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F91B0: var_128 = CVar(CLng(&H1B)) 'Long
  loc_12F91C9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1B)))
  loc_12F91DB: LateIdCallSt
  loc_12F91EF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F91FE: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F9206: var_128 = CVar(CLng(&H1C)) 'Long
  loc_12F921F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1C)))
  loc_12F9231: LateIdCallSt
  loc_12F9245: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F9254: var_B8 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F925C: var_D8 = CVar(CLng(&H19)) 'Long
  loc_12F926A: LateIdCallSt
  loc_12F9278: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F9287: var_B8 = CVar((CLng("N") - 1)) 'Long
  loc_12F928F: var_D8 = CVar(CLng(&H1E)) 'Long
  loc_12F9294: var_108 = "Free"
  loc_12F929D: LateIdCallSt
  loc_12F92AB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F92BA: var_108 = CVar((CLng(var_108) - 1)) 'Long
  loc_12F92C2: var_128 = CVar(CLng(&H1F)) 'Long
  loc_12F92DB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1F)))
  loc_12F92ED: LateIdCallSt
  loc_12F9301: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F9310: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F9318: var_128 = CVar(CLng(&H10)) 'Long
  loc_12F9331: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H10)))
  loc_12F9343: LateIdCallSt
  loc_12F9357: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F9366: var_B8 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) + 1)) 'Long
  loc_12F936E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(arg_10)))
  loc_12F9378: Set var_88 = Nothing 
  loc_12F937C: Exit Sub
  loc_12F937D: ThisVCallI2
End Sub

Public Sub Proc_258_142_E54EF0
  'Data Table: 5B2118
  loc_E54ECC: If ((CLng(arg_10) = -3) Or ((arg_14 Mod CInt(&H10)) = 0)) Then
  loc_E54ED7:   Me.Enabled = False
  loc_E54EDE: Else
  loc_E54EE5:   Me.Enabled = True
  loc_E54EE9: End If
  loc_E54EE9: Proc_258_142_E54EF0 = 
End Sub

Public Sub Proc_258_143_E62948
  'Data Table: 5B2118
  loc_E62925: If (((arg_10 = CInt(&H10)) Or (CLng(arg_10) = -1)) Or ((CLng(arg_10) = -3) And (arg_14 < CInt(&H10)))) Then
  loc_E62930:   Me.Enabled = False
  loc_E62937: Else
  loc_E6293E:   Me.Enabled = True
  loc_E62942: End If
  loc_E62942: Proc_258_143_E62948 = 
End Sub

Public Sub Proc_258_144_18E8774(arg_C) '18E8774
  'Data Table: 5B2118
  Dim var_9A As Integer
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim var_C4 As String
  Dim var_158 As Variant
  Dim var_180 As String
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_A0 As Fields15
  Dim var_134 As Variant
  Dim var_1F4 As Double
  Dim var_92 As Integer
  Dim var_16C As TextBox
  Dim var_184 As Fields15
  Dim var_1D8 As Field20
  Dim unk_5B2155 As Connection15
  Dim var_98 As Recordset15
  loc_18E5D13: var_9A = arg_C
  loc_18E5D1C: If (var_9A = 0) Then
  loc_18E5D23:   Set var_A0 = (var_9A)
  loc_18E5D29:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_18E5D42:   If (CLng() = CLng(2)) Then
  loc_18E5D93:     Set var_A0 = var_C0(arg_C)
  loc_18E5D99:     Call 0.Method_Proc_258_144_18E87740 (var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18E5DA1:     var_B4 = var_C0.Text
  loc_18E5DB9:     If ( Or (var_C4 = vbNullString)) Then
  loc_18E5DC0:       Set var_A0 = ()
  loc_18E5DC6:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E5DEC:       LateIdCallSt
  loc_18E5E02:       Set var_A0 = CVar(CLng())(CVar(CLng(2))(vbNullString))
  loc_18E5E08:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E5E11:       var_D4 = CVar(CLng()) 'Long
  loc_18E5E28:       Set var_C0 = CVar(CLng(1))(vbNullString)
  loc_18E5E2E:       LateIdCallSt
  loc_18E5E43:     Else
  loc_18E5E4D:       Set var_A0 = var_C0(global_224)
  loc_18E5E53:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_D4)
  loc_18E5E6D:       Set var_C0 = CVar(CLng())(CVar(CLng(1)))
  loc_18E5E73:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E5E8D:       Set var_138 = ( <> CStr())(global_224)
  loc_18E5E93:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E5EAD:       Set var_16C = CVar(CLng())(CVar(CLng(1)))
  loc_18E5EB3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E5EC7:       Set var_184 = (( = CStr()))
  loc_18E5ECD:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E5EE7:       Set var_1D8 = CVar(CLng())(CVar(CLng(1)))
  loc_18E5EED:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E5F29:       If ( Or ( And (CStr() = vbNullString))) Then
  loc_18E5F30:         Set var_138 = ()
  loc_18E5F36:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E5F88:         LateIdCallSt
  loc_18E5FA8:         Set var_138 = CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_18E5FAE:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E5FB7:         var_E4 = CVar(CLng()) 'Long
  loc_18E6000:         LateIdCallSt
  loc_18E6050:         global_308 = CStr(Me.Fields.Item("Name").Value)
  loc_18E608F:         var_C4 = CStr(Me.Fields.Item("Code").Value)
  loc_18E6095:         global_312 = var_C4
  loc_18E60AA:         Set var_A0 = var_E4(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_18E60B0:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E60D6:         LateIdCallSt
  loc_18E60EC:         Set var_A0 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_18E60F2:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6118:         LateIdCallSt
  loc_18E612E:         Set var_A0 = CVar(CLng())(CVar(CLng(&HB))(vbNullString))
  loc_18E6134:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E615A:         LateIdCallSt
  loc_18E6170:         Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18E6176:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E617F:         var_D4 = CVar(CLng()) 'Long
  loc_18E6196:         Set var_C0 = CVar(CLng(&H1A))(vbNullString)
  loc_18E619C:         LateIdCallSt
  loc_18E61AE:       End If
  loc_18E61AE:     End If
  loc_18E61B1:   Else
  loc_18E61B8:     If (var_B4 = CLng(3)) Then
  loc_18E61C7:       Set var_A0 = var_C0(0)
  loc_18E61CD:       Call 0.Method_Proc_258_144_18E87740 (var_C4, var_C0)
  loc_18E61D5:       var_D4 = var_C0.Text
  loc_18E61EC:       If (var_C4 = "9999") Then
  loc_18E61F9:         Set global_300 = New RsSpecItemEntry
  loc_18E620F:         RsSpecItemEntry.PKOTForm = Me
  loc_18E6223:         RsSpecItemEntry.pRestCode = global_76
  loc_18E622F:         Set var_A0 = (var_C4)
  loc_18E6235:          = RsSpecItemEntry.Label.Caption
  loc_18E6243:         RsSpecItemEntry.PRestName = var_C4
  loc_18E6261:         Call 0.Method_arg_2B0 (1)
  loc_18E626A:         Set var_A0 = (var_E4)
  loc_18E6270:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E62A4:         LateIdCallSt
  loc_18E62BE:         Set var_A0 = (CVar(CLng())(CVar(Proc_6_38_E69628(global_188, CVar(CLng(&H15))))))
  loc_18E62C4:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E62F2:         Set var_C0 = CVar(CLng())(CVar(Proc_6_38_E69628(global_192, CVar(CLng(&H16)))))
  loc_18E62F8:         LateIdCallSt
  loc_18E6312:         Set var_138 = (var_C0)
  loc_18E6318:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6321:         var_D4 = CVar(CLng()) 'Long
  loc_18E633C:         Set var_A0 = var_C0(CInt(3))
  loc_18E6342:         Call 0.Method_Proc_258_144_18E87740 (var_C4, CVar(CLng(&H17)))
  loc_18E634A:         var_D4 = var_C0.Tag
  loc_18E635A:         Set var_16C = (CVar(var_C4))
  loc_18E6360:         LateIdCallSt
  loc_18E637D:       Else
  loc_18E6394:         If (Me.RecordCount > 0) Then
  loc_18E639D:           Me.MoveFirst
  loc_18E63A2:         End If
  loc_18E63B9:         If (Me.RecordCount > 0) Then
  loc_18E63C9:           Set var_A0 = var_C0(arg_C)
  loc_18E63CF:           Call 0.Method_Proc_258_144_18E87740 (var_C4)
  loc_18E63D7:           var_16C = var_C0.Text
  loc_18E63E4:           var_1F4 = Val(var_C4)
  loc_18E640A:           Me.Find "DispCode=" & CStr(var_1F4), 0, 1
  loc_18E641F:         End If
  loc_18E646D:         Set var_A0 = var_C0(arg_C)
  loc_18E6473:         Call 0.Method_Proc_258_144_18E87740 (var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18E647B:         var_D4 = var_C0.Text
  loc_18E6493:         If (var_1F4 Or (var_C4 = vbNullString)) Then
  loc_18E649A:           Set var_A0 = ()
  loc_18E64A0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E64C6:           LateIdCallSt
  loc_18E64DC:           Set var_A0 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_18E64E2:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6508:           LateIdCallSt
  loc_18E651E:           Set var_A0 = CVar(CLng())(CVar(CLng(&HB))(vbNullString))
  loc_18E6524:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E654A:           LateIdCallSt
  loc_18E6560:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18E6566:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E658C:           LateIdCallSt
  loc_18E65A2:           Set var_A0 = CVar(CLng())(CVar(CLng(6))(vbNullString))
  loc_18E65A8:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E65CE:           LateIdCallSt
  loc_18E65E4:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18E65EA:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6610:           LateIdCallSt
  loc_18E6626:           Set var_A0 = CVar(CLng())(CVar(CLng(8))(vbNullString))
  loc_18E662C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6652:           LateIdCallSt
  loc_18E6668:           Set var_A0 = CVar(CLng())(CVar(CLng(9))(vbNullString))
  loc_18E666E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6694:           LateIdCallSt
  loc_18E66AA:           Set var_A0 = CVar(CLng())(CVar(CLng(&H15))(vbNullString))
  loc_18E66B0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E66D6:           LateIdCallSt
  loc_18E66EC:           Set var_A0 = CVar(CLng())(CVar(CLng(&H16))(vbNullString))
  loc_18E66F2:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6718:           LateIdCallSt
  loc_18E672E:           Set var_A0 = CVar(CLng())(CVar(CLng(&H17))(vbNullString))
  loc_18E6734:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E675A:           LateIdCallSt
  loc_18E6770:           Set var_A0 = CVar(CLng())(CVar(CLng(&H13))(vbNullString))
  loc_18E6776:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E679C:           LateIdCallSt
  loc_18E67B2:           Set var_A0 = CVar(CLng())(CVar(CLng(&H14))(vbNullString))
  loc_18E67B8:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E67DE:           LateIdCallSt
  loc_18E67F4:           Set var_A0 = CVar(CLng())(CVar(CLng(&H18))(vbNullString))
  loc_18E67FA:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6820:           LateIdCallSt
  loc_18E6836:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1A))(vbNullString))
  loc_18E683C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6862:           LateIdCallSt
  loc_18E6878:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1B))(vbNullString))
  loc_18E687E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E68A4:           LateIdCallSt
  loc_18E68BA:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1C))(vbNullString))
  loc_18E68C0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E68E6:           LateIdCallSt
  loc_18E68FC:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1E))(vbNullString))
  loc_18E6902:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E690B:           var_D4 = CVar(CLng()) 'Long
  loc_18E6922:           Set var_C0 = CVar(CLng(&H1F))(vbNullString)
  loc_18E6928:           LateIdCallSt
  loc_18E693D:         Else
  loc_18E6947:           Set var_A0 = var_C0(global_224)
  loc_18E694D:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_D4)
  loc_18E6967:           Set var_C0 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18E696D:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E6987:           Set var_138 = ( <> CStr())(global_224)
  loc_18E698D:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E69A7:           Set var_16C = CVar(CLng())(CVar(CLng(&HB)))
  loc_18E69AD:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E69B8:           var_180 = CStr()
  loc_18E69C1:           Set var_184 = (( = var_180))
  loc_18E69C7:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E69E1:           Set var_1D8 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18E69E7:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E6A23:           If ( Or ( And (CStr() = vbNullString))) Then
  loc_18E6A2A:             Set var_138 = ()
  loc_18E6A30:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6A82:             LateIdCallSt
  loc_18E6AA2:             Set var_138 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_18E6AA8:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6AFA:             LateIdCallSt
  loc_18E6B1A:             Set var_138 = CVar(CLng())(CVar(CLng(&HB))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_18E6B20:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6B72:             LateIdCallSt
  loc_18E6B92:             Set var_138 = CVar(CLng())(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("DispCode").Value))))
  loc_18E6B98:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6BE4:             Set var_16C = CVar(CLng(6))(CVar(CStr(Me.Fields.Item("Unit").Value)))
  loc_18E6BEA:             LateIdCallSt
  loc_18E6C0A:             Set var_A0 = CVar(CLng())(var_16C)
  loc_18E6C10:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6C1A:             var_92 = CInt(CLng())
  loc_18E6C27:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18E6C41:             Set var_A0 = CVar(CLng(0))(CVar(CStr(var_92)))
  loc_18E6C47:             LateIdCallSt
  loc_18E6C59:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18E6C70:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D4(CVar(CLng(7))))
  loc_18E6C7B:             var_C4 = CStr(var_D4)
  loc_18E6C91:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_18E6C98:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_18E6CAF:               Set var_A0 = CVar(CLng(7))("1.0")
  loc_18E6CB5:               LateIdCallSt
  loc_18E6CC0:             End If
  loc_18E6CD5:             var_A0 = Me.Fields
  loc_18E6CF8:             Set var_138 = var_16C(CInt(1))
  loc_18E6CFE:             Call 0.Method_Proc_258_144_18E87740 (var_180, var_A0)
  loc_18E6D06:             var_D4 = var_16C.Text
  loc_18E6D4F:             Call Proc_258_162_F21398(CStr(var_A0.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18E6D58:             Set var_1FC = var_92(var_1F4)
  loc_18E6D5E:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6D6F:             var_158 = CVar(CLng(8)) 'Long
  loc_18E6DAA:             LateIdCallSt
  loc_18E6E17:             Set var_138 = var_16C(CInt(1))
  loc_18E6E1D:             Call 0.Method_Proc_258_144_18E87740 (var_180, 1(CVar(CStr(Format(CVar(var_1F4), "0.00")))), 1)
  loc_18E6E25:             var_158 = var_16C.Text
  loc_18E6E6E:             Call Proc_258_162_F21398(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18E6E77:             Set var_1FC = CVar(CLng())(var_1F4)
  loc_18E6E7D:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6E86:             var_114 = CVar(CLng()) 'Long
  loc_18E6E8E:             var_158 = CVar(CLng(9)) 'Long
  loc_18E6EC3:             Set var_210 = 1(CVar(CStr(Format(CVar(var_1F4), "0.00"))))
  loc_18E6EC9:             LateIdCallSt
  loc_18E6EFE:           End If
  loc_18E6F02:           Set var_A0 = 1(var_210)
  loc_18E6F08:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_158)
  loc_18E6F3C:           LateIdCallSt
  loc_18E6F56:           Set var_A0 = (CVar(CLng(var_114))(CVar(Proc_6_38_E69628(global_188, CVar(CLng(&H15))))))
  loc_18E6F5C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6F8A:           Set var_C0 = CVar(CLng())(CVar(Proc_6_38_E69628(global_192, CVar(CLng(&H16)))))
  loc_18E6F90:           LateIdCallSt
  loc_18E6FAA:           Set var_138 = (var_C0)
  loc_18E6FB0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E6FB9:           var_D4 = CVar(CLng()) 'Long
  loc_18E6FD4:           Set var_A0 = var_C0(CInt(3))
  loc_18E6FDA:           Call 0.Method_Proc_258_144_18E87740 (var_C4, CVar(CLng(&H17)))
  loc_18E6FE2:           var_D4 = var_C0.Tag
  loc_18E6FEA:           var_134 = CVar(var_C4) 'String
  loc_18E6FF8:           LateIdCallSt
  loc_18E7016:           Set var_138 = ((var_134))
  loc_18E701C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E706B:           LateIdCallSt
  loc_18E7089:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13))))))
  loc_18E708F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E70DE:           LateIdCallSt
  loc_18E70FC:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14))))))
  loc_18E7102:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7151:           LateIdCallSt
  loc_18E716F:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18))))))
  loc_18E7175:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E71C4:           LateIdCallSt
  loc_18E71E2:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A))))))
  loc_18E71E8:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7237:           LateIdCallSt
  loc_18E7255:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B))))))
  loc_18E725B:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E72AA:           LateIdCallSt
  loc_18E72C8:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C))))))
  loc_18E72CE:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E731D:           LateIdCallSt
  loc_18E733B:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19))))))
  loc_18E7341:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7390:           LateIdCallSt
  loc_18E73AE:           Set var_A0 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F))))))
  loc_18E73B4:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E73BD:           var_D4 = CVar(CLng()) 'Long
  loc_18E73D4:           Set var_C0 = CVar(CLng(&H1E))(vbNullString)
  loc_18E73DA:           LateIdCallSt
  loc_18E73FF:           var_D4 = "TaxStru"
  loc_18E7416:           var_C0 = Me.Fields.Item(var_D4)
  loc_18E7427:           var_C4 = Proc_6_38_E69628(CVar(var_C0), "Select * from taxStru where code='", var_134, -1)
  loc_18E743B:           unk_5B2155.Execute var_138 & var_C4 & "'", var_C0, var_D4
  loc_18E7446:           Set var_98 = var_138
  loc_18E7474:           If (var_98.RecordCount > 0) Then
  loc_18E747B:             Set var_138 = ()
  loc_18E7481:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E748A:             var_E4 = CVar(CLng()) 'Long
  loc_18E74AE:             var_C0 = var_98.Fields.Item("Rate")
  loc_18E74BD:             Proc_6_39_E7D3A0(var_134, CVar(var_C0))
  loc_18E74CE:             Set var_16C = CVar(CLng(&H10))(CVar(CStr(var_134)))
  loc_18E74D4:             LateIdCallSt
  loc_18E74F0:           End If
  loc_18E74F5:           Call Proc_258_158_19037C8(&H32, var_16C)
  loc_18E74FA:         End If
  loc_18E74FA:       End If
  loc_18E74FD:     Else
  loc_18E7504:       If (var_B4 = CLng(4)) Then
  loc_18E7555:         Set var_A0 = var_C0(arg_C)
  loc_18E755B:         Call 0.Method_Proc_258_144_18E87740 (var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18E7563:         var_E4 = var_C0.Text
  loc_18E757B:         If ( Or (var_C4 = vbNullString)) Then
  loc_18E7582:           Set var_A0 = ()
  loc_18E7588:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E75AE:           LateIdCallSt
  loc_18E75C4:           Set var_A0 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_18E75CA:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E75F0:           LateIdCallSt
  loc_18E7606:           Set var_A0 = CVar(CLng())(CVar(CLng(&HB))(vbNullString))
  loc_18E760C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7632:           LateIdCallSt
  loc_18E7648:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18E764E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7674:           LateIdCallSt
  loc_18E768A:           Set var_A0 = CVar(CLng())(CVar(CLng(6))(vbNullString))
  loc_18E7690:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E76B6:           LateIdCallSt
  loc_18E76CC:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18E76D2:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E76F8:           LateIdCallSt
  loc_18E770E:           Set var_A0 = CVar(CLng())(CVar(CLng(8))(vbNullString))
  loc_18E7714:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E773A:           LateIdCallSt
  loc_18E7750:           Set var_A0 = CVar(CLng())(CVar(CLng(9))(vbNullString))
  loc_18E7756:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E777C:           LateIdCallSt
  loc_18E7792:           Set var_A0 = CVar(CLng())(CVar(CLng(&H15))(vbNullString))
  loc_18E7798:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E77BE:           LateIdCallSt
  loc_18E77D4:           Set var_A0 = CVar(CLng())(CVar(CLng(&H16))(vbNullString))
  loc_18E77DA:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7800:           LateIdCallSt
  loc_18E7816:           Set var_A0 = CVar(CLng())(CVar(CLng(&H17))(vbNullString))
  loc_18E781C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7842:           LateIdCallSt
  loc_18E7858:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1A))(vbNullString))
  loc_18E785E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7884:           LateIdCallSt
  loc_18E789A:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1B))(vbNullString))
  loc_18E78A0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E78C6:           LateIdCallSt
  loc_18E78DC:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1C))(vbNullString))
  loc_18E78E2:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7908:           LateIdCallSt
  loc_18E791E:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1F))(vbNullString))
  loc_18E7924:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E792D:           var_D4 = CVar(CLng()) 'Long
  loc_18E7944:           Set var_C0 = CVar(CLng(&H1E))(vbNullString)
  loc_18E794A:           LateIdCallSt
  loc_18E795F:         Else
  loc_18E7969:           Set var_A0 = var_C0(global_224)
  loc_18E796F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_D4)
  loc_18E7989:           Set var_C0 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18E798F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E79A9:           Set var_138 = ( <> CStr())(global_224)
  loc_18E79AF:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E79C9:           Set var_16C = CVar(CLng())(CVar(CLng(&HB)))
  loc_18E79CF:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E79DA:           var_180 = CStr()
  loc_18E79E3:           Set var_184 = (( = var_180))
  loc_18E79E9:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7A03:           Set var_1D8 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18E7A09:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E7A45:           If ( Or ( And (CStr() = vbNullString))) Then
  loc_18E7A4C:             Set var_A0 = ()
  loc_18E7A52:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7A69:             Set var_138 = (CInt(CLng()))
  loc_18E7A6F:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7AC1:             LateIdCallSt
  loc_18E7AE1:             Set var_138 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_18E7AE7:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7B39:             LateIdCallSt
  loc_18E7B59:             Set var_138 = CVar(CLng())(CVar(CLng(&HB))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_18E7B5F:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7BB1:             LateIdCallSt
  loc_18E7BD1:             Set var_138 = CVar(CLng())(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("DispCode").Value))))
  loc_18E7BD7:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7C23:             Set var_16C = CVar(CLng(6))(CVar(CStr(Me.Fields.Item("Unit").Value)))
  loc_18E7C29:             LateIdCallSt
  loc_18E7C49:             Set var_A0 = CVar(CLng())(var_16C)
  loc_18E7C4F:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7C59:             var_92 = CInt(CLng())
  loc_18E7C66:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18E7C80:             Set var_A0 = CVar(CLng(0))(CVar(CStr(var_92)))
  loc_18E7C86:             LateIdCallSt
  loc_18E7C98:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18E7CAF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D4(CVar(CLng(7))))
  loc_18E7CBA:             var_C4 = CStr(var_D4)
  loc_18E7CD0:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_18E7CD7:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_18E7CEE:               Set var_A0 = CVar(CLng(7))("1.0")
  loc_18E7CF4:               LateIdCallSt
  loc_18E7CFF:             End If
  loc_18E7D14:             var_A0 = Me.Fields
  loc_18E7D37:             Set var_138 = var_16C(CInt(1))
  loc_18E7D3D:             Call 0.Method_Proc_258_144_18E87740 (var_180, var_A0)
  loc_18E7D45:             var_D4 = var_16C.Text
  loc_18E7D8E:             Call Proc_258_162_F21398(CStr(var_A0.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18E7D97:             Set var_1FC = var_92(var_1F4)
  loc_18E7D9D:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7DAE:             var_158 = CVar(CLng(8)) 'Long
  loc_18E7DE9:             LateIdCallSt
  loc_18E7E56:             Set var_138 = var_16C(CInt(1))
  loc_18E7E5C:             Call 0.Method_Proc_258_144_18E87740 (var_180, 1(CVar(CStr(Format(CVar(var_1F4), "0.00")))), 1)
  loc_18E7E64:             var_158 = var_16C.Text
  loc_18E7EAD:             Call Proc_258_162_F21398(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18E7EB6:             Set var_1FC = CVar(CLng())(var_1F4)
  loc_18E7EBC:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7F08:             LateIdCallSt
  loc_18E7F41:             Set var_A0 = 1(1(CVar(CStr(Format(CVar(var_1F4), "0.00")))))
  loc_18E7F47:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(CVar(CLng(9)))
  loc_18E7F7B:             LateIdCallSt
  loc_18E7F95:             Set var_A0 = (CVar(CLng(CVar(CLng())))(CVar(Proc_6_38_E69628(global_188, CVar(CLng(&H15))))))
  loc_18E7F9B:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7FC9:             Set var_C0 = CVar(CLng())(CVar(Proc_6_38_E69628(global_192, CVar(CLng(&H16)))))
  loc_18E7FCF:             LateIdCallSt
  loc_18E7FE9:             Set var_138 = (var_C0)
  loc_18E7FEF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E7FF8:             var_D4 = CVar(CLng()) 'Long
  loc_18E8013:             Set var_A0 = var_C0(CInt(3))
  loc_18E8019:             Call 0.Method_Proc_258_144_18E87740 (var_C4, CVar(CLng(&H17)))
  loc_18E8021:             var_D4 = var_C0.Tag
  loc_18E8029:             var_134 = CVar(var_C4) 'String
  loc_18E8037:             LateIdCallSt
  loc_18E8055:             Set var_138 = ((var_134))
  loc_18E805B:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E80AA:             LateIdCallSt
  loc_18E80C8:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13))))))
  loc_18E80CE:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E811D:             LateIdCallSt
  loc_18E813B:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14))))))
  loc_18E8141:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E8190:             LateIdCallSt
  loc_18E81AE:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18))))))
  loc_18E81B4:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E8203:             LateIdCallSt
  loc_18E8221:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A))))))
  loc_18E8227:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E8276:             LateIdCallSt
  loc_18E8294:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B))))))
  loc_18E829A:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E82E9:             LateIdCallSt
  loc_18E8307:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C))))))
  loc_18E830D:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E835C:             LateIdCallSt
  loc_18E837A:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19))))))
  loc_18E8380:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E83CF:             LateIdCallSt
  loc_18E83ED:             Set var_A0 = (CVar(CLng())(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F))))))
  loc_18E83F3:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E83FC:             var_D4 = CVar(CLng()) 'Long
  loc_18E8413:             Set var_C0 = CVar(CLng(&H1E))(vbNullString)
  loc_18E8419:             LateIdCallSt
  loc_18E843E:             var_D4 = "TaxStru"
  loc_18E8455:             var_C0 = Me.Fields.Item(var_D4)
  loc_18E8466:             var_C4 = Proc_6_38_E69628(CVar(var_C0), "Select * from taxStru where code='", var_134, -1)
  loc_18E847A:             unk_5B2155.Execute var_138 & var_C4 & "'", var_C0, var_D4
  loc_18E8485:             Set var_98 = var_138
  loc_18E84B3:             If (var_98.RecordCount > 0) Then
  loc_18E84BA:               Set var_138 = ()
  loc_18E84C0:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E84C9:               var_E4 = CVar(CLng()) 'Long
  loc_18E84ED:               var_C0 = var_98.Fields.Item("Rate")
  loc_18E84FC:               Proc_6_39_E7D3A0(var_134, CVar(var_C0))
  loc_18E850D:               Set var_16C = CVar(CLng(&H10))(CVar(CStr(var_134)))
  loc_18E8513:               LateIdCallSt
  loc_18E852F:             End If
  loc_18E8534:             Call Proc_258_158_19037C8(&H32, var_16C)
  loc_18E8539:           End If
  loc_18E8539:         End If
  loc_18E853C:       Else
  loc_18E8543:         If (var_B4 = CLng(7)) Then
  loc_18E8550:           Set var_A0 = var_C0(arg_C)
  loc_18E8556:           Call 0.Method_Proc_258_144_18E87740 (var_E4)
  loc_18E856E:           If Not(IsNumeric(CVar(var_C0))) Then
  loc_18E8575:             var_C4 = CStr(0)
  loc_18E8582:             Set var_A0 = var_C0(arg_C)
  loc_18E8588:             Call 0.Method_Proc_258_144_18E87740 (var_C4)
  loc_18E8590:             var_C0.Text = 
  loc_18E859F:           End If
  loc_18E85AC:           Set var_A0 = var_C0(arg_C)
  loc_18E85B2:           Call 0.Method_Proc_258_144_18E87740 (var_C4)
  loc_18E85BA:            = var_C0.Text
  loc_18E85C3:           Set var_138 = ()
  loc_18E85C9:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E85D2:           var_E4 = CVar(CLng()) 'Long
  loc_18E85DA:           var_104 = CVar(CLng(7)) 'Long
  loc_18E8614:           LateIdCallSt
  loc_18E8639:           Call Proc_258_158_19037C8(&H32, 1(CVar(CStr(Format(CVar(var_C4), "0.00")))), 1)
  loc_18E8641:         Else
  loc_18E8648:           If (var_B4 = CLng(8)) Then
  loc_18E8655:             Set var_A0 = var_C0(arg_C)
  loc_18E865B:             Call 0.Method_Proc_258_144_18E87740 (var_104)
  loc_18E8673:             If Not(IsNumeric(CVar(var_C0))) Then
  loc_18E867A:               var_C4 = CStr(0)
  loc_18E8687:               Set var_A0 = var_C0(arg_C)
  loc_18E868D:               Call 0.Method_Proc_258_144_18E87740 (var_C4)
  loc_18E8695:               var_C0.Text = var_E4
  loc_18E86A4:             End If
  loc_18E86B1:             Set var_A0 = var_C0(arg_C)
  loc_18E86B7:             Call 0.Method_Proc_258_144_18E87740 (var_C4)
  loc_18E86BF:              = var_C0.Text
  loc_18E86CC:             var_1F4 = Val(var_C4)
  loc_18E86D3:             Set var_138 = (var_1F4)
  loc_18E86D9:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E86EB:             Set var_16C = (CVar(CLng()))
  loc_18E86F1:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_18E86FA:             var_114 = CVar(CLng()) 'Long
  loc_18E8735:             LateIdCallSt
  loc_18E8761:             Call Proc_258_158_19037C8(&H32, 1(CVar(CStr(Format(CVar(var_1F4), "0.00")))))
  loc_18E8766:           End If
  loc_18E8766:         End If
  loc_18E8766:       End If
  loc_18E8766:     End If
  loc_18E8766:   End If
  loc_18E8766: End If
  loc_18E876B: Proc_258_144_18E8774 = &HFF
End Sub

Public Sub Proc_258_145_1BA3A9C
  'Data Table: 5B2118
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_118 As String
  Dim unk_5B2155 As Connection15
  Dim var_140 As Recordset15
  Dim var_D4 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim var_13C As Variant
  Dim var_90 As Recordset15
  Dim var_154 As Double
  Dim var_88 As Recordset15
  Dim var_16C As Variant
  Dim var_92 As Integer
  Dim var_A6 As Integer
  Dim var_A2 As Integer
  Dim var_128 As Variant
  Dim var_184 As Variant
  Dim var_138 As Variant
  Dim var_1A4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Variant
  Dim var_220 As Recordset15
  loc_1B9E7A8: On Error Goto loc_1BA3A47
  loc_1B9E7B8: (vbNullString).Caption = 
  loc_1B9E7D7: If (Me.RecordCount > 0) Then
  loc_1B9E819:   If (Me.Fields.Item("MultiBillGeneration").Value = "Yes") Then
  loc_1B9E827:     If (global_284 = "Yes") Then
  loc_1B9E869:       var_F4 = "Select S.* From SplitSale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_1B9E880:       unk_5B2155.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1B9E8A8:       Set var_140 = var_13C 
  loc_1B9E8FD:       If (Proc_6_38_E69628(CVar(var_140.Fields.Item("Printed"))) = "Y") Then
  loc_1B9E90C:         var_13C(0).Enabled = 
  loc_1B9E917:       Else
  loc_1B9E923:         (&HFF).Enabled = 
  loc_1B9E92B:       End If
  loc_1B9E964:       Set var_13C = var_144(CInt(2))
  loc_1B9E96A:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_140.Fields.Item("DocID").Value))
  loc_1B9E972:       var_144.Text = 
  loc_1B9E9A2:       var_C4 = var_140.Fields.Item("vType")
  loc_1B9E9AA:       var_D4 = var_C4.Value
  loc_1B9E9D0:       var_E4 = 0
  loc_1B9EA00:       unk_5B2155.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D4) & "'", var_D4, -1
  loc_1B9EA08:       var_AC = var_AC.Fields
  loc_1B9EA10:       var_E4 = var_C4.Item(var_C4)
  loc_1B9EA18:       var_13C = var_13C.Value
  loc_1B9EA27:       global_172 = CStr(var_F4)
  loc_1B9EA7D:       Set var_13C = var_144(CInt(0))
  loc_1B9EA83:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_140.Fields.Item("VNo").Value))
  loc_1B9EA8B:       var_144.Text = var_F4
  loc_1B9EAB8:       var_C4 = var_140.Fields.Item("VDate")
  loc_1B9EAF3:       Set var_13C = var_144(CInt(1))
  loc_1B9EAF9:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1B9EB01:       var_144.Text = 1
  loc_1B9EB26:       Set var_AC = var_C4(CInt(1))
  loc_1B9EB2C:       Call 0.Method_Proc_258_145_1BA3A9C0 ()
  loc_1B9EB5E:       Call Proc_258_157_1BC3D2C(CDate(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1B9EBA1:       Set var_13C = 1(CStr(var_140.Fields.Item("vPrefix").Value))
  loc_1B9EBA7:       var_13C.Caption = 
  loc_1B9EBEC:       global_180 = CStr(var_140.Fields.Item("KOTNo").Value)
  loc_1B9EC0E:       If (global_304 = "Hall") Then
  loc_1B9EC4D:         var_F4 = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_140.Fields.Item("RoomNo").Value 
  loc_1B9EC64:         unk_5B2155.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1B9EC6F:         Set var_90 = var_13C
  loc_1B9EC9D:         If (var_90.RecordCount > 0) Then
  loc_1B9ECD9:           Set var_13C = var_144(CInt(3))
  loc_1B9ECDF:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_90.Fields.Item(0).Value))
  loc_1B9ECE7:           var_144.Text = var_13C
  loc_1B9ECFD:         End If
  loc_1B9ED00:       Else
  loc_1B9ED38:         var_118 = Proc_6_38_E69628(CVar(var_140.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q Where Code='", var_F4)
  loc_1B9ED3C:         var_148 = -1 & var_118
  loc_1B9ED4C:         unk_5B2155.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(CVar(var_140.Fields.Item("Party"))) & "'" & "'", var_13C, 
  loc_1B9ED57:         Set var_90 = var_13C
  loc_1B9ED85:         If (var_90.RecordCount > 0) Then
  loc_1B9EDC1:           Set var_13C = var_144(CInt(&HD))
  loc_1B9EDC7:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_90.Fields.Item(0).Value))
  loc_1B9EDCF:           var_144.Tag = 
  loc_1B9EE1E:           Set var_13C = var_144(CInt(&HD))
  loc_1B9EE24:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_90.Fields.Item(1).Value))
  loc_1B9EE2C:           var_144.Text = 
  loc_1B9EE5C:           var_C4 = var_90.Fields.Item(2)
  loc_1B9EE7B:           Set var_13C = var_144(CInt(&HF))
  loc_1B9EE81:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_C4.Value))
  loc_1B9EE89:           var_144.Text = 
  loc_1B9EEA2:         Else
  loc_1B9EEB0:           Set var_AC = var_C4(CInt(&HD))
  loc_1B9EEB6:           Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1B9EEBE:           var_C4.Tag = 
  loc_1B9EED8:           Set var_AC = var_C4(CInt(&HD))
  loc_1B9EEDE:           Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1B9EEE6:           var_C4.Text = 
  loc_1B9EF00:           Set var_AC = var_C4(CInt(&HF))
  loc_1B9EF06:           Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1B9EF0E:           var_C4.Text = 
  loc_1B9EF1A:         End If
  loc_1B9EF50:         Set var_13C = var_144(CInt(3))
  loc_1B9EF56:         Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_140.Fields.Item("RoomNo"))))
  loc_1B9EF5E:         var_144.Text = 
  loc_1B9EF72:       End If
  loc_1B9EFA8:       Set var_13C = var_144(CInt(3))
  loc_1B9EFAE:       Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_140.Fields.Item("RoomNo"))))
  loc_1B9EFB6:       var_144.Tag = 
  loc_1B9EFF0:       Proc_6_39_E7D3A0(var_F4)
  loc_1B9F007:       Set var_13C = var_144(CInt(4))
  loc_1B9F00D:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_F4))
  loc_1B9F015:       var_144.Text = CVar(var_140.Fields.Item("GuarAtt"))
  loc_1B9F058:       var_F4 = "hh:nn"
  loc_1B9F07F:       Set var_13C = var_144(CInt(5))
  loc_1B9F085:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_140.Fields.Item("VTIME")), var_F4)), 1)
  loc_1B9F08D:       var_144.Text = 1
  loc_1B9F0EF:       var_148 = Replace(CStr(var_140.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_1B9F0F7:       var_154 = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_140.Fields.Item("VTIME").Value) & "'")
  loc_1B9F123:       unk_5B2155.Execute "Select Name From SessionMast WHERE " & CStr(var_154) & " BETWEEN FromTime AND ToTime", var_F4, -1
  loc_1B9F12E:       Set var_98 = var_13C
  loc_1B9F165:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1B9F19A:         Set var_13C = var_154(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")), var_13C))
  loc_1B9F1A0:         var_13C.Caption = 
  loc_1B9F1B2:       End If
  loc_1B9F1B4:       Set var_140 = Nothing 
  loc_1B9F20E:       unk_5B2155.Execute CStr("Select S.* From SplitedSunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_138, -1
  loc_1B9F219:       Set var_88 = var_13C
  loc_1B9F247:       If (var_88.RecordCount > 0) Then
  loc_1B9F27A:         Call Proc_258_157_1BC3D2C(CDate(var_88.Fields.Item("SunAppDate").Value))
  loc_1B9F289:         ' Referenced from: 1B9F71D
  loc_1B9F298:         If Not(var_88.EOF) Then
  loc_1B9F2DE:           var_13C = var_88.Fields
  loc_1B9F2FB:           Set var_168 = var_16C(CInt(var_13C.Item("SNo").Value))
  loc_1B9F301:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("SunCode").Value))
  loc_1B9F309:           var_16C.Tag = var_13C
  loc_1B9F387:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F38D:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1B9F395:           var_16C.Tag = 
  loc_1B9F413:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F419:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1B9F421:           var_16C.Caption = 
  loc_1B9F49F:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F4A5:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("Roff").Value))
  loc_1B9F4AD:           var_16C.Tag = 
  loc_1B9F528:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F52E:           Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1B9F536:           var_16C.Tag = 
  loc_1B9F5B2:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F5B8:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("SValue").Value))
  loc_1B9F5C0:           var_16C.Text = 
  loc_1B9F61C:           var_138 = var_88.Fields.Item("SNo").Value
  loc_1B9F630:           var_F4 = "0.00"
  loc_1B9F657:           Set var_168 = var_16C(CInt(var_138))
  loc_1B9F65D:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F4)), 1)
  loc_1B9F665:           var_16C.Text = 1
  loc_1B9F69C:           var_C4 = var_88.Fields.Item("BaseAmount")
  loc_1B9F6A4:           var_D4 = CVar(var_C4) 'Address
  loc_1B9F6AB:           Proc_6_39_E7D3A0(var_F4)
  loc_1B9F6B3:           var_118 = CStr(var_F4)
  loc_1B9F6CC:           var_13C = var_88.Fields
  loc_1B9F6D4:           var_144 = var_13C.Item("SNo")
  loc_1B9F6E9:           Set var_168 = var_16C(CInt(var_144.Value))
  loc_1B9F6EF:           Call 0.Method_Proc_258_145_1BA3A9C0 (var_118)
  loc_1B9F6F7:           var_16C.Caption = var_D4
  loc_1B9F718:           var_88.MoveNext
  loc_1B9F71D:           GoTo loc_1B9F289
  loc_1B9F720:         End If
  loc_1B9F720:       End If
  loc_1B9F73E:       Set var_AC = var_C4(CInt(2))
  loc_1B9F744:       Call 0.Method_Proc_258_145_1BA3A9C0 (var_118, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='", var_D4)
  loc_1B9F74C:       -1 = var_C4.Text
  loc_1B9F765:       unk_5B2155.Execute var_13C & var_118 & "' And PayType='Cash'", , 
  loc_1B9F770:       Set var_90 = var_13C
  loc_1B9F796:       Set var_AC = var_C4(CInt(6))
  loc_1B9F79C:       Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1B9F7A4:       var_C4.Text = 
  loc_1B9F7BE:       Set var_AC = var_C4(CInt(7))
  loc_1B9F7C4:       Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1B9F7CC:       var_C4.Text = 
  loc_1B9F7E6:       Set var_AC = var_C4(CInt(8))
  loc_1B9F7EC:       Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1B9F7F4:       var_C4.Text = 
  loc_1B9F814:       If (var_90.RecordCount > 0) Then
  loc_1B9F869:         Set var_13C = var_144(CInt(6))
  loc_1B9F86F:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_90.Fields.Item("Amount")), "0.00")), 1)
  loc_1B9F877:         var_144.Text = 1
  loc_1B9F8E3:         Set var_13C = var_144(CInt(7))
  loc_1B9F8E9:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_90.Fields.Item("TipAmt")), "0.00")), 1)
  loc_1B9F8F1:         var_144.Text = 1
  loc_1B9F90B:       End If
  loc_1B9F914:       Set var_AC = (False)
  loc_1B9F91A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1B9F92F:       Set var_AC = (1)
  loc_1B9F935:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B9F93F:       var_92 = 1
  loc_1B9F94F:       var_E4 = "Select S.*,I.Name as ItemName,I.RateIncTax,DispCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((SplitStock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And S.ITEMRestCode=I.RestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_1B9F998:       unk_5B2155.Execute CStr(var_E4 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_138, -1
  loc_1B9F9A3:       Set var_88 = var_13C
  loc_1B9F9D1:       If (var_88.RecordCount > 0) Then
  loc_1B9F9E1:         ReDim Preserve var_A0(0 To 0)
  loc_1B9F9EB:         ' Referenced from: 1BA06C8
  loc_1B9F9FA:         If Not(var_88.EOF) Then
  loc_1B9FA07:           Set var_AC = var_13C(vbNullString)
  loc_1B9FA0D:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(var_92)
  loc_1B9FA25:           For var_170 = 0 To CInt(UBound(var_A0, 1)): var_A4 = var_170 'Integer
  loc_1B9FA69:             If (0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")), var_A0(CLng(var_A4)))) Then
  loc_1B9FA6E:               var_A6 = &HFF
  loc_1B9FA71:             End If
  loc_1B9FA74:           Next var_170 'Integer
  loc_1B9FA7F:           If (var_A6 = 0) Then
  loc_1B9FA8E:             ReDim Preserve var_A0(0 To CLng(var_A2))
  loc_1B9FACA:             var_A0(CLng(var_A2)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_1B9FADA:             var_A2 = (var_A2 + 1)
  loc_1B9FADD:           End If
  loc_1B9FAE6:           Set var_174 = var_A2(0)
  loc_1B9FAED:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9FAF5:           var_128 = CVar(CLng(0)) 'Long
  loc_1B9FB25:           var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1B9FB2C:           LateIdCallSt
  loc_1B9FB7B:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_92)), var_174)) 'String
  loc_1B9FB82:           LateIdCallSt
  loc_1B9FBCD:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_92)), var_174)) 'String
  loc_1B9FBD4:           LateIdCallSt
  loc_1B9FC1F:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9FC26:           LateIdCallSt
  loc_1B9FC71:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9FC78:           LateIdCallSt
  loc_1B9FCC3:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9FCCA:           LateIdCallSt
  loc_1B9FCFC:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FD04:           var_184 = CVar(CLng(7)) 'Long
  loc_1B9FD31:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1B9FD38:           LateIdCallSt
  loc_1B9FD6E:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FD76:           var_184 = CVar(CLng(8)) 'Long
  loc_1B9FDA3:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_1B9FDAA:           LateIdCallSt
  loc_1B9FDE0:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FDE8:           var_184 = CVar(CLng(9)) 'Long
  loc_1B9FE15:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1B9FE1C:           LateIdCallSt
  loc_1B9FE52:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FE5A:           var_184 = CVar(CLng(&HA)) 'Long
  loc_1B9FE87:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1B9FE8E:           LateIdCallSt
  loc_1B9FEA8:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9FEB0:           var_128 = CVar(CLng(&HB)) 'Long
  loc_1B9FEE0:           var_F4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1B9FEE7:           LateIdCallSt
  loc_1B9FF1D:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FF25:           var_184 = CVar(CLng(&HE)) 'Long
  loc_1B9FF52:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1B9FF59:           LateIdCallSt
  loc_1B9FF8F:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FF97:           var_184 = CVar(CLng(&HF)) 'Long
  loc_1B9FFC4:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1B9FFCB:           LateIdCallSt
  loc_1BA0001:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA0009:           var_184 = CVar(CLng(&H10)) 'Long
  loc_1BA0036:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_1BA003D:           LateIdCallSt
  loc_1BA0073:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA007B:           var_184 = CVar(CLng(&H11)) 'Long
  loc_1BA00A8:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1BA00AF:           LateIdCallSt
  loc_1BA0121:           LateIdCallSt
  loc_1BA0170:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_92)), var_174, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1BA0177:           LateIdCallSt
  loc_1BA01C2:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_92)), var_174, var_F4, CVar(CLng(&H12)))) 'String
  loc_1BA01C9:           LateIdCallSt
  loc_1BA0214:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1BA021B:           LateIdCallSt
  loc_1BA0266:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1BA026D:           LateIdCallSt
  loc_1BA02AE:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA02B6:           var_128 = CVar(CLng(5)) 'Long
  loc_1BA02D1:           var_118 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_174, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_174, var_F4, CVar(CLng(var_92)))), CVar(CLng(var_92)))), 8))
  loc_1BA02DC:           var_138 = CVar(CStr(Val(var_118))) 'String
  loc_1BA02E3:           LateIdCallSt
  loc_1BA0339:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_92)), var_174, var_138, CVar(CLng(&HD)))) 'String
  loc_1BA0340:           LateIdCallSt
  loc_1BA0389:           Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_92)), var_174, var_F4)
  loc_1BA0399:           LateIdCallSt
  loc_1BA03E6:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_92)), var_174, CVar(CStr(var_F4)))) 'String
  loc_1BA03ED:           LateIdCallSt
  loc_1BA0438:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1BA043F:           LateIdCallSt
  loc_1BA0488:           Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_92)), var_174, var_F4)
  loc_1BA0498:           LateIdCallSt
  loc_1BA04E5:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Godowncode")), CVar(CLng(&H1A)), CVar(CLng(var_92)), var_174, CVar(CStr(var_F4)))) 'String
  loc_1BA04EC:           LateIdCallSt
  loc_1BA0537:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1BA053E:           LateIdCallSt
  loc_1BA0589:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1BA0590:           LateIdCallSt
  loc_1BA05A6:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA05DB:           var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CatType")), CVar(CLng(&H1F)), var_E4, var_174, var_F4)) 'String
  loc_1BA05E2:           LateIdCallSt
  loc_1BA062B:           var_184 = CVar(CLng(var_92)) 'Long
  loc_1BA0633:           var_1A4 = CVar(CLng(&H1E)) 'Long
  loc_1BA065B:           var_1B4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VoidYN")), var_174, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VoidYN")), var_174, var_F4, "F")), "F"))) = "F") 'Variant
  loc_1BA066E:           var_204 = CVar(CStr(IIf(var_1B4, "Free", vbNullString))) 'String
  loc_1BA0675:           LateIdCallSt
  loc_1BA0697:           var_C0 = CVar(CLng(var_92)) 'Long
  loc_1BA06A9:           LateIdCallSt
  loc_1BA06B3:           Set var_174 = Nothing 
  loc_1BA06BD:           var_92 = (var_92 + 1)
  loc_1BA06C3:           var_88.MoveNext
  loc_1BA06C8:           GoTo loc_1B9F9EB
  loc_1BA06CB:         End If
  loc_1BA06CF:         Set var_AC = var_174(var_92)
  loc_1BA06D5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(global_68)
  loc_1BA06E4:         var_C0 = CVar((CLng(var_C0) - 1)) 'Long
  loc_1BA06F7:         Set var_C4 = var_C0(global_68)
  loc_1BA06FD:         LateIdCallSt
  loc_1BA071C:         Set var_AC = var_C4(1)
  loc_1BA0722:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6(var_174)
  loc_1BA0738:         Set var_AC = var_C4(CInt(3))
  loc_1BA073E:         Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString, var_204, var_1A4, var_184)
  loc_1BA075F:         For var_218 = 0 To CInt(UBound(var_A0, 1)): var_A2 = var_218 'Integer
  loc_1BA0773:           Set var_AC = var_C4(CInt(3))
  loc_1BA0779:           Call 0.Method_Proc_258_145_1BA3A9C0 (var_118, 0, var_138)
  loc_1BA0781:           1 = var_174
  loc_1BA07A7:           Set var_13C = var_144(CInt(3))
  loc_1BA07AD:           Call 0.Method_Proc_258_145_1BA3A9C0 (var_118 & var_A0(CLng(var_A2)) & ",")
  loc_1BA07B5:           var_144.Text = 1
  loc_1BA07D1:         Next var_218 'Integer
  loc_1BA07E1:         Set var_AC = var_C4(CInt(3))
  loc_1BA07E7:         Call 0.Method_Proc_258_145_1BA3A9C0 ()
  loc_1BA07F7:         Set var_13C = var_144(CInt(3))
  loc_1BA07FD:         Call 0.Method_Proc_258_145_1BA3A9C0 ()
  loc_1BA081D:         var_138 = (Len(Trim(CVar(var_144))) - 1)
  loc_1BA0830:         var_1B4 = CVar(var_C4) 'Address
  loc_1BA084E:         Set var_168 = var_16C(CInt(3))
  loc_1BA0854:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Mid(var_1B4, 1, var_138)))
  loc_1BA085C:         var_16C.Text = 
  loc_1BA087C:       End If
  loc_1BA0884:       Set var_AC = (True)
  loc_1BA088A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1BA08A6:       var_F4 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM SplitSale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1BA08ED:       unk_5B2155.Execute CStr(var_F4 & Me.Fields.Item("SearchCode").Value & "'"), var_1B4, -1
  loc_1BA08F8:       Set var_88 = var_13C
  loc_1BA0921:       Set var_AC = var_13C(1)
  loc_1BA0927:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA0943:       If (var_88.RecordCount > 0) Then
  loc_1BA0946:         ' Referenced from: 1BA0D0E
  loc_1BA0955:         If Not(var_88.EOF) Then
  loc_1BA095C:           Set var_21C = ()
  loc_1BA0968:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(vbNullString)
  loc_1BA0974:           Set var_13C = ()
  loc_1BA097A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA0989:           var_E4 = CVar((CLng() - 1)) 'Long
  loc_1BA09C8:           LateIdCallSt
  loc_1BA09E6:           Set var_13C = CVar(CStr(var_88.Fields.Item("Sno1").Value))(var_21C)
  loc_1BA09EC:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1BA09FB:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0A3A:           LateIdCallSt
  loc_1BA0A58:           Set var_13C = CVar(CStr(var_88.Fields.Item("SNo").Value))(var_21C)
  loc_1BA0A5E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1BA0A6D:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0AAC:           LateIdCallSt
  loc_1BA0ACA:           Set var_13C = CVar(CStr(var_88.Fields.Item("TaxCode").Value))(var_21C)
  loc_1BA0AD0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(2)))
  loc_1BA0ADF:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0B1E:           LateIdCallSt
  loc_1BA0B3C:           Set var_13C = CVar(CStr(var_88.Fields.Item("Name").Value))(var_21C)
  loc_1BA0B42:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1BA0B51:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0B90:           LateIdCallSt
  loc_1BA0BAE:           Set var_13C = CVar(CStr(var_88.Fields.Item("BaseValue").Value))(var_21C)
  loc_1BA0BB4:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1BA0BC3:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0C02:           LateIdCallSt
  loc_1BA0C20:           Set var_13C = CVar(CStr(var_88.Fields.Item("TaxPer").Value))(var_21C)
  loc_1BA0C26:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1BA0C35:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0C74:           LateIdCallSt
  loc_1BA0C92:           Set var_13C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value))(var_21C)
  loc_1BA0C98:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1BA0CA7:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0CAF:           var_128 = CVar(CLng(7)) 'Long
  loc_1BA0CDF:           var_114 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1BA0CE6:           LateIdCallSt
  loc_1BA0D02:           Set var_21C = Nothing 
  loc_1BA0D09:           var_88.MoveNext
  loc_1BA0D0E:           GoTo loc_1BA0946
  loc_1BA0D11:         End If
  loc_1BA0D11:       End If
  loc_1BA0D17:       If (var_92 = 1) Then
  loc_1BA0D27:         Set var_AC = var_21C(1)
  loc_1BA0D2D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_114)
  loc_1BA0D39:         Set var_13C = "'"(var_128)
  loc_1BA0D5B:         Set var_C4 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(var_13C))))
  loc_1BA0D61:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1BA0D79:         Set var_AC = ()
  loc_1BA0D7F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA0D8E:         var_C0 = CVar((CLng() - 1)) 'Long
  loc_1BA0DA7:         LateIdCallSt
  loc_1BA0DC6:         Set var_AC = 1(global_68)(1)
  loc_1BA0DCC:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1BA0DD4:       End If
  loc_1BA0DDF:       If (global_196 = "Y") Then
  loc_1BA0DF6:         var_118 = "SELECT  Distinct  CAST(P.Vno AS varchar(10)) AS SearchCode, CAST(P.Vno AS varchar(10)) AS Vno, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F95078
  loc_1BA0E3E:         var_114 = CVar(var_118 & "') AND (P.RestCode = '" & global_76 & "') and PD.ContraDocID='") & Me.Fields.Item("SearchCode").Value 
  loc_1BA0E47:         var_138 = var_114 & "'" 
  loc_1BA0E55:         unk_5B2155.Execute CStr(var_138), var_1B4, -1
  loc_1BA0E60:         Set var_9C = var_13C
  loc_1BA0E9B:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1BA0E9E:           ' Referenced from: 1BA0FE0
  loc_1BA0EB2:           If (Me.Recordset15.EOF = 0) Then
  loc_1BA0EF7:             Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_1BA0EFF:             var_144.Tag = var_144(CInt(&HB))
  loc_1BA0F51:             Set var_13C = var_144(CInt(&HB))
  loc_1BA0F57:             Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_1BA0F5F:             var_144.Text = 
  loc_1BA0F92:             var_C4 = Me.Recordset15.Fields.Item("CustName")
  loc_1BA0FB1:             Set var_13C = var_144(CInt(&HC))
  loc_1BA0FB7:             Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_C4.Value))
  loc_1BA0FBF:             var_144.Text = 
  loc_1BA0FDB:             Me.Recordset15.MoveNext
  loc_1BA0FE0:             GoTo loc_1BA0E9E
  loc_1BA0FE3:           End If
  loc_1BA0FE6:         Else
  loc_1BA0FF4:           Set var_AC = var_C4(CInt(&HB))
  loc_1BA0FFA:           Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA1002:           var_C4.Tag = 
  loc_1BA101C:           Set var_AC = var_C4(CInt(&HB))
  loc_1BA1022:           Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA102A:           var_C4.Text = 
  loc_1BA1044:           Set var_AC = var_C4(CInt(&HC))
  loc_1BA104A:           Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA1052:           var_C4.Text = 
  loc_1BA105E:         End If
  loc_1BA105E:       End If
  loc_1BA1061:     Else
  loc_1BA1064:     Else
  loc_1BA1067:     Else
  loc_1BA1067:     End If
  loc_1BA1074:     var_E4 = "Select S.*,O.PhoneNo,O.CustName,O.Addr1,O.Addr2 From (Sale1 S Left Join OrderPersonDetails O On S.DocId=O.DocId) Where S.Docid='"
  loc_1BA10A6:     var_F4 = var_E4 & Me.Fields.Item("DocID").Value 
  loc_1BA10BD:     unk_5B2155.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1BA10C8:     Set var_88 = var_13C
  loc_1BA10E5:     Set var_220 = var_88 
  loc_1BA113A:     If (Proc_6_38_E69628(CVar(var_220.Fields.Item("Printed"))) = "Y") Then
  loc_1BA1149:       var_13C(0).Enabled = 
  loc_1BA1154:     Else
  loc_1BA1160:       (&HFF).Enabled = 
  loc_1BA1168:     End If
  loc_1BA11A1:     Set var_13C = var_144(CInt(2))
  loc_1BA11A7:     Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_220.Fields.Item("DocID").Value))
  loc_1BA11AF:     var_144.Text = 
  loc_1BA11DF:     var_C4 = var_220.Fields.Item("vType")
  loc_1BA11E7:     var_D4 = var_C4.Value
  loc_1BA120D:     var_E4 = 0
  loc_1BA123D:     unk_5B2155.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D4) & "'", var_D4, -1
  loc_1BA1245:     var_AC = var_AC.Fields
  loc_1BA124D:     var_E4 = var_C4.Item(var_C4)
  loc_1BA1255:     var_13C = var_13C.Value
  loc_1BA1264:     global_172 = CStr(var_F4)
  loc_1BA12BA:     Set var_13C = var_144(CInt(0))
  loc_1BA12C0:     Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_220.Fields.Item("VNo").Value))
  loc_1BA12C8:     var_144.Text = var_F4
  loc_1BA12F5:     var_C4 = var_220.Fields.Item("VDate")
  loc_1BA1330:     Set var_13C = var_144(CInt(1))
  loc_1BA1336:     Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1BA133E:     var_144.Text = 1
  loc_1BA1363:     Set var_AC = var_C4(CInt(1))
  loc_1BA1369:     Call 0.Method_Proc_258_145_1BA3A9C0 ()
  loc_1BA139B:     Call Proc_258_157_1BC3D2C(CDate(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1BA13E4:     1(CStr(var_220.Fields.Item("vPrefix").Value)).Caption = 
  loc_1BA1429:     global_180 = CStr(var_220.Fields.Item("KOTNo").Value)
  loc_1BA1470:     Set var_13C = var_144(CInt(0))
  loc_1BA1476:     Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("PhoneNo"))))
  loc_1BA147E:     var_144.Text = 
  loc_1BA14C8:     Set var_13C = var_144(CInt(1))
  loc_1BA14CE:     Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("CustName"))))
  loc_1BA14D6:     var_144.Text = 
  loc_1BA1520:     Set var_13C = var_144(CInt(2))
  loc_1BA1526:     Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("Addr1"))))
  loc_1BA152E:     var_144.Text = 
  loc_1BA157E:     Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("Addr2"))))
  loc_1BA1586:     var_144.Text = 
  loc_1BA15AB:     If (global_304 = "Hall") Then
  loc_1BA15EA:       var_F4 = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_220.Fields.Item("RoomNo").Value 
  loc_1BA1601:       unk_5B2155.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1BA160C:       Set var_90 = var_144(CInt(3))
  loc_1BA163A:       If (var_90.RecordCount > 0) Then
  loc_1BA1676:         Set var_13C = var_144(CInt(3))
  loc_1BA167C:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_90.Fields.Item(0).Value))
  loc_1BA1684:         var_144.Text = var_13C
  loc_1BA169A:       End If
  loc_1BA169D:     Else
  loc_1BA16D5:       var_118 = Proc_6_38_E69628(CVar(var_220.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q Where Code='", var_F4)
  loc_1BA16D9:       var_148 = -1 & var_118
  loc_1BA16E9:       unk_5B2155.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(CVar(var_220.Fields.Item("Party"))) & "'" & "'", var_13C, 
  loc_1BA16F4:       Set var_90 = var_13C
  loc_1BA1722:       If (var_90.RecordCount > 0) Then
  loc_1BA175E:         Set var_13C = var_144(CInt(&HD))
  loc_1BA1764:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_90.Fields.Item(0).Value))
  loc_1BA176C:         var_144.Tag = 
  loc_1BA17BB:         Set var_13C = var_144(CInt(&HD))
  loc_1BA17C1:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_90.Fields.Item(1).Value))
  loc_1BA17C9:         var_144.Text = 
  loc_1BA17F9:         var_C4 = var_90.Fields.Item(2)
  loc_1BA1818:         Set var_13C = var_144(CInt(&HF))
  loc_1BA181E:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_C4.Value))
  loc_1BA1826:         var_144.Text = 
  loc_1BA183F:       Else
  loc_1BA184D:         Set var_AC = var_C4(CInt(&HD))
  loc_1BA1853:         Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA185B:         var_C4.Tag = 
  loc_1BA1875:         Set var_AC = var_C4(CInt(&HD))
  loc_1BA187B:         Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA1883:         var_C4.Text = 
  loc_1BA189D:         Set var_AC = var_C4(CInt(&HF))
  loc_1BA18A3:         Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA18AB:         var_C4.Text = 
  loc_1BA18B7:       End If
  loc_1BA18ED:       Set var_13C = var_144(CInt(3))
  loc_1BA18F3:       Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_220.Fields.Item("RoomNo"))))
  loc_1BA18FB:       var_144.Text = 
  loc_1BA190F:     End If
  loc_1BA1945:     Set var_13C = var_144(CInt(3))
  loc_1BA194B:     Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_220.Fields.Item("RoomNo"))))
  loc_1BA1953:     var_144.Tag = 
  loc_1BA198D:     Proc_6_39_E7D3A0(var_F4)
  loc_1BA19A4:     Set var_13C = var_144(CInt(4))
  loc_1BA19AA:     Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_F4))
  loc_1BA19B2:     var_144.Text = CVar(var_220.Fields.Item("GuarAtt"))
  loc_1BA19F5:     var_F4 = "hh:nn"
  loc_1BA1A1C:     Set var_13C = var_144(CInt(5))
  loc_1BA1A22:     Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_220.Fields.Item("VTIME")), var_F4)), 1)
  loc_1BA1A2A:     var_144.Text = 1
  loc_1BA1A8C:     var_148 = Replace(CStr(var_220.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_1BA1A94:     var_154 = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_220.Fields.Item("VTIME").Value) & "'")
  loc_1BA1AC0:     unk_5B2155.Execute "Select Name From SessionMast WHERE " & CStr(var_154) & " BETWEEN FromTime AND ToTime", var_F4, -1
  loc_1BA1ACB:     Set var_98 = var_13C
  loc_1BA1B02:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1BA1B37:       Set var_13C = var_154(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")), var_13C))
  loc_1BA1B3D:       var_13C.Caption = 
  loc_1BA1B4F:     End If
  loc_1BA1B51:     Set var_220 = Nothing 
  loc_1BA1BAB:     unk_5B2155.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_138, -1
  loc_1BA1BB6:     Set var_88 = var_13C
  loc_1BA1BE4:     If (var_88.RecordCount > 0) Then
  loc_1BA1C17:       Call Proc_258_157_1BC3D2C(CDate(var_88.Fields.Item("SunAppDate").Value))
  loc_1BA1C26:       ' Referenced from:   1BA20BA
  loc_1BA1C35:       If Not(var_88.EOF) Then
  loc_1BA1C7B:         var_13C = var_88.Fields
  loc_1BA1C98:         Set var_168 = var_16C(CInt(var_13C.Item("SNo").Value))
  loc_1BA1C9E:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("SunCode").Value))
  loc_1BA1CA6:         var_16C.Tag = var_13C
  loc_1BA1D24:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BA1D2A:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1BA1D32:         var_16C.Tag = 
  loc_1BA1DB0:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BA1DB6:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1BA1DBE:         var_16C.Caption = 
  loc_1BA1E3C:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BA1E42:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("Roff").Value))
  loc_1BA1E4A:         var_16C.Tag = 
  loc_1BA1EC5:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BA1ECB:         Call 0.Method_Proc_258_145_1BA3A9C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1BA1ED3:         var_16C.Tag = 
  loc_1BA1F4F:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BA1F55:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_88.Fields.Item("SValue").Value))
  loc_1BA1F5D:         var_16C.Text = 
  loc_1BA1FB9:         var_138 = var_88.Fields.Item("SNo").Value
  loc_1BA1FCD:         var_F4 = "0.00"
  loc_1BA1FF4:         Set var_168 = var_16C(CInt(var_138))
  loc_1BA1FFA:         Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F4)), 1)
  loc_1BA2002:         var_16C.Text = 1
  loc_1BA2039:         var_C4 = var_88.Fields.Item("BaseAmount")
  loc_1BA2041:         var_D4 = CVar(var_C4) 'Address
  loc_1BA2048:         Proc_6_39_E7D3A0(var_F4)
  loc_1BA2050:         var_118 = CStr(var_F4)
  loc_1BA2069:         var_13C = var_88.Fields
  loc_1BA2071:         var_144 = var_13C.Item("SNo")
  loc_1BA2086:         Set var_168 = var_16C(CInt(var_144.Value))
  loc_1BA208C:         Call 0.Method_Proc_258_145_1BA3A9C0 (var_118)
  loc_1BA2094:         var_16C.Caption = var_D4
  loc_1BA20B5:         var_88.MoveNext
  loc_1BA20BA:         GoTo loc_1BA1C26
  loc_1BA20BD:       End If
  loc_1BA20BD:     End If
  loc_1BA20DB:     Set var_AC = var_C4(CInt(2))
  loc_1BA20E1:     Call 0.Method_Proc_258_145_1BA3A9C0 (var_118, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='", var_D4)
  loc_1BA20E9:     -1 = var_C4.Text
  loc_1BA2102:     unk_5B2155.Execute var_13C & var_118 & "' And PayType='Cash'", , 
  loc_1BA210D:     Set var_90 = var_13C
  loc_1BA2133:     Set var_AC = var_C4(CInt(6))
  loc_1BA2139:     Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA2141:     var_C4.Text = 
  loc_1BA215B:     Set var_AC = var_C4(CInt(7))
  loc_1BA2161:     Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA2169:     var_C4.Text = 
  loc_1BA2183:     Set var_AC = var_C4(CInt(8))
  loc_1BA2189:     Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA2191:     var_C4.Text = 
  loc_1BA21B1:     If (var_90.RecordCount > 0) Then
  loc_1BA2206:       Set var_13C = var_144(CInt(6))
  loc_1BA220C:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_90.Fields.Item("Amount")), "0.00")), 1)
  loc_1BA2214:       var_144.Text = 1
  loc_1BA2280:       Set var_13C = var_144(CInt(7))
  loc_1BA2286:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Format(CVar(var_90.Fields.Item("TipAmt")), "0.00")), 1)
  loc_1BA228E:       var_144.Text = 1
  loc_1BA22A8:     End If
  loc_1BA22B1:     Set var_AC = (False)
  loc_1BA22B7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1BA22CC:     Set var_AC = (1)
  loc_1BA22D2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA22DC:     var_92 = 1
  loc_1BA22EC:     var_E4 = "Select S.*,I.Name as ItemName,I.RateIncTax,DispCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And S.ITEMRestCode=I.RestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_1BA2335:     unk_5B2155.Execute CStr(var_E4 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_138, -1
  loc_1BA2340:     Set var_88 = var_13C
  loc_1BA236E:     If (var_88.RecordCount > 0) Then
  loc_1BA237E:       ReDim Preserve var_A0(0 To 0)
  loc_1BA2388:       ' Referenced from:   1BA3077
  loc_1BA2397:       If Not(var_88.EOF) Then
  loc_1BA23A4:         Set var_AC = var_13C(vbNullString)
  loc_1BA23AA:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(var_92)
  loc_1BA23C2:         For var_228 = 0 To CInt(UBound(var_A0, 1)):   var_A4 = var_228 'Integer
  loc_1BA2406:           If (0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")), var_A0(CLng(var_A4)))) Then
  loc_1BA240B:             var_A6 = &HFF
  loc_1BA240E:           End If
  loc_1BA2411:         Next var_228 'Integer
  loc_1BA241C:         If (var_A6 = 0) Then
  loc_1BA242B:           ReDim Preserve var_A0(0 To CLng(var_A2))
  loc_1BA2467:           var_A0(CLng(var_A2)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_1BA2477:           var_A2 = (var_A2 + 1)
  loc_1BA247A:         End If
  loc_1BA2483:         Set var_22C = var_A2(0)
  loc_1BA248A:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA2492:         var_128 = CVar(CLng(0)) 'Long
  loc_1BA24C2:         var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1BA24C9:         LateIdCallSt
  loc_1BA2518:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_92)), var_22C)) 'String
  loc_1BA251F:         LateIdCallSt
  loc_1BA256A:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_92)), var_22C)) 'String
  loc_1BA2571:         LateIdCallSt
  loc_1BA25BC:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA25C3:         LateIdCallSt
  loc_1BA260E:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA2615:         LateIdCallSt
  loc_1BA2660:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA2667:         LateIdCallSt
  loc_1BA2699:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA26A1:         var_184 = CVar(CLng(7)) 'Long
  loc_1BA26CE:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1BA26D5:         LateIdCallSt
  loc_1BA270B:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA2713:         var_184 = CVar(CLng(8)) 'Long
  loc_1BA2740:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_1BA2747:         LateIdCallSt
  loc_1BA277D:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA2785:         var_184 = CVar(CLng(9)) 'Long
  loc_1BA27B2:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1BA27B9:         LateIdCallSt
  loc_1BA27EF:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA27F7:         var_184 = CVar(CLng(&HA)) 'Long
  loc_1BA2824:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1BA282B:         LateIdCallSt
  loc_1BA2845:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA284D:         var_128 = CVar(CLng(&HB)) 'Long
  loc_1BA287D:         var_F4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1BA2884:         LateIdCallSt
  loc_1BA28BA:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA28C2:         var_184 = CVar(CLng(&HE)) 'Long
  loc_1BA28EF:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1BA28F6:         LateIdCallSt
  loc_1BA292C:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA2934:         var_184 = CVar(CLng(&HF)) 'Long
  loc_1BA2961:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1BA2968:         LateIdCallSt
  loc_1BA299E:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA29A6:         var_184 = CVar(CLng(&H10)) 'Long
  loc_1BA29D3:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_1BA29DA:         LateIdCallSt
  loc_1BA2A10:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA2A18:         var_184 = CVar(CLng(&H11)) 'Long
  loc_1BA2A45:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1BA2A4C:         LateIdCallSt
  loc_1BA2ABE:         LateIdCallSt
  loc_1BA2B0D:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_92)), var_22C, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1BA2B14:         LateIdCallSt
  loc_1BA2B5F:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_92)), var_22C, var_F4, CVar(CLng(&H12)))) 'String
  loc_1BA2B66:         LateIdCallSt
  loc_1BA2BB1:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA2BB8:         LateIdCallSt
  loc_1BA2C03:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA2C0A:         LateIdCallSt
  loc_1BA2C4B:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA2C53:         var_128 = CVar(CLng(5)) 'Long
  loc_1BA2C6E:         var_118 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_22C, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_22C, var_F4, CVar(CLng(var_92)))), CVar(CLng(var_92)))), 8))
  loc_1BA2C79:         var_138 = CVar(CStr(Val(var_118))) 'String
  loc_1BA2C80:         LateIdCallSt
  loc_1BA2CD6:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_92)), var_22C, var_138, CVar(CLng(&HD)))) 'String
  loc_1BA2CDD:         LateIdCallSt
  loc_1BA2D26:         Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_92)), var_22C, var_F4)
  loc_1BA2D36:         LateIdCallSt
  loc_1BA2D83:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_92)), var_22C, CVar(CStr(var_F4)))) 'String
  loc_1BA2D8A:         LateIdCallSt
  loc_1BA2DD5:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA2DDC:         LateIdCallSt
  loc_1BA2E25:         Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_92)), var_22C, var_F4)
  loc_1BA2E35:         LateIdCallSt
  loc_1BA2E82:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Godowncode")), CVar(CLng(&H1A)), CVar(CLng(var_92)), var_22C, CVar(CStr(var_F4)))) 'String
  loc_1BA2E89:         LateIdCallSt
  loc_1BA2ED4:         var_F4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA2EDB:         LateIdCallSt
  loc_1BA2F24:         Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_92)), var_22C, var_F4)
  loc_1BA2F34:         LateIdCallSt
  loc_1BA2F4C:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA2F7F:         Proc_6_39_E7D3A0(var_F4, CVar(var_88.Fields.Item("CatType")), CVar(CLng(&H1F)), var_E4, var_22C, CVar(CStr(var_F4)))
  loc_1BA2F8F:         LateIdCallSt
  loc_1BA2FDA:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BA2FE2:         var_1A4 = CVar(CLng(&H1E)) 'Long
  loc_1BA300A:         var_1B4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VoidYN")), var_22C, CVar(CStr(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VoidYN")), var_22C, CVar(CStr(var_F4)), "F")))), "F"))) = "F") 'Variant
  loc_1BA301D:         var_204 = CVar(CStr(IIf(var_1B4, "Free", vbNullString))) 'String
  loc_1BA3024:         LateIdCallSt
  loc_1BA3046:         var_C0 = CVar(CLng(var_92)) 'Long
  loc_1BA3058:         LateIdCallSt
  loc_1BA3062:         Set var_22C = Nothing 
  loc_1BA306C:         var_92 = (var_92 + 1)
  loc_1BA3072:         var_88.MoveNext
  loc_1BA3077:         GoTo loc_1BA2388
  loc_1BA307A:       End If
  loc_1BA307E:       Set var_AC = var_22C(var_92)
  loc_1BA3084:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(global_68)
  loc_1BA3093:       var_C0 = CVar((CLng(var_C0) - 1)) 'Long
  loc_1BA30A6:       Set var_C4 = var_C0(global_68)
  loc_1BA30AC:       LateIdCallSt
  loc_1BA30CB:       Set var_AC = var_C4(1)
  loc_1BA30D1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6(var_22C)
  loc_1BA30E7:       Set var_AC = var_C4(CInt(3))
  loc_1BA30ED:       Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString, var_204, var_1A4, var_184)
  loc_1BA310E:       For var_230 = 0 To CInt(UBound(var_A0, 1)):   var_A2 = var_230 'Integer
  loc_1BA3122:         Set var_AC = var_C4(CInt(3))
  loc_1BA3128:         Call 0.Method_Proc_258_145_1BA3A9C0 (var_118, 0, var_138)
  loc_1BA3130:         1 = var_22C
  loc_1BA3156:         Set var_13C = var_144(CInt(3))
  loc_1BA315C:         Call 0.Method_Proc_258_145_1BA3A9C0 (var_118 & var_A0(CLng(var_A2)) & ",")
  loc_1BA3164:         var_144.Text = 1
  loc_1BA3180:       Next var_230 'Integer
  loc_1BA3190:       Set var_AC = var_C4(CInt(3))
  loc_1BA3196:       Call 0.Method_Proc_258_145_1BA3A9C0 ()
  loc_1BA31A6:       Set var_13C = var_144(CInt(3))
  loc_1BA31AC:       Call 0.Method_Proc_258_145_1BA3A9C0 ()
  loc_1BA31CC:       var_138 = (Len(Trim(CVar(var_144))) - 1)
  loc_1BA31DF:       var_1B4 = CVar(var_C4) 'Address
  loc_1BA31FD:       Set var_168 = var_16C(CInt(3))
  loc_1BA3203:       Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Mid(var_1B4, 1, var_138)))
  loc_1BA320B:       var_16C.Text = 
  loc_1BA322B:     End If
  loc_1BA3233:     Set var_AC = (True)
  loc_1BA3239:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1BA3255:     var_F4 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1BA329C:     unk_5B2155.Execute CStr(var_F4 & Me.Fields.Item("SearchCode").Value & "'"), var_1B4, -1
  loc_1BA32A7:     Set var_88 = var_13C
  loc_1BA32D0:     Set var_AC = var_13C(1)
  loc_1BA32D6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA32F2:     If (var_88.RecordCount > 0) Then
  loc_1BA32F5:       ' Referenced from:   1BA36BD
  loc_1BA3304:       If Not(var_88.EOF) Then
  loc_1BA330B:         Set var_234 = ()
  loc_1BA3317:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(vbNullString)
  loc_1BA3323:         Set var_13C = ()
  loc_1BA3329:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA3338:         var_E4 = CVar((CLng() - 1)) 'Long
  loc_1BA3377:         LateIdCallSt
  loc_1BA3395:         Set var_13C = CVar(CStr(var_88.Fields.Item("Sno1").Value))(var_234)
  loc_1BA339B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1BA33AA:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA33E9:         LateIdCallSt
  loc_1BA3407:         Set var_13C = CVar(CStr(var_88.Fields.Item("SNo").Value))(var_234)
  loc_1BA340D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1BA341C:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA345B:         LateIdCallSt
  loc_1BA3479:         Set var_13C = CVar(CStr(var_88.Fields.Item("TaxCode").Value))(var_234)
  loc_1BA347F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(2)))
  loc_1BA348E:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA34CD:         LateIdCallSt
  loc_1BA34EB:         Set var_13C = CVar(CStr(var_88.Fields.Item("Name").Value))(var_234)
  loc_1BA34F1:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1BA3500:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA353F:         LateIdCallSt
  loc_1BA355D:         Set var_13C = CVar(CStr(var_88.Fields.Item("BaseValue").Value))(var_234)
  loc_1BA3563:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1BA3572:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA35B1:         LateIdCallSt
  loc_1BA35CF:         Set var_13C = CVar(CStr(var_88.Fields.Item("TaxPer").Value))(var_234)
  loc_1BA35D5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1BA35E4:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA3623:         LateIdCallSt
  loc_1BA3641:         Set var_13C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value))(var_234)
  loc_1BA3647:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1BA3656:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA365E:         var_128 = CVar(CLng(7)) 'Long
  loc_1BA368E:         var_114 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1BA3695:         LateIdCallSt
  loc_1BA36B1:         Set var_234 = Nothing 
  loc_1BA36B8:         var_88.MoveNext
  loc_1BA36BD:         GoTo loc_1BA32F5
  loc_1BA36C0:       End If
  loc_1BA36C0:     End If
  loc_1BA36C6:     If (var_92 = 1) Then
  loc_1BA36D6:       Set var_AC = var_234(1)
  loc_1BA36DC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_114)
  loc_1BA36E8:       Set var_13C = "'"(var_128)
  loc_1BA370A:       Set var_C4 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(var_13C))))
  loc_1BA3710:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1BA3728:       Set var_AC = ()
  loc_1BA372E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA373D:       var_C0 = CVar((CLng() - 1)) 'Long
  loc_1BA3756:       LateIdCallSt
  loc_1BA3775:       Set var_AC = 1(global_68)(1)
  loc_1BA377B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1BA3783:     End If
  loc_1BA378E:     If (global_196 = "Y") Then
  loc_1BA37A5:       var_118 = "SELECT  Distinct  CAST(P.Vno AS varchar(10)) AS SearchCode, CAST(P.Vno AS varchar(10)) AS Vno, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F95078
  loc_1BA37BD:       var_F4 = CVar(var_118 & "') AND (P.RestCode = '" & global_76 & "') and PD.ContraDocID='") 'String
  loc_1BA37ED:       var_114 = var_F4 & Me.Fields.Item("SearchCode").Value 
  loc_1BA37F6:       var_138 = var_114 & "'" 
  loc_1BA3804:       unk_5B2155.Execute CStr(var_138), var_1B4, -1
  loc_1BA380F:       Set var_9C = var_13C
  loc_1BA383C:       var_B0 = Me.Recordset15.RecordCount
  loc_1BA384A:       If (var_B0 > 0) Then
  loc_1BA384D:         ' Referenced from:   1BA398F
  loc_1BA3861:         If (Me.Recordset15.EOF = 0) Then
  loc_1BA38A6:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_1BA38AE:           var_144.Tag = var_144(CInt(&HB))
  loc_1BA3900:           Set var_13C = var_144(CInt(&HB))
  loc_1BA3906:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_1BA390E:           var_144.Text = 
  loc_1BA3941:           var_C4 = Me.Recordset15.Fields.Item("CustName")
  loc_1BA3960:           Set var_13C = var_144(CInt(&HC))
  loc_1BA3966:           Call 0.Method_Proc_258_145_1BA3A9C0 (CStr(var_C4.Value))
  loc_1BA396E:           var_144.Text = 
  loc_1BA398A:           Me.Recordset15.MoveNext
  loc_1BA398F:           GoTo loc_1BA384D
  loc_1BA3992:         End If
  loc_1BA3995:       Else
  loc_1BA39A3:         Set var_AC = var_C4(CInt(&HB))
  loc_1BA39A9:         Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA39B1:         var_C4.Tag = 
  loc_1BA39CB:         Set var_AC = var_C4(CInt(&HB))
  loc_1BA39D1:         Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA39D9:         var_C4.Text = 
  loc_1BA39F3:         Set var_AC = var_C4(CInt(&HC))
  loc_1BA39F9:         Call 0.Method_Proc_258_145_1BA3A9C0 (vbNullString)
  loc_1BA3A01:         var_C4.Text = 
  loc_1BA3A0D:       End If
  loc_1BA3A0D:     End If
  loc_1BA3A0D:   End If
  loc_1BA3A10: Else
  loc_1BA3A10:   Call Proc_258_147_10EBD9C()
  loc_1BA3A15: End If
  loc_1BA3A15: Call Proc_258_149_FD7788()
  loc_1BA3A1F: Set var_88 = Nothing
  loc_1BA3A27: Set var_90 = Nothing
  loc_1BA3A2F: Set var_88 = Nothing
  loc_1BA3A37: Set var_9C = Nothing
  loc_1BA3A3F: Set var_98 = Nothing
  loc_1BA3A46: Exit Sub
  loc_1BA3A47: ' Referenced from: 1B9E7A8
  loc_1BA3A4F: Set var_AC = Err()
  loc_1BA3A55: Call 0.Method_arg_1C (var_B0)
  loc_1BA3A66: If (var_B0 = &HBCD) Then
  loc_1BA3A82:   MsgBox("Record is Deleted by somebody", &H40, var_F4, var_114, var_138)
  loc_1BA3A92:   Exit Sub
  loc_1BA3A93: End If
  loc_1BA3A93: Proc_6_60_E63754()
  loc_1BA3A98: Exit Sub
End Sub

Public Sub Proc_258_146_1120BB0
  'Data Table: 5B2118
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_5B2155 As Connection15
  Dim var_D0 As Recordset15
  Dim var_E8 As Field20
  Dim var_F8 As Variant
  Dim var_AC As Variant
  Dim var_118 As Variant
  loc_112087D: Set var_9C = Me.TopCtrl1
  loc_1120883: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(&HFF)
  loc_112088B: var_B0 = CStr()
  loc_112089C: If (var_B0 = "Add") Then
  loc_11208CC:   Set var_9C = var_B4(CInt(2))
  loc_11208D2:   Call 0.Method_Proc_258_146_1120BB00 (var_B0, "Select Count(*) From Sale1 Where DocID='", var_AC, -1, var_D0)
  loc_11208F3:   unk_5B2155.Execute 0 & var_B0 & "'", var_E8, var_F8
  loc_11208FB:    = var_D0.Fields
  loc_1120903:    = var_B4.Text.Item()
  loc_112090B:    = var_E8.Value
  loc_1120938:   If (var_F8 > 0) Then
  loc_1120941:     Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1120954:     Set var_9C = var_B4(CInt(2))
  loc_112095A:     Call 0.Method_Proc_258_146_1120BB00 (var_B0)
  loc_1120962:     var_B4.Text = var_B0
  loc_1120971:   End If
  loc_1120971: End If
  loc_112097A: Set var_9C = 1(var_88)
  loc_1120980: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1120996: For var_11C =  To CInt((CLng() - 1)):  = var_11C 'Integer
  loc_11209B1:   Set var_9C = CVar(CLng(var_88))(CVar(CLng(4)))
  loc_11209B7:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_11209C8:   var_118 = Trim(CVar(CStr()))
  loc_11209E4:   If CBool(var_118 <> vbNullString) Then
  loc_11209FC:     Set var_9C = CVar(CLng(var_88))(CVar(CLng(7)))
  loc_1120A02:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1120A23:     If (CDbl(Val(CStr())) = CDbl(0)) Then
  loc_1120A4B:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_14C)
  loc_1120A6B:       Set var_9C = (CVar(CLng(var_88)))
  loc_1120A71:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1120A7D:       Set var_9C = ()
  loc_1120A83:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1120A93:       Proc_258_146_1120BB0 = 0
  loc_1120A99:     End If
  loc_1120AAE:     Set var_9C = CVar(CLng(var_88))(CVar(CLng(8)))
  loc_1120AB4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1120AE5:     Set var_B4 = CVar(CLng(var_88))(CVar(CLng(&H1E)))
  loc_1120AEB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CDbl(Val(CStr())) = CDbl(0)))
  loc_1120AF6:     var_118 = CVar(CStr()) 'String
  loc_1120AFC:     var_14C = Trim(var_118)
  loc_1120B2B:     If CBool( And (var_14C <> "Free")) Then
  loc_1120B53:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_14C)
  loc_1120B73:       Set var_9C = (CVar(CLng(var_88)))
  loc_1120B79:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1120B85:       Set var_9C = ()
  loc_1120B8B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1120B9B:       Proc_258_146_1120BB0 = 0
  loc_1120BA1:     End If
  loc_1120BA1:   End If
  loc_1120BA4: Next var_11C 'Integer
  loc_1120BA9: Proc_258_146_1120BB0 = 
End Sub

Public Sub Proc_258_147_10EBD9C
  'Data Table: 5B2118
  Dim var_8C As Label
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  loc_10EBA85: (vbNullString).Caption = 
  loc_10EBA9B: Set var_8C = var_86(var_8E)
  loc_10EBAA1: Call 0.Method_Proc_258_147_10EBD9CC (CByte(0))
  loc_10EBAB1: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_10EBAC7:   Set var_8C = var_98(CInt(var_86))
  loc_10EBACD:   Call 0.Method_Proc_258_147_10EBD9C0 (vbNullString)
  loc_10EBAD5:   var_98.Text = 
  loc_10EBAF1:   Set var_8C = var_98(CInt(var_86))
  loc_10EBAF7:   Call 0.Method_Proc_258_147_10EBD9C0 (vbNullString)
  loc_10EBAFF:   var_98.Tag = 
  loc_10EBB0E: Next var_92 'Byte
  loc_10EBB21: Set var_8C = (1)
  loc_10EBB27: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_10EBB3C: (vbNullString).Caption = 
  loc_10EBB6A: Set var_98 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_10EBB70: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_10EBB84: var_A8 = 1
  loc_10EBBA3: Set var_8C = CVar(CLng(1))(global_312)
  loc_10EBBA9: LateIdCallSt
  loc_10EBBD3: Set var_8C = CVar(CLng(2))(global_308)
  loc_10EBBD9: LateIdCallSt
  loc_10EBBEE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(1(var_8C))
  loc_10EBBFD: var_A8 = CVar((CLng(var_A8) - 1)) 'Long
  loc_10EBC10: Set var_98 = 1(global_68)
  loc_10EBC16: LateIdCallSt
  loc_10EBC35: Set var_8C = var_98(1)
  loc_10EBC3B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_10EBC51: Set var_8C = var_86(var_8E)
  loc_10EBC57: Call 0.Method_Proc_258_147_10EBD9CC (CByte(1))
  loc_10EBC64: For var_100 =  To CByte(var_8E):  = var_100 'Byte
  loc_10EBC7A:   Set var_8C = var_98(CInt(var_86))
  loc_10EBC80:   Call 0.Method_Proc_258_147_10EBD9C0 (vbNullString)
  loc_10EBC88:   var_98.Text = 
  loc_10EBC97: Next var_100 'Byte
  loc_10EBCAB: Set var_8C = var_86(var_8E)
  loc_10EBCB1: Call 0.Method_Proc_258_147_10EBD9CC (CByte(1))
  loc_10EBCBE: For var_104 =  To CByte(var_8E):  = var_104 'Byte
  loc_10EBCD4:   Set var_8C = var_98(CInt(var_86))
  loc_10EBCDA:   Call 0.Method_Proc_258_147_10EBD9C0 (vbNullString)
  loc_10EBCE2:   var_98.Text = 
  loc_10EBCF1: Next var_104 'Byte
  loc_10EBD05: Set var_8C = var_98(CInt(5))
  loc_10EBD0B: Call 0.Method_Proc_258_147_10EBD9C0 ("00:00")
  loc_10EBD13: var_98.Text = 
  loc_10EBD2D: Set var_8C = var_98(CInt(5))
  loc_10EBD33: Call 0.Method_Proc_258_147_10EBD9C0 (vbNullString)
  loc_10EBD3B: var_98.Tag = 
  loc_10EBD59: Set var_8C = var_98(CInt(4))
  loc_10EBD5F: Call 0.Method_Proc_258_147_10EBD9C0 (CStr(1))
  loc_10EBD67: var_98.Text = 
  loc_10EBD7C: global_316 = vbNullString
  loc_10EBD8D: Set var_8C = (0)
  loc_10EBD93: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_10EBD9B: Exit Sub
End Sub

Public Sub Proc_258_148_107A830(arg_C) '107A830
  'Data Table: 5B2118
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_107A592: Set var_8C = var_86(var_8E)
  loc_107A598: Call 0.Method_Proc_258_148_107A830C (CByte(0))
  loc_107A5A8: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_107A5BE:   Set var_8C = var_98(CInt(var_86))
  loc_107A5C4:   Call 0.Method_Proc_258_148_107A8300 (arg_C)
  loc_107A5CC:   var_98.Enabled = 
  loc_107A5DB: Next var_92 'Byte
  loc_107A5EF: Set var_8C = var_86(var_8E)
  loc_107A5F5: Call 0.Method_Proc_258_148_107A830C (CByte(1))
  loc_107A602: For var_9C =  To CByte(var_8E):  = var_9C 'Byte
  loc_107A618:   Set var_8C = var_98(CInt(var_86))
  loc_107A61E:   Call 0.Method_Proc_258_148_107A8300 (arg_C)
  loc_107A626:   var_98.Enabled = 
  loc_107A635: Next var_9C 'Byte
  loc_107A649: Set var_8C = var_86(var_8E)
  loc_107A64F: Call 0.Method_Proc_258_148_107A830C (CByte(1))
  loc_107A65C: For var_A0 =  To CByte(var_8E):  = var_A0 'Byte
  loc_107A672:   Set var_8C = var_98(CInt(var_86))
  loc_107A678:   Call 0.Method_Proc_258_148_107A8300 (arg_C)
  loc_107A680:   var_98.Enabled = 
  loc_107A68F: Next var_A0 'Byte
  loc_107A6A2: Set var_8C = var_98(CInt(2))
  loc_107A6A8: Call 0.Method_Proc_258_148_107A8300 (0)
  loc_107A6B0: var_98.Enabled = 
  loc_107A6C9: Set var_8C = var_98(CInt(5))
  loc_107A6CF: Call 0.Method_Proc_258_148_107A8300 (0)
  loc_107A6D7: var_98.Enabled = 
  loc_107A6F0: Set var_8C = var_98(CInt(1))
  loc_107A6F6: Call 0.Method_Proc_258_148_107A8300 (0)
  loc_107A6FE: var_98.Enabled = 
  loc_107A717: Set var_8C = var_98(CInt(0))
  loc_107A71D: Call 0.Method_Proc_258_148_107A8300 (0)
  loc_107A725: var_98.Enabled = 
  loc_107A73E: Set var_8C = var_98(CInt(8))
  loc_107A744: Call 0.Method_Proc_258_148_107A8300 (0)
  loc_107A74C: var_98.Enabled = 
  loc_107A765: Set var_8C = (Not(arg_C))
  loc_107A76B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_107A783: Set var_8C = (Not(arg_C))
  loc_107A789: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_107A7A1: Set var_8C = (Not(arg_C))
  loc_107A7A7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_107A7BD: Set var_8C = (arg_C)
  loc_107A7C3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_107A7D8: (arg_C).Enabled = 
  loc_107A7ED: Set var_8C = var_98(CInt(&HD))
  loc_107A7F3: Call 0.Method_Proc_258_148_107A8300 (0)
  loc_107A7FB: var_98.Enabled = 
  loc_107A814: Set var_8C = var_98(CInt(&HF))
  loc_107A81A: Call 0.Method_Proc_258_148_107A8300 (0)
  loc_107A822: var_98.Enabled = 
  loc_107A82E: Exit Sub
End Sub

Public Sub Proc_258_149_FD7788
  'Data Table: 5B2118
  loc_FD75C8: If (CBool(().Visible) = &HFF) Then
  loc_FD75DA:   (False).Visible = 
  loc_FD75E2: End If
  loc_FD75FE: If (CBool(().Visible) = &HFF) Then
  loc_FD7610:   (False).Visible = 
  loc_FD7618: End If
  loc_FD7634: If (CBool(().Visible) = &HFF) Then
  loc_FD7646:   (False).Visible = 
  loc_FD764E: End If
  loc_FD766A: If (CBool(().Visible) = &HFF) Then
  loc_FD767C:   (False).Visible = 
  loc_FD7684: End If
  loc_FD76A0: If (CBool(().Visible) = &HFF) Then
  loc_FD76B2:   (False).Visible = 
  loc_FD76BA: End If
  loc_FD76D6: If (CBool(().Visible) = &HFF) Then
  loc_FD76E8:   (False).Visible = 
  loc_FD76F0: End If
  loc_FD770B: If (Me.FrameQty.Visible = &HFF) Then
  loc_FD771A:   Me.FrameQty.Visible = False
  loc_FD7722: End If
  loc_FD772F: var_BA = Me.FrDiscType.Visible
  loc_FD773D: If (var_BA = &HFF) Then
  loc_FD774C:   Me.FrDiscType.Visible = False
  loc_FD7754: End If
  loc_FD7761:  = (var_BA).Visible
  loc_FD776F: If (var_BA = &HFF) Then
  loc_FD777E:   (0).Visible = 
  loc_FD7786: End If
  loc_FD7786: Exit Sub
End Sub

Public Sub Proc_258_150_F662C0
  'Data Table: 5B2118
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Field20
  loc_F6619C: Call Proc_258_149_FD7788()
  loc_F661AC: Set var_88 = var_8C(CInt(1))
  loc_F661B2: Call 0.Method_Proc_258_150_F662C00 ()
  loc_F661BA: var_94 = "Invoice Date"
  loc_F661DB: If (Proc_6_27_EA61EC(var_8C) = 0) Then
  loc_F661DE:   Exit Sub
  loc_F661DF: End If
  loc_F661EA: Set var_88 = var_8C(CInt(0))
  loc_F661F0: Call 0.Method_Proc_258_150_F662C00 (var_94)
  loc_F661F8: var_94 = "Invoice No"
  loc_F66219: If (Proc_6_27_EA61EC(var_8C) = 0) Then
  loc_F6621C:   Exit Sub
  loc_F6621D: End If
  loc_F66254: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F6626C:   var_88 = Me.Fields
  loc_F66296:   If (var_88.Item("MultiBillGeneration").Value = "Yes") Then
  loc_F66299:     Call Proc_258_153_1D71198(var_94)
  loc_F662A1:   Else
  loc_F662A1:     Call TopCtrl1_UnknownEvent_16()
  loc_F662A6:   End If
  loc_F662A9: Else
  loc_F662AD:   Call 0.Method_arg_1E8 (var_88)
  loc_F662B5:   Call var_88.SetFocus
  loc_F662BE: End If
  loc_F662BE: Exit Sub
End Sub

Public Sub Proc_258_151_10E8A40
  'Data Table: 5B2118
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
  loc_10E8768: var_90 = global_184
  loc_10E877F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E87B0: Set var_A8 = var_AC(CInt(1))
  loc_10E87B6: Call 0.Method_Proc_258_151_10E8A400 (CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_130)
  loc_10E87C5: Proc_6_7_F26918(var_CC, CVar(var_AC))
  loc_10E87CD: var_EC = -1 & var_CC 
  loc_10E87E1: Me.Connection15.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E87EC: Set var_8C = var_134
  loc_10E8828: If (var_8C.RecordCount > 0) Then
  loc_10E8867:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E889B:     global_164 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E88C6:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E88DB:     var_CC = (var_AC.Value + 1)
  loc_10E88E4:     global_168 = CLng(var_CC)
  loc_10E88F5:   End If
  loc_10E88F5: End If
  loc_10E8920: var_BC = Space((5 - Len(var_90)))
  loc_10E8928: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E893C: var_EC = Space((5 - Len(global_164)))
  loc_10E8944: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E8951: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_164))
  loc_10E896A: var_14C = Space((8 - Len(CStr(global_168))))
  loc_10E8972: var_15C = (var_130 + var_14C)
  loc_10E8981: var_17C = (var_15C + CVar(CStr(global_168)))
  loc_10E898C: global_156 = CStr(var_17C)
  loc_10E89C2: global_168(global_164).Caption = 
  loc_10E89DB: Set var_A8 = var_AC(CInt(2))
  loc_10E89E1: Call 0.Method_Proc_258_151_10E8A400 (global_156)
  loc_10E89E9: var_AC.Text = 
  loc_10E8A0B: Set var_A8 = var_AC(CInt(0))
  loc_10E8A11: Call 0.Method_Proc_258_151_10E8A400 (CStr(global_168))
  loc_10E8A19: var_AC.Text = 
  loc_10E8A2E: var_88 = global_156
  loc_10E8A36: Set var_8C = Nothing
  loc_10E8A39: Proc_258_151_10E8A40 = 
End Sub

Public Sub Proc_258_152_10B9A78(arg_C, arg_10, arg_14) '10B9A78
  'Data Table: 5B2118
  Dim unk_5B2155 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B97E6: If (arg_C = "RSBIL") Then
  loc_10B980D:   unk_5B2155.Execute "Select Distinct DocId,V_Type,V_No From Sale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B9818:   Set var_8C = var_C4
  loc_10B982B:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B9831: Else
  loc_10B9836:   Proc_258_152_10B9A78 = &HFF
  loc_10B983C: End If
  loc_10B9850: If (var_8C.RecordCount > 0) Then
  loc_10B9853:   ' Referenced from: 10B99CC
  loc_10B9862:   If Not(var_8C.EOF) Then
  loc_10B986D:     If (var_90 = vbNullString) Then
  loc_10B98B0:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B98B7:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B98E9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B990E:     Else
  loc_10B994A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B996A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B9997:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B999C:       var_90 = CStr(var_11C)
  loc_10B99C4:     End If
  loc_10B99C7:     var_8C.MoveNext
  loc_10B99CC:     GoTo loc_10B9853
  loc_10B99CF:   End If
  loc_10B99D5:   Call 0.Method_arg_50 (var_138)
  loc_10B9A31:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B9A34:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B9A63:   Set var_8C = Nothing
  loc_10B9A66:   Proc_258_152_10B9A78 = 0
  loc_10B9A6C: End If
  loc_10B9A71: Proc_258_152_10B9A78 = &HFF
End Sub

Public Sub Proc_258_153_1D71198
  'Data Table: 5B2118
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_208 As Variant
  Dim var_1F8 As Variant
  Dim var_248 As Variant
  Dim var_1E8 As Variant
  Dim var_1B0 As String
  Dim unk_5B2155 As Connection15
  Dim var_88 As Variant
  Dim var_1A4 As Variant
  Dim var_254 As Variant
  Dim var_260 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_218 As Variant
  Dim var_1D8 As Variant
  Dim var_238 As Variant
  Dim var_278 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_29C As String
  Dim var_1AC As Variant
  Dim var_250 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Double
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Double
  Dim var_258 As String
  Dim MemVar_1F950EC As Double
  Dim Me As Recordset15
  Dim var_2F4 As String
  Dim var_2F8 As String
  Dim var_2FC As String
  Dim var_2D0 As Variant
  Dim var_118 As Variant
  Dim var_8A As Variant
  Dim var_32C As Variant
  Dim var_3E8 As Variant
  Dim var_478 As Variant
  Dim var_4C0 As Variant
  Dim var_A58 As Double
  Dim var_510 As TextBox
  Dim var_A60 As Double
  Dim var_7A0 As Variant
  Dim var_A68 As Double
  Dim var_8CC As String
  Dim var_964 As TextBox
  Dim var_324 As String
  Dim var_2AC As Variant
  Dim var_2BC As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_370 As Variant
  Dim var_380 As Variant
  Dim var_390 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_498 As Variant
  Dim var_4B8 As Variant
  Dim var_4E4 As Variant
  Dim var_504 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_5F4 As Variant
  Dim var_614 As Variant
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_6B4 As Variant
  Dim var_6F4 As Variant
  Dim var_714 As Variant
  Dim var_754 As Variant
  Dim var_7C4 As Variant
  Dim var_804 As Variant
  Dim var_894 As Variant
  Dim var_95C As Variant
  Dim var_9C8 As Variant
  Dim var_A08 As Variant
  Dim var_A28 As Variant
  Dim var_A2C As String
  Dim var_3F0 As Variant
  Dim var_438 As Variant
  Dim var_508 As TextBox
  Dim var_798 As TextBox
  Dim var_8B8 As TextBox
  Dim var_488 As Variant
  Dim var_874 As Variant
  Dim var_91C As Variant
  Dim var_A78 As Variant
  Dim var_A88 As Variant
  Dim var_328 As Variant
  Dim var_448 As Variant
  Dim var_AB0 As String
  Dim var_AB4 As String
  Dim var_AD8 As String
  Dim var_1170 As Double
  Dim var_B3C As String
  Dim var_1178 As Double
  Dim var_C08 As String
  Dim var_C70 As String
  Dim var_1190 As Double
  Dim var_CD8 As String
  Dim var_1198 As Double
  Dim var_11A0 As Double
  Dim var_11A8 As Double
  Dim var_330 As String
  Dim var_3EC As String
  Dim var_514 As String
  Dim var_7A4 As String
  Dim var_968 As String
  Dim var_AA0 As String
  Dim var_AA4 As String
  Dim var_AA8 As String
  Dim var_DF8 As Variant
  Dim var_E7C As Variant
  Dim var_EAC As Variant
  Dim var_F10 As Variant
  Dim var_FA4 As Variant
  Dim var_FD4 As Variant
  Dim var_10AC As Variant
  Dim var_1110 As Variant
  Dim var_4C4 As String
  Dim var_3E4 As TextBox
  Dim var_50C As Variant
  Dim var_960 As TextBox
  Dim var_A50 As Variant
  Dim var_DA4 As Variant
  Dim var_14E As Integer
  Dim var_3F4 As TextBox
  Dim var_130 As Recordset15
  Dim var_134 As Recordset15
  Dim var_4BC As TextBox
  Dim var_C6C As Variant
  Dim var_D3C As Fields15
  Dim var_8C8 As Variant
  Dim var_AAC As String
  Dim var_158 As Recordset15
  Dim var_160 As Long
  Dim var_170 As Double
  Dim var_92C As Variant
  Dim var_E6C As Variant
  Dim var_F00 As Variant
  Dim var_F94 As Variant
  Dim var_1100 As Variant
  Dim var_1164 As Variant
  Dim var_A98 As Variant
  Dim var_C04 As Label
  Dim var_CD4 As Field20
  loc_1D69568: On Error Goto loc_1D7117B
  loc_1D69576: Set var_1A4 = var_1A8(CInt(1))
  loc_1D6957C: Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D69584: var_1B0 = "Voucher Date"
  loc_1D695A5: If (Proc_6_27_EA61EC(var_1A8) = 0) Then
  loc_1D695A8:   Exit Sub
  loc_1D695A9: End If
  loc_1D695B4: If (global_240 <> "Y") Then
  loc_1D695C2:   Set var_1A4 = var_1A8(CInt(3))
  loc_1D695C8:   Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D695D0:   var_1B0 = "Table No"
  loc_1D695F1:   If (Proc_6_27_EA61EC(var_1A8) = 0) Then
  loc_1D695F4:     Exit Sub
  loc_1D695F5:   End If
  loc_1D695F5: End If
  loc_1D6960E: Set var_1A4 = var_1A8(CInt(&HB))
  loc_1D69614: Call 0.Method_Proc_258_153_1D711980 (var_1B0, (global_240 = "N"))
  loc_1D69634: If ( And (var_1A8.Tag <> vbNullString)) Then
  loc_1D69642:   Set var_1A4 = var_1A8(CInt(&HB))
  loc_1D69648:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D69650:   var_1B0 = "Order No"
  loc_1D69671:   If (Proc_6_27_EA61EC(var_1A8) = 0) Then
  loc_1D69674:     Exit Sub
  loc_1D69675:   End If
  loc_1D69675: End If
  loc_1D6967C: Set var_1A4 = var_1B0(var_1B2)
  loc_1D69682: Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D69695: Call TxtGt_Validate((var_1B2 + 1))
  loc_1D696A8: Set var_1A4 = var_1A8(CInt(0))
  loc_1D696AE: Call 0.Method_Proc_258_153_1D711980 (0)
  loc_1D696B6: var_1B0 = "Voucher No"
  loc_1D696D7: If (Proc_6_27_EA61EC(var_1A8) = 0) Then
  loc_1D696DA:   Exit Sub
  loc_1D696DB: End If
  loc_1D696E6: Set var_1A4 = var_1A8(CInt(5))
  loc_1D696EC: Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D696F4: var_1B0 = "KOT Time"
  loc_1D69715: If (Proc_6_27_EA61EC(var_1A8) = 0) Then
  loc_1D69718:   Exit Sub
  loc_1D69719: End If
  loc_1D69724: If (global_76 = vbNullString) Then
  loc_1D69740:   MsgBox("Open RestaurantChange Form ", 0, var_1F8, var_218, var_238)
  loc_1D69750:   Exit Sub
  loc_1D69751: End If
  loc_1D69766: Set var_1A4 = 1(CVar(CLng(4)))
  loc_1D6976C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1B0)
  loc_1D69777: var_1F8 = CVar(CStr()) 'String
  loc_1D6977D: var_218 = Trim(var_1F8)
  loc_1D69799: If (var_218 = vbNullString) Then
  loc_1D697AF:   var_1D8 = "No Item On First Row.."
  loc_1D697B5:   MsgBox(var_1D8, 0, var_1F8, var_218, var_238)
  loc_1D697D2:   Set var_1A4 = (1)
  loc_1D697D8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1D697E4:   Set var_1A4 = ()
  loc_1D697EA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1D697F5:   Exit Sub
  loc_1D697F6: End If
  loc_1D69801: If (global_304 = "Room Service") Then
  loc_1D69821:   Proc_6_17_EAAE40(var_1D8, MemVar_1F95078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1D69837:   unk_5B2155.Execute CStr(var_218 & var_1D8), -1, var_1A4
  loc_1D69842:   Set var_88 = var_1A4
  loc_1D69868:   If (var_88.RecordCount > 0) Then
  loc_1D6987D:     var_1A4 = var_88.Fields
  loc_1D698AF:     If (Proc_6_38_E69628(var_1A4.Item(0).Value) = vbNullString) Then
  loc_1D698CD:       var_1D8 = "Please define Room Payment Type From Enviro"
  loc_1D698D3:       MsgBox(var_1D8, &H40, "Aatithya", var_218, var_238)
  loc_1D698E3:       Exit Sub
  loc_1D698E4:     End If
  loc_1D698E4:   End If
  loc_1D698E7: Else
  loc_1D69904:   Proc_6_17_EAAE40(var_1D8, MemVar_1F95078, "Select CashPayType From enviro WHERE LOGSITE_CODE=")
  loc_1D69910:   var_1B0 = CStr(var_218 & var_1D8)
  loc_1D6991A:   unk_5B2155.Execute var_1B0, -1, var_1A4
  loc_1D69925:   Set var_88 = var_1A4
  loc_1D6994B:   If (var_88.RecordCount > 0) Then
  loc_1D69968:     var_1A8 = var_88.Fields.Item(0)
  loc_1D6997D:     var_12C = Proc_6_38_E69628(var_1A8.Value)
  loc_1D69992:     If (var_12C = vbNullString) Then
  loc_1D699B6:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "Aatithya", var_218, var_238)
  loc_1D699C6:       Exit Sub
  loc_1D699C7:     End If
  loc_1D699C7:   End If
  loc_1D699C7: End If
  loc_1D699D5: Set var_1A4 = var_1A8(CInt(6))
  loc_1D699DB: Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D699E3:  = var_1A8.Text
  loc_1D699FF: If (CDbl(Val(var_1B0)) <> CDbl(0)) Then
  loc_1D69A09:   Set var_1AC = (var_1B2)
  loc_1D69A0F:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D69A21:   Set var_250 = var_254(var_1B2)
  loc_1D69A27:   Call 0.Method_Proc_258_153_1D711980 (var_258)
  loc_1D69A2F:    = var_254.Text
  loc_1D69A3C:   var_260 = Val(var_258)
  loc_1D69A4D:   Set var_1A4 = var_1A8(CInt(6))
  loc_1D69A53:   Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D69A82:   If (CDbl(Val(var_1B0)) < CDbl(var_1A8.Text)) Then
  loc_1D69AA6:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_218, var_238)
  loc_1D69AC1:     Set var_1A4 = var_1A8(CInt(6))
  loc_1D69AC7:     Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D69ACF:     var_1A8.SetFocus
  loc_1D69ADB:     Exit Sub
  loc_1D69ADC:   End If
  loc_1D69ADC: End If
  loc_1D69AE5: Set var_1A4 = 1(var_92)
  loc_1D69AEB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D69B01: For var_264 =  To CInt((CLng() - 1)):  = var_264 'Integer
  loc_1D69B1C:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D69B22:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D69B43:   If (CDbl(Val(CStr())) > CDbl(0)) Then
  loc_1D69B5B:     Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D69B61:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D69B74:     var_260 = Val(CStr())
  loc_1D69B7E:     var_A4 = (var_A4 + var_260)
  loc_1D69B8D:   Else
  loc_1D69BA2:     Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D69BA8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A4)
  loc_1D69BC5:     var_AC = (var_AC + Val(CStr(var_260)))
  loc_1D69BD1:   End If
  loc_1D69BD4: Next var_264 'Integer
  loc_1D69BE5: Set var_1A4 = var_92(var_1B2)
  loc_1D69BEB: Call 0.Method_Proc_258_153_1D711988 (1)
  loc_1D69BF6: For var_268 =  To var_1B2:  = var_268 'Integer
  loc_1D69C1F:   var_1B0 = "Select IsNull(Max(Nature),'') from SundryType Where  LOGSITE_CODE='" & MemVar_1F95078
  loc_1D69C26:   var_218 = CVar(var_1B0 & "' AND SundryCode='") 'String
  loc_1D69C36:   Set var_1A4 = var_1A8(var_92)
  loc_1D69C3C:   Call 0.Method_Proc_258_153_1D711980 (var_258, var_218, var_2AC, -1, var_1AC)
  loc_1D69C44:   var_250 = var_1A8.Tag
  loc_1D69C4C:   var_1D8 = CVar(var_258) 'String
  loc_1D69C52:   var_1F8 = Trim(var_1D8)
  loc_1D69C87:   unk_5B2155.Execute CStr(0 & var_1F8 & "' And V_Type='" & CVar(global_184) & "'"), var_254, var_2BC
  loc_1D69C8F:    = var_1AC.Fields
  loc_1D69C97:    = var_250.Item()
  loc_1D69C9F:    = var_254.Value
  loc_1D69CDB:   var_2C0 = Proc_6_38_E69628(var_2BC)
  loc_1D69CE6:   If (var_2C0 = "Addition") Then
  loc_1D69CF6:     Set var_1A4 = var_1A8(var_92)
  loc_1D69CFC:     Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D69D04:      = var_1A8.Text
  loc_1D69D1B:     var_B4 = (var_B4 + Val(var_1B0))
  loc_1D69D35:     Set var_1A4 = var_1A8(var_92)
  loc_1D69D3B:     Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_B4)
  loc_1D69D43:     var_260 = var_1A8.Text
  loc_1D69D5A:     var_CC = (var_CC + Val(var_1B0))
  loc_1D69D6A:   Else
  loc_1D69D72:     If (var_2C0 = "Deduction") Then
  loc_1D69D82:       Set var_1A4 = var_1A8(var_92)
  loc_1D69D88:       Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_CC)
  loc_1D69D90:       var_260 = var_1A8.Text
  loc_1D69DA7:       var_BC = (var_BC + Val(var_1B0))
  loc_1D69DC1:       Set var_1A4 = var_1A8(var_92)
  loc_1D69DC7:       Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_BC)
  loc_1D69DCF:       var_260 = var_1A8.Text
  loc_1D69DE6:       var_C4 = (var_C4 + Val(var_1B0))
  loc_1D69DF6:     Else
  loc_1D69DFE:       If (var_2C0 = "Discount") Then
  loc_1D69E0E:         Set var_1A4 = var_1A8(var_92)
  loc_1D69E14:         Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_C4)
  loc_1D69E1C:         var_260 = var_1A8.Text
  loc_1D69E33:         var_DC = (var_DC + Val(var_1B0))
  loc_1D69E4D:         Set var_1A4 = var_1A8(var_92)
  loc_1D69E53:         Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_DC)
  loc_1D69E5B:         var_260 = var_1A8.Text
  loc_1D69E72:         var_E4 = (var_E4 + Val(var_1B0))
  loc_1D69E82:       Else
  loc_1D69E8A:         If (var_2C0 = "Luxury Tax") Then
  loc_1D69E9A:           Set var_1A4 = var_1A8(var_92)
  loc_1D69EA0:           Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_E4)
  loc_1D69EA8:           var_260 = var_1A8.Text
  loc_1D69EBF:           var_FC = (var_FC + Val(var_1B0))
  loc_1D69ED9:           Set var_1A4 = var_1A8(var_92)
  loc_1D69EDF:           Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_FC)
  loc_1D69EE7:           var_260 = var_1A8.Text
  loc_1D69EFE:           var_D4 = (var_D4 + Val(var_1B0))
  loc_1D69F0E:         Else
  loc_1D69F16:           If (var_2C0 = "Round Off") Then
  loc_1D69F26:             Set var_1A4 = var_1A8(var_92)
  loc_1D69F2C:             Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_D4)
  loc_1D69F34:             var_260 = var_1A8.Text
  loc_1D69F4B:             var_EC = (var_EC + Val(var_1B0))
  loc_1D69F65:             Set var_1A4 = var_1A8(var_92)
  loc_1D69F6B:             Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_EC)
  loc_1D69F73:             var_260 = var_1A8.Text
  loc_1D69F8A:             var_F4 = (var_F4 + Val(var_1B0))
  loc_1D69F9A:           Else
  loc_1D69FA2:             If (var_2C0 = "Sale Tax") Then
  loc_1D69FB2:               Set var_1A4 = var_1A8(var_92)
  loc_1D69FB8:               Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_F4)
  loc_1D69FC0:               var_260 = var_1A8.Text
  loc_1D69FD7:               var_FC = (var_FC + Val(var_1B0))
  loc_1D69FF1:               Set var_1A4 = var_1A8(var_92)
  loc_1D69FF7:               Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_FC)
  loc_1D69FFF:               var_260 = var_1A8.Text
  loc_1D6A016:               var_D4 = (var_D4 + Val(var_1B0))
  loc_1D6A026:             Else
  loc_1D6A02E:               If (var_2C0 = "Service Charge") Then
  loc_1D6A03E:                 Set var_1A4 = var_1A8(var_92)
  loc_1D6A044:                 Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_D4)
  loc_1D6A04C:                 var_260 = var_1A8.Text
  loc_1D6A063:                 var_104 = (var_104 + Val(var_1B0))
  loc_1D6A07D:                 Set var_1A4 = var_1A8(var_92)
  loc_1D6A083:                 Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_104)
  loc_1D6A08B:                 var_260 = var_1A8.Text
  loc_1D6A0A2:                 var_10C = (var_10C + Val(var_1B0))
  loc_1D6A0B2:               Else
  loc_1D6A0BA:                 If (var_2C0 = "Service Tax") Then
  loc_1D6A0CA:                   Set var_1A4 = var_1A8(var_92)
  loc_1D6A0D0:                   Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_10C)
  loc_1D6A0D8:                   var_260 = var_1A8.Text
  loc_1D6A0EF:                   var_FC = (var_FC + Val(var_1B0))
  loc_1D6A109:                   Set var_1A4 = var_1A8(var_92)
  loc_1D6A10F:                   Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_FC)
  loc_1D6A117:                   var_260 = var_1A8.Text
  loc_1D6A12E:                   var_D4 = (var_D4 + Val(var_1B0))
  loc_1D6A13B:                 End If
  loc_1D6A13B:               End If
  loc_1D6A13B:             End If
  loc_1D6A13B:           End If
  loc_1D6A13B:         End If
  loc_1D6A13B:       End If
  loc_1D6A13B:     End If
  loc_1D6A13B:   End If
  loc_1D6A13E: Next var_268 'Integer
  loc_1D6A146: var_9C = vbNullString
  loc_1D6A14C: Call Proc_258_146_1120BB0(var_1B2)
  loc_1D6A157: If (var_1B2 = 0) Then
  loc_1D6A15A:   Exit Sub
  loc_1D6A15B: End If
  loc_1D6A166: Set var_1A4 = var_1A8(0)
  loc_1D6A16C: Call 0.Method_Proc_258_153_1D711980 (0)
  loc_1D6A174: var_1A8.Visible = 
  loc_1D6A180: Call Proc_258_149_FD7788()
  loc_1D6A193: Set var_1A4 = var_1A8(CInt(1))
  loc_1D6A199: Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6A1A1:  = var_1A8.Text
  loc_1D6A1C1: If (Proc_6_91_EF38D0(CDate(var_1B0)) = 0) Then
  loc_1D6A1CF:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D6A1D5:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6A1DD:   var_1A8.SetFocus
  loc_1D6A1E9:   Exit Sub
  loc_1D6A1EA: End If
  loc_1D6A1EE: Set var_1A4 = Me.TopCtrl1
  loc_1D6A1F4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1D6A20D: If (CStr() = "Add") Then
  loc_1D6A216:   var_1E8 = 0
  loc_1D6A233:   var_1B0 = "Select NCUR from enviro where Logsite_code='" & MemVar_1F95078
  loc_1D6A243:   unk_5B2155.Execute var_1B0 & "'", var_1D8, -1
  loc_1D6A24B:   var_1A4 = var_1A4.Fields
  loc_1D6A253:   var_1E8 = var_1A8.Item(var_1A8)
  loc_1D6A25B:   var_1AC = var_1AC.Value
  loc_1D6A265:   MemVar_1F950EC = CDate(var_1F8)
  loc_1D6A285:   var_1E8 = 0
  loc_1D6A2AC:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6A2B2:   Call 0.Method_Proc_258_153_1D711980 (var_1B0, "Select Count(*) From SplitSale1 Where DocID='", var_1D8, -1, var_1AC, var_250)
  loc_1D6A2BA:   var_1E8 = var_1A8.Text
  loc_1D6A2D3:   unk_5B2155.Execute var_254 & var_1B0 & "'", var_1F8, MemVar_1F950EC
  loc_1D6A2E3:    = var_250.Item()
  loc_1D6A2EB:    = var_254.Value
  loc_1D6A318:   If (var_1AC.Fields > 0) Then
  loc_1D6A321:     Call Proc_258_151_10E8A40(MemVar_1F95044)
  loc_1D6A334:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6A33A:     Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6A342:     var_1A8.Text = var_1B0
  loc_1D6A351:     Exit Sub
  loc_1D6A352:   End If
  loc_1D6A355: Else
  loc_1D6A37A:   var_1D8 = Me.Fields.Item("DocID").Value
  loc_1D6A389:   global_156 = CStr(var_1D8)
  loc_1D6A39A: End If
  loc_1D6A3AF: Set var_1A4 = 1(CVar(CLng(&HD)))
  loc_1D6A3B5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6A3D6: Set var_1A8 = 1(CVar(CLng(&HC)))
  loc_1D6A3DC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6A3EF: var_260 = Val(CStr())
  loc_1D6A411: var_2F4 = "Select Waiter From KOT where DocID='" & CStr(var_1D8) & "' And SNO ="
  loc_1D6A426: unk_5B2155.Execute var_2F4 & CStr(var_260), var_218, -1
  loc_1D6A431: Set var_88 = var_1AC
  loc_1D6A469: If (var_88.RecordCount > 0) Then
  loc_1D6A47E:   var_1A4 = var_88.Fields
  loc_1D6A48E:   var_1D8 = var_1A4.Item(0).Value
  loc_1D6A49D:   global_292 = CStr(var_1D8)
  loc_1D6A4AE: End If
  loc_1D6A4B4: global_180 = vbNullString
  loc_1D6A4BE: Call Proc_258_155_EA954C(var_118, var_1A4)
  loc_1D6A4C6: Set var_118 = var_1A4
  loc_1D6A4D2: Set var_1A4 = 1(var_92)
  loc_1D6A4D8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_1AC)
  loc_1D6A4EE: For var_310 =  To CInt((CLng(var_260) - 1)):  = var_310 'Integer
  loc_1D6A509:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D6A50F:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6A528:   var_248 = vbNullString
  loc_1D6A547:   Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6A54D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> var_248))
  loc_1D6A586:   If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1D6A59D:     If (var_118.RecordCount > 0) Then
  loc_1D6A5A3:       var_118.MoveFirst
  loc_1D6A5AC:       var_1C8 = CVar(CLng(var_92)) 'Long
  loc_1D6A5BD:       Set var_1A4 = var_1C8(CVar(CLng(&HD)))
  loc_1D6A5C3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6A61D:       var_118.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(var_1D8)), 8))))), 0, 1
  loc_1D6A647:       If var_118.EOF Then
  loc_1D6A655:         var_118.AddNew var_1C8, var_1E8
  loc_1D6A65E:         var_1C8 = CVar(CLng(var_92)) 'Long
  loc_1D6A66F:         Set var_1A4 = var_1C8(CVar(CLng(&HD)))
  loc_1D6A675:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_248)
  loc_1D6A6AC:         var_2D0 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_1D8)), 8))))) 'Double
  loc_1D6A6BA:         var_118.Collect = "V_NO"
  loc_1D6A6DB:         var_118.Update var_1C8, var_1E8
  loc_1D6A6E0:       End If
  loc_1D6A6E3:     Else
  loc_1D6A6EE:       var_118.AddNew var_1C8, var_1E8
  loc_1D6A6F7:       var_1C8 = CVar(CLng(var_92)) 'Long
  loc_1D6A708:       Set var_1A4 = var_1C8(CVar(CLng(&HD)))
  loc_1D6A70E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D0)
  loc_1D6A745:       var_2D0 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_1D8)), 8))))) 'Double
  loc_1D6A753:       var_118.Collect = "V_NO"
  loc_1D6A774:       var_118.Update var_1C8, var_1E8
  loc_1D6A779:     End If
  loc_1D6A779:   End If
  loc_1D6A77C: Next var_310 'Integer
  loc_1D6A787: var_24C = var_118.RecordCount
  loc_1D6A795: If (var_24C > 0) Then
  loc_1D6A79E:   var_118.Sort = "V_NO"
  loc_1D6A7A6:   var_118.MoveFirst
  loc_1D6A7AB:   ' Referenced from: 1D6A89D
  loc_1D6A7B1:   var_1B2 = var_118.EOF
  loc_1D6A7BA:   If Not(var_1B2) Then
  loc_1D6A7C8:     If (global_180 <> vbNullString) Then
  loc_1D6A81D:       global_180 = CStr(Trim(CVar(global_180 & "," & CStr(var_118.Fields.Item("V_NO").Value))))
  loc_1D6A83D:     Else
  loc_1D6A857:       var_1A8 = var_118.Fields.Item("V_NO")
  loc_1D6A85F:       var_1D8 = var_1A8.Value
  loc_1D6A869:       var_1F8 = CVar(CStr(var_1D8)) 'String
  loc_1D6A878:       var_1B0 = CStr(Trim(var_1F8))
  loc_1D6A87E:       global_180 = var_1B0
  loc_1D6A895:     End If
  loc_1D6A898:     var_118.MoveNext
  loc_1D6A89D:     GoTo loc_1D6A7AB
  loc_1D6A8A0:   End If
  loc_1D6A8A9:   global_180 = global_180
  loc_1D6A8AD: End If
  loc_1D6A8AF: var_8A = &HFF
  loc_1D6A8BB: unk_5B2155.BeginTrans var_24C
  loc_1D6A8DE: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6A8E4: Call 0.Method_Proc_258_153_1D711980 (var_1B0, "Delete From SplitStock Where DocID='", var_1D8)
  loc_1D6A8EC: -1 = var_1A8.Text
  loc_1D6A905: unk_5B2155.Execute var_1AC & var_1B0 & "'", var_8A, 
  loc_1D6A93D: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6A943: Call 0.Method_Proc_258_153_1D711980 (var_1B0, "Delete From SplitSale1 Where DocID='", var_1D8)
  loc_1D6A94B: -1 = var_1A8.Text
  loc_1D6A964: unk_5B2155.Execute var_1AC & var_1B0 & "'", , 
  loc_1D6A99C: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6A9A2: Call 0.Method_Proc_258_153_1D711980 (var_1B0, "Delete From SplitSale2 Where DocID='", var_1D8)
  loc_1D6A9AA: -1 = var_1A8.Text
  loc_1D6A9C3: unk_5B2155.Execute var_1AC & var_1B0 & "'", , 
  loc_1D6A9FB: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6AA01: Call 0.Method_Proc_258_153_1D711980 (var_1B0, "Delete From SplitedSunTran Where DocID='", var_1D8)
  loc_1D6AA09: -1 = var_1A8.Text
  loc_1D6AA22: unk_5B2155.Execute var_1AC & var_1B0 & "'", , 
  loc_1D6AA47: If (global_304 = "Room Service") Then
  loc_1D6AA58:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6AA5E:   Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6AA66:    = var_1A8.Text
  loc_1D6AA79:   Set var_1AC = var_250(CInt(0))
  loc_1D6AA7F:   Call 0.Method_Proc_258_153_1D711980 (var_2F4)
  loc_1D6AA87:    = var_250.Text
  loc_1D6AA94:   var_260 = Val(var_2F4)
  loc_1D6AAA2:   Set var_254 = var_328(CInt(1))
  loc_1D6AAA8:   Call 0.Method_Proc_258_153_1D711980 (var_260)
  loc_1D6AAB7:   Proc_6_7_F26918(var_1F8)
  loc_1D6AAC9:    = CVar(var_328)(var_330).Caption
  loc_1D6AADC:   Set var_3E4 = var_3E8(CInt(3))
  loc_1D6AAE2:   Call 0.Method_Proc_258_153_1D711980 (var_3EC)
  loc_1D6AAEA:    = var_3E8.Text
  loc_1D6AAFA:   Set var_3F0 = var_3F4(CInt(3))
  loc_1D6AB00:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6AB1A:   Set var_438 = 1(CVar(CLng(&H17)))
  loc_1D6AB20:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6AB57:   Set var_4BC = var_4C0(CInt(4))
  loc_1D6AB5D:   Call 0.Method_Proc_258_153_1D711980 (var_4C4)
  loc_1D6AB65:    = var_4C0.Text
  loc_1D6AB72:   var_A58 = Val(var_4C4)
  loc_1D6AB7C:   Set var_508 = var_A58(var_1B2)
  loc_1D6AB82:   Call 0.Method_Proc_258_153_1D711984 ()
  loc_1D6AB94:   Set var_50C = var_510(var_1B2)
  loc_1D6AB9A:   Call 0.Method_Proc_258_153_1D711980 (var_514)
  loc_1D6ABA2:    = var_510.Text
  loc_1D6ABAF:   var_A60 = Val(var_514)
  loc_1D6ABB9:   Set var_798 = var_A60(var_1B4)
  loc_1D6ABBF:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6ABD1:   Set var_79C = var_7A0(var_1B4)
  loc_1D6ABD7:   Call 0.Method_Proc_258_153_1D711980 (var_7A4)
  loc_1D6ABDF:    = var_7A0.Text
  loc_1D6ABEC:   var_A68 = Val(var_7A4)
  loc_1D6ABFD:   Proc_6_7_F26918(var_884, Date)
  loc_1D6AC06:   Set var_8B8 = Me.TopCtrl1
  loc_1D6AC0C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1D6AC3E:   var_92C = IIf((CStr(var_8C8) = "Add"), "A", "E")
  loc_1D6AC51:   Set var_960 = var_964(CInt(5))
  loc_1D6AC57:   Call 0.Method_Proc_258_153_1D711980 (var_968)
  loc_1D6AC5F:    = var_964.Text
  loc_1D6AC78:   var_258 = "Insert Into SplitSale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D6ACD1:   var_340 = CVar(var_258 & var_1B0 & "'," & CStr(var_260) & ",") & var_1F8 & ",'" & CVar(global_184) & "','" & CVar(var_330) & "','" 
  loc_1D6AD1D:   var_3C0 = var_340 & CVar(MemVar_1F95070) & "','" & CVar(global_76) & "','" & CVar(global_188) & "','" & CVar(global_192) 
  loc_1D6AD55:   var_534 = var_3C0 & "','" & IIf((var_3EC <> vbNullString), CVar(var_3F4), CVar(CStr())) & "'," & CVar(var_A58) & "," & CVar(var_A60) 
  loc_1D6ADCD:   var_6B4 = var_534 & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) 
  loc_1D6AE33:   var_804 = var_6B4 & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) & ",'" & CVar(global_180) 
  loc_1D6AE8F:   var_9C8 = var_804 & "', '" & CVar(MemVar_1F950C8) & "'," & var_884 & ",'" & var_92C & "','" & CVar(var_968) & "','" & CVar(global_292) 
  loc_1D6AEB9:   unk_5B2155.Execute CStr(var_9C8 & "','N','" & CVar(MemVar_1F95078) & "')"), var_A4C, -1
  loc_1D6AFA0: Else
  loc_1D6AFAE:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6AFB4:   Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6AFBC:   var_A50 = var_1A8.Text
  loc_1D6AFCF:   Set var_1AC = var_250(CInt(0))
  loc_1D6AFD5:   Call 0.Method_Proc_258_153_1D711980 (var_2F4)
  loc_1D6AFDD:    = var_250.Text
  loc_1D6AFEA:   var_260 = Val(var_2F4)
  loc_1D6AFF8:   Set var_254 = var_328(CInt(1))
  loc_1D6AFFE:   Call 0.Method_Proc_258_153_1D711980 (var_260)
  loc_1D6B00D:   Proc_6_7_F26918(var_1F8)
  loc_1D6B01F:    = CVar(var_328)(var_330).Caption
  loc_1D6B039:   Set var_3E4 = 1(CVar(CLng(&H17)))
  loc_1D6B03F:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B059:   Set var_3E8 = var_3F0(CInt(&HD))
  loc_1D6B05F:   Call 0.Method_Proc_258_153_1D711980 (var_3EC)
  loc_1D6B067:    = var_3F0.Tag
  loc_1D6B07A:   Set var_3F4 = var_438(CInt(4))
  loc_1D6B080:   Call 0.Method_Proc_258_153_1D711980 (var_4C4)
  loc_1D6B088:    = var_438.Text
  loc_1D6B095:   var_A58 = Val(var_4C4)
  loc_1D6B09F:   Set var_4BC = var_A58(var_1B2)
  loc_1D6B0A5:   Call 0.Method_Proc_258_153_1D711984 ()
  loc_1D6B0B7:   Set var_4C0 = var_508(var_1B2)
  loc_1D6B0BD:   Call 0.Method_Proc_258_153_1D711980 (var_514)
  loc_1D6B0C5:    = var_508.Text
  loc_1D6B0D2:   var_A60 = Val(var_514)
  loc_1D6B0DC:   Set var_50C = var_A60(var_1B4)
  loc_1D6B0E2:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6B0F4:   Set var_510 = var_798(var_1B4)
  loc_1D6B0FA:   Call 0.Method_Proc_258_153_1D711980 (var_7A4)
  loc_1D6B102:    = var_798.Text
  loc_1D6B10F:   var_A68 = Val(var_7A4)
  loc_1D6B143:   Proc_6_7_F26918(var_8C8, Date)
  loc_1D6B14C:   Set var_79C = Me.TopCtrl1
  loc_1D6B152:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1D6B197:   Set var_7A0 = var_8B8(CInt(5))
  loc_1D6B19D:   Call 0.Method_Proc_258_153_1D711980 (var_968)
  loc_1D6B1A5:    = var_8B8.Text
  loc_1D6B1BE:   var_258 = "Insert Into SplitSale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D6B20E:   var_2BC = CVar(var_258 & var_1B0 & "'," & CStr(var_260) & ",") & var_1F8 & ",'" & CVar(global_184) & "','" & CVar(var_330) 
  loc_1D6B237:   var_370 = var_2BC & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_76) 
  loc_1D6B287:   var_498 = CVar(var_3EC) 'String
  loc_1D6B293:   var_4E4 = var_370 & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_448)) & "','" & var_498 & "'," 
  loc_1D6B2A7:   var_534 = var_4E4 & CVar(var_A58) & "," 
  loc_1D6B2CF:   var_5B4 = var_534 & CVar(var_A60) & "," & CVar(var_E4) & "," 
  loc_1D6B2F7:   var_634 = var_5B4 & CVar(var_DC) & "," & CVar(var_AC) & "," 
  loc_1D6B33E:   var_714 = var_634 & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) 
  loc_1D6B393:   var_874 = var_714 & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) & ",'" & Trim(Left(global_180, &HFF)) & "', '" 
  loc_1D6B39D:   var_884 = var_874 & CVar(MemVar_1F950C8) 
  loc_1D6B3D9:   var_A08 = var_884 & "'," & var_8C8 & ",'" & IIf((CStr(var_92C) = "Add"), "A", "E") & "','" & CVar(var_968) & "','" 
  loc_1D6B3F9:   var_A78 = var_A08 & CVar(global_292) & "','N','" & CVar(MemVar_1F95078) 
  loc_1D6B406:   var_A2C = CStr(var_A78 & "')")
  loc_1D6B410:   unk_5B2155.Execute var_A2C, var_A98, -1
  loc_1D6B4F4: End If
  loc_1D6B4FD: Set var_1A4 = 1(var_92)
  loc_1D6B503: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_960)
  loc_1D6B519: For var_A9C =  To CInt((CLng() - 1)):  = var_A9C 'Integer
  loc_1D6B534:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D6B53A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B54B:   var_218 = Trim(CVar(CStr()))
  loc_1D6B572:   Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D6B578:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_218 <> vbNullString))
  loc_1D6B583:   var_1B0 = CStr()
  loc_1D6B5B1:   If CBool( And (CDbl(Val(var_1B0)) <> CDbl(0))) Then
  loc_1D6B5C2:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6B5C8:     Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6B5D0:      = var_1A8.Text
  loc_1D6B5EA:     Set var_1AC = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6B5F0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B603:     var_260 = Val(CStr())
  loc_1D6B613:      = var_260(var_4C4).Caption
  loc_1D6B626:     Set var_254 = var_328(CInt(0))
  loc_1D6B62C:     Call 0.Method_Proc_258_153_1D711980 (var_A2C)
  loc_1D6B634:      = var_328.Text
  loc_1D6B641:     var_A58 = Val(var_A2C)
  loc_1D6B64F:     Set var_32C = var_3E4(CInt(1))
  loc_1D6B655:     Call 0.Method_Proc_258_153_1D711980 (var_A58)
  loc_1D6B65D:     var_1F8 = CVar(var_3E4) 'Address
  loc_1D6B664:     Proc_6_7_F26918(var_218)
  loc_1D6B67E:     Set var_3E8 = CVar(CLng(var_92))(CVar(CLng(&H15)))
  loc_1D6B684:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1F8)
  loc_1D6B6A5:     Set var_3F0 = CVar(CLng(var_92))(CVar(CLng(&H16)))
  loc_1D6B6AB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B6C5:     Set var_3F4 = var_438(CInt(3))
  loc_1D6B6CB:     Call 0.Method_Proc_258_153_1D711980 (var_AAC)
  loc_1D6B6D3:      = var_438.Text
  loc_1D6B6E3:     Set var_4BC = var_4C0(CInt(3))
  loc_1D6B6E9:     Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6B703:     Set var_508 = 1(CVar(CLng(&H17)))
  loc_1D6B709:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B747:     Set var_50C = CVar(CLng(var_92))(CVar(CLng(&HB)))
  loc_1D6B74D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B76E:     Set var_510 = CVar(CLng(var_92))(CVar(CLng(&H13)))
  loc_1D6B774:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B795:     Set var_798 = CVar(CLng(var_92))(CVar(CLng(&H14)))
  loc_1D6B79B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B7BC:     Set var_79C = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D6B7C2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B7E3:     Set var_7A0 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D6B7E9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6B7FC:     var_A60 = Val(CStr())
  loc_1D6B814:     Set var_8B8 = CVar(CLng(var_92))(CVar(CLng(9)))
  loc_1D6B81A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1D6B82D:     var_A68 = Val(CStr())
  loc_1D6B845:     Set var_960 = CVar(CLng(var_92))(CVar(CLng(8)))
  loc_1D6B84B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D6B85E:     var_1170 = Val(CStr())
  loc_1D6B876:     Set var_964 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6B87C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1170)
  loc_1D6B88F:     var_1178 = Val(CStr())
  loc_1D6B8A7:     Set var_A50 = CVar(CLng(var_92))(CVar(CLng(&H10)))
  loc_1D6B8AD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1178)
  loc_1D6B8C0:     var_1180 = Val(CStr())
  loc_1D6B8D8:     Set var_C04 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6B8DE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1180)
  loc_1D6B8F1:     var_1188 = Val(CStr())
  loc_1D6B909:     Set var_C6C = CVar(CLng(var_92))(CVar(CLng(&HE)))
  loc_1D6B90F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1188)
  loc_1D6B922:     var_1190 = Val(CStr())
  loc_1D6B93A:     Set var_CD4 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1D6B940:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1190)
  loc_1D6B953:     var_1198 = Val(CStr())
  loc_1D6B96B:     Set var_D3C = CVar(CLng(var_92))(CVar(CLng(&H12)))
  loc_1D6B971:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1198)
  loc_1D6B984:     var_11A0 = Val(CStr())
  loc_1D6B992:     Proc_6_7_F26918(var_A08, MemVar_1F950EC)
  loc_1D6B99B:     Set var_DA4 = Me.TopCtrl1
  loc_1D6B9A1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_11A0)
  loc_1D6B9BA:     var_A88 = "A"
  loc_1D6B9ED:     Set var_E5C = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D6B9F3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6BA14:     Set var_EF0 = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D6BA1A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6BA3B:     Set var_F84 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6BA41:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6BA62:     Set var_1018 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6BA68:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6BA7B:     var_11A8 = Val(CStr())
  loc_1D6BA93:     Set var_10F0 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6BA99:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_11A8)
  loc_1D6BAB9:     var_258 = "Insert Into SplitStock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,LOGSITE_CODE,ItemRestCode) Values (" & "'"
  loc_1D6BB13:     var_AA8 = var_258 & var_1B0 & "'," & CStr(var_260) & ",'" & global_184 & "','" & var_4C4 & "','" & MemVar_1F95070 & "'," & CStr(var_A58)
  loc_1D6BB1A:     var_238 = CVar(var_AA8 & ",") 'String
  loc_1D6BB47:     var_340 = CVar(CStr(var_2BC)) 'String
  loc_1D6BB6E:     var_478 = var_238 & var_218 & ",'" & CVar(global_76) & "','" & var_340 & "','" & CVar(CStr(var_370)) & "','" & IIf((var_AAC <> vbNullString), CVar(var_4C0), CVar(CStr())) 
  loc_1D6BB82:     var_4E4 = var_478 & "','" & CVar(CStr(var_498)) 
  loc_1D6BB93:     var_554 = CVar(CStr(var_534)) 'String
  loc_1D6BBBB:     var_654 = CVar(CStr(var_634)) 'String
  loc_1D6BBEF:     var_754 = var_4E4 & "','" & var_554 & "','" & CVar(CStr(var_5B4)) & "','" & var_654 & "'," & CVar(var_A60) & "," & CVar(var_A68) & "," 
  loc_1D6BC53:     var_91C = var_754 & CVar(var_1170) & "," & CVar(var_1178) & "," & CVar(var_1180) & "," & CVar(var_1188) & "," & CVar(var_1190) & "," 
  loc_1D6BC95:     var_A28 = var_91C & CVar(var_1198) & "," & CVar(var_11A0) & ",'" & CVar(MemVar_1F950C8) & "'," & var_A08 
  loc_1D6BCB6:     var_E7C = CVar(CStr(var_E6C)) 'String
  loc_1D6BCCA:     var_F10 = CVar(CStr(var_F00)) 'String
  loc_1D6BCDE:     var_FA4 = CVar(CStr(var_F94)) 'String
  loc_1D6BCEA:     var_FD4 = var_A28 & ",'" & IIf((CStr(var_A78) = "Add"), var_A88, "E") & "','" & var_E7C & "','" & var_F10 & "','" & var_FA4 & "'," 
  loc_1D6BD19:     var_1110 = CVar(CStr(var_1100)) 'String
  loc_1D6BD33:     unk_5B2155.Execute CStr(var_FD4 & CVar(var_11A8) & ",'N','" & CVar(MemVar_1F95078) & "','" & var_1110 & "')"), var_1164, -1
  loc_1D6BE94:     If (global_240 = "Y") Then
  loc_1D6BEA5:       Set var_1A4 = var_1A8(CInt(2))
  loc_1D6BEAB:       Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6BEB3:       var_1168 = var_1A8.Text
  loc_1D6BECD:       Set var_1AC = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6BED3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6BEE6:       var_260 = Val(CStr())
  loc_1D6BEFE:       Set var_250 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6BF04:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6BF25:       Set var_254 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6BF2B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6BF81:       var_514 = "Update KOT Set ContraDocId='" & var_1B0 & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8) & "' And SNo="
  loc_1D6BF96:       unk_5B2155.Execute var_514 & CStr(Val(CStr())), var_238, -1
  loc_1D6BFD2:     End If
  loc_1D6BFDD:     If (global_196 = "Y") Then
  loc_1D6BFEE:       Set var_1A4 = var_1A8(CInt(2))
  loc_1D6BFF4:       Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_328)
  loc_1D6BFFC:       var_A58 = var_1A8.Text
  loc_1D6C016:       Set var_1AC = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6C01C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C02F:       var_260 = Val(CStr())
  loc_1D6C047:       Set var_250 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6C04D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6C06E:       Set var_254 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6C074:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C0C3:       var_3EC = "Update PackingOrderDetail set ContraDocID='" & var_1B0 & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8)
  loc_1D6C0DD:       var_968 = var_3EC & "' and SNo=" & CStr(Val(CStr())) & vbNullString
  loc_1D6C0E6:       unk_5B2155.Execute var_968, var_238, -1
  loc_1D6C124:     End If
  loc_1D6C124:   End If
  loc_1D6C127: Next var_A9C 'Integer
  loc_1D6C135: Set var_1A4 = 0(var_92)
  loc_1D6C13B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D6C151: For var_11AC =  To CInt((CLng() - 1)):  = var_11AC 'Integer
  loc_1D6C16C:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1D6C172:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C17D:   var_1F8 = CVar(CStr()) 'String
  loc_1D6C1AA:   Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D6C1B0:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(var_1F8) <> vbNullString))
  loc_1D6C1BB:   var_1B0 = CStr()
  loc_1D6C1E9:   If CBool( And (CDbl(Val(var_1B0)) <> CDbl(0))) Then
  loc_1D6C1FA:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6C200:     Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6C208:      = var_1A8.Text
  loc_1D6C222:     Set var_1AC = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6C228:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C23B:     var_260 = Val(CStr())
  loc_1D6C253:     Set var_250 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6C259:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6C264:     var_330 = CStr()
  loc_1D6C26C:     var_A58 = Val(var_330)
  loc_1D6C27C:      = var_A58(var_968).Caption
  loc_1D6C28F:     Set var_328 = var_32C(CInt(0))
  loc_1D6C295:     Call 0.Method_Proc_258_153_1D711980 (var_AAC)
  loc_1D6C29D:      = var_32C.Text
  loc_1D6C2AA:     var_A60 = Val(var_AAC)
  loc_1D6C2B8:     Set var_3E4 = var_3E8(CInt(1))
  loc_1D6C2BE:     Call 0.Method_Proc_258_153_1D711980 (var_A60)
  loc_1D6C2CD:     Proc_6_7_F26918(var_238)
  loc_1D6C2E7:     Set var_3F0 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1D6C2ED:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_3E8))
  loc_1D6C30E:     Set var_3F4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D6C314:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C327:     var_A68 = Val(CStr())
  loc_1D6C33F:     Set var_438 = CVar(CLng(var_92))(CVar(CLng(5)))
  loc_1D6C345:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D6C358:     var_1170 = Val(CStr())
  loc_1D6C370:     Set var_4BC = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D6C376:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1170)
  loc_1D6C389:     var_1178 = Val(CStr())
  loc_1D6C397:     Proc_6_7_F26918(var_4E4, MemVar_1F950EC)
  loc_1D6C3A0:     Set var_4C0 = Me.TopCtrl1
  loc_1D6C3A6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1178)
  loc_1D6C3F1:     var_258 = "Insert Into SplitSale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D6C425:     var_7A4 = var_258 & var_1B0 & "'," & CStr(var_260) & "," & CStr(var_A58) & ",'"
  loc_1D6C42F:     var_8CC = var_7A4 & global_184
  loc_1D6C436:     var_A2C = var_8CC & "','"
  loc_1D6C43D:     var_AA0 = var_A2C & var_968
  loc_1D6C444:     var_AA4 = var_AA0 & "','"
  loc_1D6C44B:     var_AA8 = var_AA4 & MemVar_1F95070
  loc_1D6C452:     var_AB0 = var_AA8 & "',"
  loc_1D6C45E:     var_AD8 = var_AB0 & CStr(var_A60)
  loc_1D6C4BD:     var_3E0 = CVar(var_AD8 & ",") & var_238 & ",'" & CVar(global_76) & "','" & CVar(CStr(var_340)) & "'," & CVar(var_A68) & "," & CVar(var_1170) 
  loc_1D6C504:     var_5D4 = var_3E0 & "," & CVar(var_1178) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4E4 & ",'" & IIf((CStr(var_554) = "Add"), "A", "E") 
  loc_1D6C520:     var_634 = var_5D4 & "','N','" & CVar(MemVar_1F95078) & "')" 
  loc_1D6C52E:     unk_5B2155.Execute CStr(var_634), var_654, -1
  loc_1D6C5D8:   End If
  loc_1D6C5DB: Next var_11AC 'Integer
  loc_1D6C5EC: Set var_1A4 = var_92(var_1B2)
  loc_1D6C5F2: Call 0.Method_Proc_258_153_1D711988 (1)
  loc_1D6C5FD: For var_11B0 =  To var_1B2:  = var_11B0 'Integer
  loc_1D6C610:   Set var_1A4 = var_1A8(var_92)
  loc_1D6C616:   Call 0.Method_Proc_258_153_1D711980 (var_1B2)
  loc_1D6C61E:    = var_1A8.Visible
  loc_1D6C630:   If (var_1B2 = &HFF) Then
  loc_1D6C641:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6C647:     Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6C64F:      = var_1A8.Text
  loc_1D6C662:     Set var_1AC = var_250(CInt(0))
  loc_1D6C668:     Call 0.Method_Proc_258_153_1D711980 (var_330)
  loc_1D6C670:      = var_250.Text
  loc_1D6C67D:     var_260 = Val(var_330)
  loc_1D6C68B:     Set var_254 = var_328(CInt(1))
  loc_1D6C691:     Call 0.Method_Proc_258_153_1D711980 (var_260)
  loc_1D6C699:     var_1D8 = CVar(var_328) 'Address
  loc_1D6C6A0:     Proc_6_7_F26918(var_1F8)
  loc_1D6C6B3:     Set var_32C = var_3E4(CInt(&HD))
  loc_1D6C6B9:     Call 0.Method_Proc_258_153_1D711980 (var_7A4)
  loc_1D6C6C1:     var_1D8 = var_3E4.Tag
  loc_1D6C6D3:     Set var_3E8 = var_3F0(var_92)
  loc_1D6C6D9:     Call 0.Method_Proc_258_153_1D711980 (var_8CC)
  loc_1D6C6E1:      = var_3F0.Tag
  loc_1D6C6E9:     var_2BC = CVar(var_8CC) 'String
  loc_1D6C701:     Set var_3F4 = var_438(var_92)
  loc_1D6C707:     Call 0.Method_Proc_258_153_1D711980 (var_968)
  loc_1D6C70F:      = var_438.Tag
  loc_1D6C71C:     var_A58 = Val(var_968)
  loc_1D6C72C:     Set var_4BC = var_4C0(var_92)
  loc_1D6C732:     Call 0.Method_Proc_258_153_1D711980 (var_A2C)
  loc_1D6C74C:     Set var_508 = var_50C(var_92)
  loc_1D6C752:     Call 0.Method_Proc_258_153_1D711980 (var_AA0)
  loc_1D6C75A:      = var_50C.Tag
  loc_1D6C76C:     Set var_510 = var_798(var_92)
  loc_1D6C772:     Call 0.Method_Proc_258_153_1D711980 (var_AA4)
  loc_1D6C77A:      = var_798.Tag
  loc_1D6C78C:     Set var_79C = var_7A0(var_92)
  loc_1D6C792:     Call 0.Method_Proc_258_153_1D711980 (var_AA8)
  loc_1D6C79A:      = var_7A0.Text
  loc_1D6C7A7:     var_A60 = Val(var_AA8)
  loc_1D6C7B7:     Set var_8B8 = var_960(var_92)
  loc_1D6C7BD:     Call 0.Method_Proc_258_153_1D711980 (var_AAC)
  loc_1D6C7D2:     var_A68 = Val(var_AAC)
  loc_1D6C7E2:     Set var_964 = var_A50(var_92)
  loc_1D6C7E8:     Call 0.Method_Proc_258_153_1D711980 (var_AB0)
  loc_1D6C7FD:     var_1170 = Val(var_AB0)
  loc_1D6C80B:     Proc_6_7_F26918(var_5D4, MemVar_1F950EC)
  loc_1D6C814:     Set var_C04 = Me.TopCtrl1
  loc_1D6C81A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1170)
  loc_1D6C828:     var_674 = "E"
  loc_1D6C83D:     var_AB4 = CStr(var_634)
  loc_1D6C85C:     Set var_C6C = var_CD4(CInt(9))
  loc_1D6C862:     Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6C86A:     var_6F4 = CVar(var_CD4) 'Address
  loc_1D6C871:     Proc_6_7_F26918(var_714)
  loc_1D6C883:     Set var_D3C = var_DA4(var_92)
  loc_1D6C889:     Call 0.Method_Proc_258_153_1D711980 (var_AD8)
  loc_1D6C891:     var_6F4 = var_DA4.Tag
  loc_1D6C8AA:     var_258 = "Insert Into SplitedSunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_1B0
  loc_1D6C8B1:     var_29C = var_258 & "',"
  loc_1D6C8B9:     var_2F4 = CStr(var_92)
  loc_1D6C8F7:     var_278 = CVar(var_29C & var_2F4 & ",'" & global_184 & "'," & CStr(var_260) & ",") & var_1F8 & ",'" 
  loc_1D6C94B:     var_448 = var_278 & CVar(var_7A4) & "','" & Trim(var_2BC) & "'," & CVar(var_4C0.Caption) & ",'" & CVar(var_A2C) & "','" & CVar(var_AA0) 
  loc_1D6C9AD:     var_594 = var_448 & "','" & CVar(var_AA4) & "'," & CVar(var_960.Text) & "," & CVar(var_A50.Caption) & "," & CVar(var_1170) & ",'" & CVar(MemVar_1F950C8) 
  loc_1D6C9C6:     var_614 = var_594 & "'," & var_5D4 & ",'" 
  loc_1D6C9F9:     var_7C4 = var_614 & IIf((var_AB4 = "Add"), "A", var_674) & "'," & var_714 & ",'" & CVar(var_AD8) & "','" 
  loc_1D6CA43:     unk_5B2155.Execute CStr(var_7C4 & CVar(global_76) & "','N','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_884, -1
  loc_1D6CB19:   End If
  loc_1D6CB1C: Next var_11B0 'Integer
  loc_1D6CB2C: If (global_240 = "Y") Then
  loc_1D6CB38:   Set var_1A4 = 1(var_92)
  loc_1D6CB3E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D6CB54:   For var_11B4 =  To CInt((CLng() - 1)):  = var_11B4 'Integer
  loc_1D6CB6F:     Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D6CB75:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6CBAD:     Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6CBB3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> vbNullString))
  loc_1D6CBEC:     If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1D6CBF2:       Proc_6_104_ED68A8(var_1D8)
  loc_1D6CC0C:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6CC12:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6CC53:       var_298 = CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_1D8 & ",U_AE1='E' where docid='" & CVar(CStr(var_278)) 
  loc_1D6CC6A:       unk_5B2155.Execute CStr(var_298 & "'"), var_2BC, -1
  loc_1D6CC92:     End If
  loc_1D6CC95:   Next var_11B4 'Integer
  loc_1D6CC9A: End If
  loc_1D6CCA5: If (global_304 = "Room Service") Then
  loc_1D6CCAB:   var_1E8 = 0
  loc_1D6CCDB:   unk_5B2155.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_76 & "'", var_1D8, -1
  loc_1D6CCE3:   var_1A4 = var_1A4.Fields
  loc_1D6CCEB:   var_1E8 = var_1A8.Item(var_1A8)
  loc_1D6CD02:   var_208 = " BILL NO.-"
  loc_1D6CD07:   var_238 = (Trim(CVar(var_1AC)) + CVar(CLng(4)))
  loc_1D6CD10:   var_278 = (CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_1D8 & ",U_AE1='E' where docid='" + " ")
  loc_1D6CD22:   Set var_250 = var_254(CInt(0))
  loc_1D6CD28:   Call 0.Method_Proc_258_153_1D711980 (var_29C, var_278)
  loc_1D6CD30:   var_1AC = var_254.Text
  loc_1D6CD3B:   var_298 = ( + CVar(var_29C))
  loc_1D6CD40:   var_128 = CStr(var_298)
  loc_1D6CD6C:   var_14E = (var_14E + 1)
  loc_1D6CD83:   Call 0.Method_Proc_258_153_1D711980 (var_2F4)
  loc_1D6CD9E:   Set var_1AC = var_250(CInt(0))
  loc_1D6CDA4:   Call 0.Method_Proc_258_153_1D711980 (var_7A4)
  loc_1D6CDAC:    = var_250.Text
  loc_1D6CDB9:   var_260 = Val(var_7A4)
  loc_1D6CDC0:   var_1D8 = CVar((var_260)) 'Address
  loc_1D6CDD7:   Set var_254 = var_328(CInt(1))
  loc_1D6CDDD:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6CDEC:   Proc_6_7_F26918(var_298)
  loc_1D6CDFC:   Set var_32C = var_3E4(CInt(5))
  loc_1D6CE02:   Call 0.Method_Proc_258_153_1D711980 (CVar(var_328))
  loc_1D6CE1D:   Set var_3E8 = (var_1B2)
  loc_1D6CE23:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6CE35:   Set var_3F0 = var_3F4(var_1B2)
  loc_1D6CE3B:   Call 0.Method_Proc_258_153_1D711980 (var_AA8)
  loc_1D6CE43:    = var_3F4.Text
  loc_1D6CE50:   var_A58 = Val(var_AA8)
  loc_1D6CE5A:   Set var_438 = var_A58(var_1B4)
  loc_1D6CE60:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6CE72:   Set var_4BC = var_4C0(var_1B4)
  loc_1D6CE78:   Call 0.Method_Proc_258_153_1D711980 (var_AAC)
  loc_1D6CE80:    = var_4C0.Text
  loc_1D6CE8D:   var_A60 = Val(var_AAC)
  loc_1D6CE9E:   Set var_508 = var_50C(CInt(7))
  loc_1D6CEA4:   Call 0.Method_Proc_258_153_1D711980 (var_AB0)
  loc_1D6CEB9:   var_A68 = Val(var_AB0)
  loc_1D6CECA:   Set var_510 = var_798(CInt(3))
  loc_1D6CED0:   Call 0.Method_Proc_258_153_1D711980 (var_AB4)
  loc_1D6CEE8:   Set var_79C = var_7A0(CInt(3))
  loc_1D6CEEE:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6CF01:   Set var_8B8 = var_960(CInt(3))
  loc_1D6CF07:   Call 0.Method_Proc_258_153_1D711980 (var_AD8)
  loc_1D6CF0F:    = var_960.Tag
  loc_1D6CF40:   Proc_183_7_EB17D4(var_614)
  loc_1D6CF49:   Set var_964 = Me.TopCtrl1
  loc_1D6CF4F:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F950EC)
  loc_1D6CF72:   var_B3C = CStr(var_674)
  loc_1D6CF9A:   var_1B0 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1D6CFA8:   var_29C = var_1B0 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,lOGSITE_CODE) Values ("
  loc_1D6CFFB:   var_AA4 = var_29C & "'" & var_2F4 & "'," & CStr(var_1A8.Text) & ",'" & global_184 & "'," & CStr(var_260) & ",'" & MemVar_1F95070
  loc_1D6D008:   var_238 = CVar(var_AA4 & "','") & Trim(var_1D8) 
  loc_1D6D060:   var_3E0 = var_238 & "'," & var_298 & ",'" & Trim(CVar(var_3E4)) & "'" & ",'','','" & CVar(var_128) & "','" & CVar(var_12C) & "','Room'," 
  loc_1D6D0AC:   var_574 = var_3E0 & CVar(var_A58) & "," & CVar(var_50C.Text) & "," & CVar(var_798.Text) & ",'REST'," & "'RO','" & IIf((var_AB4 <> vbNullString), CVar(var_7A0), CVar(var_AD8)) 
  loc_1D6D0F1:   var_714 = var_574 & "','','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_614 & ",'" & IIf((var_B3C = "Add"), "A", "E") & "','" 
  loc_1D6D107:   var_754 = var_714 & CVar(global_76) & "','" 
  loc_1D6D128:   unk_5B2155.Execute CStr(var_754 & CVar(MemVar_1F95078) & "')"), var_7C4, -1
  loc_1D6D21B:   unk_5B2155.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_1D8, -1
  loc_1D6D226:   Set var_130 = var_1A8(CInt(2))
  loc_1D6D24C:   If (var_130.RecordCount > 0) Then
  loc_1D6D27B:     var_1A8 = var_130.Fields.Item("TaxStru")
  loc_1D6D28B:     var_1F8 = "Select * from taxstru where Code='" & var_1A8.Value 
  loc_1D6D294:     var_218 = var_1F8 & "' Order by Sno" 
  loc_1D6D298:     var_1B0 = CStr(var_218)
  loc_1D6D2A2:     unk_5B2155.Execute var_1B0, var_238, -1
  loc_1D6D2AD:     Set var_118 = var_1AC
  loc_1D6D2CA:   Else
  loc_1D6D2E3:     MsgBox("System Defined Revenue is not defined", 0, var_1F8, var_218, var_238)
  loc_1D6D2F9:     unk_5B2155.RollbackTrans
  loc_1D6D2FE:     Exit Sub
  loc_1D6D2FF:   End If
  loc_1D6D305:   var_14E = (var_14E + 1)
  loc_1D6D32E:   Call 0.Method_Proc_258_153_1D711980 (var_1B0, "Select Docid,GuestProf from GuestFolio where Docid=", var_238, -1, var_1AC)
  loc_1D6D336:   var_14E = var_1A8.Tag
  loc_1D6D344:   Proc_6_17_EAAE40(var_1F8, CVar(var_1B0), var_1AC)
  loc_1D6D35A:   unk_5B2155.Execute CStr(var_1A8(CInt(&HA)) & var_1F8), var_A50, 
  loc_1D6D365:   Set var_134 = var_1AC
  loc_1D6D393:   If (var_134.RecordCount > 0) Then
  loc_1D6D3B0:     var_1A8 = var_134.Fields.Item("GuestProf")
  loc_1D6D3C1:     var_11C = CStr(var_1A8.Value)
  loc_1D6D3CE:   End If
  loc_1D6D3DC:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6D3E2:   Call 0.Method_Proc_258_153_1D711980 (var_2F4)
  loc_1D6D3EA:    = var_1A8.Text
  loc_1D6D3FD:   Set var_1AC = var_250(CInt(0))
  loc_1D6D403:   Call 0.Method_Proc_258_153_1D711980 (var_7A4)
  loc_1D6D40B:    = var_250.Text
  loc_1D6D418:   var_260 = Val(var_7A4)
  loc_1D6D436:   Set var_254 = var_328(CInt(1))
  loc_1D6D43C:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6D44B:   Proc_6_7_F26918(var_298)
  loc_1D6D45B:   Set var_32C = var_3E4(CInt(5))
  loc_1D6D461:   Call 0.Method_Proc_258_153_1D711980 (CVar(var_328))
  loc_1D6D469:   var_340 = CVar(var_3E4) 'Address
  loc_1D6D4A3:   Set var_3F4 = (var_1B2)
  loc_1D6D4A9:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6D4BB:   Set var_438 = var_4BC(var_1B2)
  loc_1D6D4C1:   Call 0.Method_Proc_258_153_1D711980 (var_AA8)
  loc_1D6D4C9:    = var_4BC.Text
  loc_1D6D4D6:   var_A58 = Val(var_AA8)
  loc_1D6D4E0:   Set var_4C0 = var_A58(var_1B4)
  loc_1D6D4E6:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6D4F8:   Set var_508 = var_50C(var_1B4)
  loc_1D6D4FE:   Call 0.Method_Proc_258_153_1D711980 (var_AAC)
  loc_1D6D506:    = var_50C.Text
  loc_1D6D513:   var_A60 = Val(var_AAC)
  loc_1D6D524:   Set var_510 = var_798(CInt(7))
  loc_1D6D52A:   Call 0.Method_Proc_258_153_1D711980 (var_AB0)
  loc_1D6D53F:   var_A68 = Val(var_AB0)
  loc_1D6D550:   Set var_79C = var_7A0(CInt(3))
  loc_1D6D556:   Call 0.Method_Proc_258_153_1D711980 (var_AB4)
  loc_1D6D56E:   Set var_8B8 = var_960(CInt(3))
  loc_1D6D574:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6D587:   Set var_964 = var_A50(CInt(3))
  loc_1D6D58D:   Call 0.Method_Proc_258_153_1D711980 (var_AD8)
  loc_1D6D595:    = var_A50.Tag
  loc_1D6D59D:   var_614 = CVar(var_AD8) 'String
  loc_1D6D5C9:   Set var_C04 = var_C6C(CInt(&HA))
  loc_1D6D5CF:   Call 0.Method_Proc_258_153_1D711980 (var_B3C)
  loc_1D6D5D7:    = var_C6C.Text
  loc_1D6D5E7:   Proc_183_7_EB17D4(var_754)
  loc_1D6D5F0:   Set var_CD4 = Me.TopCtrl1
  loc_1D6D5F6:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F950EC)
  loc_1D6D668:   var_1B0 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1D6D66F:   var_258 = var_1B0 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,"
  loc_1D6D676:   var_29C = var_258 & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolionoDocid,LogSite_Code) Values ("
  loc_1D6D67D:   var_2F8 = var_29C & "'"
  loc_1D6D684:   var_2FC = var_2F8 & var_2F4
  loc_1D6D697:   var_3EC = var_2FC & "'," & CStr(var_14E)
  loc_1D6D6C2:   var_AA0 = var_3EC & ",'" & global_184 & "'," & CStr(var_260) & ",'"
  loc_1D6D712:   var_390 = CVar(var_AA0 & MemVar_1F95070 & "','") & Trim(CVar((var_260))) & "'," & var_298 & ",'" & Trim(var_340) & "'" & ",'" & CVar(var_11C) 
  loc_1D6D75D:   var_4B8 = var_390 & "','','" & CVar(var_128) & "','" & var_130.Fields.Item("Code").Value & "','Room'," & CVar(var_A58) & "," & CVar(var_798.Text) 
  loc_1D6D7A6:   var_5B4 = var_4B8 & "," & CVar(var_7A0.Text) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) 
  loc_1D6D7DB:   var_6F4 = var_5B4 & "','" & IIf((var_AB4 <> vbNullString), CVar(var_960), var_614) & "'," & CVar(var_B3C) & ",'','','',Null," & "Null,'" 
  loc_1D6D81B:   var_874 = var_6F4 & CVar(MemVar_1F950C8) & "'," & var_754 & ",'" & IIf((CStr(var_7C4) = "Add"), "A", "E") & "','" & CVar(global_76) 
  loc_1D6D855:   unk_5B2155.Execute CStr(var_874 & "','" & var_134.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F95078) & "')"), var_92C, -1
  loc_1D6D951:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6D957:   Call 0.Method_Proc_258_153_1D711980 (var_3EC)
  loc_1D6D95F:   var_E5C = var_1A8.Text
  loc_1D6D972:   Set var_1AC = var_250(CInt(0))
  loc_1D6D978:   Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6D980:    = var_250.Text
  loc_1D6D98D:   var_1180 = Val(var_1B0)
  loc_1D6D994:   var_1D8 = CVar((var_1180)) 'Address
  loc_1D6D9AE:   Set var_254 = var_328(CInt(1))
  loc_1D6D9B4:   Call 0.Method_Proc_258_153_1D711980 (var_7A4)
  loc_1D6D9BC:    = var_328.Text
  loc_1D6D9CC:   Set var_32C = var_3E4(CInt(5))
  loc_1D6D9D2:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6D9E1:   var_238 = Trim(CVar(var_3E4))
  loc_1D6D9F8:   var_3E8 = var_130.Fields
  loc_1D6DA08:   var_380 = var_3E8.Item("Code").Value
  loc_1D6DA14:   Set var_3F4 = (var_1B2)
  loc_1D6DA1A:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6DA2C:   Set var_438 = var_4BC(var_1B2)
  loc_1D6DA32:   Call 0.Method_Proc_258_153_1D711980 (var_258)
  loc_1D6DA3A:    = var_4BC.Text
  loc_1D6DA51:   Set var_4C0 = Val(var_258)(var_1B4)
  loc_1D6DA57:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6DA69:   Set var_508 = var_50C(var_1B4)
  loc_1D6DA6F:   Call 0.Method_Proc_258_153_1D711980 (var_29C)
  loc_1D6DA77:    = var_50C.Text
  loc_1D6DA84:   var_1190 = Val(var_29C)
  loc_1D6DA95:   Set var_510 = var_798(CInt(7))
  loc_1D6DA9B:   Call 0.Method_Proc_258_153_1D711980 (var_2F4)
  loc_1D6DAA3:   var_1190 = var_798.Text
  loc_1D6DAB0:   var_1198 = Val(var_2F4)
  loc_1D6DAC1:   Set var_79C = var_7A0(CInt(3))
  loc_1D6DAC7:   Call 0.Method_Proc_258_153_1D711980 (var_2F8)
  loc_1D6DACF:   var_1198 = var_7A0.Text
  loc_1D6DADF:   Set var_8B8 = var_960(CInt(3))
  loc_1D6DAE5:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6DAF8:   Set var_964 = var_A50(CInt(3))
  loc_1D6DAFE:   Call 0.Method_Proc_258_153_1D711980 (var_2FC)
  loc_1D6DB06:    = var_A50.Tag
  loc_1D6DB27:   var_298 = IIf((var_2F8 <> vbNullString), CVar(var_960), CVar(var_2FC))
  loc_1D6DB3A:   Set var_C04 = var_C6C(CInt(&HA))
  loc_1D6DB40:   Call 0.Method_Proc_258_153_1D711980 (var_AAC)
  loc_1D6DB48:    = var_C6C.Text
  loc_1D6DB50:   var_2AC = Date
  loc_1D6DB58:   var_2BC = Date
  loc_1D6DB61:   Set var_CD4 = Me.TopCtrl1
  loc_1D6DB67:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1D6DB99:   var_370 = IIf((CStr(var_340) = "Add"), "A", "E")
  loc_1D6DBC0:   var_390 = var_134.Fields.Item("DocID").Value
  loc_1D6DBCA:   var_D40 = 0
  loc_1D6DBD5:   var_CD8 = 0
  loc_1D6DBE8:   var_C70 = 0
  loc_1D6DBF3:   var_C08 = 0
  loc_1D6DC2A:   var_AD8 = vbNullString
  loc_1D6DC33:   var_AB4 = vbNullString
  loc_1D6DC3C:   var_AB0 = vbNullString
  loc_1D6DC75:   var_AA4 = "Room"
  loc_1D6DC89:   var_A2C = vbNullString
  loc_1D6DC92:   var_968 = vbNullString
  loc_1D6DCD6:   Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_3EC, var_14E, global_184, CLng(var_1180), MemVar_1F95070, CStr(Trim(var_1D8)), CDate(var_7A4))
  loc_1D6DD73: Else
  loc_1D6DD81:   Set var_1A4 = var_1A8(CInt(6))
  loc_1D6DD87:   Call 0.Method_Proc_258_153_1D711980 (var_1B0, CStr(var_238), var_968, var_A2C)
  loc_1D6DD8F:   var_128 = var_1A8.Text
  loc_1D6DDAB:   If (CDbl(Val(var_1B0)) > CDbl(0)) Then
  loc_1D6DDBE:     CStr(var_380) = "CASH RECD. "(var_1B0).Caption
  loc_1D6DDD5:     var_2F4 = var_AA4 & var_1B0 & " " & "BILL NO.-"
  loc_1D6DDED:     Set var_1A8 = var_1AC(CInt(0))
  loc_1D6DDF3:     Call 0.Method_Proc_258_153_1D711980 (var_2F8, var_2F4 & " ")
  loc_1D6DDFB:     var_1188 = var_1AC.Text
  loc_1D6DE37:     If (InStr(1, var_2F8, "'", 0) > 0) Then
  loc_1D6DE57:       var_128 = Replace(var_128, "'", ", 1, -1, 0)
  loc_1D6DE5A:     End If
  loc_1D6DE78:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6DE7E:     Call 0.Method_Proc_258_153_1D711980 (var_1B0, "Delete From PayCharge Where DocID='", var_1D8)
  loc_1D6DE86:     -1 = var_1A8.Text
  loc_1D6DE9F:     unk_5B2155.Execute var_1AC & var_1B0 & "'", , 
  loc_1D6DEC7:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6DECD:     Call 0.Method_Proc_258_153_1D711980 (var_2F4)
  loc_1D6DED5:      = var_1A8.Text
  loc_1D6DEE8:     Set var_1AC = var_250(CInt(0))
  loc_1D6DEEE:     Call 0.Method_Proc_258_153_1D711980 (var_3EC)
  loc_1D6DEF6:      = var_250.Text
  loc_1D6DF03:     var_260 = Val(var_3EC)
  loc_1D6DF11:     var_1F8 = Trim(CVar((var_260)))
  loc_1D6DF21:     Set var_254 = var_328(CInt(1))
  loc_1D6DF27:     Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6DF2F:     var_288 = CVar(var_328) 'Address
  loc_1D6DF36:     Proc_6_7_F26918(var_298)
  loc_1D6DF42:     Set var_32C = var_288(var_1B2)
  loc_1D6DF48:     Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6DF5A:     Set var_3E4 = var_3E8(var_1B2)
  loc_1D6DF60:     Call 0.Method_Proc_258_153_1D711980 (var_A2C)
  loc_1D6DF68:      = var_3E8.Text
  loc_1D6DF75:     var_A58 = Val(var_A2C)
  loc_1D6DF7F:     Set var_3F0 = var_A58(var_1B4)
  loc_1D6DF85:     Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D6DF97:     Set var_3F4 = var_438(var_1B4)
  loc_1D6DF9D:     Call 0.Method_Proc_258_153_1D711980 (var_AA0)
  loc_1D6DFA5:      = var_438.Text
  loc_1D6DFB2:     var_A60 = Val(var_AA0)
  loc_1D6DFC3:     Set var_4BC = var_4C0(CInt(7))
  loc_1D6DFC9:     Call 0.Method_Proc_258_153_1D711980 (var_AA4)
  loc_1D6DFDE:     var_A68 = Val(var_AA4)
  loc_1D6DFEF:     Set var_508 = var_50C(CInt(3))
  loc_1D6DFF5:     Call 0.Method_Proc_258_153_1D711980 (var_AA8)
  loc_1D6E00D:     Proc_183_7_EB17D4(var_5B4)
  loc_1D6E016:     Set var_510 = Me.TopCtrl1
  loc_1D6E01C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F950EC)
  loc_1D6E02A:     var_654 = "E"
  loc_1D6E067:     var_1B0 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1D6E075:     var_29C = var_1B0 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code) Values ("
  loc_1D6E083:     var_2FC = var_29C & "'" & var_2F4
  loc_1D6E0D2:     var_2AC = CVar(var_2FC & "',1,'" & global_184 & "'," & CStr(var_260) & ",'" & MemVar_1F95070 & "','") & var_1F8 & "'," & var_298 
  loc_1D6E10C:     var_380 = var_2AC & ",'','','" & CVar(var_29C & "'") & "','" & CVar(var_12C) & "','Cash'," & CVar(var_A58) 
  loc_1D6E169:     var_498 = var_380 & "," & CVar(var_4C0.Text) & "," & CVar(var_50C.Tag) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) 
  loc_1D6E172:     var_4B8 = var_498 & "','" 
  loc_1D6E18E:     var_554 = var_4B8 & CVar(var_AA8) & "',0,'','','',Null," & "Null,'" 
  loc_1D6E1A8:     var_5D4 = var_554 & CVar(MemVar_1F950C8) & "'," & var_5B4 
  loc_1D6E1E1:     var_714 = var_5D4 & ",'" & IIf((CStr(var_614) = "Add"), "A", var_654) & "','" & CVar(global_76) & "','" & CVar(MemVar_1F95078) 
  loc_1D6E1F8:     unk_5B2155.Execute CStr(var_714 & "')"), var_754, -1
  loc_1D6E2A8:   End If
  loc_1D6E2A8: End If
  loc_1D6E2AC: Set var_1A4 = Me.TopCtrl1
  loc_1D6E2B2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_798)
  loc_1D6E2CB: If (CStr() = "Add") Then
  loc_1D6E2E2:   var_1B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1D6E308:   var_218 = CVar(var_1B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_184 & "' And VP.Date_From<=") 'String
  loc_1D6E319:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D6E31F:   Call 0.Method_Proc_258_153_1D711980 (var_2FC, var_218, var_288)
  loc_1D6E327:   -1 = var_1A8.Text
  loc_1D6E335:   Proc_6_7_F26918(var_1F8, CVar(var_2FC))
  loc_1D6E354:   unk_5B2155.Execute CStr(var_1AC & var_1F8 & " Order By VP.Date_From DESC"), , 
  loc_1D6E35F:   Set var_88 = var_1AC
  loc_1D6E38F:   var_24C = var_88.RecordCount
  loc_1D6E39D:   If (var_24C > 0) Then
  loc_1D6E3AE:     Set var_1A4 = var_1A8(CInt(0))
  loc_1D6E3B4:     Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6E3BC:      = var_1A8.Text
  loc_1D6E3C9:     var_260 = Val(var_1B0)
  loc_1D6E3DE:     var_1AC = var_88.Fields
  loc_1D6E3E6:     var_250 = var_1AC.Item("V_Type")
  loc_1D6E3EE:     var_1D8 = var_250.Value
  loc_1D6E40A:     var_328 = var_88.Fields.Item("Date_From")
  loc_1D6E419:     Proc_6_7_F26918(var_288, CVar(var_328))
  loc_1D6E433:     var_258 = CStr(var_260)
  loc_1D6E453:     var_324 = "Update Voucher_Prefix Set Start_Srl_No=" & var_258 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1D6E470:     var_298 = CVar(var_324 & "') and V_Type='") & var_1D8 & "' and Date_From=" & var_288 
  loc_1D6E47E:     unk_5B2155.Execute CStr(var_298), var_2AC, -1
  loc_1D6E4B8:   End If
  loc_1D6E4B8: End If
  loc_1D6E4BC: Set var_1A4 = Me.TopCtrl1
  loc_1D6E4C2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_32C)
  loc_1D6E4DB: If (CStr(var_260) = "Add") Then
  loc_1D6E501:   var_1B0 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_1D6E511:   Call 0.Method_arg_50 (var_258, var_1B0 & "' AND ENAME='", var_1D8, -1, var_1A4)
  loc_1D6E521:   var_2F8 = var_1A8 & var_258 & "' "
  loc_1D6E52A:   unk_5B2155.Execute var_2F8, 0, var_1AC
  loc_1D6E53A:    = var_1A8.Item()
  loc_1D6E542:    = var_1AC.Value
  loc_1D6E56F:   If (var_1A4.Fields > 0) Then
  loc_1D6E590:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6E596:     Call 0.Method_Proc_258_153_1D711980 (var_1B0, "UPDATE LASTVOU  SET DOCID='", var_1D8)
  loc_1D6E59E:     -1 = var_1A8.Text
  loc_1D6E5A7:     var_258 = var_1AC & var_1B0
  loc_1D6E5C5:     Call 0.Method_arg_50 (var_2F8)
  loc_1D6E5DE:     unk_5B2155.Execute var_258 & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='" & var_2F8 & "'  ", , 
  loc_1D6E605:   Else
  loc_1D6E619:     var_1B0 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8
  loc_1D6E629:     Call 0.Method_arg_50 (var_258, var_1B0 & "','", var_298)
  loc_1D6E632:     var_2F4 = -1 & var_258
  loc_1D6E64A:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6E650:     Call 0.Method_Proc_258_153_1D711980 (var_2F8, var_258 & "' WHERE UNAME='" & MemVar_1F950C8 & "','")
  loc_1D6E658:     var_1AC = var_1A8.Text
  loc_1D6E684:     Proc_6_7_F26918(var_1D8, MemVar_1F950EC)
  loc_1D6E695:     var_238 = CVar(var_2F8 & "','" & MemVar_1F95078 & "',") & var_1D8 & ",'A','" 
  loc_1D6E69F:     var_278 = var_238 & CVar(MemVar_1F95078) 
  loc_1D6E6B6:     unk_5B2155.Execute CStr(var_278 & "')"), , 
  loc_1D6E6EC:   End If
  loc_1D6E6EC: End If
  loc_1D6E6F2: unk_5B2155.CommitTrans
  loc_1D6E6F9: var_8A = 0
  loc_1D6E70A: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6E710: Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D6E718: var_8A = var_1A8.Text
  loc_1D6E720: var_90 = var_1B0
  loc_1D6E74E: unk_5B2155.Execute "Select * from KOT where Docid in (Select Distinct COntraDocid from SplitStock Where Docid='" & var_90 & "')", var_1D8, -1
  loc_1D6E759: Set var_154 = var_1A4
  loc_1D6E77D: var_1B0 = "Select Distinct Depart.Code as OutletCode,Depart.Name as DepartName from ((Depart Inner join Itemmast on Depart.Code=Itemmast.restcode) Inner Join KOT on KOT.Item=Itemmast.code And KOT.ITEMRestCode=ItemMast.RestCode) where KOT.COntraDocid='" & var_90
  loc_1D6E78D: unk_5B2155.Execute var_1B0 & "'", var_1D8, -1
  loc_1D6E798: Set var_158 = var_1A4
  loc_1D6E7A8: ' Referenced from: 1D710B8
  loc_1D6E7AE: var_1B2 = var_158.EOF
  loc_1D6E7B7: If Not(var_1B2) Then
  loc_1D6E7BC:   var_8A = &HFF
  loc_1D6E7C8:   unk_5B2155.BeginTrans var_24C
  loc_1D6E7E5:   var_248 = 0
  loc_1D6E7FB:   var_1E8 = "Select 'B'+ShortName From Depart Where Code='"
  loc_1D6E82A:   var_1F8 = ",'A','" & var_158.Fields.Item("OutletCode").Value 
  loc_1D6E833:   var_218 = var_1F8 & "'" 
  loc_1D6E841:   unk_5B2155.Execute CStr(var_218), var_238, -1
  loc_1D6E849:   var_1AC = var_1AC.Fields
  loc_1D6E851:   var_248 = var_250.Item(var_250)
  loc_1D6E859:   var_254 = var_254.Value
  loc_1D6E861:   var_288 = var_278 & var_278 
  loc_1D6E878:   unk_5B2155.Execute CStr(var_288 & "' Order by Description"), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_2AC
  loc_1D6E883:   Set var_88 = var_328
  loc_1D6E8C3:   If (var_88.RecordCount > 0) Then
  loc_1D6E8E0:     var_1A8 = var_88.Fields.Item(0)
  loc_1D6E8F1:     var_168 = CStr(var_1A8.Value)
  loc_1D6E901:   Else
  loc_1D6E91A:     MsgBox("Point of Sale Not Configured for selected Restaurant", 0, var_1F8, var_218, var_238)
  loc_1D6E937:     Me.Global.Unload Me
  loc_1D6E93F:     Exit Sub
  loc_1D6E940:   End If
  loc_1D6E954:   var_1B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1D6E977:   var_218 = CVar(var_1B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_168 & "' And VP.Date_From<=") 'String
  loc_1D6E985:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D6E98B:   Call 0.Method_Proc_258_153_1D711980 (var_218, var_288, -1)
  loc_1D6E99A:   Proc_6_7_F26918(var_1F8, CVar(var_1A8))
  loc_1D6E9B9:   unk_5B2155.Execute CStr(var_1AC & var_1F8 & " Order By VP.Date_From DESC"), -1, 
  loc_1D6E9C4:   Set var_88 = var_1AC
  loc_1D6EA00:   If (var_88.RecordCount > 0) Then
  loc_1D6EA3F:     If (var_88.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1D6EA6D:       var_164 = CStr(var_88.Fields.Item("Prefix").Value)
  loc_1D6EAA9:       var_1F8 = (var_88.Fields.Item("start_srl_no").Value + 1)
  loc_1D6EAAF:       var_160 = CLng(var_1F8)
  loc_1D6EAC0:     End If
  loc_1D6EAC0:   End If
  loc_1D6EAEB:   var_1D8 = Space((5 - Len(var_168)))
  loc_1D6EAF3:   var_218 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_168) + var_88.Fields.Item("start_srl_no").Value)
  loc_1D6EB04:   var_238 = Space((5 - Len(var_164)))
  loc_1D6EB0C:   var_278 = (var_218 + var_1AC & CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_168))
  loc_1D6EB16:   var_288 = (var_1AC & CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_168) & " Order By VP.Date_From DESC" + CVar(var_164))
  loc_1D6EB2C:   var_298 = Space((8 - Len(CStr(var_160))))
  loc_1D6EB34:   var_2AC = (var_288 + var_288 & "' Order by Description")
  loc_1D6EB40:   var_340 = (var_2AC + CVar(CStr(var_160)))
  loc_1D6EB45:   var_15C = CStr(var_2AC & ",'','','" & CVar(CStr(var_160) & "'"))
  loc_1D6EBBE:   var_218 = CVar("Insert into POS_SBill(DocId,OutletDocId,OutletCode) Values('" & var_90 & "','" & var_15C & "','") & var_158.Fields.Item("OutletCode").Value 
  loc_1D6EBD5:   unk_5B2155.Execute CStr(var_218 & "')"), var_1AC & CVar("Insert into POS_SBill(DocId,OutletDocId,OutletCode) Values('" & var_90 & "','" & var_15C & "','") & " Order By VP.Date_From DESC", -1
  loc_1D6EBFE:   var_A4 = CDbl(0)
  loc_1D6EC04:   var_AC = CDbl(0)
  loc_1D6EC28:   Set var_1A4 = 1(var_92)
  loc_1D6EC2E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CDbl(0))
  loc_1D6EC44:   For var_11C0 = var_1AC To CInt((CLng(var_AC) - 1)): var_A4 = var_11C0 'Integer
  loc_1D6EC8D:     Set var_1AC = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6EC93:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(Trim(CVar(var_158.Fields.Item("OutletCode"))))
  loc_1D6ECC2:     If (var_160 = Trim(CVar(CStr(var_1AC)))) Then
  loc_1D6ECDA:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6ECE0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6ECF3:       var_260 = Val(CStr())
  loc_1D6ECFD:       var_170 = (var_170 + var_260)
  loc_1D6ED21:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6ED27:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(0)
  loc_1D6ED3E:       var_1F8 = (var_260 + CVar(Val(CStr(CDbl(0)))))
  loc_1D6ED42:       var_1A0 = Trim(CVar(var_158.Fields.Item("OutletCode"))) 'Variant
  loc_1D6ED67:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1D6ED6D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(0)
  loc_1D6ED84:       var_1F8 = ( + CVar(Val(CStr())))
  loc_1D6ED88:       var_190 = Trim(CVar(var_158.Fields.Item("OutletCode"))) 'Variant
  loc_1D6EDAA:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D6EDB0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6EDC1:       var_218 = Trim(CVar(CStr()))
  loc_1D6EDE8:       Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D6EDEE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_218 <> vbNullString))
  loc_1D6EE27:       If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1D6EE3F:         Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6EE45:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6EE58:         var_260 = Val(CStr())
  loc_1D6EE66:         Set var_1A8 = var_1AC(CInt(1))
  loc_1D6EE6C:         Call 0.Method_Proc_258_153_1D711980 (var_260)
  loc_1D6EE74:         var_1F8 = CVar(var_1AC) 'Address
  loc_1D6EE7B:         Proc_6_7_F26918(var_218)
  loc_1D6EE92:         var_250 = var_158.Fields
  loc_1D6EEBC:         Set var_328 = CVar(CLng(var_92))(CVar(CLng(&H15)))
  loc_1D6EEC2:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1F8)
  loc_1D6EEE3:         Set var_32C = CVar(CLng(var_92))(CVar(CLng(&H16)))
  loc_1D6EEE9:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6EF03:         Set var_3E4 = var_3E8(CInt(3))
  loc_1D6EF09:         Call 0.Method_Proc_258_153_1D711980 (var_AA0)
  loc_1D6EF11:          = var_3E8.Text
  loc_1D6EF21:         Set var_3F0 = var_3F4(CInt(3))
  loc_1D6EF27:         Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D6EF41:         Set var_438 = 1(CVar(CLng(&H17)))
  loc_1D6EF47:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6EF85:         Set var_4BC = CVar(CLng(var_92))(CVar(CLng(&HB)))
  loc_1D6EF8B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6EFAC:         Set var_4C0 = CVar(CLng(var_92))(CVar(CLng(&H13)))
  loc_1D6EFB2:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6EFD3:         Set var_508 = CVar(CLng(var_92))(CVar(CLng(&H14)))
  loc_1D6EFD9:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6EFFA:         Set var_50C = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D6F000:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F021:         Set var_510 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D6F027:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F03A:         var_A58 = Val(CStr())
  loc_1D6F052:         Set var_798 = CVar(CLng(var_92))(CVar(CLng(9)))
  loc_1D6F058:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A58)
  loc_1D6F06B:         var_A60 = Val(CStr())
  loc_1D6F083:         Set var_79C = CVar(CLng(var_92))(CVar(CLng(8)))
  loc_1D6F089:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1D6F09C:         var_A68 = Val(CStr())
  loc_1D6F0B4:         Set var_7A0 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6F0BA:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D6F0CD:         var_1170 = Val(CStr())
  loc_1D6F0E5:         Set var_8B8 = CVar(CLng(var_92))(CVar(CLng(&H10)))
  loc_1D6F0EB:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1170)
  loc_1D6F0FE:         var_1178 = Val(CStr())
  loc_1D6F116:         Set var_960 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6F11C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1178)
  loc_1D6F12F:         var_1180 = Val(CStr())
  loc_1D6F147:         Set var_964 = CVar(CLng(var_92))(CVar(CLng(&HE)))
  loc_1D6F14D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1180)
  loc_1D6F160:         var_1188 = Val(CStr())
  loc_1D6F178:         Set var_A50 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1D6F17E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1188)
  loc_1D6F191:         var_1190 = Val(CStr())
  loc_1D6F1A9:         Set var_C04 = CVar(CLng(var_92))(CVar(CLng(&H12)))
  loc_1D6F1AF:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1190)
  loc_1D6F1C2:         var_1198 = Val(CStr())
  loc_1D6F1D0:         Proc_6_7_F26918(var_A28, MemVar_1F950EC)
  loc_1D6F1D9:         Set var_C6C = Me.TopCtrl1
  loc_1D6F1DF:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1198)
  loc_1D6F211:         var_DF8 = IIf((CStr(var_A88) = "Add"), "A", "E")
  loc_1D6F22B:         Set var_CD4 = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D6F231:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F252:         Set var_D3C = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D6F258:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F279:         Set var_DA4 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6F27F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F2A0:         Set var_E5C = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6F2A6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F2B9:         var_11A0 = Val(CStr())
  loc_1D6F2D1:         Set var_EF0 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6F2D7:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_11A0)
  loc_1D6F2F7:         var_1B0 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,LOGSITE_CODE,ItemRestCode) Values (" & "'"
  loc_1D6F34E:         var_A2C = var_1B0 & var_15C & "'," & CStr(var_260) & ",'" & var_168 & "','" & var_164 & "','" & MemVar_1F95070 & "'," & CStr(var_160)
  loc_1D6F355:         var_238 = CVar(var_A2C & ",") 'String
  loc_1D6F37F:         var_360 = var_238 & var_218 & ",'" & var_250.Item("OutletCode").Value & "','" & CVar(CStr(var_238 & var_218 & ",'" & var_250.Item("OutletCode").Value & ",'','','" & CVar(CStr() & "'"))) 
  loc_1D6F3B7:         var_504 = var_360 & "','" & CVar(CStr(var_380)) & "','" & IIf((var_AA0 <> vbNullString), CVar(var_3F4), CVar(CStr())) & "','" & CVar(CStr(var_4B8)) 
  loc_1D6F3C8:         var_574 = CVar(CStr(var_554)) 'String
  loc_1D6F3F0:         var_674 = CVar(CStr(var_654)) 'String
  loc_1D6F41B:         var_754 = var_504 & "','" & var_574 & "','" & CVar(CStr(var_5D4)) & "','" & var_674 & "'," & CVar(var_A58) & "," & CVar(var_A60) 
  loc_1D6F47F:         var_91C = var_754 & "," & CVar(var_A68) & "," & CVar(var_1170) & "," & CVar(var_1178) & "," & CVar(var_1180) & "," & CVar(var_1188) 
  loc_1D6F493:         var_95C = var_91C & "," & CVar(var_1190) 
  loc_1D6F4EE:         var_EAC = var_95C & "," & CVar(var_1198) & ",'" & CVar(MemVar_1F950C8) & "'," & var_A28 & ",'" & var_DF8 & "','" & CVar(CStr(var_E7C)) 
  loc_1D6F53D:         var_10AC = var_EAC & "','" & CVar(CStr(var_F10)) & "','" & CVar(CStr(var_FA4)) & "'," & CVar(var_11A0) & ",'N','" & CVar(MemVar_1F95078) 
  loc_1D6F568:         unk_5B2155.Execute CStr(var_10AC & "','" & CVar(CStr(var_1110)) & "')"), var_11D0, -1
  loc_1D6F6BF:         If (global_240 = "Y") Then
  loc_1D6F6D7:           Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6F6DD:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_F84)
  loc_1D6F6F0:           var_260 = Val(CStr())
  loc_1D6F708:           Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6F70E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6F72F:           Set var_1AC = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6F735:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F748:           var_A58 = Val(CStr())
  loc_1D6F78B:           var_4C4 = "Update KOT Set ContraDocId='" & var_15C & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8) & "' And SNo="
  loc_1D6F7A0:           unk_5B2155.Execute var_4C4 & CStr(var_A58), var_238, -1
  loc_1D6F7D6:         End If
  loc_1D6F7E1:         If (global_196 = "Y") Then
  loc_1D6F7F9:           Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6F7FF:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_250)
  loc_1D6F812:           var_260 = Val(CStr(var_A58))
  loc_1D6F82A:           Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6F830:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6F851:           Set var_1AC = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6F857:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F86A:           var_A58 = Val(CStr())
  loc_1D6F8A6:           var_330 = "Update PackingOrderDetail set ContraDocID='" & var_15C & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8)
  loc_1D6F8C9:           unk_5B2155.Execute var_330 & "' and SNo=" & CStr(var_A58) & vbNullString, var_238, -1
  loc_1D6F901:         End If
  loc_1D6F901:       End If
  loc_1D6F916:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6F91C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_250)
  loc_1D6F94D:       Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6F953:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CDbl(Val(CStr(var_A58))) > CDbl(0)))
  loc_1D6F964:       var_238 = Trim(CVar(CStr()))
  loc_1D6F9BF:       If CBool( And (var_238 = CVar(Proc_6_38_E69628(CVar(var_158.Fields.Item("OutletCode")))))) Then
  loc_1D6F9D7:         Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6F9DD:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6F9F0:         var_260 = Val(CStr())
  loc_1D6F9FA:         var_A4 = (var_A4 + var_260)
  loc_1D6FA09:       Else
  loc_1D6FA1E:         Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6FA24:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A4)
  loc_1D6FA41:         var_AC = (var_AC + Val(CStr(var_260)))
  loc_1D6FA4D:       End If
  loc_1D6FA4D:     End If
  loc_1D6FA50:   Next var_11C0 'Integer
  loc_1D6FA5E:   Set var_1A4 = 1(var_112)
  loc_1D6FA64:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D6FA7A:   For var_11D4 =  To CInt((CLng() - 1)):  = var_11D4 'Integer
  loc_1D6FA95:     Set var_1A4 = CVar(CLng(var_112))(CVar(CLng(2)))
  loc_1D6FA9B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6FAD3:     Set var_1A8 = CVar(CLng(var_112))(CVar(CLng(6)))
  loc_1D6FAD9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> vbNullString))
  loc_1D6FB0E:     Set var_1AC = CVar(CLng(var_112))(CVar(CLng(8)))
  loc_1D6FB14:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41( And (CDbl(Val(CStr())) <> CDbl(0)))
  loc_1D6FB3C:     var_250 = var_158.Fields
  loc_1D6FB53:     var_350 = Trim(CVar(var_250.Item("OutletCode")))
  loc_1D6FB8A:     If CBool( And (Trim(CVar(CStr())) = var_350)) Then
  loc_1D6FBA2:       Set var_1A4 = CVar(CLng(var_112))(CVar(CLng(1)))
  loc_1D6FBA8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6FBBB:       var_260 = Val(CStr())
  loc_1D6FBD3:       Set var_1A8 = CVar(CLng(var_112))(CVar(CLng(0)))
  loc_1D6FBD9:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6FBE4:       var_324 = CStr()
  loc_1D6FBEC:       var_A58 = Val(var_324)
  loc_1D6FBFA:       Set var_1AC = var_250(CInt(1))
  loc_1D6FC00:       Call 0.Method_Proc_258_153_1D711980 (var_A58)
  loc_1D6FC0F:       Proc_6_7_F26918(var_238)
  loc_1D6FC26:       var_254 = var_158.Fields
  loc_1D6FC36:       var_2AC = var_254.Item("OutletCode").Value
  loc_1D6FC50:       Set var_32C = CVar(CLng(var_112))(CVar(CLng(2)))
  loc_1D6FC56:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_250))
  loc_1D6FC77:       Set var_3E4 = CVar(CLng(var_112))(CVar(CLng(4)))
  loc_1D6FC7D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6FC88:       var_AB0 = CStr()
  loc_1D6FC90:       var_A60 = Val(var_AB0)
  loc_1D6FCA8:       Set var_3E8 = CVar(CLng(var_112))(CVar(CLng(5)))
  loc_1D6FCAE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1D6FCC1:       var_A68 = Val(CStr())
  loc_1D6FCD9:       Set var_3F0 = CVar(CLng(var_112))(CVar(CLng(6)))
  loc_1D6FCDF:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D6FCF2:       var_1170 = Val(CStr())
  loc_1D6FD00:       Proc_6_7_F26918(var_504, MemVar_1F950EC)
  loc_1D6FD09:       Set var_3F4 = Me.TopCtrl1
  loc_1D6FD0F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1170)
  loc_1D6FD5A:       var_1B0 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D6FD61:       var_258 = var_1B0 & var_15C
  loc_1D6FD74:       var_2FC = var_258 & "'," & CStr(var_260)
  loc_1D6FD7B:       var_330 = var_2FC & ","
  loc_1D6FD87:       var_4C4 = var_330 & CStr(var_A58)
  loc_1D6FD95:       var_7A4 = var_4C4 & ",'" & var_168
  loc_1D6FD9C:       var_8CC = var_7A4 & "','"
  loc_1D6FDA3:       var_968 = var_8CC & var_164
  loc_1D6FDAA:       var_A2C = var_968 & "','"
  loc_1D6FDB1:       var_AA0 = var_A2C & MemVar_1F95070
  loc_1D6FDB8:       var_AA4 = var_AA0 & "',"
  loc_1D6FDC0:       var_AA8 = CStr(var_160)
  loc_1D6FDE1:       var_2BC = CVar(var_AA4 & var_AA8 & ",") & var_238 & ",'" & var_2AC 
  loc_1D6FE1D:       var_448 = var_2BC & "','" & CVar(CStr(var_350)) & "'," & CVar(var_A60) & "," & CVar(var_A68) 
  loc_1D6FE64:       var_5F4 = var_448 & "," & CVar(var_1170) & ",'" & CVar(MemVar_1F950C8) & "'," & var_504 & ",'" & IIf((CStr(var_574) = "Add"), "A", "E") 
  loc_1D6FE8E:       unk_5B2155.Execute CStr(var_5F4 & "','N','" & CVar(MemVar_1F95078) & "')"), var_674, -1
  loc_1D6FF2E:     End If
  loc_1D6FF31:   Next var_11D4 'Integer
  loc_1D6FF4D:   var_1A8 = var_158.Fields.Item("OutletCode")
  loc_1D6FF67:   Call Proc_258_166_16C2EE8(&H32)
  loc_1D6FF81:   Set var_1A4 = var_92(var_1B2)
  loc_1D6FF87:   Call 0.Method_Proc_258_153_1D711988 (1)
  loc_1D6FF92:   For var_11D8 =  To var_1B2: Proc_6_38_E69628(CVar(var_1A8)) = var_11D8 'Integer
  loc_1D6FFBB:     var_1B0 = "Select IsNull(Max(Nature),'') from SundryType Where  LOGSITE_CODE='" & MemVar_1F95078
  loc_1D6FFD2:     Set var_1A4 = var_1A8(var_92)
  loc_1D6FFD8:     Call 0.Method_Proc_258_153_1D711980 (var_258, CVar(var_1B0 & "' AND SundryCode='"), var_2AC, -1, var_1AC)
  loc_1D6FFEE:     var_1F8 = Trim(CVar(var_258))
  loc_1D70023:     unk_5B2155.Execute CStr(0 & var_1F8 & "' And V_Type='" & CVar(global_184) & "'"), var_254, var_2BC
  loc_1D7002B:      = var_1AC.Fields
  loc_1D70033:      = var_1A8.Tag.Item()
  loc_1D7003B:      = var_254.Value
  loc_1D70077:     var_11DC = Proc_6_38_E69628(var_2BC)
  loc_1D70082:     If (var_11DC = "Addition") Then
  loc_1D70092:       Set var_1A4 = var_1A8(var_92)
  loc_1D70098:       Call 0.Method_Proc_258_153_1D711980 (var_1B0)
  loc_1D700A0:        = var_1A8.Text
  loc_1D700B7:       var_B4 = (var_B4 + Val(var_1B0))
  loc_1D700D1:       Set var_1A4 = var_1A8(var_92)
  loc_1D700D7:       Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_B4)
  loc_1D700DF:       var_260 = var_1A8.Text
  loc_1D700F6:       var_CC = (var_CC + Val(var_1B0))
  loc_1D70106:     Else
  loc_1D7010E:       If (var_11DC = "Deduction") Then
  loc_1D7011E:         Set var_1A4 = var_1A8(var_92)
  loc_1D70124:         Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_CC)
  loc_1D7012C:         var_260 = var_1A8.Text
  loc_1D70143:         var_BC = (var_BC + Val(var_1B0))
  loc_1D7015D:         Set var_1A4 = var_1A8(var_92)
  loc_1D70163:         Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_BC)
  loc_1D7016B:         var_260 = var_1A8.Text
  loc_1D70182:         var_C4 = (var_C4 + Val(var_1B0))
  loc_1D70192:       Else
  loc_1D7019A:         If (var_11DC = "Discount") Then
  loc_1D701AA:           Set var_1A4 = var_1A8(var_92)
  loc_1D701B0:           Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_C4)
  loc_1D701B8:           var_260 = var_1A8.Text
  loc_1D701CF:           var_DC = (var_DC + Val(var_1B0))
  loc_1D701E9:           Set var_1A4 = var_1A8(var_92)
  loc_1D701EF:           Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_DC)
  loc_1D701F7:           var_260 = var_1A8.Text
  loc_1D7020E:           var_E4 = (var_E4 + Val(var_1B0))
  loc_1D7021E:         Else
  loc_1D70226:           If (var_11DC = "Luxury Tax") Then
  loc_1D70236:             Set var_1A4 = var_1A8(var_92)
  loc_1D7023C:             Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_E4)
  loc_1D70244:             var_260 = var_1A8.Text
  loc_1D7025B:             var_FC = (var_FC + Val(var_1B0))
  loc_1D70275:             Set var_1A4 = var_1A8(var_92)
  loc_1D7027B:             Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_FC)
  loc_1D70283:             var_260 = var_1A8.Text
  loc_1D7029A:             var_D4 = (var_D4 + Val(var_1B0))
  loc_1D702AA:           Else
  loc_1D702B2:             If (var_11DC = "Round Off") Then
  loc_1D702C2:               Set var_1A4 = var_1A8(var_92)
  loc_1D702C8:               Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_D4)
  loc_1D702D0:               var_260 = var_1A8.Text
  loc_1D702E7:               var_EC = (var_EC + Val(var_1B0))
  loc_1D70301:               Set var_1A4 = var_1A8(var_92)
  loc_1D70307:               Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_EC)
  loc_1D7030F:               var_260 = var_1A8.Text
  loc_1D70326:               var_F4 = (var_F4 + Val(var_1B0))
  loc_1D70336:             Else
  loc_1D7033E:               If (var_11DC = "Sale Tax") Then
  loc_1D7034E:                 Set var_1A4 = var_1A8(var_92)
  loc_1D70354:                 Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_F4)
  loc_1D7035C:                 var_260 = var_1A8.Text
  loc_1D70373:                 var_FC = (var_FC + Val(var_1B0))
  loc_1D7038D:                 Set var_1A4 = var_1A8(var_92)
  loc_1D70393:                 Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_FC)
  loc_1D7039B:                 var_260 = var_1A8.Text
  loc_1D703B2:                 var_D4 = (var_D4 + Val(var_1B0))
  loc_1D703C2:               Else
  loc_1D703CA:                 If (var_11DC = "Service Charge") Then
  loc_1D703DA:                   Set var_1A4 = var_1A8(var_92)
  loc_1D703E0:                   Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_D4)
  loc_1D703E8:                   var_260 = var_1A8.Text
  loc_1D703FF:                   var_104 = (var_104 + Val(var_1B0))
  loc_1D70419:                   Set var_1A4 = var_1A8(var_92)
  loc_1D7041F:                   Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_104)
  loc_1D70427:                   var_260 = var_1A8.Text
  loc_1D7043E:                   var_10C = (var_10C + Val(var_1B0))
  loc_1D7044E:                 Else
  loc_1D70456:                   If (var_11DC = "Service Tax") Then
  loc_1D70466:                     Set var_1A4 = var_1A8(var_92)
  loc_1D7046C:                     Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_10C)
  loc_1D70474:                     var_260 = var_1A8.Text
  loc_1D7048B:                     var_FC = (var_FC + Val(var_1B0))
  loc_1D704A5:                     Set var_1A4 = var_1A8(var_92)
  loc_1D704AB:                     Call 0.Method_Proc_258_153_1D711980 (var_1B0, var_FC)
  loc_1D704B3:                     var_260 = var_1A8.Text
  loc_1D704CA:                     var_D4 = (var_D4 + Val(var_1B0))
  loc_1D704D7:                   End If
  loc_1D704D7:                 End If
  loc_1D704D7:               End If
  loc_1D704D7:             End If
  loc_1D704D7:           End If
  loc_1D704D7:         End If
  loc_1D704D7:       End If
  loc_1D704D7:     End If
  loc_1D704DA:   Next var_11D8 'Integer
  loc_1D704E2:   var_9C = vbNullString
  loc_1D704F0:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D704F6:   Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D70505:   Proc_6_7_F26918(var_1F8)
  loc_1D70524:   var_250 = var_158.Fields.Item("OutletCode")
  loc_1D70546:   Set var_254 = 1(CVar(CLng(&H17)))
  loc_1D7054C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_1A8))
  loc_1D70566:   Set var_328 = var_32C(CInt(&HD))
  loc_1D7056C:   Call 0.Method_Proc_258_153_1D711980 (var_2FC)
  loc_1D70574:    = var_32C.Tag
  loc_1D70587:   Set var_3E4 = var_3E8(CInt(4))
  loc_1D7058D:   Call 0.Method_Proc_258_153_1D711980 (var_324)
  loc_1D70595:    = var_3E8.Text
  loc_1D705A2:   var_260 = Val(var_324)
  loc_1D705AC:   Set var_3F0 = var_260(var_1B2)
  loc_1D705B2:   Call 0.Method_Proc_258_153_1D711988 ()
  loc_1D705C4:   Set var_3F4 = var_438(var_1B2)
  loc_1D705CA:   Call 0.Method_Proc_258_153_1D711980 (var_330)
  loc_1D705D2:    = var_438.Text
  loc_1D705DF:   var_A58 = Val(var_330)
  loc_1D70613:   Proc_6_7_F26918(var_91C, Date)
  loc_1D7061C:   Set var_4BC = Me.TopCtrl1
  loc_1D70622:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A58)
  loc_1D70667:   Set var_4C0 = var_508(CInt(5))
  loc_1D7066D:   Call 0.Method_Proc_258_153_1D711980 (var_4C4)
  loc_1D70675:    = var_508.Text
  loc_1D7068E:   var_1B0 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D706EE:   var_340 = CVar(var_1B0 & var_15C & "'," & CStr(var_160) & ",") & var_1F8 & ",'" & CVar(var_168) & "','" & CVar(var_164) & "','" & CVar(MemVar_1F95070) 
  loc_1D7073E:   var_478 = var_340 & "','" & var_250.Value & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_448)) 
  loc_1D7079D:   var_5D4 = var_478 & "','" & CVar(var_2FC) & "'," & CVar(var_260) & "," & CVar(CDbl(0)) & "," & CVar(var_E4) & "," & var_190 
  loc_1D707BA:   var_634 = var_5D4 & "," & CVar(var_AC) & "," 
  loc_1D707FD:   var_714 = var_634 & CVar(var_A4) & "," & var_1A0 & ", " & CVar(var_104) & "," & CVar(var_124) 
  loc_1D7085D:   var_884 = var_714 & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A58) & ",'" & Trim(Left(global_180, &HFF)) 
  loc_1D70866:   var_894 = var_884 & "', '" 
  loc_1D708AC:   var_A4C = var_894 & CVar(MemVar_1F950C8) & "'," & var_91C & ",'" & IIf((CStr(var_95C) = "Add"), "A", "E") & "','" & CVar(var_4C4) & "','" 
  loc_1D708D9:   var_514 = CStr(var_A4C & CVar(global_292) & "','N','" & CVar(MemVar_1F95078) & "')")
  loc_1D708E3:   unk_5B2155.Execute var_514, var_DF8, -1
  loc_1D709C5:   Set var_1A4 = var_92(var_1B2)
  loc_1D709CB:   Call 0.Method_Proc_258_153_1D711988 (1)
  loc_1D709D6:   For var_11E0 =  To var_1B2: var_50C = var_11E0 'Integer
  loc_1D709E9:     Set var_1A4 = var_1A8(var_92)
  loc_1D709EF:     Call 0.Method_Proc_258_153_1D711980 (var_1B2)
  loc_1D709F7:      = var_1A8.Visible
  loc_1D70A09:     If (var_1B2 = &HFF) Then
  loc_1D70A17:       Set var_1A4 = var_1A8(CInt(1))
  loc_1D70A1D:       Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D70A25:       var_1D8 = CVar(var_1A8) 'Address
  loc_1D70A2C:       Proc_6_7_F26918(var_1F8)
  loc_1D70A3F:       Set var_1AC = var_250(CInt(&HD))
  loc_1D70A45:       Call 0.Method_Proc_258_153_1D711980 (var_4C4)
  loc_1D70A4D:       var_1D8 = var_250.Tag
  loc_1D70A5F:       Set var_254 = var_328(var_92)
  loc_1D70A65:       Call 0.Method_Proc_258_153_1D711980 (var_514)
  loc_1D70A6D:        = var_328.Tag
  loc_1D70A8D:       Set var_32C = var_3E4(var_92)
  loc_1D70A93:       Call 0.Method_Proc_258_153_1D711980 (var_7A4)
  loc_1D70A9B:        = var_3E4.Tag
  loc_1D70AA8:       var_260 = Val(var_7A4)
  loc_1D70AB8:       Set var_3E8 = var_3F0(var_92)
  loc_1D70ABE:       Call 0.Method_Proc_258_153_1D711980 (var_8CC)
  loc_1D70AD8:       Set var_3F4 = var_438(var_92)
  loc_1D70ADE:       Call 0.Method_Proc_258_153_1D711980 (var_968)
  loc_1D70AE6:        = var_438.Tag
  loc_1D70AF8:       Set var_4BC = var_4C0(var_92)
  loc_1D70AFE:       Call 0.Method_Proc_258_153_1D711980 (var_A2C)
  loc_1D70B06:        = var_4C0.Tag
  loc_1D70B18:       Set var_508 = var_50C(var_92)
  loc_1D70B1E:       Call 0.Method_Proc_258_153_1D711980 (var_AA0)
  loc_1D70B26:        = var_50C.Text
  loc_1D70B33:       var_A58 = Val(var_AA0)
  loc_1D70B43:       Set var_510 = var_798(var_92)
  loc_1D70B49:       Call 0.Method_Proc_258_153_1D711980 (var_AA4)
  loc_1D70B5E:       var_A60 = Val(var_AA4)
  loc_1D70B6E:       Set var_79C = var_7A0(var_92)
  loc_1D70B74:       Call 0.Method_Proc_258_153_1D711980 (var_AA8)
  loc_1D70B89:       var_A68 = Val(var_AA8)
  loc_1D70B97:       Proc_6_7_F26918(var_5D4, MemVar_1F950EC)
  loc_1D70BA0:       Set var_8B8 = Me.TopCtrl1
  loc_1D70BA6:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1D70BE8:       Set var_960 = var_964(CInt(9))
  loc_1D70BEE:       Call 0.Method_Proc_258_153_1D711980 ()
  loc_1D70BF6:       var_6F4 = CVar(var_964) 'Address
  loc_1D70BFD:       Proc_6_7_F26918(var_714)
  loc_1D70C0F:       Set var_A50 = var_C04(var_92)
  loc_1D70C15:       Call 0.Method_Proc_258_153_1D711980 (var_AB0)
  loc_1D70C1D:       var_6F4 = var_C04.Tag
  loc_1D70C5D:       var_1B0 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_15C
  loc_1D70C7E:       var_2FC = var_1B0 & "'," & CStr(var_92) & ",'" & var_168
  loc_1D70CAE:       var_288 = CVar(var_4C4) 'String
  loc_1D70CBA:       var_2AC = CVar(var_2FC & "'," & CStr(var_160) & ",") & var_1F8 & ",'" & var_288 & "','" 
  loc_1D70D0E:       var_488 = var_2AC & Trim(CVar(var_514)) & "'," & CVar(var_3F0.Caption) & ",'" & CVar(var_8CC) & "','" & CVar(var_968) & "','" & CVar(var_A2C) 
  loc_1D70D66:       var_5B4 = var_488 & "'," & CVar(var_798.Text) & "," & CVar(var_7A0.Caption) & "," & CVar(var_A68) & ",'" & CVar(MemVar_1F950C8) & "'," 
  loc_1D70DB0:       var_804 = var_5B4 & var_5D4 & ",'" & IIf((CStr(var_634) = "Add"), "A", "E") & "'," & var_714 & ",'" & CVar(var_AB0) & "','" & var_158.Fields.Item("OutletCode").Value 
  loc_1D70DED:       unk_5B2155.Execute CStr(var_804 & "','N','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_894, -1
  loc_1D70EBD:     End If
  loc_1D70EC0:   Next var_11E0 'Integer
  loc_1D70EC9:   Set var_1A4 = Me.TopCtrl1
  loc_1D70ECF:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1D70EE8:   If (CStr() = "Add") Then
  loc_1D70EFF:     var_1B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1D70F22:     var_218 = CVar(var_1B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & var_168 & "' And VP.Date_From<=") 'String
  loc_1D70F33:     Set var_1A4 = var_1A8(CInt(1))
  loc_1D70F39:     Call 0.Method_Proc_258_153_1D711980 (var_2FC, var_218, var_288)
  loc_1D70F41:     -1 = var_1A8.Text
  loc_1D70F4F:     Proc_6_7_F26918(var_1F8, CVar(var_2FC))
  loc_1D70F6E:     unk_5B2155.Execute CStr(var_1AC & var_1F8 & " Order By VP.Date_From DESC"), , 
  loc_1D70F79:     Set var_88 = var_1AC
  loc_1D70FB7:     If (var_88.RecordCount > 0) Then
  loc_1D70FE8:       var_2F8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_160) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1D70FFF:       var_1C8 = "V_Type"
  loc_1D71056:       Proc_6_7_F26918(var_288, CVar(var_88.Fields.Item("Date_From")), CVar(var_2F8 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_1C8).Value & "' and Date_From=")
  loc_1D7106C:       unk_5B2155.Execute CStr(var_2AC & var_288), -1, var_254
  loc_1D710A0:     End If
  loc_1D710A0:   End If
  loc_1D710A6:   unk_5B2155.CommitTrans
  loc_1D710AD:   var_8A = 0
  loc_1D710B3:   var_158.MoveNext
  loc_1D710B8:   GoTo loc_1D6E7A8
  loc_1D710BB: End If
  loc_1D710C6: Me.Requery -1
  loc_1D710F0: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_1D71107: If (global_188 <> "FAST") Then
  loc_1D71115:   Me.Requery -1
  loc_1D7111A: End If
  loc_1D71125: Me.Requery -1
  loc_1D7114D: Call Proc_258_148_107A830(Proc_5_1_100EC1C("INI", Me, global_116))
  loc_1D71158: Call Proc_258_145_1BA3A9C(var_1C8)
  loc_1D7115D: Call Proc_258_133_122007C(var_8A)
  loc_1D71167: Set var_88 = Nothing
  loc_1D7116F: Set var_134 = Nothing
  loc_1D71177: Set var_154 = Nothing
  loc_1D7117A: Exit Sub
  loc_1D7117B: ' Referenced from: 1D69568
  loc_1D71181: If (var_8A = &HFF) Then
  loc_1D7118A:   unk_5B2155.RollbackTrans
  loc_1D7118F: End If
  loc_1D7118F: Proc_6_60_E63754()
  loc_1D71194: Exit Sub
End Sub

Public Sub Proc_258_154_FC4134
  'Data Table: 5B2118
  Dim var_AC As Long
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC3F98: Set var_98 = ()
  loc_FC3F9E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_FC3FA7: var_AC = CLng()
  loc_FC3FB7: If (var_AC = CLng(4)) Then
  loc_FC3FBC:   var_92 = 4 'Byte
  loc_FC3FC0: End If
  loc_FC3FC9: Set var_98 = var_B0(0)
  loc_FC3FCF: Call 0.Method_Proc_258_154_FC41340 (var_AC)
  loc_FC3FF2: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC400A: Set var_98 = 1(var_88)
  loc_FC4010: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_FC4026: For var_D4 =  To CInt((CLng() - 1)):  = var_D4 'Integer
  loc_FC4034:   Set var_98 = (CLng(var_88))
  loc_FC403A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_FC404A:   If ( = CLng()) Then
  loc_FC404D:     GoTo loc_FC411F
  loc_FC4050:   End If
  loc_FC4067:   Set var_98 = CVar(CLng(var_88))(CVar(CLng(var_92)))
  loc_FC406D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_FC407E:   var_D0 = Trim(CVar(CStr()))
  loc_FC4088:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC40BD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC40E1:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC40FA:     Set var_98 = var_B0(0)
  loc_FC4100:     Call 0.Method_Proc_258_154_FC41340 ()
  loc_FC4108:     var_B0.SetFocus
  loc_FC4119:     Proc_258_154_FC4134 = 0
  loc_FC411F:     ' Referenced from: FC404D
  loc_FC411F:   End If
  loc_FC4122: Next var_D4 'Integer
  loc_FC412C: Proc_258_154_FC4134 = &HFF
  loc_FC4132:  = 
End Sub

Public Sub Proc_258_155_EA954C(arg_C) 'EA954C
  'Data Table: 5B2118
  Dim var_8C As Recordset15
  loc_EA94C6: IStAdFunc
  loc_EA94CD: Set var_8C = arg_C 
  loc_EA94F5: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EA9505: var_8C.CursorType = 3
  loc_EA9512: var_8C.LockType = 3
  loc_EA9531: var_8C.Open var_A0, var_B0, -1
  loc_EA9538: Set var_8C = Nothing 
  loc_EA953F: Set var_88 = arg_C 
  loc_EA9543: Proc_258_155_EA954C = -1
End Sub

Public Sub Proc_258_156_114BEF4
  'Data Table: 5B2118
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_CC As Column
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114BB6A: Set global_120 = New 
  loc_114BB7C: Me.Recordset15.CursorLocation = 3
  loc_114BB87: var_90 = global_304
  loc_114BB92: If (var_90 = "Hall") Then
  loc_114BBA0:   If (global_240 = "Y") Then
  loc_114BBC4:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_76
  loc_114BBD5:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F95044), 3
  loc_114BBE3:   Else
  loc_114BC06:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_114BC0B:   End If
  loc_114BC17:   Set var_8C = var_C8(2)
  loc_114BC1D:   Call 0.Method_Proc_258_156_114BEF40 ("Hall", 1, -1)
  loc_114BC25:   var_C8.Caption = 1
  loc_114BC41:   Set var_8C = var_CC(1)
  loc_114BC47:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69("Hall")
  loc_114BC52:   Set var_C8 = -1
  loc_114BC58:    = var_C8.Item()
  loc_114BC60:   var_CC.Caption = 
  loc_114BC77:   global_188 = "HALL"
  loc_114BC81:   global_192 = "HL"
  loc_114BC88: Else
  loc_114BC90:   If Not (var_90 = "Fast Food") Then
  loc_114BC9B:     If (var_90 = "Outlet") Then
  loc_114BC9E:     End If
  loc_114BCAA:     Set var_8C = var_C8(2)
  loc_114BCB0:     Call 0.Method_Proc_258_156_114BEF40 ("Table #")
  loc_114BCB8:     var_C8.Caption = 
  loc_114BCD4:     Set var_8C = var_CC(1)
  loc_114BCDA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69("Table #")
  loc_114BCE5:     Set var_C8 = 
  loc_114BCEB:      = var_C8.Item()
  loc_114BCF3:     var_CC.Caption = 
  loc_114BD07:     var_88 = " Order by Code"
  loc_114BD15:     If (global_240 = "Y") Then
  loc_114BD40:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB') And RestCode='" & global_76 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114BD51:       var_D8 = var_D0 & global_76 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y') "
  loc_114BD62:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F95044), 3
  loc_114BD78:     Else
  loc_114BDA7:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_76 & "' " & var_88) 'String
  loc_114BDB1:       Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_114BDC0:     End If
  loc_114BDC6:     global_188 = "REST"
  loc_114BDD0:     global_192 = "TB"
  loc_114BDD7:   Else
  loc_114BDDF:     If (var_90 = "Room Service") Then
  loc_114BDEE:       Set var_8C = var_C8(2)
  loc_114BDF4:       Call 0.Method_Proc_258_156_114BEF40 ("Room #", 1, -1)
  loc_114BDFC:       var_C8.Caption = 1
  loc_114BE18:       Set var_8C = var_CC(1)
  loc_114BE1E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69("Room #")
  loc_114BE29:       Set var_C8 = -1
  loc_114BE2F:        = var_C8.Item()
  loc_114BE37:       var_CC.Caption = 
  loc_114BE53:       If (global_240 = "Y") Then
  loc_114BE77:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_76
  loc_114BE7E:         var_A4 = CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG is Null or DELFLAG='') AND NCKOT<>'Y') Order by RC.roomno") 'String
  loc_114BE88:         Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_114BE96:       Else
  loc_114BEAD:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid  From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114BEB9:         Me.Open var_B4, CVar(MemVar_1F95044), 3
  loc_114BEBE:       End If
  loc_114BEC4:       global_192 = "RO"
  loc_114BEC8:     End If
  loc_114BEC8:   End If
  loc_114BEC8: End If
  loc_114BED1: CVarUnk
  loc_114BED6: VerifyVarObj
  loc_114BEDC: Set var_8C = 1(global_120)
  loc_114BEE2: LateIdStAd
  loc_114BEF0: Exit Sub
End Sub

Public Sub Proc_258_157_1BC3D2C(arg_C) '1BC3D2C
  'Data Table: 5B2118
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As String
  Dim var_E8 As Variant
  Dim var_BC As String
  Dim unk_5B2155 As Connection15
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Fields15
  Dim var_1C0 As Variant
  Dim var_250 As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_288 As Variant
  Dim var_FC As Variant
  Dim var_298 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Integer
  loc_1BBE71C: Set var_90 = var_94(1)
  loc_1BBE722: Call 0.Method_Proc_258_157_1BC3D2C0 (var_96)
  loc_1BBE72A:  = var_94.TabIndex
  loc_1BBE732: var_8A = var_96
  loc_1BBE740: Set var_90 = Me.TopCtrl1
  loc_1BBE746: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_8A)
  loc_1BBE75F: If (CStr() = "Add") Then
  loc_1BBE76E:   Set var_90 = var_8C(var_96)
  loc_1BBE774:   Call 0.Method_Proc_258_157_1BC3D2CC (1)
  loc_1BBE77F:   For var_B0 =  To var_96:  = var_B0 'Integer
  loc_1BBE791:     Set var_90 = var_94(var_8C)
  loc_1BBE797:     Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BBE79F:     var_94.Visible = 
  loc_1BBE7AE:   Next var_B0 'Integer
  loc_1BBE7BF:   Set var_90 = var_8C(var_96)
  loc_1BBE7C5:   Call 0.Method_Proc_258_157_1BC3D2CC (1)
  loc_1BBE7D0:   For var_B4 =  To var_96:  = var_B4 'Integer
  loc_1BBE7E2:     Set var_90 = var_94(var_8C)
  loc_1BBE7E8:     Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BBE7F0:     var_94.Visible = 
  loc_1BBE7FF:   Next var_B4 'Integer
  loc_1BBE810:   Set var_90 = var_8C(var_96)
  loc_1BBE816:   Call 0.Method_Proc_258_157_1BC3D2CC (1)
  loc_1BBE821:   For var_B8 =  To var_96:  = var_B8 'Integer
  loc_1BBE833:     Set var_90 = var_94(var_8C)
  loc_1BBE839:     Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BBE841:     var_94.Visible = 
  loc_1BBE850:   Next var_B8 'Integer
  loc_1BBE855: End If
  loc_1BBE859: Set var_90 = Me.TopCtrl1
  loc_1BBE85F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBE878: If (CStr() = "Add") Then
  loc_1BBE89F:   var_E8 = 0
  loc_1BBE8BC:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1BBE8DD:   unk_5B2155.Execute var_BC & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBE8E5:   var_90 = var_90.Fields
  loc_1BBE8ED:   var_E8 = var_94.Item(var_94)
  loc_1BBE8F5:   var_EC = var_EC.Value
  loc_1BBE910:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1BBE923:   var_1BC = 0
  loc_1BBE943:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBE953:   unk_5B2155.Execute var_180 & "'", var_1A4, -1
  loc_1BBE95B:   var_1A8 = var_1A8.Fields
  loc_1BBE963:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBE96B:   var_1C0 = var_1C0.Value
  loc_1BBE98B:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1BBE99C:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F95078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1BBE9AA:   unk_5B2155.Execute CStr(var_250), var_274, -1
  loc_1BBE9B5:   Set var_88 = var_278
  loc_1BBEA00: Else
  loc_1BBEA24:   var_E8 = 0
  loc_1BBEA41:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1BBEA62:   unk_5B2155.Execute var_BC & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBEA6A:   var_90 = var_90.Fields
  loc_1BBEA72:   var_E8 = var_94.Item(var_94)
  loc_1BBEA7A:   var_EC = var_EC.Value
  loc_1BBEA95:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1BBEAA8:   var_1BC = 0
  loc_1BBEAC8:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBEAD8:   unk_5B2155.Execute var_180 & "'", var_1A4, -1
  loc_1BBEAE0:   var_1A8 = var_1A8.Fields
  loc_1BBEAE8:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBEAF0:   var_1C0 = var_1C0.Value
  loc_1BBEB10:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_1BBEB2F:   unk_5B2155.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1BBEB3A:   Set var_88 = var_278
  loc_1BBEB82: End If
  loc_1BBEB89: Set var_90 = var_278(var_96)
  loc_1BBEB8F: Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BBEBAD: var_280 = var_88.RecordCount
  loc_1BBEBBF: If ((CLng(var_96) > var_88.RecordCount) And (var_280 > 1)) Then
  loc_1BBEBE1:   Set var_90 = var_8C(var_96)
  loc_1BBEBE7:   Call 0.Method_Proc_258_157_1BC3D2C8 (CInt((var_88.RecordCount + 1)))
  loc_1BBEBF2:   For var_284 =  To var_96:  = var_284 'Integer
  loc_1BBEC02:     Set var_90 = var_94(var_8C)
  loc_1BBEC08:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBEC19:     Me.Global.Unload var_94
  loc_1BBEC2F:     Set var_90 = var_94(var_8C)
  loc_1BBEC35:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBEC46:     Me.Global.Unload var_94
  loc_1BBEC5C:     Set var_90 = var_94(var_8C)
  loc_1BBEC62:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBEC73:     Me.Global.Unload var_94
  loc_1BBEC89:     Set var_90 = var_94(var_8C)
  loc_1BBEC8F:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBECA0:     Me.Global.Unload var_94
  loc_1BBECB6:     Set var_90 = var_94(var_8C)
  loc_1BBECBC:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBECCD:     Me.Global.Unload var_94
  loc_1BBECDC:   Next var_284 'Integer
  loc_1BBECE1: End If
  loc_1BBECE7: var_27C = var_88.RecordCount
  loc_1BBECF5: If (var_27C > 0) Then
  loc_1BBED31:   Set var_EC = var_1A8(CInt(9))
  loc_1BBED37:   Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("AppDate").Value))
  loc_1BBED3F:   var_1A8.Text = 
  loc_1BBED55:   ' Referenced from: 1BC0FC7
  loc_1BBED5B:   var_96 = var_88.EOF
  loc_1BBED64:   If Not(var_96) Then
  loc_1BBEDA3:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1BBEDD7:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBEDDD:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BBEDF7:       If ( > CVar(var_96)) Then
  loc_1BBEE2C:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBEE32:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBEE43:         Me.Global.Load var_1A8
  loc_1BBEE56:       End If
  loc_1BBEEA1:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBEEB6:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBEEBC:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("RevCode").Value))
  loc_1BBEEC4:       var_1C0.Tag = 
  loc_1BBEF13:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBEF19:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BBEF33:       If ( > CVar(var_96)) Then
  loc_1BBEF68:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBEF6E:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBEF7F:         Me.Global.Load var_1A8
  loc_1BBEF92:       End If
  loc_1BBEFCA:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBEFD0:       Call 0.Method_Proc_258_157_1BC3D2C0 ((var_8A + 1))
  loc_1BBEFD8:       var_1A8.TabIndex = 
  loc_1BBEFF1:       var_8A = (var_8A + 1)
  loc_1BBF035:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBF075:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBF07B:       Call 0.Method_Proc_258_157_1BC3D2C0 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BBF083:       var_1C0.Visible = var_8A
  loc_1BBF0E2:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBF141:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBF14A:         Set var_278 = var_288(CInt(True))
  loc_1BBF150:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BBF158:          = var_288.Height
  loc_1BBF192:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBF19B:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BBF1A1:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBF1A9:          = var_1A8.Top
  loc_1BBF1C5:         Set var_294 = var_298(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF1CB:         Call 0.Method_Proc_258_157_1BC3D2C0 (((var_27C + var_280) + CDbl(&HF)))
  loc_1BBF1D3:         var_298.Top = 
  loc_1BBF1FC:       End If
  loc_1BBF238:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBF297:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBF2A0:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BBF2A6:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBF2AE:          = var_1A8.Left
  loc_1BBF2C1:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF2C7:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBF2CF:         var_288.Left = 
  loc_1BBF2EE:       End If
  loc_1BBF2F2:       Set var_90 = Me.TopCtrl1
  loc_1BBF2F8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBF311:       If (CStr() = "Add") Then
  loc_1BBF371:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBF3BE:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBF3C4:         Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BBF3CC:         var_288.Text = 
  loc_1BBF3F4:       End If
  loc_1BBF43F:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBF454:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBF45A:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1BBF462:       var_1C0.Tag = 
  loc_1BBF4B4:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF4BA:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BBF4C2:       var_1A8.FontBold = 
  loc_1BBF50E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1BBF545:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF54B:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BBF553:         var_1A8.Enabled = 
  loc_1BBF569:       Else
  loc_1BBF59D:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF5A3:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BBF5AB:         var_1A8.Enabled = 
  loc_1BBF5BE:       End If
  loc_1BBF5C2:       Set var_90 = Me.TopCtrl1
  loc_1BBF5C8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBF5D0:       var_AC = CStr()
  loc_1BBF5E1:       If (var_AC = "Browse") Then
  loc_1BBF618:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF61E:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BBF626:         var_1A8.Enabled = 
  loc_1BBF639:       End If
  loc_1BBF675:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BBF697:         var_94 = var_88.Fields.Item("SNo")
  loc_1BBF6AC:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BBF6B2:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BBF6BA:         var_1A8.Enabled = 
  loc_1BBF6CD:       End If
  loc_1BBF6D8:       var_E8 = (global_440 = "No")
  loc_1BBF6EA:       Set var_90 = var_94(CInt(&HD))
  loc_1BBF6F0:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BBF6F8:       var_E8 = var_94.Tag
  loc_1BBF72E:       If CBool( And (Trim(CVar(var_AC)) <> vbNullString)) Then
  loc_1BBF765:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF76B:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BBF773:         var_1A8.Enabled = 
  loc_1BBF786:       End If
  loc_1BBF7B7:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBF7BD:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BBF7D7:       If ( > CVar(var_96)) Then
  loc_1BBF80C:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF812:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBF823:         Me.Global.Load var_1A8
  loc_1BBF836:       End If
  loc_1BBF86A:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF870:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BBF878:       var_1A8.Visible = 
  loc_1BBF8E7:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF8ED:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBF8F5:        = var_1A8.Top
  loc_1BBF908:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF90E:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBF916:       var_288.Top = 
  loc_1BBF971:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBF9B5:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBF9D0:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBF9D9:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF9DF:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBF9E7:          = var_1A8.Left
  loc_1BBF9FA:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBFA00:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBFA08:         var_288.Left = 
  loc_1BBFA27:       End If
  loc_1BBFA87:       Set var_1AC = var_1C0(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFA8D:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1BBFA95:       var_1C0.Caption = 
  loc_1BBFAFE:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBFB13:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBFB19:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("SundryCode").Value))
  loc_1BBFB21:       var_1C0.Tag = 
  loc_1BBFB73:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFB79:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BBFB81:       var_1A8.FontBold = 
  loc_1BBFBC5:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBFBCB:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BBFBE5:       If ( > CVar(var_96)) Then
  loc_1BBFC1A:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFC20:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BBFC31:         Me.Global.Load var_1A8
  loc_1BBFC44:       End If
  loc_1BBFC85:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBFCC5:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBFCCB:       Call 0.Method_Proc_258_157_1BC3D2C0 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BBFCD3:       var_1C0.Visible = 
  loc_1BBFD37:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBFD52:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFD58:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBFD60:        = var_1A8.Top
  loc_1BBFD73:       Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBFD79:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBFD81:       var_288.Top = 
  loc_1BBFDD4:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFDDA:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BBFDE2:       var_1A8.FontBold = 
  loc_1BBFE44:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBFE59:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBFE5F:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BBFE67:       var_1C0.Tag = 
  loc_1BBFEC1:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBFF20:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBFF29:         Set var_EC = var_1A8(CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BBFF2F:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBFF37:          = var_1A8.Left
  loc_1BBFF4A:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFF50:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BBFF58:         var_288.Left = 
  loc_1BBFF77:       End If
  loc_1BBFFA8:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBFFAE:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BBFFC8:       If ( > CVar(var_96)) Then
  loc_1BBFFFD:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0003:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC0014:         Me.Global.Load var_1A8
  loc_1BC0027:       End If
  loc_1BC005F:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0065:       Call 0.Method_Proc_258_157_1BC3D2C0 ((var_8A + 1))
  loc_1BC006D:       var_1A8.TabIndex = 
  loc_1BC0086:       var_8A = (var_8A + 1)
  loc_1BC00BD:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC00C3:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC00CB:       var_1A8.Visible = var_8A
  loc_1BC013A:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0140:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC0148:        = var_1A8.Top
  loc_1BC015B:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0161:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC0169:       var_288.Top = 
  loc_1BC01C4:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC0223:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC022C:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0232:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC023A:          = var_1A8.Left
  loc_1BC024D:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0253:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC025B:         var_288.Left = 
  loc_1BC027A:       End If
  loc_1BC027E:       Set var_90 = Me.TopCtrl1
  loc_1BC0284:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC029D:       If (CStr() = "Add") Then
  loc_1BC02FD:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC034A:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC0350:         Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BC0358:         var_288.Text = 
  loc_1BC0380:       End If
  loc_1BC03C8:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC03DD:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC03E3:       Call 0.Method_Proc_258_157_1BC3D2C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1BC03EB:       var_1C0.Tag = 
  loc_1BC043B:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0441:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC0449:       var_1A8.FontBold = 
  loc_1BC0484:       var_AC = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")))
  loc_1BC0495:       If (var_AC = "Y") Then
  loc_1BC04CC:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC04D2:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC04DA:         var_1A8.Enabled = 
  loc_1BC04F0:       Else
  loc_1BC0524:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC052A:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC0532:         var_1A8.Enabled = 
  loc_1BC0545:       End If
  loc_1BC057A:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0580:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BC0588:        = var_1A8.Tag
  loc_1BC05B1:       If (var_AC = MemVar_1F95078 & "ROFF") Then
  loc_1BC05E8:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC05EE:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC05F6:         var_1A8.Enabled = 
  loc_1BC0609:       End If
  loc_1BC063E:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0644:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BC064C:        = var_1A8.Tag
  loc_1BC0675:       If (var_AC = MemVar_1F95078 & "NET") Then
  loc_1BC06AF:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC06B5:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(350))
  loc_1BC06BD:         var_1A8.Height = 
  loc_1BC0711:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC072C:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0732:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC073A:          = var_1A8.Width
  loc_1BC0753:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC0759:         Call 0.Method_Proc_258_157_1BC3D2C0 ((var_27C + CDbl(375)))
  loc_1BC0761:         var_288.Width = 
  loc_1BC079A:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC07B6:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC07BC:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(&HE))
  loc_1BC07C4:         var_1A8.FontSize = 
  loc_1BC07F1:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC080C:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC0812:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC081A:          = var_1C0.Left
  loc_1BC082B:         Set var_90 = var_94(1)
  loc_1BC0831:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC0839:          = var_94.Left
  loc_1BC0857:         If (var_27C = var_280) Then
  loc_1BC0874:           var_94 = var_88.Fields.Item("SNo")
  loc_1BC089B:           var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC08B6:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC08BC:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC08C4:            = var_1A8.Left
  loc_1BC08DD:           Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC08E3:           Call 0.Method_Proc_258_157_1BC3D2C0 ((var_27C - CDbl(400)))
  loc_1BC08EB:           var_288.Left = 
  loc_1BC090A:         End If
  loc_1BC0924:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC093F:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC0945:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC094D:          = var_1C0.Width
  loc_1BC095E:         Set var_90 = var_94(1)
  loc_1BC0964:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC096C:          = var_94.Width
  loc_1BC098A:         If (var_27C = var_280) Then
  loc_1BC09A7:           var_94 = var_88.Fields.Item("SNo")
  loc_1BC09E9:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC09EF:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC09F7:            = var_1A8.Width
  loc_1BC0A10:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0A16:           Call 0.Method_Proc_258_157_1BC3D2C0 ((var_27C + CDbl(400)))
  loc_1BC0A1E:           var_288.Width = 
  loc_1BC0A3D:         End If
  loc_1BC0A49:         Set var_EC = var_1A8(1)
  loc_1BC0A4F:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC0A57:          = var_1A8.Height
  loc_1BC0A91:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0A97:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_29C)
  loc_1BC0A9F:          = var_288.Top
  loc_1BC0AB0:         Set var_90 = var_94(1)
  loc_1BC0AB6:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC0ABE:          = var_94.Top
  loc_1BC0AE9:         If (CSng((var_27C + (var_280 * CDbl(8)))) > var_29C) Then
  loc_1BC0AF8:           Set var_EC = var_1A8(1)
  loc_1BC0AFE:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC0B06:            = var_1A8.Height
  loc_1BC0B3E:           Set var_90 = var_94(1)
  loc_1BC0B44:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC0B4C:            = var_94.Top
  loc_1BC0B6D:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0B73:           Call 0.Method_Proc_258_157_1BC3D2C0 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BC0B7B:           var_288.Top = 
  loc_1BC0BA2:           Set var_EC = var_1A8(1)
  loc_1BC0BA8:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC0BB0:            = var_1A8.Height
  loc_1BC0BC7:           var_1AC = var_88.Fields
  loc_1BC0BE8:           Set var_90 = var_94(1)
  loc_1BC0BEE:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC0BF6:            = var_94.Top
  loc_1BC0C17:           Set var_278 = var_288(CInt(var_1AC.Item("SNo").Value))
  loc_1BC0C1D:           Call 0.Method_Proc_258_157_1BC3D2C0 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BC0C25:           var_288.Top = 
  loc_1BC0C40:         End If
  loc_1BC0C77:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0C7D:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(350))
  loc_1BC0C85:         var_1A8.Height = 
  loc_1BC0CCE:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0CD4:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(&HE))
  loc_1BC0CDC:         var_1A8.FontSize = 
  loc_1BC0D26:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0D2C:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF00)
  loc_1BC0D34:         var_1A8.BackColor = 
  loc_1BC0D7E:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0D84:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC0D8C:         var_1A8.ForeColor = 
  loc_1BC0DD6:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0DDC:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFFFF)
  loc_1BC0DE4:         var_1A8.BackColor = 
  loc_1BC0DF7:       End If
  loc_1BC0DFB:       Set var_90 = Me.TopCtrl1
  loc_1BC0E01:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC0E09:       var_AC = CStr()
  loc_1BC0E1A:       If (var_AC = "Browse") Then
  loc_1BC0E51:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0E57:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC0E5F:         var_1A8.Enabled = 
  loc_1BC0E72:       End If
  loc_1BC0EAE:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BC0ED0:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC0EE5:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC0EEB:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC0EF3:         var_1A8.Enabled = 
  loc_1BC0F06:       End If
  loc_1BC0F11:       var_E8 = (global_440 = "No")
  loc_1BC0F23:       Set var_90 = var_94(CInt(&HD))
  loc_1BC0F29:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BC0F31:       var_E8 = var_94.Tag
  loc_1BC0F3F:       var_FC = Trim(CVar(var_AC))
  loc_1BC0F67:       If CBool( And (var_FC <> vbNullString)) Then
  loc_1BC0F89:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC0F91:         var_A8 = var_94.Value
  loc_1BC0F9E:         Set var_EC = var_1A8(CInt(var_A8))
  loc_1BC0FA4:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC0FAC:         var_1A8.Enabled = 
  loc_1BC0FBF:       End If
  loc_1BC0FBF:     End If
  loc_1BC0FC2:     var_88.MoveNext
  loc_1BC0FC7:     GoTo loc_1BBED55
  loc_1BC0FCA:   End If
  loc_1BC0FCA: End If
  loc_1BC0FCE: Set var_90 = Me.TopCtrl1
  loc_1BC0FD4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC0FED: If (CStr() = "Add") Then
  loc_1BC1014:   var_E8 = 0
  loc_1BC1031:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1BC1052:   unk_5B2155.Execute MemVar_1F95078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BC105A:   var_90 = var_90.Fields
  loc_1BC1062:   var_E8 = var_94.Item(var_94)
  loc_1BC106A:   var_EC = var_EC.Value
  loc_1BC1085:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1BC1098:   var_1BC = 0
  loc_1BC10B8:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BC10C8:   unk_5B2155.Execute var_180 & "'", var_1A4, -1
  loc_1BC10D0:   var_1A8 = var_1A8.Fields
  loc_1BC10D8:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BC10E0:   var_1C0 = var_1C0.Value
  loc_1BC1100:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1BC1111:   var_250 = CVar("Select * From SundryType WHERE AutoManual<>'A' And logsite_code='" & MemVar_1F95078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1BC111F:   unk_5B2155.Execute CStr(var_250), var_274, -1
  loc_1BC112A:   Set var_88 = var_278
  loc_1BC1175: Else
  loc_1BC1199:   var_E8 = 0
  loc_1BC11B6:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1BC11D7:   unk_5B2155.Execute MemVar_1F95078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BC11DF:   var_90 = var_90.Fields
  loc_1BC11E7:   var_E8 = var_94.Item(var_94)
  loc_1BC11EF:   var_EC = var_EC.Value
  loc_1BC120A:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1BC121D:   var_1BC = 0
  loc_1BC123D:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BC124D:   unk_5B2155.Execute var_180 & "'", var_1A4, -1
  loc_1BC1255:   var_1A8 = var_1A8.Fields
  loc_1BC125D:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BC1265:   var_1C0 = var_1C0.Value
  loc_1BC1285:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE AutoManual<>'A' And LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_1BC12A4:   unk_5B2155.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1BC12AF:   Set var_88 = var_278
  loc_1BC12F7: End If
  loc_1BC130B: If (var_88.RecordCount > 0) Then
  loc_1BC1327:   ReDim global_404(0 To var_88.RecordCount)
  loc_1BC134A:   ReDim global_408(0 To var_88.RecordCount)
  loc_1BC1356:   var_8C = 1
  loc_1BC1359:   ' Referenced from: 1BC13FA
  loc_1BC135F:   var_96 = var_88.EOF
  loc_1BC1368:   If Not(var_96) Then
  loc_1BC13A0:     global_404(CLng(var_8C)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("SundryCode")), var_8C)
  loc_1BC13C1:     var_94 = var_88.Fields.Item("PerOrAmt")
  loc_1BC13C9:     var_A8 = CVar(var_94) 'Address
  loc_1BC13DF:     global_408(CLng(var_8C)) = Proc_6_38_E69628(var_A8)
  loc_1BC13EF:     var_8C = (var_8C + 1)
  loc_1BC13F5:     var_88.MoveNext
  loc_1BC13FA:     GoTo loc_1BC1359
  loc_1BC13FD:   End If
  loc_1BC13FD:   GoTo loc_1BC1400
  loc_1BC1400:   ' Referenced from: 1BC13FD
  loc_1BC1400: End If
  loc_1BC1404: Set var_90 = Me.TopCtrl1
  loc_1BC140A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_8C)
  loc_1BC1423: If (CStr(var_278) = "Add") Then
  loc_1BC1432:   Set var_90 = var_8C(var_96)
  loc_1BC1438:   Call 0.Method_Proc_258_157_1BC3D2CC (1)
  loc_1BC1443:   For var_2A0 =  To var_96:  = var_2A0 'Integer
  loc_1BC1455:     Set var_90 = var_94(var_8C)
  loc_1BC145B:     Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC1463:     var_94.Visible = 
  loc_1BC1472:   Next var_2A0 'Integer
  loc_1BC1483:   Set var_90 = var_8C(var_96)
  loc_1BC1489:   Call 0.Method_Proc_258_157_1BC3D2CC (1)
  loc_1BC1494:   For var_2A4 =  To var_96:  = var_2A4 'Integer
  loc_1BC14A6:     Set var_90 = var_94(var_8C)
  loc_1BC14AC:     Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC14B4:     var_94.Visible = 
  loc_1BC14C3:   Next var_2A4 'Integer
  loc_1BC14D4:   Set var_90 = var_8C(var_96)
  loc_1BC14DA:   Call 0.Method_Proc_258_157_1BC3D2CC (1)
  loc_1BC14E5:   For var_2A8 =  To var_96:  = var_2A8 'Integer
  loc_1BC14F7:     Set var_90 = var_94(var_8C)
  loc_1BC14FD:     Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC1505:     var_94.Visible = 
  loc_1BC1514:   Next var_2A8 'Integer
  loc_1BC1519: End If
  loc_1BC151D: Set var_90 = Me.TopCtrl1
  loc_1BC1523: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC153C: If (CStr() = "Add") Then
  loc_1BC1563:   var_E8 = 0
  loc_1BC1580:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1BC15A1:   unk_5B2155.Execute MemVar_1F95078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BC15A9:   var_90 = var_90.Fields
  loc_1BC15B1:   var_E8 = var_94.Item(var_94)
  loc_1BC15B9:   var_EC = var_EC.Value
  loc_1BC15D4:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1BC15E7:   var_1BC = 0
  loc_1BC1607:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BC1617:   unk_5B2155.Execute var_180 & "'", var_1A4, -1
  loc_1BC161F:   var_1A8 = var_1A8.Fields
  loc_1BC1627:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BC162F:   var_1C0 = var_1C0.Value
  loc_1BC164F:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1BC1660:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F95078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1BC166E:   unk_5B2155.Execute CStr(var_250), var_274, -1
  loc_1BC1679:   Set var_88 = var_278
  loc_1BC16C4: Else
  loc_1BC16E8:   var_E8 = 0
  loc_1BC1705:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1BC1726:   unk_5B2155.Execute MemVar_1F95078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BC172E:   var_90 = var_90.Fields
  loc_1BC1736:   var_E8 = var_94.Item(var_94)
  loc_1BC173E:   var_EC = var_EC.Value
  loc_1BC1759:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1BC176C:   var_1BC = 0
  loc_1BC178C:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BC179C:   unk_5B2155.Execute var_180 & "'", var_1A4, -1
  loc_1BC17A4:   var_1A8 = var_1A8.Fields
  loc_1BC17AC:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BC17B4:   var_1C0 = var_1C0.Value
  loc_1BC17D4:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_1BC17F3:   unk_5B2155.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1BC17FE:   Set var_88 = var_278
  loc_1BC1846: End If
  loc_1BC184D: Set var_90 = var_278(var_96)
  loc_1BC1853: Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BC1871: var_280 = var_88.RecordCount
  loc_1BC1883: If ((CLng(var_96) > var_88.RecordCount) And (var_280 > 1)) Then
  loc_1BC18A5:   Set var_90 = var_8C(var_96)
  loc_1BC18AB:   Call 0.Method_Proc_258_157_1BC3D2C8 (CInt((var_88.RecordCount + 1)))
  loc_1BC18B6:   For var_2AC =  To var_96:  = var_2AC 'Integer
  loc_1BC18C6:     Set var_90 = var_94(var_8C)
  loc_1BC18CC:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC18DD:     Me.Global.Unload var_94
  loc_1BC18F3:     Set var_90 = var_94(var_8C)
  loc_1BC18F9:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC190A:     Me.Global.Unload var_94
  loc_1BC1920:     Set var_90 = var_94(var_8C)
  loc_1BC1926:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC1937:     Me.Global.Unload var_94
  loc_1BC194D:     Set var_90 = var_94(var_8C)
  loc_1BC1953:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC1964:     Me.Global.Unload var_94
  loc_1BC197A:     Set var_90 = var_94(var_8C)
  loc_1BC1980:     Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC1991:     Me.Global.Unload var_94
  loc_1BC19A0:   Next var_2AC 'Integer
  loc_1BC19A5: End If
  loc_1BC19AB: var_27C = var_88.RecordCount
  loc_1BC19B9: If (var_27C > 0) Then
  loc_1BC19F5:   Set var_EC = var_1A8(CInt(9))
  loc_1BC19FB:   Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("AppDate").Value))
  loc_1BC1A03:   var_1A8.Text = 
  loc_1BC1A19:   ' Referenced from: 1BC3C8B
  loc_1BC1A1F:   var_96 = var_88.EOF
  loc_1BC1A28:   If Not(var_96) Then
  loc_1BC1A67:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1BC1A9B:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BC1AA1:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BC1ABB:       If ( > CVar(var_96)) Then
  loc_1BC1AF0:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC1AF6:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC1B07:         Me.Global.Load var_1A8
  loc_1BC1B1A:       End If
  loc_1BC1B65:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC1B7A:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC1B80:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("RevCode").Value))
  loc_1BC1B88:       var_1C0.Tag = 
  loc_1BC1BD7:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BC1BDD:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BC1BF7:       If ( > CVar(var_96)) Then
  loc_1BC1C2C:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC1C32:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC1C43:         Me.Global.Load var_1A8
  loc_1BC1C56:       End If
  loc_1BC1C8E:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC1C94:       Call 0.Method_Proc_258_157_1BC3D2C0 ((var_8A + 1))
  loc_1BC1C9C:       var_1A8.TabIndex = 
  loc_1BC1CB5:       var_8A = (var_8A + 1)
  loc_1BC1CF9:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC1D39:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC1D3F:       Call 0.Method_Proc_258_157_1BC3D2C0 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BC1D47:       var_1C0.Visible = var_8A
  loc_1BC1DA6:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC1E05:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC1E0E:         Set var_278 = var_288(CInt(True))
  loc_1BC1E14:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC1E1C:          = var_288.Height
  loc_1BC1E56:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC1E5F:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BC1E65:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC1E6D:          = var_1A8.Top
  loc_1BC1E89:         Set var_294 = var_298(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC1E8F:         Call 0.Method_Proc_258_157_1BC3D2C0 (((var_27C + var_280) + CDbl(&HF)))
  loc_1BC1E97:         var_298.Top = 
  loc_1BC1EC0:       End If
  loc_1BC1EFC:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC1F5B:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC1F64:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BC1F6A:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC1F72:          = var_1A8.Left
  loc_1BC1F85:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC1F8B:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC1F93:         var_288.Left = 
  loc_1BC1FB2:       End If
  loc_1BC1FB6:       Set var_90 = Me.TopCtrl1
  loc_1BC1FBC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC1FD5:       If (CStr() = "Add") Then
  loc_1BC2035:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC2082:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC2088:         Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BC2090:         var_288.Text = 
  loc_1BC20B8:       End If
  loc_1BC2103:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC2118:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC211E:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1BC2126:       var_1C0.Tag = 
  loc_1BC2178:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC217E:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC2186:       var_1A8.FontBold = 
  loc_1BC21D2:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1BC2209:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC220F:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC2217:         var_1A8.Enabled = 
  loc_1BC222D:       Else
  loc_1BC2261:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2267:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC226F:         var_1A8.Enabled = 
  loc_1BC2282:       End If
  loc_1BC2286:       Set var_90 = Me.TopCtrl1
  loc_1BC228C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC2294:       var_AC = CStr()
  loc_1BC22A5:       If (var_AC = "Browse") Then
  loc_1BC22DC:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC22E2:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC22EA:         var_1A8.Enabled = 
  loc_1BC22FD:       End If
  loc_1BC2339:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BC235B:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC2370:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC2376:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC237E:         var_1A8.Enabled = 
  loc_1BC2391:       End If
  loc_1BC239C:       var_E8 = (global_440 = "No")
  loc_1BC23AE:       Set var_90 = var_94(CInt(&HD))
  loc_1BC23B4:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BC23BC:       var_E8 = var_94.Tag
  loc_1BC23F2:       If CBool( And (Trim(CVar(var_AC)) <> vbNullString)) Then
  loc_1BC2429:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC242F:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC2437:         var_1A8.Enabled = 
  loc_1BC244A:       End If
  loc_1BC247B:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BC2481:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BC249B:       If ( > CVar(var_96)) Then
  loc_1BC24D0:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC24D6:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC24E7:         Me.Global.Load var_1A8
  loc_1BC24FA:       End If
  loc_1BC252E:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2534:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC253C:       var_1A8.Visible = 
  loc_1BC25AB:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC25B1:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC25B9:        = var_1A8.Top
  loc_1BC25CC:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC25D2:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC25DA:       var_288.Top = 
  loc_1BC2635:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC2679:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC2694:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC269D:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC26A3:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC26AB:          = var_1A8.Left
  loc_1BC26BE:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC26C4:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC26CC:         var_288.Left = 
  loc_1BC26EB:       End If
  loc_1BC274B:       Set var_1AC = var_1C0(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2751:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1BC2759:       var_1C0.Caption = 
  loc_1BC27C2:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC27D7:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC27DD:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(var_88.Fields.Item("SundryCode").Value))
  loc_1BC27E5:       var_1C0.Tag = 
  loc_1BC2837:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC283D:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC2845:       var_1A8.FontBold = 
  loc_1BC2889:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BC288F:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BC28A9:       If ( > CVar(var_96)) Then
  loc_1BC28DE:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC28E4:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC28F5:         Me.Global.Load var_1A8
  loc_1BC2908:       End If
  loc_1BC2949:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC2989:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC298F:       Call 0.Method_Proc_258_157_1BC3D2C0 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BC2997:       var_1C0.Visible = 
  loc_1BC29FB:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC2A16:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2A1C:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2A24:        = var_1A8.Top
  loc_1BC2A37:       Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC2A3D:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2A45:       var_288.Top = 
  loc_1BC2A98:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2A9E:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC2AA6:       var_1A8.FontBold = 
  loc_1BC2B08:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC2B1D:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC2B23:       Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BC2B2B:       var_1C0.Tag = 
  loc_1BC2B85:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC2BE4:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC2BED:         Set var_EC = var_1A8(CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BC2BF3:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2BFB:          = var_1A8.Left
  loc_1BC2C0E:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2C14:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2C1C:         var_288.Left = 
  loc_1BC2C3B:       End If
  loc_1BC2C6C:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BC2C72:       Call 0.Method_Proc_258_157_1BC3D2C8 ()
  loc_1BC2C8C:       If ( > CVar(var_96)) Then
  loc_1BC2CC1:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2CC7:         Call 0.Method_Proc_258_157_1BC3D2C0 ()
  loc_1BC2CD8:         Me.Global.Load var_1A8
  loc_1BC2CEB:       End If
  loc_1BC2D23:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2D29:       Call 0.Method_Proc_258_157_1BC3D2C0 ((var_8A + 1))
  loc_1BC2D31:       var_1A8.TabIndex = 
  loc_1BC2D4A:       var_8A = (var_8A + 1)
  loc_1BC2D81:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2D87:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC2D8F:       var_1A8.Visible = var_8A
  loc_1BC2DFE:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2E04:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2E0C:        = var_1A8.Top
  loc_1BC2E1F:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2E25:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2E2D:       var_288.Top = 
  loc_1BC2E88:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC2EE7:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC2EF0:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2EF6:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2EFE:          = var_1A8.Left
  loc_1BC2F11:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC2F17:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC2F1F:         var_288.Left = 
  loc_1BC2F3E:       End If
  loc_1BC2F42:       Set var_90 = Me.TopCtrl1
  loc_1BC2F48:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC2F61:       If (CStr() = "Add") Then
  loc_1BC2FC1:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC300E:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC3014:         Call 0.Method_Proc_258_157_1BC3D2C0 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BC301C:         var_288.Text = 
  loc_1BC3044:       End If
  loc_1BC308C:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC30A1:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC30A7:       Call 0.Method_Proc_258_157_1BC3D2C0 (Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1BC30AF:       var_1C0.Tag = 
  loc_1BC30FF:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3105:       Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC310D:       var_1A8.FontBold = 
  loc_1BC3148:       var_AC = Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP")))
  loc_1BC3159:       If (var_AC = "Y") Then
  loc_1BC3190:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3196:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC319E:         var_1A8.Enabled = 
  loc_1BC31B4:       Else
  loc_1BC31E8:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC31EE:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC31F6:         var_1A8.Enabled = 
  loc_1BC3209:       End If
  loc_1BC323E:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3244:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BC324C:        = var_1A8.Tag
  loc_1BC3275:       If (var_AC = MemVar_1F95078 & "ROFF") Then
  loc_1BC32AC:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC32B2:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC32BA:         var_1A8.Enabled = 
  loc_1BC32CD:       End If
  loc_1BC3302:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3308:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BC3310:        = var_1A8.Tag
  loc_1BC3339:       If (var_AC = MemVar_1F95078 & "NET") Then
  loc_1BC3373:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3379:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(350))
  loc_1BC3381:         var_1A8.Height = 
  loc_1BC33D5:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC33F0:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC33F6:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC33FE:          = var_1A8.Width
  loc_1BC3417:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC341D:         Call 0.Method_Proc_258_157_1BC3D2C0 ((var_27C + CDbl(375)))
  loc_1BC3425:         var_288.Width = 
  loc_1BC345E:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC347A:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC3480:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(&HE))
  loc_1BC3488:         var_1A8.FontSize = 
  loc_1BC34B5:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC34D0:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC34D6:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC34DE:          = var_1C0.Left
  loc_1BC34EF:         Set var_90 = var_94(1)
  loc_1BC34F5:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC34FD:          = var_94.Left
  loc_1BC351B:         If (var_27C = var_280) Then
  loc_1BC3538:           var_94 = var_88.Fields.Item("SNo")
  loc_1BC355F:           var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC357A:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC3580:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC3588:            = var_1A8.Left
  loc_1BC35A1:           Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC35A7:           Call 0.Method_Proc_258_157_1BC3D2C0 ((var_27C - CDbl(400)))
  loc_1BC35AF:           var_288.Left = 
  loc_1BC35CE:         End If
  loc_1BC35E8:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC3603:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC3609:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC3611:          = var_1C0.Width
  loc_1BC3622:         Set var_90 = var_94(1)
  loc_1BC3628:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC3630:          = var_94.Width
  loc_1BC364E:         If (var_27C = var_280) Then
  loc_1BC366B:           var_94 = var_88.Fields.Item("SNo")
  loc_1BC36AD:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC36B3:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC36BB:            = var_1A8.Width
  loc_1BC36D4:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC36DA:           Call 0.Method_Proc_258_157_1BC3D2C0 ((var_27C + CDbl(400)))
  loc_1BC36E2:           var_288.Width = 
  loc_1BC3701:         End If
  loc_1BC370D:         Set var_EC = var_1A8(1)
  loc_1BC3713:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC371B:          = var_1A8.Height
  loc_1BC3755:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC375B:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_29C)
  loc_1BC3763:          = var_288.Top
  loc_1BC3774:         Set var_90 = var_94(1)
  loc_1BC377A:         Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC3782:          = var_94.Top
  loc_1BC37AD:         If (CSng((var_27C + (var_280 * CDbl(8)))) > var_29C) Then
  loc_1BC37BC:           Set var_EC = var_1A8(1)
  loc_1BC37C2:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC37CA:            = var_1A8.Height
  loc_1BC3802:           Set var_90 = var_94(1)
  loc_1BC3808:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC3810:            = var_94.Top
  loc_1BC3831:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3837:           Call 0.Method_Proc_258_157_1BC3D2C0 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BC383F:           var_288.Top = 
  loc_1BC3866:           Set var_EC = var_1A8(1)
  loc_1BC386C:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_280)
  loc_1BC3874:            = var_1A8.Height
  loc_1BC38AC:           Set var_90 = var_94(1)
  loc_1BC38B2:           Call 0.Method_Proc_258_157_1BC3D2C0 (var_27C)
  loc_1BC38BA:            = var_94.Top
  loc_1BC38DB:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC38E1:           Call 0.Method_Proc_258_157_1BC3D2C0 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BC38E9:           var_288.Top = 
  loc_1BC3904:         End If
  loc_1BC393B:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3941:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(350))
  loc_1BC3949:         var_1A8.Height = 
  loc_1BC3992:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3998:         Call 0.Method_Proc_258_157_1BC3D2C0 (CDbl(&HE))
  loc_1BC39A0:         var_1A8.FontSize = 
  loc_1BC39EA:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC39F0:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF00)
  loc_1BC39F8:         var_1A8.BackColor = 
  loc_1BC3A42:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3A48:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFF)
  loc_1BC3A50:         var_1A8.ForeColor = 
  loc_1BC3A9A:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3AA0:         Call 0.Method_Proc_258_157_1BC3D2C0 (&HFFFF)
  loc_1BC3AA8:         var_1A8.BackColor = 
  loc_1BC3ABB:       End If
  loc_1BC3ABF:       Set var_90 = Me.TopCtrl1
  loc_1BC3AC5:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC3ACD:       var_AC = CStr()
  loc_1BC3ADE:       If (var_AC = "Browse") Then
  loc_1BC3B15:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC3B1B:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC3B23:         var_1A8.Enabled = 
  loc_1BC3B36:       End If
  loc_1BC3B72:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BC3B94:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC3BA9:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC3BAF:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC3BB7:         var_1A8.Enabled = 
  loc_1BC3BCA:       End If
  loc_1BC3BD5:       var_E8 = (global_440 = "No")
  loc_1BC3BE7:       Set var_90 = var_94(CInt(&HD))
  loc_1BC3BED:       Call 0.Method_Proc_258_157_1BC3D2C0 (var_AC)
  loc_1BC3BF5:       var_E8 = var_94.Tag
  loc_1BC3C2B:       If CBool( And (Trim(CVar(var_AC)) <> vbNullString)) Then
  loc_1BC3C4D:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC3C62:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC3C68:         Call 0.Method_Proc_258_157_1BC3D2C0 (0)
  loc_1BC3C70:         var_1A8.Enabled = 
  loc_1BC3C83:       End If
  loc_1BC3C83:     End If
  loc_1BC3C86:     var_88.MoveNext
  loc_1BC3C8B:     GoTo loc_1BC1A19
  loc_1BC3C8E:   End If
  loc_1BC3C8E: End If
  loc_1BC3C9F: Set var_90 = var_94(CInt(6))
  loc_1BC3CA5: Call 0.Method_Proc_258_157_1BC3D2C0 ((var_8A + 1))
  loc_1BC3CAD: var_94.TabIndex = 
  loc_1BC3CCA: Set var_90 = var_94(CInt(7))
  loc_1BC3CD0: Call 0.Method_Proc_258_157_1BC3D2C0 ((var_8A + 2))
  loc_1BC3CD8: var_94.TabIndex = 
  loc_1BC3CF5: Set var_90 = var_94(CInt(8))
  loc_1BC3CFB: Call 0.Method_Proc_258_157_1BC3D2C0 ((var_8A + 3))
  loc_1BC3D03: var_94.TabIndex = 
  loc_1BC3D15: var_D8 = CVar((var_8A + 3)) 'Integer
  loc_1BC3D1D: Set var_90 = ("SNo")
  loc_1BC3D23: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000F()
  loc_1BC3D2B: Exit Sub
End Sub

Public Sub Proc_258_158_19037C8(arg_C) '19037C8
  'Data Table: 5B2118
  Dim var_E4 As String
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_14C As Variant
  Dim var_190 As String
  Dim unk_5B2155 As Connection15
  Dim var_1B4 As Variant
  Dim var_1B8 As Variant
  Dim var_1CC As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_EC As String
  Dim var_2CC As Double
  Dim var_2D4 As Double
  Dim var_2DC As Double
  Dim var_264 As Variant
  Dim var_328 As Double
  Dim var_1B0 As Variant
  Dim var_10C As Variant
  Dim var_B0 As Double
  Dim var_BC As Double
  Dim var_38C As Double
  Dim var_1DC As Variant
  Dim var_398 As Double
  Dim var_88 As Recordset15
  Dim var_D8 As Fields15
  Dim var_36C As Label
  loc_1900CE0: On Error Goto loc_19037BF
  loc_1900CE9: global_368 = CDbl(0)
  loc_1900CF8: Set var_D8 = var_B2(var_DA)
  loc_1900CFE: Call 0.Method_Proc_258_158_19037C88 (1)
  loc_1900D09: For var_DE =  To var_DA: global_368 = var_DE 'Integer
  loc_1900D32:   var_E4 = "Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1900D49:   Set var_D8 = var_E8(var_B2)
  loc_1900D4F:   Call 0.Method_Proc_258_158_19037C80 (var_EC, CVar(var_E4 & "' AND SundryCode='"), var_1B0, -1, var_1B4)
  loc_1900D57:   var_1B8 = var_E8.Tag
  loc_1900D9A:   unk_5B2155.Execute CStr(0 & Trim(CVar(var_EC)) & "' And V_Type='" & CVar(global_184) & "'"), var_1CC, var_1DC
  loc_1900DA2:    = var_1B4.Fields
  loc_1900DAA:    = var_1B8.Item()
  loc_1900DB2:    = var_1CC.Value
  loc_1900DBF:   var_D0 = Proc_6_38_E69628(var_1DC)
  loc_1900DF3:   If (var_D0 = "Addition") Then
  loc_1900E03:     Set var_D8 = var_E8(var_B2)
  loc_1900E09:     Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1900E11:      = var_E8.Text
  loc_1900E30:     Set var_1B4 = var_1B8(var_B2)
  loc_1900E36:     Call 0.Method_Proc_258_158_19037C80 (var_EC)
  loc_1900E3E:     (CDbl(Val(var_E4)) > CDbl(0)) = var_1B8.Text
  loc_1900E63:     If ( And (CDbl(Val(var_EC)) <= CDbl(0))) Then
  loc_1900E73:       Set var_D8 = var_E8(var_B2)
  loc_1900E79:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1900E81:        = var_E8.Text
  loc_1900E8E:       var_90 = Val(var_E4)
  loc_1900E9B:     End If
  loc_1900E9E:   Else
  loc_1900EA6:     If (var_D0 = "Advance") Then
  loc_1900EB6:       Set var_D8 = var_E8(var_B2)
  loc_1900EBC:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1900EC4:       var_90 = var_E8.Text
  loc_1900ED1:       var_98 = Val(var_E4)
  loc_1900EE1:     Else
  loc_1900EE9:       If (var_D0 = "Redemption") Then
  loc_1900EF9:         Set var_D8 = var_E8(var_B2)
  loc_1900EFF:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1900F07:         var_98 = var_E8.Text
  loc_1900F14:         var_A0 = Val(var_E4)
  loc_1900F24:       Else
  loc_1900F2C:         If (var_D0 = "Deduction") Then
  loc_1900F3C:           Set var_D8 = var_E8(var_B2)
  loc_1900F42:           Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1900F4A:           var_A0 = var_E8.Text
  loc_1900F57:           var_A8 = Val(var_E4)
  loc_1900F67:         Else
  loc_1900F6F:           If (var_D0 = "Discount") Then
  loc_1900F77:             var_BE = CByte(var_B2) 'Byte
  loc_1900F7E:           Else
  loc_1900F86:             If (var_D0 = "Service Charge") Then
  loc_1900F8E:               var_CA = CByte(var_B2) 'Byte
  loc_1900F95:             Else
  loc_1900FB8:               If ((((var_D0 = "Sale Tax") Or (var_D0 = "CGST")) Or (var_D0 = "SGST")) Or (var_D0 = "IGST")) Then
  loc_1900FC0:                 var_C0 = CByte(var_B2) 'Byte
  loc_1900FCA:                 global_144 = var_B2
  loc_1900FCD:               End If
  loc_1900FCD:             End If
  loc_1900FCD:           End If
  loc_1900FCD:         End If
  loc_1900FCD:       End If
  loc_1900FCD:     End If
  loc_1900FCD:   End If
  loc_1900FDA:   Set var_D8 = var_E8(var_B2)
  loc_1900FE0:   Call 0.Method_Proc_258_158_19037C80 (vbNullString, global_144)
  loc_1900FE8:   var_E8.Text = var_A8
  loc_1900FF7: Next var_DE 'Integer
  loc_1901009: Set var_D8 = (1)
  loc_190100F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_190101B: Set var_D8 = Me.TopCtrl1
  loc_1901021: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1901029: var_E4 = CStr()
  loc_1901035: Set var_E8 = Me.TopCtrl1
  loc_190103B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((var_E4 = "Add"))
  loc_1901061: If ( Or (CStr() = "Edit")) Then
  loc_1901064:   Call Proc_258_163_13182FC()
  loc_1901069: End If
  loc_1901075: Set var_D8 = var_B2(var_DA)
  loc_190107B: Call 0.Method_Proc_258_158_19037C88 (2)
  loc_1901086: For var_1E0 =  To var_DA:  = var_1E0 'Integer
  loc_1901099:   Set var_D8 = var_E8(var_B2)
  loc_190109F:   Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19010A7:    = var_E8.Tag
  loc_19010DA:   If (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_19010EA:     Set var_D8 = var_E8(var_B2)
  loc_19010F0:     Call 0.Method_Proc_258_158_19037C80 (vbNullString)
  loc_19010F8:     var_E8.Text = 
  loc_190110E:     If (var_C0 > var_BE) Then
  loc_190111A:       Set var_D8 = 1(var_B4)
  loc_1901120:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1901136:       For var_1E4 =  To CInt((CLng() - 1)):  = var_1E4 'Integer
  loc_1901149:         Set var_D8 = var_E8(var_B2)
  loc_190114F:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901157:          = var_E8.Tag
  loc_190118A:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_190118D:         End If
  loc_1901197:         If (var_CA < var_C0) Then
  loc_19011A4:           If (var_BE < var_CA) Then
  loc_19011BC:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_19011C2:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_19011D5:             var_2CC = Val(CStr())
  loc_19011ED:             Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_19011F3:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1901206:             var_2D4 = Val(CStr())
  loc_190121E:             Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_1901224:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_1901237:             var_2DC = Val(CStr())
  loc_190128D:             LateIdCallSt
  loc_19012CF:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_19012D5:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar((((var_2CC * var_2D4) * var_2DC) / CDbl(&H64))), "0.00")))))
  loc_19012F1:             If (CStr(1) = "Y") Then
  loc_1901309:               Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_190130F:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_1901322:               var_2CC = Val(CStr(CVar(CLng(var_B4))))
  loc_190133A:               Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_1901340:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1901353:               var_2D4 = Val(CStr(var_2DC))
  loc_1901367:               global_368 = (global_368 + (var_2CC * var_2D4))
  loc_190137F:             End If
  loc_1901382:           Else
  loc_1901397:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_190139D:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(global_368)
  loc_19013B0:             var_2CC = Val(CStr(var_2D4))
  loc_19013C8:             Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_19013CE:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_19013E1:             var_2D4 = Val(CStr())
  loc_19013F9:             Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&H1D)))
  loc_19013FF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_1901412:             var_2DC = Val(CStr())
  loc_190142A:             Set var_1B8 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_1901430:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1901443:             var_328 = Val(CStr())
  loc_190147F:             var_14C = CVar(((((var_2CC * var_2D4) + var_2DC) * var_328) / CDbl(&H64))) 'Double
  loc_1901497:             Set var_1CC = 1(CVar(CStr(Format("0.00", "0.00"))))
  loc_190149D:             LateIdCallSt
  loc_19014E5:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_19014EB:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1CC)
  loc_1901507:             If (CStr(1) = "Y") Then
  loc_190151F:               Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_1901525:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_1901538:               var_2CC = Val(CStr(CVar(CLng(var_B4))))
  loc_1901550:               Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_1901556:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1901569:               var_2D4 = Val(CStr(var_328))
  loc_1901581:               Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&H1D)))
  loc_1901587:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_190159A:               var_2DC = Val(CStr())
  loc_19015B2:               global_368 = (global_368 + ((var_2CC * var_2D4) + var_2DC))
  loc_19015D0:             End If
  loc_19015D0:           End If
  loc_19015D3:         Else
  loc_19015E8:           Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_19015EE:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(global_368)
  loc_1901601:           var_2CC = Val(CStr(var_2DC))
  loc_1901619:           Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_190161F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1901632:           var_2D4 = Val(CStr())
  loc_190164A:           Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_1901650:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_1901663:           var_2DC = Val(CStr())
  loc_19016B9:           LateIdCallSt
  loc_19016FB:           Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_1901701:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar((((var_2CC * var_2D4) * var_2DC) / CDbl(&H64))), "0.00")))))
  loc_190171D:           If (CStr(1) = "Y") Then
  loc_1901735:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_190173B:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_190174E:             var_2CC = Val(CStr(CVar(CLng(var_B4))))
  loc_1901766:             Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_190176C:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_190177F:             var_2D4 = Val(CStr(var_2DC))
  loc_1901793:             global_368 = (global_368 + (var_2CC * var_2D4))
  loc_19017AB:           End If
  loc_19017AB:         End If
  loc_19017C0:         Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_19017C6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(global_368)
  loc_19017D9:         var_2CC = Val(CStr(var_2D4))
  loc_1901802:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_1901808:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_1901829:         Set var_1B4 = var_2CC(CVar(CStr((Val(CStr(CVar(CLng(var_B4)))) * var_2CC))))
  loc_190182F:         LateIdCallSt
  loc_1901865:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_190186B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1B4)
  loc_1901876:         var_E4 = CStr()
  loc_190188D:         Set var_E8 = var_1B4(var_B2)
  loc_1901893:         Call 0.Method_Proc_258_158_19037C80 (CStr(Val(var_E4)))
  loc_190189B:         var_1B4.Caption = 
  loc_19018C0:         Set var_D8 = var_E8(var_B2)
  loc_19018C6:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19018CE:          = var_E8.Tag
  loc_1901901:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1901911:           Set var_D8 = var_E8(var_B2)
  loc_1901917:           Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_190191F:            = var_E8.Text
  loc_190192C:           var_2CC = Val(var_E4)
  loc_1901944:           Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HF)))
  loc_190194A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_190197C:           var_10C = CVar((var_2CC + Val(CStr()))) 'Double
  loc_1901999:           Set var_1B8 = var_1CC(var_B2)
  loc_190199F:           Call 0.Method_Proc_258_158_19037C80 (CStr(Format(Trim(CVar(var_E4)), "0.00")), 1)
  loc_19019A7:           var_1CC.Text = 1
  loc_19019DA:           Set var_D8 = var_E8(var_B2)
  loc_19019E0:           Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19019E8:           var_2D4 = var_E8.Text
  loc_19019F5:           var_B0 = Val(var_E4)
  loc_1901A02:         End If
  loc_1901A05:       Next var_1E4 'Integer
  loc_1901A17:       Set var_D8 = var_E8(var_B2)
  loc_1901A1D:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901A25:        = var_E8.Tag
  loc_1901A70:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIS")) And (global_368 <> CDbl(0))) Then
  loc_1901A80:         Set var_D8 = var_E8(var_B2)
  loc_1901A86:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901A8E:          = var_E8.Text
  loc_1901A9B:         var_2CC = Val(var_E4)
  loc_1901ADE:         Set var_1B4 = var_1B8(var_B2)
  loc_1901AE4:         Call 0.Method_Proc_258_158_19037C80 (CStr(Format(CVar(((var_2CC / global_368) * CDbl(&H64))), "0.00")), 1)
  loc_1901AEC:         var_1B8.Text = 1
  loc_1901B0C:       End If
  loc_1901B0F:     Else
  loc_1901B18:       Set var_D8 = 1(var_B4)
  loc_1901B1E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_2CC)
  loc_1901B34:       For var_32C =  To CInt((CLng() - 1)):    = var_32C 'Integer
  loc_1901B47:         Set var_D8 = var_E8(var_B2)
  loc_1901B4D:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901B55:          = var_E8.Tag
  loc_1901B88:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1901B8F:           var_13C = CVar(CLng(var_B4)) 'Long
  loc_1901BA6:           Set var_D8 = CVar(CLng(&HE))("0.00")
  loc_1901BAC:           LateIdCallSt
  loc_1901BBB:           var_13C = CVar(CLng(var_B4)) 'Long
  loc_1901BD2:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_13C(CVar(CLng(&H13))))
  loc_1901BEE:           If (CStr(var_13C) = "Y") Then
  loc_1901BF1:           End If
  loc_1901BF1:         End If
  loc_1901C06:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_1901C0C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1901C2E:         Set var_E8 = var_1B4(var_B2)
  loc_1901C34:         Call 0.Method_Proc_258_158_19037C80 (CStr(Val(CStr())))
  loc_1901C3C:         var_1B4.Caption = 
  loc_1901C69:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_1901C6F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1901C82:         var_2CC = Val(CStr())
  loc_1901C9A:         Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_1901CA0:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1901D05:         LateIdCallSt
  loc_1901D41:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_1901D47:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar(((var_2CC * Val(CStr())) / CDbl(&H64))), "0.00")))))
  loc_1901D63:         If (CStr(1) = "Y") Then
  loc_1901D7B:           Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_1901D81:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_1901D8C:           var_E4 = CStr(CVar(CLng(var_B4)))
  loc_1901DA4:           global_368 = (global_368 + Val(var_E4))
  loc_1901DB0:         End If
  loc_1901DBD:         Set var_D8 = var_E8(var_B2)
  loc_1901DC3:         Call 0.Method_Proc_258_158_19037C80 (var_E4, global_368)
  loc_1901DCB:         var_2CC = var_E8.Tag
  loc_1901DFE:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1901E0E:           Set var_D8 = var_E8(var_B2)
  loc_1901E14:           Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901E1C:           var_2D4 = var_E8.Text
  loc_1901E29:           var_2CC = Val(var_E4)
  loc_1901E41:           Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HF)))
  loc_1901E47:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1901E79:           var_10C = CVar((var_2CC + Val(CStr()))) 'Double
  loc_1901E96:           Set var_1B8 = var_1CC(var_B2)
  loc_1901E9C:           Call 0.Method_Proc_258_158_19037C80 (CStr(Format(Trim(CVar(var_E4)), "0.00")), 1)
  loc_1901EA4:           var_1CC.Text = 1
  loc_1901ED7:           Set var_D8 = var_E8(var_B2)
  loc_1901EDD:           Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901EE5:           var_2D4 = var_E8.Text
  loc_1901EF2:           var_B0 = Val(var_E4)
  loc_1901EFF:         End If
  loc_1901F02:       Next var_32C 'Integer
  loc_1901F14:       Set var_D8 = var_E8(var_B2)
  loc_1901F1A:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901F22:        = var_E8.Tag
  loc_1901F6D:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIS")) And (global_368 <> CDbl(0))) Then
  loc_1901F7D:         Set var_D8 = var_E8(var_B2)
  loc_1901F83:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1901F8B:          = var_E8.Text
  loc_1901FDB:         Set var_1B4 = var_1B8(var_B2)
  loc_1901FE1:         Call 0.Method_Proc_258_158_19037C80 (CStr(Format(CVar(((Val(var_E4) / global_368) * CDbl(&H64))), "0.00")), 1)
  loc_1901FE9:         var_1B8.Text = 1
  loc_1902009:       End If
  loc_1902009:     End If
  loc_190200C:   Else
  loc_1902019:     Set var_D8 = var_E8(var_B2)
  loc_190201F:     Call 0.Method_Proc_258_158_19037C80 (var_DA)
  loc_1902039:     If (var_DA = &HFF) Then
  loc_1902042:       Call Proc_258_159_1298F9C(var_B2)
  loc_190204A:       var_BC = var_E8.Visible
  loc_190205A:       Set var_D8 = var_E8(var_B2)
  loc_1902060:       Call 0.Method_Proc_258_158_19037C80 (var_E4, var_BC)
  loc_1902068:       var_2CC = var_E8.Text
  loc_19020B5:       Set var_1B4 = var_1B8(var_B2)
  loc_19020BB:       Call 0.Method_Proc_258_158_19037C80 (CStr(Format(CVar(((var_BC * Val(var_E4)) / CDbl(&H64))), "0.00")), 1)
  loc_19020C3:       var_1B8.Text = 1
  loc_19020F0:       Set var_D8 = var_E8(var_B2)
  loc_19020F6:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19020FE:       var_2CC = var_E8.Tag
  loc_1902146:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_1902171:         var_E4 = CStr(Format(var_90, "0.00"))
  loc_190217F:         Set var_D8 = var_E8(var_B2)
  loc_1902185:         Call 0.Method_Proc_258_158_19037C80 (var_E4, 1)
  loc_190218D:         var_E8.Text = 1
  loc_19021A3:       End If
  loc_19021B0:       Set var_D8 = var_E8(var_B2)
  loc_19021B6:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19021BE:        = var_E8.Tag
  loc_1902206:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "ADV")) And (var_98 > CDbl(0))) Then
  loc_1902231:         var_E4 = CStr(Format(var_98, "0.00"))
  loc_190223F:         Set var_D8 = var_E8(var_B2)
  loc_1902245:         Call 0.Method_Proc_258_158_19037C80 (var_E4, 1)
  loc_190224D:         var_E8.Text = 1
  loc_1902263:       End If
  loc_1902270:       Set var_D8 = var_E8(var_B2)
  loc_1902276:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_190227E:        = var_E8.Tag
  loc_19022C6:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DED")) And (var_A8 > CDbl(0))) Then
  loc_19022FF:         Set var_D8 = var_E8(var_B2)
  loc_1902305:         Call 0.Method_Proc_258_158_19037C80 (CStr(Format(var_A8, "0.00")), 1)
  loc_190230D:         var_E8.Text = 1
  loc_1902323:       End If
  loc_1902328:       var_E4 = CStr(var_BC)
  loc_1902335:       Set var_D8 = var_E8(var_B2)
  loc_190233B:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1902343:       var_E8.Caption = 
  loc_1902355:     Else
  loc_1902362:       Set var_D8 = var_E8(var_B2)
  loc_1902368:       Call 0.Method_Proc_258_158_19037C80 (var_DA)
  loc_1902370:        = var_E8.Visible
  loc_190237B:       var_13C = (var_DA = 0)
  loc_190238C:       Set var_1B4 = var_1B8(var_B2)
  loc_1902392:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_190239A:       var_13C = var_1B8.Tag
  loc_19023DB:       If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "ADD"))) Then
  loc_1902406:         var_E4 = CStr(Format(var_90, "0.00"))
  loc_1902414:         Set var_D8 = var_E8(var_B2)
  loc_190241A:         Call 0.Method_Proc_258_158_19037C80 (var_E4, 1)
  loc_1902422:         var_E8.Text = 1
  loc_190243B:       Else
  loc_1902448:         Set var_D8 = var_E8(var_B2)
  loc_190244E:         Call 0.Method_Proc_258_158_19037C80 (var_DA)
  loc_1902456:          = var_E8.Visible
  loc_1902461:         var_13C = (var_DA = 0)
  loc_1902472:         Set var_1B4 = var_1B8(var_B2)
  loc_1902478:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1902480:         var_13C = var_1B8.Tag
  loc_19024C1:         If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "ADV"))) Then
  loc_19024EC:           var_E4 = CStr(Format(var_98, "0.00"))
  loc_19024FA:           Set var_D8 = var_E8(var_B2)
  loc_1902500:           Call 0.Method_Proc_258_158_19037C80 (var_E4, 1)
  loc_1902508:           var_E8.Text = 1
  loc_1902521:         Else
  loc_190252E:           Set var_D8 = var_E8(var_B2)
  loc_1902534:           Call 0.Method_Proc_258_158_19037C80 (var_DA)
  loc_190253C:            = var_E8.Visible
  loc_1902547:           var_13C = (var_DA = 0)
  loc_1902558:           Set var_1B4 = var_1B8(var_B2)
  loc_190255E:           Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1902566:           var_13C = var_1B8.Tag
  loc_19025A7:           If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DED"))) Then
  loc_19025E0:             Set var_D8 = var_E8(var_B2)
  loc_19025E6:             Call 0.Method_Proc_258_158_19037C80 (CStr(Format(var_A8, "0.00")), 1)
  loc_19025EE:             var_E8.Text = 1
  loc_1902604:           End If
  loc_1902604:         End If
  loc_1902604:       End If
  loc_1902604:     End If
  loc_1902604:   End If
  loc_1902607: Next var_1E0 'Integer
  loc_1902615: Set var_D8 = 1(var_B2)
  loc_190261B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1902631: For var_330 =  To CInt((CLng() - 1)):  = var_330 'Integer
  loc_190264C:   Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1902652:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_190265D:   var_E4 = CStr()
  loc_1902665:   var_2CC = Val(var_E4)
  loc_190267D:   Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1902683:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_19026A5:   var_264 = CVar(CLng(&HA)) 'Long
  loc_19026E4:   LateIdCallSt
  loc_1902717:   Set var_D8 = var_E8(1)
  loc_190271D:   Call 0.Method_Proc_258_158_19037C80 (var_E4, 1(CVar(CStr(Format(CVar((var_2CC * Val(CStr()))), "0.00")))), 1)
  loc_1902725:   var_264 = var_E8.Text
  loc_1902732:   var_2CC = Val(var_E4)
  loc_190274A:   Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(&HA)))
  loc_1902750:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1902763:   var_2D4 = Val(CStr(CVar(CLng(var_B2))))
  loc_1902782:   var_10C = CVar((var_2CC + var_2D4)) 'Double
  loc_190279E:   Set var_1B8 = var_1CC(1)
  loc_19027A4:   Call 0.Method_Proc_258_158_19037C80 (CStr(Format(Format(var_A8, "0.00"), "0.00")), 1, 1)
  loc_19027AC:   var_1CC.Text = var_2D4
  loc_19027D5: Next var_330 'Integer
  loc_19027DE: Set var_D8 = Me.TopCtrl1
  loc_19027E4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_19027EC: var_E4 = CStr()
  loc_19027F8: Set var_E8 = Me.TopCtrl1
  loc_19027FE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((var_E4 = "Add"))
  loc_1902824: If ( Or (CStr() = "Edit")) Then
  loc_1902833:   Set var_D8 = var_B2(var_DA)
  loc_1902839:   Call 0.Method_Proc_258_158_19037C88 (2)
  loc_1902844:   For var_334 =  To var_DA:  = var_334 'Integer
  loc_1902857:     Set var_D8 = var_E8(var_B2)
  loc_190285D:     Call 0.Method_Proc_258_158_19037C80 (var_DA)
  loc_1902865:      = var_E8.Visible
  loc_1902870:     var_13C = (var_DA = &HFF)
  loc_1902881:     Set var_1B4 = var_1B8(var_B2)
  loc_1902887:     Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_190288F:     var_13C = var_1B8.Tag
  loc_19028D0:     If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "SCH"))) Then
  loc_19028D9:       Call Proc_258_159_1298F9C(var_B2)
  loc_19028E1:       var_BC = var_2CC
  loc_19028F1:       Set var_D8 = var_E8(var_B2)
  loc_19028F7:       Call 0.Method_Proc_258_158_19037C80 (var_E4, var_BC)
  loc_19028FF:       var_2CC = var_E8.Text
  loc_190290C:       var_2CC = Val(var_E4)
  loc_190292F:       var_FC = CVar(((var_BC * var_2CC) / CDbl(&H64))) 'Double
  loc_190294C:       Set var_1B4 = var_1B8(var_B2)
  loc_1902952:       Call 0.Method_Proc_258_158_19037C80 (CStr(Format(var_FC, "0.00")), 1)
  loc_190295A:       var_1B8.Text = 1
  loc_190298C:       Set var_D8 = var_E8(var_B2)
  loc_1902992:       Call 0.Method_Proc_258_158_19037C80 (CStr(var_BC))
  loc_190299A:       var_E8.Caption = var_2CC
  loc_19029A9:     End If
  loc_19029AC:   Next var_334 'Integer
  loc_19029B1: End If
  loc_19029BE: Set var_D8 = (1)
  loc_19029C4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19029D5: Set var_D8 = 1(var_B2)
  loc_19029DB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19029F1: For var_338 =  To CInt((CLng() - 1)):  = var_338 'Integer
  loc_1902A01:   If (var_C0 > var_BE) Then
  loc_1902A0E:     If (var_CA < var_C0) Then
  loc_1902A26:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1902A2C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1902A4D:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1902A53:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1902A66:       var_2DC = Val(CStr())
  loc_1902A7E:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1902A84:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1902A97:       var_328 = Val(CStr())
  loc_1902AAF:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(&HF)))
  loc_1902AB5:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_328)
  loc_1902AC8:       var_38C = Val(CStr())
  loc_1902AEB:       var_14C = CVar(((var_2DC * var_328) - var_38C)) 'Double
  loc_1902B0C:       Set var_1CC = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_1902B12:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_1902B25:       var_390 = Proc_6_38_E69628(CVar(CStr(1)))
  loc_1902B3D:       Set var_36C = CVar(CLng(var_B2))(CVar(CLng(&H1D)))
  loc_1902B43:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_38C)
  loc_1902B56:       var_398 = Val(CStr())
  loc_1902B7A:       Call Proc_258_161_181A2AC(CStr(var_FC), var_B2, CSng(Format( And (Trim(CVar(CStr())) = CVar(MemVar_1F95078 & "SCH")), "0.00")))
  loc_1902BB9:     Else
  loc_1902BCE:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1902BD4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_390)
  loc_1902BF5:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1902BFB:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_398)
  loc_1902C0E:       var_2DC = Val(CStr(var_398))
  loc_1902C26:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1902C2C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1902C3F:       var_328 = Val(CStr())
  loc_1902C57:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(&HF)))
  loc_1902C5D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_328)
  loc_1902C70:       var_38C = Val(CStr())
  loc_1902C93:       var_14C = CVar(((var_2DC * var_328) - var_38C)) 'Double
  loc_1902CB4:       Set var_1CC = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_1902CBA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_1902CCD:       var_384 = Proc_6_38_E69628(CVar(CStr(1)))
  loc_1902CF7:       Call Proc_258_161_181A2AC(CStr(var_FC), var_B2, CSng(Format( And (Trim(CVar(CStr(var_398))) = CVar(MemVar_1F95078 & "SCH")), "0.00")))
  loc_1902D2D:     End If
  loc_1902D30:   Else
  loc_1902D3A:     If (var_CA < var_C0) Then
  loc_1902D52:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1902D58:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_384)
  loc_1902D79:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1902D7F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(0)
  loc_1902D92:       var_2DC = Val(CStr(var_38C))
  loc_1902DAA:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1902DB0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1902DC3:       var_328 = Val(CStr())
  loc_1902E03:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_1902E09:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_1902E1C:       var_384 = Proc_6_38_E69628(CVar(CStr(1)))
  loc_1902E34:       Set var_1CC = CVar(CLng(var_B2))(CVar(CLng(&H1D)))
  loc_1902E3A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_328)
  loc_1902E4D:       var_38C = Val(CStr())
  loc_1902E71:       Call Proc_258_161_181A2AC(CStr(var_FC), var_B2, CSng(Format(CVar((var_2DC * var_328)), "0.00")))
  loc_1902EAA:     Else
  loc_1902EBF:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1902EC5:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_384)
  loc_1902EE6:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1902EEC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_38C)
  loc_1902EF7:       var_E4 = CStr(var_38C)
  loc_1902EFF:       var_2DC = Val(var_E4)
  loc_1902F17:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1902F1D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1902F70:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_1902F76:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_1902F89:       var_380 = Proc_6_38_E69628(CVar(CStr(1)))
  loc_1902FB3:       Call Proc_258_161_181A2AC(CStr(var_FC), var_B2, CSng(Format(CVar((var_2DC * Val(CStr()))), "0.00")))
  loc_1902FE3:     End If
  loc_1902FE3:   End If
  loc_1902FE6: Next var_338 'Integer
  loc_1902FEF: Set var_D8 = ()
  loc_1902FF5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_190300A: If (CLng() > 1) Then
  loc_190301A:   Set var_D8 = (1)
  loc_1903020:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1903028: End If
  loc_190302E: global_136 = CDbl(0)
  loc_190303D: Set var_D8 = var_B2(var_DA)
  loc_1903043: Call 0.Method_Proc_258_158_19037C88 (1)
  loc_190304E: For var_39C =  To var_DA: global_136 = var_39C 'Integer
  loc_190305D:   Set var_D8 = 0(var_B4)
  loc_1903063:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1903079:   For var_3A0 =  To CInt((CLng() - 1)):  = var_3A0 'Integer
  loc_190308C:     Set var_D8 = var_E8(var_B2)
  loc_1903092:     Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_190309A:      = var_E8.Tag
  loc_19030C5:     Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_19030CB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(Trim(CVar(var_E4)))
  loc_19030FC:     If ( = Trim(CVar(CStr()))) Then
  loc_1903114:       Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(6)))
  loc_190311A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_190312D:       var_2CC = Val(CStr())
  loc_190313D:       Set var_D8 = var_E8(var_B2)
  loc_1903143:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_190315E:       var_190 = CStr((Val(var_E4) + var_E8.Text))
  loc_190316B:       Set var_1B8 = var_1CC(var_B2)
  loc_1903171:       Call 0.Method_Proc_258_158_19037C80 (CStr())
  loc_1903179:       var_1CC.Text = 
  loc_1903197:     End If
  loc_190319A:   Next var_3A0 'Integer
  loc_19031AC:   Set var_D8 = var_E8(var_B2)
  loc_19031B2:   Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19031BA:    = var_E8.Text
  loc_19031C7:   var_2CC = Val(var_E4)
  loc_19031FF:   Set var_1B4 = var_1B8(var_B2)
  loc_1903205:   Call 0.Method_Proc_258_158_19037C80 (CStr(Format(CVar(var_2CC), "0.00")), 1)
  loc_190320D:   var_1B8.Text = 1
  loc_1903230: Next var_39C 'Integer
  loc_1903241: Set var_D8 = var_B2(var_DA)
  loc_1903247: Call 0.Method_Proc_258_158_19037C88 (2)
  loc_1903252: For var_3A4 =  To var_DA:  = var_3A4 'Integer
  loc_1903265:   Set var_D8 = var_E8(var_B2)
  loc_190326B:   Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1903273:    = var_E8.Tag
  loc_190327B:   var_FC = CVar(var_E4) 'String
  loc_19032A6:   If (Trim(var_FC) = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_19032AF:     Call Proc_258_159_1298F9C(var_B2)
  loc_19032B7:     var_BC = var_2CC
  loc_19032D2:     Call 0.Method_Proc_258_158_19037C80 (CStr(var_BC), var_BC)
  loc_19032DA:     var_E8.Caption = var_2CC
  loc_190330D:     unk_5B2155.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill' And LogSite_Code='" & MemVar_1F95078 & "'", var_FC, -1
  loc_1903318:     Set var_88 = var_E8(var_B2)
  loc_190333C:     If (var_88.RecordCount > 0) Then
  loc_1903356:       var_E8 = var_88.Fields.Item("RoundOffType")
  loc_1903382:       Proc_6_85_12628F0(var_BC, CByte(2))
  loc_1903387:       var_2CC = CStr(Left(CVar(var_E8), 1))
  loc_19033BF:       Set var_1B4 = var_1B8(var_B2)
  loc_19033C5:       Call 0.Method_Proc_258_158_19037C80 (CStr(Format(CVar(var_2CC), "0.00")), 1, 1)
  loc_19033CD:       var_1B8.Text = var_2CC
  loc_19033F2:     Else
  loc_19033F5:       var_E4 = "S"
  loc_1903406:       Proc_6_85_12628F0(var_BC, CByte(2))
  loc_190340B:       var_2CC = var_E4
  loc_1903435:       var_EC = CStr(Format(CVar(var_2CC), "0.00"))
  loc_1903443:       Set var_D8 = var_E8(var_B2)
  loc_1903449:       Call 0.Method_Proc_258_158_19037C80 (var_EC, 1, 1)
  loc_1903451:       var_E8.Text = var_2CC
  loc_190346D:     End If
  loc_1903470:   Else
  loc_1903477:     If (var_B2 <> arg_C) Then
  loc_1903487:       Set var_D8 = var_E8(var_B2)
  loc_190348D:       Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1903495:       var_D8 = var_E8.Tag
  loc_19034C7:       Set var_1B4 = var_1B8(var_B2)
  loc_19034CD:       Call 0.Method_Proc_258_158_19037C80 (var_EC)
  loc_19034D5:       (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "TOT")) = var_1B8.Tag
  loc_19034FA:       var_1DC =  Or (Trim(CVar(var_EC)) = CVar(MemVar_1F95078 & "NET"))
  loc_190350B:       Set var_1CC = var_36C(var_B2)
  loc_1903511:       Call 0.Method_Proc_258_158_19037C80 (CStr())
  loc_1903519:       var_1DC = var_36C.Tag
  loc_1903568:       If CBool( Or (Trim(CVar(CStr())) = CVar(MemVar_1F95078 & "DIF"))) Then
  loc_1903571:         Call Proc_258_159_1298F9C(var_B2)
  loc_190359D:         var_E4 = CStr(Format(CVar(var_2CC), "0.00"))
  loc_19035AB:         Set var_D8 = var_E8(var_B2)
  loc_19035B1:         Call 0.Method_Proc_258_158_19037C80 (var_E4, 1)
  loc_19035DE:         Set var_D8 = var_E8(var_B2)
  loc_19035E4:         Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19035EC:         var_2CC = var_E8.Tag
  loc_190361F:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F95078 & "DIF")) Then
  loc_190362F:           Set var_D8 = var_E8(var_B2)
  loc_1903635:           Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_190363D:            = 1
  loc_190365C:           If (CDbl(Val(var_E4)) > global_248) Then
  loc_1903684:             var_E4 = CStr(Format(0, "0.00"))
  loc_1903692:             Set var_D8 = var_E8(var_B2)
  loc_1903698:             Call 0.Method_Proc_258_158_19037C80 (var_E4, 1)
  loc_19036A0:             var_E8.Text = 1
  loc_19036BB:           Else
  loc_19036C8:             Set var_D8 = var_E8(var_B2)
  loc_19036CE:             Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_19036D6:              = var_E8.Text
  loc_1903705:             var_FC = CVar((global_248 - Val(var_E4))) 'Double
  loc_1903722:             Set var_1B4 = var_1B8(var_B2)
  loc_1903728:             Call 0.Method_Proc_258_158_19037C80 (CStr(Format(0, "0.00")), 1)
  loc_1903730:             var_1B8.Text = 1
  loc_1903750:           End If
  loc_1903750:         End If
  loc_1903750:       End If
  loc_1903750:     End If
  loc_1903750:   End If
  loc_1903753: Next var_3A4 'Integer
  loc_1903771: Set var_D8 = var_98(var_DA)
  loc_1903777: Call 0.Method_Proc_258_158_19037C88 (var_B0)
  loc_1903789: Set var_E8 = var_1B4(var_DA)
  loc_190378F: Call 0.Method_Proc_258_158_19037C80 (var_E4)
  loc_1903797:  = var_1B4.Text
  loc_19037A7: global_276 = Val(var_E4)
  loc_19037BB: Set var_88 = Nothing
  loc_19037BE: Exit Sub
  loc_19037BF: ' Referenced from: 1900CE0
  loc_19037BF: Proc_6_60_E63754(global_276)
  loc_19037C4: Exit Sub
End Sub

Public Sub Proc_258_159_1298F9C(arg_C) '1298F9C
  'Data Table: 5B2118
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As String
  Dim var_E8 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_228 As Double
  Dim var_168 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_92 As Integer
  Dim var_D0 As Variant
  Dim var_1AC As Variant
  loc_12989E1: Set var_A8 = var_AC(arg_C)
  loc_12989E7: Call 0.Method_Proc_258_159_1298F9C0 (var_B0)
  loc_12989EF:  = var_AC.Tag
  loc_1298A06: var_90 = CStr(Trim(CVar(var_B0)))
  loc_1298A24: Set var_A8 = var_AC(arg_C)
  loc_1298A2A: Call 0.Method_Proc_258_159_1298F9C0 (var_B0)
  loc_1298A32:  = var_AC.Tag
  loc_1298A54: If (var_B0 = MemVar_1F95078 & "SCH") Then
  loc_1298A60:   Set var_A8 = 1(var_A2)
  loc_1298A66:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1298A7C:   For var_D8 =  To CInt((CLng() - 1)):  = var_D8 'Integer
  loc_1298A97:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&H1B)))
  loc_1298A9D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1298AB9:     If (CStr() = "Y") Then
  loc_1298AD1:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_1298AD7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1298AEA:       var_120 = Val(CStr())
  loc_1298AF4:       var_A0 = (var_A0 + var_120)
  loc_1298B15:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_1298B1B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A0)
  loc_1298B2E:       var_120 = Val(CStr(var_120))
  loc_1298B46:       Set var_AC = CVar(CLng(var_A2))(CVar(CLng(&HF)))
  loc_1298B4C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_120)
  loc_1298B5F:       var_228 = Val(CStr())
  loc_1298B6F:       Set var_164 = var_168(arg_C)
  loc_1298B75:       Call 0.Method_Proc_258_159_1298F9C0 (var_16C)
  loc_1298B91:       var_1CC = CVar(CLng(var_A2)) 'Long
  loc_1298B99:       var_1EC = CVar(CLng(&H1D)) 'Long
  loc_1298BC2:       var_18C = CVar((((var_120 - var_168.Text) * Val(var_16C)) / CDbl(&H64))) 'Double
  loc_1298BDA:       Set var_220 = 1(CVar(CStr(Format(var_18C, "0.00"))))
  loc_1298BE0:       LateIdCallSt
  loc_1298C0D:     End If
  loc_1298C10:   Next var_D8 'Integer
  loc_1298C18: Else
  loc_1298C21:   Set var_A8 = 1(var_A2)
  loc_1298C27:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1298C3D:   For var_234 =  To CInt((CLng() - 1)):    = var_234 'Integer
  loc_1298C58:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_1298C5E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1298C69:     var_B0 = CStr()
  loc_1298C7B:     var_A0 = (var_A0 + Val(var_B0))
  loc_1298C8A:   Next var_234 'Integer
  loc_1298C8F: End If
  loc_1298C99: If (Len(var_90) > 0) Then
  loc_1298CCB:   Set var_A8 = var_AC(arg_C)
  loc_1298CD1:   Call 0.Method_Proc_258_159_1298F9C0 (var_B0)
  loc_1298CD9:   (Left(var_90, 1) = "1") = var_AC.Tag
  loc_1298CE8:   var_D4 = MemVar_1F95078 & "SCH"
  loc_1298CFA:   Set var_164 = var_168(arg_C)
  loc_1298D00:   Call 0.Method_Proc_258_159_1298F9C0 (var_16C)
  loc_1298D08:   (var_B0 = var_D4) = var_168.Tag
  loc_1298D2A:   Set var_220 = var_23C(arg_C)
  loc_1298D30:   Call 0.Method_Proc_258_159_1298F9C0 (var_240)
  loc_1298D38:   ( Or (var_16C = MemVar_1F95078 & "ADD")) = var_23C.Tag
  loc_1298D7C:   If CBool( And ( Or (var_240 = MemVar_1F95070 & "DED"))) Then
  loc_1298D82:     var_8C = var_A0
  loc_1298D88:   Else
  loc_1298DA9:     var_120 = Val(CStr(Left(var_90, 1)))
  loc_1298DBA:     Set var_A8 = var_AC(CInt(var_120))
  loc_1298DC0:     Call 0.Method_Proc_258_159_1298F9C0 (var_D4, var_120)
  loc_1298DC8:     var_8C = var_AC.Text
  loc_1298DD5:     var_8C = Val(var_D4)
  loc_1298DE9:   End If
  loc_1298DEF:   Call Proc_258_131_E85DCC(var_90)
  loc_1298E14:   var_90 = CStr(Mid(var_90, CLng(var_246), CVar(Len(var_90))))
  loc_1298E1E:   ' Referenced from: 1298F93
  loc_1298E28:   If (Len(var_90) > 0) Then
  loc_1298E50:     Call Proc_258_131_E85DCC(var_90)
  loc_1298E6F:     var_D0 = Mid(var_90, CLng((var_246 + 1)), CVar(Len(var_90)))
  loc_1298E78:     var_90 = CStr(Mid(var_90, CLng(var_246), CVar(Len(var_90))))
  loc_1298E88:     Call Proc_258_131_E85DCC(var_90)
  loc_1298E9F:     var_C0 = Left(var_90, CLng((var_246 - 1)))
  loc_1298EA7:     var_B0 = CStr(CVar(Len(var_90)))
  loc_1298EB1:     var_92 = CInt(Val(var_B0))
  loc_1298EC0:     Call Proc_258_131_E85DCC(var_90)
  loc_1298EE5:     var_90 = CStr(Mid(var_90, CLng(var_246), CVar(Len(var_90))))
  loc_1298EFC:     Set var_A8 = var_AC(var_92)
  loc_1298F02:     Call 0.Method_Proc_258_159_1298F9C0 (var_B0, var_246, var_92, var_246)
  loc_1298F0A:     var_246 = var_AC.Text
  loc_1298F17:     var_120 = Val(var_B0)
  loc_1298F2E:     Set var_164 = var_168(var_92)
  loc_1298F34:     Call 0.Method_Proc_258_159_1298F9C0 (var_D4, CVar(var_8C), var_120)
  loc_1298F3C:     var_246 = var_168.Text
  loc_1298F4A:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_1298F5D:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_1298F6C:     var_1AC = (var_8C + IIf(var_90, CVar(var_120), Mid(var_90, CLng(var_246), CVar(Len(var_90)))))
  loc_1298F71:     var_8C = CSng("0.00")
  loc_1298F93:     GoTo loc_1298E1E
  loc_1298F96:   End If
  loc_1298F96: End If
  loc_1298F96: Proc_258_159_1298F9C = var_8C
End Sub

Public Sub Proc_258_160_126D2D8(arg_C, arg_10) '126D2D8
  'Data Table: 5B2118
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As String
  Dim var_E8 As Variant
  Dim var_D0 As Variant
  Dim var_B0 As String
  Dim var_160 As Double
  Dim var_A0 As Double
  Dim var_16C As Variant
  Dim var_17C As Label
  Dim var_8C As Double
  Dim var_92 As Integer
  Dim var_148 As Variant
  loc_126CD75: Set var_A8 = var_AC(arg_C)
  loc_126CD7B: Call 0.Method_Proc_258_160_126D2D80 (var_B0)
  loc_126CD83:  = var_AC.Tag
  loc_126CD9A: var_90 = CStr(Trim(CVar(var_B0)))
  loc_126CDB8: Set var_A8 = var_AC(arg_C)
  loc_126CDBE: Call 0.Method_Proc_258_160_126D2D80 (var_B0)
  loc_126CDC6:  = var_AC.Tag
  loc_126CDE8: If (var_B0 = MemVar_1F95078 & "SCH") Then
  loc_126CDF4:   Set var_A8 = 1(var_A2)
  loc_126CDFA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_126CE10:   For var_D8 =  To CInt((CLng() - 1)):  = var_D8 'Integer
  loc_126CE2B:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(1)))
  loc_126CE31:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126CE6D:     If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_126CE85:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&H1B)))
  loc_126CE8B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126CEA7:       If (CStr() = "Y") Then
  loc_126CEBF:         Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_126CEC5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126CEE2:         var_A0 = (var_A0 + Val(CStr()))
  loc_126CEEE:       End If
  loc_126CEEE:     End If
  loc_126CEF1:   Next var_D8 'Integer
  loc_126CEF9: Else
  loc_126CF02:   Set var_A8 = 1(var_A2)
  loc_126CF08:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_126CF1E:   For var_164 =  To CInt((CLng() - 1)):    = var_164 'Integer
  loc_126CF39:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(1)))
  loc_126CF3F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126CF7B:     If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_126CF93:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_126CF99:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126CFA4:       var_B0 = CStr()
  loc_126CFB6:       var_A0 = (var_A0 + Val(var_B0))
  loc_126CFC2:     End If
  loc_126CFC5:   Next var_164 'Integer
  loc_126CFCA: End If
  loc_126CFD4: If (Len(var_90) > 0) Then
  loc_126D006:   Set var_A8 = var_AC(arg_C)
  loc_126D00C:   Call 0.Method_Proc_258_160_126D2D80 (var_B0)
  loc_126D014:   (Left(var_90, 1) = "1") = var_AC.Tag
  loc_126D023:   var_D4 = MemVar_1F95078 & "SCH"
  loc_126D035:   Set var_168 = var_16C(arg_C)
  loc_126D03B:   Call 0.Method_Proc_258_160_126D2D80 (var_170)
  loc_126D043:   (var_B0 = var_D4) = var_16C.Tag
  loc_126D065:   Set var_178 = var_17C(arg_C)
  loc_126D06B:   Call 0.Method_Proc_258_160_126D2D80 (var_180)
  loc_126D073:   ( Or (var_170 = MemVar_1F95078 & "ADD")) = var_17C.Tag
  loc_126D0B7:   If CBool( And ( Or (var_180 = MemVar_1F95070 & "DED"))) Then
  loc_126D0BD:     var_8C = var_A0
  loc_126D0C3:   Else
  loc_126D0E4:     var_160 = Val(CStr(Left(var_90, 1)))
  loc_126D0F5:     Set var_A8 = var_AC(CInt(var_160))
  loc_126D0FB:     Call 0.Method_Proc_258_160_126D2D80 (var_D4, var_160)
  loc_126D103:     var_8C = var_AC.Text
  loc_126D110:     var_8C = Val(var_D4)
  loc_126D124:   End If
  loc_126D12A:   Call Proc_258_131_E85DCC(var_90)
  loc_126D14F:   var_90 = CStr(Mid(var_90, CLng(var_186), CVar(Len(var_90))))
  loc_126D159:   ' Referenced from: 126D2CE
  loc_126D163:   If (Len(var_90) > 0) Then
  loc_126D18B:     Call Proc_258_131_E85DCC(var_90)
  loc_126D1AA:     var_D0 = Mid(var_90, CLng((var_186 + 1)), CVar(Len(var_90)))
  loc_126D1B3:     var_90 = CStr(Mid(var_90, CLng(var_186), CVar(Len(var_90))))
  loc_126D1C3:     Call Proc_258_131_E85DCC(var_90)
  loc_126D1DA:     var_C0 = Left(var_90, CLng((var_186 - 1)))
  loc_126D1E2:     var_B0 = CStr(CVar(Len(var_90)))
  loc_126D1EC:     var_92 = CInt(Val(var_B0))
  loc_126D1FB:     Call Proc_258_131_E85DCC(var_90)
  loc_126D220:     var_90 = CStr(Mid(var_90, CLng(var_186), CVar(Len(var_90))))
  loc_126D237:     Set var_A8 = var_AC(var_92)
  loc_126D23D:     Call 0.Method_Proc_258_160_126D2D80 (var_B0, var_186, var_92, var_186)
  loc_126D245:     var_186 = var_AC.Text
  loc_126D252:     var_160 = Val(var_B0)
  loc_126D269:     Set var_168 = var_16C(var_92)
  loc_126D26F:     Call 0.Method_Proc_258_160_126D2D80 (var_D4, CVar(var_8C), var_160)
  loc_126D277:     var_186 = var_16C.Text
  loc_126D285:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_126D298:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_126D2A7:     var_148 = (var_8C + IIf(var_90, CVar(var_160), Mid(var_90, CLng(var_186), CVar(Len(var_90)))))
  loc_126D2AC:     var_8C = CSng(Trim(arg_10))
  loc_126D2CE:     GoTo loc_126D159
  loc_126D2D1:   End If
  loc_126D2D1: End If
  loc_126D2D1: Proc_258_160_126D2D8 = var_8C
End Sub

Public Sub Proc_258_161_181A2AC(arg_C, arg_10, arg_14, arg_18, arg_1C) '181A2AC
  'Data Table: 5B2118
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_5B2155 As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Fields15
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_124 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Fields15
  Dim var_114 As Field20
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_1817F00: unk_5B2155.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_1817F0B: Set var_D8 = var_10C
  loc_1817F2F: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_1817F3F: unk_5B2155.Execute var_E4 & "'", var_108, -1
  loc_1817F4A: Set var_8C = var_10C
  loc_1817F6E: If (var_D8.RecordCount > 0) Then
  loc_1817F86:   var_10C = var_D8.Fields
  loc_1817F8E:   var_114 = var_10C.Item("RestCode")
  loc_1817FAD:   If (var_10C <> Proc_6_38_E69628(CVar(var_114), global_76)) Then
  loc_1817FB2:     var_DA = &HFF
  loc_1817FB8:   Else
  loc_1817FBA:     var_DA = 0
  loc_1817FBD:   End If
  loc_1817FC0: Else
  loc_1817FC2:   var_DA = 0
  loc_1817FC5: End If
  loc_1817FC8: var_94 = arg_14
  loc_1817FCD: var_86 = 1
  loc_1817FDB: If (global_304 = "Room Service") Then
  loc_1818001:   Call 0.Method_Proc_258_161_181A2AC0 ("Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8, var_86)
  loc_1818010:   Proc_6_39_E7D3A0(var_124, CVar(var_114), var_94, var_DA)
  loc_1818021:   var_154 = var_DA & var_124 & " and LogSite_Code='" 
  loc_1818042:   unk_5B2155.Execute CStr(var_154 & CVar(MemVar_1F95078) & "'"), var_DA, var_114(CInt(&HA))
  loc_181804D:   Set var_C0 = var_1B8
  loc_181806B: End If
  loc_181806E: var_A8 = var_94
  loc_1818074: var_B0 = var_94
  loc_181807A: var_B8 = CDbl(0)
  loc_1818091: If (var_8C.RecordCount > 0) Then
  loc_1818094:   ' Referenced from: 181A27F
  loc_18180A3:   If Not(var_8C.EOF) Then
  loc_18180AA:     Set var_1C0 = var_B0(var_B8)
  loc_18180B6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(vbNullString)
  loc_18180D2:     If (var_8C.RecordCount > 0) Then
  loc_18180DB:       var_D2 = (var_D2 + 1)
  loc_1818114:       var_1D0 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nature")), var_D2))) 'Variant
  loc_181812D:       If (var_1D0 = "On Base Amt") Then
  loc_1818158:         var_124 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")))) 'String
  loc_181817A:         If (Trim(var_124) = "Room Rate") Then
  loc_1818188:           If (global_304 = "Room Service") Then
  loc_18181B1:             Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Limit")))
  loc_18181DF:             Proc_6_39_E7D3A0(var_154, CVar(var_C0.Fields.Item("RoomRate")))
  loc_18181E7:             var_174 = (var_124 <= var_154)
  loc_1818211:             Proc_6_39_E7D3A0(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_1818241:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_1818284:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_18182C2:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_18182D5:               Else
  loc_1818308:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1818331:                 Proc_6_142_14A62A0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_1818336:                 var_D0 = var_210
  loc_181834A:               End If
  loc_1818351:               If (var_D0 > CDbl(0)) Then
  loc_1818358:                 Set var_10C = var_D0(var_D0)
  loc_181835E:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_A8)
  loc_181836D:                 var_F8 = CVar((CLng() - 1)) 'Long
  loc_1818386:                 LateIdCallSt
  loc_181839C:                 Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_18183A2:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_18183B1:                 var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_18183CA:                 LateIdCallSt
  loc_18183E2:                 If (var_DA = 0) Then
  loc_18183E9:                   Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_18183EF:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_18183FE:                   var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1818406:                   var_184 = CVar(CLng(2)) 'Long
  loc_1818436:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_181843D:                   LateIdCallSt
  loc_181845A:                 Else
  loc_1818475:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F95078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_18184B3:                   var_134 = CVar(var_E8 & global_76 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_18184CA:                   unk_5B2155.Execute CStr(var_134 & "')"), var_174, -1
  loc_18184D5:                   Set var_E0 = var_1B8
  loc_181850D:                   If (var_E0.RecordCount > 0) Then
  loc_1818514:                     Set var_1B8 = var_1C0(var_1B8)
  loc_181851A:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_1818529:                     var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_1818531:                     var_184 = CVar(CLng(2)) 'Long
  loc_1818561:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1818568:                     LateIdCallSt
  loc_1818582:                   End If
  loc_1818582:                 End If
  loc_1818586:                 Set var_1B8 = var_134(var_1C0)
  loc_181858C:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_181859B:                 var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_18185DA:                 LateIdCallSt
  loc_18185F8:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_18185FE:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_181860D:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1818626:                 LateIdCallSt
  loc_181863C:                 Set var_1B8 = CVar(CStr(var_A8))(var_1C0)
  loc_1818642:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1818651:                 var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_1818690:                 LateIdCallSt
  loc_18186AE:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_18186B4:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_18186C3:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_18186DC:                 LateIdCallSt
  loc_18186F2:                 Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_18186F8:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1818707:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1818746:                 LateIdCallSt
  loc_1818764:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Sundry").Value))(var_1C0)
  loc_181876A:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(7)))
  loc_1818779:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1818781:                 var_164 = CVar(CLng(8)) 'Long
  loc_1818790:                 LateIdCallSt
  loc_18187A1:               Else
  loc_18187A7:                 var_86 = (var_86 - 1)
  loc_18187AE:                 Set var_10C = var_1C0(var_86)
  loc_18187B4:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(arg_18)
  loc_18187BD:                 var_F8 = CVar(CLng(var_164)) 'Long
  loc_18187C5:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(var_F8)
  loc_18187D3:               End If
  loc_18187D7:               Set var_10C = "')"(var_F8)
  loc_18187DD:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_18187EC:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_18187FC:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181880F:               var_204 = Val(CStr(var_F8))
  loc_1818819:               var_9C = (var_9C + var_204)
  loc_181882D:               Set var_10C = var_204(var_9C)
  loc_1818833:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1818842:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_1818852:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1818865:               var_204 = Val(CStr(var_F8))
  loc_181886F:               var_94 = (var_94 + var_204)
  loc_1818886:               var_B0 = (var_B0 + var_D0)
  loc_181888C:               var_B8 = var_D0
  loc_1818896:               var_B0 = (var_B0 + var_D0)
  loc_181889C:               var_B8 = var_D0
  loc_181889F:             End If
  loc_181889F:           End If
  loc_18188A2:         Else
  loc_18188C8:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_18188E2:           If (var_124 = "No") Then
  loc_1818924:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_1818937:           Else
  loc_1818997:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0)
  loc_181899C:             var_D0 = var_B8
  loc_18189B0:           End If
  loc_18189D6:           Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0)
  loc_1818A10:           Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)), var_B8)
  loc_1818A3A:           If CBool(var_B0 And (var_174 > 0)) Then
  loc_1818A44:             If (var_D0 > CDbl(0)) Then
  loc_1818A4B:               Set var_10C = var_204(var_94)
  loc_1818A51:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1818A60:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_1818A79:               LateIdCallSt
  loc_1818A8F:               Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_1818A95:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1818AA4:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1818ABD:               LateIdCallSt
  loc_1818AD5:               If (var_DA = 0) Then
  loc_1818ADC:                 Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_1818AE2:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1818AF1:                 var_144 = CVar((CLng("Limit") - 1)) 'Long
  loc_1818AF9:                 var_184 = CVar(CLng(2)) 'Long
  loc_1818B29:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1818B30:                 LateIdCallSt
  loc_1818B4D:               Else
  loc_1818B64:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_1818B98:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1818BAF:                 unk_5B2155.Execute CStr(var_134 & "')"), var_174, -1
  loc_1818BBA:                 Set var_E0 = var_1B8
  loc_1818BEE:                 If (var_E0.RecordCount > 0) Then
  loc_1818BF5:                   Set var_1B8 = var_1C0(var_1B8)
  loc_1818BFB:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_1818C0A:                   var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_1818C12:                   var_184 = CVar(CLng(2)) 'Long
  loc_1818C42:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1818C49:                   LateIdCallSt
  loc_1818C63:                 End If
  loc_1818C63:               End If
  loc_1818C67:               Set var_1B8 = var_134(var_1C0)
  loc_1818C6D:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_1818C7C:               var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_1818CBB:               LateIdCallSt
  loc_1818CD9:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_1818CDF:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1818CEE:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1818D04:               var_124 = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_1818D0B:               LateIdCallSt
  loc_1818D21:               Set var_1B8 = var_8C.Fields.Item("Name").Value(var_1C0)
  loc_1818D27:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1818D36:               var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_1818D75:               LateIdCallSt
  loc_1818D93:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_1818D99:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1818DA8:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1818DC1:               LateIdCallSt
  loc_1818DD7:               Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_1818DDD:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1818DEC:               var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1818E28:               LateIdCallSt
  loc_1818E44:               Set var_10C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7))))(var_1C0)
  loc_1818E4A:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_1818E59:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1818E61:               var_164 = CVar(CLng(8)) 'Long
  loc_1818E70:               LateIdCallSt
  loc_1818E7E:             End If
  loc_1818E82:             Set var_10C = arg_18(var_1C0)
  loc_1818E88:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_1818E97:             var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1818EA7:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1818EBA:             var_204 = Val(CStr("Sundry"))
  loc_1818EC4:             var_9C = (var_9C + var_204)
  loc_1818ED8:             Set var_10C = var_204(var_9C)
  loc_1818EDE:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1818EED:             var_F8 = CVar((CLng() - 1)) 'Long
  loc_1818EFD:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1818F10:             var_204 = Val(CStr("Sundry"))
  loc_1818F1A:             var_94 = (var_94 + var_204)
  loc_1818F31:             var_B0 = (var_B0 + var_D0)
  loc_1818F37:             var_B8 = var_D0
  loc_1818F3A:           End If
  loc_1818F3A:         End If
  loc_1818F3D:       Else
  loc_1818F48:         If (var_1D0 = "On Running Total") Then
  loc_1818F71:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_1818F8B:           If (var_124 = "No") Then
  loc_1818FC9:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1818FDC:           Else
  loc_1819038:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)))
  loc_181903D:             var_D0 = var_D0
  loc_1819051:           End If
  loc_1819077:           Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Rate")), var_D0, var_B8)
  loc_1819091:           If (var_124 > 0) Then
  loc_181909B:             If (var_D0 > CDbl(0)) Then
  loc_18190A2:               Set var_10C = var_94(var_B0)
  loc_18190A8:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_204)
  loc_18190B7:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_18190D0:               LateIdCallSt
  loc_18190E6:               Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_18190EC:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_18190FB:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1819114:               LateIdCallSt
  loc_181912C:               If (var_DA = 0) Then
  loc_1819133:                 Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_1819139:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1819148:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1819150:                 var_184 = CVar(CLng(2)) 'Long
  loc_1819180:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1819187:                 LateIdCallSt
  loc_18191A4:               Else
  loc_18191BB:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_18191EF:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1819206:                 unk_5B2155.Execute CStr(var_134 & "')"), var_174, -1
  loc_1819211:                 Set var_E0 = var_1B8
  loc_1819245:                 If (var_E0.RecordCount > 0) Then
  loc_181924C:                   Set var_1B8 = var_1C0(var_1B8)
  loc_1819252:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_1819261:                   var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_1819269:                   var_184 = CVar(CLng(2)) 'Long
  loc_1819299:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18192A0:                   LateIdCallSt
  loc_18192BA:                 End If
  loc_18192BA:               End If
  loc_18192BE:               Set var_1B8 = var_134(var_1C0)
  loc_18192C4:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_18192D3:               var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_1819312:               LateIdCallSt
  loc_1819330:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_1819336:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1819345:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181935E:               LateIdCallSt
  loc_1819374:               Set var_1B8 = CVar(CStr(var_B0))(var_1C0)
  loc_181937A:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1819389:               var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_18193C8:               LateIdCallSt
  loc_18193E6:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_18193EC:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_18193FB:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819414:               LateIdCallSt
  loc_181942A:               Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_1819430:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_181943F:               var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_181947E:               LateIdCallSt
  loc_181949C:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Sundry").Value))(var_1C0)
  loc_18194A2:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(7)))
  loc_18194B1:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_18194B9:               var_164 = CVar(CLng(8)) 'Long
  loc_18194C8:               LateIdCallSt
  loc_18194D6:             End If
  loc_18194DA:             Set var_10C = arg_18(var_1C0)
  loc_18194E0:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_18194EF:             var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_18194FF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1819512:             var_204 = Val(CStr("Sundry"))
  loc_181951C:             var_9C = (var_9C + var_204)
  loc_1819530:             Set var_10C = var_204(var_9C)
  loc_1819536:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_1819545:             var_F8 = CVar((CLng() - 1)) 'Long
  loc_1819555:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1819572:             var_94 = (var_94 + Val(CStr("Sundry")))
  loc_1819589:             var_B0 = (var_B0 + var_D0)
  loc_181958F:             var_B8 = var_D0
  loc_1819592:           End If
  loc_1819595:         Else
  loc_18195A0:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_18195E3:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1819621:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1819634:             Else
  loc_1819690:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)))
  loc_1819695:               var_D0 = var_D0
  loc_18196A9:             End If
  loc_18196B0:             If (var_D0 > CDbl(0)) Then
  loc_18196B7:               Set var_10C = var_B8(var_D0)
  loc_18196BD:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_B0)
  loc_18196CC:               var_F8 = CVar((CLng(var_94) - 1)) 'Long
  loc_18196E5:               LateIdCallSt
  loc_18196FB:               Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_1819701:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1819710:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1819729:               LateIdCallSt
  loc_1819741:               If (var_DA = 0) Then
  loc_1819748:                 Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_181974E:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_181975D:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1819765:                 var_184 = CVar(CLng(2)) 'Long
  loc_1819795:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_181979C:                 LateIdCallSt
  loc_18197B9:               Else
  loc_18197D0:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_1819804:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_181981B:                 unk_5B2155.Execute CStr(var_134 & "')"), var_174, -1
  loc_1819826:                 Set var_E0 = var_1B8
  loc_181985A:                 If (var_E0.RecordCount > 0) Then
  loc_1819861:                   Set var_1B8 = var_1C0(var_1B8)
  loc_1819867:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_1819876:                   var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_181987E:                   var_184 = CVar(CLng(2)) 'Long
  loc_18198AE:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18198B5:                   LateIdCallSt
  loc_18198CF:                 End If
  loc_18198CF:               End If
  loc_18198D3:               Set var_1B8 = var_134(var_1C0)
  loc_18198D9:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_18198E8:               var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_1819927:               LateIdCallSt
  loc_1819945:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_181994B:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_181995A:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819973:               LateIdCallSt
  loc_1819989:               Set var_1B8 = CVar(CStr(var_B8))(var_1C0)
  loc_181998F:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_181999E:               var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_18199DD:               LateIdCallSt
  loc_18199FB:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_1819A01:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1819A10:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819A29:               LateIdCallSt
  loc_1819A3F:               Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_1819A45:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1819A54:               var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1819A93:               LateIdCallSt
  loc_1819AB1:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Sundry").Value))(var_1C0)
  loc_1819AB7:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(7)))
  loc_1819AC6:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819ACE:               var_164 = CVar(CLng(8)) 'Long
  loc_1819ADD:               LateIdCallSt
  loc_1819AEB:             End If
  loc_1819AEF:             Set var_10C = arg_18(var_1C0)
  loc_1819AF5:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_1819B04:             var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1819B14:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1819B27:             var_204 = Val(CStr("Sundry"))
  loc_1819B31:             var_9C = (var_9C + var_204)
  loc_1819B45:             Set var_10C = var_204(var_9C)
  loc_1819B4B:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_1819B5A:             var_F8 = CVar((CLng(var_204) - 1)) 'Long
  loc_1819B6A:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1819B7D:             var_204 = Val(CStr("Sundry"))
  loc_1819B87:             var_94 = (var_94 + var_204)
  loc_1819B9E:             var_B0 = (var_B0 + var_D0)
  loc_1819BA4:             var_B8 = var_D0
  loc_1819BAA:           Else
  loc_1819BD0:             var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_1819BEA:             If (var_124 = "No") Then
  loc_1819C28:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1819C3B:             Else
  loc_1819C97:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)))
  loc_1819C9C:               var_D0 = var_D0
  loc_1819CB0:             End If
  loc_1819CD6:             Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B8)
  loc_1819D10:             Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)))
  loc_1819D3A:             If CBool(var_B0 And (var_174 > 0)) Then
  loc_1819D44:               If (var_D0 > CDbl(0)) Then
  loc_1819D4B:                 Set var_10C = var_204(var_94)
  loc_1819D51:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1819D60:                 var_F8 = CVar((CLng() - 1)) 'Long
  loc_1819D79:                 LateIdCallSt
  loc_1819D8F:                 Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_1819D95:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1819DA4:                 var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1819DBD:                 LateIdCallSt
  loc_1819DD5:                 If (var_DA = 0) Then
  loc_1819DDC:                   Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_1819DE2:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1819DF1:                   var_144 = CVar((CLng("Limit") - 1)) 'Long
  loc_1819DF9:                   var_184 = CVar(CLng(2)) 'Long
  loc_1819E29:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1819E30:                   LateIdCallSt
  loc_1819E4D:                 Else
  loc_1819E64:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_1819E98:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1819EAF:                   unk_5B2155.Execute CStr(var_134 & "')"), var_174, -1
  loc_1819EBA:                   Set var_E0 = var_1B8
  loc_1819EEE:                   If (var_E0.RecordCount > 0) Then
  loc_1819EF5:                     Set var_1B8 = var_1C0(var_1B8)
  loc_1819EFB:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_1819F0A:                     var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_1819F12:                     var_184 = CVar(CLng(2)) 'Long
  loc_1819F42:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1819F49:                     LateIdCallSt
  loc_1819F63:                   End If
  loc_1819F63:                 End If
  loc_1819F67:                 Set var_1B8 = var_134(var_1C0)
  loc_1819F6D:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_1819F7C:                 var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_1819FBB:                 LateIdCallSt
  loc_1819FD9:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_1819FDF:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1819FEE:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181A007:                 LateIdCallSt
  loc_181A01D:                 Set var_1B8 = CVar(CStr(var_A8))(var_1C0)
  loc_181A023:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_181A032:                 var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_181A071:                 LateIdCallSt
  loc_181A08F:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_181A095:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_181A0A4:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181A0BD:                 LateIdCallSt
  loc_181A0D3:                 Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_181A0D9:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_181A0E8:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_181A124:                 LateIdCallSt
  loc_181A140:                 Set var_10C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7))))(var_1C0)
  loc_181A146:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_181A155:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181A15D:                 var_164 = CVar(CLng(8)) 'Long
  loc_181A16C:                 LateIdCallSt
  loc_181A17A:               End If
  loc_181A17E:               Set var_10C = arg_18(var_1C0)
  loc_181A184:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_181A193:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181A1A3:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181A1B6:               var_204 = Val(CStr("Sundry"))
  loc_181A1C0:               var_9C = (var_9C + var_204)
  loc_181A1D4:               Set var_10C = var_204(var_9C)
  loc_181A1DA:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_181A1E9:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_181A1F9:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181A216:               var_94 = (var_94 + Val(CStr("Sundry")))
  loc_181A22D:               var_B0 = (var_B0 + var_D0)
  loc_181A233:               var_B8 = var_D0
  loc_181A236:             End If
  loc_181A236:           End If
  loc_181A236:         End If
  loc_181A236:       End If
  loc_181A236:     End If
  loc_181A23C:     var_86 = (var_86 + 1)
  loc_181A241:     Set var_1C0 = Nothing 
  loc_181A249:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_181A263:     Set var_10C = CVar(CLng(&H11))(CVar(CStr(var_9C)))
  loc_181A269:     LateIdCallSt
  loc_181A27A:     var_8C.MoveNext
  loc_181A27F:     GoTo loc_1818094
  loc_181A282:   End If
  loc_181A287:   Set var_8C = Nothing
  loc_181A28F:   Set var_C4 = Nothing
  loc_181A297:   Set var_C0 = Nothing
  loc_181A29F:   Set var_D8 = Nothing
  loc_181A2A7:   Set var_E0 = Nothing
  loc_181A2AA: End If
  loc_181A2AA: Exit Sub
End Sub

Public Sub Proc_258_162_F21398(arg_C, arg_10, arg_14) 'F21398
  'Data Table: 5B2118
  Dim unk_5B2155 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  Dim var_6000 As Variant
  loc_F212DD: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F2130F: unk_5B2155.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F2131A: Set var_90 = var_15C
  loc_F2134C: If (var_90.RecordCount > 0) Then
  loc_F2137A:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F2138A: Else
  loc_F2138D:   var_8C = CDbl(0)
  loc_F21390: End If
  loc_F21390: Proc_258_162_F21398 = var_8C
  loc_F21396: var_6000 = CVar(var_8C) 'Integer
End Sub

Public Sub Proc_258_163_13182FC
  'Data Table: 5B2118
  Dim var_E0 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_5B2155 As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_BC As Fields15
  Dim var_140 As Variant
  Dim var_150 As Double
  Dim var_164 As Variant
  Dim var_1A4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_13C As Variant
  Dim var_94 As Double
  Dim var_CC As Variant
  loc_1317BD5: Set var_BC = 1(var_86)
  loc_1317BDB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1317BF1: For var_D0 =  To CInt((CLng() - 1)):  = var_D0 'Integer
  loc_1317C0C:   Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_1317C12:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1317C25:   var_9C = Val(CStr())
  loc_1317C46:   Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H18)))
  loc_1317C4C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_1317C70:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(var_CC)
  loc_1317C80:   unk_5B2155.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_1317C8B:   Set var_8C = var_140
  loc_1317CB9:   If (var_8C.RecordCount > 0) Then
  loc_1317CBF:     var_A4 = CDbl(0)
  loc_1317CC2:     ' Referenced from: 1317E5E
  loc_1317CD1:     If Not(var_8C.EOF) Then
  loc_1317D07:       var_150 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1317D23:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + var_150)) * CDbl(&H64))
  loc_1317D4C:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(7)))
  loc_1317D52:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_1317E11:       var_28C = Round(((CVar(Val(CStr(var_150))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_1317E1A:       var_AC = CSng(var_28C)
  loc_1317E49:       var_A4 = (var_AC + var_A4)
  loc_1317E53:       var_B4 = (var_B4 + var_AC)
  loc_1317E59:       var_8C.MoveNext
  loc_1317E5E:       GoTo loc_1317CC2
  loc_1317E61:     End If
  loc_1317E76:     Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H1C)))
  loc_1317E7C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_B4)
  loc_1317E98:     If (CStr(var_A4) = "Y") Then
  loc_1317E9F:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_1317EBC:       var_CC = Round(var_9C, 2)
  loc_1317ECD:       Set var_BC = CVar(CLng(9))(CVar(CStr(var_CC)))
  loc_1317ED3:       LateIdCallSt
  loc_1317F00:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(9))))
  loc_1317F10:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1317F4D:       Set var_140 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_1317F53:       LateIdCallSt
  loc_1317F8A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_1317F9D:       var_150 = Val(CStr(1))
  loc_1317FC6:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_1317FCC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_1317FF3:       LateIdCallSt
  loc_1318029:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_131802F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_150(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_150)))))
  loc_131804C:       var_94 = (var_94 + Val(CStr(CVar(CLng(9)))))
  loc_131805B:     Else
  loc_1318081:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_1318087:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(9)))
  loc_13180AA:       LateIdCallSt
  loc_13180D8:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_13180DE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_94(CVar(CStr(Val(CStr(CVar(CLng(var_86))))))))
  loc_13180EE:       var_164 = CVar(CLng(var_86)) 'Long
  loc_13180F6:       var_1A4 = CVar(CLng(9)) 'Long
  loc_131812B:       Set var_140 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_1318131:       LateIdCallSt
  loc_1318168:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_131817B:       var_150 = Val(CStr(1))
  loc_13181A4:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_13181AA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_13181D1:       LateIdCallSt
  loc_1318207:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_131820D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_150(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_150)))))
  loc_131821D:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1318225:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1318260:       LateIdCallSt
  loc_1318291:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_1318297:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00")))))
  loc_13182B4:       var_94 = (var_94 + Val(CStr(1)))
  loc_13182C0:     End If
  loc_13182C4:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_13182DE:     Set var_BC = CVar(CLng(&H11))(CVar(CStr(var_A4)))
  loc_13182E4:     LateIdCallSt
  loc_13182F2:   End If
  loc_13182F5: Next var_D0 'Integer
  loc_13182FA: Exit Sub
End Sub

Public Sub Proc_258_164_133965C(arg_C) '133965C
  'Data Table: 5B2118
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_9C As Double
  Dim var_168 As String
  Dim unk_5B2155 As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_BC As Fields15
  Dim var_170 As Variant
  Dim var_180 As Double
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_94 As Double
  Dim var_CC As Variant
  loc_1338ED9: Set var_BC = 1(var_86)
  loc_1338EDF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1338EF5: For var_D0 =  To CInt((CLng() - 1)):  = var_D0 'Integer
  loc_1338F10:   Set var_BC = CVar(CLng(var_86))(CVar(CLng(1)))
  loc_1338F16:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1338F21:   var_120 = CVar(CStr()) 'String
  loc_1338F52:   If (Trim(var_120) = Trim(arg_C)) Then
  loc_1338F6A:     Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_1338F70:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1338F83:     var_9C = Val(CStr())
  loc_1338FA4:     Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H18)))
  loc_1338FAA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_1338FCE:     var_168 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(var_CC)
  loc_1338FDE:     unk_5B2155.Execute var_168 & "' ORDER BY SNO DESC", var_120, -1
  loc_1338FE9:     Set var_8C = var_170
  loc_1339017:     If (var_8C.RecordCount > 0) Then
  loc_133901D:       var_A4 = CDbl(0)
  loc_1339020:       ' Referenced from: 13391BC
  loc_133902F:       If Not(var_8C.EOF) Then
  loc_1339065:         var_180 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1339081:         var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + var_180)) * CDbl(&H64))
  loc_13390AA:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(7)))
  loc_13390B0:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_133916F:         var_28C = Round(((CVar(Val(CStr(Val(CStr(var_180))))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_1339178:         var_AC = CSng(var_28C)
  loc_13391A7:         var_A4 = (var_AC + var_A4)
  loc_13391B1:         var_B4 = (var_B4 + var_AC)
  loc_13391B7:         var_8C.MoveNext
  loc_13391BC:         GoTo loc_1339020
  loc_13391BF:       End If
  loc_13391D4:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H1C)))
  loc_13391DA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_B4)
  loc_13391F6:       If (CStr(var_A4) = "Y") Then
  loc_13391FD:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_133921A:         var_CC = Round(var_9C, 2)
  loc_133922B:         Set var_BC = CVar(CLng(9))(CVar(CStr(var_CC)))
  loc_1339231:         LateIdCallSt
  loc_133925E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(9))))
  loc_133926E:         var_194 = CVar(CLng(var_86)) 'Long
  loc_13392AB:         Set var_170 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_13392B1:         LateIdCallSt
  loc_13392E8:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_13392FB:         var_180 = Val(CStr(1))
  loc_1339324:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_133932A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_1339351:         LateIdCallSt
  loc_1339387:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_133938D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_180(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_180)))))
  loc_13393AA:         var_94 = (var_94 + Val(CStr(CVar(CLng(9)))))
  loc_13393B9:       Else
  loc_13393DF:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_13393E5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(9)))
  loc_1339408:         LateIdCallSt
  loc_1339436:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_133943C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_94(CVar(CStr(Val(CStr(CVar(CLng(var_86))))))))
  loc_133944C:         var_194 = CVar(CLng(var_86)) 'Long
  loc_1339454:         var_1B4 = CVar(CLng(9)) 'Long
  loc_1339489:         Set var_170 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_133948F:         LateIdCallSt
  loc_13394C6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_13394D9:         var_180 = Val(CStr(1))
  loc_1339502:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_1339508:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_133952F:         LateIdCallSt
  loc_1339565:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_133956B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_180(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_180)))))
  loc_133957B:         var_194 = CVar(CLng(var_86)) 'Long
  loc_1339583:         var_1B4 = CVar(CLng(&HA)) 'Long
  loc_13395BE:         LateIdCallSt
  loc_13395EF:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_13395F5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00")))))
  loc_1339612:         var_94 = (var_94 + Val(CStr(1)))
  loc_133961E:       End If
  loc_1339622:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_133963C:       Set var_BC = CVar(CLng(&H11))(CVar(CStr(var_A4)))
  loc_1339642:       LateIdCallSt
  loc_1339650:     End If
  loc_1339650:   End If
  loc_1339653: Next var_D0 'Integer
  loc_1339658: Exit Sub
End Sub

Public Sub Proc_258_165_F81234
  'Data Table: 5B2118
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_D0 As ListImage
  Dim var_DC As Image
  loc_F81100: (0).Enabled = 
  loc_F81114: (0).Visible = 
  loc_F81123: Set var_8C = (var_8E)
  loc_F81129: Call 0.Method_Proc_258_165_F812344 ()
  loc_F8113B: Set var_94 = var_86(var_96)
  loc_F81141: Call 0.Method_Proc_258_165_F812348 (var_8E)
  loc_F81150: For var_9A =  To var_96:  = var_9A 'Integer
  loc_F81162:   Set var_8C = var_94(var_86)
  loc_F81168:   Call 0.Method_Proc_258_165_F812340 (0)
  loc_F81170:   var_94.FontBold = 
  loc_F8118B:   Set var_8C = var_94(var_86)
  loc_F81191:   Call 0.Method_Proc_258_165_F812340 (&HFF)
  loc_F81199:   var_94.ForeColor = 
  loc_F811B4:   Set var_8C = var_D0(2)
  loc_F811BA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_D4)
  loc_F811CB:    = .ControlDefault
  loc_F811D3:    = var_D0.Picture
  loc_F811E8:   Set var_D8 = var_DC(var_86)
  loc_F811EE:   Call 0.Method_Proc_258_165_F812340 (var_D4)
  loc_F811F6:   var_DC.Picture = 
  loc_F81214: Next var_9A 'Integer
  loc_F81219: Call Proc_258_136_143EE54()
  loc_F8122B: ("Update &Cash Register").Caption = 
  loc_F81233: Exit Sub
End Sub

Public Sub Proc_258_166_16C2EE8(arg_C, arg_10) '16C2EE8
  'Data Table: 5B2118
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_90 As Double
  Dim var_114 As String
  Dim var_140 As String
  Dim unk_5B2155 As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Fields15
  Dim var_C8 As String
  Dim var_98 As Double
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_1D8 As Variant
  Dim var_1A4 As String
  Dim var_1C8 As Fields15
  Dim var_E8 As Variant
  Dim Me As Variant
  Dim var_22C As Double
  Dim var_138 As TextBox
  Dim var_A4 As Double
  Dim var_88 As Recordset15
  Dim var_1C4 As Variant
  loc_16C155C: Set var_B8 = var_9A(var_BA)
  loc_16C1562: Call 0.Method_Proc_258_166_16C2EE88 (1)
  loc_16C156D: For var_BE =  To var_BA:  = var_BE 'Integer
  loc_16C1580:   Set var_B8 = var_C4(var_9A)
  loc_16C1586:   Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C158E:    = var_C4.Tag
  loc_16C15C0:   Set var_10C = var_110(var_9A)
  loc_16C15C6:   Call 0.Method_Proc_258_166_16C2EE80 (var_114)
  loc_16C15CE:   (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "ADD")) = var_110.Text
  loc_16C15E4:   var_134 =  And (CDbl(Val(var_114)) > CDbl(0))
  loc_16C15F5:   Set var_138 = var_13C(var_9A)
  loc_16C15FB:   Call 0.Method_Proc_258_166_16C2EE80 (var_140)
  loc_16C1603:   var_134 = var_13C.Text
  loc_16C1619:   var_160 =  And (CDbl(Val(var_140)) <= CDbl(0))
  loc_16C1642:   If CBool(var_160) Then
  loc_16C1652:     Set var_B8 = var_C4(var_9A)
  loc_16C1658:     Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1660:      = var_C4.Text
  loc_16C166D:     var_90 = Val(var_C8)
  loc_16C167A:   End If
  loc_16C1687:   Set var_B8 = var_C4(var_9A)
  loc_16C168D:   Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1695:   var_90 = var_C4.Tag
  loc_16C169D:   var_D8 = CVar(var_C8) 'String
  loc_16C16A3:   var_E8 = Trim(var_D8)
  loc_16C16C8:   If (var_E8 = CVar(MemVar_1F95078 & "DED")) Then
  loc_16C16D9:     Set var_B8 = var_C4(CInt(&HB))
  loc_16C16DF:     Call 0.Method_Proc_258_166_16C2EE80 (var_BA)
  loc_16C16E7:      = var_C4.Visible
  loc_16C16F9:     If (var_BA = &HFF) Then
  loc_16C171A:       Set var_B8 = var_C4(CInt(&HB))
  loc_16C1720:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8, "SELECT ADVAMT FROM PackingOrder where Docid='", var_D8)
  loc_16C1728:       -1 = var_C4.Tag
  loc_16C1731:       var_114 = var_10C & var_C8
  loc_16C1741:       unk_5B2155.Execute var_114 & "'", , 
  loc_16C174C:       Set var_B4 = var_10C
  loc_16C1778:       If (var_B4.RecordCount > 0) Then
  loc_16C179A:         var_D8 = CVar(var_B4.Fields.Item("AdvAmt")) 'Address
  loc_16C17A1:         Proc_6_39_E7D3A0(var_E8)
  loc_16C17BB:         If CBool(var_E8 <> 0) Then
  loc_16C17D8:           var_C4 = var_B4.Fields.Item("AdvAmt")
  loc_16C17E9:           var_C8 = CStr(var_C4.Value)
  loc_16C17F1:           var_98 = Val(var_C8)
  loc_16C1804:         Else
  loc_16C1811:           Set var_B8 = var_C4(var_9A)
  loc_16C1817:           Call 0.Method_Proc_258_166_16C2EE80 (var_C8, var_98)
  loc_16C181F:           var_D8 = var_C4.Text
  loc_16C182C:           var_98 = Val(var_C8)
  loc_16C1839:         End If
  loc_16C1839:       End If
  loc_16C183C:     Else
  loc_16C1849:       Set var_B8 = var_C4(var_9A)
  loc_16C184F:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1857:       var_98 = var_C4.Text
  loc_16C1864:       var_98 = Val(var_C8)
  loc_16C1871:     End If
  loc_16C1871:   End If
  loc_16C187E:   Set var_B8 = var_C4(var_9A)
  loc_16C1884:   Call 0.Method_Proc_258_166_16C2EE80 (vbNullString)
  loc_16C188C:   var_C4.Text = var_98
  loc_16C18A5:   Set var_B8 = var_C4(var_9A)
  loc_16C18AB:   Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C18B3:    = var_C4.Tag
  loc_16C18E6:   If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_16C18EE:     var_A6 = CByte(var_9A) 'Byte
  loc_16C18F2:   End If
  loc_16C1912:   var_C8 = "Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F95078
  loc_16C1929:   Set var_B8 = var_C4(var_9A)
  loc_16C192F:   Call 0.Method_Proc_258_166_16C2EE80 (var_114, CVar(var_C8 & "' and Code='"), var_160, -1)
  loc_16C1937:   var_10C = var_C4.Tag
  loc_16C1964:   unk_5B2155.Execute CStr(var_110 & Trim(CVar(var_114)) & "'"), 0, var_138
  loc_16C196C:    = var_10C.Fields
  loc_16C1974:    = var_110.Item()
  loc_16C1983:   var_194 = Trim(CVar(var_138))
  loc_16C198E:   var_1D8 = 0
  loc_16C19C0:   var_1A4 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='" & MemVar_1F95078 & "ST'"
  loc_16C19C9:   unk_5B2155.Execute var_1A4, var_1C4, -1
  loc_16C19D1:   var_13C = var_13C.Fields
  loc_16C19D9:   var_1D8 = var_1C8.Item(var_1C8)
  loc_16C1A29:   If (var_1DC = Trim(CVar(var_1DC))) Then
  loc_16C1A31:     var_A8 = CByte(var_9A) 'Byte
  loc_16C1A3B:     global_144 = var_9A
  loc_16C1A3E:   End If
  loc_16C1A41: Next var_BE 'Integer
  loc_16C1A52: Set var_B8 = var_9A(var_BA)
  loc_16C1A58: Call 0.Method_Proc_258_166_16C2EE88 (2)
  loc_16C1A63: For var_210 =  To var_BA:  = var_210 'Integer
  loc_16C1A76:   Set var_B8 = var_C4(var_9A)
  loc_16C1A7C:   Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1A84:    = var_C4.Tag
  loc_16C1AB7:   If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_16C1AC7:     Set var_B8 = var_C4(var_9A)
  loc_16C1ACD:     Call 0.Method_Proc_258_166_16C2EE80 (vbNullString)
  loc_16C1AD5:     var_C4.Text = 
  loc_16C1AEB:     If (var_A8 > var_A6) Then
  loc_16C1AF7:       Set var_B8 = 1(var_9C)
  loc_16C1AFD:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C1B13:       For var_214 =  To CInt((CLng() - 1)):  = var_214 'Integer
  loc_16C1B2E:         Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(1)))
  loc_16C1B34:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C1B58:         var_108 = Trim(arg_10)
  loc_16C1B70:         If (Trim(CVar(CStr())) = var_108) Then
  loc_16C1B80:           Set var_B8 = var_C4(var_9A)
  loc_16C1B86:           Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1B8E:            = var_C4.Tag
  loc_16C1BC1:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_16C1BD9:             Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&H13)))
  loc_16C1BDF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C1BFB:             If (CStr() = "Y") Then
  loc_16C1C09:               If (global_192 = "RO") Then
  loc_16C1C4B:                 var_E8 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_16C1C62:                 unk_5B2155.Execute CStr(var_E8 & vbNullString), var_108, -1
  loc_16C1C6D:                 Set var_B4 = var_10C
  loc_16C1C9B:                 If (var_B4.RecordCount > 0) Then
  loc_16C1CC4:                   Proc_6_39_E7D3A0(var_E8, CVar(var_B4.Fields.Item("RSDisc")))
  loc_16C1CDE:                   If (var_E8 > 0) Then
  loc_16C1D07:                     Proc_6_39_E7D3A0(var_E8, CVar(var_B4.Fields.Item("RSDisc")))
  loc_16C1D1D:                     Set var_10C = var_110(var_9A)
  loc_16C1D23:                     Call 0.Method_Proc_258_166_16C2EE80 (CStr(var_E8))
  loc_16C1D2B:                     var_110.Text = var_10C
  loc_16C1D43:                     GoTo loc_16C1D46
  loc_16C1D46:                     ' Referenced from: 16C1D43
  loc_16C1D46:                   End If
  loc_16C1D46:                 End If
  loc_16C1D46:                 GoTo loc_16C1D49
  loc_16C1D49:                 ' Referenced from: 16C1D46
  loc_16C1D49:               End If
  loc_16C1D49:             End If
  loc_16C1D49:           End If
  loc_16C1D5E:           Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&HA)))
  loc_16C1D64:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C1D6F:           var_C8 = CStr()
  loc_16C1D86:           Set var_C4 = var_10C(var_9A)
  loc_16C1D8C:           Call 0.Method_Proc_258_166_16C2EE80 (CStr(Val(var_C8)))
  loc_16C1D94:           var_10C.Caption = 
  loc_16C1DB9:           Set var_B8 = var_C4(var_9A)
  loc_16C1DBF:           Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1DC7:            = var_C4.Tag
  loc_16C1DFA:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_16C1E0A:             Set var_B8 = var_C4(var_9A)
  loc_16C1E10:             Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1E18:              = var_C4.Text
  loc_16C1E25:             var_22C = Val(var_C8)
  loc_16C1E3D:             Set var_10C = CVar(CLng(var_9C))(CVar(CLng(&HF)))
  loc_16C1E43:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C1E75:             var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C1E92:             Set var_110 = var_138(var_9A)
  loc_16C1E98:             Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(Trim(CVar(var_C8)), "0.00")), 1)
  loc_16C1EA0:             var_138.Text = 1
  loc_16C1EC6:           End If
  loc_16C1EC6:         End If
  loc_16C1EC9:       Next var_214 'Integer
  loc_16C1ED1:     Else
  loc_16C1EDA:       Set var_B8 = 1(var_9C)
  loc_16C1EE0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C1EF6:       For var_238 =  To CInt((CLng() - 1)):    = var_238 'Integer
  loc_16C1F11:         Set var_B8 = CVar(CLng(var_9A))(CVar(CLng(1)))
  loc_16C1F17:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C1F53:         If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_16C1F63:           Set var_B8 = var_C4(var_9A)
  loc_16C1F69:           Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C1F71:            = var_C4.Tag
  loc_16C1FA4:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_16C1FBC:             Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&H13)))
  loc_16C1FC2:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C1FCD:             var_C8 = CStr()
  loc_16C1FDE:             If (var_C8 = "Y") Then
  loc_16C1FE5:               var_124 = CVar(CLng(var_9C)) 'Long
  loc_16C1FFF:               Set var_B8 = var_C4(var_9A)
  loc_16C2005:               Call 0.Method_Proc_258_166_16C2EE80 (var_C8, CVar(CLng(&HE)))
  loc_16C200D:               var_124 = var_C4.Text
  loc_16C2024:               Set var_10C = (CVar(CStr(Val(var_C8))))
  loc_16C202A:               LateIdCallSt
  loc_16C2041:             End If
  loc_16C2041:           End If
  loc_16C2056:           Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&HA)))
  loc_16C205C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10C)
  loc_16C2067:           var_C8 = CStr()
  loc_16C207E:           Set var_C4 = var_10C(var_9A)
  loc_16C2084:           Call 0.Method_Proc_258_166_16C2EE80 (CStr(Val(var_C8)))
  loc_16C208C:           var_10C.Caption = 
  loc_16C20B1:           Set var_B8 = var_C4(var_9A)
  loc_16C20B7:           Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C20BF:            = var_C4.Tag
  loc_16C20F2:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_16C2102:             Set var_B8 = var_C4(var_9A)
  loc_16C2108:             Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C2110:              = var_C4.Text
  loc_16C211D:             var_22C = Val(var_C8)
  loc_16C2135:             Set var_10C = CVar(CLng(var_9C))(CVar(CLng(&HF)))
  loc_16C213B:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C216D:             var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C218A:             Set var_110 = var_138(var_9A)
  loc_16C2190:             Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(Trim(CVar(var_C8)), "0.00")), 1)
  loc_16C2198:             var_138.Text = 1
  loc_16C21BE:           End If
  loc_16C21BE:         End If
  loc_16C21C1:       Next var_238 'Integer
  loc_16C21C6:     End If
  loc_16C21C9:   Else
  loc_16C21D6:     Set var_B8 = var_C4(var_9A)
  loc_16C21DC:     Call 0.Method_Proc_258_166_16C2EE80 (var_BA)
  loc_16C21E4:      = var_C4.Visible
  loc_16C21F6:     If (var_BA = &HFF) Then
  loc_16C21FF:       Call Proc_258_159_1298F9C(var_9A)
  loc_16C2207:       var_A4 = var_22C
  loc_16C2217:       Set var_B8 = var_C4(var_9A)
  loc_16C221D:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8, var_A4)
  loc_16C2225:       var_22C = var_C4.Text
  loc_16C2272:       Set var_10C = var_110(var_9A)
  loc_16C2278:       Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(CVar(((var_A4 * Val(var_C8)) / CDbl(&H64))), "0.00")), 1)
  loc_16C2280:       var_110.Text = 1
  loc_16C22AD:       Set var_B8 = var_C4(var_9A)
  loc_16C22B3:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C22BB:       var_22C = var_C4.Tag
  loc_16C2303:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_16C232E:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_16C233C:         Set var_B8 = var_C4(var_9A)
  loc_16C2342:         Call 0.Method_Proc_258_166_16C2EE80 (var_C8, 1)
  loc_16C234A:         var_C4.Text = 1
  loc_16C2360:       End If
  loc_16C236D:       Set var_B8 = var_C4(var_9A)
  loc_16C2373:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C237B:        = var_C4.Tag
  loc_16C23C3:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DED")) And (var_90 > CDbl(0))) Then
  loc_16C23FC:         Set var_B8 = var_C4(var_9A)
  loc_16C2402:         Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(var_98, "0.00")), 1)
  loc_16C240A:         var_C4.Text = 1
  loc_16C2420:       End If
  loc_16C2425:       var_C8 = CStr(var_A4)
  loc_16C2432:       Set var_B8 = var_C4(var_9A)
  loc_16C2438:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C2440:       var_C4.Caption = 
  loc_16C2452:     Else
  loc_16C245F:       Set var_B8 = var_C4(var_9A)
  loc_16C2465:       Call 0.Method_Proc_258_166_16C2EE80 (var_BA)
  loc_16C246D:        = var_C4.Visible
  loc_16C2478:       var_124 = (var_BA = 0)
  loc_16C2489:       Set var_10C = var_110(var_9A)
  loc_16C248F:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C2497:       var_124 = var_110.Tag
  loc_16C24D8:       If CBool( And (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "ADD"))) Then
  loc_16C2503:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_16C2511:         Set var_B8 = var_C4(var_9A)
  loc_16C2517:         Call 0.Method_Proc_258_166_16C2EE80 (var_C8, 1)
  loc_16C251F:         var_C4.Text = 1
  loc_16C2538:       Else
  loc_16C2545:         Set var_B8 = var_C4(var_9A)
  loc_16C254B:         Call 0.Method_Proc_258_166_16C2EE80 (var_BA)
  loc_16C2553:          = var_C4.Visible
  loc_16C255E:         var_124 = (var_BA = 0)
  loc_16C256F:         Set var_10C = var_110(var_9A)
  loc_16C2575:         Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C257D:         var_124 = var_110.Tag
  loc_16C25BE:         If CBool( And (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DED"))) Then
  loc_16C25E9:           var_C8 = CStr(Format(var_98, "0.00"))
  loc_16C25F7:           Set var_B8 = var_C4(var_9A)
  loc_16C25FD:           Call 0.Method_Proc_258_166_16C2EE80 (var_C8, 1)
  loc_16C2605:           var_C4.Text = 1
  loc_16C261B:         End If
  loc_16C261B:       End If
  loc_16C261B:     End If
  loc_16C261B:   End If
  loc_16C261E: Next var_210 'Integer
  loc_16C262C: Set var_B8 = 1(var_9A)
  loc_16C2632: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C2648: For var_23C =  To CInt((CLng() - 1)):  = var_23C 'Integer
  loc_16C2663:   Set var_B8 = CVar(CLng(var_9A))(CVar(CLng(1)))
  loc_16C2669:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C26A5:   If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_16C26B4:     Set var_B8 = var_C4(1)
  loc_16C26BA:     Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C26C2:      = var_C4.Text
  loc_16C26CF:     var_22C = Val(var_C8)
  loc_16C26E7:     Set var_10C = CVar(CLng(var_9A))(CVar(CLng(&HA)))
  loc_16C26ED:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C271F:     var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C273B:     Set var_110 = var_138(1)
  loc_16C2741:     Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(CVar(CStr()), "0.00")), 1)
  loc_16C2749:     var_138.Text = 1
  loc_16C276F:   End If
  loc_16C2772: Next var_23C 'Integer
  loc_16C277B: Set var_B8 = Me.TopCtrl1
  loc_16C2781: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_16C2789: var_C8 = CStr()
  loc_16C2795: Set var_C4 = Me.TopCtrl1
  loc_16C279B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((var_C8 = "Add"))
  loc_16C27C1: If ( Or (CStr() = "Edit")) Then
  loc_16C27D0:   Set var_B8 = var_9A(var_BA)
  loc_16C27D6:   Call 0.Method_Proc_258_166_16C2EE88 (2)
  loc_16C27E1:   For var_240 =  To var_BA:  = var_240 'Integer
  loc_16C27F4:     Set var_B8 = var_C4(var_9A)
  loc_16C27FA:     Call 0.Method_Proc_258_166_16C2EE80 (var_BA)
  loc_16C2802:      = var_C4.Visible
  loc_16C280D:     var_124 = (var_BA = &HFF)
  loc_16C281E:     Set var_10C = var_110(var_9A)
  loc_16C2824:     Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C282C:     var_124 = var_110.Tag
  loc_16C286D:     If CBool( And (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "SCH"))) Then
  loc_16C2879:       Call Proc_258_160_126D2D8(var_9A, arg_10)
  loc_16C2881:       var_A4 = var_22C
  loc_16C2891:       Set var_B8 = var_C4(var_9A)
  loc_16C2897:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8, var_A4)
  loc_16C289F:       var_22C = var_C4.Text
  loc_16C28AC:       var_22C = Val(var_C8)
  loc_16C28EC:       Set var_10C = var_110(var_9A)
  loc_16C28F2:       Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(CVar(((var_A4 * var_22C) / CDbl(&H64))), "0.00")), 1)
  loc_16C28FA:       var_110.Text = 1
  loc_16C291F:       var_C8 = CStr(var_A4)
  loc_16C292C:       Set var_B8 = var_C4(var_9A)
  loc_16C2932:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C293A:       var_C4.Caption = var_22C
  loc_16C2949:     End If
  loc_16C294C:   Next var_240 'Integer
  loc_16C2951: End If
  loc_16C2955: Set var_B8 = ()
  loc_16C295B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C2970: If (CLng() > 1) Then
  loc_16C2980:   Set var_B8 = (1)
  loc_16C2986:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_16C298E: End If
  loc_16C29A0: Set var_B8 = 0(var_9C)
  loc_16C29A6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CDbl(0))
  loc_16C29BC: For var_244 =  To CInt((CLng() - 1)):  = var_244 'Integer
  loc_16C29D7:   Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(8)))
  loc_16C29DD:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C2A19:   If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_16C2A28:     Set var_B8 = var_9A(var_BA)
  loc_16C2A2E:     Call 0.Method_Proc_258_166_16C2EE88 (1)
  loc_16C2A39:     For var_248 =  To var_BA:  = var_248 'Integer
  loc_16C2A4C:       Set var_B8 = var_C4(var_9A)
  loc_16C2A52:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C2A5A:        = var_C4.Tag
  loc_16C2A85:       Set var_10C = CVar(CLng(var_9C))(CVar(CLng(7)))
  loc_16C2A8B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(Trim(CVar(var_C8)))
  loc_16C2ABC:       If ( = Trim(CVar(CStr()))) Then
  loc_16C2ACC:         Set var_B8 = var_C4(var_9A)
  loc_16C2AD2:         Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C2ADA:          = var_C4.Text
  loc_16C2AE7:         var_22C = Val(var_C8)
  loc_16C2AFF:         Set var_10C = CVar(CLng(var_9C))(CVar(CLng(6)))
  loc_16C2B05:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C2B37:         var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C2B54:         Set var_110 = var_138(var_9A)
  loc_16C2B5A:         Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(Trim(CVar(var_C8)), "0.00")), 1)
  loc_16C2B62:         var_138.Text = 1
  loc_16C2B88:       End If
  loc_16C2B8B:     Next var_248 'Integer
  loc_16C2B90:   End If
  loc_16C2B93: Next var_244 'Integer
  loc_16C2BA4: Set var_B8 = var_9A(var_BA)
  loc_16C2BAA: Call 0.Method_Proc_258_166_16C2EE88 (2)
  loc_16C2BB5: For var_24C =  To var_BA:  = var_24C 'Integer
  loc_16C2BC8:   Set var_B8 = var_C4(var_9A)
  loc_16C2BCE:   Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C2BD6:    = var_C4.Tag
  loc_16C2BDE:   var_D8 = CVar(var_C8) 'String
  loc_16C2C09:   If (Trim(var_D8) = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_16C2C15:     Call Proc_258_160_126D2D8(var_9A, arg_10)
  loc_16C2C1D:     var_A4 = var_22C
  loc_16C2C38:     Call 0.Method_Proc_258_166_16C2EE80 (CStr(var_A4), var_A4)
  loc_16C2C40:     var_C4.Caption = var_22C
  loc_16C2C65:     unk_5B2155.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_D8, -1
  loc_16C2C70:     Set var_88 = var_C4(var_9A)
  loc_16C2C8D:     If (var_88.RecordCount > 0) Then
  loc_16C2CA7:       var_C4 = var_88.Fields.Item("RoundOffType")
  loc_16C2CD3:       Proc_6_85_12628F0(var_A4, CByte(2))
  loc_16C2CD8:       var_22C = CStr(Left(CVar(var_C4), 1))
  loc_16C2D10:       Set var_10C = var_110(var_9A)
  loc_16C2D16:       Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(CVar(var_22C), "0.00")), 1, 1)
  loc_16C2D1E:       var_110.Text = var_22C
  loc_16C2D43:     Else
  loc_16C2D46:       var_C8 = "S"
  loc_16C2D57:       Proc_6_85_12628F0(var_A4, CByte(2))
  loc_16C2D5C:       var_22C = var_C8
  loc_16C2D86:       var_114 = CStr(Format(CVar(var_22C), "0.00"))
  loc_16C2D94:       Set var_B8 = var_C4(var_9A)
  loc_16C2D9A:       Call 0.Method_Proc_258_166_16C2EE80 (var_114, 1, 1)
  loc_16C2DA2:       var_C4.Text = var_22C
  loc_16C2DBE:     End If
  loc_16C2DC1:   Else
  loc_16C2DC8:     If (var_9A <> arg_C) Then
  loc_16C2DD8:       Set var_B8 = var_C4(var_9A)
  loc_16C2DDE:       Call 0.Method_Proc_258_166_16C2EE80 (var_C8)
  loc_16C2DE6:       var_B8 = var_C4.Tag
  loc_16C2E18:       Set var_10C = var_110(var_9A)
  loc_16C2E1E:       Call 0.Method_Proc_258_166_16C2EE80 (var_114)
  loc_16C2E26:       (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "TOT")) = var_110.Tag
  loc_16C2E6B:       If CBool( Or (Trim(CVar(var_114)) = CVar(MemVar_1F95078 & "NET"))) Then
  loc_16C2E77:         Call Proc_258_160_126D2D8(var_9A, arg_10)
  loc_16C2EB1:         Set var_B8 = var_C4(var_9A)
  loc_16C2EB7:         Call 0.Method_Proc_258_166_16C2EE80 (CStr(Format(CVar(var_22C), "0.00")), 1)
  loc_16C2EBF:         var_C4.Text = 1
  loc_16C2ED7:       End If
  loc_16C2ED7:     End If
  loc_16C2ED7:   End If
  loc_16C2EDA: Next var_24C 'Integer
  loc_16C2EE4: Set var_88 = Nothing
  loc_16C2EE7: Exit Sub
End Sub

Public Sub Proc_258_167_10D9B94
  'Data Table: 5B2118
  Dim var_88 As Integer
  loc_10D9898: Set var_8C = var_86(var_8E)
  loc_10D989E: Call 0.Method_Proc_258_167_10D9B948 (0)
  loc_10D98A9: For var_92 =  To var_8E:  = var_92 'Integer
  loc_10D98BE:   Set var_8C = var_98(var_86)
  loc_10D98C4:   Call 0.Method_Proc_258_167_10D9B940 (False)
  loc_10D98CC:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D98DB: Next var_92 'Integer
  loc_10D98E9: Set var_8C = 1(var_86)
  loc_10D98EF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_10D9905: For var_CC =  To CInt((CLng() - 1)):  = var_CC 'Integer
  loc_10D9920:   Set var_8C = CVar(CLng(var_86))(CVar(CLng(&H1F)))
  loc_10D9926:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_10D9939:   var_100 = Proc_6_38_E69628(CVar(CStr()))
  loc_10D994E:   If (var_100 = "Beverage") Then
  loc_10D995E:     Set var_8C = var_98(0)
  loc_10D9964:     Call 0.Method_Proc_258_167_10D9B940 (True)
  loc_10D996C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D997B:   Else
  loc_10D9983:     If (var_100 = "Confectionary") Then
  loc_10D9993:       Set var_8C = var_98(1)
  loc_10D9999:       Call 0.Method_Proc_258_167_10D9B940 (True)
  loc_10D99A1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D99B0:     Else
  loc_10D99B8:       If (var_100 = "Food") Then
  loc_10D99C8:         Set var_8C = var_98(2)
  loc_10D99CE:         Call 0.Method_Proc_258_167_10D9B940 (True)
  loc_10D99D6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D99E5:       Else
  loc_10D99ED:         If (var_100 = "Liquor") Then
  loc_10D99FD:           Set var_8C = var_98(3)
  loc_10D9A03:           Call 0.Method_Proc_258_167_10D9B940 (True)
  loc_10D9A0B:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D9A1A:         Else
  loc_10D9A22:           If (var_100 = "Tobacco") Then
  loc_10D9A32:             Set var_8C = var_98(4)
  loc_10D9A38:             Call 0.Method_Proc_258_167_10D9B940 (True)
  loc_10D9A40:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D9A4F:           Else
  loc_10D9A57:             If (var_100 = "Miscellaneous") Then
  loc_10D9A67:               Set var_8C = var_98(5)
  loc_10D9A6D:               Call 0.Method_Proc_258_167_10D9B940 (True)
  loc_10D9A75:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D9A81:             End If
  loc_10D9A81:           End If
  loc_10D9A81:         End If
  loc_10D9A81:       End If
  loc_10D9A81:     End If
  loc_10D9A81:   End If
  loc_10D9A84: Next var_CC 'Integer
  loc_10D9A95: Set var_8C = var_86(var_8E)
  loc_10D9A9B: Call 0.Method_Proc_258_167_10D9B948 (0)
  loc_10D9AA6: For var_104 =  To var_8E:  = var_104 'Integer
  loc_10D9AB6:   Set var_8C = var_98(var_86)
  loc_10D9ABC:   Call 0.Method_Proc_258_167_10D9B940 ()
  loc_10D9AC4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D9ADA:   If (CBool() = &HFF) Then
  loc_10D9AE7:     Set var_8C = var_98(var_88)
  loc_10D9AED:     Call 0.Method_Proc_258_167_10D9B940 ()
  loc_10D9AF5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_10D9B0D:     Set var_108 = var_10C(var_86)
  loc_10D9B13:     Call 0.Method_Proc_258_167_10D9B940 (CVar(CDbl()))
  loc_10D9B1B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_10D9B34:     var_88 = (var_88 + 1)
  loc_10D9B45:     Set var_8C = var_98(var_86)
  loc_10D9B4B:     Call 0.Method_Proc_258_167_10D9B940 (True)
  loc_10D9B53:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(var_88)
  loc_10D9B62:   Else
  loc_10D9B71:     Set var_8C = var_98(var_86)
  loc_10D9B77:     Call 0.Method_Proc_258_167_10D9B940 (False)
  loc_10D9B7F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_10D9B8B:   End If
  loc_10D9B8E: Next var_104 'Integer
  loc_10D9B93: Exit Sub
End Sub

Public Sub Proc_258_168_EB7024(arg_C) 'EB7024
  'Data Table: 5B2118
  Dim var_C8 As Integer
  Dim unk_5B2155 As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Fields15
  Dim var_CC As Field20
  Dim var_86 As Integer
  loc_EB6FA2: var_C8 = 0
  loc_EB6FCF: unk_5B2155.Execute "Select Count(*) From Paycharge Where Docid='" & arg_C & "'", var_B0, -1
  loc_EB6FD7: var_B4 = var_B4.Fields
  loc_EB6FDF: var_C8 = var_B8.Item(var_B8)
  loc_EB6FE7: var_CC = var_CC.Value
  loc_EB700E: If (var_DC > 0) Then
  loc_EB7013:   var_86 = &HFF
  loc_EB7019: Else
  loc_EB701B:   var_86 = 0
  loc_EB701E: End If
  loc_EB701E: Proc_258_168_EB7024 = var_86
End Sub
