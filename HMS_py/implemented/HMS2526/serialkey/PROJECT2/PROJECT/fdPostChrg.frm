VERSION 5.00
Begin VB.Form fdPostChrg
  Caption = "Post Charges /Payments"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdPostChrg.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6330
  ClientHeight = 3195
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 6330
    Height = 450
    Visible = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 1
    Left = 6435
    Top = 45
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
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
    Left = 4155
    Top = 1365
    Width = 1425
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin CommandButton Cmdz
    Caption = "Exit"
    Index = 0
    Left = 4680
    Top = 2700
    Width = 1725
    Height = 750
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &H8000000F&
  End
  Begin CommandButton Cmdz
    Caption = "Post Charges"
    Index = 1
    Left = 2955
    Top = 2700
    Width = 1725
    Height = 750
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &H8000000F&
  End
  Begin BtnEnh CmdExit
    Left = 5400
    Top = 4065
    Width = 1680
    Height = 840
    TabIndex = 6
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 2565
    Top = 4080
    Width = 1680
    Height = 840
    TabIndex = 7
  End
  Begin Label lblDisplay
    Caption = "."
    ForeColor = &HC0&
    Left = 1740
    Top = 2040
    Width = 8550
    Height = 615
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date For"
    Index = 2
    ForeColor = &HC00000&
    Left = 3075
    Top = 1365
    Width = 810
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "fdPostChrg"

Private MasterFormExit As Integer

Private Sub TopCtrl1_UnknownEvent_16 '1758598
  'Data Table: 42F7F4
  Dim var_A8 As String
  Dim var_AC As String
  Dim unk_42F80C As Connection15
  Dim var_BC As String
  Dim var_D0 As Variant
  Dim var_D4 As Variant
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_154 As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_F4 As Variant
  Dim var_158 As Variant
  Dim var_15C As Field20
  Dim var_210 As Fields15
  Dim var_218 As Field20
  Dim var_17C As Variant
  Dim var_20C As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_90 As Recordset15
  Dim var_280 As Variant
  Dim var_298 As Variant
  Dim var_2AC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_300 As Fields15
  Dim var_314 As Field20
  Dim var_334 As Variant
  Dim var_354 As Variant
  Dim var_374 As Variant
  Dim var_394 As Variant
  Dim var_3EC As Variant
  Dim var_A0 As Recordset15
  Dim var_2BC As Variant
  Dim var_410 As Fields15
  Dim var_414 As Field20
  Dim var_40C As Variant
  Dim var_424 As Variant
  Dim var_448 As Fields15
  Dim var_4F4 As Variant
  Dim var_5E4 As Variant
  Dim var_21C As Fields15
  Dim var_284 As Fields15
  Dim var_8C As Recordset15
  Dim var_61C As String
  Dim var_94 As Recordset15
  Dim var_220 As Field20
  Dim var_29C As Field20
  loc_175694C: On Error Goto loc_175855B
  loc_1756973: unk_42F80C.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_CC, -1
  loc_175697E: Set var_98 = var_D0
  loc_17569AB: var_D4 = Me.Recordset15.Fields.Item("RoomChrgPostingType")
  loc_17569CD: If (var_D4.Value = "While Printing Bill") Then
  loc_17569D0:   Exit Sub
  loc_17569D1: End If
  loc_17569DE: var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP],GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_17569F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC, var_20C)
  loc_1756A03: Proc_6_7_F26918(var_F4, CVar(var_D4), -1)
  loc_1756A27: var_154 = var_210 & var_F4 & " >=chkindate and ChkOutDate is Null  AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=" 
  loc_1756A36: Set var_158 = Me.Txt
  loc_1756A3C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C)
  loc_1756A4B: Proc_6_7_F26918(var_17C, CVar(var_15C))
  loc_1756A66: var_1CC = var_154 & var_17C & " AND SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_1756A7D: unk_42F80C.Execute CStr(var_1CC & "')"), Me.Txt, 
  loc_1756A88: Set var_8C = var_210
  loc_1756ABB: Call 0.Method_arg_A4 (CInt(&HB))
  loc_1756AC0: ' Referenced from: 1757C5B
  loc_1756AD2: If Not(Me.Recordset15.EOF) Then
  loc_1756B19:   Me.lblDisplay.Caption = CStr("Posting Charges For Room : " & Me.Recordset15.Fields.Item("RoomNo").Value)
  loc_1756B3B:   Me.lblDisplay.Refresh
  loc_1756B82:   If CBool(Me.Recordset15.Fields.Item("mFolioNoDocid").Value <> vbNullString) Then
  loc_1756BCD:     var_104 = "Select * from Paycharge where (FolionoDocid='" & Me.Recordset15.Fields.Item("mFolioNoDocid").Value & "' OR FolioNODocid='" 
  loc_1756C28:     var_218 = Me.Recordset15.Fields.Item("RoomNo")
  loc_1756C50:     Set var_21C = Me.Txt
  loc_1756C56:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220, var_104 & Me.Recordset15.Fields.Item("DocID").Value & "') and VTYPE='RC' AND RoomNo='" & var_218.Value & "' and VDATE=")
  loc_1756C65:     Proc_6_7_F26918(var_1CC, CVar(var_220), var_280)
  loc_1756C6D:     var_1EC = -1 & var_1CC 
  loc_1756C89:     var_260 = var_1CC & "')" & " AND SITE_CODE='" & CVar(MemVar_1F95070) & "'" 
  loc_1756C97:     unk_42F80C.Execute CStr(var_260), var_284, 
  loc_1756CF2:     If (var_284.RecordCount = 0) Then
  loc_1756D12:       var_D4 = Me.Recordset15.Fields.Item("mFolioNo")
  loc_1756D1A:       var_F4 = var_D4.Value
  loc_1756D63:       If (var_F4 = Me.Recordset15.Fields.Item("FolioNo").Value) Then
  loc_1756D73:         var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1756D83:         Set var_D0 = Me.Txt
  loc_1756D89:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1756D98:         Proc_6_7_F26918(var_F4, CVar(var_D4), var_40C)
  loc_1756DA0:         var_104 = -1 & var_F4 
  loc_1756DED:         var_17C = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_1756E05:         Set var_210 = Me.Txt
  loc_1756E0B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_1756E1A:         Proc_6_7_F26918(var_1CC, CVar(var_218))
  loc_1756E2B:         var_20C = var_17C & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_1756E3A:         Set var_21C = Me.Txt
  loc_1756E40:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_1756E48:         var_240 = CVar(var_220) 'Address
  loc_1756E4F:         Proc_6_7_F26918(var_260, var_240)
  loc_1756E6F:         Set var_284 = Me.Txt
  loc_1756E75:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_1756E7D:         var_2AC = CVar(var_29C) 'Address
  loc_1756E84:         Proc_6_7_F26918(var_2BC, var_2AC)
  loc_1756E9F:         var_2EC = var_20C & var_260 & ">=chkindate and ChngDate<=" & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_1756EC9:         var_314 = Me.Txt.Fields.Item("DocID")
  loc_1756EEC:         var_374 = var_2EC & "' AND ROOMOCC.DOCID='" & var_314.Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_1756F3D:         unk_42F80C.Execute CStr(var_374 & "' AND ROOMOCC.DOCID='" & Me.Recordset15.Fields.Item("DocID").Value & "')"), var_410, 
  loc_1756F48:         Set var_A0 = var_410
  loc_1756FB7:         var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1756FC7:         Set var_D0 = Me.Txt
  loc_1756FCD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1756FDC:         Proc_6_7_F26918(var_F4, CVar(var_D4), var_604)
  loc_1756FE4:         var_104 = -1 & var_F4 
  loc_175702E:         var_17C = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" & var_A0.Fields.Item("DocID").Value 
  loc_1757055:         var_218 = var_A0.Fields.Item("RoomNo")
  loc_1757065:         var_1CC = var_17C & "' and ROOMOCC.ROOMNO='" & var_218.Value 
  loc_175707D:         Set var_21C = Me.Txt
  loc_1757083:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_1757092:         Proc_6_7_F26918(var_240, CVar(var_220))
  loc_175709A:         var_260 = var_1CC & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_240 
  loc_17570B2:         Set var_284 = Me.Txt
  loc_17570B8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_17570C7:         Proc_6_7_F26918(var_2AC, CVar(var_29C))
  loc_17570CF:         var_2BC = var_260 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_2AC 
  loc_17570E7:         Set var_300 = Me.Txt
  loc_17570ED:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_314)
  loc_17570FC:         Proc_6_7_F26918(var_2EC, CVar(var_314))
  loc_1757120:         var_354 = var_2BC & ">=chkindate and ChngDate<=" & var_2EC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" 
  loc_1757175:         var_414 = var_A0.Fields.Item("RoomNo")
  loc_175718E:         var_40C = var_354 & var_A0.Fields.Item("DocID").Value & "' and ROOMOCC.ROOMNO='" & var_414.Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" 
  loc_1757198:         var_424 = var_40C & CVar(MemVar_1F95070) 
  loc_17571B7:         var_448 = var_A0.Fields
  loc_17571FE:         var_4C4 = var_A0.Fields.Item("RoomNo").Value
  loc_175720F:         var_4F4 = var_424 & "' AND ROOMOCC.DOCID='" & var_448.Item("DocID").Value & "' and ROOMOCC.ROOMNO='" & var_4C4 & "') AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' And ROOMNO='" 
  loc_1757255:         Set var_550 = Me.Txt
  loc_175725B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_554)
  loc_175726A:         Proc_6_7_F26918(var_574, CVar(var_554))
  loc_175728E:         var_5E4 = var_4F4 & var_A0.Fields.Item("RoomNo").Value & "' AND VDATE=" & var_574 & " AND SITE_CODE='" & CVar(MemVar_1F95070) & "')" 
  loc_175729C:         unk_42F80C.Execute CStr(var_5E4), var_608, 
  loc_17572A7:         Set var_88 = var_608
  loc_1757342:       Else
  loc_175734F:         var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_175735F:         Set var_D0 = Me.Txt
  loc_1757365:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1757374:         Proc_6_7_F26918(var_F4, CVar(var_D4), var_4C4)
  loc_175737C:         var_104 = -1 & var_F4 
  loc_17573C9:         var_17C = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_17573E1:         Set var_210 = Me.Txt
  loc_17573E7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_17573F6:         Proc_6_7_F26918(var_1CC, CVar(var_218))
  loc_1757407:         var_20C = var_17C & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_1757416:         Set var_21C = Me.Txt
  loc_175741C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_175742B:         Proc_6_7_F26918(var_260, CVar(var_220))
  loc_175744B:         Set var_284 = Me.Txt
  loc_1757451:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_1757460:         Proc_6_7_F26918(var_2BC, CVar(var_29C))
  loc_1757484:         var_2FC = var_20C & var_260 & ">=chkindate and ChngDate<=" & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DocID='" 
  loc_17574C8:         var_374 = var_2FC & Me.Txt.Fields.Item("DocID").Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_175750B:         var_3EC = var_374 & "' AND ROOMOCC.DOCID='" & Me.Recordset15.Fields.Item("DocID").Value & "') AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=" 
  loc_175751A:         Set var_410 = Me.Txt
  loc_1757520:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_414)
  loc_175752F:         Proc_6_7_F26918(var_424, CVar(var_414))
  loc_1757561:         unk_42F80C.Execute CStr(var_3EC & var_424 & " AND SITE_CODE='" & CVar(MemVar_1F95070) & "')"), var_448, 
  loc_175756C:         Set var_88 = var_448
  loc_17575DC:       End If
  loc_17575DF:     Else
  loc_17575E2:     Else
  loc_17575E5:     Else
  loc_17575F2:       var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1757602:       Set var_D0 = Me.Txt
  loc_1757608:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1757617:       Proc_6_7_F26918(var_F4, CVar(var_D4), var_4C4)
  loc_175761F:       var_104 = -1 & var_F4 
  loc_1757628:       var_114 = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" 
  loc_1757675:       var_18C = var_114 & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " 
  loc_1757684:       Set var_210 = Me.Txt
  loc_175768A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_1757699:       Proc_6_7_F26918(var_1CC, CVar(var_218))
  loc_17576B9:       Set var_21C = Me.Txt
  loc_17576BF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_17576CE:       Proc_6_7_F26918(var_260, CVar(var_220))
  loc_17576DF:       var_298 = var_18C & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_260 & ">=chkindate and ChngDate<=" 
  loc_17576EE:       Set var_284 = Me.Txt
  loc_17576F4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_1757703:       Proc_6_7_F26918(var_2BC, CVar(var_29C))
  loc_1757758:       var_334 = var_298 & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_1757774:       var_394 = var_334 & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" 
  loc_17577AE:       var_3EC = var_394 & Me.Recordset15.Fields.Item("DocID").Value & "') AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=" 
  loc_17577BD:       Set var_410 = Me.Txt
  loc_17577C3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_414)
  loc_17577CB:       var_40C = CVar(var_414) 'Address
  loc_17577D2:       Proc_6_7_F26918(var_424, var_40C)
  loc_1757804:       unk_42F80C.Execute CStr(var_3EC & var_424 & " AND SITE_CODE='" & CVar(MemVar_1F95070) & "')"), var_448, 
  loc_175780F:       Set var_88 = var_448
  loc_175787F:     End If
  loc_1757896:     If (Me.Recordset15.RecordCount > 0) Then
  loc_17578DE:       var_158 = Me.Recordset15.Fields
  loc_1757915:       If ((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CheckOut"))) = "Other") And (Proc_6_38_E69628(CVar(var_158.Item("RoomRentBefChkOut"))) = "Yes")) Then
  loc_1757947:         var_D4 = Me.Recordset15.Fields.Item("DocID")
  loc_1757964:         var_A8 = CStr("Select * from RoomOcc Where DocId='" & var_D4.Value & "' And SNo=1")
  loc_175796E:         unk_42F80C.Execute var_A8, var_114, -1
  loc_1757979:         Set var_90 = var_158
  loc_17579A2:         var_158 = var_90.Fields
  loc_17579D8:         var_218 = Me.Recordset15.Fields.Item("CheckoutVar")
  loc_17579E0:         var_F4 = CVar(var_218) 'Address
  loc_1757A29:         var_220 = Me.Recordset15.Fields.Item("VariationBefore")
  loc_1757A55:         var_16C = CVar(Proc_6_38_E69628(CVar(var_220), 1)) 'String
  loc_1757A77:         var_29C = var_90.Fields.Item("ChkInTime")
  loc_1757AA3:         var_1CC = CVar(Proc_6_38_E69628(CVar(var_29C), 1, 1)) 'String
  loc_1757AC2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_A8, 1)
  loc_1757ACA:         1 = var_D4.Text
  loc_1757AEF:         Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_F4)), "hh:nn")), CDate(Format(var_16C, "hh:nn")), (CDate(var_A8) = CDate(Proc_6_38_E69628(CVar(var_158.Item("ChkInDate"))))))
  loc_1757B3C:         If (var_158 And (1 > CDate(Format(var_1CC, "hh:nn")))) Then
  loc_1757B67:           unk_42F80C.Execute CStr(Me.Recordset15.Source), var_F4, -1
  loc_1757B90:           Set var_D0 = Me.Txt
  loc_1757B96:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4)
  loc_1757B9E:           var_A8 = var_D4.Text
  loc_1757BA8:           var_620 = 0
  loc_1757BB3:           var_61C = 0
  loc_1757BD0:           Proc_96_4_1C1E774(CDate(var_A8), Me.Txt, 0)
  loc_1757BE7:         End If
  loc_1757BE7:       End If
  loc_1757BF5:       Set var_D0 = Me.Txt
  loc_1757BFB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_A8)
  loc_1757C03:       var_61C = var_D4.Text
  loc_1757C0D:       var_620 = 0
  loc_1757C39:       Proc_96_4_1C1E774(CDate(var_A8), var_88, 0, 0)
  loc_1757C50:     End If
  loc_1757C50:   End If
  loc_1757C56:   var_8C.MoveNext
  loc_1757C5B:   GoTo loc_1756AC0
  loc_1757C5E: End If
  loc_1757C6B: var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP],GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid   FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1757C81: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC, var_16C, -1)
  loc_1757C90: Proc_6_7_F26918(var_F4, CVar(var_D4), var_158)
  loc_1757CC2: unk_42F80C.Execute CStr(var_620 & var_F4 & " >=chkindate and ChkOutDate is Null  AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "'"), var_620, Me.Txt
  loc_1757CCD: Set var_8C = var_158
  loc_1757CEB: ' Referenced from: 17584EC
  loc_1757CFD: If Not(Me.Recordset15.EOF) Then
  loc_1757D0D:   var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP],GUESTFOLIO.GuestProf As GuestCode,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1757D1D:   Set var_D0 = Me.Txt
  loc_1757D23:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1757D32:   Proc_6_7_F26918(var_F4, CVar(var_D4), var_40C)
  loc_1757D3A:   var_104 = -1 & var_F4 
  loc_1757D87:   var_17C = var_620 & var_F4 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_1757D9F:   Set var_210 = Me.Txt
  loc_1757DA5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_1757DB4:   Proc_6_7_F26918(var_1CC, CVar(var_218))
  loc_1757DC5:   var_20C = var_17C & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_1757DD4:   Set var_21C = Me.Txt
  loc_1757DDA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_1757DE9:   Proc_6_7_F26918(var_260, CVar(var_220))
  loc_1757E09:   Set var_284 = Me.Txt
  loc_1757E0F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_1757E1E:   Proc_6_7_F26918(var_2BC, CVar(var_29C))
  loc_1757E42:   var_2FC = var_20C & var_260 & ">=chkindate and ChngDate<=" & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND ROOMOCC.DOCID='" 
  loc_1757E86:   var_374 = var_2FC & Me.Txt.Fields.Item("DocID").Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_1757ED7:   unk_42F80C.Execute CStr(var_374 & "' AND ROOMOCC.DOCID='" & Me.Recordset15.Fields.Item("DocID").Value & "')"), var_410, 
  loc_1757EE2:   Set var_88 = var_410
  loc_1757F5B:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1757FA7:     var_158 = Me.Recordset15.Fields
  loc_1757FB7:     var_F4 = CVar(var_158.Item("PLANAmt")) 'Address
  loc_1757FBE:     Proc_6_39_E7D3A0(var_620 & var_F4, var_F4)
  loc_1757FEB:     If CBool((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PlanCode"))) <> vbNullString) And (var_620 & var_F4 <> 0)) Then
  loc_1758018:       var_D4 = Me.Recordset15.Fields.Item("PlanCode")
  loc_175802D:       var_AC = -1 & Proc_6_38_E69628(CVar(var_D4), "Select PLan_Package from PlanMast where Code='", var_F4)
  loc_175803D:       unk_42F80C.Execute 0 & "'", var_158, 
  loc_1758048:       Set var_94 = var_158
  loc_1758076:       If (var_94.RecordCount > 0) Then
  loc_1758087:         Set var_D0 = Me.Txt
  loc_175808D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4)
  loc_1758095:         var_A8 = var_D4.Text
  loc_17580BC:         var_CC = CVar(Me.Recordset15.Fields.Item("mFolioNo")) 'Address
  loc_17580C3:         Proc_6_39_E7D3A0(var_F4)
  loc_1758174:         var_18C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_175819E:         var_1AC = Me.Recordset15.Fields.Item("GuestCode").Value
  loc_17581C8:         var_1CC = Me.Recordset15.Fields.Item("DocID").Value
  loc_17581EF:         var_154 = CVar(Me.Recordset15.Fields.Item("mFolioNoDocid")) 'Address
  loc_175823D:         Proc_96_23_1C36494(CDate(var_A8), CLng(var_F4), CLng(Me.Recordset15.Fields.Item("FolioNo").Value), CStr(Me.Recordset15.Fields.Item("PlanCode").Value), CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("PLan_Package")))))))
  loc_175828D:       End If
  loc_175828D:     End If
  loc_175829F:     var_D0 = Me.Recordset15.Fields
  loc_17582A7:     var_D4 = var_D0.Item("ExtraBed")
  loc_17582AF:     var_CC = CVar(var_D4) 'Address
  loc_17582B6:     Proc_6_39_E7D3A0(var_F4, var_CC, CStr(var_18C), CStr(var_1AC))
  loc_17582D0:     If CBool(var_F4 <> 0) Then
  loc_17582E9:       unk_42F80C.Execute "Select Name from RevMast where ShortName='EXTB'", var_CC, -1
  loc_1758311:       If (var_D0.RecordCount > 0) Then
  loc_1758328:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_A8, Me.Txt)
  loc_1758330:         CStr(var_1CC) = var_D4.Text
  loc_175835E:         Proc_6_39_E7D3A0(var_F4, CVar(Me.Recordset15.Fields.Item("mFolioNo")))
  loc_1758388:         var_114 = Me.Recordset15.Fields.Item("FolioNo").Value
  loc_17583DC:         var_154 = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_1758406:         var_16C = Me.Recordset15.Fields.Item("GuestCode").Value
  loc_1758430:         var_17C = Me.Recordset15.Fields.Item("DocID").Value
  loc_1758457:         var_104 = CVar(Me.Recordset15.Fields.Item("mFolioNoDocid")) 'Address
  loc_175849D:         Proc_96_24_174D24C(CDate(var_A8), CLng(var_F4), CLng(var_114), CSng(Me.Recordset15.Fields.Item("ExtraBed").Value), CStr(var_154))
  loc_17584E1:       End If
  loc_17584E1:     End If
  loc_17584E1:   End If
  loc_17584E7:   var_8C.MoveNext
  loc_17584EC:   GoTo loc_1757CEB
  loc_17584EF: End If
  loc_17584FC: Me.lblDisplay.Caption = "Posting Room Charges Completed"
  loc_175850E: Me.lblDisplay.Refresh
  loc_175851B: Set var_A4 = Nothing
  loc_1758523: Set var_98 = Nothing
  loc_175852B: Set var_88 = Nothing
  loc_1758533: Set var_8C = Nothing
  loc_175853B: Set var_90 = Nothing
  loc_1758543: Set var_94 = Nothing
  loc_175854B: Set var_A0 = Nothing
  loc_1758555: Call 0.Method_arg_A4 (CInt(0), CStr(var_16C), CStr(var_17C))
  loc_175855A: Exit Sub
  loc_175855B: ' Referenced from: 175694C
  loc_1758563: Set var_D0 = Err()
  loc_1758569: Call 0.Method_arg_2C (var_A8, Proc_6_38_E69628(var_104, Proc_6_38_E69628(var_154)))
  loc_1758582: MsgBox(CVar(var_A8), &H10, var_F4, var_104, var_114)
  loc_1758595: Exit Sub
End Sub

Private Sub Form_Load() 'E65854
  'Data Table: 42F7F4
  Dim var_8C As TextBox
  loc_E6580C: On Error Goto loc_E6584C
  loc_E65816: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E6582E: Set var_88 = Me.Txt
  loc_E65834: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_E6583C: var_8C.Text = CStr(MemVar_1F950EC)
  loc_E6584B: Exit Sub
  loc_E6584C: ' Referenced from: E6580C
  loc_E6584C: Proc_6_60_E63754()
  loc_E65851: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0283C
  'Data Table: 42F7F4
  loc_E02835: MasterFormExit = 0
  loc_E02838: Exit Sub
  loc_E02839: MasterFormExit = arg_3AFF
End Sub

Private Sub Form_Deactivate() 'E26DE4
  'Data Table: 42F7F4
  loc_E26DC9: If (MasterFormExit = &HFF) Then
  loc_E26DD9:   Me.Global.Unload Me
  loc_E26DE1: End If
  loc_E26DE1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E602C8
  'Data Table: 42F7F4
  loc_E6027C: On Error Goto loc_E602BF
  loc_E60289: If (CLng(KeyCode) = &H1B) Then
  loc_E60299:   Me.Global.Unload Me
  loc_E602A1:   Exit Sub
  loc_E602A2: End If
  loc_E602B6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E602BE: Exit Sub
  loc_E602BF: ' Referenced from: E6027C
  loc_E602BF: Proc_6_60_E63754(Shift)
  loc_E602C4: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'ECA1FC
  'Data Table: 42F7F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECA162: Set var_88 = Me.Txt
  loc_ECA168: Call 0.Method_Txt_GotFocus0 (Index)
  loc_ECA176: Proc_6_74_E23240(var_8C)
  loc_ECA191: Set var_88 = Me.Txt
  loc_ECA197: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA19F: var_8C.SelStart = 0
  loc_ECA1B8: Set var_88 = Me.Txt
  loc_ECA1BE: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA1D9: Set var_90 = Me.Txt
  loc_ECA1DF: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_ECA1E7: var_98.SelLength = Len(var_8C.Text)
  loc_ECA1FA: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E3F2D8
  'Data Table: 42F7F4
  loc_E3F2AE: If (Shift = &HD) Then
  loc_E3F2B9:   Call Txt_Validate(KeyCode)
  loc_E3F2CC:   Proc_303_0_FBACC8("	", 0)
  loc_E3F2D4: End If
  loc_E3F2D4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E488D4
  'Data Table: 42F7F4
  loc_E488B2: Set var_88 = Me.Txt
  loc_E488B8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E488C6: Proc_6_73_E23294(var_8C)
  loc_E488D2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E9ED90
  'Data Table: 42F7F4
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_E9ED2E: If (Cancel = CInt(0)) Then
  loc_E9ED3E:   Set var_90 = Me.Txt
  loc_E9ED44:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_E9ED6A:   Set var_A0 = Me.Txt
  loc_E9ED70:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_E9ED78:   var_A4.Text = Proc_6_34_14EEAAC(var_94.Text)
  loc_E9ED8F: End If
  loc_E9ED8F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E15E80
  'Data Table: 42F7F4
  loc_E15E75: Me.Global.Unload Me
  loc_E15E7D: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 'EB2264
  'Data Table: 42F7F4
  Dim var_86 As Integer
  loc_EB21DF: var_86 = Cancel
  loc_EB21E8: If (var_86 = 0) Then
  loc_EB21F8:   Me.Global.Unload Me
  loc_EB2203: Else
  loc_EB2209:   If (var_86 = 1) Then
  loc_EB220F:     Call Proc_62_23_10A996C(var_8E)
  loc_EB221A:     If (var_8E = 0) Then
  loc_EB223C:       MsgBox(CVar("There is some unsettled guest bill," & vbCrLf & "First Settle it then Process this operation"), 0, var_C4, var_E4, var_104)
  loc_EB224F:       Exit Sub
  loc_EB2250:     End If
  loc_EB2250:     Call TopCtrl1_UnknownEvent_16()
  loc_EB225C:     Call 0.Method_arg_A4 (CInt(0))
  loc_EB2261:   End If
  loc_EB2261: End If
  loc_EB2261: Exit Sub
  loc_EB2262: Set arg_7C78 = var_86
End Sub

Public Function MasterFormExitGet() '42FF48
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '42FF57
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '42FF66
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '42FF75
  mVType = Value
End Sub

Public Function VnoRCGet() '42FF84
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '42FF93
  VnoRC = Value
End Sub

Public Function vPrefixGet() '42FFA2
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '42FFB1
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '42FFC0
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '42FFCF
  VprefixRC = Value
End Sub

Public Function DocIDGet() '42FFDE
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '42FFED
  DocID = Value
End Sub

Public Sub Proc_62_23_10A996C
  'Data Table: 42F7F4
  Dim var_B0 As String
  Dim var_150 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_1B0 As String
  Dim var_1D0 As String
  Dim var_240 As Variant
  Dim var_264 As String
  Dim unk_42F80C As Connection15
  Dim var_8C As Recordset15
  Dim var_288 As Fields15
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_29C As Recordset15
  Dim var_2A0 As Fields15
  Dim var_2A4 As Field20
  Dim var_86 As Integer
  loc_10A971B: var_180 = "convert(char,RoomOcc.DepDate ,103)"
  loc_10A973B: var_190 = IIf((MemVar_1F953B0 = "A"), " RoomOcc.DepDate", var_180)
  loc_10A9755: var_110 = "SELECT Distinct RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot," & IIf((MemVar_1F953B0 = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_10A9769: var_1B0 = " as DepDate , GuestProf.Name AS GuestName, GuestProf.GuestStatus, SubGroup.Name AS CompanyName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono,RoomOcc.PlanCode,PlanMast.Plan_package,GuestFolio.DocId ,GuestFolio.MFolioNoDocid"
  loc_10A9772: var_1D0 = " FROM (((((RoomOcc iNNER JOIN RoomMast ON RoomMast.Code = RoomOcc.RoomNo) Left join PlanMast on RoomOcc.PlanCode=PlanMast.Code) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (ROOMOCC.LOGSITE_CODE='"
  loc_10A9794: var_240 = var_110 & " as CheckInDate ," & var_190 & var_1B0 & var_1D0 & CVar(MemVar_1F95078) & "' AND ROOMMAST.LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_10A97A1: var_264 = CStr(var_240 & "') AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code")
  loc_10A97AB: unk_42F80C.Execute var_264, var_284, -1
  loc_10A97B6: Set var_8C = var_288
  loc_10A97E6: ' Referenced from: 10A994D
  loc_10A97F5: If Not(var_8C.EOF) Then
  loc_10A97FE:   var_150 = 0
  loc_10A9843:   var_E0 = "Select Count(*) from PayCharge where Folionodocid is not null and folionodocid<>'' and (FolioNoDocid='" & var_8C.Fields.Item("mFolioNoDocid").Value 
  loc_10A984C:   var_F0 = var_E0 & "' Or Folionodocid='" 
  loc_10A9872:   var_110 = var_8C.Fields.Item("DocID").Value
  loc_10A987A:   var_130 = var_F0 & var_110 
  loc_10A9891:   unk_42F80C.Execute CStr(var_130 & "') and Bill_No<>'' and Bill_No is Not NULL"), var_180, -1
  loc_10A9899:   var_29C = var_29C.Fields
  loc_10A98A1:   var_150 = var_2A0.Item(var_2A0)
  loc_10A98A9:   var_2A4 = var_2A4.Value
  loc_10A98E0:   If (var_190 > 0) Then
  loc_10A9918:     var_B0 = "Re-Check Room No : "
  loc_10A9920:     var_E0 = "Select Count(*) from PayCharge where Folionodocid is not null and folionodocid<>'' and (FolioNoDocid='" & var_8C.Fields.Item("SearchCode").Value 
  loc_10A9924:     MsgBox(var_E0, &H40, var_F0, var_110, var_130)
  loc_10A993F:     var_86 = 0
  loc_10A9945:   Else
  loc_10A9948:     var_8C.MoveNext
  loc_10A994D:     GoTo loc_10A97E6
  loc_10A9950:   End If
  loc_10A9952:   var_86 = &HFF
  loc_10A9955: End If
  loc_10A995A: Set var_90 = Nothing
  loc_10A9962: Set var_8C = Nothing
  loc_10A9965: Proc_62_23_10A996C = var_86
End Sub
