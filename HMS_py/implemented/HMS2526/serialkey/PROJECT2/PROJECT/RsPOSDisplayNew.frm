VERSION 5.00
Begin VB.Form RsPOSDisplayNew
  Caption = "Table Status"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPOSDisplayNew.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14670
  ClientHeight = 9135
  BeginProperty Font
    Name = "Tahoma"
    Size = 9
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8685
    Width = 14670
    Height = 450
    Visible = 0   'False
    TabIndex = 10
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 1000
    Left = 9930
    Top = 3015
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 0
    Width = 5925
    Height = 3450
    TabIndex = 0
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh HeadRigt
    Left = 60
    Top = 6600
    Width = 945
    Height = 540
    TabIndex = 7
  End
  Begin BtnEnh HeadLeft
    Left = 1020
    Top = 6600
    Width = 945
    Height = 540
    TabIndex = 8
  End
  Begin BtnEnh HeadExit
    Left = 1965
    Top = 6600
    Width = 945
    Height = 540
    TabIndex = 9
  End
  Begin Label Label1
    Caption = "Billed"
    Index = 7
    ForeColor = &HC00000&
    Left = 3015
    Top = 7080
    Width = 1740
    Height = 240
    TabIndex = 5
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 7
    BackColor = &HC0FFC0&
    ForeColor = &H80000008&
    Left = 2955
    Top = 7050
    Width = 1815
    Height = 285
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vaccant"
    Index = 6
    ForeColor = &HC00000&
    Left = 3000
    Top = 6795
    Width = 1740
    Height = 240
    TabIndex = 4
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "Occupied"
    Index = 5
    ForeColor = &HC00000&
    Left = 3000
    Top = 6510
    Width = 1740
    Height = 240
    TabIndex = 3
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 2955
    Top = 6765
    Width = 1815
    Height = 285
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 2955
    Top = 6480
    Width = 1815
    Height = 285
    TabIndex = 1
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "RsPOSDisplayNew"

Private global_82 As Integer
Private global_100 As Integer

Private Sub HeadExit_UnknownEvent_9 'E18D1C
  'Data Table: 435A54
  loc_E18D11: Me.Global.Unload Me
  loc_E18D19: Exit Sub
End Sub

Private Sub Form_Load() '100266C
  'Data Table: 435A54
  Dim var_9C As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_86 As Integer
  loc_100247C: On Error Goto loc_1002628
  loc_1002486: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_100249E: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_10024AE: Call 0.Method_Me4 (CDbl(4900))
  loc_10024BB: Call 0.Method_arg_74 (CDbl(2500))
  loc_10024C8: Call 0.Method_arg_7C (CDbl(1500))
  loc_10024D5: Call 0.Method_MeC (CDbl(7850))
  loc_10024DF: var_BC = 0
  loc_10024EA: var_B8 = 0
  loc_10024F5: var_B4 = 0
  loc_100250C: var_86 = Proc_96_17_FDCB2C(global_52, global_88, var_B4)
  loc_100251E: var_C0 = global_88
  loc_1002529: If (var_C0 = "Outlet") Then
  loc_1002532:   global_96 = "TB"
  loc_1002539: Else
  loc_1002541:   If (var_C0 = "Room Service") Then
  loc_100254A:     global_96 = "RO"
  loc_100254E:   End If
  loc_100254E: End If
  loc_100254E: Call ColorLabel()
  loc_1002553: Call Proc_239_20_166CB4C(var_86, var_B8)
  loc_100257E: var_9C = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_100258D: Me.FGrid1.Height = CVar(CLng(MemVar_1F951B4))
  loc_10025AF: Me.FGrid1.Width = CVar(CDbl(4800))
  loc_10025E5: If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(600)) + CDbl(200))) < CDbl(610)) Then
  loc_1002609:   var_9C = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(600)) + CDbl(&HA))) 'Single
  loc_1002618:   Me.FGrid1.Width = CVar(CDbl(4800))
  loc_1002627: End If
  loc_1002627: Exit Sub
  loc_1002628: ' Referenced from: 100247C
  loc_1002630: Set var_B0 = Err()
  loc_1002636: Call 0.Method_arg_2C (var_B4)
  loc_1002657: MsgBox(CVar(var_B4), &H10, "Information", var_F4, var_114)
  loc_100266A: Exit Sub
  loc_100266B: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1020C
  'Data Table: 435A54
  loc_E10203: Set global_112 = Nothing
  loc_E1020A: Exit Sub
End Sub

Private Sub Form_Activate() 'F29730
  'Data Table: 435A54
  Dim var_A0 As String
  Dim unk_435A5A As Connection15
  Dim var_8C As Recordset15
  Dim var_CC As Fields15
  Dim var_C8 As Variant
  loc_F29644: Call Proc_239_20_166CB4C()
  loc_F29652: If (global_82 = &HFF) Then
  loc_F29655:   Call Proc_239_20_166CB4C()
  loc_F2965F:   global_82 = 0
  loc_F29662: End If
  loc_F29662: Call Proc_239_19_E8C108(global_82)
  loc_F2966F: If (MemVar_1F95210 <> "Yes") Then
  loc_F29672: End If
  loc_F2969B: var_A0 = "SELECT POSSettlementYN FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128 & "' And UserName='"
  loc_F296B2: unk_435A5A.Execute var_A0 & MemVar_1F950C8 & "'", var_C8, -1
  loc_F296BD: Set var_8C = var_CC
  loc_F296E9: If (var_8C.RecordCount > 0) Then
  loc_F29714:   var_90 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("POSSettlementYN")))
  loc_F2971D: End If
  loc_F29722: Set var_8C = Nothing
  loc_F2972A: Set var_88 = Nothing
  loc_F2972D: Exit Sub
End Sub

Private Sub Form_Click() 'DFE3FC
  'Data Table: 435A54
  loc_DFE3F8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0BFBC
  'Data Table: 435A54
  loc_E0BFB2: If (CLng(KeyCode) = &H74) Then
  loc_E0BFB5:   Call Proc_239_20_166CB4C()
  loc_E0BFBA: End If
  loc_E0BFBA: Exit Sub
End Sub

Private Sub Label2_Click(Index As Integer) '101E31C
  'Data Table: 435A54
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_435A5A As Connection15
  loc_101E13C: var_94 = 1
  loc_101E146: Set var_A8 = Me.FGrid1
  loc_101E161: arg_20 = Me.CDLG._Action
  loc_101E18B: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101E18E:   Exit Sub
  loc_101E18F: End If
  loc_101E199: var_B8 = Me.CDLG.Color
  loc_101E1AC: Set var_BC = Me.Label2
  loc_101E1B2: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101E1BA: var_C0.BackColor = arg_20
  loc_101E202: unk_435A5A.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_101E241: Set var_A8 = Me.CDLG
  loc_101E256: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_101E26D: Set var_BC = Me.Label1
  loc_101E273: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_101E27B: -1 = var_C0.Caption
  loc_101E2AA: Proc_6_7_F26918(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F95070 & "',"))
  loc_101E2B6: var_94 = ",'A','"
  loc_101E2DC: unk_435A5A.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F95078) & "')"), FGrid1.DispID_18001, var_94
  loc_101E31A: Exit Sub
End Sub

Private Sub HeadLeft_UnknownEvent_9 'E98848
  'Data Table: 435A54
  Dim var_A8 As Variant
  loc_E987ED: If ((CLng(Me.FGrid1.LeftCol) - &HC) > 0) Then
  loc_E98809:   var_A8 = CVar((CLng(Me.FGrid1.LeftCol) - &H36)) 'Long
  loc_E98818:   Me.FGrid1.LeftCol = var_A8
  loc_E9882A: Else
  loc_E9883D:   Me.FGrid1.LeftCol = 1
  loc_E98845: End If
  loc_E98845: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB5BF8
  'Data Table: 435A54
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB5A78: Set var_88 = Me.FGrid1
  loc_FB5A8C: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB5A9D: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB5AB0: var_FC = CStr(var_88.TextMatrix))
  loc_FB5B22: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB5B31:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB5B42:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB5B62:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB5B73:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB5BB0:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB5BC0:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB5BE2: Else
  loc_FB5BEB:   var_88.ToolTipText = vbNullString
  loc_FB5BF0: End If
  loc_FB5BF2: Set var_88 = Nothing 
  loc_FB5BF6: Exit Sub
End Sub

Private Sub HeadRigt_UnknownEvent_9 'E78968
  'Data Table: 435A54
  Dim var_A8 As Variant
  Dim var_2301 As Variant
  loc_E7892B: If (CLng(Me.FGrid1.LeftCol) > 1) Then
  loc_E78947:   var_A8 = CVar((CLng(Me.FGrid1.LeftCol) - 1)) 'Long
  loc_E78956:   Me.FGrid1.LeftCol = var_A8
  loc_E78965: End If
  loc_E78965: Exit Sub
  loc_E78966: var_2301 = CVar() 'Integer
End Sub

Public Function global_52Get() '436234
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '436243
  global_52 = Value
End Sub

Public Property Let ptabpos(vNewValue) 'E024B8
  'Data Table: 435A54
  loc_E024B2: ptabpos = vNewValue
  loc_E024B7: Exit Sub
End Sub

Public Property Get ptabpos() 'E04FD0
  'Data Table: 435A54
  loc_E04FC9: ptabpos = global_100
End Sub

Public Property Let TouchScreen(vNewValue) 'E103BC
  'Data Table: 435A54
  loc_E103B4: global_92 = vNewValue
  loc_E103B8: Exit Sub
End Sub

Public Sub ColorLabel() 'F5138C
  'Data Table: 435A54
  Dim unk_435A5A As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_E4 As Label
  Dim var_2301 As Double
  loc_F51292: unk_435A5A.Execute "Select * from DispColor", var_A8, -1
  loc_F5129D: Set var_88 = var_AC
  loc_F512A6: ' Referenced from: F51386
  loc_F512B5: If Not(var_88.EOF) Then
  loc_F512F4:   If (var_88.Fields.Item("index").Value > 4) Then
  loc_F51309:     var_AC = var_88.Fields
  loc_F51355:     Set var_E0 = Me.Label2
  loc_F5135B:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F51363:     var_E4.BackColor = CLng(var_AC.Item("Color").Value)
  loc_F5137E:   End If
  loc_F51381:   var_88.MoveNext
  loc_F51386:   GoTo loc_F512A6
  loc_F51389: End If
  loc_F51389: Exit Sub
  loc_F5138A: var_2301 = var_AC
End Sub

Public Property Get OpenMode() 'E101C4
  'Data Table: 435A54
  loc_E101B8: var_88 = global_84
  loc_E101BB: OpenMode = 
End Sub

Public Property Let OpenMode(vNewValue) 'E10134
  'Data Table: 435A54
  loc_E1012C: global_84 = vNewValue
  loc_E10130: Exit Sub
End Sub

Public Sub Proc_239_18_DFE8AC
  'Data Table: 435A54
  loc_DFE8A4: Call Proc_239_20_166CB4C()
  loc_DFE8A9: Exit Sub
End Sub

Public Sub Proc_239_19_E8C108
  'Data Table: 435A54
  Dim var_8C As String
  Dim var_98 As String
  Dim unk_435A5A As Connection15
  loc_E8C0BC: var_8C = "SELECT Distinct P.Docid,P.VNo AS [Order No], P.CustName As [Customer Name],P.PhoneNo As [Phone No],P.Addr1 + ', ' + P.Addr2 As Address,convert(varchar(11),P.DDate,103)+ ' '+ P.DTime As [Delivery Date] FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE  (P.LogSite_Code = '" & MemVar_1F95078
  loc_E8C0D4: var_98 = var_8C & "') AND (P.RestCode = '" & global_52 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '') Order By convert(varchar(11),P.DDate,103)+ ' '+ P.DTime"
  loc_E8C0DD: unk_435A5A.Execute var_98, var_B8, -1
  loc_E8C0E8: Set var_88 = var_BC
  loc_E8C101: Set var_88 = Nothing
  loc_E8C104: Exit Sub
  loc_E8C105: StAryRecMove
End Sub

Public Sub Proc_239_20_166CB4C
  'Data Table: 435A54
  Dim var_96 As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_435A5A As Connection15
  Dim var_C8 As Variant
  Dim var_A0 As Recordset15
  Dim var_DC As Variant
  Dim var_D8 As Variant
  Dim var_108 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim var_114 As String
  Dim var_120 As String
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_168 As Variant
  Dim var_238 As Variant
  Dim var_228 As Variant
  Dim var_258 As Variant
  Dim var_194 As Variant
  Dim var_100 As Variant
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_278 As Variant
  Dim var_2AC As Variant
  Dim var_184 As Field20
  Dim var_1CC As Variant
  Dim var_2EC As Variant
  Dim var_AC As Recordset15
  Dim var_140 As Variant
  Dim var_A4 As Recordset15
  Dim var_92 As Integer
  loc_166B456: var_96 = 0
  loc_166B480: unk_435A5A.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_D8, -1
  loc_166B48B: Set var_A0 = var_DC
  loc_166B4AA: var_DC = var_A0.Fields
  loc_166B4C9: global_104 = Proc_6_38_E69628(CVar(var_DC.Item("KotYN")), var_DC)
  loc_166B504: global_108 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("Order_Booking")))
  loc_166B523: var_DC = var_A0.Fields
  loc_166B533: var_D8 = var_DC.Item("KotYN").Value
  loc_166B54D: If (var_D8 = "Y") Then
  loc_166B556:   var_104 = global_88
  loc_166B561:   If (var_104 = "Outlet") Then
  loc_166B578:     var_B4 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_166B59A:     var_110 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_96 & "' and RoomMast.RestCode='" & global_52
  loc_166B5AA:     unk_435A5A.Execute var_110 & "' ORDER BY  RoomMast.code", var_D8, -1
  loc_166B5B5:     Set var_88 = var_DC
  loc_166B5E4:     var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_166B5FC:     var_10C = var_B4 & "' And  RoomCat='REST' and RoomType='" & global_96 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166B616:     unk_435A5A.Execute var_10C & global_52 & "'  order by T.Code", var_D8, -1
  loc_166B621:     Set var_A4 = var_DC
  loc_166B64D:     var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_166B65B:     var_108 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_166B669:     var_110 = var_108 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_166B68B:     var_120 = var_110 & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166B6A5:     unk_435A5A.Execute var_120 & global_52 & "' Order by T.Code", var_D8, -1
  loc_166B6B0:     Set var_AC = var_DC
  loc_166B6D5:   Else
  loc_166B6DD:     If (var_104 = "Room Service") Then
  loc_166B6F4:       var_B4 = "SELECT LTrim(RTrim(RC.RoomNo)) AS Code,RC.Foliono AS Code1, RC.RoomNo AS Name,D.Code As RestCode,D.Name as RestName,D.ShortName,RC.SITE_CODE,RC.LOGSITE_CODE,D.KOTYn, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_166B70C:       var_10C = var_B4 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('" & global_96 & "') AND RC.CHKOUTDATE IS NULL And D.Code='"
  loc_166B723:       unk_435A5A.Execute var_10C & MemVar_1F95078 & "RS' Order by RC.ROOMNO", var_D8, -1
  loc_166B72E:       Set var_88 = var_DC
  loc_166B75D:       var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Code As Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_166B775:       var_10C = var_B4 & "' and RoomType='" & global_96 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='ROOM' order by T.Code"
  loc_166B77E:       unk_435A5A.Execute var_10C, var_D8, -1
  loc_166B789:       Set var_A4 = var_DC
  loc_166B7B1:       var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_166B7BF:       var_108 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_166B7D7:       var_114 = var_108 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "And Sale1.RoomType='" & global_96
  loc_166B7EF:       var_120 = var_114 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166B809:       unk_435A5A.Execute var_120 & global_52 & "' Order by T.Code", var_D8, -1
  loc_166B814:       Set var_AC = var_DC
  loc_166B836:     End If
  loc_166B836:   End If
  loc_166B839: Else
  loc_166B84D:   var_B4 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_166B86F:   var_110 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_96 & "' and RoomMast.RestCode='" & global_52
  loc_166B87F:   unk_435A5A.Execute var_110 & "' ORDER BY  RoomMast.code", var_D8, -1
  loc_166B88A:   Set var_88 = var_DC
  loc_166B8B9:   var_B4 = "Select  LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_166B8D1:   var_10C = var_B4 & "' And  RoomCat='REST' and RoomType='" & global_96 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE)WHERE RESTCODE='"
  loc_166B8EB:   unk_435A5A.Execute var_10C & global_52 & "' order by T.Code", var_D8, -1
  loc_166B8F6:   Set var_A4 = var_DC
  loc_166B922:   var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_166B930:   var_108 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_166B93E:   var_110 = var_108 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_166B960:   var_120 = var_110 & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166B97A:   unk_435A5A.Execute var_120 & global_52 & "' Order by T.Code", var_D8, -1
  loc_166B985:   Set var_AC = var_DC
  loc_166B9A7: End If
  loc_166B9A9: var_8A = 9
  loc_166B9C3: If (Me.Recordset15.RecordCount > 0) Then
  loc_166B9F3:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_166BA60:     var_D8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_166BA81:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_166BA99:   Else
  loc_166BAC8:     var_D8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_166BAE9:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_166BAF8:   End If
  loc_166BAFB: Else
  loc_166BB00:   global_100 = &HFF
  loc_166BB06: Else
  loc_166BB08:   var_90 = 1
  loc_166BB0D:   var_8E = 0
  loc_166BB23:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_166BB3E:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_166BB58:   Call Proc_239_21_111EE80((var_8A - 1), (var_8C - 1), var_8E, var_90, global_100, var_8C, 1, 1)
  loc_166BB70:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_166BB8B:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_166BBA2:   Me.FGrid1.Redraw = False
  loc_166BBCF:   For var_158 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_158 'Integer
  loc_166BBD9:     var_C8 = CVar(CLng(var_94)) 'Long
  loc_166BBDE:     var_168 = &H2BC
  loc_166BBEB:     Set var_DC = Me.FGrid1
  loc_166BBF1:     LateIdCallSt
  loc_166BBFF:   Next var_158 'Integer
  loc_166BC04:   ' Referenced from:   166CB11
  loc_166BC16:   If Not(Me.FGrid1.EOF) Then
  loc_166BC1B:     var_90 = 1
  loc_166BC1E:     ' Referenced from:   166CB0E
  loc_166BC28:     If (var_90 <= (var_8A - 1)) Then
  loc_166BC3F:       For var_17C = (var_8C - 6) To (var_8C - 1):   var_94 = var_17C 'Integer
  loc_166BC4F:         If (var_94 = (var_8C - 6)) Then
  loc_166BC65:           var_228 = Me.FGrid1.Col
  loc_166BCD1:           var_B4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), 5, CVar(Proc_6_38_E69628(CVar(Me.var_228.Fields.Item("Code")), CVar(CLng(var_228)), CVar(CLng(var_90)))))
  loc_166BCD9:           var_140 = Space(((var_8C - 6) - Len(var_B4)))
  loc_166BCE1:           var_1A4 = (&HFF + Format(CVar(Me.var_228.Fields.Item("Code")), "00"))
  loc_166BD1D:           var_1CC = Space((var_1A4 - Len(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("code1")), 8))))
  loc_166BD25:           var_1DC = (var_90 + var_1CC)
  loc_166BD5A:           var_214 = (var_1DC + CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("code1")))))
  loc_166BD5F:           var_278 = CVar(CStr(var_214)) 'String
  loc_166BD67:           Set var_28C = Me.FGrid1
  loc_166BD6D:           LateIdCallSt
  loc_166BDC1:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166BDD0:           Me.FGrid1.Col = "Code"
  loc_166BDDF:         End If
  loc_166BDE9:         If (var_94 = (var_8C - 5)) Then
  loc_166BE03:           If (Me.Recordset15.RecordCount > 0) Then
  loc_166BE0C:             Me.Recordset15.MoveFirst
  loc_166BE11:           End If
  loc_166BE54:           Me.Recordset15.Filter = CVar(var_28C & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'")
  loc_166BE81:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_166BEB8:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_166BECE:               var_2AC = Me.FGrid1.Col
  loc_166BF13:               var_100 = (Me.var_2AC.Fields.Item("ShortName").Value + "(")
  loc_166BF49:               var_1A4 = (CVar(var_28C & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_166BF52:               var_1BC = (var_1A4 + ")")
  loc_166BF5B:               var_1CC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_166BF8D:               var_214 = (CVar(CLng(var_2AC)) + CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1CC, "*")))
  loc_166BF96:               var_228 = (var_214 + vbCrLf)
  loc_166BF9F:               var_278 = (var_228 + "Vacant")
  loc_166BFA8:               var_2EC = CVar(CStr(CVar(CLng(var_90)) & var_278)) 'String
  loc_166BFB0:               Set var_1E4 = Me.FGrid1
  loc_166BFB6:               LateIdCallSt
  loc_166BFF4:               var_AE = CByte(0) 'Byte
  loc_166C00C:               If (var_AC.RecordCount > 0) Then
  loc_166C01B:                 var_AC.Filter = 0
  loc_166C023:                 var_AC.MoveFirst
  loc_166C028:               End If
  loc_166C068:               var_AC.Filter = CVar(var_2EC & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1E4) & "'")
  loc_166C092:               If (var_AC.AbsolutePosition > 0) Then
  loc_166C0C6:                 If (IsNull(CVar(var_AC.Fields.Item("WaiterName"))) = 0) Then
  loc_166C0CD:                   var_AE = CByte(1) 'Byte
  loc_166C0D1:                 End If
  loc_166C0D1:               End If
  loc_166C0D4:             Else
  loc_166C0D8:               var_238 = CVar(CLng(var_90)) 'Long
  loc_166C0E7:               var_1DC = Me.FGrid1.Col
  loc_166C0F0:               var_258 = CVar(CLng(var_1DC)) 'Long
  loc_166C127:               var_100 = (Me.var_1DC.Fields.Item("ShortName").Value + "(")
  loc_166C15D:               var_1A4 = (CVar(var_2EC & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1E4) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_166C166:               var_1BC = (var_1A4 + ")")
  loc_166C16F:               var_1CC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_166C174:               var_1F4 = CVar(CStr(var_1CC)) 'String
  loc_166C17C:               Set var_1AC = Me.FGrid1
  loc_166C182:               LateIdCallSt
  loc_166C1B2:               var_AE = CByte(2) 'Byte
  loc_166C1B6:               ' Referenced from:     166C48C
  loc_166C20E:               var_140 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGrid1.Fields.Item("Code").Value, var_1AC, var_1F4)) 'String
  loc_166C226:               If (var_258 = var_140) Then
  loc_166C240:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_166C247:                   var_238 = CVar(CLng(var_90)) 'Long
  loc_166C28F:                   var_100 = Me.FGrid1.TextMatrix)
  loc_166C2C8:                   var_B8 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_166C2CC:                   var_1A4 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_B8) 'String
  loc_166C2D4:                   Set var_1AC = Me.FGrid1
  loc_166C2DA:                   LateIdCallSt
  loc_166C306:                 Else
  loc_166C336:                   var_100 = Me.FGrid1.TextMatrix)
  loc_166C36F:                   var_B4 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1)
  loc_166C398:                   If (InStr(var_1A4, var_1AC, var_B4, 0) = 0) Then
  loc_166C39F:                     var_238 = CVar(CLng(var_90)) 'Long
  loc_166C3E7:                     var_100 = Me.FGrid1.TextMatrix)
  loc_166C427:                     var_108 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))
  loc_166C42B:                     var_1A4 = CVar(var_238 & var_108) 'String
  loc_166C433:                     Set var_1AC = Me.FGrid1
  loc_166C439:                     LateIdCallSt
  loc_166C464:                   End If
  loc_166C464:                 End If
  loc_166C46A:                 var_A4.MoveNext
  loc_166C486:                 If (var_A4.AbsolutePosition < 0) Then
  loc_166C489:                   GoTo loc_166C48F
  loc_166C48C:                 End If
  loc_166C48C:                 GoTo loc_166C1B6
  loc_166C48F:                 ' Referenced from:     166C489
  loc_166C48F:               End If
  loc_166C49E:               Me.Recordset15.Filter = 0
  loc_166C4A3:             End If
  loc_166C4A3:           End If
  loc_166C4BC:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166C4CB:           Me.FGrid1.Col = 0
  loc_166C4DA:         End If
  loc_166C4E4:         If (var_94 = (var_8C - 4)) Then
  loc_166C4FB:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_166C517:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_166C53E:           Call Proc_239_22_10C637C(CInt(CLng(Me.FGrid1.Col)), var_AE, Me.FGrid1.Col, var_92, var_1AC)
  loc_166C55C:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_166C57D:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166C58C:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_166C59B:         End If
  loc_166C5A5:         If (var_94 = (var_8C - 3)) Then
  loc_166C5BF:           If (Me.Recordset15.RecordCount > 0) Then
  loc_166C5C8:             Me.Recordset15.MoveFirst
  loc_166C5CD:           End If
  loc_166C610:           Me.Recordset15.Filter = CVar(var_238 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_1A4) & "'")
  loc_166C63D:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_166C674:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_166C677:               ' Referenced from:   166C961
  loc_166C6CF:               var_140 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_166C6E7:               If (var_238 = var_140) Then
  loc_166C701:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_166C717:                   var_140 = Me.FGrid1.Col
  loc_166C785:                   var_108 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("VTIME")), Proc_6_38_E69628(CVar(Me.var_140.Fields.Item("WaiterName")), CVar(CLng(var_140))) & ",#")
  loc_166C790:                   var_194 = CVar(CVar(CLng(var_90)) & var_108 & "#") 'String
  loc_166C798:                   Set var_1AC = Me.FGrid1
  loc_166C79E:                   LateIdCallSt
  loc_166C7CA:                 Else
  loc_166C7FA:                   var_100 = Me.FGrid1.TextMatrix)
  loc_166C833:                   var_B4 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_166C85C:                   If (InStr(var_1AC, 1, var_B4, 0) = 0) Then
  loc_166C863:                     var_238 = CVar(CLng(var_90)) 'Long
  loc_166C8AB:                     var_100 = Me.FGrid1.TextMatrix)
  loc_166C8EB:                     var_108 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_166C8EF:                     var_1A4 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_108) 'String
  loc_166C8F7:                     Set var_1AC = Me.FGrid1
  loc_166C8FD:                     LateIdCallSt
  loc_166C928:                   End If
  loc_166C928:                 End If
  loc_166C92E:                 var_A4.MoveNext
  loc_166C94A:                 If (var_A4.AbsolutePosition < 0) Then
  loc_166C95C:                   Me.Recordset15.Filter = 0
  loc_166C961:                 End If
  loc_166C961:                 GoTo loc_166C677
  loc_166C964:               End If
  loc_166C964:             End If
  loc_166C964:           End If
  loc_166C97D:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166C98C:           Me.FGrid1.Col = 0
  loc_166C99B:         End If
  loc_166C9A5:         If (var_94 = (var_8C - 2)) Then
  loc_166C9F1:           var_140 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1AC)) 'String
  loc_166C9F9:           Set var_184 = Me.FGrid1
  loc_166C9FF:           LateIdCallSt
  loc_166CA32:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166CA41:           Me.FGrid1.Col = "KotYN"
  loc_166CA50:         End If
  loc_166CA5A:         If (var_94 = (var_8C - 1)) Then
  loc_166CA76:           var_C8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_166CA85:           Me.FGrid1.Col = "KotYN"
  loc_166CA94:         End If
  loc_166CA97:       Next var_17C 'Integer
  loc_166CAA2:       var_90 = (var_90 + 1)
  loc_166CAAF:       If (var_90 > (var_8A - 1)) Then
  loc_166CACB:         var_C8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_166CADA:         Me.FGrid1.Col = "KotYN"
  loc_166CAE9:       End If
  loc_166CAEF:       var_88.MoveNext
  loc_166CB08:       If (var_88.EOF = &HFF) Then
  loc_166CB0B:         GoTo loc_166CB14
  loc_166CB0E:       End If
  loc_166CB0E:       GoTo loc_166BC1E
  loc_166CB11:     End If
  loc_166CB11:     GoTo loc_166BC04
  loc_166CB14:     ' Referenced from:   166CB0B
  loc_166CB14:   End If
  loc_166CB14: End If
  loc_166CB22: Me.FGrid1.Redraw = True
  loc_166CB2F: Set var_88 = Nothing
  loc_166CB37: Set var_A4 = Nothing
  loc_166CB3F: Set var_A0 = Nothing
  loc_166CB47: Set var_AC = Nothing
  loc_166CB4A: Exit Sub
End Sub

Public Sub Proc_239_21_111EE80(arg_C, arg_10) '111EE80
  'Data Table: 435A54
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_111EB27: Me.FGrid1.Row = 0
  loc_111EB42: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111EB47: var_CC = 0
  loc_111EB54: Set var_E0 = Me.FGrid1
  loc_111EB5A: LateIdCallSt
  loc_111EB6C: ' Referenced from: 111EDC3
  loc_111EB72: If (arg_10 < 5) Then
  loc_111EB75:   GoTo loc_111EDC6
  loc_111EB78: End If
  loc_111EB7C: Set var_E4 = Me.FGrid1
  loc_111EB8D: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_111EB97:   var_98 = CVar(CLng(var_86)) 'Long
  loc_111EB9C:   var_CC = 0
  loc_111EBA9:   Set var_AC = Me.FGrid1
  loc_111EBAF:   LateIdCallSt
  loc_111EBBD: Next var_E8 'Integer
  loc_111EBD1: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_111EBE1:   If (var_86 = (arg_10 - 5)) Then
  loc_111EBE8:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111EBED:     var_CC = 0
  loc_111EBFA:     Set var_AC = Me.FGrid1
  loc_111EC00:     LateIdCallSt
  loc_111EC0F:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111EC14:     var_CC = 1
  loc_111EC1E:     Set var_AC = Me.FGrid1
  loc_111EC24:     LateIdCallSt
  loc_111EC42:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111EC4B:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111EC50:     var_FC = "Table No"
  loc_111EC5A:     Set var_E0 = Me.FGrid1
  loc_111EC60:     LateIdCallSt
  loc_111EC72:   End If
  loc_111EC7C:   If (var_86 = (arg_10 - 4)) Then
  loc_111EC83:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111EC88:     var_CC = &H4B0
  loc_111EC95:     Set var_AC = Me.FGrid1
  loc_111EC9B:     LateIdCallSt
  loc_111ECAA:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111ECAF:     var_CC = 1
  loc_111ECB9:     Set var_AC = Me.FGrid1
  loc_111ECBF:     LateIdCallSt
  loc_111ECDD:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111ECE6:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111ECEB:     var_FC = "Status"
  loc_111ECF5:     Set var_E0 = Me.FGrid1
  loc_111ECFB:     LateIdCallSt
  loc_111ED0D:   End If
  loc_111ED17:   If (var_86 = (arg_10 - 3)) Then
  loc_111ED1E:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111ED23:     var_CC = &H12C
  loc_111ED30:     Set var_AC = Me.FGrid1
  loc_111ED36:     LateIdCallSt
  loc_111ED45:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111ED50:     var_CC = CVar(CInt(4)) 'Integer
  loc_111ED58:     Set var_AC = Me.FGrid1
  loc_111ED5E:     LateIdCallSt
  loc_111ED7C:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111ED85:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111ED8A:     var_FC = vbNullString
  loc_111ED94:     Set var_E0 = Me.FGrid1
  loc_111ED9A:     LateIdCallSt
  loc_111EDAC:   End If
  loc_111EDAF: Next var_EC 'Integer
  loc_111EDB6: Set var_E4 = Nothing 
  loc_111EDC0: arg_10 = (arg_10 - 6)
  loc_111EDC3: GoTo loc_111EB6C
  loc_111EDC6: ' Referenced from: 111EB75
  loc_111EDED: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_111EE06:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_111EE16:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_111EE2F:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_111EE4A:     Me.FGrid1.CellBackColor = &HE69839
  loc_111EE65:     Me.FGrid1.CellForeColor = &HFFFF
  loc_111EE70:   Next var_114 'Integer
  loc_111EE78: Next var_110 'Integer
  loc_111EE7D: Exit Sub
End Sub

Public Sub Proc_239_22_10C637C
  'Data Table: 435A54
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  loc_10C6088: var_86 = arg_10 'Byte
  loc_10C6095: If (var_86 = CByte(0)) Then
  loc_10C60B1:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C60BA:   Set var_C0 = Me.FGrid1
  loc_10C60C0:   var_C0.Col = var_AC
  loc_10C60DB:   Set var_8C = Me.Label2
  loc_10C60E1:   Call 0.Method_Proc_239_22_10C637C0 (6, var_C0)
  loc_10C6100:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C6127:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C6130:   Set var_C0 = Me.FGrid1
  loc_10C6136:   var_C0.Col = CVar(var_C0.BackColor)
  loc_10C6151:   Set var_8C = Me.Label2
  loc_10C6157:   Call 0.Method_Proc_239_22_10C637C0 (6, var_C0)
  loc_10C6176:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C6187: Else
  loc_10C6190:   If (var_86 = CByte(1)) Then
  loc_10C61AC:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C61B5:     Set var_C0 = Me.FGrid1
  loc_10C61BB:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C61D6:     Set var_8C = Me.Label2
  loc_10C61DC:     Call 0.Method_Proc_239_22_10C637C0 (7, var_C0)
  loc_10C61FB:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C6222:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C622B:     Set var_C0 = Me.FGrid1
  loc_10C6231:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C624C:     Set var_8C = Me.Label2
  loc_10C6252:     Call 0.Method_Proc_239_22_10C637C0 (7, var_C0)
  loc_10C6271:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C6282:   Else
  loc_10C628B:     If (var_86 = CByte(2)) Then
  loc_10C62A7:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C62B0:       Set var_C0 = Me.FGrid1
  loc_10C62B6:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C62D1:       Set var_8C = Me.Label2
  loc_10C62D7:       Call 0.Method_Proc_239_22_10C637C0 (5, var_C0)
  loc_10C62F6:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C631D:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C6326:       Set var_C0 = Me.FGrid1
  loc_10C632C:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C6347:       Set var_8C = Me.Label2
  loc_10C634D:       Call 0.Method_Proc_239_22_10C637C0 (5, var_C0)
  loc_10C636C:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C637A:     End If
  loc_10C637A:   End If
  loc_10C637A: End If
  loc_10C637A: Exit Sub
End Sub
