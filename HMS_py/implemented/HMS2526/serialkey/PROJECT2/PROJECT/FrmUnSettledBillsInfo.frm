VERSION 5.00
Begin VB.Form FrmUnSettledBillsInfo
  Caption = "Unsettled Bill Details"
  BackColor = &HC0E0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 7410
  ClientHeight = 5865
  StartUpPosition = 2 'CenterScreen
  Begin MSHFlexGrid FGrid1
    Left = 120
    Top = 135
    Width = 7170
    Height = 5055
    TabIndex = 0
  End
  Begin BtnEnh Command1
    Left = 6030
    Top = 5280
    Width = 1320
    Height = 570
    TabIndex = 1
  End
End

Attribute VB_Name = "FrmUnSettledBillsInfo"


Private Sub Command1_UnknownEvent_9 'E1B8C0
  'Data Table: 41E9DC
  loc_E1B8B5: Me.Global.Unload Me
  loc_E1B8BD: Exit Sub
End Sub

Private Sub Form_Load() '124D180
  'Data Table: 41E9DC
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As String
  Dim var_B8 As String
  Dim var_C0 As String
  Dim var_A8 As String
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim unk_41E9F1 As Connection15
  loc_124CC57: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_124CC69: Set var_AC = Me.FGrid1
  loc_124CC6F: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_124CC82: If (ShowDetail = "UnsettleBills") Then
  loc_124CC99:   var_B0 = "SELECT Sale1.DocId,Max(Sale1.RestCode) As RestCode, MAX(Sale1.VNo) AS [Bill No.],CASE WHEN MAX(Sale1.RoomType)='RO' THEN MAX(Sale1.RoomNo) ELSE MAX(T.Code) END AS [Table/Room],max(Waiter.Name) as Steward, max(Depart.Name) as Outlet, Convert(Varchar(11),Max(Sale1.Vdate),103) As BillDt, Max(Sale1.VTime) As BillTm, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_124CCA7:   var_B8 = var_B0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_124CCB5:   var_C0 = var_B8 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code Left Join Depart On Sale1.RestCode=Depart.Code "
  loc_124CCCA:   Proc_6_7_F26918(var_D0, MemVar_1F950EC, CVar(var_C0 & "WHERE Depart.RestType<>'Production' And Sale1.Vdate="))
  loc_124CCEE:   var_140 = var_184 & var_D0 & " And Sale1.LogSite_Code='" & CVar(MemVar_1F95078) & "' And PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " 
  loc_124CD05:   unk_41E9F1.Execute CStr(var_140 & "GROUP BY SALE1.DOCID Having Sum(Sale1.NetAmt)<>0 ORDER BY RestCode,[Bill No.]"), -1, var_AC
  loc_124CD10:   Set var_88 = var_AC
  loc_124CD3E:   CVarUnk
  loc_124CD43:   VerifyVarObj
  loc_124CD49:   Set var_AC = Me.FGrid1
  loc_124CD4F:   LateIdStAd
  loc_124CD5D:   var_98 = 0
  loc_124CD66:   var_110 = 0
  loc_124CD73:   Set var_AC = Me.FGrid1
  loc_124CD79:   LateIdCallSt
  loc_124CD84:   var_98 = 1
  loc_124CD8D:   var_110 = 0
  loc_124CD9A:   Set var_AC = Me.FGrid1
  loc_124CDA0:   LateIdCallSt
  loc_124CDAB:   var_98 = 2
  loc_124CDB4:   var_110 = 0
  loc_124CDC1:   Set var_AC = Me.FGrid1
  loc_124CDC7:   LateIdCallSt
  loc_124CDD2:   var_98 = 3
  loc_124CDDB:   var_110 = &H384
  loc_124CDE8:   Set var_AC = Me.FGrid1
  loc_124CDEE:   LateIdCallSt
  loc_124CDF9:   var_98 = 4
  loc_124CE02:   var_110 = &H514
  loc_124CE0F:   Set var_AC = Me.FGrid1
  loc_124CE15:   LateIdCallSt
  loc_124CE20:   var_98 = 5
  loc_124CE29:   var_110 = &H960
  loc_124CE36:   Set var_AC = Me.FGrid1
  loc_124CE3C:   LateIdCallSt
  loc_124CE47:   var_98 = 6
  loc_124CE50:   var_110 = &H5DC
  loc_124CE5D:   Set var_AC = Me.FGrid1
  loc_124CE63:   LateIdCallSt
  loc_124CE6E:   var_98 = 7
  loc_124CE77:   var_110 = 0
  loc_124CE84:   Set var_AC = Me.FGrid1
  loc_124CE8A:   LateIdCallSt
  loc_124CE95:   var_98 = 8
  loc_124CE9E:   var_110 = 0
  loc_124CEAB:   Set var_AC = Me.FGrid1
  loc_124CEB1:   LateIdCallSt
  loc_124CEC5:   var_110 = &H384
  loc_124CED2:   Set var_AC = Me.FGrid1
  loc_124CED8:   LateIdCallSt
  loc_124CEE9:   Call 0.Method_arg_54 ("Unsettled Bills Detail", var_AC, var_110, 9, var_AC, var_110, 9, var_AC)
  loc_124CEF1: Else
  loc_124CEFC:   If (ShowDetail = "PendingKOTs") Then
  loc_124CF0C:     var_A8 = "SELECT Distinct K.VNo [KOT No.],K.RoomNo AS [Table/Room],W.NAME AS Steward,D.NAME AS Outlet,Case When K.Pending='Y' Then 'Pending' Else '' End Status,K.RoomType,K.Vdate,K.Vtime,K.RESTCODE,K.DocId FROM (((KOT AS K INNER JOIN wAITER AS W ON K.Waiter = W.Code)  INNER JOIN DEPART AS D ON K.RestCode = D.Code) INNER JOIN VOUCHER_TYPE AS V ON (K.Vtype = V.V_Type AND K.SITE_CODE=V.SITE_CODE)) WHERE K.NCKOT<>'Y' And K.VOIDYN<>'Y' AND K.VDate="
  loc_124CF14:     var_98 = MemVar_1F950EC
  loc_124CF1C:     Proc_6_7_F26918(var_D0, var_98, var_A8, var_140, -1, var_AC, var_110)
  loc_124CF28:     var_110 = " And V.NCAT in('RSKOT') And K.Pending in('Y') And K.DELFLAG NOT IN('Y') And K.LOGSITE_CODE='"
  loc_124CF4E:     unk_41E9F1.Execute CStr(var_98 & var_D0 & var_110 & CVar(MemVar_1F95078) & "' And D.KOTAtNightAudit<>'No' Order By K.RESTCODE,K.DocId"), var_AC, var_110
  loc_124CF59:     Set var_88 = var_AC
  loc_124CF77:     CVarUnk
  loc_124CF7C:     VerifyVarObj
  loc_124CF82:     Set var_AC = Me.FGrid1
  loc_124CF88:     LateIdStAd
  loc_124CF96:     var_98 = 0
  loc_124CF9F:     var_110 = 0
  loc_124CFAC:     Set var_AC = Me.FGrid1
  loc_124CFB2:     LateIdCallSt
  loc_124CFBD:     var_98 = 1
  loc_124CFC6:     var_110 = &H384
  loc_124CFD3:     Set var_AC = Me.FGrid1
  loc_124CFD9:     LateIdCallSt
  loc_124CFE4:     var_98 = 2
  loc_124CFED:     var_110 = &H44C
  loc_124CFFA:     Set var_AC = Me.FGrid1
  loc_124D000:     LateIdCallSt
  loc_124D00B:     var_98 = 3
  loc_124D014:     var_110 = &H8FC
  loc_124D021:     Set var_AC = Me.FGrid1
  loc_124D027:     LateIdCallSt
  loc_124D032:     var_98 = 4
  loc_124D03B:     var_110 = &H5DC
  loc_124D048:     Set var_AC = Me.FGrid1
  loc_124D04E:     LateIdCallSt
  loc_124D059:     var_98 = 5
  loc_124D062:     var_110 = &H384
  loc_124D06F:     Set var_AC = Me.FGrid1
  loc_124D075:     LateIdCallSt
  loc_124D080:     var_98 = 6
  loc_124D089:     var_110 = 0
  loc_124D096:     Set var_AC = Me.FGrid1
  loc_124D09C:     LateIdCallSt
  loc_124D0A7:     var_98 = 7
  loc_124D0B0:     var_110 = 0
  loc_124D0BD:     Set var_AC = Me.FGrid1
  loc_124D0C3:     LateIdCallSt
  loc_124D0CE:     var_98 = 8
  loc_124D0D7:     var_110 = 0
  loc_124D0E4:     Set var_AC = Me.FGrid1
  loc_124D0EA:     LateIdCallSt
  loc_124D0F5:     var_98 = 9
  loc_124D0FE:     var_110 = 0
  loc_124D10B:     Set var_AC = Me.FGrid1
  loc_124D111:     LateIdCallSt
  loc_124D11C:     var_98 = &HA
  loc_124D125:     var_110 = 0
  loc_124D132:     Set var_AC = Me.FGrid1
  loc_124D138:     LateIdCallSt
  loc_124D143:     var_98 = &HFFC0C0
  loc_124D150:     Set var_AC = Me.FGrid1
  loc_124D156:     var_AC.BackColorBkg = var_98
  loc_124D166:     Call 0.Method_arg_64 (&HFFC0C0, var_AC, var_110, var_98, var_AC, var_110, var_98)
  loc_124D171:     Call 0.Method_arg_54 ("Pending KOTs Detail", var_AC, var_110, var_98)
  loc_124D176:   End If
  loc_124D176: End If
  loc_124D17B: Set var_88 = Nothing
  loc_124D17E: Exit Sub
End Sub

Public Function ShowDetailGet() '41EC90
  ShowDetailGet = ShowDetail
End Function

Public Sub ShowDetailPut(Value) '41EC9F
  ShowDetail = Value
End Sub
