VERSION 5.00
Begin VB.Form FrmInc
  Caption = "Inconsistency Check"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmInc.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 9390
  ClientHeight = 8115
  Begin BtnEnh BtnEnh1
    Left = 300
    Top = 1890
    Width = 1560
    Height = 660
    TabIndex = 23
  End
  Begin BtnEnh BtnAcGroup
    Left = 2025
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 22
  End
  Begin CommandButton BtnIntegrityz
    Caption = "Integrity Check"
    BackColor = &HC0FFC0&
    Left = 15585
    Top = 9885
    Width = 1620
    Height = 1020
    Visible = 0   'False
    TabIndex = 20
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame FrmPurch
    Caption = "Purchase"
    BackColor = &HC0FFFF&
    Left = 19845
    Top = 10380
    Width = 495
    Height = 630
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton Command1
      Caption = "Update Structure"
      BackColor = &HC0FFFF&
      Left = 75
      Top = 2190
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 18
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnPurchasez
      Caption = "Purchase/Store"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 720
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 17
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnHouseKeepz
      Caption = "House Keep./Kitchen"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 255
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 16
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdGodownz
      Caption = "Godown"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 1185
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnBanquetz
      Caption = "Banquet"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 1650
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 14
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin Frame FrmFOM
    Caption = "FrontDesk"
    BackColor = &HC0E0FF&
    Left = 18735
    Top = 10290
    Width = 375
    Height = 675
    Visible = 0   'False
    TabIndex = 2
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton btnPayTypez
      Caption = "PaymentTypes"
      BackColor = &HC0E0FF&
      Left = 60
      Top = 780
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 19
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BTNFOMz
      Caption = "F.O.M."
      BackColor = &HC0E0FF&
      Left = 60
      Top = 315
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 13
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin Frame FrmACC
    Caption = "Accounts"
    BackColor = &HFFFFC0&
    Left = 18450
    Top = 10230
    Width = 240
    Height = 840
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BtnVrTypez
      Caption = "Voucher Types"
      BackColor = &HFFFFC0&
      Left = 120
      Top = 735
      Width = 2040
      Height = 465
      Visible = 0   'False
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
      Style = 1
    End
    Begin CommandButton BtnAcGroupz
      Caption = "Account Group"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 270
      Width = 2040
      Height = 465
      Visible = 0   'False
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
      Style = 1
    End
    Begin CommandButton BtnTaxz
      Caption = "Tax"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 2130
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 9
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnUnitz
      Caption = "Unit"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 2595
      Width = 2040
      Height = 465
      Visible = 0   'False
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
      Style = 1
    End
    Begin CommandButton BtnSundryMastz
      Caption = "Sundry Master"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 1665
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 7
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnSundryTypeFixz
      Caption = "Sundry Type Fix"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 1200
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin Frame FrmPOS
    Caption = "Restaurnt"
    BackColor = &HC0C0FF&
    Left = 19245
    Top = 10290
    Width = 525
    Height = 690
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BTNRoomServicez
      Caption = "Room Service"
      BackColor = &HC0C0FF&
      Left = 45
      Top = 330
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 12
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin TextBox Text1
    BackColor = &HC0E0FF&
    ForeColor = &HC00000&
    Left = 2595
    Top = 675
    Width = 12135
    Height = 555
    TabIndex = 1
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
  Begin CommandButton BtnExitz
    Caption = "Exit"
    BackColor = &HFFC0FF&
    Left = 17340
    Top = 10545
    Width = 1005
    Height = 360
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin BtnEnh BtnVrType
    Left = 4290
    Top = 1875
    Width = 2265
    Height = 585
    TabIndex = 24
  End
  Begin BtnEnh BtnSundryTypeFix
    Left = 6555
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 25
  End
  Begin BtnEnh BtnSundryMast
    Left = 8820
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 26
  End
  Begin BtnEnh BtnTax
    Left = 11085
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 27
  End
End
Begin BtnEnh BtnUnit
  Left = 13350
  Top = 1890
  Width = 2265
  Height = 585
  TabIndex = 28
End
Begin BtnEnh BtnEnh7
  Left = 300
  Top = 3030
  Width = 1560
  Height = 660
  TabIndex = 29
End
Begin BtnEnh BtnHouseKeep
  Left = 2040
  Top = 3060
  Width = 2265
  Height = 585
  TabIndex = 30
End
Begin BtnEnh BtnPurchase
  Left = 4305
  Top = 3060
  Width = 2265
  Height = 585
  TabIndex = 31
End
Begin BtnEnh CmdGodown
  Left = 6570
  Top = 3060
  Width = 2265
  Height = 585
  TabIndex = 32
End
Begin BtnEnh BTNFOM
  Left = 2040
  Top = 4170
  Width = 2295
  Height = 585
  TabIndex = 33
End
Begin BtnEnh btnPayType
  Left = 4335
  Top = 4170
  Width = 2310
  Height = 585
  TabIndex = 34
End
Begin BtnEnh BtnEnh13
  Left = 300
  Top = 4170
  Width = 1560
  Height = 660
  TabIndex = 35
End
Begin BtnEnh BtnEnh14
  Left = 300
  Top = 5340
  Width = 1560
  Height = 660
  TabIndex = 36
End
Begin BtnEnh BTNRoomService
  Left = 2055
  Top = 5340
  Width = 2265
  Height = 585
  TabIndex = 37
End
Begin BtnEnh BtnEnh16
  Left = 300
  Top = 6465
  Width = 1560
  Height = 660
  TabIndex = 38
End
Begin BtnEnh BtnBanquet
  Left = 2085
  Top = 6465
  Width = 2265
  Height = 585
  TabIndex = 39
End
Begin BtnEnh BtnIntegrity
  Left = 2055
  Top = 7410
  Width = 3615
  Height = 840
  TabIndex = 40
End
Begin BtnEnh BtnExit
  Left = 6930
  Top = 7410
  Width = 1155
  Height = 930
  TabIndex = 41
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 60
  Width = 180
  Height = 540
  TabIndex = 21
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

Attribute VB_Name = "FrmInc"


Private Sub BtnBanquet_UnknownEvent_9 '10EED68
  'Data Table: 575328
  Dim var_A0 As Variant
  Dim unk_575331 As Connection15
  Dim var_8E As Integer
  loc_10EEA4C: On Error Resume Next
  loc_10EEA58: var_A0 = CVar("Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F9510C) 'String
  loc_10EEA62: Call 0.Method_arg_24 (var_A0)
  loc_10EEA75: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_10EEA80: MemVar_1F9504C = New 
  loc_10EEA91: Me.Connection15.CursorLocation = 3
  loc_10EEAA3: unk_575331.IsolationLevel = &H10
  loc_10EEAB5: unk_575331.CommandTimeout = 0
  loc_10EEADE: unk_575331.Open "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & MemVar_1F9510C & ";Persist Security Info=False", vbNullString, vbNullString, -1
  loc_10EEAFB: Call 0.Method_arg_30 (var_AC)
  loc_10EEB03: Call 0.Method_arg_30 ("Itemmast")
  loc_10EEB1C: Call 0.Method_arg_30 (var_AC)
  loc_10EEB24: Call 0.Method_arg_30 ("Voucher_Type")
  loc_10EEB3D: Call 0.Method_arg_30 (var_AC)
  loc_10EEB45: Call 0.Method_arg_30 ("Voucher_Prefix")
  loc_10EEB5E: Call 0.Method_arg_30 (var_AC)
  loc_10EEB66: Call 0.Method_arg_30 ("Depart")
  loc_10EEB86: unk_575331.Execute "Drop table Itemmast", var_A0, -1
  loc_10EEBA9: unk_575331.Execute "Drop table Voucher_Type", var_A0, -1
  loc_10EEBCC: unk_575331.Execute "Drop table Voucher_Prefix", var_A0, -1
  loc_10EEBEF: unk_575331.Execute "Drop table Depart", var_A0, -1
  loc_10EEC08: Set var_AC = var_88
  loc_10EEC2F: Call 0.Method_arg_1DC ("Depart", "Select * from " & MemVar_1F95108 & ".Depart", var_AC, var_C2)
  loc_10EEC5D: Set var_AC = var_AC
  loc_10EEC84: Call 0.Method_arg_1DC ("Voucher_Type", "Select * from " & MemVar_1F95108 & ".Voucher_Type", var_AC, var_C2, var_C2)
  loc_10EECB2: Set var_AC = var_AC
  loc_10EECD9: Call 0.Method_arg_1DC ("Voucher_Prefix", "Select * from " & MemVar_1F95108 & ".Voucher_Prefix", var_AC, var_C2, var_C2)
  loc_10EED07: Set var_AC = var_AC
  loc_10EED2E: Call 0.Method_arg_1DC ("ItemMast", "Select * from " & MemVar_1F95108 & ".ItemMast", var_AC, var_C2, var_C2)
  loc_10EED39: Set var_88 = var_AC
  loc_10EED3F: var_8E = var_C2
  loc_10EED55: Set var_8C = Nothing
  loc_10EED60: Me.Connection15.Close
  loc_10EED67: Exit Sub
End Sub

Private Sub BtnUnit_UnknownEvent_9 'EE684C
  'Data Table: 575328
  loc_EE6794: On Error Goto loc_EE680F
  loc_EE67A0: Call Proc_97_28_10178A8("PTN")
  loc_EE67B1: Call Proc_97_28_10178A8("PLATE")
  loc_EE67C2: Call Proc_97_28_10178A8("PEG")
  loc_EE67D3: Call Proc_97_28_10178A8("PCS")
  loc_EE67E4: Call Proc_97_28_10178A8("M.L.")
  loc_EE67F5: Call Proc_97_28_10178A8("BOTTLE")
  loc_EE6800: var_88 = "K.G."
  loc_EE6806: Call Proc_97_28_10178A8(var_88)
  loc_EE680E: Exit Sub
  loc_EE680F: ' Referenced from: EE6794
  loc_EE6825: Set var_8C = Err()
  loc_EE682B: Call 0.Method_arg_2C (var_88, 0, var_BC)
  loc_EE6836: MsgBox(CVar(var_88), var_DC, var_FC, , )
  loc_EE6849: Exit Sub
End Sub

Private Sub Command1_Click() '1018C30
  'Data Table: 575328
  Dim unk_575357 As Connection15
  loc_1018A12: unk_575357.Execute "UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.WTUNIT = [ITEMMAST].[ISSUEUNIT],INDENT1.WTQTY=[INDENT1].[qTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PIND'", var_A4, -1
  loc_1018A33: unk_575357.Execute "UPDATE INDENT1 SET WTQTY=QTY,WTUNIT=UNIT WHERE VtYPE='RQ'", var_A4, -1
  loc_1018A54: unk_575357.Execute "UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.UNIT = [ITEMMAST].[UNIT], INDENT1.QTY = [INDENT1].[WTQTY]/[ITEMMAST].[cONVRATIO] WHERE VTYPE='RQ'", var_A4, -1
  loc_1018A75: unk_575357.Execute "update Indent set clearyn='Y' where indent.Vtype='RQ' and docid in (select Contradocid from stock where vtype='RQI')", var_A4, -1
  loc_1018A96: unk_575357.Execute "UPDATE PORDER1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[PORDER1].[ITEMCODE] SET PORDER1.CONVRATIO = [ITEMMAST].[CONVRATIO], PORDER1.WTUNIT = [ITEMMAST].[ISSUEUNIT], PORDER1.WTQTY = [PORDER1].[QTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PORD'", var_A4, -1
  loc_1018AB7: unk_575357.Execute "UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.RECDUNIT=ITEMMAST.UNIT,STOCK.RECDQTY=STOCK.QTYREC/ITEMMAST.CONVRATIO, STOCK.ACCQTY = STOCK.QTYREC / ITEMMAST.ConvRatio WHERE VTYPE='RQI'", var_A4, -1
  loc_1018AD8: unk_575357.Execute "UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/ITEMMAST.CONVRATIO WHERE VTYPE='RQR'", var_A4, -1
  loc_1018AF9: unk_575357.Execute "update stock set ISSQTY=QTYISS,ISSUEUNIT=UNIT WHERE VTYPE IN ('KSISS','KMISS')", var_A4, -1
  loc_1018B1A: unk_575357.Execute "update stock set ACCQTY=QTYREC,RECDQTY=QTYREC,RECDUNIT=UNIT WHERE VTYPE IN ('KSREC','KMREC','BKREC')", var_A4, -1
  loc_1018B3B: unk_575357.Execute "UPDATE STOCK INNER JOIN ITEMMAST ON [itemmast].[CODE]=[STOCK].[ITEM] SET STOCK.UNIT = [ITEMMAST].[ISSUEUNIT],STOCK.QTYISS=STOCK.CONVRATIO*STOCK.ISSQTY,STOCK.QTYREC=STOCK.CONVRATIO*STOCK.RECDQTY WHERE VTYPE IN ('KSISS','KSREC','KMREC','KMISS','BKREC','BKISS')", var_A4, -1
  loc_1018B5C: unk_575357.Execute "update stock Set IssQty=Recdqty,Accqty=0,ChalQty=0,IssueUnit=RECDUNIT where vtype='PRPB'", var_A4, -1
  loc_1018B7D: unk_575357.Execute "Update STOCK Inner Join ITEMMAST on (ITEMMAST.cODE=STOCK.ITEM) Set STOCK.RECDQTY=0,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/STOCK.CONVRATIO WHERE VTYPE IN ('PRPB','PRPC')", var_A4, -1
  loc_1018B9E: unk_575357.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio", var_A4, -1
  loc_1018BBF: unk_575357.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdUnit=Stock.RecdUnit,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio Where Purch2.QtyIss=0", var_A4, -1
  loc_1018BE0: unk_575357.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.iSSQty=Stock.iSSQty,Purch2.ISSUEUNIT=Stock.ISSUEUNIT Where Purch2.QtyIss<>0", var_A4, -1
  loc_1018C01: unk_575357.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.RecdUnit=Stock.RecdUnit,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT", var_A4, -1
  loc_1018C22: unk_575357.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT ", var_A4, -1
  loc_1018C2D: Exit Sub
End Sub

Private Sub BtnVrType_UnknownEvent_9 '1D32DA8
  'Data Table: 575328
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim unk_575357 As Connection15
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_8C As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_118 As Fields15
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_190 As Variant
  Dim var_1C0 As Variant
  Dim var_3A8 As Variant
  loc_1D2B4D0: On Error Goto loc_1D32D6C
  loc_1D2B4D8: var_C8 = 0
  loc_1D2B4E3: var_C4 = 0
  loc_1D2B4EE: var_C0 = 0
  loc_1D2B4F9: var_BC = 0
  loc_1D2B504: var_B8 = 0
  loc_1D2B50F: var_B4 = 0
  loc_1D2B51A: var_B0 = 0
  loc_1D2B525: var_AC = 0
  loc_1D2B573: Call Proc_97_25_137291C("EBOUT", "EBOUT", "EBOUT", vbNullString, "EPABX OUTPUT", "EOUT", "Automatic", vbNullString)
  loc_1D2B5A0: var_C8 = 0
  loc_1D2B5AB: var_C4 = 0
  loc_1D2B5B6: var_C0 = 0
  loc_1D2B5C1: var_BC = 0
  loc_1D2B5CC: var_B8 = 0
  loc_1D2B5D7: var_B4 = 0
  loc_1D2B5E2: var_B0 = 0
  loc_1D2B5ED: var_AC = 0
  loc_1D2B63B: Call Proc_97_25_137291C("CFORM", "CFORM", "CFORM", vbNullString, "CFORM", "CFORM", "Automatic", vbNullString)
  loc_1D2B668: var_C8 = 0
  loc_1D2B673: var_C4 = 0
  loc_1D2B67E: var_C0 = 0
  loc_1D2B689: var_BC = 0
  loc_1D2B694: var_B8 = 0
  loc_1D2B69F: var_B4 = 0
  loc_1D2B6AA: var_B0 = 0
  loc_1D2B6B5: var_AC = 0
  loc_1D2B703: Call Proc_97_25_137291C("OPBAL", "OPBAL", "F_AO", vbNullString, "Party Opening", "Party O/B", "Automatic", vbNullString)
  loc_1D2B730: var_C8 = 0
  loc_1D2B73B: var_C4 = 0
  loc_1D2B746: var_C0 = 0
  loc_1D2B751: var_BC = 0
  loc_1D2B75C: var_B8 = 0
  loc_1D2B767: var_B4 = 0
  loc_1D2B772: var_B0 = 0
  loc_1D2B77D: var_AC = 0
  loc_1D2B7CB: Call Proc_97_25_137291C("TDS", "TDS", "TDS", vbNullString, "T.D.S.", "TDS", "Automatic", vbNullString)
  loc_1D2B7F8: var_C8 = 0
  loc_1D2B803: var_C4 = 0
  loc_1D2B80E: var_C0 = 0
  loc_1D2B819: var_BC = 0
  loc_1D2B824: var_B8 = 0
  loc_1D2B82F: var_B4 = 0
  loc_1D2B83A: var_B0 = 0
  loc_1D2B845: var_AC = 0
  loc_1D2B893: Call Proc_97_25_137291C("TDSCH", "TDSCH", "TDSCP", vbNullString, "T.D.S.Challan (Cash)", "TDSCP", "Automatic", vbNullString)
  loc_1D2B8C0: var_C8 = 0
  loc_1D2B8CB: var_C4 = 0
  loc_1D2B8D6: var_C0 = 0
  loc_1D2B8E1: var_BC = 0
  loc_1D2B8EC: var_B8 = 0
  loc_1D2B8F7: var_B4 = 0
  loc_1D2B902: var_B0 = 0
  loc_1D2B90D: var_AC = 0
  loc_1D2B95B: Call Proc_97_25_137291C("TDSCH", "TDSCH", "TDSBP", vbNullString, "T.D.S.Challan (Bank)", "TDSBP", "Automatic", vbNullString)
  loc_1D2B998: var_C8 = 0
  loc_1D2B9A3: var_C4 = 0
  loc_1D2B9AE: var_C0 = 0
  loc_1D2B9BC: var_108 = (Trim(MemVar_1F95078) + "CASH")
  loc_1D2B9C8: var_B8 = vbNullString
  loc_1D2B9D1: var_B4 = "Cr"
  loc_1D2B9DA: var_B0 = "Y"
  loc_1D2B9E3: var_AC = "N"
  loc_1D2BA31: Call Proc_97_25_137291C("FA", "RCT", "CRV", vbNullString, "Cash Receipt", "CR", "Automatic", vbNullString)
  loc_1D2BA65: var_C8 = 0
  loc_1D2BA70: var_C4 = 0
  loc_1D2BA7B: var_C0 = 0
  loc_1D2BA86: var_BC = 0
  loc_1D2BA91: var_B8 = 0
  loc_1D2BA9A: var_B4 = "Dr"
  loc_1D2BAA3: var_B0 = "Y"
  loc_1D2BAAC: var_AC = "N"
  loc_1D2BAFA: Call Proc_97_25_137291C("FA", "JV", "JV", vbNullString, "Journal", "JV", "Automatic", vbNullString)
  loc_1D2BB25: var_C8 = "Y"
  loc_1D2BB2E: var_C4 = "Y"
  loc_1D2BB37: var_C0 = "Y"
  loc_1D2BB40: var_BC = vbNullString
  loc_1D2BB49: var_B8 = vbNullString
  loc_1D2BB52: var_B4 = "Cr"
  loc_1D2BB5B: var_B0 = "Y"
  loc_1D2BB64: var_AC = "N"
  loc_1D2BBB2: Call Proc_97_25_137291C("FA", "RCT", "RCT", vbNullString, "Bank Receipt", "RCT", "Automatic", vbNullString)
  loc_1D2BBDF: var_C8 = 0
  loc_1D2BBEA: var_C4 = 0
  loc_1D2BBF5: var_C0 = 0
  loc_1D2BC00: var_BC = 0
  loc_1D2BC0B: var_B8 = 0
  loc_1D2BC14: var_B4 = "Dr"
  loc_1D2BC1D: var_B0 = "Y"
  loc_1D2BC26: var_AC = "N"
  loc_1D2BC74: Call Proc_97_25_137291C("FA", "JV", "DN", vbNullString, "Debit Note", "DN", "Automatic", vbNullString)
  loc_1D2BCB1: var_C8 = 0
  loc_1D2BCBC: var_C4 = 0
  loc_1D2BCC7: var_C0 = 0
  loc_1D2BCD2: var_BC = 0
  loc_1D2BCE0: var_108 = (Trim(MemVar_1F95078) + "CASH")
  loc_1D2BCEC: var_B4 = "Dr"
  loc_1D2BCF5: var_B0 = "Y"
  loc_1D2BCFE: var_AC = "N"
  loc_1D2BD4C: Call Proc_97_25_137291C("FA", "PMT", "CPV", vbNullString, "Cash Payment", "CP", "Automatic", vbNullString)
  loc_1D2BD80: var_C8 = 0
  loc_1D2BD8B: var_C4 = 0
  loc_1D2BD96: var_C0 = 0
  loc_1D2BDA1: var_BC = 0
  loc_1D2BDAC: var_B8 = 0
  loc_1D2BDB5: var_B4 = "Dr"
  loc_1D2BDBE: var_B0 = "Y"
  loc_1D2BDC7: var_AC = "N"
  loc_1D2BE15: Call Proc_97_25_137291C("FA", "CNT", "CNT", vbNullString, "Contra", "CNT", "Automatic", vbNullString)
  loc_1D2BE42: var_C8 = 0
  loc_1D2BE4D: var_C4 = 0
  loc_1D2BE58: var_C0 = 0
  loc_1D2BE63: var_BC = 0
  loc_1D2BE6E: var_B8 = 0
  loc_1D2BE77: var_B4 = "Cr"
  loc_1D2BE80: var_B0 = "Y"
  loc_1D2BE89: var_AC = "N"
  loc_1D2BED7: Call Proc_97_25_137291C("FA", "JV", "CN", vbNullString, "Credit Note", "CN", "Automatic", vbNullString)
  loc_1D2BF02: var_C8 = "Y"
  loc_1D2BF0B: var_C4 = "Y"
  loc_1D2BF14: var_C0 = "Y"
  loc_1D2BF1D: var_BC = vbNullString
  loc_1D2BF26: var_B8 = vbNullString
  loc_1D2BF2F: var_B4 = "Dr"
  loc_1D2BF38: var_B0 = "Y"
  loc_1D2BF41: var_AC = "Y"
  loc_1D2BF8F: Call Proc_97_25_137291C("FA", "PMT", "PMT", vbNullString, "Bank Payment", "PMT", "Automatic", vbNullString)
  loc_1D2BFBC: var_C8 = 0
  loc_1D2BFC7: var_C4 = 0
  loc_1D2BFD2: var_C0 = 0
  loc_1D2BFDD: var_BC = 0
  loc_1D2BFE8: var_B8 = 0
  loc_1D2BFF3: var_B4 = 0
  loc_1D2BFFE: var_B0 = 0
  loc_1D2C009: var_AC = 0
  loc_1D2C057: Call Proc_97_25_137291C("FA", "BREC", "BREC", "IDC", "Banquet recieving", "BREC", "Automatic", vbNullString)
  loc_1D2C084: var_C8 = 0
  loc_1D2C08F: var_C4 = 0
  loc_1D2C09A: var_C0 = 0
  loc_1D2C0A5: var_BC = 0
  loc_1D2C0B0: var_B8 = 0
  loc_1D2C0BB: var_B4 = 0
  loc_1D2C0C6: var_B0 = 0
  loc_1D2C0D1: var_AC = 0
  loc_1D2C11F: Call Proc_97_25_137291C("RESCANCEL", "CAN", "CAN", vbNullString, "Reservation Cancellation", "CAN", "Automatic", vbNullString)
  loc_1D2C14C: var_C8 = 0
  loc_1D2C157: var_C4 = 0
  loc_1D2C162: var_C0 = 0
  loc_1D2C16D: var_BC = 0
  loc_1D2C178: var_B8 = 0
  loc_1D2C183: var_B4 = 0
  loc_1D2C18E: var_B0 = 0
  loc_1D2C199: var_AC = 0
  loc_1D2C1E7: Call Proc_97_25_137291C("CONSUMP", "CONS", "CONSU", vbNullString, "Consumption Posting", "CONS", "Automatic", vbNullString)
  loc_1D2C214: var_C8 = 0
  loc_1D2C21F: var_C4 = 0
  loc_1D2C22A: var_C0 = 0
  loc_1D2C235: var_BC = 0
  loc_1D2C240: var_B8 = 0
  loc_1D2C24B: var_B4 = 0
  loc_1D2C256: var_B0 = 0
  loc_1D2C261: var_AC = 0
  loc_1D2C2AF: Call Proc_97_25_137291C("BANQ", "BREC", "BREC", vbNullString, "Banquet Settlement", "BREC", "Automatic", vbNullString)
  loc_1D2C2DC: var_C8 = 0
  loc_1D2C2E7: var_C4 = 0
  loc_1D2C2F2: var_C0 = 0
  loc_1D2C2FD: var_BC = 0
  loc_1D2C308: var_B8 = 0
  loc_1D2C313: var_B4 = 0
  loc_1D2C31E: var_B0 = 0
  loc_1D2C329: var_AC = 0
  loc_1D2C377: Call Proc_97_25_137291C("Advance", "AR", "AR1", vbNullString, "Advance Return", "AR", "Automatic", vbNullString)
  loc_1D2C3A4: var_C8 = 0
  loc_1D2C3AF: var_C4 = 0
  loc_1D2C3BA: var_C0 = 0
  loc_1D2C3C5: var_BC = 0
  loc_1D2C3D0: var_B8 = 0
  loc_1D2C3DB: var_B4 = 0
  loc_1D2C3E6: var_B0 = 0
  loc_1D2C3F1: var_AC = 0
  loc_1D2C43F: Call Proc_97_25_137291C("Advance", "AR", "AR2", vbNullString, "Advance Return", "AR", "Automatic", vbNullString)
  loc_1D2C46C: var_C8 = 0
  loc_1D2C477: var_C4 = 0
  loc_1D2C482: var_C0 = 0
  loc_1D2C48D: var_BC = 0
  loc_1D2C498: var_B8 = 0
  loc_1D2C4A3: var_B4 = 0
  loc_1D2C4AE: var_B0 = 0
  loc_1D2C4B9: var_AC = 0
  loc_1D2C507: Call Proc_97_25_137291C("Advance", "AD", "AD", vbNullString, "Banquet Advance", "AD", "Automatic", vbNullString)
  loc_1D2C534: var_C8 = 0
  loc_1D2C53F: var_C4 = 0
  loc_1D2C54A: var_C0 = 0
  loc_1D2C555: var_BC = 0
  loc_1D2C560: var_B8 = 0
  loc_1D2C56B: var_B4 = 0
  loc_1D2C576: var_B0 = 0
  loc_1D2C581: var_AC = 0
  loc_1D2C5CF: Call Proc_97_25_137291C("Advance", "AR", "AR", vbNullString, "Banquet Advance Return", "AR", "Automatic", vbNullString)
  loc_1D2C5FC: var_C8 = 0
  loc_1D2C607: var_C4 = 0
  loc_1D2C612: var_C0 = 0
  loc_1D2C61D: var_BC = 0
  loc_1D2C628: var_B8 = 0
  loc_1D2C633: var_B4 = 0
  loc_1D2C63E: var_B0 = 0
  loc_1D2C649: var_AC = 0
  loc_1D2C697: Call Proc_97_25_137291C("Advance", "ADE", "ADE", vbNullString, "Advance", "ADE", "Automatic", vbNullString)
  loc_1D2C6C4: var_C8 = 0
  loc_1D2C6CF: var_C4 = 0
  loc_1D2C6DA: var_C0 = 0
  loc_1D2C6E5: var_BC = 0
  loc_1D2C6F0: var_B8 = 0
  loc_1D2C6FB: var_B4 = 0
  loc_1D2C706: var_B0 = 0
  loc_1D2C711: var_AC = 0
  loc_1D2C75F: Call Proc_97_25_137291C("Leave_Ench", "LV", "LV", vbNullString, "Leave Encashment", "LV", "Automatic", vbNullString)
  loc_1D2C78C: var_C8 = 0
  loc_1D2C797: var_C4 = 0
  loc_1D2C7A2: var_C0 = 0
  loc_1D2C7AD: var_BC = 0
  loc_1D2C7B8: var_B8 = 0
  loc_1D2C7C3: var_B4 = 0
  loc_1D2C7CE: var_B0 = 0
  loc_1D2C7D9: var_AC = 0
  loc_1D2C827: Call Proc_97_25_137291C("Loan", "LO", "LO", vbNullString, "Loan", "LO", "Automatic", vbNullString)
  loc_1D2C854: var_C8 = 0
  loc_1D2C85F: var_C4 = 0
  loc_1D2C86A: var_C0 = 0
  loc_1D2C875: var_BC = 0
  loc_1D2C880: var_B8 = 0
  loc_1D2C88B: var_B4 = 0
  loc_1D2C896: var_B0 = 0
  loc_1D2C8A1: var_AC = 0
  loc_1D2C8EF: Call Proc_97_25_137291C("Loan", "LR", "LR1", vbNullString, "Loan Return", "LR", "Automatic", vbNullString)
  loc_1D2C91C: var_C8 = 0
  loc_1D2C927: var_C4 = 0
  loc_1D2C932: var_C0 = 0
  loc_1D2C93D: var_BC = 0
  loc_1D2C948: var_B8 = 0
  loc_1D2C953: var_B4 = 0
  loc_1D2C95E: var_B0 = 0
  loc_1D2C969: var_AC = 0
  loc_1D2C9B7: Call Proc_97_25_137291C("Loan", "LR", "LR", vbNullString, "Loan Return", "LR", "Automatic", vbNullString)
  loc_1D2C9E4: var_C8 = 0
  loc_1D2C9EF: var_C4 = 0
  loc_1D2C9FA: var_C0 = 0
  loc_1D2CA05: var_BC = 0
  loc_1D2CA10: var_B8 = 0
  loc_1D2CA1B: var_B4 = 0
  loc_1D2CA26: var_B0 = 0
  loc_1D2CA31: var_AC = 0
  loc_1D2CA7F: Call Proc_97_25_137291C("SALARY", "SL", "SL", vbNullString, "Salary", "SL", "Automatic", vbNullString)
  loc_1D2CAAC: var_C8 = 0
  loc_1D2CAB7: var_C4 = 0
  loc_1D2CAC2: var_C0 = 0
  loc_1D2CACD: var_BC = 0
  loc_1D2CAD8: var_B8 = 0
  loc_1D2CAE3: var_B4 = 0
  loc_1D2CAEE: var_B0 = 0
  loc_1D2CAF9: var_AC = 0
  loc_1D2CB47: Call Proc_97_25_137291C("BillCnt", "BCNT", "BCNT", vbNullString, "Guest Bill No", "BCNT", "Automatic", vbNullString)
  loc_1D2CB74: var_C8 = 0
  loc_1D2CB7F: var_C4 = 0
  loc_1D2CB8A: var_C0 = 0
  loc_1D2CB95: var_BC = 0
  loc_1D2CBA0: var_B8 = 0
  loc_1D2CBAB: var_B4 = 0
  loc_1D2CBB6: var_B0 = 0
  loc_1D2CBC1: var_AC = 0
  loc_1D2CC0F: Call Proc_97_25_137291C("STOP", "STOP", "STOP", vbNullString, "Raw Item Op.Stock Entry", "STOP", "Automatic", vbNullString)
  loc_1D2CC3C: var_C8 = 0
  loc_1D2CC47: var_C4 = 0
  loc_1D2CC52: var_C0 = 0
  loc_1D2CC5D: var_BC = 0
  loc_1D2CC68: var_B8 = 0
  loc_1D2CC73: var_B4 = 0
  loc_1D2CC7E: var_B0 = 0
  loc_1D2CC89: var_AC = 0
  loc_1D2CCD7: Call Proc_97_25_137291C("PRAP", "PRAP", "PRAP", vbNullString, "Travel Agency Posting", "PRAP", "Automatic", vbNullString)
  loc_1D2CD04: var_C8 = 0
  loc_1D2CD0F: var_C4 = 0
  loc_1D2CD1A: var_C0 = 0
  loc_1D2CD25: var_BC = 0
  loc_1D2CD30: var_B8 = 0
  loc_1D2CD3B: var_B4 = 0
  loc_1D2CD46: var_B0 = 0
  loc_1D2CD51: var_AC = 0
  loc_1D2CD9F: Call Proc_97_25_137291C("PPOS", "PPOS", "PPOS", vbNullString, "Outlet Posting", "PPOS", "Automatic", vbNullString)
  loc_1D2CDCC: var_C8 = 0
  loc_1D2CDD7: var_C4 = 0
  loc_1D2CDE2: var_C0 = 0
  loc_1D2CDED: var_BC = 0
  loc_1D2CDF8: var_B8 = 0
  loc_1D2CE03: var_B4 = 0
  loc_1D2CE0E: var_B0 = 0
  loc_1D2CE19: var_AC = 0
  loc_1D2CE67: Call Proc_97_25_137291C("IPOS", "IPOS", "IPOS", vbNullString, "Item Posting", "IPOS", "Automatic", vbNullString)
  loc_1D2CE94: var_C8 = 0
  loc_1D2CE9F: var_C4 = 0
  loc_1D2CEAA: var_C0 = 0
  loc_1D2CEB5: var_BC = 0
  loc_1D2CEC0: var_B8 = 0
  loc_1D2CECB: var_B4 = 0
  loc_1D2CED6: var_B0 = 0
  loc_1D2CEE1: var_AC = 0
  loc_1D2CF2F: Call Proc_97_25_137291C("RSOP", "RSOP", "RSOP", vbNullString, "Menu Item Op.Stock Entry", "RSOP", "Automatic", vbNullString)
  loc_1D2CF5C: var_C8 = 0
  loc_1D2CF67: var_C4 = 0
  loc_1D2CF72: var_C0 = 0
  loc_1D2CF7D: var_BC = 0
  loc_1D2CF88: var_B8 = 0
  loc_1D2CF93: var_B4 = 0
  loc_1D2CF9E: var_B0 = 0
  loc_1D2CFA9: var_AC = 0
  loc_1D2CFF7: Call Proc_97_25_137291C("AD", "PC", "PCH", vbNullString, "Pay Charge", "PC", "Automatic", vbNullString)
  loc_1D2D024: var_C8 = 0
  loc_1D2D02F: var_C4 = 0
  loc_1D2D03A: var_C0 = 0
  loc_1D2D045: var_BC = 0
  loc_1D2D050: var_B8 = 0
  loc_1D2D05B: var_B4 = 0
  loc_1D2D066: var_B0 = 0
  loc_1D2D071: var_AC = 0
  loc_1D2D0BF: Call Proc_97_25_137291C("CHECKIN", "CHK", "CHK", vbNullString, "Check In", "CHK", "Automatic", vbNullString)
  loc_1D2D0EC: var_C8 = 0
  loc_1D2D0F7: var_C4 = 0
  loc_1D2D102: var_C0 = 0
  loc_1D2D10D: var_BC = 0
  loc_1D2D118: var_B8 = 0
  loc_1D2D123: var_B4 = 0
  loc_1D2D12E: var_B0 = 0
  loc_1D2D139: var_AC = 0
  loc_1D2D187: Call Proc_97_25_137291C("REVENUE", "REV", "REV", vbNullString, "Revenues", "REV", "Automatic", vbNullString)
  loc_1D2D1B4: var_C8 = 0
  loc_1D2D1BF: var_C4 = 0
  loc_1D2D1CA: var_C0 = 0
  loc_1D2D1D5: var_BC = 0
  loc_1D2D1E0: var_B8 = 0
  loc_1D2D1EB: var_B4 = 0
  loc_1D2D1F6: var_B0 = 0
  loc_1D2D201: var_AC = 0
  loc_1D2D24F: Call Proc_97_25_137291C("PAYMENT", "REC", "REC", vbNullString, "Payment Recieves", "REC", "Automatic", vbNullString)
  loc_1D2D27C: var_C8 = 0
  loc_1D2D287: var_C4 = 0
  loc_1D2D292: var_C0 = 0
  loc_1D2D29D: var_BC = 0
  loc_1D2D2A8: var_B8 = 0
  loc_1D2D2B3: var_B4 = 0
  loc_1D2D2BE: var_B0 = 0
  loc_1D2D2C9: var_AC = 0
  loc_1D2D317: Call Proc_97_25_137291C("HTFEX", "HTFEX", "HTFEX", vbNullString, "Forex Receive Entry", "HTFEX", "Automatic", vbNullString)
  loc_1D2D344: var_C8 = 0
  loc_1D2D34F: var_C4 = 0
  loc_1D2D35A: var_C0 = 0
  loc_1D2D365: var_BC = 0
  loc_1D2D370: var_B8 = 0
  loc_1D2D37B: var_B4 = 0
  loc_1D2D386: var_B0 = 0
  loc_1D2D391: var_AC = 0
  loc_1D2D3DF: Call Proc_97_25_137291C("HTGWP", "HTGWP", "HTGWP", vbNullString, "Register Wake up Calls", "HTGWP", "Automatic", vbNullString)
  loc_1D2D40C: var_C8 = 0
  loc_1D2D417: var_C4 = 0
  loc_1D2D422: var_C0 = 0
  loc_1D2D42D: var_BC = 0
  loc_1D2D438: var_B8 = 0
  loc_1D2D443: var_B4 = 0
  loc_1D2D44E: var_B0 = 0
  loc_1D2D459: var_AC = 0
  loc_1D2D4A7: Call Proc_97_25_137291C("HTHGM", "HTHGM", "HTHGM", vbNullString, "In House Guest Message", "HTHGM", "Automatic", vbNullString)
  loc_1D2D4D4: var_C8 = 0
  loc_1D2D4DF: var_C4 = 0
  loc_1D2D4EA: var_C0 = 0
  loc_1D2D4F5: var_BC = 0
  loc_1D2D500: var_B8 = 0
  loc_1D2D50B: var_B4 = 0
  loc_1D2D516: var_B0 = 0
  loc_1D2D521: var_AC = 0
  loc_1D2D56F: Call Proc_97_25_137291C("ROOMCHRG", "RC", "RC    ", vbNullString, "Room Charge", "RC", "Automatic", vbNullString)
  loc_1D2D59C: var_C8 = 0
  loc_1D2D5A7: var_C4 = 0
  loc_1D2D5B2: var_C0 = 0
  loc_1D2D5BD: var_BC = 0
  loc_1D2D5C8: var_B8 = 0
  loc_1D2D5D3: var_B4 = 0
  loc_1D2D5DE: var_B0 = 0
  loc_1D2D5E9: var_AC = 0
  loc_1D2D637: Call Proc_97_25_137291C("HTEXP", "HTEXP", "HTEXP", vbNullString, "Misc Payment", "HTEXP", "Automatic", vbNullString)
  loc_1D2D664: var_C8 = 0
  loc_1D2D66F: var_C4 = 0
  loc_1D2D67A: var_C0 = 0
  loc_1D2D685: var_BC = 0
  loc_1D2D690: var_B8 = 0
  loc_1D2D69B: var_B4 = 0
  loc_1D2D6A6: var_B0 = 0
  loc_1D2D6B1: var_AC = 0
  loc_1D2D6FF: Call Proc_97_25_137291C("HTSAL", "HTSAL", "HTSAL", vbNullString, "Misc Rect.", "HTSAL", "Automatic", vbNullString)
  loc_1D2D72C: var_C8 = 0
  loc_1D2D737: var_C4 = 0
  loc_1D2D742: var_C0 = 0
  loc_1D2D74D: var_BC = 0
  loc_1D2D758: var_B8 = 0
  loc_1D2D763: var_B4 = 0
  loc_1D2D76E: var_B0 = 0
  loc_1D2D779: var_AC = 0
  loc_1D2D7C7: Call Proc_97_25_137291C("HPOST", "HPOST", "HPOST", vbNullString, "Hotel Posting", "HPOST", "Automatic", vbNullString)
  loc_1D2D7F4: var_C8 = 0
  loc_1D2D7FF: var_C4 = 0
  loc_1D2D80A: var_C0 = 0
  loc_1D2D815: var_BC = 0
  loc_1D2D820: var_B8 = 0
  loc_1D2D82B: var_B4 = 0
  loc_1D2D836: var_B0 = 0
  loc_1D2D841: var_AC = 0
  loc_1D2D88F: Call Proc_97_25_137291C("RESV", "RES", "RES", vbNullString, "Reservation", "RESV", "Automatic", vbNullString)
  loc_1D2D8BC: var_C8 = 0
  loc_1D2D8C7: var_C4 = 0
  loc_1D2D8D2: var_C0 = 0
  loc_1D2D8DD: var_BC = 0
  loc_1D2D8E8: var_B8 = 0
  loc_1D2D8F3: var_B4 = 0
  loc_1D2D8FE: var_B0 = 0
  loc_1D2D909: var_AC = 0
  loc_1D2D957: Call Proc_97_25_137291C("RESADV", "ADRES", "ADRES", vbNullString, "Reservation Advance", "ADRES", "Automatic", vbNullString)
  loc_1D2D984: var_C8 = 0
  loc_1D2D98F: var_C4 = 0
  loc_1D2D99A: var_C0 = 0
  loc_1D2D9A5: var_BC = 0
  loc_1D2D9B0: var_B8 = 0
  loc_1D2D9BB: var_B4 = 0
  loc_1D2D9C6: var_B0 = 0
  loc_1D2D9D1: var_AC = 0
  loc_1D2DA1F: Call Proc_97_25_137291C("KCLOS", "KC", "KC", vbNullString, "Kitchen Closing", "KC", "Automatic", vbNullString)
  loc_1D2DA4C: var_C8 = 0
  loc_1D2DA57: var_C4 = 0
  loc_1D2DA62: var_C0 = 0
  loc_1D2DA6D: var_BC = 0
  loc_1D2DA78: var_B8 = 0
  loc_1D2DA83: var_B4 = 0
  loc_1D2DA8E: var_B0 = 0
  loc_1D2DA99: var_AC = 0
  loc_1D2DAE7: Call Proc_97_25_137291C("KSTKRI", "KSISS", "KSISS", vbNullString, "Kitchen Stock Issue", "KSISS", "Automatic", vbNullString)
  loc_1D2DB14: var_C8 = 0
  loc_1D2DB1F: var_C4 = 0
  loc_1D2DB2A: var_C0 = 0
  loc_1D2DB35: var_BC = 0
  loc_1D2DB40: var_B8 = 0
  loc_1D2DB4B: var_B4 = 0
  loc_1D2DB56: var_B0 = 0
  loc_1D2DB61: var_AC = 0
  loc_1D2DBAF: Call Proc_97_25_137291C("KSTKRI", "KSREC", "KSREC ", vbNullString, "Kitchen Stock Receive", "KSREC", "Automatic", vbNullString)
  loc_1D2DBDC: var_C8 = 0
  loc_1D2DBE7: var_C4 = 0
  loc_1D2DBF2: var_C0 = 0
  loc_1D2DBFD: var_BC = 0
  loc_1D2DC08: var_B8 = 0
  loc_1D2DC13: var_B4 = 0
  loc_1D2DC1E: var_B0 = 0
  loc_1D2DC29: var_AC = 0
  loc_1D2DC77: Call Proc_97_25_137291C("KMTKRI", "KMISS", "KMISS", vbNullString, "Kitchen Material Issue", "KMISS", "Automatic", vbNullString)
  loc_1D2DCA4: var_C8 = 0
  loc_1D2DCAF: var_C4 = 0
  loc_1D2DCBA: var_C0 = 0
  loc_1D2DCC5: var_BC = 0
  loc_1D2DCD0: var_B8 = 0
  loc_1D2DCDB: var_B4 = 0
  loc_1D2DCE6: var_B0 = 0
  loc_1D2DCF1: var_AC = 0
  loc_1D2DD3F: Call Proc_97_25_137291C("KMTKRI", "KMREC", "KMREC ", vbNullString, "Kitchen Material Receive", "KMREC", "Automatic", vbNullString)
  loc_1D2DD6C: var_C8 = 0
  loc_1D2DD77: var_C4 = 0
  loc_1D2DD82: var_C0 = 0
  loc_1D2DD8D: var_BC = 0
  loc_1D2DD98: var_B8 = 0
  loc_1D2DDA3: var_B4 = 0
  loc_1D2DDAE: var_B0 = 0
  loc_1D2DDB9: var_AC = 0
  loc_1D2DE07: Call Proc_97_25_137291C("BKSTRI", "BKREC", "BKREC ", vbNullString, "Bakery Stock Receive", "BKREC", "Automatic", vbNullString)
  loc_1D2DE34: var_C8 = 0
  loc_1D2DE3F: var_C4 = 0
  loc_1D2DE4A: var_C0 = 0
  loc_1D2DE55: var_BC = 0
  loc_1D2DE60: var_B8 = 0
  loc_1D2DE6B: var_B4 = 0
  loc_1D2DE76: var_B0 = 0
  loc_1D2DE81: var_AC = 0
  loc_1D2DECF: Call Proc_97_25_137291C("REQISS", "RQI", "RQI", "RQ", "Requistion Issue", "RI", "Automatic", vbNullString)
  loc_1D2DEFC: var_C8 = 0
  loc_1D2DF07: var_C4 = 0
  loc_1D2DF12: var_C0 = 0
  loc_1D2DF1D: var_BC = 0
  loc_1D2DF28: var_B8 = 0
  loc_1D2DF33: var_B4 = 0
  loc_1D2DF3E: var_B0 = 0
  loc_1D2DF49: var_AC = 0
  loc_1D2DF97: Call Proc_97_25_137291C("REQREC", "RQR", "RQR", "RQI", "Requistion Received", "RR", "Automatic", vbNullString)
  loc_1D2DFC4: var_C8 = 0
  loc_1D2DFCF: var_C4 = 0
  loc_1D2DFDA: var_C0 = 0
  loc_1D2DFE5: var_BC = 0
  loc_1D2DFF0: var_B8 = 0
  loc_1D2DFFB: var_B4 = 0
  loc_1D2E006: var_B0 = 0
  loc_1D2E011: var_AC = 0
  loc_1D2E05F: Call Proc_97_25_137291C("REQSLIP", "RQS", "RQ", vbNullString, "Requistion", "RSLIP", "Automatic", vbNullString)
  loc_1D2E08C: var_C8 = 0
  loc_1D2E097: var_C4 = 0
  loc_1D2E0A2: var_C0 = 0
  loc_1D2E0AD: var_BC = 0
  loc_1D2E0B8: var_B8 = 0
  loc_1D2E0C3: var_B4 = 0
  loc_1D2E0CE: var_B0 = 0
  loc_1D2E0D9: var_AC = 0
  loc_1D2E127: Call Proc_97_25_137291C("PORD", "PORD", "PORD", vbNullString, "Purchase Order", "PORD", "Automatic", vbNullString)
  loc_1D2E154: var_C8 = 0
  loc_1D2E15F: var_C4 = 0
  loc_1D2E16A: var_C0 = 0
  loc_1D2E175: var_BC = 0
  loc_1D2E180: var_B8 = 0
  loc_1D2E18B: var_B4 = 0
  loc_1D2E196: var_B0 = 0
  loc_1D2E1A1: var_AC = 0
  loc_1D2E1EF: Call Proc_97_25_137291C("INDENT", "PIND", "PIND", vbNullString, "Indent Entry", "PIND", "Automatic", vbNullString)
  loc_1D2E21C: var_C8 = 0
  loc_1D2E227: var_C4 = 0
  loc_1D2E232: var_C0 = 0
  loc_1D2E23D: var_BC = 0
  loc_1D2E248: var_B8 = 0
  loc_1D2E253: var_B4 = 0
  loc_1D2E25E: var_B0 = 0
  loc_1D2E269: var_AC = 0
  loc_1D2E2B7: Call Proc_97_25_137291C("MREntry", "MRE", "MRCR", vbNullString, "M.R.Entry(Credit)", "MRCR", "Automatic", vbNullString)
  loc_1D2E2E4: var_C8 = 0
  loc_1D2E2EF: var_C4 = 0
  loc_1D2E2FA: var_C0 = 0
  loc_1D2E305: var_BC = 0
  loc_1D2E310: var_B8 = 0
  loc_1D2E31B: var_B4 = 0
  loc_1D2E326: var_B0 = 0
  loc_1D2E331: var_AC = 0
  loc_1D2E37F: Call Proc_97_25_137291C("MREntry", "MRE", "MRCH", vbNullString, "M.R.Entry(Cash)", "MRCH", "Automatic", vbNullString)
  loc_1D2E3AC: var_C8 = 0
  loc_1D2E3B7: var_C4 = 0
  loc_1D2E3C2: var_C0 = 0
  loc_1D2E3CD: var_BC = 0
  loc_1D2E3D8: var_B8 = 0
  loc_1D2E3E3: var_B4 = 0
  loc_1D2E3EE: var_B0 = 0
  loc_1D2E3F9: var_AC = 0
  loc_1D2E447: Call Proc_97_25_137291C("PurchBill", "PRC", "PRPC", vbNullString, "Purchase Return (Cash)", "PRET", "Automatic", vbNullString)
  loc_1D2E474: var_C8 = 0
  loc_1D2E47F: var_C4 = 0
  loc_1D2E48A: var_C0 = 0
  loc_1D2E495: var_BC = 0
  loc_1D2E4A0: var_B8 = 0
  loc_1D2E4AB: var_B4 = 0
  loc_1D2E4B6: var_B0 = 0
  loc_1D2E4C1: var_AC = 0
  loc_1D2E50F: Call Proc_97_25_137291C("PurchBill", "PBR", "PBPB", vbNullString, "Purchase Bill (Credit)", "PBILL", "Automatic", vbNullString)
  loc_1D2E53C: var_C8 = 0
  loc_1D2E547: var_C4 = 0
  loc_1D2E552: var_C0 = 0
  loc_1D2E55D: var_BC = 0
  loc_1D2E568: var_B8 = 0
  loc_1D2E573: var_B4 = 0
  loc_1D2E57E: var_B0 = 0
  loc_1D2E589: var_AC = 0
  loc_1D2E5D7: Call Proc_97_25_137291C("PurchBill", "PRR", "PRPB", vbNullString, "Purchase Return (Credit)", "PRET", "Automatic", vbNullString)
  loc_1D2E604: var_C8 = 0
  loc_1D2E60F: var_C4 = 0
  loc_1D2E61A: var_C0 = 0
  loc_1D2E625: var_BC = 0
  loc_1D2E630: var_B8 = 0
  loc_1D2E63B: var_B4 = 0
  loc_1D2E646: var_B0 = 0
  loc_1D2E651: var_AC = 0
  loc_1D2E69F: Call Proc_97_25_137291C("PurchBill", "PBC", "PBPC", vbNullString, "Purchase Bill (Cash)", "PBILL", "Automatic", vbNullString)
  loc_1D2E6DC: var_C8 = 0
  loc_1D2E6E7: var_C4 = 0
  loc_1D2E6F2: var_C0 = 0
  loc_1D2E6FD: var_BC = 0
  loc_1D2E708: var_B8 = 0
  loc_1D2E713: var_B4 = 0
  loc_1D2E71E: var_B0 = 0
  loc_1D2E729: var_AC = 0
  loc_1D2E737: var_108 = (Trim(MemVar_1F95078) + "RS")
  loc_1D2E77F: Call Proc_97_25_137291C("RSKOT", "RSKOT", "NRS", vbNullString, "RS N.C.KOT Entry", "NRS", "Automatic", CStr(var_108))
  loc_1D2E7C3: var_C8 = 0
  loc_1D2E7CE: var_C4 = 0
  loc_1D2E7D9: var_C0 = 0
  loc_1D2E7E4: var_BC = 0
  loc_1D2E7EF: var_B8 = 0
  loc_1D2E7FA: var_B4 = 0
  loc_1D2E805: var_B0 = 0
  loc_1D2E810: var_AC = 0
  loc_1D2E81E: var_108 = (Trim(MemVar_1F95078) + "RS")
  loc_1D2E866: Call Proc_97_25_137291C("RSKOT", "RSKOT", "KRS", vbNullString, "RS KOT Entry", "KRS", "Automatic", CStr(var_108))
  loc_1D2E8AA: var_C8 = 0
  loc_1D2E8B5: var_C4 = 0
  loc_1D2E8C0: var_C0 = 0
  loc_1D2E8CB: var_BC = 0
  loc_1D2E8D6: var_B8 = 0
  loc_1D2E8E1: var_B4 = 0
  loc_1D2E8EC: var_B0 = 0
  loc_1D2E8F7: var_AC = 0
  loc_1D2E905: var_108 = (Trim(MemVar_1F95078) + "RS")
  loc_1D2E94D: Call Proc_97_25_137291C("RSBILL", "RSBIL", "BRS", "KRS", "RS Memo Entry", "BRS", "Automatic", CStr(var_108))
  loc_1D2E981: var_C8 = 0
  loc_1D2E98C: var_C4 = 0
  loc_1D2E997: var_C0 = 0
  loc_1D2E9A2: var_BC = 0
  loc_1D2E9AD: var_B8 = 0
  loc_1D2E9B8: var_B4 = 0
  loc_1D2E9C3: var_B0 = 0
  loc_1D2E9CE: var_AC = 0
  loc_1D2EA1C: Call Proc_97_25_137291C("RSREC", "RSREC", "RSREC", vbNullString, "Restaurant Recd.", "RSREC", "Automatic", vbNullString)
  loc_1D2EA59: var_C8 = 0
  loc_1D2EA64: var_C4 = 0
  loc_1D2EA6F: var_C0 = 0
  loc_1D2EA7A: var_BC = 0
  loc_1D2EA85: var_B8 = 0
  loc_1D2EA90: var_B4 = 0
  loc_1D2EA9B: var_B0 = 0
  loc_1D2EAA6: var_AC = 0
  loc_1D2EAB4: var_108 = (Trim(MemVar_1F95078) + "HK")
  loc_1D2EAFC: Call Proc_97_25_137291C("HKIR", "HKISS", "IHK", vbNullString, "House Keeping Issue", "IHK", "Automatic", CStr(var_108))
  loc_1D2EB40: var_C8 = 0
  loc_1D2EB4B: var_C4 = 0
  loc_1D2EB56: var_C0 = 0
  loc_1D2EB61: var_BC = 0
  loc_1D2EB6C: var_B8 = 0
  loc_1D2EB77: var_B4 = 0
  loc_1D2EB82: var_B0 = 0
  loc_1D2EB8D: var_AC = 0
  loc_1D2EB9B: var_108 = (Trim(MemVar_1F95078) + "HK")
  loc_1D2EBE3: Call Proc_97_25_137291C("HKIR", "HKIR", "RHK", vbNullString, "House Keeping Received", "RHK", "Automatic", CStr(var_108))
  loc_1D2EC27: var_C8 = 0
  loc_1D2EC32: var_C4 = 0
  loc_1D2EC3D: var_C0 = 0
  loc_1D2EC48: var_BC = 0
  loc_1D2EC53: var_B8 = 0
  loc_1D2EC5E: var_B4 = 0
  loc_1D2EC69: var_B0 = 0
  loc_1D2EC74: var_AC = 0
  loc_1D2EC82: var_108 = (Trim(MemVar_1F95078) + "HK")
  loc_1D2ECCA: Call Proc_97_25_137291C("HKOP", "HKOP", "OHK", vbNullString, "House Keeping Opening", "OHK", "Automatic", CStr(var_108))
  loc_1D2ED0E: var_C8 = 0
  loc_1D2ED19: var_C4 = 0
  loc_1D2ED24: var_C0 = 0
  loc_1D2ED2F: var_BC = 0
  loc_1D2ED3A: var_B8 = 0
  loc_1D2ED45: var_B4 = 0
  loc_1D2ED50: var_B0 = 0
  loc_1D2ED5B: var_AC = 0
  loc_1D2ED69: var_108 = (Trim(MemVar_1F95078) + "HK")
  loc_1D2EDB1: Call Proc_97_25_137291C("HKROP", "HKROP", "MHK", vbNullString, "House Keeping Room Opening", "MHK", "Automatic", CStr(var_108))
  loc_1D2EDF5: var_C8 = 0
  loc_1D2EE00: var_C4 = 0
  loc_1D2EE0B: var_C0 = 0
  loc_1D2EE16: var_BC = 0
  loc_1D2EE21: var_B8 = 0
  loc_1D2EE2C: var_B4 = 0
  loc_1D2EE37: var_B0 = 0
  loc_1D2EE42: var_AC = 0
  loc_1D2EE50: var_108 = (Trim(MemVar_1F95078) + "FOM")
  loc_1D2EE98: Call Proc_97_25_137291C("CCHG", "CCHG", "CCHG", vbNullString, "Retention/Cancellation Charges", "CCHG", "Automatic", CStr(var_108))
  loc_1D2EEDC: var_C8 = 0
  loc_1D2EEE7: var_C4 = 0
  loc_1D2EEF2: var_C0 = 0
  loc_1D2EEFD: var_BC = 0
  loc_1D2EF08: var_B8 = 0
  loc_1D2EF13: var_B4 = 0
  loc_1D2EF1E: var_B0 = 0
  loc_1D2EF29: var_AC = 0
  loc_1D2EF37: var_108 = (Trim(MemVar_1F95078) + "BANQ")
  loc_1D2EF7F: Call Proc_97_25_137291C("BANQ", "BBOOK", "IBOOK", vbNullString, "Indoor Booking", "IBOOK", "Automatic", CStr(var_108))
  loc_1D2EFC3: var_C8 = 0
  loc_1D2EFCE: var_C4 = 0
  loc_1D2EFD9: var_C0 = 0
  loc_1D2EFE4: var_BC = 0
  loc_1D2EFEF: var_B8 = 0
  loc_1D2EFFA: var_B4 = 0
  loc_1D2F005: var_B0 = 0
  loc_1D2F010: var_AC = 0
  loc_1D2F01E: var_108 = (Trim(MemVar_1F95078) + "ODC")
  loc_1D2F066: Call Proc_97_25_137291C("BANQ", "BBOOK", "OBOOK", vbNullString, "Outdoor Booking", "OBOOK", "Automatic", CStr(var_108))
  loc_1D2F0AA: var_C8 = 0
  loc_1D2F0B5: var_C4 = 0
  loc_1D2F0C0: var_C0 = 0
  loc_1D2F0CB: var_BC = 0
  loc_1D2F0D6: var_B8 = 0
  loc_1D2F0E1: var_B4 = 0
  loc_1D2F0EC: var_B0 = 0
  loc_1D2F0F7: var_AC = 0
  loc_1D2F105: var_108 = (Trim(MemVar_1F95078) + "BANQ")
  loc_1D2F14D: Call Proc_97_25_137291C("BANQ", "BKOT", "IKOT", vbNullString, "Indoor KOT", "IKOT", "Automatic", CStr(var_108))
  loc_1D2F191: var_C8 = 0
  loc_1D2F19C: var_C4 = 0
  loc_1D2F1A7: var_C0 = 0
  loc_1D2F1B2: var_BC = 0
  loc_1D2F1BD: var_B8 = 0
  loc_1D2F1C8: var_B4 = 0
  loc_1D2F1D3: var_B0 = 0
  loc_1D2F1DE: var_AC = 0
  loc_1D2F1EC: var_108 = (Trim(MemVar_1F95078) + "ODC")
  loc_1D2F234: Call Proc_97_25_137291C("BANQ", "BKOT", "OKOT", vbNullString, "Outdoor KOT", "OKOT", "Automatic", CStr(var_108))
  loc_1D2F278: var_C8 = 0
  loc_1D2F283: var_C4 = 0
  loc_1D2F28E: var_C0 = 0
  loc_1D2F299: var_BC = 0
  loc_1D2F2A4: var_B8 = 0
  loc_1D2F2AF: var_B4 = 0
  loc_1D2F2BA: var_B0 = 0
  loc_1D2F2C5: var_AC = 0
  loc_1D2F2D3: var_108 = (Trim(MemVar_1F95078) + "BANQ")
  loc_1D2F31B: Call Proc_97_25_137291C("BANQ", "BBILL", "IDC", vbNullString, "Banquet Bill", "IDC", "Automatic", CStr(var_108))
  loc_1D2F35F: var_C8 = 0
  loc_1D2F36A: var_C4 = 0
  loc_1D2F375: var_C0 = 0
  loc_1D2F380: var_BC = 0
  loc_1D2F38B: var_B8 = 0
  loc_1D2F396: var_B4 = 0
  loc_1D2F3A1: var_B0 = 0
  loc_1D2F3AC: var_AC = 0
  loc_1D2F3BA: var_108 = (Trim(MemVar_1F95078) + "ODC")
  loc_1D2F402: Call Proc_97_25_137291C("BANQ", "BBILL", "ODC", vbNullString, "Outdoor Bill", "ODC", "Automatic", CStr(var_108))
  loc_1D2F446: var_C8 = 0
  loc_1D2F451: var_C4 = 0
  loc_1D2F45C: var_C0 = 0
  loc_1D2F467: var_BC = 0
  loc_1D2F472: var_B8 = 0
  loc_1D2F47D: var_B4 = 0
  loc_1D2F488: var_B0 = 0
  loc_1D2F493: var_AC = 0
  loc_1D2F4A1: var_108 = (Trim(MemVar_1F95078) + "BANQ")
  loc_1D2F4E9: Call Proc_97_25_137291C("BANQ", "EBILL", "EIDC", vbNullString, "Estimate Banquet Bill", "EIDC", "Automatic", CStr(var_108))
  loc_1D2F52D: var_C8 = 0
  loc_1D2F538: var_C4 = 0
  loc_1D2F543: var_C0 = 0
  loc_1D2F54E: var_BC = 0
  loc_1D2F559: var_B8 = 0
  loc_1D2F564: var_B4 = 0
  loc_1D2F56F: var_B0 = 0
  loc_1D2F57A: var_AC = 0
  loc_1D2F588: var_108 = (Trim(MemVar_1F95078) + "ODC")
  loc_1D2F5D0: Call Proc_97_25_137291C("BANQ", "EBILL", "EODC", vbNullString, "Estimate Outdoor Bill", "EODC", "Automatic", CStr(var_108))
  loc_1D2F614: var_C8 = 0
  loc_1D2F61F: var_C4 = 0
  loc_1D2F62A: var_C0 = 0
  loc_1D2F635: var_BC = 0
  loc_1D2F640: var_B8 = 0
  loc_1D2F64B: var_B4 = 0
  loc_1D2F656: var_B0 = 0
  loc_1D2F661: var_AC = 0
  loc_1D2F66F: var_108 = (Trim(MemVar_1F95078) + "BANQ")
  loc_1D2F6B7: Call Proc_97_25_137291C("BANQ", "ESBIL", "ESIDC", vbNullString, "Banquet Estimate Bill", "ESIDC", "Automatic", CStr(var_108))
  loc_1D2F6F1: var_E8 = Trim(MemVar_1F95078)
  loc_1D2F6FB: var_C8 = 0
  loc_1D2F706: var_C4 = 0
  loc_1D2F711: var_C0 = 0
  loc_1D2F71C: var_BC = 0
  loc_1D2F727: var_B8 = 0
  loc_1D2F732: var_B4 = 0
  loc_1D2F73D: var_B0 = 0
  loc_1D2F748: var_AC = 0
  loc_1D2F756: var_108 = (var_E8 + "ODC")
  loc_1D2F79E: Call Proc_97_25_137291C("BANQ", "ESBIL", "ESODC", vbNullString, "Outdoor Estimate Bill", "ESODC", "Automatic", CStr(var_108))
  loc_1D2F7D2: var_C8 = 0
  loc_1D2F7DD: var_C4 = 0
  loc_1D2F7E8: var_C0 = 0
  loc_1D2F7F3: var_BC = 0
  loc_1D2F7FE: var_B8 = 0
  loc_1D2F809: var_B4 = 0
  loc_1D2F814: var_B0 = 0
  loc_1D2F81F: var_AC = 0
  loc_1D2F86D: Call Proc_97_25_137291C("MBILL", "MBILL", "MBILL", vbNullString, "MEMBER BILL", "MBILL", "Automatic", vbNullString)
  loc_1D2F89A: var_C8 = 0
  loc_1D2F8A5: var_C4 = 0
  loc_1D2F8B0: var_C0 = 0
  loc_1D2F8BB: var_BC = 0
  loc_1D2F8C6: var_B8 = 0
  loc_1D2F8D1: var_B4 = 0
  loc_1D2F8DC: var_B0 = 0
  loc_1D2F8E7: var_AC = 0
  loc_1D2F935: Call Proc_97_25_137291C("FMEM", "MRCT", "MCRV", vbNullString, "Cash Receipt", "MCR", "Automatic", vbNullString)
  loc_1D2F962: var_C8 = 0
  loc_1D2F96D: var_C4 = 0
  loc_1D2F978: var_C0 = 0
  loc_1D2F983: var_BC = 0
  loc_1D2F98E: var_B8 = 0
  loc_1D2F999: var_B4 = 0
  loc_1D2F9A4: var_B0 = 0
  loc_1D2F9AF: var_AC = 0
  loc_1D2F9FD: Call Proc_97_25_137291C("FMEM", "MRCT", "MBRV", vbNullString, "Bank Receipt", "MBR", "Automatic", vbNullString)
  loc_1D2FA2A: var_C8 = 0
  loc_1D2FA35: var_C4 = 0
  loc_1D2FA40: var_C0 = 0
  loc_1D2FA4B: var_BC = 0
  loc_1D2FA56: var_B8 = 0
  loc_1D2FA61: var_B4 = 0
  loc_1D2FA6C: var_B0 = 0
  loc_1D2FA77: var_AC = 0
  loc_1D2FAC5: Call Proc_97_25_137291C("MTGDA", "MTGDA", "MTLET", vbNullString, "MEMBER TAGADA LETTER", "MTLET", "Automatic", vbNullString)
  loc_1D2FAF2: var_C8 = 0
  loc_1D2FAFD: var_C4 = 0
  loc_1D2FB08: var_C0 = 0
  loc_1D2FB13: var_BC = 0
  loc_1D2FB1E: var_B8 = 0
  loc_1D2FB29: var_B4 = 0
  loc_1D2FB34: var_B0 = 0
  loc_1D2FB3F: var_AC = 0
  loc_1D2FB8D: Call Proc_97_25_137291C("MTGDA", "MTGDA", "MTREM", vbNullString, "MEMBER TAGADA LETTER REMINDER", "MTREM", "Automatic", vbNullString)
  loc_1D2FBBA: var_C8 = 0
  loc_1D2FBC5: var_C4 = 0
  loc_1D2FBD0: var_C0 = 0
  loc_1D2FBDB: var_BC = 0
  loc_1D2FBE6: var_B8 = 0
  loc_1D2FBF1: var_B4 = 0
  loc_1D2FBFC: var_B0 = 0
  loc_1D2FC07: var_AC = 0
  loc_1D2FC55: Call Proc_97_25_137291C("CASHCARD", "CCARD", "CCARD", vbNullString, "Cash Card Collection Entry", "CCARD", "Automatic", vbNullString)
  loc_1D2FC82: var_C8 = 0
  loc_1D2FC8D: var_C4 = 0
  loc_1D2FC98: var_C0 = 0
  loc_1D2FCA3: var_BC = 0
  loc_1D2FCAE: var_B8 = 0
  loc_1D2FCB9: var_B4 = 0
  loc_1D2FCC4: var_B0 = 0
  loc_1D2FCCF: var_AC = 0
  loc_1D2FD1D: Call Proc_97_25_137291C("SMARTCARD", "SCARD", "RCARD", vbNullString, "Card ReCharge/Refund Amount", "RCARD", "Automatic", vbNullString)
  loc_1D2FD4A: var_C8 = 0
  loc_1D2FD55: var_C4 = 0
  loc_1D2FD60: var_C0 = 0
  loc_1D2FD6B: var_BC = 0
  loc_1D2FD76: var_B8 = 0
  loc_1D2FD81: var_B4 = 0
  loc_1D2FD8C: var_B0 = 0
  loc_1D2FD97: var_AC = 0
  loc_1D2FDE5: Call Proc_97_25_137291C("SMARTCARD", "SCARD", "ECARD", vbNullString, "Card Expense Amount", "ECARD", "Automatic", vbNullString)
  loc_1D2FE12: var_C8 = 0
  loc_1D2FE1D: var_C4 = 0
  loc_1D2FE28: var_C0 = 0
  loc_1D2FE33: var_BC = 0
  loc_1D2FE3E: var_B8 = 0
  loc_1D2FE49: var_B4 = 0
  loc_1D2FE54: var_B0 = 0
  loc_1D2FE5F: var_AC = 0
  loc_1D2FEAD: Call Proc_97_25_137291C("MBILL", "FBILL", "MFBIL", vbNullString, "FACITLY BILL", "MFBIL", "Automatic", vbNullString)
  loc_1D2FEDA: var_C8 = 0
  loc_1D2FEE5: var_C4 = 0
  loc_1D2FEF0: var_C0 = 0
  loc_1D2FEFB: var_BC = 0
  loc_1D2FF06: var_B8 = 0
  loc_1D2FF11: var_B4 = 0
  loc_1D2FF1C: var_B0 = 0
  loc_1D2FF27: var_AC = 0
  loc_1D2FF75: Call Proc_97_25_137291C("EXPENT", "EXR", "EXPB", vbNullString, "Expense (Credit)", "EXPEN", "Automatic", vbNullString)
  loc_1D2FFA2: var_C8 = 0
  loc_1D2FFAD: var_C4 = 0
  loc_1D2FFB8: var_C0 = 0
  loc_1D2FFC3: var_BC = 0
  loc_1D2FFCE: var_B8 = 0
  loc_1D2FFD9: var_B4 = 0
  loc_1D2FFE4: var_B0 = 0
  loc_1D2FFEF: var_AC = 0
  loc_1D3003D: Call Proc_97_25_137291C("EXPENT", "EXC", "EXPC", vbNullString, "Expense (Cash)", "EXPEN", "Automatic", vbNullString)
  loc_1D3006A: var_C8 = 0
  loc_1D30075: var_C4 = 0
  loc_1D30080: var_C0 = 0
  loc_1D3008B: var_BC = 0
  loc_1D30096: var_B8 = 0
  loc_1D3009F: var_B4 = "Cr"
  loc_1D300A8: var_B0 = "Y"
  loc_1D300B1: var_AC = "N"
  loc_1D300FF: Call Proc_97_25_137291C("FA", "CRN", "CNV", vbNullString, "Credit Note", "CNV", "Automatic", vbNullString)
  loc_1D3012C: var_C8 = 0
  loc_1D30137: var_C4 = 0
  loc_1D30142: var_C0 = 0
  loc_1D3014D: var_BC = 0
  loc_1D30158: var_B8 = 0
  loc_1D30163: var_B4 = 0
  loc_1D3016E: var_B0 = 0
  loc_1D30179: var_AC = 0
  loc_1D301C7: Call Proc_97_25_137291C("RESADV", "ARRES", "ARRES", vbNullString, "Reservation Advance Return", "ARRES", "Automatic", vbNullString)
  loc_1D301F4: var_C8 = 0
  loc_1D301FF: var_C4 = 0
  loc_1D3020A: var_C0 = 0
  loc_1D30215: var_BC = 0
  loc_1D30220: var_B8 = 0
  loc_1D3022B: var_B4 = 0
  loc_1D30236: var_B0 = 0
  loc_1D30241: var_AC = 0
  loc_1D3028F: Call Proc_97_25_137291C("PAYMENT", "RPV", "RPV", vbNullString, "Payment Recieves (POS)", "RPV", "Automatic", vbNullString)
  loc_1D302CD: unk_575357.Execute "select * from depart where outletYN='Y'", var_E8, -1
  loc_1D302D8: Set var_88 = var_110
  loc_1D302E1: ' Referenced from: 1D306A6
  loc_1D302F0: If Not(var_88.EOF) Then
  loc_1D3030F:   var_118 = var_88.Fields.Item("ShortName")
  loc_1D30317:   var_E8 = CVar(var_118) 'Address
  loc_1D3031E:   var_108 = Trim(var_E8)
  loc_1D30326:   var_128 = ("P" + var_108)
  loc_1D3032B:   var_10C = CStr(var_128)
  loc_1D30340:   var_F8 = 0
  loc_1D30372:   var_98 = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & var_10C & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1D30389:   unk_575357.Execute var_98 & MemVar_1F95078 & "'", var_E8, -1
  loc_1D30391:   var_110 = var_110.Fields
  loc_1D30399:   var_F8 = var_118.Item(var_118)
  loc_1D303A1:   var_12C = var_12C.Value
  loc_1D303D0:   If (var_108 <= 0) Then
  loc_1D303E7:     var_8C = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values " & "('POSPayment','PPMT','"
  loc_1D30407:     var_110 = var_88.Fields
  loc_1D30417:     var_E8 = CVar(var_110.Item("ShortName")) 'Address
  loc_1D3041E:     var_108 = Trim(var_E8)
  loc_1D3042B:     var_128 = (var_108 + " Payment Receive")
  loc_1D3042F:     var_15C = CVar(var_8C & var_10C & "','','") & var_128 
  loc_1D3046F:     var_1C0 = (Trim(CVar(var_88.Fields.Item("ShortName"))) + " Payment Receive")
  loc_1D30496:     Proc_6_104_ED68A8(var_240, var_15C & "','" & var_1C0 & "','" & CVar(var_10C) & "','',0,'Automatic',", var_3E8, -1, var_3EC, var_108, var_110)
  loc_1D304C1:     Proc_6_104_ED68A8(var_2C0, var_AC & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "',", var_B0, var_B4)
  loc_1D30526:     var_3A8 = var_B8 & var_2C0 & ",'A','N','N','N',0,'" & var_88.Fields.Item("Code").Value & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_1D3053D:     unk_575357.Execute CStr(var_3A8 & "')"), var_BC, var_C0
  loc_1D305A9:     var_8C = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_10C
  loc_1D305B0:     var_108 = CVar(var_8C & "',") 'String
  loc_1D305BE:     Proc_6_7_F26918(var_E8, MemVar_1F950F4, var_108)
  loc_1D305DE:     Proc_6_7_F26918(var_15C, MemVar_1F950FC, var_2C0 & var_E8 & ",")
  loc_1D305E6:     var_16C = -1 & var_15C 
  loc_1D30606:     var_1C0 = var_15C & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1D30634:     Proc_6_7_F26918(var_240, Date)
  loc_1D30666:     unk_575357.Execute CStr(var_1C0 & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) & "' )"), var_110, 
  loc_1D3069E:   End If
  loc_1D306A1:   var_88.MoveNext
  loc_1D306A6:   GoTo loc_1D302E1
  loc_1D306A9: End If
  loc_1D306CD: unk_575357.Execute "SELECT * FROM FAENVIRO where LogSite_Code='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D306D8: Set var_88 = var_110
  loc_1D306FC: If (var_88.RecordCount <= 0) Then
  loc_1D30731:   unk_575357.Execute "INSERT INTO FAENVIRO (AGE1,LogSite_Code,Site_Code) VALUES (0,'" & MemVar_1F95078 & "','" & MemVar_1F95070 & "')", var_E8, -1
  loc_1D30747: End If
  loc_1D3074F: var_88.Requery -1
  loc_1D30773: var_E8 = CVar(var_88.Fields.Item("Age1")) 'Address
  loc_1D3077A: Proc_6_39_E7D3A0(var_108, var_E8)
  loc_1D30794: If (var_108 = 0) Then
  loc_1D307AD:   unk_575357.Execute "UPDATE FAENVIRO SET Age1=0", var_E8, -1
  loc_1D307B8: End If
  loc_1D307C7: var_110 = var_88.Fields
  loc_1D307D7: var_E8 = CVar(var_110.Item("Age2")) 'Address
  loc_1D307DE: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D307F8: If (var_108 = 0) Then
  loc_1D30811:   unk_575357.Execute "UPDATE FAENVIRO SET Age2=15", var_E8, -1
  loc_1D3081C: End If
  loc_1D3082B: var_110 = var_88.Fields
  loc_1D3083B: var_E8 = CVar(var_110.Item("Age3")) 'Address
  loc_1D30842: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D3085C: If (var_108 = 0) Then
  loc_1D30875:   unk_575357.Execute "UPDATE FAENVIRO SET Age3=30", var_E8, -1
  loc_1D30880: End If
  loc_1D3088F: var_110 = var_88.Fields
  loc_1D3089F: var_E8 = CVar(var_110.Item("Age4")) 'Address
  loc_1D308A6: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D308C0: If (var_108 = 0) Then
  loc_1D308D9:   unk_575357.Execute "UPDATE FAENVIRO SET Age4=45", var_E8, -1
  loc_1D308E4: End If
  loc_1D308F3: var_110 = var_88.Fields
  loc_1D30903: var_E8 = CVar(var_110.Item("Age5")) 'Address
  loc_1D3090A: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D30924: If (var_108 = 0) Then
  loc_1D3093D:   unk_575357.Execute "UPDATE FAENVIRO SET Age5=60", var_E8, -1
  loc_1D30948: End If
  loc_1D30957: var_110 = var_88.Fields
  loc_1D30967: var_E8 = CVar(var_110.Item("Age6")) 'Address
  loc_1D3096E: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D30988: If (var_108 = 0) Then
  loc_1D309A1:   unk_575357.Execute "UPDATE FAENVIRO SET Age6=90", var_E8, -1
  loc_1D309AC: End If
  loc_1D309BB: var_110 = var_88.Fields
  loc_1D309CB: var_E8 = CVar(var_110.Item("Amt1")) 'Address
  loc_1D309D2: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D309EC: If (var_108 = 0) Then
  loc_1D30A05:   unk_575357.Execute "UPDATE FAENVIRO SET Amt1=1000", var_E8, -1
  loc_1D30A10: End If
  loc_1D30A1F: var_110 = var_88.Fields
  loc_1D30A2F: var_E8 = CVar(var_110.Item("Amt2")) 'Address
  loc_1D30A36: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D30A50: If (var_108 = 0) Then
  loc_1D30A69:   unk_575357.Execute "UPDATE FAENVIRO SET Amt2=2000", var_E8, -1
  loc_1D30A74: End If
  loc_1D30A83: var_110 = var_88.Fields
  loc_1D30A93: var_E8 = CVar(var_110.Item("Amt3")) 'Address
  loc_1D30A9A: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D30AB4: If (var_108 = 0) Then
  loc_1D30ACD:   unk_575357.Execute "UPDATE FAENVIRO SET Amt3=3000", var_E8, -1
  loc_1D30AD8: End If
  loc_1D30AE7: var_110 = var_88.Fields
  loc_1D30AF7: var_E8 = CVar(var_110.Item("Amt4")) 'Address
  loc_1D30AFE: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D30B18: If (var_108 = 0) Then
  loc_1D30B31:   unk_575357.Execute "UPDATE FAENVIRO SET Amt4=4000", var_E8, -1
  loc_1D30B3C: End If
  loc_1D30B4B: var_110 = var_88.Fields
  loc_1D30B5B: var_E8 = CVar(var_110.Item("Amt5")) 'Address
  loc_1D30B62: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D30B7C: If (var_108 = 0) Then
  loc_1D30B95:   unk_575357.Execute "UPDATE FAENVIRO SET Amt5=5000", var_E8, -1
  loc_1D30BA0: End If
  loc_1D30BAF: var_110 = var_88.Fields
  loc_1D30BBF: var_E8 = CVar(var_110.Item("Amt6")) 'Address
  loc_1D30BC6: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D30BE0: If (var_108 = 0) Then
  loc_1D30BF9:   unk_575357.Execute "UPDATE FAENVIRO SET Amt6=6000", var_E8, -1
  loc_1D30C04: End If
  loc_1D30C13: var_110 = var_88.Fields
  loc_1D30C23: var_E8 = CVar(var_110.Item("TagadaHeader1")) 'Address
  loc_1D30C3D: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30C56:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaHeader1='Dear Sirs,'", var_E8, -1
  loc_1D30C61: End If
  loc_1D30C70: var_110 = var_88.Fields
  loc_1D30C80: var_E8 = CVar(var_110.Item("TagadaHeader2")) 'Address
  loc_1D30C9A: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30CB3:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaHeader2='                 SUB : Outstanding Letter'", var_E8, -1
  loc_1D30CBE: End If
  loc_1D30CCD: var_110 = var_88.Fields
  loc_1D30CDD: var_E8 = CVar(var_110.Item("TagadaHeader3")) 'Address
  loc_1D30CF7: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30D10:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaHeader3=''", var_E8, -1
  loc_1D30D1B: End If
  loc_1D30D2A: var_110 = var_88.Fields
  loc_1D30D3A: var_E8 = CVar(var_110.Item("TagadaHeader4")) 'Address
  loc_1D30D54: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30D6D:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaHeader4='We Wish to draw your immediate attention towards our bills.details of which'", var_E8, -1
  loc_1D30D78: End If
  loc_1D30D87: var_110 = var_88.Fields
  loc_1D30D97: var_E8 = CVar(var_110.Item("TagadaHeader5")) 'Address
  loc_1D30DB1: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30DCA:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaHeader5='are given below for your ready reference.'", var_E8, -1
  loc_1D30DD5: End If
  loc_1D30DE4: var_110 = var_88.Fields
  loc_1D30DF4: var_E8 = CVar(var_110.Item("TagadaFooter1")) 'Address
  loc_1D30E0E: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30E27:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaFooter1='The payment of the bills have become late and as such, we request you to'", var_E8, -1
  loc_1D30E32: End If
  loc_1D30E41: var_110 = var_88.Fields
  loc_1D30E51: var_E8 = CVar(var_110.Item("TagadaFooter2")) 'Address
  loc_1D30E6B: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30E84:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaFooter2='send payment of the same at earliest,preferably vide draft drawn at kanpur.'", var_E8, -1
  loc_1D30E8F: End If
  loc_1D30E9E: var_110 = var_88.Fields
  loc_1D30EAE: var_E8 = CVar(var_110.Item("TagadaFooter3")) 'Address
  loc_1D30EC8: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30EE1:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaFooter3='Thanking you                                           Yours Faithfully'", var_E8, -1
  loc_1D30EEC: End If
  loc_1D30EFB: var_110 = var_88.Fields
  loc_1D30F0B: var_E8 = CVar(var_110.Item("TagadaFooter4")) 'Address
  loc_1D30F25: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30F3E:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaFooter4=''", var_E8, -1
  loc_1D30F49: End If
  loc_1D30F58: var_110 = var_88.Fields
  loc_1D30F68: var_E8 = CVar(var_110.Item("TagadaFooter5")) 'Address
  loc_1D30F82: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30F9B:   unk_575357.Execute "UPDATE FAENVIRO SET TagadaFooter5='                                                       For ABC & Company'", var_E8, -1
  loc_1D30FA6: End If
  loc_1D30FB5: var_110 = var_88.Fields
  loc_1D30FC5: var_E8 = CVar(var_110.Item("CreditLimit")) 'Address
  loc_1D30FDF: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D30FF8:   unk_575357.Execute "UPDATE FAENVIRO SET CreditLimit='Yes'", var_E8, -1
  loc_1D31003: End If
  loc_1D31012: var_110 = var_88.Fields
  loc_1D31022: var_E8 = CVar(var_110.Item("DebitLimit")) 'Address
  loc_1D3103C: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31055:   unk_575357.Execute "UPDATE FAENVIRO SET DebitLimit='Yes'", var_E8, -1
  loc_1D31060: End If
  loc_1D3106F: var_110 = var_88.Fields
  loc_1D3107F: var_E8 = CVar(var_110.Item("NegativeCashBalance")) 'Address
  loc_1D31099: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D310B2:   unk_575357.Execute "UPDATE FAENVIRO SET NegativeCashBalancE='Yes'", var_E8, -1
  loc_1D310BD: End If
  loc_1D310CC: var_110 = var_88.Fields
  loc_1D310DC: var_E8 = CVar(var_110.Item("ShowGroup")) 'Address
  loc_1D310F6: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3110F:   unk_575357.Execute "UPDATE FAENVIRO SET ShowGroup='No'", var_E8, -1
  loc_1D3111A: End If
  loc_1D31129: var_110 = var_88.Fields
  loc_1D31139: var_E8 = CVar(var_110.Item("DonotShowGroup")) 'Address
  loc_1D31153: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3116C:   unk_575357.Execute "UPDATE FAENVIRO SET DonotShowGroup='No'", var_E8, -1
  loc_1D31177: End If
  loc_1D31186: var_110 = var_88.Fields
  loc_1D31196: var_E8 = CVar(var_110.Item("ShowCurrentBalance")) 'Address
  loc_1D311B0: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D311C9:   unk_575357.Execute "UPDATE FAENVIRO SET ShowCurrentBalance='Yes'", var_E8, -1
  loc_1D311D4: End If
  loc_1D311E3: var_110 = var_88.Fields
  loc_1D311F3: var_E8 = CVar(var_110.Item("VerticleBalanceSheet")) 'Address
  loc_1D3120D: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31226:   unk_575357.Execute "UPDATE FAENVIRO SET VerticleBalanceSheet='No'", var_E8, -1
  loc_1D31231: End If
  loc_1D31240: var_110 = var_88.Fields
  loc_1D31250: var_E8 = CVar(var_110.Item("ShowQty")) 'Address
  loc_1D3126A: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31283:   unk_575357.Execute "UPDATE FAENVIRO SET ShowQty='No'", var_E8, -1
  loc_1D3128E: End If
  loc_1D3129D: var_110 = var_88.Fields
  loc_1D312AD: var_E8 = CVar(var_110.Item("ShowCityName")) 'Address
  loc_1D312C7: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D312E0:   unk_575357.Execute "UPDATE FAENVIRO SET ShowCityName='No'", var_E8, -1
  loc_1D312EB: End If
  loc_1D312FA: var_110 = var_88.Fields
  loc_1D3130A: var_E8 = CVar(var_110.Item("LedDivCode")) 'Address
  loc_1D31324: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3133D:   unk_575357.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_E8, -1
  loc_1D31348: End If
  loc_1D31357: var_110 = var_88.Fields
  loc_1D31367: var_E8 = CVar(var_110.Item("LedSiteCode")) 'Address
  loc_1D31381: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3139A:   unk_575357.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_E8, -1
  loc_1D313A5: End If
  loc_1D313B4: var_110 = var_88.Fields
  loc_1D313C4: var_E8 = CVar(var_110.Item("LedPrefix")) 'Address
  loc_1D313DE: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D313F7:   unk_575357.Execute "UPDATE FAENVIRO SET LedPrefix='No'", var_E8, -1
  loc_1D31402: End If
  loc_1D31411: var_110 = var_88.Fields
  loc_1D31421: var_E8 = CVar(var_110.Item("daterfill")) 'Address
  loc_1D3143B: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31454:   unk_575357.Execute "UPDATE FAENVIRO SET daterfill='Y'", var_E8, -1
  loc_1D3145F: End If
  loc_1D3146E: var_110 = var_88.Fields
  loc_1D3147E: var_E8 = CVar(var_110.Item("titlerfill")) 'Address
  loc_1D31498: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D314B1:   unk_575357.Execute "UPDATE FAENVIRO SET titlerfill='M'", var_E8, -1
  loc_1D314BC: End If
  loc_1D314CB: var_110 = var_88.Fields
  loc_1D314DB: var_E8 = CVar(var_110.Item("pagenofill")) 'Address
  loc_1D314F5: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3150E:   unk_575357.Execute "UPDATE FAENVIRO SET pagenofill='Y'", var_E8, -1
  loc_1D31519: End If
  loc_1D31528: var_110 = var_88.Fields
  loc_1D31538: var_E8 = CVar(var_110.Item("RunPIF")) 'Address
  loc_1D31552: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3156B:   unk_575357.Execute "UPDATE FAENVIRO SET RunPIF='Y'", var_E8, -1
  loc_1D31576: End If
  loc_1D31585: var_110 = var_88.Fields
  loc_1D31595: var_E8 = CVar(var_110.Item("FilterAC")) 'Address
  loc_1D315AF: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D315C8:   unk_575357.Execute "UPDATE FAENVIRO SET FilterAC='No'", var_E8, -1
  loc_1D315D3: End If
  loc_1D315E2: var_110 = var_88.Fields
  loc_1D315F2: var_E8 = CVar(var_110.Item("AddressHelp")) 'Address
  loc_1D3160C: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31625:   unk_575357.Execute "UPDATE FAENVIRO SET AddressHelp='Yes'", var_E8, -1
  loc_1D31630: End If
  loc_1D3163F: var_110 = var_88.Fields
  loc_1D3164F: var_E8 = CVar(var_110.Item("DateLock")) 'Address
  loc_1D31669: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31682:   unk_575357.Execute "UPDATE FAENVIRO SET DateLock='Y'", var_E8, -1
  loc_1D3168D: End If
  loc_1D3169C: var_110 = var_88.Fields
  loc_1D316AC: var_E8 = CVar(var_110.Item("CashBookBalance")) 'Address
  loc_1D316C6: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D316DF:   unk_575357.Execute "UPDATE FAENVIRO SET CashBookBalance='Yes'", var_E8, -1
  loc_1D316EA: End If
  loc_1D316F9: var_110 = var_88.Fields
  loc_1D31709: var_E8 = CVar(var_110.Item("MonthTotal")) 'Address
  loc_1D31723: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3173C:   unk_575357.Execute "UPDATE FAENVIRO SET MonthTotal='Yes'", var_E8, -1
  loc_1D31747: End If
  loc_1D31756: var_110 = var_88.Fields
  loc_1D31766: var_E8 = CVar(var_110.Item("OnLineAdjustment")) 'Address
  loc_1D31780: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31799:   unk_575357.Execute "UPDATE FAENVIRO SET OnLineAdjustment='Yes'", var_E8, -1
  loc_1D317A4: End If
  loc_1D317B3: var_110 = var_88.Fields
  loc_1D317C3: var_E8 = CVar(var_110.Item("linefiller")) 'Address
  loc_1D317DD: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D317F6:   unk_575357.Execute "UPDATE FAENVIRO SET linefiller='-'", var_E8, -1
  loc_1D31801: End If
  loc_1D31810: var_110 = var_88.Fields
  loc_1D31820: var_E8 = CVar(var_110.Item("CashBookPage")) 'Address
  loc_1D3183A: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D31853:   unk_575357.Execute "UPDATE FAENVIRO SET CashBookPage='Yes'", var_E8, -1
  loc_1D3185E: End If
  loc_1D31882: unk_575357.Execute "SELECT * FROM ENVIRO where LogSite_Code='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D3188D: Set var_88 = var_110
  loc_1D318B1: If (var_88.RecordCount <= 0) Then
  loc_1D318DE:   var_108 = (Trim(MemVar_1F95078) + "CASH")
  loc_1D31908:   var_190 = "INSERT INTO ENVIRO (Cash_Ac,SiteCode,LogSite_Code) VALUES ('" & var_108 & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F95078) 
  loc_1D3191F:   unk_575357.Execute CStr(var_190 & "')"), var_1C0, -1
  loc_1D3193F: End If
  loc_1D31947: var_88.Requery -1
  loc_1D3195B: var_110 = var_88.Fields
  loc_1D31985: If (Proc_6_38_E69628(CVar(var_110.Item("CASH_AC")), var_110, var_110) = vbNullString) Then
  loc_1D319B2:   var_108 = (Trim(MemVar_1F95078) + "CASH")
  loc_1D319E0:   unk_575357.Execute CStr("UPDATE ENVIRO SET Cash_Ac='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_190, -1
  loc_1D319FC: End If
  loc_1D31A0B: var_110 = var_88.Fields
  loc_1D31A1B: var_E8 = CVar(var_110.Item("PF_LIMIT")) 'Address
  loc_1D31A22: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D31A3C: If (var_108 = 0) Then
  loc_1D31A63:   unk_575357.Execute "UPDATE ENVIRO SET PF_LIMIT=5000  WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D31A75: End If
  loc_1D31A84: var_110 = var_88.Fields
  loc_1D31A94: var_E8 = CVar(var_110.Item("PF_EMPLOYEE")) 'Address
  loc_1D31A9B: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D31AB5: If (var_108 = 0) Then
  loc_1D31ADC:   unk_575357.Execute "UPDATE ENVIRO SET PF_EMPLOYEE=12 WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D31AEE: End If
  loc_1D31AFD: var_110 = var_88.Fields
  loc_1D31B0D: var_E8 = CVar(var_110.Item("PF_EMPLOYER")) 'Address
  loc_1D31B14: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D31B2E: If (var_108 = 0) Then
  loc_1D31B55:   unk_575357.Execute "UPDATE ENVIRO SET PF_EMPLOYER=8 WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D31B67: End If
  loc_1D31B76: var_110 = var_88.Fields
  loc_1D31B86: var_E8 = CVar(var_110.Item("ESI_LIMIT")) 'Address
  loc_1D31B8D: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D31BA7: If (var_108 = 0) Then
  loc_1D31BCE:   unk_575357.Execute "UPDATE ENVIRO SET ESI_LIMIT=6000 WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D31BE0: End If
  loc_1D31BEF: var_110 = var_88.Fields
  loc_1D31BFF: var_E8 = CVar(var_110.Item("esi_employee")) 'Address
  loc_1D31C06: Proc_6_39_E7D3A0(var_108, var_E8, var_110)
  loc_1D31C20: If (var_108 = 0) Then
  loc_1D31C47:   unk_575357.Execute "UPDATE ENVIRO SET esi_employee=8 WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D31C59: End If
  loc_1D31C68: var_110 = var_88.Fields
  loc_1D31C92: If (Proc_6_38_E69628(CVar(var_110.Item("SALARY_AC")), var_110, var_110) = vbNullString) Then
  loc_1D31CA8:   var_9C = "Expenditure"
  loc_1D31CD1:   var_108 = (Trim(MemVar_1F95078) + "SLAC")
  loc_1D31CDA:   Call Proc_97_20_10FCA4C(CStr(var_108), "EMP. SALARY A/C", "0003", "L")
  loc_1D31D1D:   var_108 = (Trim(MemVar_1F95078) + "SLAC")
  loc_1D31D4B:   unk_575357.Execute CStr("UPDATE ENVIRO SET SALARY_AC='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_190, -1
  loc_1D31D67: End If
  loc_1D31D76: var_110 = var_88.Fields
  loc_1D31DA0: If (Proc_6_38_E69628(CVar(var_110.Item("Loan_AC")), var_110, var_9C) = vbNullString) Then
  loc_1D31DB6:   var_9C = "Others"
  loc_1D31DDF:   var_108 = (Trim(MemVar_1F95078) + "LOAN")
  loc_1D31DE8:   Call Proc_97_20_10FCA4C(CStr(var_108), "EMP. LOAN A/C", "0019", "A")
  loc_1D31E2B:   var_108 = (Trim(MemVar_1F95078) + "LOAN")
  loc_1D31E59:   unk_575357.Execute CStr("UPDATE ENVIRO SET Loan_AC='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_190, -1
  loc_1D31E75: End If
  loc_1D31E84: var_110 = var_88.Fields
  loc_1D31EAE: If (Proc_6_38_E69628(CVar(var_110.Item("AdvanceAc")), var_110, var_9C) = vbNullString) Then
  loc_1D31EC4:   var_9C = "Others"
  loc_1D31EED:   var_108 = (Trim(MemVar_1F95078) + "ADV")
  loc_1D31EF6:   Call Proc_97_20_10FCA4C(CStr(var_108), "EMP. ADVANCE A/C", "0019", "A")
  loc_1D31F39:   var_108 = (Trim(MemVar_1F95078) + "ADV")
  loc_1D31F46:   var_14C = "UPDATE ENVIRO SET AdvanceAc='" & var_108 & "' WHERE LOGSITE_CODE='" 
  loc_1D31F59:   var_16C = var_14C & CVar(MemVar_1F95078) & "'" 
  loc_1D31F67:   unk_575357.Execute CStr(var_16C), var_190, -1
  loc_1D31F83: End If
  loc_1D31F92: var_110 = var_88.Fields
  loc_1D31FBC: If (Proc_6_38_E69628(CVar(var_110.Item("SiteCode")), var_110, var_9C) = vbNullString) Then
  loc_1D31FFB:   unk_575357.Execute CStr("UPDATE ENVIRO SET SiteCode='" & Trim(MemVar_1F95078) & "'"), var_14C, -1
  loc_1D32011: End If
  loc_1D32020: var_110 = var_88.Fields
  loc_1D32030: var_E8 = CVar(var_110.Item("Ncur")) 'Address
  loc_1D3203F: If IsNull(var_E8) Then
  loc_1D3205F:   Proc_6_7_F26918(var_E8, MemVar_1F950F4, "UPDATE ENVIRO SET NCUR=", var_16C, -1)
  loc_1D32091:   unk_575357.Execute CStr(var_110 & var_E8 & " WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_110, var_110
  loc_1D320AB: End If
  loc_1D320CA: var_E8 = CVar(var_88.Fields.Item("calcMethod")) 'Address
  loc_1D320E4: If (Proc_6_38_E69628(var_E8) = vbNullString) Then
  loc_1D3210B:   unk_575357.Execute "UPDATE ENVIRO SET calcMethod='A' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D3211D: End If
  loc_1D3212C: var_110 = var_88.Fields
  loc_1D3213C: var_E8 = CVar(var_110.Item("CheckOut")) 'Address
  loc_1D32156: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3217D:   unk_575357.Execute "UPDATE ENVIRO SET Checkout='Other' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D3218F: End If
  loc_1D3219E: var_110 = var_88.Fields
  loc_1D321AE: var_E8 = CVar(var_110.Item("variation")) 'Address
  loc_1D321C8: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D321EF:   unk_575357.Execute "UPDATE ENVIRO SET Variation='01:00' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D32201: End If
  loc_1D32210: var_110 = var_88.Fields
  loc_1D32220: var_E8 = CVar(var_110.Item("CheckoutVar")) 'Address
  loc_1D3223A: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D32261:   unk_575357.Execute "UPDATE ENVIRO SET CheckoutVar='10:00' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D32273: End If
  loc_1D32282: var_110 = var_88.Fields
  loc_1D32292: var_E8 = CVar(var_110.Item("PurchaseAdd1")) 'Address
  loc_1D322AC: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D322D3:   unk_575357.Execute "UPDATE ENVIRO SET PurchaseAdd1='Addition1' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D322E5: End If
  loc_1D322F4: var_110 = var_88.Fields
  loc_1D32304: var_E8 = CVar(var_110.Item("PurchaseDed1")) 'Address
  loc_1D3231E: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D32345:   unk_575357.Execute "UPDATE ENVIRO SET PurchaseDed1='Deduction1' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D32357: End If
  loc_1D32366: var_110 = var_88.Fields
  loc_1D32376: var_E8 = CVar(var_110.Item("PurchaseAdd2")) 'Address
  loc_1D32390: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D323B7:   unk_575357.Execute "UPDATE ENVIRO SET PurchaseAdd2='Addition2' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D323C9: End If
  loc_1D323D8: var_110 = var_88.Fields
  loc_1D323E8: var_E8 = CVar(var_110.Item("PurchaseDed2")) 'Address
  loc_1D32402: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D32429:   unk_575357.Execute "UPDATE ENVIRO SET PurchaseDed2='Deduction2' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D3243B: End If
  loc_1D3244A: var_110 = var_88.Fields
  loc_1D3245A: var_E8 = CVar(var_110.Item("Rate1")) 'Address
  loc_1D32474: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3249B:   unk_575357.Execute "UPDATE ENVIRO SET Rate1='High Rate' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D324AD: End If
  loc_1D324BC: var_110 = var_88.Fields
  loc_1D324CC: var_E8 = CVar(var_110.Item("Rate2")) 'Address
  loc_1D324E6: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3250D:   unk_575357.Execute "UPDATE ENVIRO SET Rate2='Rack Rate' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D3251F: End If
  loc_1D3252E: var_110 = var_88.Fields
  loc_1D3253E: var_E8 = CVar(var_110.Item("Rate3")) 'Address
  loc_1D32558: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D3257F:   unk_575357.Execute "UPDATE ENVIRO SET Rate3='Disc1 Rate' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D32591: End If
  loc_1D325A0: var_110 = var_88.Fields
  loc_1D325B0: var_E8 = CVar(var_110.Item("Rate4")) 'Address
  loc_1D325CA: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D325F1:   unk_575357.Execute "UPDATE ENVIRO SET Rate4='Disc2 Rate' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D32603: End If
  loc_1D32612: var_110 = var_88.Fields
  loc_1D32622: var_E8 = CVar(var_110.Item("Rate5")) 'Address
  loc_1D3263C: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D32663:   unk_575357.Execute "UPDATE ENVIRO SET Rate5='Disc3 Rate' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D32675: End If
  loc_1D32684: var_110 = var_88.Fields
  loc_1D32694: var_E8 = CVar(var_110.Item("DefCompGroup")) 'Address
  loc_1D326AE: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D326D5:   unk_575357.Execute "UPDATE ENVIRO SET DefCompGroup='0020' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D326E7: End If
  loc_1D326F6: var_110 = var_88.Fields
  loc_1D32706: var_E8 = CVar(var_110.Item("ReservationPrinting")) 'Address
  loc_1D32720: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D32747:   unk_575357.Execute "UPDATE ENVIRO SET ReservationPrinting='W' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D32759: End If
  loc_1D32768: var_110 = var_88.Fields
  loc_1D32778: var_E8 = CVar(var_110.Item("ArrDateTimeEdit")) 'Address
  loc_1D32792: If (Proc_6_38_E69628(var_E8, var_110) = vbNullString) Then
  loc_1D327B9:   unk_575357.Execute "UPDATE ENVIRO SET ArrDateTimeEdit='N' WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E8, -1
  loc_1D327CB: End If
  loc_1D327DA: var_110 = var_88.Fields
  loc_1D32804: If (Proc_6_38_E69628(CVar(var_110.Item("CashPayType")), var_110) = vbNullString) Then
  loc_1D32831:   var_108 = (Trim(MemVar_1F95078) + "CASH")
  loc_1D32851:   var_16C = "UPDATE ENVIRO SET CashPayType='" & var_110 & Trim(MemVar_1F95078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'" 
  loc_1D3285F:   unk_575357.Execute CStr(var_16C), var_190, -1
  loc_1D3287B: End If
  loc_1D3288A: var_110 = var_88.Fields
  loc_1D328B4: If (Proc_6_38_E69628(CVar(var_110.Item("RoomPayType")), var_110) = vbNullString) Then
  loc_1D328E1:   var_108 = (Trim(MemVar_1F95078) + "ROOM")
  loc_1D32901:   var_16C = "UPDATE ENVIRO SET RoomPayType='" & var_110 & Trim(MemVar_1F95078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'" 
  loc_1D3290F:   unk_575357.Execute CStr(var_16C), var_190, -1
  loc_1D3292B: End If
  loc_1D3293A: var_110 = var_88.Fields
  loc_1D32964: If (Proc_6_38_E69628(CVar(var_110.Item("RoomChrgDueAc")), var_110) = vbNullString) Then
  loc_1D3297A:   var_9C = "Others"
  loc_1D32983:   var_98 = "A"
  loc_1D329A3:   var_108 = (Trim(MemVar_1F95078) + "RDUE")
  loc_1D329AC:   Call Proc_97_20_10FCA4C(CStr(var_110 & Trim(MemVar_1F95078)), "DAILY PAYMENT/CHARGES POSTING A/C", "0006")
  loc_1D329EF:   var_108 = (Trim(MemVar_1F95078) + "RDUE")
  loc_1D32A0F:   var_16C = "UPDATE ENVIRO SET RoomChrgDueAc='" & var_110 & Trim(MemVar_1F95078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'" 
  loc_1D32A1D:   unk_575357.Execute CStr(var_16C), var_190, -1
  loc_1D32A39: End If
  loc_1D32A75: var_108 = (Trim(MemVar_1F95078) + "DISC")
  loc_1D32A7E: Call Proc_97_20_10FCA4C(CStr(var_110 & Trim(MemVar_1F95078)), "DISCOUNT A/C", "0028", "E", "Others")
  loc_1D32AD3: var_108 = (Trim(MemVar_1F95078) + "ROFF")
  loc_1D32ADC: Call Proc_97_20_10FCA4C(CStr(var_110 & Trim(MemVar_1F95078)), "ROUND OFF A/C", "0028", "E", "Others")
  loc_1D32B08: var_9C = "Others"
  loc_1D32B11: var_98 = "E"
  loc_1D32B31: var_108 = (Trim(MemVar_1F95078) + "COMM")
  loc_1D32B3A: Call Proc_97_20_10FCA4C(CStr(var_110 & Trim(MemVar_1F95078)), "COMMISSION A/C", "0028", var_98, var_9C)
  loc_1D32B62: var_110 = var_88.Fields
  loc_1D32B8C: If (Proc_6_38_E69628(CVar(var_110.Item("OutletDiscAc")), var_110, var_98) = vbNullString) Then
  loc_1D32BB9:   var_108 = (Trim(MemVar_1F95078) + "DISC")
  loc_1D32BD9:   var_16C = "UPDATE ENVIRO SET OutletDiscAc='" & var_110 & Trim(MemVar_1F95078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'" 
  loc_1D32BE7:   unk_575357.Execute CStr(var_16C), var_190, -1
  loc_1D32C03: End If
  loc_1D32C12: var_110 = var_88.Fields
  loc_1D32C3C: If (Proc_6_38_E69628(CVar(var_110.Item("OutletRoundAc")), var_110) = vbNullString) Then
  loc_1D32C69:   var_108 = (Trim(MemVar_1F95078) + "ROFF")
  loc_1D32C89:   var_16C = "UPDATE ENVIRO SET OutletRoundAc='" & var_110 & Trim(MemVar_1F95078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'" 
  loc_1D32C97:   unk_575357.Execute CStr(var_16C), var_190, -1
  loc_1D32CB3: End If
  loc_1D32CC2: var_110 = var_88.Fields
  loc_1D32CEC: If (Proc_6_38_E69628(CVar(var_110.Item("CommissionAc")), var_110) = vbNullString) Then
  loc_1D32D19:   var_108 = (Trim(MemVar_1F95078) + "COMM")
  loc_1D32D1D:   var_128 = "UPDATE ENVIRO SET CommissionAc='" & var_110 & Trim(MemVar_1F95078) 
  loc_1D32D26:   var_14C = var_128 & "' WHERE LOGSITE_CODE='" 
  loc_1D32D3D:   var_8C = CStr(var_14C & CVar(MemVar_1F95078) & "'")
  loc_1D32D47:   unk_575357.Execute var_8C, var_190, -1
  loc_1D32D63: End If
  loc_1D32D68: Set var_88 = Nothing
  loc_1D32D6B: Exit Sub
  loc_1D32D6C: ' Referenced from: 1D2B4D0
  loc_1D32D88: Call 0.Method_arg_2C (var_8C, 0, Err() & Trim(MemVar_1F95078), var_128)
  loc_1D32D93: MsgBox(CVar(var_8C), var_14C, Err(), var_9C, Err())
  loc_1D32DA6: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E162A8
  'Data Table: 575328
  loc_E1629D: Me.Global.Unload Me
  loc_E162A5: Exit Sub
End Sub

Private Sub BtnAcGroup_UnknownEvent_9 '1446124
  'Data Table: 575328
  loc_14455FC: On Error Goto loc_14460E6
  loc_1445602: var_A4 = "N"
  loc_144560B: var_A0 = "Y"
  loc_144561C: var_98 = "060007"
  loc_1445646: Call Proc_97_24_11AA384("0022", "BANK ACCOUNTS", "A", "Bank")
  loc_144565F: var_A4 = "N"
  loc_1445668: var_A0 = "Y"
  loc_14456A3: Call Proc_97_24_11AA384("0011", "BANK OD/AC", "L", "Bank", "020001", &H6E)
  loc_14456BC: var_A4 = "N"
  loc_1445700: Call Proc_97_24_11AA384("0007", "BRANCH/DIVISIONS", "A", "Others", "070", &H46, "Y")
  loc_144575D: Call Proc_97_24_11AA384("0001", "CAPITAL ACCOUNT", "L", "Others", "010", &HA, "Y", "N")
  loc_14457AB: var_8C = "CASH-IN-HAND"
  loc_14457BA: Call Proc_97_24_11AA384("0021", "CAPITAL ACCOUNT", "A", "Cash", "060005", &HD2, "Y", "N")
  loc_1445817: Call Proc_97_24_11AA384("000A", "CLOSING STOCK", "R", "Others", "200", &HF0, "Y", "Y")
  loc_1445874: Call Proc_97_24_11AA384("0006", "CURRENT ASSETS", "A", "Others", "060", &H3C, "Y", "N")
  loc_14458D1: Call Proc_97_24_11AA384("0003", "CURRENT LIABILITIES", "L", "Others", "030", &H1E, "Y", "N")
  loc_144592E: Call Proc_97_24_11AA384("0018", "DEPOSIT (ASSET)", "A", "Others", "060002", &HB4, "Y", "N")
  loc_144598B: Call Proc_97_24_11AA384("0026", "DIRECT EXPENSE", "E", "Others", "260", &H104, "Y", "Y")
  loc_14459E8: Call Proc_97_24_11AA384("0025", "DIRECT INCOMES", "R", "Others", "250", &HFA, "Y", "Y")
  loc_1445A45: Call Proc_97_24_11AA384("0014", "DUTIES & TAXES", "L", "Others", "030001", &H8C, "Y", "N")
  loc_1445AA2: Call Proc_97_24_11AA384("0004", "FIXED ASSETS", "A", "Others", "040", &H28, "Y", "N")
  loc_1445AFF: Call Proc_97_24_11AA384("0028", "INDIRECT EXPENSES", "E", "Others", "280", &H118, "Y", "N")
  loc_1445B5C: Call Proc_97_24_11AA384("0027", "INDIRECT INCOME", "R", "Others", "270", &H10E, "Y", "N")
  loc_1445BB9: Call Proc_97_24_11AA384("0005", "INVESTMENTS", "A", "Others", "050", &H32, "Y", "N")
  loc_1445C16: Call Proc_97_24_11AA384("0002", "LOAN (LIABILITY)", "L", "Others", "020", &H14, "Y", "N")
  loc_1445C73: Call Proc_97_24_11AA384("0019", "LOANS & ADVANCES (ASSET)", "A", "Others", "060003", &HBE, "Y", "N")
  loc_1445CD0: Call Proc_97_24_11AA384("0008", "MISC. EXPENSES (ASSET)", "A", "Others", "080", &H50, "Y", "N")
  loc_1445D2D: Call Proc_97_24_11AA384("0017", "OPENING STOCK", "A", "Others", "060001", &HAA, "Y", "N")
  loc_1445D8A: Call Proc_97_24_11AA384("0029", "PROFIT & LOSS A/C", "L", "Others", "999", &H3E8, "Y", "N")
  loc_1445DE7: Call Proc_97_24_11AA384("0015", "PROVISIONS", "L", "Others", "030002", &H96, "Y", "N")
  loc_1445E44: Call Proc_97_24_11AA384("0024", "PURCHASE ACCOUNTS", "E", "Purchase", "240", &HF0, "Y", "Y")
  loc_1445EA1: Call Proc_97_24_11AA384("0010", "RESERVE & SURPLUS", "L", "Others", "010001", &H64, "Y", "N")
  loc_1445EFE: Call Proc_97_24_11AA384("0023", "SALES ACCOUNTS", "R", "Sale", "230", &HE6, "Y", "Y")
  loc_1445F5B: Call Proc_97_24_11AA384("0012", "SECURED LOANS", "L", "Others", "020002", &H78, "Y", "N")
  loc_1445FB8: Call Proc_97_24_11AA384("0016", "SUNDRY CREDITORS", "L", "Supplier", "030003", &HA0, "Y", "N")
  loc_1446015: Call Proc_97_24_11AA384("0020", "SUNDRY DEBTORS", "A", "Customer", "060004", &HC8, "Y", "N")
  loc_1446072: Call Proc_97_24_11AA384("0009", "SUSPENCE A/C ", "A", "Others", "090", &H5A, "Y", "N")
  loc_144608B: var_A4 = "N"
  loc_1446094: var_A0 = "Y"
  loc_14460A5: var_98 = "020003"
  loc_14460C9: var_88 = "0013"
  loc_14460CF: Call Proc_97_24_11AA384(var_88, "UNSECURED LOANS", "L", "Others", var_98, &H82, var_A0, var_A4)
  loc_14460E5: Exit Sub
  loc_14460E6: ' Referenced from: 14455FC
  loc_14460FC: Set var_A8 = Err()
  loc_1446102: Call 0.Method_arg_2C (var_88, 0, var_D8, var_F8, var_118, var_A4)
  loc_144610D: MsgBox(CVar(var_88), var_A0, var_A4, var_98, &HDC)
  loc_1446120: Exit Sub
End Sub

Private Sub BtnPurchase_UnknownEvent_9 '130E200
  'Data Table: 575328
  Dim var_C4 As Variant
  loc_130DAE4: On Error Goto loc_130E1F4
  loc_130DB04: var_F0 = "N"
  loc_130DB0D: var_EC = "N"
  loc_130DB16: var_E8 = "N"
  loc_130DB1F: var_E4 = "N"
  loc_130DB28: var_E0 = "STR"
  loc_130DB63: var_C4 = (Trim(MemVar_1F95078) + "PURC")
  loc_130DB6C: Call Proc_97_23_122FB50(CStr(var_C4), "PURCHASE STORE", "N", "N", "Store", "N")
  loc_130DB98: var_108 = 0
  loc_130DBA3: var_104 = 0
  loc_130DBAE: var_100 = 0
  loc_130DBB9: var_FC = 0
  loc_130DBC4: var_F8 = 0
  loc_130DBCF: var_F0 = 0
  loc_130DBDA: var_EC = 0
  loc_130DBE5: var_E8 = 0
  loc_130DC35: Call Proc_97_25_137291C("INDENT", "PIND", "PIND", vbNullString, "Indent Entry", "PIND", "Automatic", MemVar_1F95078 & "PURC")
  loc_130DC64: var_108 = 0
  loc_130DC6F: var_104 = 0
  loc_130DC7A: var_100 = 0
  loc_130DC85: var_FC = 0
  loc_130DC90: var_F8 = 0
  loc_130DC9B: var_F0 = 0
  loc_130DCA6: var_EC = 0
  loc_130DCB1: var_E8 = 0
  loc_130DD01: Call Proc_97_25_137291C("PORD", "PORD", "PORD", vbNullString, "Purchase Order", "PORD", "Automatic", MemVar_1F95078 & "PURC")
  loc_130DD30: var_108 = 0
  loc_130DD3B: var_104 = 0
  loc_130DD46: var_100 = 0
  loc_130DD51: var_FC = 0
  loc_130DD5C: var_F8 = 0
  loc_130DD67: var_F0 = 0
  loc_130DD72: var_EC = 0
  loc_130DD7D: var_E8 = 0
  loc_130DDCD: Call Proc_97_25_137291C("MREntry", "MRE", "MRCH", vbNullString, "M.R.Entry(Cash)", "MRCH", "Automatic", MemVar_1F95078 & "PURC")
  loc_130DDFC: var_108 = 0
  loc_130DE07: var_104 = 0
  loc_130DE12: var_100 = 0
  loc_130DE1D: var_FC = 0
  loc_130DE28: var_F8 = 0
  loc_130DE33: var_F0 = 0
  loc_130DE3E: var_EC = 0
  loc_130DE49: var_E8 = 0
  loc_130DE99: Call Proc_97_25_137291C("MREntry", "MRE", "MRCR", vbNullString, "M.R.Entry(Credit)", "MRCR", "Automatic", MemVar_1F95078 & "PURC")
  loc_130DEC8: var_108 = 0
  loc_130DED3: var_104 = 0
  loc_130DEDE: var_100 = 0
  loc_130DEE9: var_FC = 0
  loc_130DEF4: var_F8 = 0
  loc_130DEFF: var_F0 = 0
  loc_130DF0A: var_EC = 0
  loc_130DF15: var_E8 = 0
  loc_130DF65: Call Proc_97_25_137291C("PURCHBILL", "PBR", "PBPB", vbNullString, "Purchase Bill (Credit)", "PBILL", "Automatic", MemVar_1F95078 & "PURC")
  loc_130DF94: var_108 = 0
  loc_130DF9F: var_104 = 0
  loc_130DFAA: var_100 = 0
  loc_130DFB5: var_FC = 0
  loc_130DFC0: var_F8 = 0
  loc_130DFCB: var_F0 = 0
  loc_130DFD6: var_EC = 0
  loc_130DFE1: var_E8 = 0
  loc_130E031: Call Proc_97_25_137291C("PURCHBILL", "PBC", "PBPC", vbNullString, "Purchase Bill (Cash)", "PBILL", "Automatic", MemVar_1F95078 & "PURC")
  loc_130E060: var_108 = 0
  loc_130E06B: var_104 = 0
  loc_130E076: var_100 = 0
  loc_130E081: var_FC = 0
  loc_130E08C: var_F8 = 0
  loc_130E097: var_F0 = 0
  loc_130E0A2: var_EC = 0
  loc_130E0AD: var_E8 = 0
  loc_130E0FD: Call Proc_97_25_137291C("PURCHBILL", "PRR", "PRPB", vbNullString, "Purchase Return (Credit)", "PRET", "Automatic", MemVar_1F95078 & "PURC")
  loc_130E12C: var_108 = 0
  loc_130E137: var_104 = 0
  loc_130E142: var_100 = 0
  loc_130E14D: var_FC = 0
  loc_130E158: var_F8 = 0
  loc_130E163: var_F0 = 0
  loc_130E16E: var_EC = 0
  loc_130E179: var_E8 = 0
  loc_130E1C9: Call Proc_97_25_137291C("PURCHBILL", "PRC", "PRPC", vbNullString, "Purchase Return (Cash)", "PRET", "Automatic", MemVar_1F95078 & "PURC")
  loc_130E1F3: Exit Sub
  loc_130E1F4: ' Referenced from: 130DAE4
  loc_130E1F6: Resume Next
  loc_130E1FC: Exit Sub
End Sub

Private Sub BTNRoomService_UnknownEvent_9 '15884E0
  'Data Table: 575328
  Dim var_C4 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_190 As Variant
  Dim var_210 As Variant
  loc_15873B0: On Error Goto loc_15884A2
  loc_15873CE: var_F0 = "Y"
  loc_15873D7: var_EC = "N"
  loc_15873E0: var_E8 = "N"
  loc_15873E9: var_E4 = "Y"
  loc_15873F2: var_E0 = "RS"
  loc_158742D: var_C4 = (Trim(MemVar_1F95078) + "RS")
  loc_1587436: Call Proc_97_23_122FB50(CStr(var_C4), "ROOM SERVICE", "Y", "Y", "Room Service", "Y")
  loc_158747E: var_150 = vbNullString
  loc_1587487: var_14C = "Other"
  loc_1587497: var_140 = vbNullString
  loc_15874A0: var_13C = vbNullString
  loc_15874A9: var_138 = vbNullString
  loc_15874B2: var_F0 = vbNullString
  loc_15874C0: var_134 = (Trim(MemVar_1F95078) + "RS")
  loc_1587519: var_C4 = (Trim(MemVar_1F95078) + "RS")
  loc_1587522: Call Proc_97_21_117AC60(CStr(var_C4), "ROOM SERVICE", "RS", vbNullString, vbNullString, "Cr", "Amount", "Header")
  loc_1587583: var_CC = "RS - BEVERAGE"
  loc_1587591: var_C4 = (Trim(MemVar_1F95078) + "RSBG")
  loc_158759A: Call Proc_97_20_10FCA4C(CStr(var_C4), "ROOM SERVICE", "0023", "R", "Sale", "POS")
  loc_15875F6: var_150 = vbNullString
  loc_15875FF: var_14C = "Other"
  loc_158760F: var_140 = vbNullString
  loc_1587618: var_13C = "No"
  loc_1587621: var_138 = "C"
  loc_158762A: var_F0 = vbNullString
  loc_1587638: var_1D0 = (Trim(MemVar_1F95078) + "RS")
  loc_1587644: var_E8 = "POS"
  loc_158766D: var_190 = (Trim(MemVar_1F95078) + "TRBG")
  loc_158767E: var_134 = (Trim(MemVar_1F95078) + "RSBG")
  loc_1587693: var_CC = "RS - BEVERAGE"
  loc_15876A1: var_C4 = (Trim(MemVar_1F95078) + "RSBG")
  loc_15876AA: Call Proc_97_21_117AC60(CStr(var_C4), "ROOM SERVICE", "RSBG", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_158773D: var_210 = (Trim(MemVar_1F95078) + "TRBG")
  loc_158774E: var_1D0 = (Trim(MemVar_1F95078) + "RSBG")
  loc_1587768: var_190 = (Trim(MemVar_1F95078) + "RS")
  loc_1587794: var_134 = (Trim(MemVar_1F95078) + "RSBG")
  loc_15877B7: var_C4 = (Trim(MemVar_1F95078) + "RSBG")
  loc_15877C0: Call Proc_97_26_1114A0C(CStr(var_C4), "BEVERAGE", "No", CStr(var_134), "Y", "Category", "Beverage", CStr(var_190))
  loc_1587823: var_CC = "RS - FOOD"
  loc_1587831: var_C4 = (Trim(MemVar_1F95078) + "RSFD")
  loc_158783A: Call Proc_97_20_10FCA4C(CStr(var_C4), "BEVERAGE", "0023", "R", "Sale", "Dr")
  loc_1587896: var_150 = vbNullString
  loc_158789F: var_14C = "Other"
  loc_15878AF: var_140 = vbNullString
  loc_15878B8: var_13C = "No"
  loc_15878C1: var_138 = "C"
  loc_15878CA: var_F0 = vbNullString
  loc_15878D8: var_1D0 = (Trim(MemVar_1F95078) + "RS")
  loc_15878E4: var_E8 = "POS"
  loc_158790D: var_190 = (Trim(MemVar_1F95078) + "TRFD")
  loc_158791E: var_134 = (Trim(MemVar_1F95078) + "RSFD")
  loc_1587933: var_CC = "RS - FOOD"
  loc_1587941: var_C4 = (Trim(MemVar_1F95078) + "RSFD")
  loc_158794A: Call Proc_97_21_117AC60(CStr(var_C4), "BEVERAGE", "RSFD", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_15879DD: var_210 = (Trim(MemVar_1F95078) + "TRFD")
  loc_15879EE: var_1D0 = (Trim(MemVar_1F95078) + "RSFD")
  loc_1587A08: var_190 = (Trim(MemVar_1F95078) + "RS")
  loc_1587A34: var_134 = (Trim(MemVar_1F95078) + "RSFD")
  loc_1587A57: var_C4 = (Trim(MemVar_1F95078) + "RSFD")
  loc_1587A60: Call Proc_97_26_1114A0C(CStr(var_C4), "FOOD", "No", CStr(var_134), "Y", "Category", "Food", CStr(var_190))
  loc_1587AC3: var_CC = "RS - CONFECTIONARY"
  loc_1587AD1: var_C4 = (Trim(MemVar_1F95078) + "RSCF")
  loc_1587ADA: Call Proc_97_20_10FCA4C(CStr(var_C4), "FOOD", "0023", "R", "Sale", "Dr")
  loc_1587B36: var_150 = vbNullString
  loc_1587B3F: var_14C = "Other"
  loc_1587B4F: var_140 = vbNullString
  loc_1587B58: var_13C = "No"
  loc_1587B61: var_138 = "C"
  loc_1587B6A: var_F0 = vbNullString
  loc_1587B78: var_1D0 = (Trim(MemVar_1F95078) + "RS")
  loc_1587B84: var_E8 = "POS"
  loc_1587BAD: var_190 = (Trim(MemVar_1F95078) + "TRCF")
  loc_1587BBE: var_134 = (Trim(MemVar_1F95078) + "RSCF")
  loc_1587BD3: var_CC = "RS - CONFECTIONARY"
  loc_1587BE1: var_C4 = (Trim(MemVar_1F95078) + "RSCF")
  loc_1587BEA: Call Proc_97_21_117AC60(CStr(var_C4), "FOOD", "RSCF", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_1587C7D: var_210 = (Trim(MemVar_1F95078) + "TRCF")
  loc_1587C8E: var_1D0 = (Trim(MemVar_1F95078) + "RSCF")
  loc_1587CA8: var_190 = (Trim(MemVar_1F95078) + "RS")
  loc_1587CD4: var_134 = (Trim(MemVar_1F95078) + "RSCF")
  loc_1587CF7: var_C4 = (Trim(MemVar_1F95078) + "RSCF")
  loc_1587D00: Call Proc_97_26_1114A0C(CStr(var_C4), "CONFECTIONARY", "No", CStr(var_134), "Y", "Category", "Confectionary", CStr(var_190))
  loc_1587D63: var_CC = "RS - TOBACCO"
  loc_1587D71: var_C4 = (Trim(MemVar_1F95078) + "RSTB")
  loc_1587D7A: Call Proc_97_20_10FCA4C(CStr(var_C4), "CONFECTIONARY", "0023", "R", "Sale", "Dr")
  loc_1587DD6: var_150 = vbNullString
  loc_1587DDF: var_14C = "Other"
  loc_1587DEF: var_140 = vbNullString
  loc_1587DF8: var_13C = "No"
  loc_1587E01: var_138 = "C"
  loc_1587E0A: var_F0 = vbNullString
  loc_1587E18: var_1D0 = (Trim(MemVar_1F95078) + "RS")
  loc_1587E24: var_E8 = "POS"
  loc_1587E4D: var_190 = (Trim(MemVar_1F95078) + "TRTB")
  loc_1587E5E: var_134 = (Trim(MemVar_1F95078) + "RSTB")
  loc_1587E73: var_CC = "RS - TOBACCO"
  loc_1587E81: var_C4 = (Trim(MemVar_1F95078) + "RSTB")
  loc_1587E8A: Call Proc_97_21_117AC60(CStr(var_C4), "CONFECTIONARY", "RSTB", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_1587F1D: var_210 = (Trim(MemVar_1F95078) + "TRTB")
  loc_1587F2E: var_1D0 = (Trim(MemVar_1F95078) + "RSTB")
  loc_1587F48: var_190 = (Trim(MemVar_1F95078) + "RS")
  loc_1587F74: var_134 = (Trim(MemVar_1F95078) + "RSTB")
  loc_1587F97: var_C4 = (Trim(MemVar_1F95078) + "RSTB")
  loc_1587FA0: Call Proc_97_26_1114A0C(CStr(var_C4), "TOBACCO", "No", CStr(var_134), "Y", "Category", "Tobacco", CStr(var_190))
  loc_1588003: var_CC = "RS - MISC."
  loc_1588011: var_C4 = (Trim(MemVar_1F95078) + "RSMS")
  loc_158801A: Call Proc_97_20_10FCA4C(CStr(var_C4), "TOBACCO", "0023", "R", "Sale", "Dr")
  loc_1588076: var_150 = vbNullString
  loc_158807F: var_14C = "Other"
  loc_158808F: var_140 = vbNullString
  loc_1588098: var_13C = "No"
  loc_15880A1: var_138 = "C"
  loc_15880AA: var_F0 = vbNullString
  loc_15880B8: var_1D0 = (Trim(MemVar_1F95078) + "RS")
  loc_15880C4: var_E8 = "POS"
  loc_15880ED: var_190 = (Trim(MemVar_1F95078) + "TRNO")
  loc_15880FE: var_134 = (Trim(MemVar_1F95078) + "RSMS")
  loc_1588113: var_CC = "RS - MISC."
  loc_1588121: var_C4 = (Trim(MemVar_1F95078) + "RSMS")
  loc_158812A: Call Proc_97_21_117AC60(CStr(var_C4), "TOBACCO", "RSMS", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_15881BD: var_210 = (Trim(MemVar_1F95078) + "TRNO")
  loc_15881CE: var_1D0 = (Trim(MemVar_1F95078) + "RSMS")
  loc_15881DA: var_E8 = "Dr"
  loc_15881E8: var_190 = (Trim(MemVar_1F95078) + "RS")
  loc_1588214: var_134 = (Trim(MemVar_1F95078) + "RSMS")
  loc_1588237: var_C4 = (Trim(MemVar_1F95078) + "RSMS")
  loc_1588240: Call Proc_97_26_1114A0C(CStr(var_C4), "MISC.", "No", CStr(var_134), "Y", "Category", "Miscellaneous", CStr(var_190))
  loc_15882A8: var_150 = vbNullString
  loc_15882B1: var_14C = "Other"
  loc_15882C1: var_140 = vbNullString
  loc_15882CA: var_13C = "No"
  loc_15882D3: var_138 = "C"
  loc_15882DC: var_F0 = vbNullString
  loc_15882EA: var_190 = (Trim(MemVar_1F95078) + "RS")
  loc_15882F6: var_E8 = "POS"
  loc_1588328: var_134 = (Trim(MemVar_1F95078) + "DISC")
  loc_158833D: var_CC = "RS - DISCOUNT"
  loc_158834B: var_C4 = (Trim(MemVar_1F95078) + "RSDC")
  loc_1588354: Call Proc_97_21_117AC60(CStr(var_C4), "MISC.", "RSDC", CStr(var_134), vbNullString, "Cr", "Percent", "Detail")
  loc_15883A6: var_114 = Trim(MemVar_1F95078)
  loc_15883BE: var_150 = vbNullString
  loc_15883C7: var_14C = "Other"
  loc_15883D7: var_140 = vbNullString
  loc_15883E0: var_13C = "No"
  loc_15883E9: var_138 = "C"
  loc_15883F2: var_F0 = vbNullString
  loc_1588400: var_190 = (Trim(MemVar_1F95078) + "RS")
  loc_158840C: var_E8 = "POS"
  loc_158843E: var_134 = (var_114 + "ROFF")
  loc_1588453: var_CC = "RS - ROUND-OFF"
  loc_1588461: var_C4 = (Trim(MemVar_1F95078) + "RSRO")
  loc_158846A: Call Proc_97_21_117AC60(CStr(var_C4), "MISC.", "RSRO", CStr(var_134), vbNullString, "Cr", "Percent", "Detail")
  loc_15884A1: Exit Sub
  loc_15884A2: ' Referenced from: 15873B0
  loc_15884B8: Set var_214 = Err()
  loc_15884BE: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_114, var_134, var_E8)
  loc_15884C9: MsgBox(CVar(var_C8), CStr(var_190), var_F0, var_138, var_13C)
  loc_15884DC: Exit Sub
End Sub

Private Sub btnPayType_UnknownEvent_9 '13AF830
  'Data Table: 575328
  Dim var_C4 As Variant
  Dim var_118 As Variant
  Dim var_18C As Variant
  loc_13AEF18: On Error Goto loc_13AF7F4
  loc_13AEF2E: var_D8 = "Cash"
  loc_13AEF37: var_D4 = "A"
  loc_13AEF57: var_C4 = (Trim(MemVar_1F95078) + "CASH")
  loc_13AEF60: Call Proc_97_20_10FCA4C(CStr(var_C4), "CASH IN HAND", "0021")
  loc_13AEF9C: var_14C = vbNullString
  loc_13AEFA5: var_148 = "Cash"
  loc_13AEFB5: var_13C = vbNullString
  loc_13AEFBE: var_138 = "No"
  loc_13AEFC7: var_134 = "P"
  loc_13AEFD0: var_130 = "Cash"
  loc_13AEFD9: var_12C = vbNullString
  loc_13AF014: var_118 = (Trim(MemVar_1F95078) + "CASH")
  loc_13AF037: var_C4 = (Trim(MemVar_1F95078) + "CASH")
  loc_13AF040: Call Proc_97_21_117AC60(CStr(var_C4), "CASH IN HAND", "CASH", CStr(var_118), vbNullString, "Dr", "Percent", "Detail")
  loc_13AF0AF: var_C4 = (Trim(MemVar_1F95078) + "HOLD")
  loc_13AF0B8: Call Proc_97_20_10FCA4C(CStr(var_C4), "BILL ON HOLD", "0006", "A", "Others", vbNullString)
  loc_13AF0F4: var_14C = vbNullString
  loc_13AF0FD: var_148 = "Hold"
  loc_13AF10D: var_13C = vbNullString
  loc_13AF116: var_138 = "No"
  loc_13AF11F: var_134 = "P"
  loc_13AF128: var_130 = "Hold"
  loc_13AF16C: var_118 = (Trim(MemVar_1F95078) + "HOLD")
  loc_13AF18F: var_C4 = (Trim(MemVar_1F95078) + "HOLD")
  loc_13AF198: Call Proc_97_21_117AC60(CStr(var_C4), "BILL ON HOLD", "HOLD", CStr(var_118), vbNullString, "Dr", "Percent", "Detail")
  loc_13AF207: var_C4 = (Trim(MemVar_1F95078) + "CCOM")
  loc_13AF210: Call Proc_97_20_10FCA4C(CStr(var_C4), "COMMISSION ON CREDIT CARD", "0028", "E", "Others", vbNullString)
  loc_13AF265: var_C4 = (Trim(MemVar_1F95078) + "CC")
  loc_13AF26E: Call Proc_97_20_10FCA4C(CStr(var_C4), "CREDIT CARD A/C", "0022", "A", "Bank", vbNullString)
  loc_13AF2A2: var_F8 = Trim(MemVar_1F95078)
  loc_13AF2BA: var_14C = vbNullString
  loc_13AF2C3: var_148 = "Credit Card"
  loc_13AF2D8: var_18C = (Trim(MemVar_1F95078) + "CCOM")
  loc_13AF2E4: var_138 = "No"
  loc_13AF2ED: var_134 = "P"
  loc_13AF2F6: var_130 = "Credit Card"
  loc_13AF2FF: var_12C = vbNullString
  loc_13AF308: var_128 = vbNullString
  loc_13AF33A: var_118 = (var_F8 + "CC")
  loc_13AF35D: var_C4 = (Trim(MemVar_1F95078) + "VISA")
  loc_13AF366: Call Proc_97_21_117AC60(CStr(var_C4), "CREDIT CARD", "VISA", CStr(var_118), vbNullString, "Dr", "Percent", "Detail")
  loc_13AF3B0: var_14C = vbNullString
  loc_13AF3B9: var_148 = "Company"
  loc_13AF3C9: var_13C = vbNullString
  loc_13AF3D2: var_138 = "No"
  loc_13AF3DB: var_134 = "P"
  loc_13AF3E4: var_130 = "Company"
  loc_13AF3ED: var_12C = vbNullString
  loc_13AF3F6: var_128 = vbNullString
  loc_13AF443: var_C4 = (Trim(MemVar_1F95078) + "CRED")
  loc_13AF44C: Call Proc_97_21_117AC60(CStr(var_C4), "BILL TO COMPANY", "CRED", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AF48E: var_14C = vbNullString
  loc_13AF497: var_148 = "Room"
  loc_13AF4A7: var_13C = vbNullString
  loc_13AF4B0: var_138 = "No"
  loc_13AF4B9: var_134 = "P"
  loc_13AF4C2: var_130 = "Room"
  loc_13AF4CB: var_12C = vbNullString
  loc_13AF4D4: var_128 = vbNullString
  loc_13AF521: var_C4 = (Trim(MemVar_1F95078) + "ROOM")
  loc_13AF52A: Call Proc_97_21_117AC60(CStr(var_C4), "ROOM SETTLEMENT", "ROOM", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AF56C: var_14C = vbNullString
  loc_13AF575: var_148 = "Staff"
  loc_13AF585: var_13C = vbNullString
  loc_13AF58E: var_138 = "No"
  loc_13AF597: var_134 = "P"
  loc_13AF5A0: var_130 = "Staff"
  loc_13AF5A9: var_12C = vbNullString
  loc_13AF5B2: var_128 = vbNullString
  loc_13AF5FF: var_C4 = (Trim(MemVar_1F95078) + "STAF")
  loc_13AF608: Call Proc_97_21_117AC60(CStr(var_C4), "STAFF SETTLEMENT", "STAF", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AF64A: var_14C = vbNullString
  loc_13AF653: var_148 = "Member"
  loc_13AF663: var_13C = vbNullString
  loc_13AF66C: var_138 = "No"
  loc_13AF675: var_134 = "P"
  loc_13AF67E: var_130 = "Member"
  loc_13AF687: var_12C = vbNullString
  loc_13AF690: var_128 = vbNullString
  loc_13AF6DD: var_C4 = (Trim(MemVar_1F95078) + "MEM")
  loc_13AF6E6: Call Proc_97_21_117AC60(CStr(var_C4), "BILL TO MEMBER", "MEM", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AF728: var_14C = vbNullString
  loc_13AF731: var_148 = "Cash Card"
  loc_13AF741: var_13C = vbNullString
  loc_13AF74A: var_138 = "No"
  loc_13AF753: var_134 = "P"
  loc_13AF75C: var_130 = "Cash Card"
  loc_13AF765: var_12C = vbNullString
  loc_13AF76E: var_128 = vbNullString
  loc_13AF7BB: var_C4 = (Trim(MemVar_1F95078) + "CCAD")
  loc_13AF7C4: Call Proc_97_21_117AC60(CStr(var_C4), "CASH CARD", "CCAD", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AF7F3: Exit Sub
  loc_13AF7F4: ' Referenced from: 13AEF18
  loc_13AF80A: Set var_190 = Err()
  loc_13AF810: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_F8, var_118, var_128)
  loc_13AF81B: MsgBox(CVar(var_C8), var_12C, var_130, var_134, var_138)
  loc_13AF82E: Exit Sub
End Sub

Private Sub BtnSundryTypeFix_UnknownEvent_9 '127A9B0
  'Data Table: 575328
  Dim var_88 As String
  Dim unk_575357 As Connection15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  loc_127A418: On Error Goto loc_127A974
  loc_127A42F: var_88 = "Delete From SundryTypeFix Where LogSite_Code='" & MemVar_1F95078
  loc_127A43F: unk_575357.Execute var_88 & "'", var_AC, -1
  loc_127A464: var_F0 = "Y"
  loc_127A46D: var_EC = "Y"
  loc_127A476: var_E8 = "+"
  loc_127A47F: var_E4 = vbNullString
  loc_127A4B9: var_D0 = (Trim(MemVar_1F95078) + "TOT")
  loc_127A4C2: Call Proc_97_30_1102584(CStr(var_D0), 1, "Total", vbNullString, "A", "N")
  loc_127A4F6: var_F0 = vbNullString
  loc_127A4FF: var_EC = "Y"
  loc_127A508: var_E8 = "-"
  loc_127A54B: var_D0 = (Trim(MemVar_1F95078) + "DIS")
  loc_127A554: Call Proc_97_30_1102584(CStr(var_D0), 2, "Discount", "1", "P", "N", "Discount", var_E8)
  loc_127A588: var_F0 = vbNullString
  loc_127A591: var_EC = "Y"
  loc_127A59A: var_E8 = "+"
  loc_127A5BE: var_D8 = "1-2"
  loc_127A5DD: var_D0 = (Trim(MemVar_1F95078) + "ST")
  loc_127A5E6: Call Proc_97_30_1102584(CStr(var_D0), 3, "Comp Cess", "1", "A", "N", "Sale Tax", var_E8)
  loc_127A61A: var_F0 = vbNullString
  loc_127A623: var_EC = "Y"
  loc_127A62C: var_E8 = "+"
  loc_127A650: var_D8 = "1-2"
  loc_127A66F: var_D0 = (Trim(MemVar_1F95078) + "SCH")
  loc_127A678: Call Proc_97_30_1102584(CStr(var_D0), 4, "Service Charge", "1", "P", "N", "Service Charge", var_E8)
  loc_127A6AC: var_F0 = vbNullString
  loc_127A6B5: var_EC = "Y"
  loc_127A6BE: var_E8 = "+"
  loc_127A6E2: var_D8 = "1-2"
  loc_127A701: var_D0 = (Trim(MemVar_1F95078) + "CGSS")
  loc_127A70A: Call Proc_97_30_1102584(CStr(var_D0), 5, "CGST", "1", "A", "N", "CGST", var_E8)
  loc_127A73E: var_F0 = vbNullString
  loc_127A747: var_EC = "Y"
  loc_127A750: var_E8 = "+"
  loc_127A774: var_D8 = "1-2"
  loc_127A793: var_D0 = (Trim(MemVar_1F95078) + "SGSS")
  loc_127A79C: Call Proc_97_30_1102584(CStr(var_D0), 6, "SGST", "1", "A", "N", "SGST", var_E8)
  loc_127A7D0: var_F0 = vbNullString
  loc_127A7D9: var_EC = "Y"
  loc_127A7E2: var_E8 = "+"
  loc_127A806: var_D8 = "1-2+3+4+5+6"
  loc_127A825: var_D0 = (Trim(MemVar_1F95078) + "ADD")
  loc_127A82E: Call Proc_97_30_1102584(CStr(var_D0), 7, "Addition", "1", "A", "N", "Addition", var_E8)
  loc_127A862: var_F0 = vbNullString
  loc_127A86B: var_EC = "Y"
  loc_127A874: var_E8 = "+"
  loc_127A898: var_D8 = "1-2+3+4+5+6+7"
  loc_127A8B7: var_D0 = (Trim(MemVar_1F95078) + "ROFF")
  loc_127A8C0: Call Proc_97_30_1102584(CStr(var_D0), 8, "Round Off", "1", "A", "N", "Round Off", var_E8)
  loc_127A8F4: var_F0 = "Y"
  loc_127A8FD: var_EC = "Y"
  loc_127A906: var_E8 = "+"
  loc_127A92A: var_D8 = "1-2+3+4+5+6+7+8"
  loc_127A949: var_D0 = (Trim(MemVar_1F95078) + "NET")
  loc_127A952: Call Proc_97_30_1102584(CStr(var_D0), 9, "Net Amount", "1", "A", "N", vbNullString, var_E8)
  loc_127A973: Exit Sub
  loc_127A974: ' Referenced from: 127A418
  loc_127A98A: Set var_B0 = Err()
  loc_127A990: Call 0.Method_arg_2C (var_88, 0, var_D0, var_100, var_120, var_EC)
  loc_127A99B: MsgBox(CVar(var_88), var_F0, var_EC, var_F0, var_EC)
  loc_127A9AE: Exit Sub
End Sub

Private Sub CmdGodown_UnknownEvent_9 '12D2EB8
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_88 As Recordset15
  Dim var_13C As Variant
  Dim var_D4 As Variant
  Dim var_BC As Variant
  Dim var_F4 As String
  Dim var_128 As Variant
  Dim var_12C As Fields15
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_1A0 As Variant
  Dim var_274 As Variant
  loc_12D28DE: unk_575357.Execute "Select * from Depart Where Site_Code='" & MemVar_1F95078 & "' and LogSite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_12D28E9: Set var_88 = var_BC
  loc_12D28FD: ' Referenced from: 12D2BA0
  loc_12D290E: If (var_88.EOF = 0) Then
  loc_12D2917:   var_13C = 0
  loc_12D2949:   var_D4 = CVar("SELECT COUNT(*) FROM GodownMast WHERE Logsite_Code='" & MemVar_1F95078 & "' and Site_Code='" & MemVar_1F95078 & "' and Code='") 'String
  loc_12D298D:   unk_575357.Execute CStr(var_D4 & var_88.Fields.Item("Code").Value & "'"), var_124, -1
  loc_12D2995:   var_128 = var_128.Fields
  loc_12D299D:   var_13C = var_12C.Item(var_12C)
  loc_12D29A5:   var_140 = var_140.Value
  loc_12D29DC:   If (var_150 <= 0) Then
  loc_12D29DF:     var_F4 = "Godown Name :----->"
  loc_12D2A0E:     var_D4 = ("'" + var_88.Fields.Item("Name").Value)
  loc_12D2A20:     Me.Text1.Text = CStr(var_D4)
  loc_12D2A42:     Me.Text1.Refresh
  loc_12D2A86:     var_D4 = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & var_88.Fields.Item("Code").Value 
  loc_12D2AC1:     var_150 = var_D4 & "','" & Trim(CVar(var_88.Fields.Item("Name"))) 
  loc_12D2ADC:     Proc_6_7_F26918(var_190, Now, var_150 & "','Analysis',", var_2B4)
  loc_12D2AE4:     var_1A0 = -1 & var_190 
  loc_12D2B41:     var_274 = var_1A0 & ",'A','" & var_88.Fields.Item("ShortName").Value & "','Y','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F95078) 
  loc_12D2B58:     unk_575357.Execute CStr(var_274 & "')"), var_2B8, var_150
  loc_12D2B98:   End If
  loc_12D2B9B:   var_88.MoveNext
  loc_12D2BA0:   GoTo loc_12D28FD
  loc_12D2BA3: End If
  loc_12D2BBE: var_2D4 = "N"
  loc_12D2BC7: var_2D0 = "N"
  loc_12D2BD0: var_2CC = "N"
  loc_12D2BD9: var_2C8 = "N"
  loc_12D2C1D: var_D4 = (Trim(MemVar_1F95078) + "MK")
  loc_12D2C26: Call Proc_97_23_122FB50(CStr(var_D4), "MAIN KITCHEN", "N", "N", "Kitchen", "N", "MK")
  loc_12D2C5E: var_2F4 = vbNullString
  loc_12D2C67: var_2F0 = "Other"
  loc_12D2C77: var_2E4 = vbNullString
  loc_12D2C80: var_2E0 = "No"
  loc_12D2C89: var_2DC = vbNullString
  loc_12D2C92: var_2D4 = vbNullString
  loc_12D2C9B: var_2D0 = vbNullString
  loc_12D2CA4: var_2CC = vbNullString
  loc_12D2CF1: var_D4 = (Trim(MemVar_1F95078) + "MK")
  loc_12D2CFA: Call Proc_97_21_117AC60(CStr(var_D4), "MAIN KITCHEN", "MK", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_12D2D44: var_2D4 = "N"
  loc_12D2D4D: var_2D0 = "N"
  loc_12D2D56: var_2CC = "N"
  loc_12D2DA3: var_D4 = (Trim(MemVar_1F95078) + "DBAR")
  loc_12D2DAC: Call Proc_97_23_122FB50(CStr(var_D4), "DISPENSE BAR", "N", "N", "Kitchen", "N", "DBAR", "N")
  loc_12D2DE4: var_2F4 = vbNullString
  loc_12D2DED: var_2F0 = "Other"
  loc_12D2DFD: var_2E4 = vbNullString
  loc_12D2E06: var_2E0 = "No"
  loc_12D2E0F: var_2DC = vbNullString
  loc_12D2E18: var_2D4 = vbNullString
  loc_12D2E21: var_2D0 = vbNullString
  loc_12D2E2A: var_2CC = vbNullString
  loc_12D2E77: var_D4 = (Trim(MemVar_1F95078) + "DBAR")
  loc_12D2E80: Call Proc_97_21_117AC60(CStr(var_D4), "DISPENSE BAR", "DBAR", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_12D2EB4: Set var_88 = Nothing
  loc_12D2EB7: Exit Sub
End Sub

Private Sub BtnTax_UnknownEvent_9 '15AF15C
  'Data Table: 575328
  Dim var_C4 As Variant
  Dim var_158 As Variant
  Dim var_118 As Variant
  loc_15ADF2C: On Error Goto loc_15AF120
  loc_15ADF42: var_D8 = "Others"
  loc_15ADF4B: var_D4 = "L"
  loc_15ADF6B: var_C4 = (Trim(MemVar_1F95078) + "CGSS")
  loc_15ADF74: Call Proc_97_20_10FCA4C(CStr(var_C4), "CGST (SALES)", "0014")
  loc_15ADFC5: var_158 = (Trim(MemVar_1F95078) + "CGSS")
  loc_15ADFD1: var_188 = "Other"
  loc_15ADFE1: var_17C = vbNullString
  loc_15ADFEA: var_178 = "No"
  loc_15ADFF3: var_174 = "T"
  loc_15ADFFC: var_170 = vbNullString
  loc_15AE005: var_16C = vbNullString
  loc_15AE040: var_118 = (Trim(MemVar_1F95078) + "CGSS")
  loc_15AE063: var_C4 = (Trim(MemVar_1F95078) + "CGSS")
  loc_15AE06C: Call Proc_97_21_117AC60(CStr(var_C4), "CGST (SALES)", "CGSS", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AE0DF: var_C4 = (Trim(MemVar_1F95078) + "SGSS")
  loc_15AE0E8: Call Proc_97_20_10FCA4C(CStr(var_C4), "SGST (SALES)", "0014", "L", "Others", vbNullString)
  loc_15AE139: var_158 = (Trim(MemVar_1F95078) + "SGSS")
  loc_15AE145: var_188 = "Other"
  loc_15AE155: var_17C = vbNullString
  loc_15AE15E: var_178 = "No"
  loc_15AE167: var_174 = "T"
  loc_15AE170: var_170 = vbNullString
  loc_15AE179: var_16C = vbNullString
  loc_15AE1B4: var_118 = (Trim(MemVar_1F95078) + "SGSS")
  loc_15AE1D7: var_C4 = (Trim(MemVar_1F95078) + "SGSS")
  loc_15AE1E0: Call Proc_97_21_117AC60(CStr(var_C4), "SGST (SALES)", "SGSS", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AE253: var_C4 = (Trim(MemVar_1F95078) + "IGSS")
  loc_15AE25C: Call Proc_97_20_10FCA4C(CStr(var_C4), "IGST (SALES)", "0014", "L", "Others", vbNullString)
  loc_15AE2AD: var_158 = (Trim(MemVar_1F95078) + "IGSS")
  loc_15AE2B9: var_188 = "Other"
  loc_15AE2C9: var_17C = vbNullString
  loc_15AE2D2: var_178 = "No"
  loc_15AE2DB: var_174 = "T"
  loc_15AE2E4: var_170 = vbNullString
  loc_15AE2ED: var_16C = vbNullString
  loc_15AE328: var_118 = (Trim(MemVar_1F95078) + "IGSS")
  loc_15AE34B: var_C4 = (Trim(MemVar_1F95078) + "IGSS")
  loc_15AE354: Call Proc_97_21_117AC60(CStr(var_C4), "IGST (SALES)", "IGSS", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AE3C7: var_C4 = (Trim(MemVar_1F95078) + "CGSP")
  loc_15AE3D0: Call Proc_97_20_10FCA4C(CStr(var_C4), "CGST (PURCHASE)", "0014", "L", "Others", vbNullString)
  loc_15AE421: var_158 = (Trim(MemVar_1F95078) + "CGSP")
  loc_15AE42D: var_188 = "Other"
  loc_15AE43D: var_17C = vbNullString
  loc_15AE446: var_178 = "No"
  loc_15AE44F: var_174 = "T"
  loc_15AE458: var_170 = vbNullString
  loc_15AE461: var_16C = vbNullString
  loc_15AE49C: var_118 = (Trim(MemVar_1F95078) + "CGSP")
  loc_15AE4BF: var_C4 = (Trim(MemVar_1F95078) + "CGSP")
  loc_15AE4C8: Call Proc_97_21_117AC60(CStr(var_C4), "CGST (PURCHASE)", "CGSP", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AE53B: var_C4 = (Trim(MemVar_1F95078) + "SGSP")
  loc_15AE544: Call Proc_97_20_10FCA4C(CStr(var_C4), "SGST (PURCHASE)", "0014", "L", "Others", vbNullString)
  loc_15AE595: var_158 = (Trim(MemVar_1F95078) + "SGSP")
  loc_15AE5A1: var_188 = "Other"
  loc_15AE5B1: var_17C = vbNullString
  loc_15AE5BA: var_178 = "No"
  loc_15AE5C3: var_174 = "T"
  loc_15AE5CC: var_170 = vbNullString
  loc_15AE5D5: var_16C = vbNullString
  loc_15AE610: var_118 = (Trim(MemVar_1F95078) + "SGSP")
  loc_15AE633: var_C4 = (Trim(MemVar_1F95078) + "SGSP")
  loc_15AE63C: Call Proc_97_21_117AC60(CStr(var_C4), "SGST (PURCHASE)", "SGSP", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AE6AF: var_C4 = (Trim(MemVar_1F95078) + "IGSP")
  loc_15AE6B8: Call Proc_97_20_10FCA4C(CStr(var_C4), "IGST (PURCHASE)", "0014", "L", "Others", vbNullString)
  loc_15AE709: var_158 = (Trim(MemVar_1F95078) + "IGSP")
  loc_15AE715: var_188 = "Other"
  loc_15AE725: var_17C = vbNullString
  loc_15AE72E: var_178 = "No"
  loc_15AE737: var_174 = "T"
  loc_15AE740: var_170 = vbNullString
  loc_15AE749: var_16C = vbNullString
  loc_15AE784: var_118 = (Trim(MemVar_1F95078) + "IGSP")
  loc_15AE7A7: var_C4 = (Trim(MemVar_1F95078) + "IGSP")
  loc_15AE7B0: Call Proc_97_21_117AC60(CStr(var_C4), "IGST (PURCHASE)", "IGSP", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AE823: var_C4 = (Trim(MemVar_1F95078) + "NT")
  loc_15AE82C: Call Proc_97_20_10FCA4C(CStr(var_C4), "NO TAX", "0014", "L", "Others", vbNullString)
  loc_15AE868: var_18C = vbNullString
  loc_15AE871: var_188 = "Other"
  loc_15AE881: var_17C = vbNullString
  loc_15AE88A: var_178 = "No"
  loc_15AE893: var_174 = "T"
  loc_15AE89C: var_170 = vbNullString
  loc_15AE8A5: var_16C = vbNullString
  loc_15AE8AE: var_168 = vbNullString
  loc_15AE8E0: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AE903: var_C4 = (Trim(MemVar_1F95078) + "NT")
  loc_15AE90C: Call Proc_97_21_117AC60(CStr(var_C4), "NO TAX", "NT", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AE987: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AE9A9: var_C4 = (Trim(MemVar_1F95078) + "TR")
  loc_15AE9B2: Call Proc_97_27_10EB9CC(CStr(var_C4), "ROOM TAX", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEA17: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEA39: var_C4 = (Trim(MemVar_1F95078) + "TRFD")
  loc_15AEA42: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES FOOD", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEAA7: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEAC9: var_C4 = (Trim(MemVar_1F95078) + "TRBG")
  loc_15AEAD2: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES BEVERAGE", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEB37: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEB59: var_C4 = (Trim(MemVar_1F95078) + "TRCF")
  loc_15AEB62: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES CONFECTIONARY", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEBC7: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEBE9: var_C4 = (Trim(MemVar_1F95078) + "TRTB")
  loc_15AEBF2: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES TOBACCO", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEC57: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEC79: var_C4 = (Trim(MemVar_1F95078) + "TRMS")
  loc_15AEC82: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES MISC.", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AECE7: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AED09: var_C4 = (Trim(MemVar_1F95078) + "TRNO")
  loc_15AED12: Call Proc_97_27_10EB9CC(CStr(var_C4), "NO TAXES", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AED77: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AED99: var_C4 = (Trim(MemVar_1F95078) + "TPRB")
  loc_15AEDA2: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES PREVIOUS BALANCE", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEE07: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEE29: var_C4 = (Trim(MemVar_1F95078) + "TMBA")
  loc_15AEE32: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES MEMBER BILL AMOUNT", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEE97: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEEB9: var_C4 = (Trim(MemVar_1F95078) + "TPR1")
  loc_15AEEC2: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES PRE. BAL. OF PRE. MONTH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEF27: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEF49: var_C4 = (Trim(MemVar_1F95078) + "TPR2")
  loc_15AEF52: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES PRE. BAL. BEFORE PRE. MONTH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AEFB7: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AEFD9: var_C4 = (Trim(MemVar_1F95078) + "TPR3")
  loc_15AEFE2: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES P.BAL. OF PRE.MONTH TO 15TH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AF047: var_118 = (Trim(MemVar_1F95078) + "NT")
  loc_15AF069: var_C4 = (Trim(MemVar_1F95078) + "TPR4")
  loc_15AF072: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES P.BAL. BEF.PRE. MONTH TO 15TH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AF0AA: var_F8 = Trim(MemVar_1F95078)
  loc_15AF0D7: var_118 = (var_F8 + "NT")
  loc_15AF0F9: var_C4 = (Trim(MemVar_1F95078) + "TMPA")
  loc_15AF102: Call Proc_97_27_10EB9CC(CStr(var_C4), "TAXES MEMBER POS BILL AMOUNT", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AF11F: Exit Sub
  loc_15AF120: ' Referenced from: 15ADF2C
  loc_15AF136: Set var_19C = Err()
  loc_15AF13C: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_F8, var_118, var_168)
  loc_15AF147: MsgBox(CVar(var_C8), var_16C, var_170, var_174, var_178)
  loc_15AF15A: Exit Sub
End Sub

Private Sub BTNFOM_UnknownEvent_9 '13DB628
  'Data Table: 575328
  Dim var_C4 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_190 As Variant
  loc_13DAC8C: On Error Goto loc_13DB5EC
  loc_13DACAA: var_F0 = "N"
  loc_13DACB3: var_EC = "N"
  loc_13DACBC: var_E8 = "N"
  loc_13DACC5: var_E4 = "N"
  loc_13DACCE: var_E0 = "FO"
  loc_13DAD09: var_C4 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DAD12: Call Proc_97_23_122FB50(CStr(var_C4), "FRONT OFFICE", "N", "N", "FOM", "N")
  loc_13DAD5A: var_150 = vbNullString
  loc_13DAD63: var_14C = "Other"
  loc_13DAD73: var_140 = vbNullString
  loc_13DAD7C: var_13C = "No"
  loc_13DAD85: var_138 = vbNullString
  loc_13DAD8E: var_F0 = vbNullString
  loc_13DAD9C: var_134 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DADF5: var_C4 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DADFE: Call Proc_97_21_117AC60(CStr(var_C4), "FRONT OFFICE", "FO", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_13DAE6D: var_C4 = (Trim(MemVar_1F95078) + "TEL")
  loc_13DAE76: Call Proc_97_20_10FCA4C(CStr(var_C4), "TELEPHONE CHARGES", "0023", "R", "Sale", "FOM")
  loc_13DAED2: var_150 = vbNullString
  loc_13DAEDB: var_14C = "Telephone Charge"
  loc_13DAEEB: var_140 = vbNullString
  loc_13DAEF4: var_13C = "No"
  loc_13DAEFD: var_138 = "C"
  loc_13DAF06: var_F0 = vbNullString
  loc_13DAF14: var_1D0 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DAF49: var_190 = (Trim(MemVar_1F95078) + "TRNO")
  loc_13DAF5A: var_134 = (Trim(MemVar_1F95078) + "TEL")
  loc_13DAF7D: var_C4 = (Trim(MemVar_1F95078) + "TEL")
  loc_13DAF86: Call Proc_97_21_117AC60(CStr(var_C4), "TELEPHONE CHARGES", "TEL", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_13DAFFD: var_C4 = (Trim(MemVar_1F95078) + "RMCH")
  loc_13DB006: Call Proc_97_20_10FCA4C(CStr(var_C4), "ROOM CHARGE", "0023", "R", "Sale", "FOM")
  loc_13DB062: var_150 = vbNullString
  loc_13DB06B: var_14C = "Room Charge"
  loc_13DB07B: var_140 = vbNullString
  loc_13DB084: var_13C = "No"
  loc_13DB08D: var_138 = "C"
  loc_13DB096: var_F0 = vbNullString
  loc_13DB0A4: var_1D0 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DB0B0: var_E8 = "FOM"
  loc_13DB0D9: var_190 = (Trim(MemVar_1F95078) + "TR")
  loc_13DB0EA: var_134 = (Trim(MemVar_1F95078) + "RMCH")
  loc_13DB10D: var_C4 = (Trim(MemVar_1F95078) + "RMCH")
  loc_13DB116: Call Proc_97_21_117AC60(CStr(var_C4), "ROOM CHARGE", "RMCH", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_13DB184: var_150 = vbNullString
  loc_13DB18D: var_14C = "Other"
  loc_13DB19D: var_140 = vbNullString
  loc_13DB1A6: var_13C = "No"
  loc_13DB1AF: var_138 = "C"
  loc_13DB1B8: var_F0 = vbNullString
  loc_13DB1C6: var_190 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DB1D2: var_E8 = "FOM"
  loc_13DB1FB: var_134 = (Trim(MemVar_1F95078) + "TRNO")
  loc_13DB227: var_C4 = (Trim(MemVar_1F95078) + "TOUT")
  loc_13DB230: Call Proc_97_21_117AC60(CStr(var_C4), "TRANSFER FROM OUTLET", "TOUT", vbNullString, CStr(var_134), "Cr", "Percent", "Detail")
  loc_13DB29A: var_150 = vbNullString
  loc_13DB2A3: var_14C = "Room Charge"
  loc_13DB2B3: var_140 = vbNullString
  loc_13DB2BC: var_13C = "No"
  loc_13DB2C5: var_138 = "C"
  loc_13DB2CE: var_F0 = vbNullString
  loc_13DB2DC: var_190 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DB2E8: var_E8 = "FOM"
  loc_13DB31A: var_134 = (Trim(MemVar_1F95078) + "DISC")
  loc_13DB33D: var_C4 = (Trim(MemVar_1F95078) + "DISC")
  loc_13DB346: Call Proc_97_21_117AC60(CStr(var_C4), "ROOM DISC.", "RMDC", CStr(var_134), vbNullString, "Dr", "Percent", "Detail")
  loc_13DB3B0: var_150 = vbNullString
  loc_13DB3B9: var_14C = "Other"
  loc_13DB3C9: var_140 = vbNullString
  loc_13DB3D2: var_13C = "No"
  loc_13DB3DB: var_138 = "C"
  loc_13DB3E4: var_F0 = vbNullString
  loc_13DB3F2: var_190 = (Trim(MemVar_1F95078) + "FOM")
  loc_13DB3FE: var_E8 = "FOM"
  loc_13DB430: var_134 = (Trim(MemVar_1F95078) + "ROFF")
  loc_13DB453: var_C4 = (Trim(MemVar_1F95078) + "ROFF")
  loc_13DB45C: Call Proc_97_21_117AC60(CStr(var_C4), "ROUND OFF A/C", "ROFF", CStr(var_134), vbNullString, "Cr", "Percent", "Detail")
  loc_13DB4AE: var_114 = Trim(MemVar_1F95078)
  loc_13DB4B6: var_150 = vbNullString
  loc_13DB4BF: var_14C = "Room Charge"
  loc_13DB4CF: var_140 = vbNullString
  loc_13DB4D8: var_13C = "No"
  loc_13DB4E1: var_138 = "C"
  loc_13DB4EA: var_F0 = vbNullString
  loc_13DB4F8: var_134 = (var_114 + "FOM")
  loc_13DB551: var_C4 = (Trim(MemVar_1F95078) + "EXTB")
  loc_13DB55A: Call Proc_97_21_117AC60(CStr(var_C4), "EXTRA BED", "EXTB", vbNullString, vbNullString, "Cr", "Percent", "Detail")
  loc_13DB5C9: var_C4 = (Trim(MemVar_1F95078) + "GSTB")
  loc_13DB5D2: Call Proc_97_20_10FCA4C(CStr(var_C4), "GUEST BALANCE", "0006", "A", "Others", "FOM")
  loc_13DB5EB: Exit Sub
  loc_13DB5EC: ' Referenced from: 13DAC8C
  loc_13DB602: Set var_1D4 = Err()
  loc_13DB608: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_114, var_134, CStr(var_134))
  loc_13DB613: MsgBox(CVar(var_C8), var_F0, var_138, var_13C, var_140)
  loc_13DB626: Exit Sub
End Sub

Private Sub BtnHouseKeep_UnknownEvent_9 '1001630
  'Data Table: 575328
  Dim var_C4 As Variant
  loc_1001468: On Error Goto loc_10015F2
  loc_1001486: var_F0 = "N"
  loc_100148F: var_EC = "N"
  loc_1001498: var_E8 = "N"
  loc_10014A1: var_E4 = "N"
  loc_10014AA: var_E0 = "HK"
  loc_10014E5: var_C4 = (Trim(MemVar_1F95078) + "HK")
  loc_10014EE: Call Proc_97_23_122FB50(CStr(var_C4), "HOUSE KEEPING", "N", "N", "House Keeping", "N")
  loc_1001526: var_110 = vbNullString
  loc_100152F: var_10C = "Other"
  loc_100153F: var_100 = vbNullString
  loc_1001548: var_FC = "No"
  loc_1001551: var_F8 = vbNullString
  loc_100155A: var_F0 = vbNullString
  loc_1001563: var_EC = vbNullString
  loc_100156C: var_E8 = vbNullString
  loc_10015B9: var_C4 = (Trim(MemVar_1F95078) + "HK")
  loc_10015C2: Call Proc_97_21_117AC60(CStr(var_C4), "HOUSE KEEPING", "HK", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_10015F1: Exit Sub
  loc_10015F2: ' Referenced from: 1001468
  loc_1001608: Set var_114 = Err()
  loc_100160E: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_124, var_144, var_E8)
  loc_1001619: MsgBox(CVar(var_C8), var_EC, var_F0, var_F8, var_FC)
  loc_100162C: Exit Sub
  loc_100162D: BranchFVar 2048
End Sub

Private Sub BtnIntegrity_UnknownEvent_9 '1461590
  'Data Table: 575328
  Dim var_98 As String
  Dim unk_575357 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_1A4 As String
  loc_1460A40: On Error Goto loc_1461568
  loc_1460A4A: Call 0.Method_arg_A4 (CInt(&HB))
  loc_1460A5B: var_94 = Me.Global.App
  loc_1460A7F: Call 0.Method_arg_78 (App.Path & "\HMSIssueList.Log", &HFF)
  loc_1460A9E: var_94 = Me.Global.App
  loc_1460ACA: Call 0.Method_arg_7C (App.Path & "\HMSIssueList.Log", 8, 0, 0)
  loc_1460AD5: Set var_8C = var_A0
  loc_1460AF3: Call 0.Method_arg_38 ("***** Analysis Compute System              " & vbCrLf, var_A0)
  loc_1460B02: var_98 = "-------------------------------------------" & vbCrLf
  loc_1460B08: Call 0.Method_arg_38 ("***** Analysis Compute System              " & vbCrLf, 0)
  loc_1460B1D: Call 0.Method_arg_38 ("***** DESCRIPTION : Integrity Tool         " & vbCrLf)
  loc_1460B32: Call 0.Method_arg_38 ("***** WRITTEN BY  : HMS Team               " & vbCrLf)
  loc_1460B47: Call 0.Method_arg_38 ("***** DATE UPDATED: 01/Jan/2013            " & vbCrLf)
  loc_1460B56: var_98 = "-------------------------------------------" & vbCrLf
  loc_1460B5C: Call 0.Method_arg_38 ("***** DATE UPDATED: 01/Jan/2013            " & vbCrLf)
  loc_1460B71: Call 0.Method_arg_38 ("***** Updating PayCharge for Null Values in PayCharge Table *****" & vbCrLf)
  loc_1460B8F: Me.Connection15.Execute "UPDATE PayCharge SET AMTDR=0 WHERE AMTDR IS NULL", var_C0, -1
  loc_1460BB0: unk_575357.Execute "UPDATE PayCharge SET AMTCR=0 WHERE AMTCR IS NULL", var_C0, -1
  loc_1460BD1: unk_575357.Execute "UPDATE PayCharge SET COMMENTS='' WHERE COMMENTS IS NULL", var_C0, -1
  loc_1460BE9: Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1460C07: unk_575357.Execute "SELECT * From PayCharge WHERE PayType IS NOT NULL AND PAYTYPE<>'' AND (PAYCODE IS NULL OR PAYCODE='')", var_C0, -1
  loc_1460C12: Set var_90 = var_94
  loc_1460C2F: If (var_90.RecordCount > 0) Then
  loc_1460C3F:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1460C54:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge not have PayCode *****" & vbCrLf, var_94)
  loc_1460C63:   var_98 = "--------" & vbCrLf
  loc_1460C69:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge not have PayCode *****" & vbCrLf)
  loc_1460C7E:   Call 0.Method_arg_38 ("Docid                 | Sno  " & vbCrLf)
  loc_1460C8D:   var_98 = "-----------------------------" & vbCrLf
  loc_1460C93:   Call 0.Method_arg_38 ("Docid                 | Sno  " & vbCrLf)
  loc_1460C9B:   ' Referenced from: 1460D40
  loc_1460CAA:   If Not(var_90.EOF) Then
  loc_1460CBC:     var_94 = var_90.Fields
  loc_1460CC4:     var_A0 = var_94.Item("DocID")
  loc_1460CCC:     var_C0 = CVar(var_A0) 'Address
  loc_1460D18:     Call 0.Method_arg_38 (var_A0 & Proc_6_38_E69628(CVar(var_90.Fields.Item("SNo")), Proc_6_38_E69628(var_C0) & "|") & vbCrLf)
  loc_1460D3B:     var_90.MoveNext
  loc_1460D40:     GoTo loc_1460C9B
  loc_1460D43:   End If
  loc_1460D4A:   var_98 = "-----------------------------" & vbCrLf
  loc_1460D50:   Call 0.Method_arg_38 (Proc_6_38_E69628(var_C0))
  loc_1460D58: End If
  loc_1460D6E: unk_575357.Execute "SELECT * FROM PAYCHARGE WHERE SETTLEDATE IS NOT NULL AND (BILL_NO IS NULL OR BILL_NO='') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')", var_C0, -1
  loc_1460D79: Set var_90 = var_94
  loc_1460D96: If (var_90.RecordCount > 0) Then
  loc_1460DA6:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1460DBB:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Bill No *****" & vbCrLf)
  loc_1460DCA:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460DD0:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Bill No *****" & vbCrLf)
  loc_1460DE5:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460DF4:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460DFA:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460E02:   ' Referenced from: 1460EA7
  loc_1460E11:   If Not(var_90.EOF) Then
  loc_1460E23:     var_94 = var_90.Fields
  loc_1460E33:     var_C0 = CVar(var_94.Item("DocID")) 'Address
  loc_1460E7F:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E69628(CVar(var_90.Fields.Item("FolioNoDocid")), Proc_6_38_E69628(var_C0) & "|") & vbCrLf)
  loc_1460EA2:     var_90.MoveNext
  loc_1460EA7:     GoTo loc_1460E02
  loc_1460EAA:   End If
  loc_1460EB1:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460EB7:   Call 0.Method_arg_38 (Proc_6_38_E69628(var_C0))
  loc_1460EBF: End If
  loc_1460ECC: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1460EE1: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro *****" & vbCrLf)
  loc_1460EFF: unk_575357.Execute "SELECT * FROM PAYCHARGE WHERE (FOLIONODOCID IS NOT NULL AND FOLIONODOCID<>'') AND SETTLEDATE IS NULL AND (BILL_NO IS NOT NULL AND BILL_NO<>'') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')", var_C0, -1
  loc_1460F0A: Set var_90 = var_94
  loc_1460F27: If (var_90.RecordCount > 0) Then
  loc_1460F37:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1460F4C:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Settle Date *****" & vbCrLf)
  loc_1460F5B:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460F61:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Settle Date *****" & vbCrLf)
  loc_1460F76:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460F85:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460F8B:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460F93:   ' Referenced from: 1461038
  loc_1460FA2:   If Not(var_90.EOF) Then
  loc_1460FB4:     var_94 = var_90.Fields
  loc_1460FC4:     var_C0 = CVar(var_94.Item("DocID")) 'Address
  loc_1460FF6:     var_F0 = CVar(var_90.Fields.Item("FolioNoDocid")) 'Address
  loc_1461010:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E69628(var_F0, Proc_6_38_E69628(var_C0) & "|") & vbCrLf)
  loc_1461033:     var_90.MoveNext
  loc_1461038:     GoTo loc_1460F93
  loc_146103B:   End If
  loc_1461042:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1461048:   Call 0.Method_arg_38 (Proc_6_38_E69628(var_C0))
  loc_1461050: End If
  loc_1461066: unk_575357.Execute "SELECT FolionoDocId,Sum(AmtDr) As AmtDr,Sum(AmtCr) As AmtCr,Sum(AmtDr)-Sum(AmtCr) As Diff,Max(Bill_No) As Bill_No FROM PAYCHARGE Group By FOLIONODOCID Having Round((Sum(AmtDr)-Sum(AmtCr)),2)<>0 Order By FolionoDocId", var_C0, -1
  loc_1461071: Set var_90 = var_94
  loc_146108E: If (var_90.RecordCount > 0) Then
  loc_146109E:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_14610B3:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have equal Debit And Credit Amount *****" & vbCrLf)
  loc_14610C2:   var_98 = "--------------------------------------------" & vbCrLf
  loc_14610C8:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have equal Debit And Credit Amount *****" & vbCrLf)
  loc_14610DD:   Call 0.Method_arg_38 ("  Debit Amt. Credit Amt.  Difference |Folio No Docid        |Bill_No             " & vbCrLf)
  loc_14610EC:   var_98 = "--------------------------------------------" & vbCrLf
  loc_14610F2:   Call 0.Method_arg_38 ("  Debit Amt. Credit Amt.  Difference |Folio No Docid        |Bill_No             " & vbCrLf)
  loc_14610FA:   ' Referenced from: 14612B0
  loc_1461109:   If Not(var_90.EOF) Then
  loc_146111B:     var_94 = var_90.Fields
  loc_146112B:     var_C0 = CVar(var_94.Item("AmtDr")) 'Address
  loc_1461132:     Proc_6_47_EF6560(var_F0, var_C0)
  loc_146115D:     Proc_6_47_EF6560(var_11C, CVar(var_90.Fields.Item("AmtCr")))
  loc_1461188:     Proc_6_47_EF6560(var_158, CVar(var_90.Fields.Item("Diff")))
  loc_146121B:     var_1A4 = Proc_6_52_EAE084(CStr(var_F0), &HC) & Proc_6_52_EAE084(CStr(var_11C), &HC) & Proc_6_52_EAE084(CStr(var_158), &HC) & " |" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(var_90.Fields.Item("FolioNoDocid"))), &H15)
  loc_146125E:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E69628(CVar(var_90.Fields.Item("Bill_no")), var_1A4 & " |") & vbCrLf)
  loc_14612AB:     var_90.MoveNext
  loc_14612B0:     GoTo loc_14610FA
  loc_14612B3:   End If
  loc_14612BA:   var_98 = "--------------------------------------------" & vbCrLf
  loc_14612C0:   Call 0.Method_arg_38 ("  Debit Amt. Credit Amt.  Difference |Folio No Docid        |Bill_No             " & vbCrLf)
  loc_14612C8: End If
  loc_14612D5: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_14612EA: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro *****" & vbCrLf)
  loc_1461308: unk_575357.Execute "SELECT * FROM PAYCHARGE WHERE PAYCODE NOT IN (SELECT CODE FROM REVMAST)", var_C0, -1
  loc_1461313: Set var_90 = var_94
  loc_1461330: If (var_90.RecordCount > 0) Then
  loc_1461340:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1461355:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Valid PayCode *****" & vbCrLf)
  loc_1461364:   var_98 = "--------------------------------------------" & vbCrLf
  loc_146136A:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Valid PayCode *****" & vbCrLf)
  loc_146137F:   Call 0.Method_arg_38 ("Docid                |PayCode        " & vbCrLf)
  loc_146138E:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1461394:   Call 0.Method_arg_38 ("Docid                |PayCode        " & vbCrLf)
  loc_146139C:   ' Referenced from: 1461441
  loc_14613AB:   If Not(var_90.EOF) Then
  loc_14613BD:     var_94 = var_90.Fields
  loc_14613CD:     var_C0 = CVar(var_94.Item("DocID")) 'Address
  loc_1461419:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E69628(CVar(var_90.Fields.Item("PayCode")), Proc_6_38_E69628(var_C0) & "|") & vbCrLf)
  loc_146143C:     var_90.MoveNext
  loc_1461441:     GoTo loc_146139C
  loc_1461444:   End If
  loc_146144B:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1461451:   Call 0.Method_arg_38 (Proc_6_38_E69628(var_C0))
  loc_1461459: End If
  loc_1461460: var_98 = " " & vbCrLf
  loc_1461466: Call 0.Method_arg_38 (var_98)
  loc_1461484: unk_575357.Execute "SELECT * FROM PAYCHARGE WHERE Docid is NUll or Docid=''", var_C0, -1
  loc_14614AC: If (var_94.RecordCount > 0) Then
  loc_14614C5:   unk_575357.Execute "Delete from paycharge where Docid is NULL or Docid=''", var_C0, -1
  loc_14614D0: End If
  loc_14614E6: unk_575357.Execute "SELECT * FROM GuestFolio WHERE Docid is NUll or Docid=''", var_C0, -1
  loc_146150E: If (var_94.RecordCount > 0) Then
  loc_1461527:   unk_575357.Execute "Delete from GuestFolio where Docid is NULL or Docid=''", var_C0, -1
  loc_1461532: End If
  loc_1461548: unk_575357.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''", var_C0, -1
  loc_1461556: Call 0.Method_BtnIntegrity_UnknownEvent_9C (var_94, var_94, var_94)
  loc_1461562: Call 0.Method_arg_A4 (CInt(0), var_94)
  loc_1461567: Exit Sub
  loc_1461568: ' Referenced from: 1460A40
  loc_146156E: Call 0.Method_arg_50 (var_98)
  loc_1461583: Proc_183_57_104B0BC(var_98, "BtnIntegrity_Click")
  loc_146158F: Exit Sub
End Sub

Private Sub Form_Load() 'FA7F10
  'Data Table: 575328
  Dim var_88 As Variant
  loc_FA7D92: Set var_88 = Me.Command1
  loc_FA7D98: var_88.Visible = False
  loc_FA7DA0: On Error Goto loc_FA7EC9
  loc_FA7DAA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FA7DB8: Call 0.Method_arg_160 (var_88)
  loc_FA7DC6: Call 0.Method_arg_164 (var_88)
  loc_FA7DD6: If (MemVar_1F95170 = "[Aatithya_Restaurant]") Then
  loc_FA7DDF:   Set var_88 = Me.Print_KOT_Timer
  loc_FA7DE5:   MDIForm1.Print_KOT_Timer.Visible = True
  loc_FA7DF9:   Me.FrmPOS.Visible = True
  loc_FA7E04: Else
  loc_FA7E0C:   If (MemVar_1F95170 = "[Aatithya_Lite]") Then
  loc_FA7E1B:     Me.FrmACC.Visible = True
  loc_FA7E2F:     Me.FrmPOS.Visible = True
  loc_FA7E43:     Me.FrmFOM.Visible = True
  loc_FA7E57:     Me.FrmPurch.Visible = True
  loc_FA7E62:   Else
  loc_FA7E6E:     Me.FrmACC.Visible = True
  loc_FA7E82:     Me.FrmPOS.Visible = True
  loc_FA7E96:     Me.FrmFOM.Visible = True
  loc_FA7EAA:     Me.FrmPurch.Visible = True
  loc_FA7EBA:     Set var_88 = Me.BtnBanquet
  loc_FA7EC0:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_FA7EC8:   End If
  loc_FA7EC8: End If
  loc_FA7EC8: Exit Sub
  loc_FA7EC9: ' Referenced from: FA7DA0
  loc_FA7ED1: Set var_88 = Err()
  loc_FA7ED7: Call 0.Method_arg_2C (var_B0)
  loc_FA7EF8: MsgBox(CVar(var_B0), &H40, "Information", var_E0, var_100)
  loc_FA7F0B: Exit Sub
  loc_FA7F0C: Exit Sub
End Sub

Private Sub Form_Resize() 'E75A14
  'Data Table: 575328
  loc_E759BE: Call 0.Method_arg_50 (var_88)
  loc_E759D0: Me.LblFormCaption.Caption = var_88
  loc_E759E9: Me.LblFormCaption.Left = CDbl(0)
  loc_E759F7: Call 0.Method_arg_100 (var_90)
  loc_E75A09: Me.LblFormCaption.Width = var_90
  loc_E75A11: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BAC4
  'Data Table: 575328
  loc_E2BA9C: On Error Goto loc_E2BABB
  loc_E2BAB3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2BABB: ' Referenced from: E2BA9C
  loc_E2BABB: Proc_6_60_E63754(Shift)
  loc_E2BAC0: Exit Sub
End Sub

Private Sub BtnSundryMast_UnknownEvent_9 '12CF158
  'Data Table: 575328
  Dim var_C4 As Variant
  loc_12CEAD8: On Error Goto loc_12CF11A
  loc_12CEAEE: var_D8 = "Y"
  loc_12CEAF7: var_D4 = "+"
  loc_12CEB17: var_C4 = (Trim(MemVar_1F95078) + "ST")
  loc_12CEB20: Call Proc_97_29_1095CA0(CStr(var_C4), "SALES TAX", "Sale Tax")
  loc_12CEB4C: var_D8 = "Y"
  loc_12CEB55: var_D4 = "+"
  loc_12CEB75: var_C4 = (Trim(MemVar_1F95078) + "ADD")
  loc_12CEB7E: Call Proc_97_29_1095CA0(CStr(var_C4), "ADDITION", "Addition", var_D4)
  loc_12CEBAA: var_D8 = "Y"
  loc_12CEBB3: var_D4 = "-"
  loc_12CEBD3: var_C4 = (Trim(MemVar_1F95078) + "ADV")
  loc_12CEBDC: Call Proc_97_29_1095CA0(CStr(var_C4), "ADVANCE", "Advance", var_D4)
  loc_12CEC11: var_D4 = "-"
  loc_12CEC31: var_C4 = (Trim(MemVar_1F95078) + "RDM")
  loc_12CEC3A: Call Proc_97_29_1095CA0(CStr(var_C4), "REDEMPTION", "Redemption", var_D4, "Y")
  loc_12CEC6F: var_D4 = "-"
  loc_12CEC8F: var_C4 = (Trim(MemVar_1F95078) + "DED")
  loc_12CEC98: Call Proc_97_29_1095CA0(CStr(var_C4), "DEDUCTION", "Deduction", var_D4, "Y")
  loc_12CECCD: var_D4 = "-"
  loc_12CECED: var_C4 = (Trim(MemVar_1F95078) + "DIS")
  loc_12CECF6: Call Proc_97_29_1095CA0(CStr(var_C4), "DISCOUNT", "Discount", var_D4, "Y")
  loc_12CED4B: var_C4 = (Trim(MemVar_1F95078) + "NET")
  loc_12CED54: Call Proc_97_29_1095CA0(CStr(var_C4), "NET AMOUNT", "Net Amount", vbNullString, "Y")
  loc_12CED89: var_D4 = "+"
  loc_12CEDA9: var_C4 = (Trim(MemVar_1F95078) + "ROFF")
  loc_12CEDB2: Call Proc_97_29_1095CA0(CStr(var_C4), "ROUND OFF", "Round Off", vbNullString, "Y")
  loc_12CEDE7: var_D4 = "+"
  loc_12CEE07: var_C4 = (Trim(MemVar_1F95078) + "SC")
  loc_12CEE10: Call Proc_97_29_1095CA0(CStr(var_C4), "SURCHARGE", "Sale Tax", vbNullString, "Y")
  loc_12CEE45: var_D4 = "+"
  loc_12CEE65: var_C4 = (Trim(MemVar_1F95078) + "SCH")
  loc_12CEE6E: Call Proc_97_29_1095CA0(CStr(var_C4), "SERVICE CHARGE", "Service Charge", vbNullString, "Y")
  loc_12CEEA3: var_D4 = "+"
  loc_12CEEC3: var_C4 = (Trim(MemVar_1F95078) + "CGSS")
  loc_12CEECC: Call Proc_97_29_1095CA0(CStr(var_C4), "CGST (SALES)", "CGST", vbNullString, "Y")
  loc_12CEF01: var_D4 = "+"
  loc_12CEF21: var_C4 = (Trim(MemVar_1F95078) + "SGSS")
  loc_12CEF2A: Call Proc_97_29_1095CA0(CStr(var_C4), "SGST (SALES)", "SGST", vbNullString, "Y")
  loc_12CEF5F: var_D4 = "+"
  loc_12CEF7F: var_C4 = (Trim(MemVar_1F95078) + "IGSS")
  loc_12CEF88: Call Proc_97_29_1095CA0(CStr(var_C4), "IGST (SALES)", "IGST", vbNullString, "Y")
  loc_12CEFBD: var_D4 = "+"
  loc_12CEFDD: var_C4 = (Trim(MemVar_1F95078) + "CGSP")
  loc_12CEFE6: Call Proc_97_29_1095CA0(CStr(var_C4), "CGST (PURCHASE)", "CGST", vbNullString, "Y")
  loc_12CF01B: var_D4 = "+"
  loc_12CF03B: var_C4 = (Trim(MemVar_1F95078) + "SGSP")
  loc_12CF044: Call Proc_97_29_1095CA0(CStr(var_C4), "SGST (PURCHASE)", "SGST", vbNullString, "Y")
  loc_12CF079: var_D4 = "+"
  loc_12CF099: var_C4 = (Trim(MemVar_1F95078) + "IGSP")
  loc_12CF0A2: Call Proc_97_29_1095CA0(CStr(var_C4), "IGST (PURCHASE)", "IGST", vbNullString, "Y")
  loc_12CF0CE: var_D8 = "Y"
  loc_12CF0D7: var_D4 = vbNullString
  loc_12CF0F7: var_C4 = (Trim(MemVar_1F95078) + "TOT")
  loc_12CF100: Call Proc_97_29_1095CA0(CStr(var_C4), "AMOUNT", "Amount", var_D4, var_D8)
  loc_12CF119: Exit Sub
  loc_12CF11A: ' Referenced from: 12CEAD8
  loc_12CF130: Set var_DC = Err()
  loc_12CF136: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_EC, var_10C)
  loc_12CF141: MsgBox(CVar(var_C8), var_D8, var_D8, var_D4, var_D8)
  loc_12CF154: Exit Sub
End Sub

Public Sub Proc_97_19_DFCEA8
  'Data Table: 575328
  loc_DFCEA4: Exit Sub
End Sub

Public Sub Proc_97_20_10FCA4C(arg_C, arg_10, arg_14, arg_18, arg_1C) '10FCA4C
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_CC As Variant
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_1E8 As Variant
  Dim var_298 As Variant
  Dim var_C8 As Variant
  loc_10FC784: On Error Goto loc_10FC9FA
  loc_10FC790: unk_575357.BeginTrans var_94
  loc_10FC797: var_8A = &HFF
  loc_10FC7A1: var_98 = "SELECT COUNT(*) FROM SUBGROUP WHERE Upper(NAME)='" & arg_10
  loc_10FC7DA: var_E0 = 0
  loc_10FC7F9: unk_575357.Execute var_98 & "' AND SITE_CODE='" & MemVar_1F95078 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C8, -1
  loc_10FC801: var_CC = var_CC.Fields
  loc_10FC809: var_E0 = var_D0.Item(var_D0)
  loc_10FC811: var_E4 = var_E4.Value
  loc_10FC831: If (var_F4 <= 0) Then
  loc_10FC83B:   Call 0.Method_Proc_97_20_10FCA4C8 (var_98, "A/C Name :----->")
  loc_10FC851:   Me.Text1.Text = var_F4 & var_98
  loc_10FC86A:   Me.Text1.Refresh
  loc_10FC8B9:   Proc_183_7_EB17D4(var_268, Now)
  loc_10FC8D2:   var_98 = "Insert Into SUBGROUP (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,areacode,Phone,Mobile,Fax,EMail,Religion,CreditLimit,CreditDays,ActiveYN,CSTNo,LSTNo,PANNo,ITWard_No,Remark,FName,U_Name,U_EntDt,U_AE,TDS_Catg,LogSite_Code) Values ('" & MemVar_1F95078
  loc_10FC8E7:   var_F4 = CVar(var_98 & "','" & arg_C & "','") 'String
  loc_10FC8ED:   var_114 = var_F4 & Trim(arg_10) 
  loc_10FC8F6:   var_124 = var_114 & "','" 
  loc_10FC92D:   var_1E8 = var_124 & Trim(CVar(Proc_183_20_FB48CC(arg_10))) & "','" & CVar(Proc_6_45_EADFB8("HO", 2)) & CVar(arg_14) & "','" & CVar(arg_18) 
  loc_10FC959:   var_298 = var_1E8 & "','" & CVar(arg_1C) & "','','','','','','',0,'','','','',0,0,0,1,'','','','','','','Analysis'," & var_268 & ",'A','','" 
  loc_10FC97A:   unk_575357.Execute CStr(var_298 & CVar(MemVar_1F95078) & "')"), var_2F8, -1
  loc_10FC9C2: End If
  loc_10FC9C8: unk_575357.CommitTrans
  loc_10FC9CF: var_8A = 0
  loc_10FC9DF: Me.Text1.Text = vbNullString
  loc_10FC9F1: Me.Text1.Refresh
  loc_10FC9F9: Exit Sub
  loc_10FC9FA: ' Referenced from: 10FC784
  loc_10FCA00: If (var_8A = &HFF) Then
  loc_10FCA09:   unk_575357.RollbackTrans
  loc_10FCA0E: End If
  loc_10FCA2A: Call 0.Method_arg_2C (var_98, 0, var_F4, var_114)
  loc_10FCA35: MsgBox(CVar(var_98), var_124, var_8A, Err(), var_8A)
  loc_10FCA48: Exit Sub
  loc_10FCA49: StAryRecCopy
End Sub

Public Sub Proc_97_21_117AC60(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '117AC60
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_1B8 As String
  Dim var_1F0 As String
  Dim var_B4 As Variant
  loc_117A928: On Error Goto loc_117AC0E
  loc_117A934: unk_575357.BeginTrans var_94
  loc_117A93B: var_8A = &HFF
  loc_117A94E: var_B4 = Ucase(arg_10)
  loc_117A956: var_D4 = "SELECT COUNT(*) FROM RevMast WHERE UPPER(NAME)='" & var_B4 
  loc_117A9A4: var_C4 = 0
  loc_117A9C3: unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_B4, -1
  loc_117A9CB: var_178 = var_178.Fields
  loc_117A9D3: var_C4 = var_17C.Item(var_17C)
  loc_117A9DB: var_180 = var_180.Value
  loc_117A9FB: If (var_D4 <= 0) Then
  loc_117AA05:   var_184 = "Revenue Name :----->" & arg_10
  loc_117AA12:   Me.Text1.Text = var_184
  loc_117AA27:   Me.Text1.Refresh
  loc_117AA3D:   Proc_6_7_F26918(var_D4, Now)
  loc_117AA56:   var_184 = "Insert Into RevMast (Code,Name,ShortName,ACCode,TaxStru,Site_Code,SysYN,Type,AppMode,FlagAMR,FlagType,DeskCode,PAYTYPE,FieldType,Sundry,RoundOff,BankCommAC,BankCommPer,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES ('" & arg_C
  loc_117AAB1:   var_1B8 = var_184 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','" & MemVar_1F95078 & "','Y','" & arg_20 & "','"
  loc_117AB13:   var_1F0 = var_1B8 & arg_24 & "','" & arg_28 & "','" & arg_2C & "','" & arg_30 & "','" & arg_34 & "','" & arg_38 & "','" & Proc_97_21_117AC60C & "','"
  loc_117AB42:   var_F4 = CVar(var_1F0 & arg_3C & "','" & Proc_97_21_117AC600 & "'," & CStr(Proc_97_21_117AC604) & ",'Analysis',") 'String
  loc_117AB48:   var_114 = var_F4 & var_D4 
  loc_117AB72:   unk_575357.Execute CStr(var_114 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_21C, -1
  loc_117ABD6: End If
  loc_117ABDC: unk_575357.CommitTrans
  loc_117ABE3: var_8A = 0
  loc_117ABF3: Me.Text1.Text = vbNullString
  loc_117AC05: Me.Text1.Refresh
  loc_117AC0D: Exit Sub
  loc_117AC0E: ' Referenced from: 117A928
  loc_117AC14: If (var_8A = &HFF) Then
  loc_117AC1D:   unk_575357.RollbackTrans
  loc_117AC22: End If
  loc_117AC3E: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4, var_114)
  loc_117AC49: MsgBox(CVar(var_184), var_8A, Err(), var_D4, var_8A)
  loc_117AC5C: Exit Sub
End Sub

Public Sub Proc_97_22_108FD28(arg_C, arg_10, arg_14, arg_18, arg_1C) '108FD28
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_B4 As Variant
  loc_108FAC0: On Error Goto loc_108FCD9
  loc_108FACC: unk_575357.BeginTrans var_94
  loc_108FAD3: var_8A = &HFF
  loc_108FAE6: var_B4 = Ucase(arg_10)
  loc_108FAEE: var_D4 = "SELECT COUNT(*) FROM TelCallType WHERE UPPER(CallType)='" & var_B4 
  loc_108FB3C: var_C4 = 0
  loc_108FB5B: unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_B4, -1
  loc_108FB63: var_178 = var_178.Fields
  loc_108FB6B: var_C4 = var_17C.Item(var_17C)
  loc_108FB73: var_180 = var_180.Value
  loc_108FB93: If (var_D4 <= 0) Then
  loc_108FB9D:   var_184 = "Revenue Name :----->" & arg_10
  loc_108FBAA:   Me.Text1.Text = var_184
  loc_108FBB9:   Set var_178 = Me.Text1
  loc_108FBBF:   var_178.Refresh
  loc_108FBDB:   var_184 = "Insert Into TelCallType (Code,CallType,ShortName,ACCode,TaxStru,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & arg_C
  loc_108FC28:   var_F4 = CVar(var_184 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','" & MemVar_1F95078 & "','Analysis',") 'String
  loc_108FC39:   Proc_6_7_F26918(var_D4, Now, var_F4, var_1C0)
  loc_108FC41:   var_114 = -1 & var_D4 
  loc_108FC6B:   unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & ",'A','" & CVar(MemVar_1F95078) & "')"), var_178, var_D4
  loc_108FCA1: End If
  loc_108FCA7: unk_575357.CommitTrans
  loc_108FCAE: var_8A = 0
  loc_108FCBE: Me.Text1.Text = vbNullString
  loc_108FCD0: Me.Text1.Refresh
  loc_108FCD8: Exit Sub
  loc_108FCD9: ' Referenced from: 108FAC0
  loc_108FCDF: If (var_8A = &HFF) Then
  loc_108FCE8:   unk_575357.RollbackTrans
  loc_108FCED: End If
  loc_108FD03: Set var_178 = Err()
  loc_108FD09: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4)
  loc_108FD14: MsgBox(CVar(var_184), var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078), var_8A, var_8A, )
  loc_108FD27: Exit Sub
End Sub

Public Sub Proc_97_23_122FB50(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '122FB50
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_E4 As Variant
  Dim var_98 As String
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_D0 As Variant
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_1B8 As Variant
  Dim var_F8 As Variant
  Dim var_1F8 As Variant
  Dim var_324 As Variant
  Dim var_CC As Variant
  loc_122F6AC: On Error Goto loc_122FB01
  loc_122F6B8: unk_575357.BeginTrans var_94
  loc_122F6BF: var_8A = &HFF
  loc_122F6CA: If (arg_20 = "N") Then
  loc_122F6D3:   var_E4 = 0
  loc_122F70C:   var_A8 = "SELECT COUNT(*) FROM GodownMast WHERE Code='" & arg_C & "' and Site_Code='" & MemVar_1F95078 & "' and LogSite_Code='" & MemVar_1F95078
  loc_122F71C:   unk_575357.Execute var_A8 & "'", var_CC, -1
  loc_122F724:   var_D0 = var_D0.Fields
  loc_122F72C:   var_E4 = var_D4.Item(var_D4)
  loc_122F734:   var_E8 = var_E8.Value
  loc_122F763:   If (var_F8 <= 0) Then
  loc_122F76D:     var_98 = "Godown Name :----->" & arg_10
  loc_122F77A:     Me.Text1.Text = "SELECT COUNT(*) FROM GodownMast WHERE Code='" & arg_C
  loc_122F789:     Set var_D0 = Me.Text1
  loc_122F78F:     var_D0.Refresh
  loc_122F7B9:     var_A0 = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & arg_C & "','" & arg_10
  loc_122F7D1:     Proc_6_7_F26918(var_F8, Now, CVar(var_A0 & "','Analysis',"), var_1F8)
  loc_122F7D9:     var_128 = -1 & var_F8 
  loc_122F829:     unk_575357.Execute CStr(var_128 & ",'A','" & CVar(arg_24) & "','Y','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F95078) & "')"), var_D0, var_F8
  loc_122F857:   End If
  loc_122F857: End If
  loc_122F867: var_CC = Ucase(arg_10)
  loc_122F86F: var_F8 = "SELECT COUNT(*) FROM Depart WHERE UPPER(NAME)='" & var_CC 
  loc_122F8BD: var_E4 = 0
  loc_122F8DC: unk_575357.Execute CStr(var_F8 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "' AND LogSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_CC, -1
  loc_122F8E4: var_D0 = var_D0.Fields
  loc_122F8EC: var_E4 = var_D4.Item(var_D4)
  loc_122F8F4: var_E8 = var_E8.Value
  loc_122F914: If (var_F8 <= 0) Then
  loc_122F91E:   var_98 = "Department Name :----->" & arg_10
  loc_122F92B:   Me.Text1.Text = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & arg_C
  loc_122F93A:   Set var_D0 = Me.Text1
  loc_122F940:   var_D0.Refresh
  loc_122F95C:   var_98 = "Insert Into Depart (Code,Name,Site_Code,KotYn,POS,U_Name,U_EntDt,U_AE,RestType,OutletYN,ShortName,LinkToRoom,RateInclTax,DiscApp,Roff,BackColor,LogSite_Code,TokenPrint) VALUES ('" & arg_C
  loc_122F99B:   var_118 = CVar(var_98 & "','" & arg_10 & "','" & MemVar_1F95078 & "','" & arg_14 & "','" & arg_18 & "','Analysis',") 'String
  loc_122F9AC:   Proc_6_7_F26918(var_F8, Now, var_118, var_388)
  loc_122F9B4:   var_128 = -1 & var_F8 
  loc_122F9ED:   var_1B8 = var_F8 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & ",'A','" & CVar(arg_1C) & "','" & CVar(arg_20) & "','" & CVar(arg_24) 
  loc_122FA56:   var_324 = var_1B8 & "','" & CVar(arg_28) & "','" & CVar(arg_2C) & "','" & CVar(arg_30) & "','" & CVar(arg_34) & "'," & CVar(arg_38) & ",'" 
  loc_122FA77:   unk_575357.Execute CStr(var_324 & CVar(MemVar_1F95078) & "','')"), var_D0, var_F8
  loc_122FAC9: End If
  loc_122FACF: unk_575357.CommitTrans
  loc_122FAD6: var_8A = 0
  loc_122FAE6: Me.Text1.Text = vbNullString
  loc_122FAF8: Me.Text1.Refresh
  loc_122FB00: Exit Sub
  loc_122FB01: ' Referenced from: 122F6AC
  loc_122FB07: If (var_8A = &HFF) Then
  loc_122FB10:   unk_575357.RollbackTrans
  loc_122FB15: End If
  loc_122FB2B: Set var_D0 = Err()
  loc_122FB31: Call 0.Method_arg_2C (var_98, 0, var_F8, var_118)
  loc_122FB3C: MsgBox(CVar(var_98), var_F8 & "' AND SITE_CODE='" & CVar(MemVar_1F95078), var_8A, var_8A, )
  loc_122FB4F: Exit Sub
End Sub

Public Sub Proc_97_24_11AA384(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '11AA384
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As Variant
  Dim var_100 As Fields15
  Dim var_104 As Field20
  Dim var_90 As Recordset15
  Dim var_B8 As Variant
  Dim var_88 As Long
  Dim var_108 As String
  Dim var_10C As String
  Dim var_11C As Variant
  Dim var_26C As Variant
  Dim var_300 As Variant
  loc_11A9FDC: On Error Goto loc_11AA334
  loc_11A9FE8: unk_575357.BeginTrans var_98
  loc_11A9FEF: var_8A = &HFF
  loc_11AA002: var_B8 = Ucase(arg_10)
  loc_11AA00A: var_D8 = "SELECT COUNT(*) FROM ACGROUP WHERE UPPER(GROUPNAME)='" & var_B8 
  loc_11AA02A: var_C8 = 0
  loc_11AA049: unk_575357.Execute CStr(var_D8 & "' AND LOGSITE_CODE='HO'  AND SITE_CODE='HO'"), var_B8, -1
  loc_11AA059: var_C8 = var_100.Item(var_100)
  loc_11AA061: var_104 = var_104.Value
  loc_11AA081: If (var_D8 <= 0) Then
  loc_11AA09A:   unk_575357.Execute "SELECT MAX(ID) AS MAXID FROM ACGROUP", var_B8, -1
  loc_11AA0A5:   Set var_90 = var_FC.Fields
  loc_11AA0C2:   If (var_90.RecordCount > 0) Then
  loc_11AA0D4:     var_FC = var_90.Fields
  loc_11AA0EB:     Proc_6_39_E7D3A0(var_D8, CVar(var_FC.Item("MaxId")), var_FC)
  loc_11AA0F8:     var_F8 = (var_D8 + 1)
  loc_11AA0FE:     var_88 = CLng(var_D8 & "' AND LOGSITE_CODE='HO'  AND SITE_CODE='HO'")
  loc_11AA110:   Else
  loc_11AA115:     var_88 = 1
  loc_11AA118:   End If
  loc_11AA11F:   var_108 = "Group Name :----->" & arg_10
  loc_11AA12C:   Me.Text1.Text = var_108
  loc_11AA13B:   Set var_FC = Me.Text1
  loc_11AA141:   var_FC.Refresh
  loc_11AA15E:   var_108 = CStr(var_88)
  loc_11AA162:   var_10C = "Insert Into ACGROUP (ID,GroupCode,GroupName,GroupNameBiLang,Site_Code,GroupNature,Nature,MainGrCode,SubLedYN,BlOrd,AliasYN,SysGroup,GroupHelp,TradingYN,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (" & var_108
  loc_11AA169:   var_D8 = CVar(var_10C & ",'HO") 'String
  loc_11AA17F:   var_F8 = var_D8 & Trim(arg_C) 
  loc_11AA188:   var_11C = var_F8 & "','" 
  loc_11AA213:   var_26C = var_11C & Trim(arg_10) & "','','HO','" & Trim(arg_14) & "','" & Trim(arg_18) & "','" & Trim(arg_1C) & "','N'," & CVar(arg_20) 
  loc_11AA250:   var_300 = CVar(Proc_183_20_FB48CC(CStr(Trim(arg_10)), var_26C & ",'N','" & CVar(arg_24) & "','", var_3E4, -1, var_FC)) 'String
  loc_11AA281:   Proc_6_7_F26918(var_390, Now, var_88 & var_300 & "','" & CVar(arg_28) & "','Analysis',")
  loc_11AA2A0:   unk_575357.Execute CStr(var_88 & var_390 & ",'A','HO')"), var_D8, var_8A
  loc_11AA2F4: End If
  loc_11AA2FA: unk_575357.CommitTrans
  loc_11AA301: var_8A = 0
  loc_11AA311: Me.Text1.Text = vbNullString
  loc_11AA323: Me.Text1.Refresh
  loc_11AA330: Set var_90 = Nothing
  loc_11AA333: Exit Sub
  loc_11AA334: ' Referenced from: 11A9FDC
  loc_11AA33A: If (var_8A = &HFF) Then
  loc_11AA343:   unk_575357.RollbackTrans
  loc_11AA348: End If
  loc_11AA35E: Set var_FC = Err()
  loc_11AA364: Call 0.Method_arg_2C (var_108, 0, var_D8)
  loc_11AA36F: MsgBox(CVar(var_108), var_F8, var_11C, var_8A, )
  loc_11AA382: Exit Sub
End Sub

Public Sub Proc_97_25_137291C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '137291C
  'Data Table: 575328
  Dim var_D4 As Variant
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim unk_575357 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_10C As String
  Dim var_8A As Integer
  Dim var_134 As String
  Dim var_16C As String
  Dim var_108 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_E8 As Variant
  Dim var_BC As Variant
  loc_1372158: On Error Goto loc_13728CC
  loc_1372161: var_D4 = 0
  loc_137219C: unk_575357.Execute "SELECT COUNT(*) FROM VoucherCat WHERE Category='" & arg_C & "' And NCat='" & arg_10 & "'", var_BC, -1
  loc_13721A4: var_C0 = var_C0.Fields
  loc_13721AC: var_D4 = var_C4.Item(var_C4)
  loc_13721B4: var_D8 = var_D8.Value
  loc_13721DF: If (var_E8 <= 0) Then
  loc_1372214:   unk_575357.Execute "Insert Into VoucherCat (Category,NCat,Site_Code,LogSite_Code) VALUES ('" & arg_C & "','" & arg_10 & "','HO','HO')", var_BC, -1
  loc_137222A: End If
  loc_1372230: var_D4 = 0
  loc_1372269: var_10C = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1372279: unk_575357.Execute var_10C & "'", var_BC, -1
  loc_1372281: var_C0 = var_C0.Fields
  loc_1372289: var_D4 = var_C4.Item(var_C4)
  loc_1372291: var_D8 = var_D8.Value
  loc_13722C0: If (var_E8 <= 0) Then
  loc_13722CA:   var_90 = "Voucher Type :----->" & arg_1C
  loc_13722D7:   Me.Text1.Text = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & arg_14
  loc_13722E6:   Set var_C0 = Me.Text1
  loc_13722EC:   var_C0.Refresh
  loc_13722FD:   unk_575357.BeginTrans var_114
  loc_137231B:   var_90 = "Insert Into Voucher_Type (Category,NCat,V_Type,Site_Code,Contratype,Description,Description_Help,Short_Name,Number_Method,RestCode,Separate_Narr,Common_Narr,ChqNo,ChqDt,ClgDt,DefaultCrAc,DefaultDrAc,FirstDrCr,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES ('" & arg_C
  loc_1372376:   var_134 = var_90 & "','" & arg_10 & "','" & arg_14 & "','" & MemVar_1F95070 & "','" & arg_18 & "','" & arg_1C & "','" & arg_1C & "','"
  loc_13723D8:   var_16C = var_134 & arg_20 & "','" & arg_24 & "','" & arg_28 & "','" & arg_2C & "','" & arg_30 & "','" & Proc_97_25_137291C0 & "','" & Proc_97_25_137291C4 & "','"
  loc_1372416:   var_BC = Now
  loc_1372421:   Proc_6_7_F26918(var_E8, var_BC, CVar(var_16C & Proc_97_25_137291C8 & "','" & arg_38 & "','" & arg_3C & "','" & arg_34 & "','Analysis',"), var_1EC, -1)
  loc_1372432:   var_1A8 = var_C0 & var_E8 & ",'A','" 
  loc_137243C:   var_1B8 = var_1A8 & CVar(MemVar_1F95078) 
  loc_1372453:   unk_575357.Execute CStr(var_1B8 & "')"), &HFF, var_E8
  loc_13724BF:   unk_575357.CommitTrans
  loc_13724C6:   var_8A = 0
  loc_13724D6:   Me.Text1.Text = vbNullString
  loc_13724E2:   Set var_C0 = Me.Text1
  loc_13724E8:   var_C0.Refresh
  loc_13724F0: End If
  loc_13724F8: If (arg_14 = "F_AO") Then
  loc_1372533:   var_9C = "SELECT COUNT(*) FROM Voucher_Prefix WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND logSITE_CODE='"
  loc_1372541:   var_E8 = CVar(var_9C & MemVar_1F95078 & "' AND DATE_FROM=DATEADD(day,-1,") 'String
  loc_137254F:   Proc_6_7_F26918(var_BC, MemVar_1F950F4, var_E8, var_1A8, -1, var_C0, var_C4)
  loc_137256E:   unk_575357.Execute CStr(0 & var_BC & ")"), var_D8, var_1B8
  loc_1372576:   var_8A = var_C0.Fields
  loc_137257E:   var_E8 = var_C4.Item(var_C0)
  loc_1372586:    = var_D8.Value
  loc_13725BD:   If (var_1B8 <= 0) Then
  loc_13725C9:     unk_575357.BeginTrans var_114
  loc_13725F5:     var_98 = "Insert Into Voucher_PREFIX (V_Type,Site_Code,DATE_FROM,DATE_TO,PREFIX,U_EntDt,LogSite_Code) VALUES ('" & arg_14 & "','" & MemVar_1F95070
  loc_13725FC:     var_E8 = CVar(var_98 & "',DATEADD(day,-1,") 'String
  loc_137260A:     Proc_6_7_F26918(var_BC, MemVar_1F950F4, var_E8, var_2DC)
  loc_1372612:     var_108 = -1 & var_BC 
  loc_137261B:     var_198 = 0 & var_BC & ")," 
  loc_137262A:     Proc_6_7_F26918(var_1A8, MemVar_1F950FC, var_198)
  loc_137266D:     Proc_6_7_F26918(var_24C, Date)
  loc_137269F:     unk_575357.Execute CStr(var_C0 & var_1A8 & ",'" & Year(MemVar_1F950F4) & "'," & var_24C & ",'" & CVar(MemVar_1F95078) & "')"), &HFF, 
  loc_13726DD:     unk_575357.CommitTrans
  loc_13726E4:     var_8A = 0
  loc_13726E7:   End If
  loc_13726EA: Else
  loc_1372722:   var_9C = "SELECT COUNT(*) FROM Voucher_Prefix WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND logSITE_CODE='"
  loc_137273E:   Proc_6_7_F26918(var_BC, MemVar_1F950F4, CVar(var_9C & MemVar_1F95078 & "' AND DATE_FROM="), var_198, -1, var_C0)
  loc_1372754:   unk_575357.Execute CStr(var_C4 & var_BC), 0, var_D8
  loc_137275C:   var_1A8 = var_C0.Fields
  loc_1372764:    = var_C4.Item(var_8A)
  loc_137276C:    = var_D8.Value
  loc_13727A1:   If (var_1A8 <= 0) Then
  loc_13727AD:     unk_575357.BeginTrans var_114
  loc_13727CB:     var_90 = "Insert Into Voucher_PREFIX (V_Type,Site_Code,DATE_FROM,DATE_TO,PREFIX,U_EntDt,LogSite_Code) VALUES ('" & arg_14
  loc_13727E0:     var_E8 = CVar(var_90 & "','" & MemVar_1F95070 & "',") 'String
  loc_13727EE:     Proc_6_7_F26918(var_BC, MemVar_1F950F4, var_E8, var_2DC)
  loc_13727F6:     var_108 = -1 & var_BC 
  loc_13727FF:     var_198 = var_C4 & var_BC & "," 
  loc_137280E:     Proc_6_7_F26918(var_1A8, MemVar_1F950FC, var_198)
  loc_1372851:     Proc_6_7_F26918(var_24C, Date)
  loc_1372883:     unk_575357.Execute CStr(var_C0 & var_1A8 & ",'" & Year(MemVar_1F950F4) & "'," & var_24C & ",'" & CVar(MemVar_1F95078) & "')"), &HFF, 
  loc_13728C1:     unk_575357.CommitTrans
  loc_13728C8:     var_8A = 0
  loc_13728CB:   End If
  loc_13728CB: End If
  loc_13728CB: Exit Sub
  loc_13728CC: ' Referenced from: 1372158
  loc_13728D2: If (var_8A = &HFF) Then
  loc_13728DB:   unk_575357.RollbackTrans
  loc_13728E0: End If
  loc_13728F6: Set var_C0 = Err()
  loc_13728FC: Call 0.Method_arg_2C (var_90, 0, var_E8)
  loc_1372907: MsgBox(CVar(var_90), var_C4 & CVar(var_90), var_198, var_8A, )
  loc_137291A: Exit Sub
End Sub

Public Sub Proc_97_26_1114A0C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '1114A0C
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_13C As Fields15
  Dim var_140 As Field20
  Dim var_144 As String
  Dim var_1C4 As Variant
  Dim var_304 As Variant
  Dim var_B4 As Variant
  loc_111472C: On Error Goto loc_11149BD
  loc_1114738: unk_575357.BeginTrans var_94
  loc_111473F: var_8A = &HFF
  loc_1114752: var_B4 = Ucase(arg_10)
  loc_111475A: var_D4 = "SELECT COUNT(*) FROM ItemCatMast WHERE UPPER(NAME)='" & var_B4 
  loc_1114791: var_C4 = 0
  loc_11147B0: unk_575357.Execute CStr(var_D4 & "' AND LEFT(CODE,2)='" & CVar(MemVar_1F95078) & "'"), var_B4, -1
  loc_11147B8: var_138 = var_138.Fields
  loc_11147C0: var_C4 = var_13C.Item(var_13C)
  loc_11147C8: var_140 = var_140.Value
  loc_11147E8: If (var_D4 <= 0) Then
  loc_11147F2:   var_144 = "Item Category Name :----->" & arg_10
  loc_11147FF:   Me.Text1.Text = var_144
  loc_111480E:   Set var_138 = Me.Text1
  loc_1114814:   var_138.Refresh
  loc_1114830:   var_144 = "Insert Into ItemCatMast (Code,Name,RoundOff,AcName,OutletYN,U_Name,U_EntDt,U_AE,Flag,CatType,RestCode,DrCr,RevCode,TaxStru,sITE_cODE,LOGSITE_CODE) VALUES ('" & arg_C
  loc_111486F:   var_F4 = CVar(var_144 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','Analysis',") 'String
  loc_1114880:   Proc_6_7_F26918(var_D4, Now, var_F4, var_348)
  loc_1114888:   var_114 = -1 & var_D4 
  loc_11148C1:   var_1C4 = var_D4 & "' AND LEFT(CODE,2)='" & CVar(MemVar_1F95078) & ",'A','" & CVar(arg_20) & "','" & CVar(arg_24) & "','" & CVar(arg_28) 
  loc_1114920:   var_304 = var_1C4 & "','" & CVar(arg_2C) & "','" & CVar(arg_30) & "','" & CVar(arg_34) & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F95078) 
  loc_1114937:   unk_575357.Execute CStr(var_304 & "')"), var_138, var_D4
  loc_1114985: End If
  loc_111498B: unk_575357.CommitTrans
  loc_1114992: var_8A = 0
  loc_11149A2: Me.Text1.Text = vbNullString
  loc_11149B4: Me.Text1.Refresh
  loc_11149BC: Exit Sub
  loc_11149BD: ' Referenced from: 111472C
  loc_11149C3: If (var_8A = &HFF) Then
  loc_11149CC:   unk_575357.RollbackTrans
  loc_11149D1: End If
  loc_11149E7: Set var_138 = Err()
  loc_11149ED: Call 0.Method_arg_2C (var_144, 0, var_D4, var_F4)
  loc_11149F8: MsgBox(CVar(var_144), var_D4 & "' AND LEFT(CODE,2)='" & CVar(MemVar_1F95078), var_8A, var_8A, )
  loc_1114A0B: Exit Sub
End Sub

Public Sub Proc_97_27_10EB9CC(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '10EB9CC
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_248 As Variant
  Dim var_B4 As Variant
  loc_10EB710: On Error Goto loc_10EB97D
  loc_10EB71C: unk_575357.BeginTrans var_94
  loc_10EB723: var_8A = &HFF
  loc_10EB736: var_B4 = Ucase(arg_C)
  loc_10EB73E: var_D4 = "SELECT COUNT(*) FROM TaxStru WHERE CODE='" & var_B4 
  loc_10EB78C: var_C4 = 0
  loc_10EB7AB: unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_B4, -1
  loc_10EB7B3: var_178 = var_178.Fields
  loc_10EB7BB: var_C4 = var_17C.Item(var_17C)
  loc_10EB7C3: var_180 = var_180.Value
  loc_10EB7E3: If (var_D4 <= 0) Then
  loc_10EB7ED:   var_184 = "Tax Structure Name :----->" & arg_10
  loc_10EB7FA:   Me.Text1.Text = var_184
  loc_10EB80F:   Me.Text1.Refresh
  loc_10EB825:   Proc_6_7_F26918(var_D4, Now)
  loc_10EB83E:   var_184 = "Insert Into TaxStru (Code,Name,Sno,TaxCode,Nature,U_Name,U_EntDt,U_AE,Rate,Limit,Site_Code,CondApp,LogSite_Code) VALUES ('" & arg_C
  loc_10EB883:   var_F4 = CVar(var_184 & "','" & arg_10 & "'," & CStr(arg_14) & ",'" & arg_18 & "','" & arg_1C & "','Analysis',") 'String
  loc_10EB889:   var_114 = var_F4 & var_D4 
  loc_10EB8EA:   var_248 = var_114 & ",'A'," & CVar(arg_20) & ",'" & CVar(arg_24) & "','" & CVar(MemVar_1F95078) & "','" & CVar(arg_28) & "','" & CVar(MemVar_1F95078) 
  loc_10EB901:   unk_575357.Execute CStr(var_248 & "')"), var_28C, -1
  loc_10EB945: End If
  loc_10EB94B: unk_575357.CommitTrans
  loc_10EB952: var_8A = 0
  loc_10EB962: Me.Text1.Text = vbNullString
  loc_10EB974: Me.Text1.Refresh
  loc_10EB97C: Exit Sub
  loc_10EB97D: ' Referenced from: 10EB710
  loc_10EB983: If (var_8A = &HFF) Then
  loc_10EB98C:   unk_575357.RollbackTrans
  loc_10EB991: End If
  loc_10EB9AD: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4, var_114)
  loc_10EB9B8: MsgBox(CVar(var_184), var_8A, Err(), var_D4, var_8A)
  loc_10EB9CB: Exit Sub
End Sub

Public Sub Proc_97_28_10178A8(arg_C) '10178A8
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_F8 As Variant
  Dim var_FC As Fields15
  Dim var_100 As Field20
  Dim var_104 As String
  Dim var_114 As Variant
  Dim var_B4 As Variant
  loc_10176B0: On Error Goto loc_1017858
  loc_10176BC: unk_575357.BeginTrans var_94
  loc_10176C3: var_8A = &HFF
  loc_10176D6: var_B4 = Ucase(arg_C)
  loc_10176DE: var_D4 = "SELECT COUNT(*) FROM UnitMast WHERE UPPER(NAME)='" & var_B4 
  loc_10176FE: var_C4 = 0
  loc_101771D: unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='HO' AND LOGSITE_CODE='HO'"), var_B4, -1
  loc_1017725: var_F8 = var_F8.Fields
  loc_101772D: var_C4 = var_FC.Item(var_FC)
  loc_1017735: var_100 = var_100.Value
  loc_1017755: If (var_D4 <= 0) Then
  loc_101775F:   var_104 = "Unit Name :----->" & arg_C
  loc_101776C:   Me.Text1.Text = var_104
  loc_101777B:   Set var_F8 = Me.Text1
  loc_1017781:   var_F8.Refresh
  loc_101779D:   var_104 = "Insert Into UnitMast (Name,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) VALUES ('" & arg_C
  loc_10177A4:   var_F4 = CVar(var_104 & "','Analysis',") 'String
  loc_10177B5:   Proc_6_7_F26918(var_D4, Now, var_F4, var_1A8)
  loc_10177BD:   var_114 = -1 & var_D4 
  loc_10177FA:   unk_575357.Execute CStr(var_114 & ",'A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_F8, var_D4
  loc_1017820: End If
  loc_1017826: unk_575357.CommitTrans
  loc_101782D: var_8A = 0
  loc_101783D: Me.Text1.Text = vbNullString
  loc_101784F: Me.Text1.Refresh
  loc_1017857: Exit Sub
  loc_1017858: ' Referenced from: 10176B0
  loc_101785E: If (var_8A = &HFF) Then
  loc_1017867:   unk_575357.RollbackTrans
  loc_101786C: End If
  loc_1017882: Set var_F8 = Err()
  loc_1017888: Call 0.Method_arg_2C (var_104, 0, var_D4, var_F4)
  loc_1017893: MsgBox(CVar(var_104), var_114, var_8A, var_8A, )
  loc_10178A6: Exit Sub
End Sub

Public Sub Proc_97_29_1095CA0(arg_C, arg_10, arg_14, arg_18, arg_1C) '1095CA0
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_1C4 As Variant
  Dim var_B4 As Variant
  loc_1095A30: On Error Goto loc_1095C4E
  loc_1095A3C: unk_575357.BeginTrans var_94
  loc_1095A43: var_8A = &HFF
  loc_1095A56: var_B4 = Ucase(arg_10)
  loc_1095A5E: var_D4 = "SELECT COUNT(*) FROM SundryMast WHERE UPPER(NAME)='" & var_B4 
  loc_1095AAC: var_C4 = 0
  loc_1095ACB: unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_B4, -1
  loc_1095AD3: var_178 = var_178.Fields
  loc_1095ADB: var_C4 = var_17C.Item(var_17C)
  loc_1095AE3: var_180 = var_180.Value
  loc_1095B03: If (var_D4 <= 0) Then
  loc_1095B0D:   var_184 = "Sundry Master Name :----->" & arg_10
  loc_1095B1A:   Me.Text1.Text = var_184
  loc_1095B29:   Set var_178 = Me.Text1
  loc_1095B2F:   var_178.Refresh
  loc_1095B4B:   var_184 = "Insert Into SundryMast (Code,Name,Nature,CalcSign,SysYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) VALUES ('" & arg_C
  loc_1095B8A:   var_F4 = CVar(var_184 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','Analysis',") 'String
  loc_1095B9B:   Proc_6_7_F26918(var_D4, Now, var_F4, var_1D8)
  loc_1095BA3:   var_114 = -1 & var_D4 
  loc_1095BD2:   var_1C4 = var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & ",'A','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1095BE0:   unk_575357.Execute CStr(var_1C4), var_178, var_D4
  loc_1095C16: End If
  loc_1095C1C: unk_575357.CommitTrans
  loc_1095C23: var_8A = 0
  loc_1095C33: Me.Text1.Text = vbNullString
  loc_1095C45: Me.Text1.Refresh
  loc_1095C4D: Exit Sub
  loc_1095C4E: ' Referenced from: 1095A30
  loc_1095C54: If (var_8A = &HFF) Then
  loc_1095C5D:   unk_575357.RollbackTrans
  loc_1095C62: End If
  loc_1095C78: Set var_178 = Err()
  loc_1095C7E: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4)
  loc_1095C89: MsgBox(CVar(var_184), var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078), var_8A, var_8A, )
  loc_1095C9C: Exit Sub
  loc_1095C9D: StAryRecCopy
End Sub

Public Sub Proc_97_30_1102584(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30) '1102584
  'Data Table: 575328
  Dim unk_575357 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_1C0 As String
  Dim var_B4 As Variant
  loc_11022B8: On Error Goto loc_1102532
  loc_11022C4: unk_575357.BeginTrans var_94
  loc_11022CB: var_8A = &HFF
  loc_11022DE: var_B4 = Ucase(arg_C)
  loc_11022E6: var_D4 = "SELECT COUNT(*) FROM SundryTypeFix WHERE UPPER(SundryCode)='" & var_B4 
  loc_1102334: var_C4 = 0
  loc_1102353: unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_B4, -1
  loc_110235B: var_178 = var_178.Fields
  loc_1102363: var_C4 = var_17C.Item(var_17C)
  loc_110236B: var_180 = var_180.Value
  loc_110238B: If (var_D4 <= 0) Then
  loc_1102395:   var_184 = "Sundry Code :----->" & arg_C
  loc_11023A2:   Me.Text1.Text = var_184
  loc_11023B1:   Set var_178 = Me.Text1
  loc_11023B7:   var_178.Refresh
  loc_11023D3:   var_184 = "Insert Into SundryTypeFix (SundryCode,SNo,DispName,CalcFormula,PerOrAmt,RoundOff,Nature,CalcSign,SysYN,Grp,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & arg_C
  loc_110243A:   var_1C0 = var_184 & "'," & CStr(arg_10) & ",'" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','" & arg_20 & "','" & arg_24 & "','" & arg_28
  loc_110246B:   var_F4 = CVar(var_1C0 & "','" & arg_2C & "','" & arg_30 & "','" & MemVar_1F95078 & "',") 'String
  loc_110247C:   Proc_6_7_F26918(var_D4, Date, var_F4, var_1EC)
  loc_1102484:   var_114 = -1 & var_D4 
  loc_11024AE:   unk_575357.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & ",'A','" & CVar(MemVar_1F95078) & "')"), var_178, var_D4
  loc_11024FA: End If
  loc_1102500: unk_575357.CommitTrans
  loc_1102507: var_8A = 0
  loc_1102517: Me.Text1.Text = vbNullString
  loc_1102529: Me.Text1.Refresh
  loc_1102531: Exit Sub
  loc_1102532: ' Referenced from: 11022B8
  loc_1102538: If (var_8A = &HFF) Then
  loc_1102541:   unk_575357.RollbackTrans
  loc_1102546: End If
  loc_110255C: Set var_178 = Err()
  loc_1102562: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4)
  loc_110256D: MsgBox(CVar(var_184), var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F95078), var_8A, var_8A, )
  loc_1102580: Exit Sub
End Sub
