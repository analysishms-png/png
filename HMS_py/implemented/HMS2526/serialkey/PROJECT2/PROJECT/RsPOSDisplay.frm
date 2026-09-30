VERSION 5.00
Begin VB.Form RsPOSDisplay
  Caption = "Display Table"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPOSDisplay.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
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
  Begin CommandButton CmdTBInfo
    Caption = "TB"
    Left = 12765
    Top = 45
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 42
    TabStop = 0   'False
  End
  Begin MSHFlexGrid FGridTb
    Left = 14760
    Top = 165
    Width = 5280
    Height = 5265
    Visible = 0   'False
    TabIndex = 41
  End
  Begin VScrollBar VScroll1
    Left = 12120
    Top = 4500
    Width = 300
    Height = 5565
    Visible = 0   'False
    TabIndex = 40
  End
  Begin HScrollBar HScroll1
    Left = 4350
    Top = 9840
    Width = 7755
    Height = 285
    Visible = 0   'False
    TabIndex = 39
  End
  Begin PictureBox PicContainer
    Left = 4905
    Top = 4500
    Width = 7395
    Height = 5385
    Visible = 0   'False
    TabIndex = 36
    ScaleMode = 1
    AutoRedraw = True
    FontTransparent = True
    BorderStyle = 0 'None
    Begin PictureBox PicContent
      Left = 0
      Top = 0
      Width = 7170
      Height = 4905
      TabIndex = 37
      ScaleMode = 1
      AutoRedraw = True
      FontTransparent = True
      Begin BtnEnh BtnEnTb
        Index = 0
        Left = 0
        Top = 0
        Width = 960
        Height = 900
        Visible = 0   'False
        TabIndex = 38
      End
    End
  End
  Begin CommandButton Command1
    Caption = "Command1"
    Left = 12300
    Top = 1035
    Width = 1605
    Height = 465
    Visible = 0   'False
    TabIndex = 35
  End
  Begin MainCtrl TOpCtrl1
    Left = 0
    Top = 8925
    Width = 14670
    Height = 210
    Visible = 0   'False
    TabIndex = 29
  End
  Begin Frame FrPendingOrder
    Caption = "PENDING ORDER"
    Left = 0
    Top = 7725
    Width = 9330
    Height = 2580
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdUp2
      Caption = "Up"
      Left = 6075
      Top = 480
      Width = 1000
      Height = 1000
      TabIndex = 16
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsPOSDisplay.frx":442
    End
    Begin CommandButton CmdDown2
      Caption = "Down"
      Left = 7080
      Top = 495
      Width = 1000
      Height = 1000
      TabIndex = 14
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdExit2
      Caption = "Exit"
      Left = 8085
      Top = 495
      Width = 1000
      Height = 1000
      Visible = 0   'False
      TabIndex = 13
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsPOSDisplay.frx":884
    End
    Begin MSHFlexGrid FGrid2
      Left = 315
      Top = 495
      Width = 5535
      Height = 1965
      TabIndex = 15
    End
  End
  Begin Frame FrSettlement
    Caption = "UNSETTLED BILL"
    ForeColor = &HC00000&
    Left = 6465
    Top = 6330
    Width = 9330
    Height = 2580
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin MSHFlexGrid FGrid
      Left = 375
      Top = 480
      Width = 5535
      Height = 1965
      TabIndex = 11
    End
    Begin BtnEnh CmdUP
      Left = 7050
      Top = 1245
      Width = 1005
      Height = 1005
      TabIndex = 30
    End
    Begin BtnEnh CmdDown
      Left = 8160
      Top = 165
      Width = 1005
      Height = 1005
      TabIndex = 31
    End
    Begin BtnEnh CmdExit
      Left = 8295
      Top = 1305
      Width = 1005
      Height = 1005
      TabIndex = 32
    End
    Begin BtnEnh CmdRef
      Left = 6810
      Top = 150
      Width = 1005
      Height = 1005
      TabIndex = 33
    End
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 10000
    Left = 9930
    Top = 3015
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 975
    Width = 11415
    Height = 7065
    TabIndex = 0
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh CmdUnSBill
    Left = 6525
    Top = 495
    Width = 2715
    Height = 450
    TabIndex = 19
  End
  Begin BtnEnh CmdUnload
    Left = 9240
    Top = 465
    Width = 2715
    Height = 450
    TabIndex = 20
  End
  Begin Frame FrameOption
    Caption = "Frame1"
    BackColor = &HFFC0FF&
    Left = 11685
    Top = 1650
    Width = 2700
    Height = 4110
    TabIndex = 9
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin BtnEnh CmdAKOT
      Left = 0
      Top = 0
      Width = 2700
      Height = 600
      TabIndex = 22
    End
    Begin BtnEnh CmdSBill
      Left = 0
      Top = 585
      Width = 2700
      Height = 600
      TabIndex = 23
    End
    Begin BtnEnh CmdChngTable
      Left = 0
      Top = 1170
      Width = 2700
      Height = 600
      TabIndex = 24
    End
    Begin BtnEnh CmdBillLookup
      Left = 0
      Top = 1755
      Width = 2700
      Height = 600
      TabIndex = 25
    End
    Begin BtnEnh CmdPKOT
      Left = 0
      Top = 2340
      Width = 2700
      Height = 600
      TabIndex = 26
    End
    Begin BtnEnh CmdOrderBook
      Left = 0
      Top = 2925
      Width = 2700
      Height = 600
      TabIndex = 27
    End
    Begin BtnEnh CmdCancel
      Left = 0
      Top = 3510
      Width = 2700
      Height = 600
      TabIndex = 28
    End
  End
  Begin BtnEnh cmdPrintPKOT
    Left = 11955
    Top = 465
    Width = 2670
    Height = 450
    Visible = 0   'False
    TabIndex = 34
  End
  Begin Label LBLRoomName1
    ForeColor = &HC00000&
    Left = 7470
    Top = 15
    Width = 4335
    Height = 435
    TabIndex = 21
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Billed"
    Index = 7
    ForeColor = &HC00000&
    Left = 4440
    Top = 570
    Width = 570
    Height = 240
    TabIndex = 17
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
  Begin Label Label5
    Caption = "#"
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 4245
    Top = 105
    Width = 2265
    Height = 285
    TabIndex = 8
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
  Begin Label Label4
    Caption = "#"
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 150
    Top = 105
    Width = 3150
    Height = 285
    TabIndex = 7
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vacant"
    Index = 6
    ForeColor = &HC00000&
    Left = 2565
    Top = 570
    Width = 660
    Height = 240
    TabIndex = 6
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
    Left = 510
    Top = 570
    Width = 900
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
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 2025
    Top = 540
    Width = 1680
    Height = 315
    TabIndex = 4
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
  Begin Label Label3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 0
    Top = 0
    Width = 11970
    Height = 450
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
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 165
    Top = 540
    Width = 1515
    Height = 315
    TabIndex = 3
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
    Index = 7
    BackColor = &HC0FFC0&
    ForeColor = &H80000008&
    Left = 4005
    Top = 540
    Width = 1395
    Height = 315
    TabIndex = 18
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
  Begin Label LBLRoomName
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = -15
    Top = 480
    Width = 11970
    Height = 450
    TabIndex = 2
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
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

Attribute VB_Name = "RsPOSDisplay"

Private global_82 As Integer
Private global_104 As Integer

Private Sub CmdUnSBill_UnknownEvent_9 '1028AB0
  'Data Table: 535CB8
  Dim var_88 As Variant
  Dim var_8C As String
  Dim var_94 As String
  Dim var_9C As String
  Dim var_A8 As String
  Dim unk_535CC2 As Connection15
  Dim Me As Recordset15
  loc_10288A2: Set var_88 = Me.FrameOption
  loc_10288A8: var_88.Visible = False
  loc_10288BB: If (global_112 = "Y") Then
  loc_10288D2:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],Max(AA.VNo) As [Order No] ,Max(AA.CustName) As [Customer Name], " & "Max(AA.PhoneNo) As [Phone No] "
  loc_10288E0:   var_94 = var_8C & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_10288EE:   var_9C = var_94 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN (SELECT PD.ContraDocId,P.VNo,P.CustName,P.PhoneNo FROM PackingOrder P Right JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID) AA  On AA.ContraDocID = Sale1.DocId "
  loc_1028906:   var_A8 = var_9C & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='" & global_100
  loc_1028927:   unk_535CC2.Execute var_A8 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.Vno)", var_D4, -1
  loc_1028938:   Set global_116 = var_88
  loc_1028962: Else
  loc_1028976:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],MAX(T.Code) AS [Table No] ,max(Waiter.Name) as Steward, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_1028984:   var_94 = var_8C & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_1028992:   var_9C = var_94 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code "
  loc_10289AA:   var_A8 = var_9C & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='" & global_100
  loc_10289CB:   unk_535CC2.Execute var_A8 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(T.Code)", var_D4, -1
  loc_10289DC:   Set global_116 = var_88
  loc_1028A03: End If
  loc_1028A0C: CVarUnk
  loc_1028A11: VerifyVarObj
  loc_1028A17: Set var_88 = Me.FGrid
  loc_1028A1D: LateIdStAd
  loc_1028A42: If (Me.RecordCount <= 0) Then
  loc_1028A58:   Me.FGrid.Rows = 2
  loc_1028A6D:   Set var_88 = Me.FGrid
  loc_1028A73:   var_88.FixedRows = 1
  loc_1028A7B: End If
  loc_1028A7B: Call Proc_171_47_11B0FF0(var_88, global_116)
  loc_1028A90: Me.FrSettlement.ZOrder 0
  loc_1028AA4: Me.FrSettlement.Visible = True
  loc_1028AAC: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E1BD80
  'Data Table: 535CB8
  loc_E1BD74: Me.FrameOption.Visible = False
  loc_E1BD7C: Exit Sub
  loc_E1BD7D: Result  End Sub 'Currency
End Sub

Private Sub CmdRef_UnknownEvent_9 'DFE5D4
  'Data Table: 535CB8
  loc_DFE5CC: Call CmdUnSBill_UnknownEvent_9()
  loc_DFE5D1: Exit Sub
  loc_DFE5D2: Set CmdRef_UnknownEvent_9070 = 
End Sub

Private Sub CmdDown_UnknownEvent_9 'F02AC0
  'Data Table: 535CB8
  Dim var_BC As Variant
  loc_F02A1B: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F02A37:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F02A46:   Me.FGrid.Row = var_BC
  loc_F02A6E:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F02A7D:   Me.FGrid.ColSel = var_BC
  loc_F02AAE:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F02ABD: End If
  loc_F02ABD: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1CD40
  'Data Table: 535CB8
  loc_E1CD24: Call Proc_171_49_174F118()
  loc_E1CD35: Me.FrSettlement.Visible = False
  loc_E1CD3D: Exit Sub
End Sub

Private Sub Timer1_Timer() 'DFEF3C
  'Data Table: 535CB8
  loc_DFEF34: Call Proc_171_54_EC9568()
  loc_DFEF39: Exit Sub
  loc_DFEF3A: CExtInstUnk
End Sub

Private Sub CmdDown2_Click() 'F03180
  'Data Table: 535CB8
  Dim var_BC As Variant
  loc_F030DB: If (CLng(Me.FGrid2.Row) < (CLng(Me.FGrid2.Rows) - 1)) Then
  loc_F030F7:   var_BC = CVar((CLng(Me.FGrid2.Row) + 1)) 'Long
  loc_F03106:   Me.FGrid2.Row = var_BC
  loc_F0312E:   var_BC = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_F0313D:   Me.FGrid2.ColSel = var_BC
  loc_F0316E:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_F0317D: End If
  loc_F0317D: Exit Sub
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE4658
  'Data Table: 535CB8
  Dim var_A8 As Variant
  loc_EE45B3: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE45CF:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE45DE:   Me.FGrid.Row = var_A8
  loc_EE4606:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE4615:   Me.FGrid.ColSel = var_A8
  loc_EE4646:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE4655: End If
  loc_EE4655: Exit Sub
End Sub

Private Sub CmdUp2_Click() 'EE4458
  'Data Table: 535CB8
  Dim var_A8 As Variant
  Dim CmdUp2_Click0FF As Integer
  loc_EE43B3: If (CLng(Me.FGrid2.Row) > 1) Then
  loc_EE43CF:   var_A8 = CVar((CLng(Me.FGrid2.Row) - 1)) 'Long
  loc_EE43DE:   Me.FGrid2.Row = var_A8
  loc_EE4406:   var_A8 = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_EE4415:   Me.FGrid2.ColSel = var_A8
  loc_EE4446:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_EE4455: End If
  loc_EE4455: Exit Sub
  loc_EE4456: CmdUp2_Click0FF = 
End Sub

Private Sub CmdPKOT_UnknownEvent_9 '11D55BC
  'Data Table: 535CB8
  Dim var_86 As Integer
  Dim var_A8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_18C As Variant
  loc_11D517C: Me.FrameOption.Visible = False
  loc_11D51B7: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_11D51CE:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_11D51DA: Else
  loc_11D5219:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11D522D: End If
  loc_11D5240: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D5249: var_E8 = CVar(CLng(var_86)) 'Long
  loc_11D5284: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_11D528C: var_148 = "VACANT"
  loc_11D52A9: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D52B5: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_11D5308: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_11D5313:   If (MemVar_1F95210 = "Yes") Then
  loc_11D531A:     Set var_8C = New RsTouchScreenKOTEntry
  loc_11D5320:   Else
  loc_11D5324:     Set var_8C = New RsKOTEntry
  loc_11D5327:   End If
  loc_11D533F:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D534B:   var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11D5397:   If CBool(InStr(var_E8, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_11D53AD:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D53B9:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11D53EC:     var_148 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D53F8:     var_18C = CVar(CLng((var_86 + 2))) 'Long
  loc_11D5433:     var_16C = (InStr(var_18C, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_11D5459:     var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, Me.FGrid1.Row)
  loc_11D5482:   Else
  loc_11D5495:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D54A1:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11D54C2:     var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_11D54D6:   End If
  loc_11D54DA:   Set var_A8 = var_C8(var_E8)
  loc_11D54FC:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D5518:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11D5559:   var_8C.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_11D5582:   var_8C.LocalRestCode = CVar(global_52)
  loc_11D558F:   var_8C.OpenType = "Pending KOT"
  loc_11D559F:   var_8C.OpenMode = 1
  loc_11D55A6:   Call var_8C.Show
  loc_11D55B1:   global_82 = &HFF
  loc_11D55B4: End If
  loc_11D55B6: Set var_8C = Nothing 
  loc_11D55BA: Exit Sub
End Sub

Private Sub CmdOrderBook_UnknownEvent_9 '1136BB4
  'Data Table: 535CB8
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_86 As Integer
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As String
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_11C As Variant
  Dim var_8C As Recordset15
  loc_113686C: Me.FrameOption.Visible = False
  loc_11368A7: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_11368BE:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_11368CA: Else
  loc_1136909:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_113691D: End If
  loc_1136930: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1136939: var_EC = CVar(CLng(var_86)) 'Long
  loc_1136974: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_113697C: var_14C = "VACANT"
  loc_1136999: var_180 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11369A5: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_11369F8: If CBool(Not var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1136A05:   Set var_90 = New RsBookingEntry
  loc_1136A0F:   Set var_AC = Me.TxtMask
  loc_1136A15:   var_BC = RsBookingEntry.TxtMask.FontUnderline
  loc_1136A22:   Set var_94 = Me.FGrid1
  loc_1136A28:   var_A4 = var_94.Row
  loc_1136A31:   var_CC = CVar(CLng(var_A4)) 'Long
  loc_1136A4D:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_1136A5C:   var_10C = Me.FGrid1.TextMatrix)
  loc_1136A71:   var_11C = CVar(CStr(var_10C)) 'String
  loc_1136A8E:   var_90.PTableNo = Trim(Left(var_11C, 5))
  loc_1136AB7:   var_90.LocalRestCode = CVar(global_52)
  loc_1136AE2:   var_90.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_A4, -1
  loc_1136AED:   Set var_8C = var_94
  loc_1136B11:   If (var_8C.RecordCount > 0) Then
  loc_1136B3B:     var_90.oVType = CVar(var_8C.Fields.Item("V_Type"))
  loc_1136B48:   Else
  loc_1136B61:     MsgBox("Contact to your S/w vendor", &H40, var_BC, var_10C, var_11C)
  loc_1136B71:     Exit Sub
  loc_1136B72:   End If
  loc_1136B72:   var_CC = 1
  loc_1136B7E:   var_90.OpenMode = var_CC
  loc_1136B8D:   var_90.Show var_CC, var_DC
  loc_1136B95:   Call var_90.TopCtrl1_eAdd
  loc_1136BA0:   global_82 = &HFF
  loc_1136BA3: End If
  loc_1136BA8: Set var_90 = Nothing
  loc_1136BB0: Set var_8C = Nothing
  loc_1136BB3: Exit Sub
End Sub

Private Sub CmdAKOT_UnknownEvent_9 '12C2C64
  'Data Table: 535CB8
  Dim var_98 As Variant
  Dim var_D4 As Integer
  Dim var_9C As String
  Dim unk_535CC2 As Connection15
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_86 As Integer
  Dim var_15C As Variant
  Dim var_18C As Variant
  Dim var_128 As Variant
  Dim var_1D0 As Variant
  loc_12C2634: Me.FrameOption.Visible = False
  loc_12C2642: var_D4 = 0
  loc_12C266F: unk_535CC2.Execute "Select count(*) from Waiter where logsite_code='" & MemVar_1F95078 & "' or ActiveYN=''And ActiveYN='Yes'", var_C0, -1
  loc_12C2677: var_98 = var_98.Fields
  loc_12C267F: var_D4 = var_C4.Item(var_C4)
  loc_12C2687: var_D8 = var_D8.Value
  loc_12C26AE: If (var_E8 = 0) Then
  loc_12C26CA:   MsgBox("No Steward Define For this Outlet.", &H40, var_E8, var_108, var_128)
  loc_12C26DA:   Exit Sub
  loc_12C26DB: End If
  loc_12C26E3: If (MemVar_1F95210 = "Yes") Then
  loc_12C26EA:   Set var_8C = New RsTouchScreenKOTEntry
  loc_12C26F0: Else
  loc_12C26F4:   Set var_8C = New RsKOTEntry
  loc_12C26F7: End If
  loc_12C2712: If (Me.PicContainer.Visible = 0) Then
  loc_12C2728:   var_B0 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_12C2740:   var_F8 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_12C2777:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_12C27AD:     If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_12C27C4:       var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_12C27D0:     Else
  loc_12C280F:       var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_12C2823:     End If
  loc_12C2836:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C283F:     var_F8 = CVar(CLng(var_86)) 'Long
  loc_12C28A0:     If (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT") Then
  loc_12C28AC:       var_8C.PSteward = vbNullString
  loc_12C28B3:     Else
  loc_12C28CB:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C28D7:       var_F8 = CVar(CLng((var_86 + 2))) 'Long
  loc_12C2923:       If CBool(InStr(var_F8, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_12C2939:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C2945:         var_F8 = CVar(CLng((var_86 + 2))) 'Long
  loc_12C2978:         var_15C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C2984:         var_18C = CVar(CLng((var_86 + 2))) 'Long
  loc_12C29BF:         var_1D0 = (InStr(var_18C, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_12C29E5:         var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, var_1D0)
  loc_12C2A0E:       Else
  loc_12C2A21:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C2A2D:         var_F8 = CVar(CLng((var_86 + 2))) 'Long
  loc_12C2A4E:         var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_12C2A62:       End If
  loc_12C2A62:     End If
  loc_12C2A66:     Set var_C4 = var_B0(var_F8)
  loc_12C2A88:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C2AA4:     var_F8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_12C2AB3:     var_108 = Me.FGrid1.TextMatrix)
  loc_12C2AE5:     var_8C.PTableNo = Trim(Left(CVar(CStr(var_108)), 5))
  loc_12C2B0E:     var_8C.LocalRestCode = CVar(global_52)
  loc_12C2B1E:     var_8C.OpenMode = 1
  loc_12C2B25:     Call var_8C.Show
  loc_12C2B2E:     Call var_8C.TopCtrl1_eAdd
  loc_12C2B39:     global_82 = &HFF
  loc_12C2B3C:   End If
  loc_12C2B3F: Else
  loc_12C2B4C:   var_9C = Me.FrameOption.Tag
  loc_12C2B66:   var_8C.PTableNo = Trim(CVar(var_9C))
  loc_12C2B7D:   Set var_98 = 1(var_92)
  loc_12C2B99:   For var_214 = var_108 To CInt((CLng(FrameOption.DispID_4) - 1)):   global_82 = var_214 'Integer
  loc_12C2BA8:     var_F8 = 1
  loc_12C2BB5:     Set var_98 = CVar(CLng(var_92))(var_F8)
  loc_12C2BD0:     Set var_C4 = CStr(FrameOption.DispID_41)(var_9C)
  loc_12C2BD6:     var_108 = var_8C.Frame.Tag
  loc_12C2BF1:     If (var_F8 = var_9C) Then
  loc_12C2C07:       Me.FGridTb.Row = CVar(CLng(var_92))
  loc_12C2C0F:       Exit For
  loc_12C2C12:     End If
  loc_12C2C15:   Next var_214 'Integer
  loc_12C2C1A:   ' Referenced from:   12C2C0F
  loc_12C2C23:   var_8C.PSteward = vbNullString
  loc_12C2C34:   var_8C.LocalRestCode = CVar(global_52)
  loc_12C2C44:   var_8C.OpenMode = 1
  loc_12C2C4B:   Call var_8C.Show
  loc_12C2C54:   Call var_8C.TopCtrl1_eAdd
  loc_12C2C5F:   global_82 = &HFF
  loc_12C2C62: End If
  loc_12C2C62: Exit Sub
End Sub

Private Sub Label2_Click(Index As Integer) '101F42C
  'Data Table: 535CB8
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_535CC2 As Connection15
  loc_101F24C: var_94 = 1
  loc_101F256: Set var_A8 = Me.FGrid1
  loc_101F271: arg_20 = Me.CDLG._Action
  loc_101F29B: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101F29E:   Exit Sub
  loc_101F29F: End If
  loc_101F2A9: var_B8 = Me.CDLG.Color
  loc_101F2BC: Set var_BC = Me.Label2
  loc_101F2C2: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101F2CA: var_C0.BackColor = arg_20
  loc_101F312: unk_535CC2.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_101F351: Set var_A8 = Me.CDLG
  loc_101F366: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_101F37D: Set var_BC = Me.Label1
  loc_101F383: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_101F38B: -1 = var_C0.Caption
  loc_101F3BA: Proc_6_7_F26918(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F95070 & "',"))
  loc_101F3C6: var_94 = ",'A','"
  loc_101F3EC: unk_535CC2.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F95078) & "')"), FGrid1.DispID_18001, var_94
  loc_101F42A: Exit Sub
End Sub

Private Sub CmdBillLookup_UnknownEvent_9 '1074BFC
  'Data Table: 535CB8
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_86 As Integer
  loc_1074994: Me.FrameOption.Visible = False
  loc_10749A0: Set var_8C = New RSSaleBillDisplay
  loc_10749A7: Set var_94 = ()
  loc_10749EE: If (CStr(FrameOption.DispID_41) <> vbNullString) Then
  loc_10749F5:   Set var_90 = CVar(CLng(FrameOption.DispID_C))(CVar(CLng(FrameOption.DispID_D)))
  loc_1074A24:   If ((CLng(Val(CStr(CLng(FrameOption.DispID_B)))) Mod 6) = 1) Then
  loc_1074A2B:     Set var_90 = ()
  loc_1074A3B:     var_86 = CInt(CLng(FrameOption.DispID_B))
  loc_1074A47:   Else
  loc_1074A86:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1074A9A:   End If
  loc_1074AAD:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1074AB6:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_1074B1F:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_1074B48:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1074B64:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1074BA5:     var_8C.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_1074BCE:     var_8C.LocalRestCode = CVar(global_52)
  loc_1074BDE:     var_8C.OpenMode = 1
  loc_1074BE5:     Call var_8C.Show
  loc_1074BF0:     global_82 = &HFF
  loc_1074BF3:   End If
  loc_1074BF3: End If
  loc_1074BF5: Set var_94 = Nothing 
  loc_1074BF9: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'F3DF90
  'Data Table: 535CB8
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_F3DE9B: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_F3DE9E:   Exit Sub
  loc_F3DE9F: End If
  loc_F3DEB2: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F3DECA: var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_F3DF01: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_F3DF04:   Exit Sub
  loc_F3DF05: End If
  loc_F3DF0F: var_98 = Me.FGrid1.Rows
  loc_F3DF1E: var_BC = 1
  loc_F3DF5F: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_F3DF62:   Exit Sub
  loc_F3DF63: End If
  loc_F3DF73: Me.FrameOption.ZOrder 0
  loc_F3DF87: Me.FrameOption.Visible = True
  loc_F3DF8F: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E93508
  'Data Table: 535CB8
  loc_E93496: If (Index = &HD) Then
  loc_E934C4:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E934C7:     Call Fgrid1_UnknownEvent_9()
  loc_E934CC:   End If
  loc_E934FF:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E93502:     Call Fgrid1_UnknownEvent_B()
  loc_E93507:   End If
  loc_E93507: End If
  loc_E93507: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '13410F8
  'Data Table: 535CB8
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_100 As Variant
  Dim var_10A As Integer
  Dim var_1A4 As Variant
  Dim var_124 As Variant
  Dim var_110 As Recordset15
  loc_1340957: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_134096F: var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_13409A6: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_13409A9:   Exit Sub
  loc_13409AA: End If
  loc_13409B6: Me.FrameOption.Visible = False
  loc_13409F1: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1340A08:   var_10A = CInt(CLng(Me.FGrid1.Col))
  loc_1340A14: Else
  loc_1340A53:   var_10A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1340A67: End If
  loc_1340A7A: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1340A83: var_DC = CVar(CLng(var_10A)) 'Long
  loc_1340A92: var_AC = Me.FGrid1.TextMatrix)
  loc_1340AEF: var_1A4 = CVar(CLng((var_10A + 3))) 'Long
  loc_1340B3E: If CBool(var_1A4 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1340B4B:   Set var_108 = New RsKOTEntry
  loc_1340B55:   Set var_9C = Me.DGNCType
  loc_1340B5B:   RsKOTEntry.DGNCType.DeleteRowLabels CVar(CLng(Me.FGrid1.Row)), (Right(Ucase(Trim(CVar(CStr(var_AC)))), 6) = "VACANT")
  loc_1340B77:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1340B93:   var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_AC) + 1)) / CDbl(6)))))) 'Long
  loc_1340BD4:   var_108.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_1340BFD:   var_108.LocalRestCode = CVar(global_52)
  loc_1340C01:   var_BC = 1
  loc_1340C0D:   var_108.OpenMode = var_BC
  loc_1340C1C:   var_108.Show var_BC, var_CC
  loc_1340C24:   Call var_108.TopCtrl1_eAdd
  loc_1340C2F:   global_82 = &HFF
  loc_1340C35: Else
  loc_1340C70:   If (CLng(Me.FGrid1.Col) < (CLng(Me.FGrid1.Cols) - 1)) Then
  loc_1340C7E:     If (global_112 = "Y") Then
  loc_1340C8B:       Set var_108 = New RsBookingEntry
  loc_1340C97:       var_1EC = global_88
  loc_1340CA2:       If (var_1EC = "Outlet") Then
  loc_1340CA9:         Set var_9C = Me.TxtMask
  loc_1340CCB:         var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1340CE7:         var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(RsBookingEntry.TxtMask.FontUnderline) + 1)) / CDbl(6)))))) 'Long
  loc_1340D28:         var_108.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_1340D47:       Else
  loc_1340D4F:         If (var_1EC = "Room Service") Then
  loc_1340D5C:           var_AC = Me.FGrid1.Col
  loc_1340D69:           Set var_88 = Me.FGrid1
  loc_1340D6F:           var_98 = var_88.Row
  loc_1340D78:           var_BC = CVar(CLng(var_98)) 'Long
  loc_1340D94:           var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_AC) + 1)) / CDbl(6)))))) 'Long
  loc_1340DA3:           var_100 = Me.FGrid1.TextMatrix)
  loc_1340DB8:           var_124 = CVar(CStr(var_100)) 'String
  loc_1340DD5:           var_108.PTableNo = Trim(Right(var_124, 8))
  loc_1340DF1:         End If
  loc_1340DF1:       End If
  loc_1340DFE:       var_108.LocalRestCode = CVar(global_52)
  loc_1340E29:       var_108.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_98, -1
  loc_1340E34:       Set var_110 = var_88
  loc_1340E58:       If (var_110.RecordCount > 0) Then
  loc_1340E82:         var_108.oVType = CVar(var_110.Fields.Item("V_Type"))
  loc_1340E8F:       Else
  loc_1340EA8:         MsgBox("Contact to your S/w vendor", &H40, var_AC, var_100, var_124)
  loc_1340EB8:         Exit Sub
  loc_1340EB9:       End If
  loc_1340EB9:       var_BC = 1
  loc_1340EC5:       var_108.OpenMode = var_BC
  loc_1340ED4:       var_108.Show var_BC, var_CC
  loc_1340EDC:       Call var_108.TopCtrl1_eAdd
  loc_1340EE7:       global_82 = &HFF
  loc_1340EED:     Else
  loc_1340EF7:       Set var_114 = New RSSaleBill
  loc_1340F03:       var_1F8 = global_88
  loc_1340F0E:       If (var_1F8 = "Outlet") Then
  loc_1340F37:         var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1340F53:         var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1340F94:         var_114.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_1340FB3:       Else
  loc_1340FBB:         If (var_1F8 = "Room Service") Then
  loc_1340FC8:           var_AC = Me.FGrid1.Col
  loc_1340FE4:           var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1341000:           var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_AC) + 1)) / CDbl(6)))))) 'Long
  loc_134100F:           var_100 = Me.FGrid1.TextMatrix)
  loc_1341024:           var_124 = CVar(CStr(var_100)) 'String
  loc_1341041:           var_114.PTableNo = Trim(Right(var_124, 8))
  loc_134105D:         End If
  loc_134105D:       End If
  loc_134106A:       var_114.LocalRestCode = CVar(global_52)
  loc_134106E:       var_BC = 1
  loc_134107A:       var_114.OpenMode = var_BC
  loc_1341089:       var_114.Show var_BC, var_CC
  loc_1341091:       Call var_114.TopCtrl1_eAdd
  loc_134109C:       global_82 = &HFF
  loc_134109F:     End If
  loc_13410A2:   Else
  loc_13410BB:     MsgBox("Select A Table", &H40, var_AC, var_100, var_124)
  loc_13410CB:   End If
  loc_13410CB: End If
  loc_13410D0: Set var_108 = Nothing
  loc_13410D8: Set var_114 = Nothing
  loc_13410E6: Set global_56 = Nothing
  loc_13410F2: Set var_110 = Nothing
  loc_13410F5: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'E5A628
  'Data Table: 535CB8
  loc_E5A5EE: If (Index = &HD) Then
  loc_E5A61C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5A61F:     Call Fgrid1_UnknownEvent_9()
  loc_E5A624:   End If
  loc_E5A624: End If
  loc_E5A624: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB61B0
  'Data Table: 535CB8
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB6030: Set var_88 = Me.FGrid1
  loc_FB6044: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB6055: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB6068: var_FC = CStr(var_88.TextMatrix))
  loc_FB60DA: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB60E9:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB60FA:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB611A:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB612B:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB6168:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB6178:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB619A: Else
  loc_FB61A3:   var_88.ToolTipText = vbNullString
  loc_FB61A8: End If
  loc_FB61AA: Set var_88 = Nothing 
  loc_FB61AE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '1432D3C
  'Data Table: 535CB8
  Dim var_164 As Boolean
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_1B8 As Integer
  Dim var_154 As Variant
  Dim unk_535CC2 As Connection15
  Dim var_1A8 As Fields15
  Dim var_1FC As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2C8 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_394 As Variant
  Dim var_3CC As Variant
  Dim var_3EC As Variant
  loc_1432337: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_143234E: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14323BA: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_14323D0:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14323EE:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_14323FD:   var_C0 = Me.FGrid1.TextMatrix)
  loc_143242B:   var_1B8 = 0
  loc_1432460:   var_154 = CVar("Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='" & global_100 & "' AND LTrim(RTrim(code))='") 'String
  loc_143247D:   unk_535CC2.Execute CStr(var_154 & Trim(Left(CVar(CStr(var_C0)), 5)) & "'"), var_1A4, -1
  loc_1432485:   var_104 = var_104.Fields
  loc_143248D:   var_1B8 = var_1A8.Item(var_1A8)
  loc_14324B1:   var_1FC = CVar(Proc_6_38_E69628(CVar(var_1BC), var_1BC, var_C0, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_14324C8:   var_234 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14324E6:   var_254 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1432522:   var_2C8 = var_254 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1432539:   var_300 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1432557:   var_320 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1432593:   var_394 = var_320 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14325AA:   var_3CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14325C8:   var_3EC = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_1432602:   Me.LBLRoomName1.Caption = CStr(var_3EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_143268A:   Me.LBLRoomName1.Refresh
  loc_1432695: Else
  loc_14326BA:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_14326D1:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143273D:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1432771:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1432780:     var_C0 = Me.FGrid1.TextMatrix)
  loc_14327AE:     var_1B8 = 0
  loc_14327E3:     var_154 = CVar("Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='" & global_100 & "' AND LTrim(RTrim(code))='") 'String
  loc_1432800:     unk_535CC2.Execute CStr(var_154 & Trim(Left(CVar(CStr(var_C0)), 5)) & "'"), var_1A4, -1
  loc_1432808:     var_104 = var_104.Fields
  loc_1432810:     var_1B8 = var_1A8.Item(var_1A8)
  loc_1432834:     var_1FC = CVar(Proc_6_38_E69628(CVar(var_1BC), var_1BC, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_143284B:     var_234 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1432869:     var_254 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_14328A5:     var_2C8 = var_254 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14328BC:     var_300 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14328DA:     var_320 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1432914:     Me.LBLRoomName1.Caption = CStr(var_320 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1432986:     Me.LBLRoomName1.Refresh
  loc_1432991:   Else
  loc_14329B6:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_14329CD:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1432A39:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1432A6D:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1432A7C:       var_C0 = Me.FGrid1.TextMatrix)
  loc_1432AAA:       var_1B8 = 0
  loc_1432ADF:       var_154 = CVar("Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='" & global_100 & "' AND LTrim(RTrim(code))='") 'String
  loc_1432AFC:       unk_535CC2.Execute CStr(var_154 & Trim(Left(CVar(CStr(var_C0)), 5)) & "'"), var_1A4, -1
  loc_1432B04:       var_104 = var_104.Fields
  loc_1432B0C:       var_1B8 = var_1A8.Item(var_1A8)
  loc_1432B30:       var_1FC = CVar(Proc_6_38_E69628(CVar(var_1BC), var_1BC, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_1432B47:       var_234 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1432B65:       var_254 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1432BA1:       var_2C8 = var_254 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1432BB8:       var_300 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1432BD6:       var_320 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1432C12:       var_394 = var_320 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1432C29:       var_3CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1432C47:       var_3EC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1432C81:       Me.LBLRoomName1.Caption = CStr(var_3EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1432D09:       Me.LBLRoomName1.Refresh
  loc_1432D14:     Else
  loc_1432D21:       Me.LBLRoomName1.Caption = vbNullString
  loc_1432D33:       Me.LBLRoomName1.Refresh
  loc_1432D3B:     End If
  loc_1432D3B:   End If
  loc_1432D3B: End If
  loc_1432D3B: Exit Sub
End Sub

Private Sub CmdSBill_UnknownEvent_9 '1137728
  'Data Table: 535CB8
  Dim var_90 As Variant
  Dim var_86 As Integer
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_148 As String
  Dim var_15C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_11373DC: Me.FrameOption.Visible = False
  loc_1137417: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_113742E:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_113743A: Else
  loc_1137479:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_113748D: End If
  loc_11374A0: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11374A9: var_E8 = CVar(CLng(var_86)) 'Long
  loc_11374B8: var_B8 = Me.FGrid1.TextMatrix)
  loc_11374C3: var_108 = CVar(CStr(var_B8)) 'String
  loc_11374E4: var_138 = Right(Ucase(Trim(var_108)), 6)
  loc_11374EC: var_148 = "VACANT"
  loc_1137509: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1137515: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_1137568: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1137575:   Set var_8C = New RSSaleBill
  loc_1137581:   var_1F4 = global_88
  loc_113758C:   If (var_1F4 = "Outlet") Then
  loc_1137593:     Set var_A8 = Me.FrCtrl
  loc_11375A6:     Set var_90 = Me.FrCtrl
  loc_11375B5:     var_C8 = CVar(CLng(FrCtrl.DispID_A)) 'Long
  loc_11375D1:     var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_B8) + 1)) / CDbl(6)))))) 'Long
  loc_11375DA:     Set var_15C = Me.FrCtrl
  loc_1137612:     var_8C.PTableNo = Trim(Left(CVar(CStr(var_108)), 5))
  loc_1137631:   Else
  loc_1137639:     If (var_1F4 = "Room Service") Then
  loc_1137662:       var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_113767E:       var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11376BF:       var_8C.PTableNo = Trim(Right(CVar(CStr(Me.FGrid1.TextMatrix))), 8))
  loc_11376DB:     End If
  loc_11376DB:   End If
  loc_11376E8:   var_8C.LocalRestCode = CVar(global_52)
  loc_11376EC:   var_C8 = 1
  loc_11376F8:   var_8C.OpenMode = var_C8
  loc_1137707:   var_8C.Show var_C8, var_D8
  loc_113770F:   Call var_8C.TopCtrl1_eAdd
  loc_113771A:   global_82 = &HFF
  loc_113771D: End If
  loc_1137722: Set var_8C = Nothing
  loc_1137725: Exit Sub
End Sub

Private Sub CmdChngTable_UnknownEvent_9 '10B0374
  'Data Table: 535CB8
  Dim var_90 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_86 As Integer
  Dim var_10C As MSHFlexGrid
  loc_10B00C4: Me.FrameOption.Visible = False
  loc_10B00D4: If (MemVar_1F95210 = "Yes") Then
  loc_10B00DB:   Set var_8C = New RsTbChange
  loc_10B00E1: Else
  loc_10B00E5:   Set var_8C = New RsTbChange
  loc_10B00E8: End If
  loc_10B00EC: Set var_94 = Me.FGrid1
  loc_10B00FB: var_C4 = CVar(CLng(var_94.RowSel)) 'Long
  loc_10B010C: var_E4 = CVar(CLng(var_94.ColSel)) 'Long
  loc_10B0133: If (CStr(var_94.TextMatrix)) <> vbNullString) Then
  loc_10B0169:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_10B0180:     var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_10B018C:   Else
  loc_10B01CB:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_10B01DF:   End If
  loc_10B01F2:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10B01FB:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_10B0264:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_10B026B:     Set var_10C = Me.FGrid1
  loc_10B0271:     var_B4 = var_10C.Col
  loc_10B028D:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10B02A9:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_B4) + 1)) / CDbl(6)))))) 'Long
  loc_10B02B8:     var_104 = Me.FGrid1.TextMatrix)
  loc_10B02EA:     var_8C.PTableNo = Trim(Left(CVar(CStr(var_104)), 5))
  loc_10B030C:     var_C4 = CVar(global_52) 'String
  loc_10B0313:     var_8C.LocalRestCode = var_C4
  loc_10B0323:     Set var_90 = var_10C(6)
  loc_10B0329:     Call 0.Method_CmdChngTable_UnknownEvent_90 (var_174, var_104, var_E4, var_C4, var_B4, var_E4)
  loc_10B0331:     var_C4 = var_8C.Label.BackColor
  loc_10B0341:     var_8C.TVacantColor = CVar(var_174)
  loc_10B0358:     var_8C.OpenMode = 1
  loc_10B035F:     Call var_8C.Show
  loc_10B036A:     global_82 = &HFF
  loc_10B036D:   End If
  loc_10B036D: End If
  loc_10B036F: Set var_94 = Nothing 
  loc_10B0373: Exit Sub
End Sub

Private Sub Form_Load() '127BBB8
  'Data Table: 535CB8
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_B4 As String
  Dim unk_535CC2 As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_B8 As String
  Dim var_BC As String
  loc_127B620: On Error Goto loc_127BB72
  loc_127B62A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_127B642: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_127B65D: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_127B678: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_127B68E: Me.FrSettlement.BackColor = CLng(MemVar_1F951B4)
  loc_127B6A9: Me.FGrid1.Top = CVar(CDbl(925))
  loc_127B6BD: Set var_B0 = Me.FGrid1
  loc_127B6C3: var_B0.Left = CVar(CDbl(&HA))
  loc_127B6D0: var_BC = 0
  loc_127B6DB: var_B8 = 0
  loc_127B6FD: var_8A = Proc_96_17_FDCB2C(global_52, global_88, 0)
  loc_127B70F: var_C0 = global_88
  loc_127B71A: If (var_C0 = "Outlet") Then
  loc_127B723:   global_100 = "TB"
  loc_127B72A: Else
  loc_127B732:   If (var_C0 = "Room Service") Then
  loc_127B73B:     global_100 = "RO"
  loc_127B73F:   End If
  loc_127B73F: End If
  loc_127B75C: Proc_6_17_EAAE40(var_D0, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_100, -1)
  loc_127B764: var_E0 = var_B0 & var_D0 
  loc_127B772: unk_535CC2.Execute CStr(var_E0), var_8A, var_B8
  loc_127B7C8: If (Proc_6_38_E69628(CVar(var_B0.Fields.Fields.Item("AutoPrintKOTYN"))) = "Yes") Then
  loc_127B7D3:   Set var_B0 = Me.cmdPrintPKOT
  loc_127B7D9:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_127B7ED:   Me.Timer1.Enabled = True
  loc_127B7F5: End If
  loc_127B7FA: Set var_88 = Nothing
  loc_127B7FD: Call ColorLabel()
  loc_127B802: Call Proc_171_49_174F118(var_BC)
  loc_127B82D: var_9C = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_127B83C: Me.FGrid1.Height = True
  loc_127B85E: Me.FGrid1.Width = CVar(CDbl(12010))
  loc_127B894: If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(12010)) Then
  loc_127B8B8:   var_9C = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_127B8C7:   Me.FGrid1.Width = CVar(CDbl(12010))
  loc_127B8D6: End If
  loc_127B8F9: Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_127B945: Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_127B962: Me.FrameOption.Visible = False
  loc_127B979: Me.FrSettlement.Top = CDbl(480)
  loc_127B98F: Me.FrSettlement.Left = CDbl(0)
  loc_127B9BA: Me.FrSettlement.Height = (CDbl(Me.FGrid1.Height) + CDbl(400))
  loc_127B9D5: Me.FrSettlement.Visible = False
  loc_127B9EB: Me.FrPendingOrder.Top = CDbl(0)
  loc_127BA01: Me.FrPendingOrder.Left = CDbl(0)
  loc_127BA13: var_D0 = Me.FGrid1.Height
  loc_127BA21: Set var_104 = Me.FrPendingOrder
  loc_127BA27: var_104.Height = CDbl(var_D0)
  loc_127BA42: Me.FrPendingOrder.Visible = False
  loc_127BA5F: If ("No" = "Yes") Then
  loc_127BA6E:   Me.PicContainer.Visible = True
  loc_127BA82:   Me.VScroll1.Visible = True
  loc_127BA96:   Me.HScroll1.Visible = True
  loc_127BAAA:   Me.Command1.Visible = True
  loc_127BAC0:   Me.FGridTb.Visible = True
  loc_127BAC8: End If
  loc_127BADB: If (TouchScreen = "Yes") Then
  loc_127BAE4:   var_AC = 0
  loc_127BB01:   var_B4 = "Select W.Name  From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_127BB1F:   unk_535CC2.Execute var_B4 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9501C & "'", var_D0, -1
  loc_127BB27:   var_B0 = var_B0.Fields
  loc_127BB2F:   var_AC = var_104.Item(var_104)
  loc_127BB37:   var_10C = var_10C.Value
  loc_127BB4D:   Me.Label5.Caption = CStr(var_E0)
  loc_127BB71: End If
  loc_127BB71: Exit Sub
  loc_127BB72: ' Referenced from: 127B620
  loc_127BB7A: Set var_B0 = Err()
  loc_127BB80: Call 0.Method_arg_2C (var_B4)
  loc_127BBA1: MsgBox(CVar(var_B4), &H10, "Information", var_100, var_128)
  loc_127BBB4: Exit Sub
  loc_127BBB5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0E754
  'Data Table: 535CB8
  loc_E0E74B: Set global_116 = Nothing
  loc_E0E752: Exit Sub
End Sub

Private Sub Form_Activate() 'FD64AC
  'Data Table: 535CB8
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim unk_535CC2 As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As Variant
  loc_FD62FC: Call Proc_171_49_174F118()
  loc_FD630A: If (global_82 = &HFF) Then
  loc_FD630D:   Call Proc_171_49_174F118()
  loc_FD6317:   global_82 = 0
  loc_FD631A: End If
  loc_FD6327: Me.Label3.Caption = vbNullString
  loc_FD6335: Call 0.Method_arg_100 (var_98)
  loc_FD6347: Me.FrSettlement.Width = var_98
  loc_FD6355: Call 0.Method_arg_100 (var_98)
  loc_FD6370: Me.FrPendingOrder.Left = ((var_98 * CDbl(2)) / CDbl(&HA))
  loc_FD637E: Call 0.Method_arg_100 (var_98)
  loc_FD6399: Me.FrPendingOrder.Width = ((var_98 * CDbl(8)) / CDbl(&HA))
  loc_FD63A1: Call Proc_171_46_F03B94(global_82)
  loc_FD63AE: If (MemVar_1F95210 <> "Yes") Then
  loc_FD63B7:   Set var_94 = Me.FrPendingOrder
  loc_FD63BD:   var_94.Visible = False
  loc_FD63C5: End If
  loc_FD63EE: var_A8 = "SELECT POSSettlementYN FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128 & "' And UserName='"
  loc_FD6405: unk_535CC2.Execute var_A8 & MemVar_1F950C8 & "'", var_D0, -1
  loc_FD6410: Set var_8C = var_94
  loc_FD643C: If (var_8C.RecordCount > 0) Then
  loc_FD6467:   var_90 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("POSSettlementYN")))
  loc_FD6470: End If
  loc_FD647F: If ((MemVar_1F950B8 = 0) And (var_90 = "No")) Then
  loc_FD648B:   Set var_94 = Me.CmdUnSBill
  loc_FD6491:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000D(False)
  loc_FD6499: End If
  loc_FD649E: Set var_8C = Nothing
  loc_FD64A6: Set var_88 = Nothing
  loc_FD64A9: Exit Sub
End Sub

Private Sub Form_Click() 'E1A5C0
  'Data Table: 535CB8
  loc_E1A5B4: Me.FrameOption.Visible = False
  loc_E1A5BC: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0B84C
  'Data Table: 535CB8
  loc_E0B842: If (CLng(KeyCode) = &H74) Then
  loc_E0B845:   Call Proc_171_49_174F118()
  loc_E0B84A: End If
  loc_E0B84A: Exit Sub
End Sub

Private Sub Command1_Click() '12A5514
  'Data Table: 535CB8
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_A8 As Variant
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_86 As Integer
  loc_12A4EF8: Call Proc_171_50_168660C()
  loc_12A4EFF: var_88 = 6
  loc_12A4F04: var_8A = 6
  loc_12A4F10: Set var_90 = Me.BtnEnTb
  loc_12A4F16: Call 0.Method_Command1_Click0 (0, var_94)
  loc_12A4F1E: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_8A)
  loc_12A4F37: Me.PicContent.Width = (CDbl(var_88) * CDbl(var_8A))
  loc_12A4F51: Set var_90 = Me.BtnEnTb
  loc_12A4F57: Call 0.Method_Command1_Click0 (0)
  loc_12A4F5F: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_94)
  loc_12A4F78: Me.PicContent.Height = (CDbl() * CDbl(var_88))
  loc_12A4F92: Set var_90 = Me.BtnEnTb
  loc_12A4F98: Call 0.Method_Command1_Click0 (0)
  loc_12A4FA0: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_94)
  loc_12A4FB8: Me.PicContainer.Width = (CDbl() * CDbl(5))
  loc_12A4FD2: Set var_90 = Me.BtnEnTb
  loc_12A4FD8: Call 0.Method_Command1_Click0 (0)
  loc_12A4FE0: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_94)
  loc_12A4FF8: Me.PicContainer.Height = (CDbl() * CDbl(5))
  loc_12A5028: Me.HScroll1.Left = Me.PicContainer.Left
  loc_12A506E: Me.HScroll1.Top = ((Me.PicContainer.Top + Me.PicContainer.Height) + CDbl(&H32))
  loc_12A509B: Me.HScroll1.Width = Me.PicContainer.Width
  loc_12A50E1: Me.VScroll1.Left = ((Me.PicContainer.Left + Me.PicContainer.Width) + CDbl(&H32))
  loc_12A510E: Me.VScroll1.Top = Me.PicContainer.Top
  loc_12A5133: Set var_94 = Me.VScroll1
  loc_12A5139: var_94.Height = Me.PicContainer.Height
  loc_12A5152: Set var_90 = Me.BtnEnTb
  loc_12A5158: Call 0.Method_Command1_Click0 (0, var_94)
  loc_12A5160: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_12A5178: Set var_90 = Me.BtnEnTb
  loc_12A517E: Call 0.Method_Command1_ClickC (var_D2, var_86)
  loc_12A518C: For var_D6 =  To (var_D2 - 1): 1 = var_D6 'Integer
  loc_12A519C:   Set var_90 = Me.BtnEnTb
  loc_12A51A2:   Call 0.Method_Command1_Click0 (var_86)
  loc_12A51B3:   Me.BtnEnTb.Unload var_94
  loc_12A51C2: Next var_D6 'Integer
  loc_12A51C9: var_86 = 0
  loc_12A51CC: ' Referenced from: 12A545D
  loc_12A51D7: If (var_86 < (var_88 * var_8A)) Then
  loc_12A51ED:   Set var_90 = Me.BtnEnTb
  loc_12A51F3:   Call 0.Method_Command1_Click0 (var_86, var_94)
  loc_12A51FB:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(CStr(var_86)))
  loc_12A521D:   Set var_90 = Me.BtnEnTb
  loc_12A5223:   Call 0.Method_Command1_Click0 (var_86, var_94)
  loc_12A522B:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_8001000B(CVar(CStr(var_86)))
  loc_12A5240:   var_86 = (var_86 + 1)
  loc_12A524D:   Set var_90 = Me.BtnEnTb
  loc_12A5253:   Call 0.Method_Command1_Click0 (var_86, var_94)
  loc_12A5264:   Me.BtnEnTb.Load var_94
  loc_12A527E:   Set var_90 = Me.BtnEnTb
  loc_12A5284:   Call 0.Method_Command1_Click0 (var_86, var_94, True)
  loc_12A528C:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_86)
  loc_12A52A2:   If ((var_86 Mod var_88) = 0) Then
  loc_12A52B2:     Set var_A8 = Me.BtnEnTb
  loc_12A52B8:     Call 0.Method_Command1_Click0 ((var_86 - 1), var_DC)
  loc_12A52C0:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_12A52D6:     Set var_90 = Me.BtnEnTb
  loc_12A52DC:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A52E4:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_94)
  loc_12A52F3:     var_C0 = CVar((CDbl() + CDbl(var_EC))) 'Single
  loc_12A5302:     Set var_F0 = Me.BtnEnTb
  loc_12A5308:     Call 0.Method_Command1_Click0 (var_86, var_F4)
  loc_12A5310:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010003(True)
  loc_12A5339:     Set var_90 = Me.BtnEnTb
  loc_12A533F:     Call 0.Method_Command1_Click0 ((var_86 - var_88))
  loc_12A5347:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_94)
  loc_12A535F:     Set var_A8 = Me.BtnEnTb
  loc_12A5365:     Call 0.Method_Command1_Click0 (var_86, var_DC)
  loc_12A536D:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_12A5383:   Else
  loc_12A5390:     Set var_90 = Me.BtnEnTb
  loc_12A5396:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A539E:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_94)
  loc_12A53B6:     Set var_A8 = Me.BtnEnTb
  loc_12A53BC:     Call 0.Method_Command1_Click0 (var_86, var_DC)
  loc_12A53C4:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_12A53E4:     Set var_A8 = Me.BtnEnTb
  loc_12A53EA:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A53F2:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_DC)
  loc_12A5408:     Set var_90 = Me.BtnEnTb
  loc_12A540E:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A5416:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_94)
  loc_12A5425:     var_C0 = CVar((CDbl() + CDbl(var_EC))) 'Single
  loc_12A5434:     Set var_F0 = Me.BtnEnTb
  loc_12A543A:     Call 0.Method_Command1_Click0 (var_86, var_F4)
  loc_12A5442:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_12A545D:   End If
  loc_12A545D:   GoTo loc_12A51CC
  loc_12A5460: End If
  loc_12A546C: Me.HScroll1.Min = 0
  loc_12A5480: Me.VScroll1.Min = 0
  loc_12A54BE: Me.HScroll1.Max = CInt((Me.PicContent.Width - Me.PicContainer.Width))
  loc_12A5502: Me.VScroll1.Max = CInt((Me.PicContent.Height - Me.PicContainer.Height))
  loc_12A5510: Exit Sub
End Sub

Public Sub BtnEnTb_UnknownEvent_6(Index As Integer) 'EA9DDC
  'Data Table: 535CB8
  Dim var_88 As CommandButton
  loc_EA9D6B: Set var_88 = Me.BtnEnTb
  loc_EA9D71: Call 0.Method_BtnEnTb_UnknownEvent_60 (Index, var_8C)
  loc_EA9D79: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_2D(&HFF00)
  loc_EA9DA8: Set var_8C = Me.BtnEnTb
  loc_EA9DAE: Call 0.Method_BtnEnTb_UnknownEvent_60 (Index, var_B4)
  loc_EA9DB6: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(Me.CmdTBInfo.Caption))
  loc_EA9DD3: Me.CmdTBInfo.Visible = False
  loc_EA9DDB: Exit Sub
End Sub

Public Sub BtnEnTb_UnknownEvent_9(Index As Integer) 'FB1260
  'Data Table: 535CB8
  Dim var_88 As Variant
  Dim var_AC As Frame
  Dim var_A8 As Frame
  loc_FB10DE: Set var_88 = Me.BtnEnTb
  loc_FB10E4: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB10EC: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_8C)
  loc_FB1109: If (CStr() = vbNullString) Then
  loc_FB110C:   Exit Sub
  loc_FB110D: End If
  loc_FB1117: Set var_8C = Me.BtnEnTb
  loc_FB111D: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB1125: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A8)
  loc_FB1138: Set var_AC = Me.BtnEnTb
  loc_FB113E: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB1146: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_B0)
  loc_FB117B: Me.FrameOption.Left = ((Me.PicContainer.Left + CDbl(var_9C)) + CDbl(var_C0))
  loc_FB11A6: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB11AE: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A8)
  loc_FB11DD: Me.FrameOption.Top = (Me.PicContainer.Top + CDbl(var_9C))
  loc_FB11FA: Set var_88 = Me.BtnEnTb
  loc_FB1200: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB1208: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Me.BtnEnTb)
  loc_FB121D: Me.FrameOption.Tag = CStr()
  loc_FB1241: Me.FrameOption.ZOrder 0
  loc_FB1255: Me.FrameOption.Visible = True
  loc_FB125D: Exit Sub
End Sub

Private Sub FGridTb_UnknownEvent_E 'FA6400
  'Data Table: 535CB8
  Dim var_C0 As Variant
  Dim var_E0 As Long
  loc_FA629B: Me.CmdTBInfo.Width = CDbl(CLng(Me.FGridTb.CellWidth))
  loc_FA62C9: Me.CmdTBInfo.Height = CDbl(CLng(Me.FGridTb.CellHeight))
  loc_FA6310: Me.CmdTBInfo.Left = (CDbl(Me.FGridTb.Left) + CDbl(CLng(Me.FGridTb.CellLeft)))
  loc_FA635D: Me.CmdTBInfo.Top = (CDbl(Me.FGridTb.Top) + CDbl(CLng(Me.FGridTb.CellTop)))
  loc_FA6385: var_C0 = CVar(CLng(Me.FGridTb.Row)) 'Long
  loc_FA638A: var_E0 = 1
  loc_FA63B5: Me.CmdTBInfo.Caption = CStr(Me.FGridTb.TextMatrix))
  loc_FA63D9: Me.CmdTBInfo.Visible = True
  loc_FA63F4: Me.CmdTBInfo.Drag 1
  loc_FA63FC: Exit Sub
  loc_FA63FE: DOC
End Sub

Private Sub FGrid_UnknownEvent_9 '124136C
  'Data Table: 535CB8
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim unk_535CC2 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Fields15
  Dim var_11C As Variant
  loc_1240EBF: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1240EC4: var_CC = 0
  loc_1240EFB: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1240F11:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1240F29:   var_F0 = Me.FGrid.TextMatrix)
  loc_1240F5D:   unk_535CC2.Execute "Select Vtype As VoucherType,RoomNo as TableNo,DocId,RoomCat,RoomType,NetAmt from Sale1 Where DocId='" & CStr(var_F0) & "'", var_11C, -1
  loc_1240F68:   Set var_88 = var_120
  loc_1240F9A:   If (var_88.RecordCount > 0) Then
  loc_1240FA5:     If (MemVar_1F95210 = "Yes") Then
  loc_1240FAB:       var_AC = "VoucherType"
  loc_1241001:       var_CC = "DocID"
  loc_1241051:       var_1EC = Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")))
  loc_124107C:       var_1F0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")))
  loc_12410A7:       var_1F4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")))
  loc_12410D0:       Proc_6_39_E7D3A0(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_1241128:       Proc_6_132_ECD044(1, 5, Proc_6_38_E69628(CVar(var_88.Fields.Item(var_AC)), var_88.Fields, CVar(var_88.Fields.Item("TableNo")), 0), Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")), var_AC), Proc_6_38_E69628(CVar(var_88.Fields.Item(var_CC)), var_CC), 0)
  loc_1241171:     Else
  loc_1241270:       var_200 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")))
  loc_1241299:       Proc_6_39_E7D3A0(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_12412A3:       var_1E8 = 0
  loc_12412AE:       var_1E4 = 0
  loc_12412B7:       var_1E0 = "Semi"
  loc_1241310:       Proc_6_131_FADE30(1, 5, Proc_6_38_E69628(CVar(var_88.Fields.Item("VoucherType")), var_1EC, Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), global_52)), Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), global_52), 0, Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo"))), Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat"))))
  loc_124135C:     End If
  loc_124135C:     Call CmdUnSBill_UnknownEvent_9()
  loc_1241361:   End If
  loc_1241366:   Set var_88 = Nothing
  loc_1241369: End If
  loc_1241369: Exit Sub
End Sub

Private Sub cmdPrintPKOT_UnknownEvent_9 'EF23A8
  'Data Table: 535CB8
  Dim var_90 As String
  Dim unk_535CC2 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  loc_EF2302: var_90 = "Select DOCID from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52 & "' Group By DocId"
  loc_EF230B: unk_535CC2.Execute var_90, var_B0, -1
  loc_EF2316: Set var_88 = var_B4
  loc_EF2326: ' Referenced from: EF2381
  loc_EF2335: If Not(var_88.EOF) Then
  loc_EF2367:   Proc_260_21_1E6CEB4(CStr(var_88.Fields.Item("DocID").Value))
  loc_EF237C:   var_88.MoveNext
  loc_EF2381:   GoTo loc_EF2326
  loc_EF2384: End If
  loc_EF2391: Set var_B4 = Me.cmdPrintPKOT
  loc_EF2397: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(&H800080)
  loc_EF23A4: Set var_88 = Nothing
  loc_EF23A7: Exit Sub
End Sub

Private Sub CmdUnload_UnknownEvent_9 'E1BF94
  'Data Table: 535CB8
  loc_E1BF89: Me.Global.Unload Me
  loc_E1BF91: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '11F6A64
  'Data Table: 535CB8
  Dim var_88 As Variant
  Dim var_9A As Integer
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_11F6607: If (CLng(Me.FGrid2.Row) = 0) Then
  loc_11F660A:   Exit Sub
  loc_11F660B: End If
  loc_11F6617: Me.FrameOption.Visible = False
  loc_11F6652: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_11F6669:   var_9A = CInt(CLng(Me.FGrid1.Col))
  loc_11F6675: Else
  loc_11F66B4:   var_9A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11F66C8: End If
  loc_11F66DB: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F66E4: var_E8 = CVar(CLng(var_9A)) 'Long
  loc_11F671F: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_11F6727: var_148 = "VACANT"
  loc_11F6744: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F6750: var_19C = CVar(CLng((var_9A + 3))) 'Long
  loc_11F67A3: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_11F67A6: End If
  loc_11F67CC: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F67E8: var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11F682E: If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_11F6857:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F6873:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11F68B4:   var_A0.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_11F68D3: Else
  loc_11F68D3:   var_C8 = 1
  loc_11F68DC:   var_E8 = 0
  loc_11F690C:   var_A0.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11F691C: End If
  loc_11F6922: var_C8 = CVar(global_52) 'String
  loc_11F6929: var_A0.LocalRestCode = var_C8
  loc_11F6931: Set var_88 = var_C8(var_E8)
  loc_11F696A: var_A0.oBookingDocId = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_11F6982: Set var_88 = CVar(CLng(var_A0.FGrid1.Row))(0)
  loc_11F69BB: var_A0.oBookingNo = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_11F69D3: Set var_88 = CVar(CLng(var_A0.FGrid2.Row))(1)
  loc_11F69E2: var_C8 = CVar(CLng(var_A0.FGrid2.Row)) 'Long
  loc_11F69E7: var_E8 = 2
  loc_11F6A0C: var_A0.oCustName = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_11F6A20: var_C8 = 1
  loc_11F6A2C: var_A0.OpenMode = var_C8
  loc_11F6A3B: var_A0.Show var_C8, var_D8
  loc_11F6A43: Call var_A0.TopCtrl1_eAdd
  loc_11F6A4C: Call var_A0.SetOnLineBookingDetail
  loc_11F6A57: global_82 = &HFF
  loc_11F6A5F: Set var_A0 = Nothing
  loc_11F6A62: Exit Sub
End Sub

Private Sub VScroll1_Change() '1073DB0
  'Data Table: 535CB8
  Dim var_90 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Boolean
  loc_1073B70: If (Me.PicContent.Top > CDbl(-Me.VScroll1.Value)) Then
  loc_1073B8E:   Set var_90 = Me.BtnEnTb
  loc_1073B94:   Call 0.Method_VScroll1_Change0 (0)
  loc_1073B9C:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_98)
  loc_1073BD2:   Set var_B8 = Me.BtnEnTb
  loc_1073BD8:   Call 0.Method_VScroll1_Change0 (0)
  loc_1073BE0:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_BC)
  loc_1073C0B:   var_104 = CVar((Abs(Me.PicContent.Top) + CDbl(var_CC))) 'Single
  loc_1073C1F:   var_E4 = (CSng((Abs(Me.PicContent.Top) + CDbl(var_A8))) <= CDbl(Me.VScroll1.Max))
  loc_1073C39:   Me.VScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.VScroll1.Max)))
  loc_1073C84:   Me.PicContent.Top = CDbl(-Me.VScroll1.Value)
  loc_1073C93: Else
  loc_1073CAE:   Set var_90 = Me.BtnEnTb
  loc_1073CB4:   Call 0.Method_VScroll1_Change0 (0)
  loc_1073CBC:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_98)
  loc_1073CF2:   Set var_B8 = Me.BtnEnTb
  loc_1073CF8:   Call 0.Method_VScroll1_Change0 (0)
  loc_1073D00:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_BC)
  loc_1073D2B:   var_104 = CVar(Abs((Me.PicContent.Top + CDbl(var_CC)))) 'Single
  loc_1073D3E:   var_E4 = (CSng((Me.PicContent.Top + CDbl(var_A8))) <= CDbl(Me.VScroll1.Min))
  loc_1073D58:   Me.VScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.VScroll1.Min)))
  loc_1073DA3:   Me.PicContent.Top = CDbl(-Me.VScroll1.Value)
  loc_1073DAF: End If
  loc_1073DAF: Exit Sub
End Sub

Private Sub HScroll1_Change() '1073AD4
  'Data Table: 535CB8
  Dim var_90 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Boolean
  loc_1073894: If (Me.PicContent.Left > CDbl(-Me.HScroll1.Value)) Then
  loc_10738B2:   Set var_90 = Me.BtnEnTb
  loc_10738B8:   Call 0.Method_HScroll1_Change0 (0)
  loc_10738C0:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_98)
  loc_10738F6:   Set var_B8 = Me.BtnEnTb
  loc_10738FC:   Call 0.Method_HScroll1_Change0 (0)
  loc_1073904:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_BC)
  loc_107392F:   var_104 = CVar((Abs(Me.PicContent.Left) + CDbl(var_CC))) 'Single
  loc_1073943:   var_E4 = (CSng((Abs(Me.PicContent.Left) + CDbl(var_A8))) <= CDbl(Me.HScroll1.Max))
  loc_107395D:   Me.HScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.HScroll1.Max)))
  loc_10739A8:   Me.PicContent.Left = CDbl(-Me.HScroll1.Value)
  loc_10739B7: Else
  loc_10739D2:   Set var_90 = Me.BtnEnTb
  loc_10739D8:   Call 0.Method_HScroll1_Change0 (0)
  loc_10739E0:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_98)
  loc_1073A16:   Set var_B8 = Me.BtnEnTb
  loc_1073A1C:   Call 0.Method_HScroll1_Change0 (0)
  loc_1073A24:   Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_BC)
  loc_1073A4F:   var_104 = CVar(Abs((Me.PicContent.Left + CDbl(var_CC)))) 'Single
  loc_1073A62:   var_E4 = (CSng((Me.PicContent.Left + CDbl(var_A8))) <= CDbl(Me.HScroll1.Min))
  loc_1073A7C:   Me.HScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.HScroll1.Min)))
  loc_1073AC7:   Me.PicContent.Left = CDbl(-Me.HScroll1.Value)
  loc_1073AD3: End If
  loc_1073AD3: Exit Sub
End Sub

Public Function global_52Get() '537970
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '53797F
  global_52 = Value
End Sub

Public Property Let ptabpos(vNewValue) 'E01900
  'Data Table: 535CB8
  loc_E018FA: ptabpos = vNewValue
  loc_E018FF: Exit Sub
End Sub

Public Property Get ptabpos() 'E06AD0
  'Data Table: 535CB8
  loc_E06AC9: ptabpos = global_104
End Sub

Public Property Let TouchScreen(vNewValue) 'E0F2DC
  'Data Table: 535CB8
  loc_E0F2D4: global_96 = vNewValue
  loc_E0F2D8: Exit Sub
End Sub

Public Property Get TouchScreen() 'E0F294
  'Data Table: 535CB8
  loc_E0F288: var_88 = global_96
  loc_E0F28B: TouchScreen = 
End Sub

Public Sub ColorLabel() 'F517B8
  'Data Table: 535CB8
  Dim unk_535CC2 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_E4 As Label
  loc_F516BE: unk_535CC2.Execute "Select * from DispColor", var_A8, -1
  loc_F516C9: Set var_88 = var_AC
  loc_F516D2: ' Referenced from: F517B2
  loc_F516E1: If Not(var_88.EOF) Then
  loc_F51720:   If (var_88.Fields.Item("index").Value > 4) Then
  loc_F51781:     Set var_E0 = Me.Label2
  loc_F51787:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F5178F:     var_E4.BackColor = CLng(var_88.Fields.Item("Color").Value)
  loc_F517AA:   End If
  loc_F517AD:   var_88.MoveNext
  loc_F517B2:   GoTo loc_F516D2
  loc_F517B5: End If
  loc_F517B5: Exit Sub
End Sub

Public Property Get OpenMode() 'E0E6C4
  'Data Table: 535CB8
  loc_E0E6B8: var_88 = global_84
  loc_E0E6BB: OpenMode = 
End Sub

Public Property Let OpenMode(vNewValue) 'E0E67C
  'Data Table: 535CB8
  Dim OpenMode060 As String
  loc_E0E674: global_84 = vNewValue
  loc_E0E678: Exit Sub
  loc_E0E67A: OpenMode060 = CStr()
End Sub

Public Sub Proc_171_46_F03B94
  'Data Table: 535CB8
  Dim var_8C As String
  Dim var_98 As String
  Dim unk_535CC2 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As MSHFlexGrid
  loc_F03AD4: var_8C = "SELECT Distinct P.Docid,P.VNo AS [Order No], P.CustName As [Customer Name],P.PhoneNo As [Phone No],P.Addr1 + ', ' + P.Addr2 As Address,convert(varchar(11),P.DDate,103)+ ' '+ P.DTime As [Delivery Date] FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE  (P.LogSite_Code = '" & MemVar_1F95078
  loc_F03AEC: var_98 = var_8C & "') AND (P.RestCode = '" & global_52 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '') Order By convert(varchar(11),P.DDate,103)+ ' '+ P.DTime"
  loc_F03AF5: unk_535CC2.Execute var_98, var_B8, -1
  loc_F03B00: Set var_88 = var_BC
  loc_F03B1A: CVarUnk
  loc_F03B1F: VerifyVarObj
  loc_F03B25: Set var_BC = Me.FGrid2
  loc_F03B2B: LateIdStAd
  loc_F03B4D: If (var_88.RecordCount <= 0) Then
  loc_F03B63:   Me.FGrid.Rows = 2
  loc_F03B78:   Set var_BC = Me.FGrid
  loc_F03B7E:   var_BC.FixedRows = 1
  loc_F03B86: End If
  loc_F03B86: Call Proc_171_48_1174E20(var_BC, var_88)
  loc_F03B90: Set var_88 = Nothing
  loc_F03B93: Exit Sub
End Sub

Public Sub Proc_171_47_11B0FF0
  'Data Table: 535CB8
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_B0 As MSHFlexGrid
  loc_11B0BB8: Set var_8C = Me.FGrid
  loc_11B0BC7: var_8C.Top = CVar(CDbl(600))
  loc_11B0BD8: var_8C.Left = CVar(CDbl(300))
  loc_11B0BE9: var_8C.Width = CVar(CDbl(7310))
  loc_11B0BFA: var_8C.Height = CVar(CDbl(7665))
  loc_11B0C0C: Set var_B0 = Me.CmdRef
  loc_11B0C12: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0C1D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_11B0C29: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_11B0C3D: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0C46: Set var_B0 = Me.CmdRef
  loc_11B0C4C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0C5F: Set var_D4 = Me.CmdRef
  loc_11B0C65: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11B0C72: Set var_B0 = Me.CmdRef
  loc_11B0C78: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11B0C87: var_9C = CVar((CDbl() + CDbl(var_D0))) 'Single
  loc_11B0C90: Set var_D8 = Me.CmdUP
  loc_11B0C96: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0CAE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B0CBA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B0CCE: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0CD7: Set var_B0 = Me.CmdUP
  loc_11B0CDD: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0CF0: Set var_D4 = Me.CmdRef
  loc_11B0CF6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11B0D03: Set var_B0 = Me.CmdRef
  loc_11B0D09: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11B0D1C: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(2)))) 'Single
  loc_11B0D25: Set var_D8 = Me.CmdDown
  loc_11B0D2B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0D43: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010005()
  loc_11B0D4F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_11B0D63: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0D6C: Set var_B0 = Me.CmdDown
  loc_11B0D72: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0D85: Set var_D4 = Me.CmdRef
  loc_11B0D8B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11B0D98: Set var_B0 = Me.CmdRef
  loc_11B0D9E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11B0DB1: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(3)))) 'Single
  loc_11B0DBA: Set var_D8 = Me.CmdExit
  loc_11B0DC0: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0DD8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B0DE4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B0DF8: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0E01: Set var_B0 = Me.CmdExit
  loc_11B0E07: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0E16: var_9C = 0
  loc_11B0E1F: var_E8 = &HA
  loc_11B0E2B: LateIdCallSt
  loc_11B0E33: var_9C = 1
  loc_11B0E3C: var_E8 = &H4B0
  loc_11B0E48: LateIdCallSt
  loc_11B0E50: var_9C = 1
  loc_11B0E5F: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B0E66: LateIdCallSt
  loc_11B0E6E: var_9C = 1
  loc_11B0E7D: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B0E84: LateIdCallSt
  loc_11B0E8C: var_9C = 2
  loc_11B0E95: var_E8 = &H3E8
  loc_11B0EA1: LateIdCallSt
  loc_11B0EA9: var_9C = 2
  loc_11B0EB8: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B0EBF: LateIdCallSt
  loc_11B0EC7: var_9C = 2
  loc_11B0ED6: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B0EDD: LateIdCallSt
  loc_11B0EE5: var_9C = 3
  loc_11B0EEE: var_E8 = &H960
  loc_11B0EFA: LateIdCallSt
  loc_11B0F02: var_9C = 3
  loc_11B0F11: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B0F18: LateIdCallSt
  loc_11B0F20: var_9C = 3
  loc_11B0F2F: var_E8 = CVar(CInt(1)) 'Integer
  loc_11B0F36: LateIdCallSt
  loc_11B0F3E: var_9C = 4
  loc_11B0F47: var_E8 = &H578
  loc_11B0F53: LateIdCallSt
  loc_11B0F5B: var_9C = 4
  loc_11B0F6A: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B0F71: LateIdCallSt
  loc_11B0F79: var_9C = 4
  loc_11B0F88: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B0F8F: LateIdCallSt
  loc_11B0FBC: For var_FC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_FC 'Integer
  loc_11B0FC6:   var_9C = CVar(CLng(var_86)) 'Long
  loc_11B0FCB:   var_E8 = &H258
  loc_11B0FD7:   LateIdCallSt
  loc_11B0FE2: Next var_FC 'Integer
  loc_11B0FE9: Set var_8C = Nothing 
  loc_11B0FED: Exit Sub
End Sub

Public Sub Proc_171_48_1174E20
  'Data Table: 535CB8
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_F0 As Variant
  loc_1174A4C: Set var_8C = Me.FGrid2
  loc_1174A5B: var_8C.Top = CVar(CDbl(600))
  loc_1174A6C: var_8C.Left = CVar(CDbl(300))
  loc_1174A7D: var_8C.Width = CVar(CDbl(8810))
  loc_1174A8E: var_8C.Height = CVar(CDbl(7665))
  loc_1174AA2: Me.CmdUp2.Top = CDbl(800)
  loc_1174AD8: Me.CmdUp2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_1174B1D: Me.CmdDown2.Top = (Me.CmdUp2.Top + Me.CmdUp2.Height)
  loc_1174B59: Me.CmdDown2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_1174BA2: Me.CmdExit2.Top = (Me.CmdUp2.Top + (Me.CmdUp2.Height * CDbl(2)))
  loc_1174BDE: Me.CmdExit2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_1174BED: var_9C = 0
  loc_1174BF6: var_F0 = &HA
  loc_1174C02: LateIdCallSt
  loc_1174C0A: var_9C = 1
  loc_1174C13: var_F0 = &H4B0
  loc_1174C1F: LateIdCallSt
  loc_1174C27: var_9C = 1
  loc_1174C36: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174C3D: LateIdCallSt
  loc_1174C45: var_9C = 1
  loc_1174C54: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174C5B: LateIdCallSt
  loc_1174C63: var_9C = 2
  loc_1174C6C: var_F0 = &H898
  loc_1174C78: LateIdCallSt
  loc_1174C80: var_9C = 2
  loc_1174C8F: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174C96: LateIdCallSt
  loc_1174C9E: var_9C = 2
  loc_1174CAD: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174CB4: LateIdCallSt
  loc_1174CBC: var_9C = 3
  loc_1174CC5: var_F0 = &H578
  loc_1174CD1: LateIdCallSt
  loc_1174CD9: var_9C = 3
  loc_1174CE8: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174CEF: LateIdCallSt
  loc_1174CF7: var_9C = 3
  loc_1174D06: var_F0 = CVar(CInt(1)) 'Integer
  loc_1174D0D: LateIdCallSt
  loc_1174D15: var_9C = 4
  loc_1174D1E: var_F0 = &H898
  loc_1174D2A: LateIdCallSt
  loc_1174D32: var_9C = 4
  loc_1174D41: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174D48: LateIdCallSt
  loc_1174D50: var_9C = 4
  loc_1174D5F: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174D66: LateIdCallSt
  loc_1174D6E: var_9C = 5
  loc_1174D77: var_F0 = &H578
  loc_1174D83: LateIdCallSt
  loc_1174D8B: var_9C = 5
  loc_1174D9A: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174DA1: LateIdCallSt
  loc_1174DA9: var_9C = 5
  loc_1174DB8: var_F0 = CVar(CInt(4)) 'Integer
  loc_1174DBF: LateIdCallSt
  loc_1174DEC: For var_104 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_104 'Integer
  loc_1174DF6:   var_9C = CVar(CLng(var_86)) 'Long
  loc_1174DFB:   var_F0 = &H258
  loc_1174E07:   LateIdCallSt
  loc_1174E12: Next var_104 'Integer
  loc_1174E19: Set var_8C = Nothing 
  loc_1174E1D: Exit Sub
End Sub

Public Sub Proc_171_49_174F118
  'Data Table: 535CB8
  Dim var_96 As Integer
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_535CC2 As Connection15
  Dim var_D4 As Variant
  Dim var_A0 As Recordset15
  Dim var_E8 As Variant
  Dim var_E4 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_114 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_120 As String
  Dim var_12C As String
  Dim var_13C As Variant
  Dim var_140 As Variant
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_180 As Variant
  Dim var_248 As Variant
  Dim var_238 As Variant
  Dim var_268 As Variant
  Dim var_10C As Variant
  Dim var_1B4 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_288 As Variant
  Dim var_2BC As Variant
  Dim var_278 As Variant
  Dim var_1DC As Variant
  Dim var_2FC As Variant
  Dim var_B8 As Recordset15
  Dim var_158 As Variant
  Dim var_B0 As Recordset15
  Dim var_92 As Integer
  Dim var_2CC As Variant
  loc_174D43E: var_96 = 0
  loc_174D468: unk_535CC2.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_E4, -1
  loc_174D473: Set var_A0 = var_E8
  loc_174D492: var_E8 = var_A0.Fields
  loc_174D4B1: global_108 = Proc_6_38_E69628(CVar(var_E8.Item("KotYN")), var_E8)
  loc_174D4EC: global_112 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("Order_Booking")))
  loc_174D50B: var_E8 = var_A0.Fields
  loc_174D51B: var_E4 = var_E8.Item("KotYN").Value
  loc_174D535: If (var_E4 = "Y") Then
  loc_174D53E:   var_110 = global_88
  loc_174D549:   If (var_110 = "Outlet") Then
  loc_174D560:     var_C0 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_174D582:     var_11C = var_C0 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_174D592:     unk_535CC2.Execute var_11C & "' ORDER BY  RoomMast.code", var_E4, -1
  loc_174D59D:     Set var_88 = var_E8
  loc_174D5CC:     var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_174D5E4:     var_118 = var_C0 & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_174D5FE:     unk_535CC2.Execute var_118 & global_52 & "' order by T.Code", var_E4, -1
  loc_174D609:     Set var_B0 = var_E8
  loc_174D635:     var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_174D643:     var_114 = var_C0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_174D651:     var_11C = var_114 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_174D673:     var_12C = var_11C & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_174D68D:     unk_535CC2.Execute var_12C & global_52 & "' Order by T.Code", var_E4, -1
  loc_174D698:     Set var_B8 = var_E8
  loc_174D6BD:   Else
  loc_174D6C5:     If (var_110 = "Room Service") Then
  loc_174D6DC:       var_C0 = "SELECT LTrim(RTrim(RC.RoomNo)) AS Code,RC.Foliono AS Code1, RC.RoomNo AS Name,D.Code As RestCode,D.Name as RestName,D.ShortName,RC.SITE_CODE,RC.LOGSITE_CODE,D.KOTYn, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_174D6F4:       var_118 = var_C0 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('" & global_100 & "') AND RC.CHKOUTDATE IS NULL And D.Code='"
  loc_174D70B:       unk_535CC2.Execute var_118 & MemVar_1F95078 & "RS' Order by RC.ROOMNO", var_E4, -1
  loc_174D716:       Set var_88 = var_E8
  loc_174D745:       var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Code As Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_174D75D:       var_118 = var_C0 & "' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='ROOM' order by T.Code"
  loc_174D766:       unk_535CC2.Execute var_118, var_E4, -1
  loc_174D771:       Set var_B0 = var_E8
  loc_174D799:       var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_174D7A7:       var_114 = var_C0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_174D7BF:       var_120 = var_114 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "And Sale1.RoomType='" & global_100
  loc_174D7D7:       var_12C = var_120 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_174D7F1:       unk_535CC2.Execute var_12C & global_52 & "' Order by T.Code", var_E4, -1
  loc_174D7FC:       Set var_B8 = var_E8
  loc_174D81E:     End If
  loc_174D81E:   End If
  loc_174D826:   If (MemVar_1F95210 <> "Yes") Then
  loc_174D82F:     var_138 = global_88
  loc_174D83A:     If (var_138 = "Outlet") Then
  loc_174D846:       Set var_E8 = Me.CmdPKOT
  loc_174D84C:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_174D85D:       Set var_E8 = Me.CmdOrderBook
  loc_174D863:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_174D86F:       Set var_E8 = Me.CmdPKOT
  loc_174D875:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(var_E8)
  loc_174D887:       Set var_EC = Me.CmdCancel
  loc_174D88D:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(var_E8)))
  loc_174D8A0:       Set var_E8 = Me.CmdAKOT
  loc_174D8A6:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E8)
  loc_174D8BE:       Me.FrameOption.Height = (CDbl(var_E8) * CDbl(5))
  loc_174D8D0:     Else
  loc_174D8D8:       If (var_138 = "Room Service") Then
  loc_174D8E4:         Set var_E8 = Me.CmdChngTable
  loc_174D8EA:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_174D8FB:         Set var_E8 = Me.CmdBillLookup
  loc_174D901:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_174D912:         Set var_E8 = Me.CmdPKOT
  loc_174D918:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_174D929:         Set var_E8 = Me.CmdOrderBook
  loc_174D92F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_174D93B:         Set var_E8 = Me.CmdChngTable
  loc_174D941:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(var_E8)
  loc_174D953:         Set var_EC = Me.CmdCancel
  loc_174D959:         Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(var_E8)))
  loc_174D96C:         Set var_E8 = Me.CmdAKOT
  loc_174D972:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_96)
  loc_174D98A:         Me.FrameOption.Height = (CDbl() * CDbl(3))
  loc_174D9A2:         Set var_E8 = Me.CmdUnSBill
  loc_174D9A8:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(False)
  loc_174D9B0:       End If
  loc_174D9B0:     End If
  loc_174D9B3:   Else
  loc_174D9BC:     Set var_E8 = Me.CmdOrderBook
  loc_174D9C2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_174D9CE:     Set var_E8 = Me.CmdOrderBook
  loc_174D9D4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_174D9E6:     Set var_EC = Me.CmdCancel
  loc_174D9EC:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl()))
  loc_174D9FF:     Set var_E8 = Me.CmdAKOT
  loc_174DA05:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_174DA1D:     Me.FrameOption.Height = (CDbl() * CDbl(6))
  loc_174DA2C:   End If
  loc_174DA2F: Else
  loc_174DA43:   var_C0 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_174DA65:   var_11C = var_C0 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_174DA75:   unk_535CC2.Execute var_11C & "' ORDER BY  RoomMast.code", var_E4, -1
  loc_174DA80:   Set var_88 = var_E8
  loc_174DAAF:   var_C0 = "Select  LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_174DAC7:   var_118 = var_C0 & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_174DAE1:   unk_535CC2.Execute var_118 & global_52 & "' order by T.Code", var_E4, -1
  loc_174DAEC:   Set var_B0 = var_E8
  loc_174DB18:   var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_174DB26:   var_114 = var_C0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_174DB34:   var_11C = var_114 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_174DB56:   var_12C = var_11C & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_174DB70:   unk_535CC2.Execute var_12C & global_52 & "' Order by T.Code", var_E4, -1
  loc_174DB7B:   Set var_B8 = var_E8
  loc_174DBBF:   var_E4 = var_A0.Fields.Item("Order_Booking").Value
  loc_174DBD9:   If CBool(var_E4 <> "Y") Then
  loc_174DBE5:     Set var_E8 = Me.CmdAKOT
  loc_174DBEB:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_174DBFC:     Set var_E8 = Me.CmdChngTable
  loc_174DC02:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_174DC13:     Set var_E8 = Me.CmdBillLookup
  loc_174DC19:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_174DC2A:     Set var_E8 = Me.CmdPKOT
  loc_174DC30:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_174DC41:     Set var_E8 = Me.CmdOrderBook
  loc_174DC47:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_174DC61:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_174DC6D:     Set var_EC = Me.CmdSBill
  loc_174DC73:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(Me.CmdSBill)
  loc_174DC80:     Set var_E8 = Me.CmdSBill
  loc_174DC86:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E8)
  loc_174DC95:     var_D4 = CVar((CDbl(var_E8) + CDbl(var_10C))) 'Single
  loc_174DC9E:     Set var_13C = Me.CmdCancel
  loc_174DCA4:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(0)))
  loc_174DCBD:     Set var_E8 = Me.CmdAKOT
  loc_174DCC3:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_174DCDB:     Me.FrameOption.Height = (CDbl() * CDbl(2))
  loc_174DCED:   Else
  loc_174DCF6:     Set var_E8 = Me.CmdAKOT
  loc_174DCFC:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_174DD0D:     Set var_E8 = Me.CmdChngTable
  loc_174DD13:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_174DD24:     Set var_E8 = Me.CmdBillLookup
  loc_174DD2A:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_174DD3B:     Set var_E8 = Me.CmdPKOT
  loc_174DD41:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_174DD55:     Set var_E8 = Me.CmdSBill
  loc_174DD5B:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_174DD67:     Set var_EC = Me.CmdSBill
  loc_174DD6D:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_174DD7A:     Set var_E8 = Me.CmdSBill
  loc_174DD80:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_174DD8F:     var_D4 = CVar((CDbl() + CDbl(var_10C))) 'Single
  loc_174DD98:     Set var_13C = Me.CmdOrderBook
  loc_174DD9E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(0)))
  loc_174DDB7:     Set var_EC = Me.CmdOrderBook
  loc_174DDBD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_174DDCA:     Set var_E8 = Me.CmdOrderBook
  loc_174DDD0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_174DDDF:     var_D4 = CVar((CDbl() + CDbl(var_10C))) 'Single
  loc_174DDE8:     Set var_13C = Me.CmdCancel
  loc_174DDEE:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(0)))
  loc_174DE07:     Set var_E8 = Me.CmdAKOT
  loc_174DE0D:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_174DE1F:     Set var_EC = Me.FrameOption
  loc_174DE25:     var_EC.Height = (CDbl() * CDbl(3))
  loc_174DE34:     Call Proc_171_48_1174E20()
  loc_174DE45:     Me.FrPendingOrder.Visible = True
  loc_174DE4D:   End If
  loc_174DE4D: End If
  loc_174DE53: var_FC = 0
  loc_174DE83: unk_535CC2.Execute "Select Name From Depart Where Code ='" & global_52 & "'", var_E4, -1
  loc_174DE8B: var_E8 = var_E8.Fields
  loc_174DE93: var_FC = var_EC.Item(var_EC)
  loc_174DE9B: var_13C = var_13C.Value
  loc_174DEB1: Me.Label4.Caption = CStr(var_10C)
  loc_174DED3: var_8A = 9
  loc_174DEED: If (Me.Recordset15.RecordCount > 0) Then
  loc_174DF1D:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_174DF8A:     var_E4 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_174DFAB:     var_8C = CInt(((Val(CStr(Format(var_E4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_174DFC3:   Else
  loc_174DFF2:     var_E4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_174E013:     var_8C = CInt(((Val(CStr(Format(var_E4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_174E022:   End If
  loc_174E025: Else
  loc_174E02A:   global_104 = &HFF
  loc_174E030: Else
  loc_174E032:   var_90 = 1
  loc_174E037:   var_8E = 0
  loc_174E04D:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_174E068:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_174E082:   Call Proc_171_51_11221E8((var_8A - 1), (var_8C - 1), var_8E, var_90, global_104, var_8C, 1, 1)
  loc_174E09A:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_174E0B5:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_174E0CC:   Me.FGrid1.Redraw = False
  loc_174E0F9:   For var_170 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_170 'Integer
  loc_174E103:     var_D4 = CVar(CLng(var_94)) 'Long
  loc_174E108:     var_180 = &H320
  loc_174E115:     Set var_E8 = Me.FGrid1
  loc_174E11B:     LateIdCallSt
  loc_174E129:   Next var_170 'Integer
  loc_174E12E:   ' Referenced from:   174F0DE
  loc_174E140:   If Not(Me.FGrid1.EOF) Then
  loc_174E145:     var_90 = 1
  loc_174E148:     ' Referenced from:   174F0DB
  loc_174E152:     If (var_90 <= (var_8A - 1)) Then
  loc_174E169:       For var_194 = (var_8C - 6) To (var_8C - 1):   var_94 = var_194 'Integer
  loc_174E179:         If (var_94 = (var_8C - 6)) Then
  loc_174E18F:           var_238 = Me.FGrid1.Col
  loc_174E1FB:           var_C0 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), 5, CVar(Proc_6_38_E69628(CVar(Me.var_238.Fields.Item("Code")), CVar(CLng(var_238)), CVar(CLng(var_90)))))
  loc_174E203:           var_158 = Space(((var_8C - 6) - Len(var_C0)))
  loc_174E20B:           var_1B4 = (&HFF + Format(CVar(Me.var_238.Fields.Item("Code")), "00"))
  loc_174E247:           var_1DC = Space((var_1B4 - Len(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("code1")), 8))))
  loc_174E24F:           var_1EC = (var_90 + var_1DC)
  loc_174E284:           var_224 = (var_1EC + CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("code1")))))
  loc_174E289:           var_288 = CVar(CStr(var_224)) 'String
  loc_174E291:           Set var_29C = Me.FGrid1
  loc_174E297:           LateIdCallSt
  loc_174E2EB:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_174E2FA:           Me.FGrid1.Col = "Code"
  loc_174E309:         End If
  loc_174E313:         If (var_94 = (var_8C - 5)) Then
  loc_174E32D:           If (Me.Recordset15.RecordCount > 0) Then
  loc_174E336:             Me.Recordset15.MoveFirst
  loc_174E33B:           End If
  loc_174E37E:           Me.Recordset15.Filter = CVar(var_29C & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'")
  loc_174E3AB:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_174E3E2:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_174E3F8:               var_2BC = Me.FGrid1.Col
  loc_174E43D:               var_10C = (Me.var_2BC.Fields.Item("ShortName").Value + "(")
  loc_174E473:               var_1B4 = (CVar(var_29C & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_174E47C:               var_1CC = (var_1B4 + ")")
  loc_174E485:               var_1DC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_174E4B7:               var_224 = (CVar(CLng(var_2BC)) + CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1DC, "*")))
  loc_174E4C0:               var_238 = (var_224 + vbCrLf)
  loc_174E4C9:               var_288 = (var_238 + "Vacant")
  loc_174E4D2:               var_2FC = CVar(CStr(CVar(CLng(var_90)) & var_288)) 'String
  loc_174E4DA:               Set var_1F4 = Me.FGrid1
  loc_174E4E0:               LateIdCallSt
  loc_174E51E:               var_BA = CByte(0) 'Byte
  loc_174E536:               If (var_B8.RecordCount > 0) Then
  loc_174E545:                 var_B8.Filter = 0
  loc_174E54D:                 var_B8.MoveFirst
  loc_174E552:               End If
  loc_174E592:               var_B8.Filter = CVar(var_2FC & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1F4) & "'")
  loc_174E5BC:               If (var_B8.AbsolutePosition > 0) Then
  loc_174E5F0:                 If (IsNull(CVar(var_B8.Fields.Item("WaiterName"))) = 0) Then
  loc_174E5F7:                   var_BA = CByte(1) 'Byte
  loc_174E5FB:                 End If
  loc_174E5FB:               End If
  loc_174E5FE:             Else
  loc_174E602:               var_248 = CVar(CLng(var_90)) 'Long
  loc_174E611:               var_1EC = Me.FGrid1.Col
  loc_174E61A:               var_268 = CVar(CLng(var_1EC)) 'Long
  loc_174E651:               var_10C = (Me.var_1EC.Fields.Item("ShortName").Value + "(")
  loc_174E687:               var_1B4 = (CVar(var_2FC & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1F4) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_174E690:               var_1CC = (var_1B4 + ")")
  loc_174E699:               var_1DC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_174E69E:               var_204 = CVar(CStr(var_1DC)) 'String
  loc_174E6A6:               Set var_1BC = Me.FGrid1
  loc_174E6AC:               LateIdCallSt
  loc_174E6DC:               var_BA = CByte(2) 'Byte
  loc_174E6E0:               ' Referenced from:     174E9B6
  loc_174E738:               var_158 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGrid1.Fields.Item("Code").Value, var_1BC, var_204)) 'String
  loc_174E750:               If (var_268 = var_158) Then
  loc_174E76A:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_174E771:                   var_248 = CVar(CLng(var_90)) 'Long
  loc_174E7B9:                   var_10C = Me.FGrid1.TextMatrix)
  loc_174E7F2:                   var_C4 = Proc_6_38_E69628(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_174E7F6:                   var_1B4 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_C4) 'String
  loc_174E7FE:                   Set var_1BC = Me.FGrid1
  loc_174E804:                   LateIdCallSt
  loc_174E830:                 Else
  loc_174E860:                   var_10C = Me.FGrid1.TextMatrix)
  loc_174E899:                   var_C0 = Proc_6_38_E69628(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1)
  loc_174E8C2:                   If (InStr(var_1B4, var_1BC, var_C0, 0) = 0) Then
  loc_174E8C9:                     var_248 = CVar(CLng(var_90)) 'Long
  loc_174E911:                     var_10C = Me.FGrid1.TextMatrix)
  loc_174E951:                     var_114 = Proc_6_38_E69628(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))
  loc_174E955:                     var_1B4 = CVar(var_248 & var_114) 'String
  loc_174E95D:                     Set var_1BC = Me.FGrid1
  loc_174E963:                     LateIdCallSt
  loc_174E98E:                   End If
  loc_174E98E:                 End If
  loc_174E994:                 var_B0.MoveNext
  loc_174E9B0:                 If (var_B0.AbsolutePosition < 0) Then
  loc_174E9B3:                   GoTo loc_174E9B9
  loc_174E9B6:                 End If
  loc_174E9B6:                 GoTo loc_174E6E0
  loc_174E9B9:                 ' Referenced from:     174E9B3
  loc_174E9B9:               End If
  loc_174E9C8:               Me.Recordset15.Filter = 0
  loc_174E9CD:             End If
  loc_174E9CD:           End If
  loc_174E9E6:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_174E9F5:           Me.FGrid1.Col = 0
  loc_174EA04:         End If
  loc_174EA0E:         If (var_94 = (var_8C - 4)) Then
  loc_174EA25:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_174EA41:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_174EA68:           Call Proc_171_52_10C502C(CInt(CLng(Me.FGrid1.Col)), var_BA, Me.FGrid1.Col, var_92, var_1BC)
  loc_174EA86:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_174EAA7:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_174EAB6:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_174EAC5:         End If
  loc_174EACF:         If (var_94 = (var_8C - 3)) Then
  loc_174EAE9:           If (Me.Recordset15.RecordCount > 0) Then
  loc_174EAF2:             Me.Recordset15.MoveFirst
  loc_174EAF7:           End If
  loc_174EB3A:           Me.Recordset15.Filter = CVar(var_248 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_1B4) & "'")
  loc_174EB53:           var_A4 = vbNullString
  loc_174EB59:           var_A8 = vbNullString
  loc_174EB5F:           var_AC = vbNullString
  loc_174EB79:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_174EBB0:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_174EBB3:               ' Referenced from:   174EF2E
  loc_174EC0B:               var_158 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_174EC23:               If (var_248 = var_158) Then
  loc_174EC3D:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_174EC6B:                   var_A4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("VTIME")))
  loc_174EC78:                   var_FC = CVar(CLng(var_90)) 'Long
  loc_174EC87:                   var_10C = Me.FGrid1.Col
  loc_174ECC0:                   var_158 = CVar(Proc_6_38_E69628(CVar(Me.var_10C.Fields.Item("WaiterName")), CVar(CLng(var_10C)))) 'String
  loc_174ECC8:                   Set var_140 = Me.FGrid1
  loc_174ECCE:                   LateIdCallSt
  loc_174ECEB:                 Else
  loc_174ED16:                   var_A8 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("VTIME")), var_140, var_158)
  loc_174ED4F:                   var_10C = Me.FGrid1.TextMatrix)
  loc_174ED8F:                   var_C4 = Proc_6_38_E69628(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C) & var_AC, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_174EDBA:                   If (InStr(var_FC, 1, var_C4, 0) = 0) Then
  loc_174EDF6:                     var_AC = var_288 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_AC & ", ")
  loc_174EE06:                   End If
  loc_174EE06:                 End If
  loc_174EE0C:                 var_B0.MoveNext
  loc_174EE28:                 If (var_B0.AbsolutePosition < 0) Then
  loc_174EE3A:                   Me.Recordset15.Filter = 0
  loc_174EE43:                   var_278 = CVar(CLng(var_90)) 'Long
  loc_174EE5B:                   var_2CC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_174EE64:                   var_D4 = CVar(CLng(var_90)) 'Long
  loc_174EE7C:                   var_180 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_174EED3:                   var_1DC = (CVar(CStr(Me.FGrid1.TextMatrix)) & ",#" & var_A4) + IIf((var_A8 <> vbNullString), CVar(" To " & var_A8), vbNullString))
  loc_174EEDC:                   var_1EC = (var_1DC + "#")
  loc_174EEE6:                   var_204 = (var_1EC + CVar(var_AC))
  loc_174EEEB:                   var_238 = CVar(CStr(var_204)) 'String
  loc_174EEF3:                   Set var_140 = Me.FGrid1
  loc_174EEF9:                   LateIdCallSt
  loc_174EF2E:                 End If
  loc_174EF2E:                 GoTo loc_174EBB3
  loc_174EF31:               End If
  loc_174EF31:             End If
  loc_174EF31:           End If
  loc_174EF4A:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_174EF59:           Me.FGrid1.Col = var_D4
  loc_174EF68:         End If
  loc_174EF72:         If (var_94 = (var_8C - 2)) Then
  loc_174EFBE:           var_158 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_140, var_238)) 'String
  loc_174EFC6:           Set var_140 = Me.FGrid1
  loc_174EFCC:           LateIdCallSt
  loc_174EFFF:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_174F00E:           Me.FGrid1.Col = "KotYN"
  loc_174F01D:         End If
  loc_174F027:         If (var_94 = (var_8C - 1)) Then
  loc_174F043:           var_D4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_174F052:           Me.FGrid1.Col = "KotYN"
  loc_174F061:         End If
  loc_174F064:       Next var_194 'Integer
  loc_174F06F:       var_90 = (var_90 + 1)
  loc_174F07C:       If (var_90 > (var_8A - 1)) Then
  loc_174F098:         var_D4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_174F0A7:         Me.FGrid1.Col = "KotYN"
  loc_174F0B6:       End If
  loc_174F0BC:       var_88.MoveNext
  loc_174F0D5:       If (var_88.EOF = &HFF) Then
  loc_174F0D8:         GoTo loc_174F0E1
  loc_174F0DB:       End If
  loc_174F0DB:       GoTo loc_174E148
  loc_174F0DE:     End If
  loc_174F0DE:     GoTo loc_174E12E
  loc_174F0E1:     ' Referenced from:   174F0D8
  loc_174F0E1:   End If
  loc_174F0E1: End If
  loc_174F0EF: Me.FGrid1.Redraw = True
  loc_174F0FC: Set var_88 = Nothing
  loc_174F104: Set var_B0 = Nothing
  loc_174F10C: Set var_A0 = Nothing
  loc_174F114: Set var_B8 = Nothing
  loc_174F117: Exit Sub
End Sub

Public Sub Proc_171_50_168660C
  'Data Table: 535CB8
  Dim var_BC As String
  Dim unk_535CC2 As Connection15
  Dim var_D0 As Variant
  Dim var_9C As Recordset15
  Dim var_E4 As Variant
  Dim var_E0 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_110 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_128 As String
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_8A As Integer
  Dim var_90 As Integer
  Dim var_8C As Integer
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_108 As Variant
  Dim var_174 As Variant
  Dim var_188 As Variant
  Dim var_178 As Fields15
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Fields15
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_254 As Variant
  Dim var_244 As Variant
  Dim var_1AC As Variant
  Dim var_278 As Variant
  Dim var_2C8 As Variant
  Dim var_B4 As Recordset15
  Dim var_154 As Variant
  Dim var_AC As Recordset15
  Dim var_298 As Long
  loc_1684E97: unk_535CC2.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_E0, -1
  loc_1684EA2: Set var_9C = var_E4
  loc_1684EE0: global_108 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("KotYN")))
  loc_1684F1B: global_112 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Order_Booking")))
  loc_1684F3A: var_E4 = var_9C.Fields
  loc_1684F4A: var_E0 = var_E4.Item("KotYN").Value
  loc_1684F64: If (var_E0 = "Y") Then
  loc_1684F6D:   var_10C = global_88
  loc_1684F78:   If (var_10C = "Outlet") Then
  loc_1684F8F:     var_BC = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_1684FB1:     var_118 = var_BC & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_1684FC1:     unk_535CC2.Execute var_118 & "' ORDER BY  RoomMast.code", var_E0, -1
  loc_1684FCC:     Set var_88 = var_E4
  loc_1684FFB:     var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_1685013:     var_114 = var_BC & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_168502D:     unk_535CC2.Execute var_114 & global_52 & "' order by T.Code", var_E0, -1
  loc_1685038:     Set var_AC = var_E4
  loc_1685064:     var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_1685072:     var_110 = var_BC & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_1685080:     var_118 = var_110 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_16850A2:     var_128 = var_118 & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_16850BC:     unk_535CC2.Execute var_128 & global_52 & "' Order by T.Code", var_E0, -1
  loc_16850C7:     Set var_B4 = var_E4
  loc_16850EC:   Else
  loc_16850F4:     If (var_10C = "Room Service") Then
  loc_168510B:       var_BC = "SELECT LTrim(RTrim(RC.RoomNo)) AS Code,RC.Foliono AS Code1, RC.RoomNo AS Name,D.Code As RestCode,D.Name as RestName,D.ShortName,RC.SITE_CODE,RC.LOGSITE_CODE,D.KOTYn, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_1685123:       var_114 = var_BC & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('" & global_100 & "') AND RC.CHKOUTDATE IS NULL And D.Code='"
  loc_168513A:       unk_535CC2.Execute var_114 & MemVar_1F95078 & "RS' Order by RC.ROOMNO", var_E0, -1
  loc_1685145:       Set var_88 = var_E4
  loc_1685174:       var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Code As Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_168518C:       var_114 = var_BC & "' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='ROOM' order by T.Code"
  loc_1685195:       unk_535CC2.Execute var_114, var_E0, -1
  loc_16851A0:       Set var_AC = var_E4
  loc_16851C8:       var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_16851D6:       var_110 = var_BC & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_16851EE:       var_11C = var_110 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "And Sale1.RoomType='" & global_100
  loc_1685206:       var_128 = var_11C & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1685220:       unk_535CC2.Execute var_128 & global_52 & "' Order by T.Code", var_E0, -1
  loc_168522B:       Set var_B4 = var_E4
  loc_168524D:     End If
  loc_168524D:   End If
  loc_1685255:   If (MemVar_1F95210 <> "Yes") Then
  loc_168525E:     var_134 = global_88
  loc_1685269:     If (var_134 = "Outlet") Then
  loc_1685275:       Set var_E4 = Me.CmdPKOT
  loc_168527B:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_168528C:       Set var_E4 = Me.CmdOrderBook
  loc_1685292:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_168529E:       Set var_E4 = Me.CmdPKOT
  loc_16852A4:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(var_E4)
  loc_16852B6:       Set var_E8 = Me.CmdCancel
  loc_16852BC:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(var_E4)))
  loc_16852CF:       Set var_E4 = Me.CmdAKOT
  loc_16852D5:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E4)
  loc_16852ED:       Me.FrameOption.Height = (CDbl(var_E4) * CDbl(5))
  loc_16852FF:     Else
  loc_1685307:       If (var_134 = "Room Service") Then
  loc_1685313:         Set var_E4 = Me.CmdChngTable
  loc_1685319:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_168532A:         Set var_E4 = Me.CmdBillLookup
  loc_1685330:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1685341:         Set var_E4 = Me.CmdPKOT
  loc_1685347:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1685358:         Set var_E4 = Me.CmdOrderBook
  loc_168535E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_168536A:         Set var_E4 = Me.CmdChngTable
  loc_1685370:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(var_E4)
  loc_1685382:         Set var_E8 = Me.CmdCancel
  loc_1685388:         Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(var_E4)))
  loc_16853A1:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(Me.CmdAKOT)
  loc_16853B9:         Me.FrameOption.Height = (CDbl() * CDbl(3))
  loc_16853D1:         Set var_E4 = Me.CmdUnSBill
  loc_16853D7:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(False)
  loc_16853DF:       End If
  loc_16853DF:     End If
  loc_16853E2:   Else
  loc_16853EB:     Set var_E4 = Me.CmdOrderBook
  loc_16853F1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_16853FD:     Set var_E4 = Me.CmdOrderBook
  loc_1685403:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_1685415:     Set var_E8 = Me.CmdCancel
  loc_168541B:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl()))
  loc_168542E:     Set var_E4 = Me.CmdAKOT
  loc_1685434:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_168544C:     Me.FrameOption.Height = (CDbl() * CDbl(6))
  loc_168545B:   End If
  loc_168545E: Else
  loc_1685472:   var_BC = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_1685494:   var_118 = var_BC & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_16854A4:   unk_535CC2.Execute var_118 & "' ORDER BY  RoomMast.code", var_E0, -1
  loc_16854AF:   Set var_88 = var_E4
  loc_16854DE:   var_BC = "Select  LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_16854F6:   var_114 = var_BC & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1685510:   unk_535CC2.Execute var_114 & global_52 & "' order by T.Code", var_E0, -1
  loc_168551B:   Set var_AC = var_E4
  loc_1685547:   var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_1685555:   var_110 = var_BC & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_1685563:   var_118 = var_110 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_1685585:   var_128 = var_118 & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_168559F:   unk_535CC2.Execute var_128 & global_52 & "' Order by T.Code", var_E0, -1
  loc_16855AA:   Set var_B4 = var_E4
  loc_16855EE:   var_E0 = var_9C.Fields.Item("Order_Booking").Value
  loc_1685608:   If CBool(var_E0 <> "Y") Then
  loc_1685614:     Set var_E4 = Me.CmdAKOT
  loc_168561A:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_168562B:     Set var_E4 = Me.CmdChngTable
  loc_1685631:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1685642:     Set var_E4 = Me.CmdBillLookup
  loc_1685648:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1685659:     Set var_E4 = Me.CmdPKOT
  loc_168565F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1685670:     Set var_E4 = Me.CmdOrderBook
  loc_1685676:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1685690:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_168569C:     Set var_E8 = Me.CmdSBill
  loc_16856A2:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(Me.CmdSBill)
  loc_16856AF:     Set var_E4 = Me.CmdSBill
  loc_16856B5:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E4)
  loc_16856C4:     var_D0 = CVar((CDbl(var_E4) + CDbl(var_108))) 'Single
  loc_16856CD:     Set var_138 = Me.CmdCancel
  loc_16856D3:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(0)))
  loc_16856EC:     Set var_E4 = Me.CmdAKOT
  loc_16856F2:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_168570A:     Me.FrameOption.Height = (CDbl() * CDbl(2))
  loc_168571C:   Else
  loc_1685725:     Set var_E4 = Me.CmdAKOT
  loc_168572B:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_168573C:     Set var_E4 = Me.CmdChngTable
  loc_1685742:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1685753:     Set var_E4 = Me.CmdBillLookup
  loc_1685759:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_168576A:     Set var_E4 = Me.CmdPKOT
  loc_1685770:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1685784:     Set var_E4 = Me.CmdSBill
  loc_168578A:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1685796:     Set var_E8 = Me.CmdSBill
  loc_168579C:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_16857A9:     Set var_E4 = Me.CmdSBill
  loc_16857AF:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_16857BE:     var_D0 = CVar((CDbl() + CDbl(var_108))) 'Single
  loc_16857C7:     Set var_138 = Me.CmdOrderBook
  loc_16857CD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(0)))
  loc_16857E6:     Set var_E8 = Me.CmdOrderBook
  loc_16857EC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_16857F9:     Set var_E4 = Me.CmdOrderBook
  loc_16857FF:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_168580E:     var_D0 = CVar((CDbl() + CDbl(var_108))) 'Single
  loc_1685817:     Set var_138 = Me.CmdCancel
  loc_168581D:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(0)))
  loc_1685836:     Set var_E4 = Me.CmdAKOT
  loc_168583C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_168584E:     Set var_E8 = Me.FrameOption
  loc_1685854:     var_E8.Height = (CDbl() * CDbl(3))
  loc_1685863:     Call Proc_171_48_1174E20()
  loc_1685874:     Me.FrPendingOrder.Visible = True
  loc_168587C:   End If
  loc_168587C: End If
  loc_1685882: var_F8 = 0
  loc_16858B2: unk_535CC2.Execute "Select Name From Depart Where Code ='" & global_52 & "'", var_E0, -1
  loc_16858BA: var_E4 = var_E4.Fields
  loc_16858C2: var_F8 = var_E8.Item(var_E8)
  loc_16858CA: var_138 = var_138.Value
  loc_16858E0: Me.Label4.Caption = CStr(var_108)
  loc_1685917: If (Me.Recordset15.RecordCount > 0) Then
  loc_1685932:   var_8A = CInt((Me.Recordset15.RecordCount + 1))
  loc_1685938: Else
  loc_168593D:   global_104 = &HFF
  loc_1685943: Else
  loc_1685945:   var_90 = 1
  loc_168594A:   var_8C = 7
  loc_1685960:   Me.FGridTb.Rows = CVar(CLng(var_8A))
  loc_168597B:   Me.FGridTb.Cols = CVar(CLng(var_8C))
  loc_168598C:   Set var_E4 = Me.FGridTb
  loc_1685992:   var_E4.Redraw = False
  loc_168599A:   ' Referenced from:   16865D1
  loc_16859AC:   If Not(Me.var_E4.EOF) Then
  loc_1685A16:     var_108 = CVar(Me.Recordset15.Fields.Item("Code")) 'Address
  loc_1685A1F:     var_BC = Proc_6_38_E69628(var_108, 5, CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), 1, CVar(CLng(var_90)), var_8C)), var_90)
  loc_1685A27:     var_154 = Space((global_104 - Len(var_BC)))
  loc_1685A2F:     var_174 = (var_8A + var_154)
  loc_1685A6B:     var_1AC = Space((var_174 - Len(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("code1")), 8))))
  loc_1685A73:     var_1BC = (var_108 + var_1AC)
  loc_1685AA8:     var_204 = (var_1BC + CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("code1")))))
  loc_1685AAD:     var_254 = CVar(CStr(var_204)) 'String
  loc_1685AB5:     Set var_268 = Me.FGridTb
  loc_1685ABB:     LateIdCallSt
  loc_1685B09:     If (Me.FGridTb.RecordCount > 0) Then
  loc_1685B12:       Me.Recordset15.MoveFirst
  loc_1685B17:     End If
  loc_1685B5A:     Me.Recordset15.Filter = CVar(var_268 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'")
  loc_1685B87:     If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_1685BBE:       If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_1685C0A:         var_108 = (Me.Recordset15.Fields.Item("ShortName").Value + "(")
  loc_1685C40:         var_174 = (CVar(var_268 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_1685C49:         var_19C = (var_174 + ")")
  loc_1685C52:         var_1AC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_1685C84:         var_204 = (2 + CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1AC, "*")))
  loc_1685C8D:         var_254 = (var_204 + vbCrLf)
  loc_1685C96:         var_278 = (var_254 + "Vacant")
  loc_1685C9F:         var_2C8 = CVar(CStr(CVar(CLng(var_90)) & var_278)) 'String
  loc_1685CA7:         Set var_1C0 = Me.FGridTb
  loc_1685CAD:         LateIdCallSt
  loc_1685CE7:         var_B6 = CByte(0) 'Byte
  loc_1685CFF:         If (var_B4.RecordCount > 0) Then
  loc_1685D0E:           var_B4.Filter = 0
  loc_1685D16:           var_B4.MoveFirst
  loc_1685D1B:         End If
  loc_1685D5B:         var_B4.Filter = CVar(var_2C8 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1C0) & "'")
  loc_1685D85:         If (var_B4.AbsolutePosition > 0) Then
  loc_1685DB9:           If (IsNull(CVar(var_B4.Fields.Item("WaiterName"))) = 0) Then
  loc_1685DC0:             var_B6 = CByte(1) 'Byte
  loc_1685DC4:           End If
  loc_1685DC4:         End If
  loc_1685DC7:       Else
  loc_1685DCB:         var_214 = CVar(CLng(var_90)) 'Long
  loc_1685DD0:         var_234 = 2
  loc_1685E0B:         var_108 = (Me.Recordset15.Fields.Item("ShortName").Value + "(")
  loc_1685E41:         var_174 = (CVar(var_2C8 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1C0) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_1685E4A:         var_19C = (var_174 + ")")
  loc_1685E53:         var_1AC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_1685E58:         var_1BC = CVar(CStr(var_1AC)) 'String
  loc_1685E60:         Set var_178 = Me.FGridTb
  loc_1685E66:         LateIdCallSt
  loc_1685E92:         var_B6 = CByte(2) 'Byte
  loc_1685E96:         ' Referenced from:     168610D
  loc_1685EEE:         var_154 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGridTb.Fields.Item("Code").Value, var_178, var_1BC)) 'String
  loc_1685F06:         If (var_234 = var_154) Then
  loc_1685F20:           If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_1685F27:             var_214 = CVar(CLng(var_90)) 'Long
  loc_1685F51:             var_E0 = Me.FGridTb.TextMatrix)
  loc_1685F8E:             var_154 = CVar(2 & Proc_6_38_E69628(CVar(Me.var_E0.Fields.Item("WaiterName")), CStr(var_E0), 2, CVar(CLng(var_90)))) 'String
  loc_1685F96:             Set var_13C = Me.FGridTb
  loc_1685F9C:             LateIdCallSt
  loc_1685FC0:           Else
  loc_1685FE1:             var_E0 = Me.FGridTb.TextMatrix)
  loc_168603F:             If (InStr(var_154, var_13C, Proc_6_38_E69628(CVar(Me.var_E0.Fields.Item("WaiterName")), CStr(var_E0), 2, CVar(CLng(var_90)), 1), 0) = 0) Then
  loc_1686046:               var_214 = CVar(CLng(var_90)) 'Long
  loc_1686070:               var_E0 = Me.FGridTb.TextMatrix)
  loc_16860B4:               var_154 = CVar(var_214 & Proc_6_38_E69628(CVar(Me.var_E0.Fields.Item("WaiterName")), CStr(var_E0) & ",", 2, CVar(CLng(var_90)), 2)) 'String
  loc_16860BC:               Set var_13C = Me.FGridTb
  loc_16860C2:               LateIdCallSt
  loc_16860E5:             End If
  loc_16860E5:           End If
  loc_16860EB:           var_AC.MoveNext
  loc_1686107:           If (var_AC.AbsolutePosition < 0) Then
  loc_168610A:             GoTo loc_1686110
  loc_168610D:           End If
  loc_168610D:           GoTo loc_1685E96
  loc_1686110:           ' Referenced from:     168610A
  loc_1686110:         End If
  loc_168611F:         Me.Recordset15.Filter = 0
  loc_1686124:       End If
  loc_1686124:     End If
  loc_1686131:     Set var_E4 = Me.FGridTb
  loc_1686137:     var_E4.Row = CVar(CLng(var_90))
  loc_1686147:     Call Proc_171_53_F702A8(2, var_B6, var_13C, var_154)
  loc_1686163:     If (Me.var_E4.RecordCount > 0) Then
  loc_168616C:       Me.Recordset15.MoveFirst
  loc_1686171:     End If
  loc_16861B4:     Me.Recordset15.Filter = CVar(var_214 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_214) & "'")
  loc_16861CD:     var_A0 = vbNullString
  loc_16861D3:     var_A4 = vbNullString
  loc_16861D9:     var_A8 = vbNullString
  loc_16861F3:     If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_168622A:       If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_168622D:         ' Referenced from:   168655C
  loc_168629D:         If (var_254 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value))) Then
  loc_16862B7:           If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_16862E5:             var_A0 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("VTIME")))
  loc_16862F2:             var_F8 = CVar(CLng(var_90)) 'Long
  loc_168632B:             var_108 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), 3)) 'String
  loc_1686333:             Set var_138 = Me.FGridTb
  loc_1686339:             LateIdCallSt
  loc_1686352:           Else
  loc_168637D:             var_A4 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("VTIME")), var_138)
  loc_16863A7:             var_E0 = Me.FGridTb.TextMatrix)
  loc_16863DE:             var_108 = CVar(Me.var_E0.Fields.Item("WaiterName")) 'Address
  loc_168640E:             If (InStr(var_108, 1, Proc_6_38_E69628(var_108, CStr(var_E0) & var_A8, 3, CVar(CLng(var_90))), 0) = 0) Then
  loc_168644A:               var_A8 = var_F8 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_A8 & ", ")
  loc_168645A:             End If
  loc_168645A:           End If
  loc_1686460:           var_AC.MoveNext
  loc_168647C:           If (var_AC.AbsolutePosition < 0) Then
  loc_168648E:             Me.Recordset15.Filter = 0
  loc_1686497:             var_244 = CVar(CLng(var_90)) 'Long
  loc_168649C:             var_298 = 3
  loc_16864A9:             var_D0 = CVar(CLng(var_90)) 'Long
  loc_16864AE:             var_188 = 3
  loc_1686509:             var_19C = (CVar(CStr(Me.FGridTb.TextMatrix)) & ",#" & var_A0) + IIf((var_A4 <> vbNullString), CVar(" To " & var_A4), vbNullString))
  loc_1686512:             var_1AC = (CVar(Me.Recordset15.Fields.Item("code1")) + "#")
  loc_168651C:             var_1BC = (var_1AC + CVar(var_A8))
  loc_1686521:             var_1E4 = CVar(CStr(var_1BC)) 'String
  loc_1686529:             Set var_E8 = Me.FGridTb
  loc_168652F:             LateIdCallSt
  loc_168655C:           End If
  loc_168655C:           GoTo loc_168622D
  loc_168655F:         End If
  loc_168655F:       End If
  loc_168655F:     End If
  loc_1686588:     var_E8 = var_9C.Fields.Item("KotYN")
  loc_1686599:     var_108 = CVar(Proc_6_38_E69628(CVar(var_E8), 4, CVar(CLng(var_90)), var_E8, var_1E4)) 'String
  loc_16865A1:     Set var_138 = Me.FGridTb
  loc_16865A7:     LateIdCallSt
  loc_16865C3:     var_90 = (var_90 + 1)
  loc_16865CC:     Me.FGridTb.MoveNext
  loc_16865D1:     GoTo loc_168599A
  loc_16865D4:   End If
  loc_16865D4: End If
  loc_16865E2: Me.FGridTb.Redraw = True
  loc_16865EF: Set var_88 = Nothing
  loc_16865F7: Set var_AC = Nothing
  loc_16865FF: Set var_9C = Nothing
  loc_1686607: Set var_B4 = Nothing
  loc_168660A: Exit Sub
End Sub

Public Sub Proc_171_51_11221E8(arg_C, arg_10) '11221E8
  'Data Table: 535CB8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_1121E8F: Me.FGrid1.Row = 0
  loc_1121EAA: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1121EAF: var_CC = 0
  loc_1121EBC: Set var_E0 = Me.FGrid1
  loc_1121EC2: LateIdCallSt
  loc_1121ED4: ' Referenced from: 112212B
  loc_1121EDA: If (arg_10 < 5) Then
  loc_1121EDD:   GoTo loc_112212E
  loc_1121EE0: End If
  loc_1121EE4: Set var_E4 = Me.FGrid1
  loc_1121EF5: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_1121EFF:   var_98 = CVar(CLng(var_86)) 'Long
  loc_1121F04:   var_CC = 0
  loc_1121F11:   Set var_AC = Me.FGrid1
  loc_1121F17:   LateIdCallSt
  loc_1121F25: Next var_E8 'Integer
  loc_1121F39: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_1121F49:   If (var_86 = (arg_10 - 5)) Then
  loc_1121F50:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1121F55:     var_CC = 0
  loc_1121F62:     Set var_AC = Me.FGrid1
  loc_1121F68:     LateIdCallSt
  loc_1121F77:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1121F7C:     var_CC = 1
  loc_1121F86:     Set var_AC = Me.FGrid1
  loc_1121F8C:     LateIdCallSt
  loc_1121FAA:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1121FB3:     var_CC = CVar(CLng(var_86)) 'Long
  loc_1121FB8:     var_FC = "Table No"
  loc_1121FC2:     Set var_E0 = Me.FGrid1
  loc_1121FC8:     LateIdCallSt
  loc_1121FDA:   End If
  loc_1121FE4:   If (var_86 = (arg_10 - 4)) Then
  loc_1121FEB:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1121FF0:     var_CC = &H4B0
  loc_1121FFD:     Set var_AC = Me.FGrid1
  loc_1122003:     LateIdCallSt
  loc_1122012:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1122017:     var_CC = 1
  loc_1122021:     Set var_AC = Me.FGrid1
  loc_1122027:     LateIdCallSt
  loc_1122045:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112204E:     var_CC = CVar(CLng(var_86)) 'Long
  loc_1122053:     var_FC = "Status"
  loc_112205D:     Set var_E0 = Me.FGrid1
  loc_1122063:     LateIdCallSt
  loc_1122075:   End If
  loc_112207F:   If (var_86 = (arg_10 - 3)) Then
  loc_1122086:     var_98 = CVar(CLng(var_86)) 'Long
  loc_112208B:     var_CC = &H12C
  loc_1122098:     Set var_AC = Me.FGrid1
  loc_112209E:     LateIdCallSt
  loc_11220AD:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11220B8:     var_CC = CVar(CInt(4)) 'Integer
  loc_11220C0:     Set var_AC = Me.FGrid1
  loc_11220C6:     LateIdCallSt
  loc_11220E4:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11220ED:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11220F2:     var_FC = vbNullString
  loc_11220FC:     Set var_E0 = Me.FGrid1
  loc_1122102:     LateIdCallSt
  loc_1122114:   End If
  loc_1122117: Next var_EC 'Integer
  loc_112211E: Set var_E4 = Nothing 
  loc_1122128: arg_10 = (arg_10 - 6)
  loc_112212B: GoTo loc_1121ED4
  loc_112212E: ' Referenced from: 1121EDD
  loc_1122155: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_112216E:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_112217E:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_1122197:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11221B2:     Me.FGrid1.CellBackColor = &HE69839
  loc_11221CD:     Me.FGrid1.CellForeColor = &HFFFF
  loc_11221D8:   Next var_114 'Integer
  loc_11221E0: Next var_110 'Integer
  loc_11221E5: Exit Sub
End Sub

Public Sub Proc_171_52_10C502C
  'Data Table: 535CB8
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  loc_10C4D38: var_86 = arg_10 'Byte
  loc_10C4D45: If (var_86 = CByte(0)) Then
  loc_10C4D61:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4D6A:   Set var_C0 = Me.FGrid1
  loc_10C4D70:   var_C0.Col = var_AC
  loc_10C4D8B:   Set var_8C = Me.Label2
  loc_10C4D91:   Call 0.Method_Proc_171_52_10C502C0 (6, var_C0)
  loc_10C4DB0:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4DD7:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4DE0:   Set var_C0 = Me.FGrid1
  loc_10C4DE6:   var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4E01:   Set var_8C = Me.Label2
  loc_10C4E07:   Call 0.Method_Proc_171_52_10C502C0 (6, var_C0)
  loc_10C4E26:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4E37: Else
  loc_10C4E40:   If (var_86 = CByte(1)) Then
  loc_10C4E5C:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4E65:     Set var_C0 = Me.FGrid1
  loc_10C4E6B:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4E86:     Set var_8C = Me.Label2
  loc_10C4E8C:     Call 0.Method_Proc_171_52_10C502C0 (7, var_C0)
  loc_10C4EAB:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4ED2:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4EDB:     Set var_C0 = Me.FGrid1
  loc_10C4EE1:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4EFC:     Set var_8C = Me.Label2
  loc_10C4F02:     Call 0.Method_Proc_171_52_10C502C0 (7, var_C0)
  loc_10C4F21:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4F32:   Else
  loc_10C4F3B:     If (var_86 = CByte(2)) Then
  loc_10C4F57:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4F60:       Set var_C0 = Me.FGrid1
  loc_10C4F66:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4F81:       Set var_8C = Me.Label2
  loc_10C4F87:       Call 0.Method_Proc_171_52_10C502C0 (5, var_C0)
  loc_10C4FA6:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4FCD:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4FD6:       Set var_C0 = Me.FGrid1
  loc_10C4FDC:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4FF7:       Set var_8C = Me.Label2
  loc_10C4FFD:       Call 0.Method_Proc_171_52_10C502C0 (5, var_C0)
  loc_10C501C:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C502A:     End If
  loc_10C502A:   End If
  loc_10C502A: End If
  loc_10C502A: Exit Sub
End Sub

Public Sub Proc_171_53_F702A8(arg_C, arg_10) 'F702A8
  'Data Table: 535CB8
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Label
  loc_F70168: var_86 = arg_10 'Byte
  loc_F70175: If (var_86 = CByte(0)) Then
  loc_F7018B:   Me.FGridTb.Col = CVar(CLng(arg_C))
  loc_F7019F:   Set var_AC = Me.Label2
  loc_F701A5:   Call 0.Method_Proc_171_53_F702A80 (6, var_B0)
  loc_F701C4:   Me.FGridTb.CellBackColor = CVar(var_B0.BackColor)
  loc_F701D5: Else
  loc_F701DE:   If (var_86 = CByte(1)) Then
  loc_F701F4:     Me.FGridTb.Col = CVar(CLng(arg_C))
  loc_F70208:     Set var_AC = Me.Label2
  loc_F7020E:     Call 0.Method_Proc_171_53_F702A80 (7, var_B0)
  loc_F7022D:     Me.FGridTb.CellBackColor = CVar(var_B0.BackColor)
  loc_F7023E:   Else
  loc_F70247:     If (var_86 = CByte(2)) Then
  loc_F7025D:       Me.FGridTb.Col = CVar(CLng(arg_C))
  loc_F70271:       Set var_AC = Me.Label2
  loc_F70277:       Call 0.Method_Proc_171_53_F702A80 (5, var_B0)
  loc_F70296:       Me.FGridTb.CellBackColor = CVar(var_B0.BackColor)
  loc_F702A4:     End If
  loc_F702A4:   End If
  loc_F702A4: End If
  loc_F702A4: Exit Sub
End Sub

Public Sub Proc_171_54_EC9568
  'Data Table: 535CB8
  Dim var_C4 As Integer
  Dim var_88 As String
  Dim unk_535CC2 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  loc_EC94DA: var_C4 = 0
  loc_EC94FA: var_88 = "Select Count(DOCID) from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52
  loc_EC950A: unk_535CC2.Execute var_88 & "'", var_AC, -1
  loc_EC9512: var_B0 = var_B0.Fields
  loc_EC951A: var_C4 = var_B4.Item(var_B4)
  loc_EC9522: var_C8 = var_C8.Value
  loc_EC9549: If (var_D8 > 0) Then
  loc_EC9559:   Set var_B0 = Me.cmdPrintPKOT
  loc_EC955F:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(&HFF00)
  loc_EC9567: End If
  loc_EC9567: Exit Sub
End Sub
