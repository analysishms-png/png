VERSION 5.00
Begin VB.Form FaCurrBalUpdate
  Caption = "Current Balance Updation"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 405
  ClientWidth = 7335
  ClientHeight = 3960
  LockControls = -1  'True
  Moveable = 0   'False
  Begin Frame FrOPTransfer
    Caption = "Transfer/Update Opennig From Given Databse:"
    BackColor = &HC0FFFF&
    Left = 1740
    Top = 1170
    Width = 12090
    Height = 5475
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdBanquetTrans
      Caption = "Banquet Transfer/Update"
      Left = 1410
      Top = 3615
      Width = 3180
      Height = 600
      TabIndex = 23
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdReserveTrans
      Caption = "Reservation Transfer/Update"
      Left = 1410
      Top = 2955
      Width = 3180
      Height = 600
      TabIndex = 11
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Frame FrStockTransfer
      Caption = "Openning Transfer"
      BackColor = &HFFC0C0&
      Left = 6510
      Top = 615
      Width = 3990
      Height = 3585
      TabIndex = 3
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Begin CheckBox ChkGodown
        Caption = "Kitchen"
        Index = 0
        Left = 885
        Top = 405
        Width = 2145
        Height = 285
        TabIndex = 10
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "Main Store"
        Index = 1
        Left = 885
        Top = 720
        Width = 1260
        Height = 285
        TabIndex = 9
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "Sub Store"
        Index = 2
        Left = 885
        Top = 1035
        Width = 2145
        Height = 285
        TabIndex = 8
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "Consumable Store"
        Index = 3
        Left = 885
        Top = 1350
        Width = 2145
        Height = 285
        TabIndex = 7
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "House Keeping"
        Index = 4
        Left = 885
        Top = 1665
        Width = 2145
        Height = 285
        TabIndex = 6
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CommandButton CmdSTOPTransfer
        Caption = "Stock Transfer/Update"
        Left = 375
        Top = 2430
        Width = 3180
        Height = 600
        TabIndex = 5
        BeginProperty Font
          Name = "Monotype Corsiva"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = -1 'True
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkFifo
        Caption = "FIFO"
        ForeColor = &HFF&
        Left = 2190
        Top = 720
        Width = 840
        Height = 285
        TabIndex = 4
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin CommandButton CmdOPTransfer
      Caption = "Ledger Transfer/Update"
      Left = 1410
      Top = 2295
      Width = 3180
      Height = 600
      TabIndex = 2
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxtDatabase
      Left = 1425
      Top = 990
      Width = 3180
      Height = 300
      TabIndex = 1
    End
  End
  Begin CheckBox Check1
    Caption = "Accounts"
    Index = 1
    BackColor = &HFFFFC0&
    ForeColor = &HC00000&
    Left = 2520
    Top = 1680
    Width = 1440
    Height = 345
    TabIndex = 17
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
  Begin Frame Frame1
    Caption = "Statistics"
    BackColor = &HFFC0C0&
    ForeColor = &H40C0&
    Left = 2520
    Top = 2550
    Width = 10785
    Height = 720
    TabIndex = 12
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin Label Label6
      Caption = "1233"
      ForeColor = &HFF&
      Left = 4650
      Top = 240
      Width = 780
      Height = 285
      Visible = 0   'False
      TabIndex = 16
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
    Begin Label Label5
      Caption = "1222"
      ForeColor = &HFF&
      Left = 1650
      Top = 240
      Width = 780
      Height = 285
      Visible = 0   'False
      TabIndex = 15
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
    Begin Label Label4
      Caption = "Processing"
      Index = 1
      ForeColor = &HFFFFFF&
      Left = 2880
      Top = 240
      Width = 1455
      Height = 285
      Visible = 0   'False
      TabIndex = 14
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
    Begin Label Label4
      Caption = "Total Item"
      Index = 0
      ForeColor = &HFFFFFF&
      Left = -15
      Top = 240
      Width = 1425
      Height = 285
      Visible = 0   'False
      TabIndex = 13
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
  End
  Begin DataCombo TXT_ACCOUNT
    Left = 4035
    Top = 1680
    Width = 4575
    Height = 360
    Visible = 0   'False
    TabIndex = 18
  End
  Begin BtnEnh CmdExit
    Left = 6885
    Top = 4815
    Width = 2295
    Height = 930
    TabIndex = 19
  End
  Begin BtnEnh Command1
    Left = 4560
    Top = 4770
    Width = 2295
    Height = 930
    TabIndex = 20
  End
  Begin Label Label1
    Caption = "Label1"
    ForeColor = &HFF00FF&
    Left = 2520
    Top = 3870
    Width = 10815
    Height = 390
    Visible = 0   'False
    TabIndex = 22
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
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

Attribute VB_Name = "FaCurrBalUpdate"

Private global_52 As Long

Private Sub CmdBanquetTrans_Click() '10C3CBC
  'Data Table: 4A9AE0
  Dim var_90 As Variant
  Dim unk_4A9AE7 As Connection15
  Dim var_8A As Integer
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_150 As String
  loc_10C39F4: On Error Goto loc_10C3C6A
  loc_10C3A01: var_94 = "Prev. Year Database Name"
  loc_10C3A22: If (Proc_6_27_EA61EC(Me.TxtDatabase) = 0) Then
  loc_10C3A25:   Exit Sub
  loc_10C3A26: End If
  loc_10C3A3B: var_88 = Me.TxtDatabase.Text
  loc_10C3A47: Set var_90 = Me.CmdBanquetTrans
  loc_10C3A4D: var_90.Enabled = False
  loc_10C3A5E: unk_4A9AE7.BeginTrans var_9C
  loc_10C3A7C: var_94 = "Insert Into VenueOcc Select * FROM " & var_88
  loc_10C3A91: Proc_6_7_F26918(var_BC, MemVar_1F950F4, CVar(var_94 & ".dbo.VenueOcc Where FromDate>="), var_170)
  loc_10C3A99: var_DC = -1 & var_BC 
  loc_10C3AB1: Proc_6_7_F26918(var_11C, MemVar_1F950F4, var_DC & " And FPDocid Not In (Select FPDocid From VenueOCC Where FromDate>=")
  loc_10C3AD0: unk_4A9AE7.Execute CStr(var_90 & var_11C & ")"), &HFF, var_94
  loc_10C3B1B: var_CC = CVar("Insert Into HallBook Select * FROM " & var_88 & ".dbo.HallBook Where DocId In (Select Distinct FPDocID from " & var_88 & ".dbo.VenueOcc where FromDate >=") 'String
  loc_10C3B29: Proc_6_7_F26918(var_BC, MemVar_1F950F4, var_CC)
  loc_10C3B48: unk_4A9AE7.Execute CStr(var_11C & var_BC & ") And Docid Not In (Select Docid From HallBook)"), -1, var_90
  loc_10C3B91: var_CC = CVar("Insert Into HallBook1 Select * FROM " & var_88 & ".dbo.HallBook1 Where DocId In (Select Distinct FPDocID from " & var_88 & ".dbo.VenueOcc where FromDate >=") 'String
  loc_10C3B9F: Proc_6_7_F26918(var_BC, MemVar_1F950F4, var_CC)
  loc_10C3BA7: var_DC = var_11C & var_BC 
  loc_10C3BB0: var_FC = var_DC & ") And Docid Not In (Select Docid From HallBook1)" 
  loc_10C3BBE: unk_4A9AE7.Execute CStr(var_FC), -1, var_90
  loc_10C3BF2: var_94 = "Insert Into PaychargeH Select * FROM " & var_88
  loc_10C3BF9: var_150 = var_94 & ".dbo.PaychargeH Where DocId+CAST(SNo As Varchar) Not In (Select DocId+CAST(SNo As Varchar) From PaychargeH Where Docid In (Select Distinct DocId from PaychargeH Where ContraDocId In (Select Distinct DocID from HallBook))) And DocId+CAST(SNo As Varchar) Not In (Select DocId+CAST(SNo As Varchar) From PayChargeH)"
  loc_10C3C02: unk_4A9AE7.Execute "Insert Into HallBook1 Select * FROM " & var_88 & ".dbo.HallBook1 Where DocId In (Select Distinct FPDocID from ", var_BC, -1
  loc_10C3C1A: unk_4A9AE7.CommitTrans
  loc_10C3C21: var_8A = 0
  loc_10C3C45: MsgBox("Banquet Transfer Completed.", &H40, "Information", var_DC, var_FC)
  loc_10C3C61: Me.CmdBanquetTrans.Enabled = True
  loc_10C3C69: Exit Sub
  loc_10C3C6A: ' Referenced from: 10C39F4
  loc_10C3C70: If (var_8A = &HFF) Then
  loc_10C3C79:   unk_4A9AE7.RollbackTrans
  loc_10C3C7E: End If
  loc_10C3C8A: Me.CmdBanquetTrans.Enabled = True
  loc_10C3C98: Call 0.Method_arg_50 (var_94, var_8A)
  loc_10C3CAD: Proc_183_57_104B0BC(var_94, "Banquet Transfer")
  loc_10C3CB9: Exit Sub
End Sub

Private Sub CmdReserveTrans_Click() '1776720
  'Data Table: 4A9AE0
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_158 As Variant
  Dim unk_4A9AE7 As Connection15
  Dim var_8E As Variant
  Dim var_C4 As Variant
  Dim var_188 As String
  Dim var_124 As Variant
  Dim var_18C As Variant
  Dim unk_4A9B2E As Connection15
  Dim var_A4 As Variant
  Dim var_184 As Variant
  Dim var_98 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_1AC As Variant
  Dim var_178 As Variant
  Dim var_168 As Variant
  Dim var_460 As Variant
  Dim var_778 As Variant
  Dim var_AC0 As Variant
  Dim var_E08 As Variant
  Dim var_1150 As Variant
  Dim var_1498 As Variant
  Dim var_17D0 As Variant
  loc_1774E98: On Error Goto loc_17766D0
  loc_1774EA5: var_A0 = "Prev. Year Database Name"
  loc_1774EC6: If (Proc_6_27_EA61EC(Me.TxtDatabase) = 0) Then
  loc_1774EC9:   Exit Sub
  loc_1774ECA: End If
  loc_1774EDF: var_8C = Me.TxtDatabase.Text
  loc_1774EEB: Set var_9C = Me.CmdReserveTrans
  loc_1774EF1: var_9C.Enabled = False
  loc_1774F0D: var_A0 = "Select DocId,GuestProf FROM " & var_8C
  loc_1774F14: var_D4 = CVar(var_A0 & ".dbo.Booking WHERE ArrDate >=") 'String
  loc_1774F22: Proc_6_7_F26918(var_C4, MemVar_1F950F4, var_D4, var_178)
  loc_1774F2A: var_E4 = -1 & var_C4 
  loc_1774F42: Proc_6_7_F26918(var_124, MemVar_1F950F4, var_E4 & " AND DocId NOT IN (SELECT DocId FROM Booking WHERE ArrDate >=")
  loc_1774F4A: var_134 = var_9C & var_124 
  loc_1774F61: unk_4A9AE7.Execute CStr(var_134 & ")"), var_A0, 
  loc_1774F6C: Set var_88 = var_9C
  loc_1774F8C: ' Referenced from: 1776677
  loc_1774F95: var_17A = Me.Recordset15.EOF
  loc_1774F9E: If Not(var_17A) Then
  loc_1774FAA:   unk_4A9AE7.BeginTrans var_180
  loc_1774FB1:   var_8E = &HFF
  loc_1774FFB:   Proc_6_17_EAAE40(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO Booking Select * FROM " & var_8C & ".dbo.Booking Where DocId="), var_124)
  loc_1775003:   var_104 = -1 & var_D4 
  loc_1775007:   var_158 = CStr(CVar("INSERT INTO Booking Select * FROM " & var_8C & ".dbo.Booking Where DocId=") & " AND DocId NOT IN (SELECT DocId FROM Booking WHERE ArrDate >=")
  loc_1775011:   unk_4A9AE7.Execute var_158, var_184, var_8E
  loc_1775078:   Proc_6_17_EAAE40(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO BookingMore Select * FROM " & var_8C & ".dbo.BookingMore WHERE DocId="))
  loc_177508E:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_17750F5:   Proc_6_17_EAAE40(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO GrpBookingDetails Select * FROM " & var_8C & ".dbo.GrpBookingDetails WHERE BookingDocId="))
  loc_177510B:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_1775172:   Proc_6_17_EAAE40(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO BookingPlanDetails Select * FROM " & var_8C & ".dbo.BookingPlanDetails WHERE BookingDocId="))
  loc_1775188:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_17751EF:   Proc_6_17_EAAE40(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO BookingCancelDetails Select * FROM " & var_8C & ".dbo.BookingCancelDetails WHERE BookingDocId="))
  loc_1775205:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_1775247:   var_188 = "INSERT INTO PayCharge Select * FROM " & var_8C & ".dbo.PayCharge WHERE Docid IN (Select Docid From " & var_8C
  loc_177526B:   var_A4 = Me.Recordset15.Fields.Item("DocID")
  loc_1775273:   var_C4 = CVar(var_A4) 'Address
  loc_177527A:   Proc_6_17_EAAE40(var_D4, var_C4, CVar(var_188 & ".dbo.PayCharge Where VTYPE IN ('ARRES','ADRES') And RefDocId="))
  loc_177528B:   var_124 = var_134 & var_D4 & ")" 
  loc_177528F:   var_18C = CStr(var_124)
  loc_1775299:   unk_4A9AE7.Execute var_18C, -1, var_184
  loc_17752C5:   var_F4 = 0
  loc_17752E2:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF WHERE SITE_CODE='" & MemVar_1F95070
  loc_17752F2:   unk_4A9B2E.Execute "INSERT INTO PayCharge Select * FROM " & var_8C & "'", var_C4, -1
  loc_17752FA:   var_9C = var_9C.Fields
  loc_1775302:   var_F4 = var_A4.Item(var_A4)
  loc_177530A:   var_184 = var_184.Value
  loc_177533A:   var_E4 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_177535D:   var_D4 = Format(CStr(var_D4), "000000")
  loc_1775365:   var_104 = (1 + var_D4)
  loc_177536A:   var_94 = CStr(var_134 & var_D4)
  loc_1775393:   var_E4 = CVar("Select * FROM " & var_8C & ".dbo.GuestProf Where Code=") 'String
  loc_17753BF:   Proc_6_17_EAAE40(var_D4, CVar(Me.Recordset15.Fields.Item("GuestProf")), var_E4, var_124, -1)
  loc_17753D5:   unk_4A9AE7.Execute CStr(var_184 & var_D4), 1, var_E4
  loc_17753E0:   Set var_98 = var_184
  loc_1775404:   var_180 = var_98.RecordCount
  loc_1775412:   If (var_180 > 0) Then
  loc_177545C:     Proc_6_17_EAAE40(var_D4, CVar(var_98.Fields.Item("Code")), "Select Count(*) FROM GuestProf Where Code=", var_178, -1, var_194)
  loc_1775464:     var_E4 = var_198 & var_D4 
  loc_1775497:     Proc_6_17_EAAE40(var_134, CVar(var_98.Fields.Item("Name")), var_E4 & " And Name=", 0)
  loc_17754AD:     unk_4A9AE7.Execute CStr(var_1AC & var_134), var_1BC, var_D4
  loc_17754B5:      = var_194.Fields
  loc_17754BD:      = var_198.Item()
  loc_17754C5:      = var_1AC.Value
  loc_17754FA:     If (var_1BC = 0) Then
  loc_1775511:       var_A0 = "INSERT INTO GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN," & "IdNo,ConPrefix,LogSite_Code,PicPath,IdProof,IdProofNo,mProf,FatherName) Values ('"
  loc_1775518:       var_158 = var_A0 & var_94
  loc_177551F:       var_104 = CVar(var_158 & "',") 'String
  loc_1775525:       var_B4 = "Name"
  loc_1775531:       var_9C = var_98.Fields
  loc_1775539:       var_A4 = var_9C.Item(var_B4)
  loc_1775541:       var_C4 = CVar(var_A4) 'Address
  loc_177554A:       var_D4 = CVar(Proc_6_38_E69628(var_C4, var_104, var_1A30)) 'String
  loc_1775550:       Proc_6_17_EAAE40(var_E4, var_D4)
  loc_1775558:       var_124 = -1 & var_E4 
  loc_177555C:       var_F4 = ","
  loc_1775561:       var_134 = CVar(var_98.Fields.Item("Name")) & var_F4 
  loc_1775568:       var_114 = "Add1"
  loc_1775574:       var_184 = var_98.Fields
  loc_177557C:       var_190 = var_184.Item(var_114)
  loc_1775584:       var_154 = CVar(var_190) 'Address
  loc_177558D:       var_178 = CVar(Proc_6_38_E69628(var_154, var_134)) 'String
  loc_1775593:       Proc_6_17_EAAE40(var_1BC, var_178)
  loc_177559F:       var_144 = ","
  loc_17755AB:       var_168 = "Add2"
  loc_17755B7:       var_194 = var_98.Fields
  loc_17755BF:       var_198 = var_194.Item(var_168)
  loc_17755D6:       Proc_6_17_EAAE40(var_21C, CVar(Proc_6_38_E69628(CVar(var_198))))
  loc_1775619:       Proc_6_17_EAAE40(var_270, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("City")))))
  loc_177565C:       Proc_6_17_EAAE40(var_2E8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Type")))))
  loc_177569F:       Proc_6_17_EAAE40(var_360, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("PhoneNo")))))
  loc_17756E2:       Proc_6_17_EAAE40(var_3D8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("FaxNo")))))
  loc_1775725:       Proc_6_17_EAAE40(var_450, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("MobileNo")))))
  loc_177572D:       var_460 = var_1A34 & var_1BC & var_144 & var_21C & "," & var_270 & "," & var_2E8 & "," & var_360 & "," & var_3D8 & "," & var_450 
  loc_1775768:       Proc_6_17_EAAE40(var_4C8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("EmailId")))))
  loc_17757AB:       Proc_6_17_EAAE40(var_540, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Nationality")))))
  loc_17757E6:       Proc_6_39_E7D3A0(var_5A8, CVar(var_98.Fields.Item("Age")))
  loc_1775821:       Proc_6_7_F26918(var_610, CVar(var_98.Fields.Item("BirthDate")))
  loc_177585C:       Proc_6_7_F26918(var_678, CVar(var_98.Fields.Item("Anniversary")))
  loc_177589F:       Proc_6_17_EAAE40(var_6F0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("GuestStatus")))))
  loc_17758E2:       Proc_6_17_EAAE40(var_768, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("SplInstr")))))
  loc_17758EA:       var_778 = var_460 & "," & var_4C8 & "," & var_540 & "," & var_5A8 & "," & var_610 & "," & var_678 & "," & var_6F0 & "," & var_768 
  loc_1775925:       Proc_6_17_EAAE40(var_7E0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Comments1")))))
  loc_1775968:       Proc_6_17_EAAE40(var_858, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Comments2")))))
  loc_17759AB:       Proc_6_17_EAAE40(var_8D0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Comments2")))))
  loc_17759EE:       Proc_6_17_EAAE40(var_948, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ConName")))))
  loc_1775A31:       Proc_6_17_EAAE40(var_9C0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field1")))))
  loc_1775A74:       Proc_6_17_EAAE40(var_A38, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field2")))))
  loc_1775AB7:       Proc_6_17_EAAE40(var_AB0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field3")))))
  loc_1775ABF:       var_AC0 = var_778 & "," & var_7E0 & "," & var_858 & "," & var_8D0 & "," & var_948 & "," & var_9C0 & "," & var_A38 & "," & var_AB0 
  loc_1775AFA:       Proc_6_17_EAAE40(var_B28, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field4")))))
  loc_1775B3D:       Proc_6_17_EAAE40(var_BA0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field5")))))
  loc_1775B80:       Proc_6_17_EAAE40(var_C18, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field6")))))
  loc_1775BC3:       Proc_6_17_EAAE40(var_C90, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field7")))))
  loc_1775C06:       Proc_6_17_EAAE40(var_D08, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T1Field8")))))
  loc_1775C49:       Proc_6_17_EAAE40(var_D80, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field1")))))
  loc_1775C8C:       Proc_6_17_EAAE40(var_DF8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field2")))))
  loc_1775C94:       var_E08 = var_AC0 & "," & var_B28 & "," & var_BA0 & "," & var_C18 & "," & var_C90 & "," & var_D08 & "," & var_D80 & "," & var_DF8 
  loc_1775CCF:       Proc_6_17_EAAE40(var_E70, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field3")))))
  loc_1775D12:       Proc_6_17_EAAE40(var_EE8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field4")))))
  loc_1775D55:       Proc_6_17_EAAE40(var_F60, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field5")))))
  loc_1775D98:       Proc_6_17_EAAE40(var_FD8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field6")))))
  loc_1775DDB:       Proc_6_17_EAAE40(var_1050, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field7")))))
  loc_1775E1E:       Proc_6_17_EAAE40(var_10C8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("T2Field8")))))
  loc_1775E61:       Proc_6_17_EAAE40(var_1140, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("CityName")))))
  loc_1775E69:       var_1150 = var_E08 & "," & var_E70 & "," & var_EE8 & "," & var_F60 & "," & var_FD8 & "," & var_1050 & "," & var_10C8 & "," & var_1140 
  loc_1775EA4:       Proc_6_17_EAAE40(var_11B8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("StateName")))))
  loc_1775EE7:       Proc_6_17_EAAE40(var_1230, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("CountryName")))))
  loc_1775F2A:       Proc_6_17_EAAE40(var_12A8, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("MaritalStatus")))))
  loc_1775F6D:       Proc_6_17_EAAE40(var_1320, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Gender")))))
  loc_1775FB0:       Proc_6_17_EAAE40(var_1398, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Zipcode")))))
  loc_1775FF3:       Proc_6_17_EAAE40(var_1410, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Site_Code")))))
  loc_1776036:       Proc_6_17_EAAE40(var_1488, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("U_Name")))))
  loc_177603E:       var_1498 = var_1150 & "," & var_11B8 & "," & var_1230 & "," & var_12A8 & "," & var_1320 & "," & var_1398 & "," & var_1410 & "," & var_1488 
  loc_1776071:       Proc_6_8_EB1974(var_14F0, CVar(var_98.Fields.Item("U_EntDt")))
  loc_17760B4:       Proc_6_17_EAAE40(var_1568, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("U_AE")))))
  loc_17760F7:       Proc_6_17_EAAE40(var_15E0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("PanNo")))))
  loc_177613A:       Proc_6_17_EAAE40(var_1658, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("DiplomatYN")))))
  loc_177617D:       Proc_6_17_EAAE40(var_16D0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("IdNo")))))
  loc_17761C0:       Proc_6_17_EAAE40(var_1748, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ConPrefix")))))
  loc_1776203:       Proc_6_17_EAAE40(var_17C0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("LogSite_Code")))))
  loc_177620B:       var_17D0 = var_1498 & "," & var_14F0 & "," & var_1568 & "," & var_15E0 & "," & var_1658 & "," & var_16D0 & "," & var_1748 & "," & var_17C0 
  loc_1776246:       Proc_6_17_EAAE40(var_1838, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("PicPath")))))
  loc_1776289:       Proc_6_17_EAAE40(var_18B0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("IdProof")))))
  loc_17762CC:       Proc_6_17_EAAE40(var_1928, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("IdProofNo")))))
  loc_1776322:       Proc_6_17_EAAE40(var_19E0, CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("FatherName")))))
  loc_1776341:       unk_4A9AE7.Execute CStr(var_17D0 & "," & var_1838 & "," & var_18B0 & "," & var_1928 & ",'" & CVar(var_94) & "'," & var_19E0 & ")"), , 
  loc_17765F3:       var_A0 = "UPDATE Booking SET GuestProf='" & var_94
  loc_17765FA:       var_E4 = CVar(var_A0 & "' Where DocId=") 'String
  loc_1776626:       Proc_6_17_EAAE40(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), var_E4)
  loc_177662E:       var_104 = CVar(var_98.Fields.Item("Name")) & var_D4 
  loc_177663C:       unk_4A9AE7.Execute CStr(var_104), -1, var_184
  loc_177665C:     End If
  loc_177665C:   End If
  loc_1776662:   unk_4A9AE7.CommitTrans
  loc_1776669:   var_8E = 0
  loc_1776672:   Me.Recordset15.MoveNext
  loc_1776677:   GoTo loc_1774F8C
  loc_177667A: End If
  loc_177669B: MsgBox("Reservation Transfer Completed.", &H40, "Information", var_E4, var_104)
  loc_17766B0: Set var_88 = Nothing
  loc_17766B8: Set var_98 = Nothing
  loc_17766C7: Me.CmdReserveTrans.Enabled = True
  loc_17766CF: Exit Sub
  loc_17766D0: ' Referenced from: 1774E98
  loc_17766D6: If (var_8E = &HFF) Then
  loc_17766DF:   unk_4A9AE7.RollbackTrans
  loc_17766E4: End If
  loc_17766F0: Me.CmdReserveTrans.Enabled = True
  loc_17766FE: Call 0.Method_arg_50 (var_A0)
  loc_1776713: Proc_183_57_104B0BC(var_A0, "Reservation Transfer")
  loc_177671F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1AB18
  'Data Table: 4A9AE0
  loc_E1AB0D: Me.Global.Unload Me
  loc_E1AB15: Exit Sub
End Sub

Private Sub CmdOPTransfer_Click() '155ADF8
  'Data Table: 4A9AE0
  Dim var_AC As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_98 As Recordset15
  Dim var_B0 As String
  Dim var_94 As Double
  Dim var_E8 As String
  Dim var_F0 As String
  Dim unk_4A9AE7 As Connection15
  Dim var_A2 As Integer
  Dim var_E4 As Variant
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_A8 As Recordset15
  Dim var_1B0 As Recordset15
  Dim var_118 As Variant
  Dim var_1B8 As String
  Dim var_1AC As Fields15
  Dim var_1C0 As Fields15
  Dim var_1A8 As Variant
  Dim var_2C4 As Variant
  Dim var_A0 As Recordset15
  Dim var_384 As String
  Dim var_398 As String
  loc_1559EA4: On Error Goto loc_155ADA5
  loc_1559EB1: var_B0 = "Prev. Year Database Name"
  loc_1559ED2: If (Proc_6_27_EA61EC(Me.TxtDatabase) = 0) Then
  loc_1559ED5:   Exit Sub
  loc_1559ED6: End If
  loc_1559EEB: var_9C = Me.TxtDatabase.Text
  loc_1559EF7: Set var_AC = Me.CmdOPTransfer
  loc_1559EFD: var_AC.Enabled = False
  loc_1559F09: Set var_98 = New 
  loc_1559F14: Me.Recordset15.CursorLocation = 3
  loc_1559F39: var_98.Open "SELECT * FROM Ledger", CVar(MemVar_1F951E0), 2
  loc_1559F49: var_E4 = Trim(MemVar_1F9512C)
  loc_1559F52: var_8C = CStr(var_E4)
  loc_1559F64: var_94 = CDate("31/Mar/" & var_8C)
  loc_1559F7E: var_B0 = "Select S.SubCode,S.Name,S.GroupCode,S.GroupNature,Q.Curr_Bal,S.Site_Code,S.LogSite_Code From SubGroup S Inner Join (Select SG.SubCode,Max(SG.Name) Name,SG.GroupCode,IsNull(Sum(SCB.Curr_Bal),0) As Curr_Bal from " & var_9C
  loc_1559F93: var_F0 = var_B0 & ".dbo.SubGroupCurrBal SCB Inner Join " & var_9C & ".dbo.Subgroup SG On SCB.SubCode=SG.SubCode Where SG.GroupNature Not In ('E','R') Group By SG.SubCode,SG.GroupCode)Q On S.SubCode=Q.SubCode Where Not (S.GroupCode<>Q.GroupCode Or S.Name<>Q.Name)"
  loc_1559F9C: unk_4A9AE7.Execute var_F0, var_E4, -1
  loc_1559FA7: Set var_88 = var_AC
  loc_1559FC4: unk_4A9AE7.BeginTrans var_F4
  loc_1559FCB: var_A2 = &HFF
  loc_1559FCE: ' Referenced from: 155A826
  loc_1559FD7: var_F6 = Me.Recordset15.EOF
  loc_1559FE0: If Not(var_F6) Then
  loc_155A005:   var_AC = Me.Recordset15.Fields
  loc_155A01E:   var_B0 = Proc_6_38_E69628(CVar(var_AC.Item("subcode")), "Select * From Ledger Where Subcode='", var_1A8, -1, var_1AC, var_A2)
  loc_155A033:   var_108 = CVar("31/Mar/" & var_8C) 'String
  loc_155A039:   Proc_6_7_F26918(var_118, var_108, CVar(var_AC & var_B0 & "' And V_Type='F_AO' And V_Date="), var_94)
  loc_155A041:   var_138 = 3 & var_118 
  loc_155A04A:   var_148 = var_138 & " AND LOGSITE_CODE='" 
  loc_155A06B:   unk_4A9AE7.Execute CStr(var_148 & CVar(MemVar_1F95078) & "'"), -1, var_B0
  loc_155A076:   Set var_A8 = var_1AC
  loc_155A0B2:   If (var_A8.RecordCount = 0) Then
  loc_155A0B8:     var_C4 = "Curr_Bal"
  loc_155A0D7:     var_E4 = CVar(Me.Recordset15.Fields.Item(var_C4)) 'Address
  loc_155A0DE:     Proc_6_39_E7D3A0(var_108)
  loc_155A0E6:     var_D4 = 0
  loc_155A0F8:     If CBool(var_108 <> var_D4) Then
  loc_155A101:       Call Proc_198_11_10BE978(var_94, var_B0)
  loc_155A116:       Set var_1B0 = var_98 
  loc_155A125:       var_1B0.AddNew var_C4, var_D4
  loc_155A130:       var_D4 = CVar(var_B0) 'String
  loc_155A13D:       var_1B0.Collect = "DocID"
  loc_155A142:       var_D4 = 1
  loc_155A151:       var_1B0.Collect = "V_SNo"
  loc_155A15C:       var_D4 = CVar(global_60) 'String
  loc_155A169:       var_1B0.Collect = "V_Type"
  loc_155A174:       var_D4 = CVar(global_52) 'Long
  loc_155A182:       var_1B0.Collect = "V_NO"
  loc_155A18A:       var_D4 = CVar(var_8C) 'String
  loc_155A197:       var_1B0.Collect = "v_Prefix"
  loc_155A1BE:       var_E4 = CVar(Me.Recordset15.Fields.Item("Site_Code")) 'Address
  loc_155A1CC:       var_1B0.Collect = "Site_Code"
  loc_155A1DA:       var_D4 = CDate(var_94)
  loc_155A1E8:       var_1B0.Collect = "V_DATE"
  loc_155A20F:       var_E4 = CVar(Me.Recordset15.Fields.Item("subcode")) 'Address
  loc_155A214:       var_D4 = "subcode"
  loc_155A21D:       var_1B0.Collect = var_D4
  loc_155A251:       Proc_6_39_E7D3A0(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4)
  loc_155A259:       var_D4 = 0
  loc_155A26B:       If (var_108 > var_D4) Then
  loc_155A297:         Proc_6_39_E7D3A0(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, var_D4)
  loc_155A2A9:         var_1B0.Collect = "AmtCr"
  loc_155A2BB:       Else
  loc_155A2E4:         Proc_6_39_E7D3A0(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_108)
  loc_155A2EC:         var_118 = Abs(var_108)
  loc_155A2FA:         var_1B0.Collect = "AmtDr"
  loc_155A309:       End If
  loc_155A309:       var_D4 = "OPENING BALANCE"
  loc_155A318:       var_1B0.Collect = "Narration"
  loc_155A31D:       var_D4 = "SA"
  loc_155A32C:       var_1B0.Collect = "U_Name"
  loc_155A33D:       var_D4 = CDate(CDate("01/Apr/" & var_8C))
  loc_155A34B:       var_1B0.Collect = "U_EntDt"
  loc_155A353:       var_D4 = "A"
  loc_155A362:       var_1B0.Collect = "U_AE"
  loc_155A389:       var_E4 = CVar(Me.Recordset15.Fields.Item("GroupCode")) 'Address
  loc_155A397:       var_1B0.Collect = "GroupCode"
  loc_155A3C4:       var_E4 = CVar(Me.Recordset15.Fields.Item("GroupNature")) 'Address
  loc_155A3D2:       var_1B0.Collect = "GroupNature"
  loc_155A3E0:       var_C4 = "LogSite_Code"
  loc_155A3EF:       var_AC = Me.Recordset15.Fields
  loc_155A3FF:       var_E4 = CVar(var_AC.Item(var_C4)) 'Address
  loc_155A404:       var_D4 = "LogSite_Code"
  loc_155A40D:       var_1B0.Collect = var_D4
  loc_155A423:       var_1B0.Update var_C4, var_D4
  loc_155A42A:       Set var_1B0 = Nothing 
  loc_155A442:       var_B0 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_155A468:       var_108 = CVar("01/Apr/" & var_8C & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_155A476:       Proc_183_7_EB17D4(var_E4, var_94, var_108, var_138, -1, var_AC, var_E4, var_E4)
  loc_155A482:       var_D4 = " BETWEEN DATE_FROM AND DATE_TO"
  loc_155A495:       unk_4A9AE7.Execute CStr(var_E4 & var_E4 & var_D4), var_D4, var_D4
  loc_155A4B9:     End If
  loc_155A4BC:   Else
  loc_155A4D0:     If (var_A8.RecordCount = 1) Then
  loc_155A4FC:       Proc_6_39_E7D3A0(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, var_D4)
  loc_155A516:       If CBool(var_108 <> 0) Then
  loc_155A526:         var_D4 = "Update Ledger Set AmtCr=Case When "
  loc_155A554:         Proc_6_39_E7D3A0(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, var_35C, -1)
  loc_155A55C:         var_118 = var_360 & var_108 
  loc_155A592:         Proc_6_39_E7D3A0(var_148, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_118 & " > 0 Then ")
  loc_155A59A:         var_168 = var_118 & var_148 
  loc_155A5B9:         var_1C0 = Me.Recordset15.Fields
  loc_155A5D0:         Proc_6_39_E7D3A0(var_1E4, CVar(var_1C0.Item("Curr_Bal")), var_168 & " Else 0 End,AmtDr=Case When ")
  loc_155A60E:         Proc_6_39_E7D3A0(var_24C, CVar(Me.Recordset15.Fields.Item("Curr_Bal")))
  loc_155A64F:         var_2C4 = CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("DocID")), var_D4 & var_1E4 & " < 0 Then " & Abs(var_24C) & " Else 0 End Where DocId='")) 'String
  loc_155A685:         Proc_6_39_E7D3A0(var_32C, CVar(var_A8.Fields.Item("V_SNo")))
  loc_155A69B:         unk_4A9AE7.Execute CStr(var_D4 & var_2C4 & "' And V_SNo=" & var_32C), , 
  loc_155A6EA:       Else
  loc_155A726:         var_E8 = -1 & Proc_6_38_E69628(CVar(var_A8.Fields.Item("DocID")), "Delete From Ledger Where DocId='", var_148)
  loc_155A756:         Proc_6_39_E7D3A0(var_118, CVar(var_A8.Fields.Item("V_SNo")))
  loc_155A75E:         var_138 = CVar("01/Apr/" & var_8C & "' AND LOGSITE_CODE='" & "' And V_SNo=") & var_118 
  loc_155A76C:         unk_4A9AE7.Execute CStr(var_138), var_1C0, 
  loc_155A792:       End If
  loc_155A795:     Else
  loc_155A7CE:       var_128 = "Opening Transfer"
  loc_155A7F4:       var_118 = CVar("Multiple Opening In Ledger " & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name"))) & " At ") & CDate(var_94) 
  loc_155A7F8:       MsgBox(var_118, &H10, var_128, var_138, var_148)
  loc_155A81B:     Else
  loc_155A81B:     End If
  loc_155A821:     Me.Recordset15.MoveNext
  loc_155A826:     GoTo loc_1559FCE
  loc_155A829:   End If
  loc_155A82F:   unk_4A9AE7.CommitTrans
  loc_155A836:   var_A2 = 0
  loc_155A854:   var_E4 = "Opening Transfer In Ledger Completed."
  loc_155A85A:   MsgBox(var_E4, &H40, "Information", var_118, var_128)
  loc_155A86F:   Set var_88 = Nothing
  loc_155A877:   Set var_98 = Nothing
  loc_155A87F:   Set var_A8 = Nothing
  loc_155A888:   Set var_AC = Me.CmdOPTransfer
  loc_155A88E:   var_AC.Enabled = True
  loc_155A8AA:   var_B0 = "select S.SubCode,S.Name,S.GroupCode,Q.Name Name1,Q.GroupCode GroupCode1,Q.Curr_Bal From SubGroup S Right Join (Select SG.SubCode,Max(SG.Name) Name,SG.GroupCode,IsNull(Sum(SCB.Curr_Bal),0) As Curr_Bal from " & var_9C
  loc_155A8BF:   var_F0 = var_B0 & ".dbo.SubGroupCurrBal SCB Inner Join " & var_9C & ".dbo.Subgroup SG On SCB.SubCode=SG.SubCode Where SG.GroupNature Not In ('E','R') Group By SG.SubCode,SG.GroupCode)Q On S.SubCode=Q.Subcode Where (S.GroupCode<>Q.GroupCode Or S.Name<>Q.Name)"
  loc_155A8C8:   unk_4A9AE7.Execute var_F0, var_E4, -1
  loc_155A8D3:   Set var_A0 = var_AC
  loc_155A8FB:   If (var_A0.RecordCount > 0) Then
  loc_155A90A:     Call 0.Method_CmdOPTransfer_Click8 ("C:\REPTMP", var_F6)
  loc_155A915:     If (var_F6 = 0) Then
  loc_155A924:       Call 0.Method_arg_74 ("C:\REPTMP", var_AC)
  loc_155A92C:     End If
  loc_155A92F:     var_368 = "C:\REPTMP\Openning Transfer"
  loc_155A94D:     var_108 = (Trim(var_368) + ".TXT")
  loc_155A95B:     Call 0.Method_CmdOPTransfer_Click4 (CStr("Information"), var_F6)
  loc_155A96D:     If var_F6 Then
  loc_155A970:       GoTo loc_155A9B2
  loc_155A973:     End If
  loc_155A992:     var_108 = (Trim(var_368) + ".TXT")
  loc_155A9A0:     Call 0.Method_arg_78 (CStr("Information"), &HFF, 0)
  loc_155A9B2:     ' Referenced from:   155A970
  loc_155A9B4:     Close 1
  loc_155A9C4:     Open var_368 & ".TXT" For Output As 1 Len = &HFF
  loc_155A9CE:     Me.Recordset15.MoveFirst
  loc_155AA28:     var_384 = var_AC & Proc_6_45_EADFB8("A/C (CURR. YEAR)", &H32, Proc_6_45_EADFB8("SUBCODE", 8, var_AC) & " ") & " " & Proc_6_45_EADFB8("GROUP", 6)
  loc_155AA8B:     var_36C = var_384 & " " & Proc_6_45_EADFB8("A/C (PREV. YEAR)", &H32) & " " & Proc_6_45_EADFB8("GROUP", 6) & " " & Proc_6_52_EAE084("CLOSING_BAL", &HE)
  loc_155AAC0:     Print 1, var_36C
  loc_155AAC6:     ' Referenced from:   155AD09
  loc_155AAD5:     If Not(var_A0.EOF) Then
  loc_155AB4D:       var_118 = CVar(var_A0.Fields.Item("GroupCode")) 'Address
  loc_155AB78:       var_128 = CVar(var_A0.Fields.Item("Name1")) 'Address
  loc_155ABCE:       var_148 = CVar(var_A0.Fields.Item("Curr_Bal")) 'Address
  loc_155ABD5:       Proc_6_39_E7D3A0(var_168, var_148)
  loc_155AC1A:       var_1B8 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("subcode"))), 8) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Name"))), &H32)
  loc_155AC58:       var_398 = var_1B8 & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(var_118), 6) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(var_128), &H32)
  loc_155AC98:       var_36C = var_398 & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_A0.Fields.Item("GroupCode1"))), 6) & " " & Proc_6_52_EAE084(CStr(Round(var_168, 2)), &HE)
  loc_155ACFB:       Print 1, var_36C
  loc_155AD04:       var_A0.MoveNext
  loc_155AD09:       GoTo loc_155AAC6
  loc_155AD0C:     End If
  loc_155AD0E:     Close 1
  loc_155AD2D:     var_B0 = "Some A/c Group Or A/c Name not matched." & vbCrLf
  loc_155AD37:     MsgBox(CVar(var_B0 & "Plz. Fill Openning of these A/c Manually."), &H10, "Validation Error", var_118, var_128)
  loc_155AD78:     var_108 = (Trim(var_368) + ".TXT")
  loc_155AD81:     var_118 = ("Validation Error" + vbCrLf)
  loc_155AD8A:     var_128 = (var_118 + "Plz. See it")
  loc_155AD8E:     MsgBox(var_128, &H40, "Validation", var_148, var_168)
  loc_155ADA4:   End If
  loc_155ADA4:   Exit Sub
  loc_155ADA5: End If
  loc_155ADA5: ' Referenced from: 1559EA4
  loc_155ADAB: If (var_A2 = &HFF) Then
  loc_155ADB4:   unk_4A9AE7.RollbackTrans
  loc_155ADB9: End If
  loc_155ADC5: Me.CmdOPTransfer.Enabled = True
  loc_155ADD3: Call 0.Method_arg_50 (var_B0)
  loc_155ADE8: Proc_183_57_104B0BC(var_B0, "Opening Transfer")
  loc_155ADF4: Exit Sub
End Sub

Private Sub Form_Load() 'F68BBC
  'Data Table: 4A9AE0
  Dim var_8C As Label
  Dim var_88 As Label
  loc_F68A88: On Error Goto loc_F68B91
  loc_F68A91: global_60 = "F_AO"
  loc_F68A9E: Call 0.Method_arg_160 (var_88)
  loc_F68AAC: Call 0.Method_arg_164 (var_88)
  loc_F68ABF: Set var_88 = Me.Timer2
  loc_F68AC5: Call 0.Method_Form_Load0 (0, var_8C)
  loc_F68ACD: MDIForm1.Timer2.Visible = False
  loc_F68AE4: Set var_88 = Me.Label4
  loc_F68AEA: Call 0.Method_Form_Load0 (1, var_8C)
  loc_F68AF2: var_8C.Visible = False
  loc_F68B0B: Me.Label5.Caption = vbNullString
  loc_F68B20: Me.Label6.Caption = vbNullString
  loc_F68B34: Me.Label5.Visible = False
  loc_F68B48: Me.Label6.Visible = False
  loc_F68B5A: var_98 = "SUBCODE"
  loc_F68B63: var_94 = "NAME"
  loc_F68B75: var_90 = "SELECT NAME,SUBCODE FROM SUBGROUP ORDER BY NAME"
  loc_F68B7B: Proc_183_43_EF88E4(var_90, Me.TXT_ACCOUNT)
  loc_F68B90: Exit Sub
  loc_F68B91: ' Referenced from: F68A88
  loc_F68B97: Call 0.Method_arg_50 (var_90, var_94)
  loc_F68BAC: Proc_183_57_104B0BC(var_90, "Form_Load")
  loc_F68BB8: Exit Sub
  loc_F68BBA: DOC
End Sub

Private Sub Form_Resize() 'E6E390
  'Data Table: 4A9AE0
  loc_E6E33A: Call 0.Method_arg_50 (var_88)
  loc_E6E34C: Me.LblFormCaption.Caption = var_88
  loc_E6E365: Me.LblFormCaption.Left = CDbl(0)
  loc_E6E373: Call 0.Method_arg_100 (var_90)
  loc_E6E385: Me.LblFormCaption.Width = var_90
  loc_E6E38D: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E967F4
  'Data Table: 4A9AE0
  loc_E9677A: If (CLng(KeyCode) = &H79) Then
  loc_E9678A:   Me.Global.Unload Me
  loc_E96795: Else
  loc_E967A6:   If ((CLng(KeyCode) = &H54) And (Shift = 3)) Then
  loc_E967C4:     If (Me.FrOPTransfer.Visible = 0) Then
  loc_E967D3:       Me.FrOPTransfer.Visible = True
  loc_E967DE:     Else
  loc_E967EA:       Me.FrOPTransfer.Visible = False
  loc_E967F2:     End If
  loc_E967F2:   End If
  loc_E967F2: End If
  loc_E967F2: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '12651AC
  'Data Table: 4A9AE0
  Dim var_94 As Variant
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_4A9AE7 As Connection15
  loc_1264C54: On Error Goto loc_1265179
  loc_1264C62: Set var_90 = Me.Label4
  loc_1264C68: Call 0.Method_Command1_UnknownEvent_90 (0, var_94)
  loc_1264C70: var_94.Visible = True
  loc_1264C87: Set var_90 = Me.Label4
  loc_1264C8D: Call 0.Method_Command1_UnknownEvent_90 (1, var_94)
  loc_1264C95: var_94.Visible = True
  loc_1264CAD: Me.Label5.Visible = True
  loc_1264CC1: Me.Label6.Visible = True
  loc_1264CD5: Me.Label1.Visible = True
  loc_1264CEA: Me.Label5.Caption = vbNullString
  loc_1264CFF: Me.Label6.Caption = vbNullString
  loc_1264D13: Set var_90 = Me.Check1
  loc_1264D19: Call 0.Method_Command1_UnknownEvent_90 (1, var_94)
  loc_1264D37: If (CLng(var_94.Value) = 1) Then
  loc_1264D4E:   Set var_90 = Me.TXT_ACCOUNT
  loc_1264D54:   var_A8 = var_90.BoundText
  loc_1264D60:   var_B0 = "SELECT LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name,Sum(Ledger.AmtCr) AS AMTCR,Sum(Ledger.AmtDr) AS AMTDR FROM SubGroup INNER JOIN Ledger ON SubGroup.SubCode=Ledger.SubCode where SubGroup.SubCode='" & CStr(var_A8)
  loc_1264D70:   unk_4A9AE7.Execute var_B0 & "' GROUP BY LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name", var_D4, -1
  loc_1264D7B:   Set var_8C = var_94
  loc_1264D98: Else
  loc_1264DAE:   unk_4A9AE7.Execute "SELECT LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name,Sum(Ledger.AmtCr) AS AMTCR,Sum(Ledger.AmtDr) AS AMTDR FROM SubGroup INNER JOIN Ledger ON SubGroup.SubCode=Ledger.SubCode GROUP BY LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name", var_A8, -1
  loc_1264DB9:   Set var_8C = var_90
  loc_1264DC2: End If
  loc_1264DCF: Me.Label6.Caption = vbNullString
  loc_1264DE4: Me.Label5.Caption = vbNullString
  loc_1264E0C: Me.Label5.Caption = CStr(Me.Recordset15.RecordCount)
  loc_1264E21: Me.Label5.Refresh
  loc_1264E32: var_D8 = Me.Recordset15.RecordCount
  loc_1264E40: If (var_D8 > 0) Then
  loc_1264E4C:   unk_4A9AE7.BeginTrans var_D8
  loc_1264E67:   unk_4A9AE7.Execute "UPDATE ACGROUPCURRBAL SET CURR_BAL=0", var_A8, -1
  loc_1264E88:   unk_4A9AE7.Execute "UPDATE SUBGROUPCURRBAL SET CURR_BAL=0", var_A8, -1
  loc_1264E93:   ' Referenced from: 126507F
  loc_1264EA5:   If Not(Me.Recordset15.EOF) Then
  loc_1264EC8:     Me.Label6.Caption = CStr(Me.Recordset15.AbsolutePosition)
  loc_1264EDD:     Me.Label6.Refresh
  loc_1264F13:     var_AC = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_1264F20:     Me.Label1.Caption = var_AC
  loc_1264F3E:     Me.Label1.Refresh
  loc_1264F63:     var_94 = Me.Recordset15.Fields.Item("subcode")
  loc_1264FBF:     var_150 = Me.Recordset15.Fields.Item("AmtCr").Value
  loc_1264FE9:     var_168 = Me.Recordset15.Fields.Item("GroupCode").Value
  loc_1265013:     var_178 = Me.Recordset15.Fields.Item("V_DATE").Value
  loc_1265044:     Proc_183_0_127A384(MemVar_1F951E0, CStr(var_94.Value), CSng(Me.Recordset15.Fields.Item("AmtDr").Value), CSng(var_150), CStr(var_168))
  loc_126507A:     Me.Recordset15.MoveNext
  loc_126507F:     GoTo loc_1264E93
  loc_1265082:   End If
  loc_1265088:   unk_4A9AE7.CommitTrans
  loc_1265098:   var_D4 = "Information"
  loc_12650AE:   MsgBox("Opening Balance Updation Has been Completed", &H40, var_D4, var_150, var_168)
  loc_12650C1: Else
  loc_12650DA:   MsgBox("Ledger Table is Empty", &H40, var_D4, var_150, var_168)
  loc_12650EA: End If
  loc_12650FB: Call 0.Method_Command1_UnknownEvent_90 (0, var_94, 0, CDate(var_178))
  loc_1265103: var_94.Visible = Me.Label4
  loc_1265120: Call 0.Method_Command1_UnknownEvent_90 (1, var_94, 0)
  loc_1265128: var_94.Visible = Me.Label4
  loc_1265140: Me.Label1.Visible = False
  loc_1265154: Me.Label5.Visible = False
  loc_1265162: Set var_90 = Me.Label6
  loc_1265168: var_90.Visible = False
  loc_1265175: Set var_8C = Nothing
  loc_1265178: Exit Sub
  loc_1265179: ' Referenced from: 1264C54
  loc_126517F: unk_4A9AE7.RollbackTrans
  loc_126518A: Call 0.Method_arg_50 (var_AC, var_90)
  loc_126519F: Proc_183_57_104B0BC(var_AC, "Command1_Click")
  loc_12651AB: Exit Sub
End Sub

Private Sub Check1_Click() 'EC8BB4
  'Data Table: 4A9AE0
  Dim var_8C As CheckBox
  Dim var_88 As DataCombo
  loc_EC8B14: Set var_88 = Me.Check1
  loc_EC8B1A: Call 0.Method_Check1_Click0 (1, var_8C)
  loc_EC8B38: If (CLng(var_8C.Value) = 1) Then
  loc_EC8B49:   Me.TXT_ACCOUNT.Visible = True
  loc_EC8B55:   Set var_88 = Me.TXT_ACCOUNT
  loc_EC8B69: Else
  loc_EC8B75:   Set var_88 = Me.Check1
  loc_EC8B7B:   Call 0.Method_Check1_Click0 (1, var_8C)
  loc_EC8B99:   If (CLng(var_8C.Value) = 0) Then
  loc_EC8BAB:     Me.TXT_ACCOUNT.Visible = False
  loc_EC8BB3:   End If
  loc_EC8BB3: End If
  loc_EC8BB3: Exit Sub
End Sub

Private Sub CmdSTOPTransfer_Click() '1ADD3D4
  'Data Table: 4A9AE0
  Dim var_D8 As Variant
  Dim var_100 As Variant
  Dim var_F0 As Variant
  Dim var_94 As Recordset15
  Dim var_DC As String
  Dim var_90 As Double
  Dim unk_4A9AE7 As Connection15
  Dim var_9E As Integer
  Dim var_E0 As Variant
  Dim var_11C As String
  Dim var_124 As String
  Dim var_128 As String
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1DC As String
  Dim unk_4A9B2E As Connection15
  Dim var_A4 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_D0 As Long
  Dim var_C4 As Double
  Dim var_AC As Recordset15
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_110 As Variant
  Dim var_200 As Variant
  Dim var_1FC As Variant
  Dim var_BC As Recordset15
  Dim var_23C As Recordset15
  Dim var_224 As Variant
  Dim var_238 As Fields15
  Dim var_400 As Variant
  Dim var_734 As Double
  Dim var_73C As Double
  Dim var_65C As Fields15
  Dim var_680 As Variant
  Dim var_234 As Variant
  Dim var_2CC As Variant
  Dim var_32C As Variant
  Dim var_460 As Variant
  Dim var_4E8 As Variant
  Dim var_658 As Variant
  Dim var_6C0 As Variant
  Dim var_CC As Double
  Dim var_74C As Recordset15
  Dim var_570 As Variant
  Dim var_5C8 As Variant
  Dim var_750 As Recordset15
  loc_1AD9378: On Error Goto loc_1ADD382
  loc_1AD937F: Set var_E0 = Me.TxtDatabase
  loc_1AD9385: var_DC = "Prev. Year Database Name"
  loc_1AD93A6: If (Proc_6_27_EA61EC(var_E0) = 0) Then
  loc_1AD93A9:   Exit Sub
  loc_1AD93AA: End If
  loc_1AD93BF: var_98 = Me.TxtDatabase.Text
  loc_1AD93D1: Me.FrStockTransfer.Enabled = False
  loc_1AD93DD: Set var_94 = New 
  loc_1AD93E8: Me.Recordset15.CursorLocation = 3
  loc_1AD940D: var_94.Open "SELECT * FROM Stock Where DocId Is Null", CVar(MemVar_1F951E0), 2
  loc_1AD9418: global_60 = "STOP"
  loc_1AD9427: var_110 = Trim(MemVar_1F9512C)
  loc_1AD9430: var_88 = CStr(var_110)
  loc_1AD9442: var_90 = CDate("01/Apr/" & var_88)
  loc_1AD9451: unk_4A9AE7.BeginTrans var_114
  loc_1AD9469: Set var_D8 = Me.ChkGodown
  loc_1AD946F: Call 0.Method_CmdSTOPTransfer_Click0 (CInt(0), var_E0, var_116, &HFF)
  loc_1AD9477: var_90 = var_E0.Value
  loc_1AD948D: If (CLng(var_116) = 1) Then
  loc_1AD94B9:   var_124 = "SELECT S.GodownCode GCode,I.CONSUMPTIONITEM,Sum(S.RecdQty) AS QTY FROM ((" & var_98 & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join "
  loc_1AD94D5:   Proc_6_7_F26918(var_110, var_90, CVar(var_124 & var_98 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1FC, -1)
  loc_1AD94F9:   var_198 = var_D8 & var_110 & " And S.GodownCode IN (Select Code From " & CVar(var_98) & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" 
  loc_1AD9507:   var_1C8 = "') And RestType in ('Kitchen','Staff Kitchen')) And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','BKREC','KSREC','KMREC') AND S.RecdQty>0 Group By S.GodownCode,I.CONSUMPTIONITEM HAVING Sum(S.RecdQty)>0 Order By S.GodownCode,I.CONSUMPTIONITEM"
  loc_1AD951A:   unk_4A9B2E.Execute CStr(var_198 & CVar(MemVar_1F95078) & var_1C8), 3, -1
  loc_1AD9525:   Set var_AC = var_D8
  loc_1AD9563:   var_DC = "SELECT S.GodownCode GCode,I.CONSUMPTIONITEM,Sum(S.IssQty) AS QTY FROM ((" & var_98
  loc_1AD957F:   var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1AD9594:   Proc_6_7_F26918(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1FC)
  loc_1AD959C:   var_148 = -1 & var_110 
  loc_1AD95B8:   var_198 = var_D8 & var_110 & " And S.GodownCode IN (Select Code From " & CVar(var_98) & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" 
  loc_1AD95C6:   var_1C8 = "') And RestType in ('Kitchen','Staff Kitchen')) And VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS','DAMGE','CONSE','BKISS') AND S.IssQty>0 Group By S.GodownCode,I.CONSUMPTIONITEM HAVING Sum(S.IssQty)>0 Order By S.GodownCode,I.CONSUMPTIONITEM"
  loc_1AD95D9:   unk_4A9B2E.Execute CStr(var_198 & CVar(MemVar_1F95078) & var_1C8), var_D8, var_DC
  loc_1AD95E4:   Set var_B0 = var_D8
  loc_1AD9629:   var_11C = "SELECT S.DepartCode GCode,I.CONSUMPTIONITEM,Sum(S.ThCons)/MAX(ConvRatio) AS QTY FROM ((" & var_98 & ".dbo.RawConsumption S Left Join "
  loc_1AD9645:   var_138 = CVar(var_11C & var_98 & ".dbo.ItemMast I On S.RawItem=I.Code And I.ItemType='Store') Left Join " & var_98 & ".dbo.Voucher_type VT On S.V_Type=VT.V_Type) Where S.V_Date < ") 'String
  loc_1AD9653:   Proc_6_7_F26918(var_110, var_90, var_138)
  loc_1AD9677:   var_198 = var_1FC & var_110 & " And S.DepartCode IN (Select Code From " & CVar(var_98) & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" 
  loc_1AD9685:   var_1C8 = "') And RestType in ('Kitchen','Staff Kitchen')) And VT.NCAT IN ('CONS') AND S.thcons>0 Group By S.DepartCode,I.CONSUMPTIONITEM HAVING Sum(S.thcons)>0 Order By S.DepartCode,I.CONSUMPTIONITEM"
  loc_1AD968A:   var_1D8 = var_198 & CVar(MemVar_1F95078) & var_1C8 
  loc_1AD9698:   unk_4A9B2E.Execute CStr(var_1D8), -1, var_D8
  loc_1AD96A3:   Set var_B4 = var_D8
  loc_1AD96F6:   var_124 = "Select Code,Name From " & var_98 & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" & MemVar_1F95078 & "') And RestType in ('Kitchen','Staff Kitchen')"
  loc_1AD96FF:   unk_4A9B2E.Execute var_124, var_110, -1
  loc_1AD970A:   Set var_A4 = var_D8
  loc_1AD971E:   ' Referenced from: 1ADA92A
  loc_1AD972D:   If Not(var_A4.EOF) Then
  loc_1AD9757:     var_110 = var_A4.Fields.Item("Code").Value
  loc_1AD976D:     var_A8 = CStr("GCode='" & var_110 & "' And ")
  loc_1AD9794:     var_DC = "Select Distinct Item,I.Name As ItemName,I.Type,I.CODE as CODE,I.LPurRate AS LPRATE,I.IssueUnit AS WUnit,I.Unit As PUnit, I.ConvRatio From ((" & var_98
  loc_1AD97B0:     var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1AD97C5:     Proc_6_7_F26918(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1D8)
  loc_1AD97CD:     var_148 = -1 & var_110 
  loc_1AD97EC:     var_D8 = var_A4.Fields
  loc_1AD9808:     var_188 = "') And VT.NCAT IN ('PBC','PBR','PRR','PRC','STOP','MRE','RQI','RQR','BKREC','KSREC','KSISS','KMREC','KMISS','DAMGE','CONSE') And I.Code=I.ConsumptionItem Order By Name"
  loc_1AD981B:     unk_4A9B2E.Execute CStr("GCode='" & var_110 & "' And " & " And S.GodownCode IN ('" & var_D8.Item("Code").Value & var_188), var_200, var_D8
  loc_1AD9826:     Set var_B8 = var_200
  loc_1AD9868:     If (var_B8.RecordCount > 0) Then
  loc_1AD9871:       Call Proc_198_10_10BE320(var_90)
  loc_1AD987C:       global_56 = var_DC
  loc_1AD9883:     End If
  loc_1AD9888:     var_D0 = 0
  loc_1AD988B:     ' Referenced from: 1ADA87D
  loc_1AD989A:     If Not(var_B8.EOF) Then
  loc_1AD98A0:       var_C4 = CDbl(0)
  loc_1AD98AF:       var_AC.Filter = 0
  loc_1AD98C0:       var_B0.Filter = 0
  loc_1AD98D1:       var_B4.Filter = 0
  loc_1AD991B:       var_AC.Filter = CVar(var_A8 & "CONSUMPTIONITEM='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD9977:       var_B0.Filter = CVar(var_A8 & "CONSUMPTIONITEM='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD9995:       var_138 = CVar(var_A8 & "CONSUMPTIONITEM='") 'String
  loc_1AD99D3:       var_B4.Filter = var_138 & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD99FE:       If (var_AC.RecordCount > 0) Then
  loc_1AD9A2E:         Proc_6_39_E7D3A0(var_138, CVar(var_AC.Fields.Item("qty")), CVar(var_C4))
  loc_1AD9A36:         var_148 = (var_C4 + var_138)
  loc_1AD9A3B:         var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD9A4A:       End If
  loc_1AD9A5E:       If (var_B0.RecordCount > 0) Then
  loc_1AD9A8E:         Proc_6_39_E7D3A0(var_138, CVar(var_B0.Fields.Item("qty")), CVar(var_C4))
  loc_1AD9A96:         var_148 = (var_C4 - var_138)
  loc_1AD9A9B:         var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD9AA8:       End If
  loc_1AD9ABC:       If (var_B4.RecordCount > 0) Then
  loc_1AD9AEC:         Proc_6_39_E7D3A0(var_138, CVar(var_B4.Fields.Item("qty")), CVar(var_C4))
  loc_1AD9AF4:         var_148 = (var_C4 - var_138)
  loc_1AD9AF9:         var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD9B06:       End If
  loc_1AD9B3E:       var_DC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Code")), "Select * From Stock Where Item='", var_234, -1)
  loc_1AD9B68:       Proc_6_7_F26918(var_138, var_90, CVar(var_238 & var_DC & "' And VType='" & global_60 & "' And VDate>="))
  loc_1AD9BBA:       var_1FC = var_C4 & var_138 & " And GodownCode IN ('" & var_A4.Fields.Item("Code").Value & "') AND LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1AD9BD1:       unk_4A9AE7.Execute CStr(var_1FC & "'"), var_D0, var_DC
  loc_1AD9BDC:       Set var_BC = var_238
  loc_1AD9C24:       If (var_BC.RecordCount = 0) Then
  loc_1AD9C31:         var_100 = "0.000"
  loc_1AD9C3F:         var_F0 = var_C4
  loc_1AD9C67:         If (CDbl(Val(CStr(Format(var_F0, var_100)))) <> CDbl(0)) Then
  loc_1AD9C73:           var_D0 = (var_D0 + 1)
  loc_1AD9C79:           Set var_23C = var_94 
  loc_1AD9C88:           var_23C.AddNew var_F0, var_100
  loc_1AD9C93:           var_100 = CVar(global_56) 'String
  loc_1AD9CA0:           var_23C.Collect = "DocID"
  loc_1AD9CA8:           var_100 = CVar(var_D0) 'Long
  loc_1AD9CB6:           var_23C.Collect = "SNo"
  loc_1AD9CC1:           var_100 = CVar(global_60) 'String
  loc_1AD9CCE:           var_23C.Collect = "vType"
  loc_1AD9CD6:           var_100 = CDate(var_90)
  loc_1AD9CE4:           var_23C.Collect = "VDate"
  loc_1AD9CEF:           var_100 = CVar(global_52) 'Long
  loc_1AD9CFD:           var_23C.Collect = "VNo"
  loc_1AD9D05:           var_100 = CVar(var_88) 'String
  loc_1AD9D12:           var_23C.Collect = "vPrefix"
  loc_1AD9D1A:           var_100 = CVar(MemVar_1F95070) 'String
  loc_1AD9D27:           var_23C.Collect = "Site_Code"
  loc_1AD9D4B:           var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD9D59:           var_23C.Collect = "Godowncode"
  loc_1AD9D83:           var_110 = CVar(var_B8.Fields.Item("Item")) 'Address
  loc_1AD9D91:           var_23C.Collect = "Item"
  loc_1AD9DBB:           var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD9DC9:           var_23C.Collect = "DepartCode"
  loc_1AD9DD4:           var_100 = "OPENNING STOCK"
  loc_1AD9DE3:           var_23C.Collect = "Specification"
  loc_1AD9E19:           var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD9E27:           var_23C.Collect = "ChalQty"
  loc_1AD9E67:           var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD9E75:           var_23C.Collect = "RecdQty"
  loc_1AD9E84:           var_100 = 0
  loc_1AD9E93:           var_23C.Collect = "RejQty"
  loc_1AD9EC9:           var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD9ED7:           var_23C.Collect = "AccQty"
  loc_1AD9F05:           var_110 = CVar(var_B8.Fields.Item("WUnit")) 'Address
  loc_1AD9F13:           var_23C.Collect = "Unit"
  loc_1AD9F6A:           var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000")))) 'Double
  loc_1AD9F78:           var_23C.Collect = "ConvRatio"
  loc_1ADA02B:           var_198 = CVar((Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1ADA043:           var_224 = CVar(Val(CStr(Format(var_198, "0.000")))) 'Double
  loc_1ADA051:           var_23C.Collect = "QtyRec"
  loc_1ADA0C1:           var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000")))) 'Double
  loc_1ADA0CF:           var_23C.Collect = "Rate"
  loc_1ADA102:           var_110 = CVar(var_B8.Fields.Item("PUnit")) 'Address
  loc_1ADA110:           var_23C.Collect = "RecdUnit"
  loc_1ADA1BA:           var_198 = CVar((Val(CStr(Format(var_C4, "0.000"))) * Val(CStr(Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000"))))) 'Double
  loc_1ADA1D2:           var_224 = CVar(Val(CStr(Format(var_198, "0.00")))) 'Double
  loc_1ADA1E0:           var_23C.Collect = "Amount"
  loc_1ADA204:           var_100 = "SA"
  loc_1ADA213:           var_23C.Collect = "U_Name"
  loc_1ADA21B:           var_100 = CDate(var_90)
  loc_1ADA229:           var_23C.Collect = "U_EntDt"
  loc_1ADA22E:           var_100 = "A"
  loc_1ADA23D:           var_23C.Collect = "U_AE"
  loc_1ADA249:           var_F0 = "LogSite_Code"
  loc_1ADA252:           var_23C.Collect = var_F0
  loc_1ADA262:           var_23C.Update var_F0, CVar(MemVar_1F95078)
  loc_1ADA269:           Set var_23C = Nothing 
  loc_1ADA26D:         End If
  loc_1ADA270:       Else
  loc_1ADA284:         If (var_BC.RecordCount = 1) Then
  loc_1ADA2C7:           If (CDbl(Val(CStr(Format(var_C4, "0.000")))) <> CDbl(0)) Then
  loc_1ADA30F:             var_198 = Format(var_C4, "0.000")
  loc_1ADA3AF:             var_238 = var_B8.Fields
  loc_1ADA446:             var_430 = Format(CVar((Val(CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))), "0.000")
  loc_1ADA4E3:             var_734 = Val(CStr(Format(var_C4, "0.000")))
  loc_1ADA532:             var_73C = Val(CStr(Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000")))
  loc_1ADA56C:             var_65C = var_BC.Fields
  loc_1ADA5AE:             Proc_6_39_E7D3A0(var_6F8, CVar(var_BC.Fields.Item("SNo")), 1, 1)
  loc_1ADA5C8:             var_148 = "Update Stock Set ChalQty=" & Format(var_C4, "0.000") 
  loc_1ADA5D8:             var_1B8 = var_148 & ",RecdQty=" & var_198 
  loc_1ADA5E8:             var_234 = var_1B8 & ",RejQty=0,AccQty=" & Format(var_C4, "0.000") 
  loc_1ADA608:             var_32C = var_234 & ",Unit='" & var_B8.Fields.Item("WUnit").Value & "',ConvRatio=" & Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000") 
  loc_1ADA631:             var_4E8 = var_32C & ",QtyRec=" & var_430 & ",Rate=" & Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000") & ",RecdUnit='" 
  loc_1ADA651:             var_658 = var_4E8 & var_B8.Fields.Item("PUnit").Value & "',Amount=" & Format(CVar((var_734 * var_73C)), "0.00") & " Where DocId='" 
  loc_1ADA664:             var_6C0 = var_658 & CVar(Proc_6_38_E69628(CVar(var_65C.Item("DocID")), 1, 1, var_73C, 1, 1, var_734)) & "' And SNo=" 
  loc_1ADA679:             unk_4A9AE7.Execute CStr(var_6C0 & var_6F8), var_728, -1
  loc_1ADA71C:           Else
  loc_1ADA754:             var_DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("DocID")), "Delete From Stock Where DocId='", var_198, -1, var_238)
  loc_1ADA788:             Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("SNo")), CVar(var_72C & CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000")) & "' And SNo="), 1)
  loc_1ADA79E:             unk_4A9AE7.Execute CStr(1 & var_148), 1, 1
  loc_1ADA7C4:           End If
  loc_1ADA7C7:         Else
  loc_1ADA7D6:           var_D8 = var_B8.Fields
  loc_1ADA7DE:           var_E0 = var_D8.Item("ItemName")
  loc_1ADA7E6:           var_110 = CVar(var_E0) 'Address
  loc_1ADA824:           var_178 = "Stock Opening Transfer"
  loc_1ADA84A:           MsgBox(CVar("Multiple Opening In Stock " & Proc_6_38_E69628(var_110) & " In ") & var_A4.Fields.Item("Name").Value, &H10, var_178, var_198, var_1B8)
  loc_1ADA875:         Else
  loc_1ADA875:         End If
  loc_1ADA878:         var_B8.MoveNext
  loc_1ADA87D:         GoTo loc_1AD988B
  loc_1ADA880:       End If
  loc_1ADA894:       If (var_B8.RecordCount > 0) Then
  loc_1ADA8AB:         var_DC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_1ADA8D1:         var_138 = CVar(Proc_6_38_E69628(var_110) & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_1ADA8DF:         Proc_183_7_EB17D4(var_110, var_90, var_138)
  loc_1ADA8FE:         unk_4A9AE7.Execute CStr(var_178 & var_110 & " BETWEEN DATE_FROM AND DATE_TO"), -1, var_D8
  loc_1ADA922:       End If
  loc_1ADA925:       var_A4.MoveNext
  loc_1ADA92A:       GoTo loc_1AD971E
  loc_1ADA92D:     End If
  loc_1ADA92D:   End If
  loc_1ADA930:   var_D4 = vbNullString
  loc_1ADA941:   Set var_D8 = Me.ChkGodown
  loc_1ADA947:   Call 0.Method_CmdSTOPTransfer_Click0 (CInt(1), var_E0)
  loc_1ADA965:   Set var_200 = Me.ChkFifo
  loc_1ADA984:   If ((CLng(var_E0.Value) = 1) And (CLng(var_200.Value) = 1)) Then
  loc_1ADA98F:     If (var_D4 <> vbNullString) Then
  loc_1ADA999:       var_D4 = var_D4 & " OR "
  loc_1ADA99C:     End If
  loc_1ADA9B1:     var_D4 = var_D4 & "(D.RestType='Store' And D.Code='" & MemVar_1F95078 & "PURC')"
  loc_1ADA9BB:   End If
  loc_1ADA9C3:   If (var_D4 <> vbNullString) Then
  loc_1ADA9E2:     var_D4 = " Where " & var_D4 & " And (D.Logsite_Code='HO' Or D.Logsite_Code='" & MemVar_1F95078 & "')"
  loc_1ADAA09:     var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.RecdQty) AS Qty,Sum(S.Amount) AS Amt FROM ((" & var_98 & ".dbo.mCurStk S Inner Join "
  loc_1ADAA25:     var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1ADAA41:     Proc_6_7_F26918(var_110, var_90, CVar(var_1DC & MemVar_1F95078 & "' and S.VDate < "))
  loc_1ADAA6F:     var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1ADAA86:     var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','BKREC','KSREC','KMREC') AND S.RecdQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.RecdQty)>0 Order By S.GodownCode,S.Item"
  loc_1ADAA99:     unk_4A9B2E.Execute CStr(var_1B8 & ".dbo.Depart D ON G.Code = D.Code " & CVar(var_D4) & var_224), -1, var_D8
  loc_1ADAAA4:     Set var_AC = var_D8
  loc_1ADAAF1:     var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.IssQty) AS Qty,Sum(S.Amount) AS Amt FROM ((" & var_98 & ".dbo.mCurStk S Inner Join "
  loc_1ADAB0D:     var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1ADAB29:     Proc_6_7_F26918(var_110, var_90, CVar(var_1DC & MemVar_1F95078 & "' and S.VDate < "))
  loc_1ADAB57:     var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1ADAB60:     var_1D8 = var_1B8 & ".dbo.Depart D ON G.Code = D.Code " 
  loc_1ADAB6E:     var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS','DAMGE','CONSE','BKISS') AND S.IssQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.IssQty)>0 Order By S.GodownCode,S.Item"
  loc_1ADAB81:     unk_4A9B2E.Execute CStr(var_1D8 & CVar(var_D4) & var_224), -1, var_D8
  loc_1ADAB8C:     Set var_B0 = var_D8
  loc_1ADABEE:     var_128 = "SELECT G.Code,G.Name FROM " & var_98 & ".dbo.GodownMast G INNER JOIN " & var_98 & ".dbo.Depart D ON G.Code=D.Code " & var_D4
  loc_1ADABFE:     unk_4A9B2E.Execute var_128 & " ORDER BY G.Name", var_110, -1
  loc_1ADAC09:     Set var_A4 = var_D8
  loc_1ADAC21:     ' Referenced from:   1ADBD74
  loc_1ADAC30:     If Not(var_A4.EOF) Then
  loc_1ADAC5A:       var_110 = var_A4.Fields.Item("Code").Value
  loc_1ADAC70:       var_A8 = CStr("GCode='" & var_110 & "' And ")
  loc_1ADAC97:       var_DC = "Select Distinct Item,I.Name As ItemName,I.Type,I.CODE as CODE,I.IssueUnit AS WUnit,I.Unit As PUnit, I.ConvRatio From ((" & var_98
  loc_1ADACB3:       var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1ADACC8:       Proc_6_7_F26918(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1D8)
  loc_1ADACD0:       var_148 = -1 & var_110 
  loc_1ADACEF:       var_D8 = var_A4.Fields
  loc_1ADAD0B:       var_188 = "') And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','PRR','PRC','STOP','MRE','RQI','RQR','BKREC','KSREC','KSISS','KMREC','KMISS','DAMGE','CONSE','BKISS') Order By Name"
  loc_1ADAD1E:       unk_4A9B2E.Execute CStr("GCode='" & var_110 & "' And " & " And S.GodownCode IN ('" & var_D8.Item("Code").Value & var_188), var_200, var_D8
  loc_1ADAD29:       Set var_B8 = var_200
  loc_1ADAD6B:       If (var_B8.RecordCount > 0) Then
  loc_1ADAD74:         Call Proc_198_10_10BE320(var_90)
  loc_1ADAD7F:         global_56 = var_DC
  loc_1ADAD86:       End If
  loc_1ADAD8B:       var_D0 = 0
  loc_1ADAD8E:       ' Referenced from:   1ADBCC7
  loc_1ADAD9D:       If Not(var_B8.EOF) Then
  loc_1ADADA3:         var_C4 = CDbl(0)
  loc_1ADADA9:         var_CC = CDbl(0)
  loc_1ADADB8:         var_AC.Filter = 0
  loc_1ADADC9:         var_B0.Filter = 0
  loc_1ADAE13:         var_AC.Filter = CVar(var_A8 & "Item='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1ADAE31:         var_138 = CVar(var_A8 & "Item='") 'String
  loc_1ADAE6F:         var_B0.Filter = var_138 & var_B8.Fields.Item("Code").Value & "'"
  loc_1ADAE9A:         If (var_AC.RecordCount > 0) Then
  loc_1ADAECA:           Proc_6_39_E7D3A0(var_138, CVar(var_AC.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1ADAED2:           var_148 = (var_C4 + var_138)
  loc_1ADAED7:           var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1ADAF17:           var_138 = (CVar(var_CC) + var_AC.Fields.Item("Amt").Value)
  loc_1ADAF1C:           var_CC = CSng(var_138)
  loc_1ADAF2D:         End If
  loc_1ADAF41:         If (var_B0.RecordCount > 0) Then
  loc_1ADAF71:           Proc_6_39_E7D3A0(var_138, CVar(var_B0.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1ADAF79:           var_148 = (var_C4 - var_138)
  loc_1ADAF7E:           var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1ADAFBC:           var_138 = (CVar(var_CC) - var_B0.Fields.Item("Amt").Value)
  loc_1ADAFC1:           var_CC = CSng(var_138)
  loc_1ADAFCE:         End If
  loc_1ADB006:         var_DC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Code")), "Select * From Stock Where Item='", var_234, -1, var_238)
  loc_1ADB030:         Proc_6_7_F26918(var_138, var_90, CVar(var_CC & var_DC & "' And VType='" & global_60 & "' And VDate>="))
  loc_1ADB082:         var_1FC = var_C4 & var_138 & " And GodownCode IN ('" & var_A4.Fields.Item("Code").Value & "') AND LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1ADB099:         unk_4A9AE7.Execute CStr(var_1FC & "'"), var_D0, var_DC
  loc_1ADB0A4:         Set var_BC = var_238
  loc_1ADB0EC:         If (var_BC.RecordCount = 0) Then
  loc_1ADB0F9:           var_100 = "0.000"
  loc_1ADB107:           var_F0 = var_C4
  loc_1ADB12F:           If (CDbl(Val(CStr(Format(var_F0, var_100)))) <> CDbl(0)) Then
  loc_1ADB13B:             var_D0 = (var_D0 + 1)
  loc_1ADB141:             Set var_74C = var_94 
  loc_1ADB150:             var_74C.AddNew var_F0, var_100
  loc_1ADB15B:             var_100 = CVar(global_56) 'String
  loc_1ADB168:             var_74C.Collect = "DocID"
  loc_1ADB170:             var_100 = CVar(var_D0) 'Long
  loc_1ADB17E:             var_74C.Collect = "SNo"
  loc_1ADB189:             var_100 = CVar(global_60) 'String
  loc_1ADB196:             var_74C.Collect = "vType"
  loc_1ADB19E:             var_100 = CDate(var_90)
  loc_1ADB1AC:             var_74C.Collect = "VDate"
  loc_1ADB1B7:             var_100 = CVar(global_52) 'Long
  loc_1ADB1C5:             var_74C.Collect = "VNo"
  loc_1ADB1CD:             var_100 = CVar(var_88) 'String
  loc_1ADB1DA:             var_74C.Collect = "vPrefix"
  loc_1ADB1E2:             var_100 = CVar(MemVar_1F95070) 'String
  loc_1ADB1EF:             var_74C.Collect = "Site_Code"
  loc_1ADB213:             var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1ADB221:             var_74C.Collect = "Godowncode"
  loc_1ADB24B:             var_110 = CVar(var_B8.Fields.Item("Item")) 'Address
  loc_1ADB259:             var_74C.Collect = "Item"
  loc_1ADB283:             var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1ADB291:             var_74C.Collect = "DepartCode"
  loc_1ADB29C:             var_100 = "OPENNING STOCK"
  loc_1ADB2AB:             var_74C.Collect = "Specification"
  loc_1ADB2E1:             var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1ADB2EF:             var_74C.Collect = "ChalQty"
  loc_1ADB32F:             var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1ADB33D:             var_74C.Collect = "RecdQty"
  loc_1ADB34C:             var_100 = 0
  loc_1ADB35B:             var_74C.Collect = "RejQty"
  loc_1ADB391:             var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1ADB39F:             var_74C.Collect = "AccQty"
  loc_1ADB3CD:             var_110 = CVar(var_B8.Fields.Item("WUnit")) 'Address
  loc_1ADB3DB:             var_74C.Collect = "Unit"
  loc_1ADB432:             var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000")))) 'Double
  loc_1ADB440:             var_74C.Collect = "ConvRatio"
  loc_1ADB4F3:             var_198 = CVar((Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1ADB50B:             var_224 = CVar(Val(CStr(Format(var_198, "0.000")))) 'Double
  loc_1ADB519:             var_74C.Collect = "QtyRec"
  loc_1ADB5D9:             var_224 = CVar(Val(CStr(Format(CVar((Val(CStr(Format(var_CC, "0.00"))) / Val(CStr(Format(var_C4, "0.000"))))), "0.00000")))) 'Double
  loc_1ADB5E7:             var_74C.Collect = "Rate"
  loc_1ADB625:             var_110 = CVar(var_B8.Fields.Item("PUnit")) 'Address
  loc_1ADB633:             var_74C.Collect = "RecdUnit"
  loc_1ADB66F:             var_188 = CVar(Val(CStr(Format(var_CC, "0.00")))) 'Double
  loc_1ADB67D:             var_74C.Collect = "Amount"
  loc_1ADB68C:             var_100 = "SA"
  loc_1ADB69B:             var_74C.Collect = "U_Name"
  loc_1ADB6A3:             var_100 = CDate(var_90)
  loc_1ADB6B1:             var_74C.Collect = "U_EntDt"
  loc_1ADB6B6:             var_100 = "A"
  loc_1ADB6C5:             var_74C.Collect = "U_AE"
  loc_1ADB6D1:             var_F0 = "LogSite_Code"
  loc_1ADB6DA:             var_74C.Collect = var_F0
  loc_1ADB6EA:             var_74C.Update var_F0, CVar(MemVar_1F95078)
  loc_1ADB6F1:             Set var_74C = Nothing 
  loc_1ADB6F5:           End If
  loc_1ADB6F8:         Else
  loc_1ADB70C:           If (var_BC.RecordCount = 1) Then
  loc_1ADB74F:             If (CDbl(Val(CStr(Format(var_C4, "0.000")))) <> CDbl(0)) Then
  loc_1ADB797:               var_198 = Format(var_C4, "0.000")
  loc_1ADB837:               var_238 = var_B8.Fields
  loc_1ADB8C7:               var_400 = CVar((Val(CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1ADB904:               var_734 = Val(CStr(Format(var_CC, "0.00")))
  loc_1ADB938:               var_73C = Val(CStr(Format(var_C4, "0.000")))
  loc_1ADBA00:               Proc_6_39_E7D3A0(var_6C0, CVar(var_BC.Fields.Item("SNo")), 1, var_734)
  loc_1ADBA1A:               var_148 = "Update Stock Set ChalQty=" & Format(var_C4, "0.000") 
  loc_1ADBA2A:               var_1B8 = var_148 & ",RecdQty=" & var_198 
  loc_1ADBA3A:               var_234 = var_1B8 & ",RejQty=0,AccQty=" & Format(var_C4, "0.000") 
  loc_1ADBA5A:               var_32C = var_234 & ",Unit='" & var_B8.Fields.Item("WUnit").Value & "',ConvRatio=" & Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000") 
  loc_1ADBA83:               var_570 = var_32C & ",QtyRec=" & Format(var_400, "0.000") & ",Rate=" & Format(CVar((var_734 / var_73C)), "0.00000") & ",RecdUnit='" 
  loc_1ADBAAD:               var_680 = var_570 & var_B8.Fields.Item("PUnit").Value & "',Amount=" & Format(var_CC, "0.00") & " Where DocId='" & CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("DocID")), 1, 1, 1, 1, var_73C, 1)) 
  loc_1ADBACB:               unk_4A9AE7.Execute CStr(var_680 & "' And SNo=" & var_6C0), var_6F8, -1
  loc_1ADBB66:             Else
  loc_1ADBB9E:               var_DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("DocID")), "Delete From Stock Where DocId='", var_198, -1, var_238)
  loc_1ADBBD2:               Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("SNo")), CVar(var_65C & CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000")) & "' And SNo="), 1)
  loc_1ADBBE8:               unk_4A9AE7.Execute CStr(1 & var_148), 1, 1
  loc_1ADBC0E:             End If
  loc_1ADBC11:           Else
  loc_1ADBC20:             var_D8 = var_B8.Fields
  loc_1ADBC28:             var_E0 = var_D8.Item("ItemName")
  loc_1ADBC30:             var_110 = CVar(var_E0) 'Address
  loc_1ADBC6E:             var_178 = "Stock Opening Transfer"
  loc_1ADBC94:             MsgBox(CVar("Multiple Opening In Stock " & Proc_6_38_E69628(var_110) & " In ") & var_A4.Fields.Item("Name").Value, &H10, var_178, var_198, var_1B8)
  loc_1ADBCBF:           Else
  loc_1ADBCBF:           End If
  loc_1ADBCC2:           var_B8.MoveNext
  loc_1ADBCC7:           GoTo loc_1ADAD8E
  loc_1ADBCCA:         End If
  loc_1ADBCDE:         If (var_B8.RecordCount > 0) Then
  loc_1ADBCF5:           var_DC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_1ADBD1B:           var_138 = CVar(Proc_6_38_E69628(var_110) & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_1ADBD29:           Proc_183_7_EB17D4(var_110, var_90, var_138)
  loc_1ADBD48:           unk_4A9AE7.Execute CStr(var_178 & var_110 & " BETWEEN DATE_FROM AND DATE_TO"), -1, var_D8
  loc_1ADBD6C:         End If
  loc_1ADBD6F:         var_A4.MoveNext
  loc_1ADBD74:         GoTo loc_1ADAC21
  loc_1ADBD77:       End If
  loc_1ADBD77:     End If
  loc_1ADBD7A:     var_D4 = vbNullString
  loc_1ADBD8B:     Set var_D8 = Me.ChkGodown
  loc_1ADBD91:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(1), var_E0)
  loc_1ADBDAF:     Set var_200 = Me.ChkFifo
  loc_1ADBDCE:     If ((CLng(var_E0.Value) = 1) And (CLng(var_200.Value) = 0)) Then
  loc_1ADBDD9:       If (var_D4 <> vbNullString) Then
  loc_1ADBDE3:         var_D4 = var_D4 & " OR "
  loc_1ADBDE6:       End If
  loc_1ADBDFB:       var_D4 = var_D4 & "(D.RestType='Store' And D.Code='" & MemVar_1F95078 & "PURC')"
  loc_1ADBE05:     End If
  loc_1ADBE13:     Set var_D8 = Me.ChkGodown
  loc_1ADBE19:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(2), var_E0)
  loc_1ADBE37:     If (CLng(var_E0.Value) = 1) Then
  loc_1ADBE42:       If (var_D4 <> vbNullString) Then
  loc_1ADBE4C:         var_D4 = var_D4 & " OR "
  loc_1ADBE4F:       End If
  loc_1ADBE64:       var_D4 = var_D4 & "(D.RestType='Store' And D.Code<>'" & MemVar_1F95078 & "PURC')"
  loc_1ADBE6E:     End If
  loc_1ADBE7C:     Set var_D8 = Me.ChkGodown
  loc_1ADBE82:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(3), var_E0)
  loc_1ADBEA0:     If (CLng(var_E0.Value) = 1) Then
  loc_1ADBEAB:       If (var_D4 <> vbNullString) Then
  loc_1ADBEB5:         var_D4 = var_D4 & " OR "
  loc_1ADBEB8:       End If
  loc_1ADBECD:       var_D4 = var_D4 & "(D.RestType='Consumable Store' And D.Code<>'" & MemVar_1F95078 & "PURC')"
  loc_1ADBED7:     End If
  loc_1ADBEE5:     Set var_D8 = Me.ChkGodown
  loc_1ADBEEB:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(4), var_E0)
  loc_1ADBF09:     If (CLng(var_E0.Value) = 1) Then
  loc_1ADBF14:       If (var_D4 <> vbNullString) Then
  loc_1ADBF1E:         var_D4 = var_D4 & " OR "
  loc_1ADBF21:       End If
  loc_1ADBF36:       var_D4 = var_D4 & "(D.RestType='House Keeping' And D.Code<>'" & MemVar_1F95078 & "PURC')"
  loc_1ADBF40:     End If
  loc_1ADBF48:     If (var_D4 <> vbNullString) Then
  loc_1ADBF67:       var_D4 = " Where " & var_D4 & " And (D.Logsite_Code='HO' Or D.Logsite_Code='" & MemVar_1F95078 & "')"
  loc_1ADBF8E:       var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.RecdQty) AS Qty,Sum(S.RecdQty*I.LPurRate) AS Amt FROM ((" & var_98 & ".dbo.Stock S Inner Join "
  loc_1ADBFAA:       var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1ADBFC6:       Proc_6_7_F26918(var_110, var_90, CVar(var_1DC & MemVar_1F95078 & "' and S.VDate < "))
  loc_1ADBFF4:       var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1ADC00B:       var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','BKREC','KSREC','KMREC') AND S.RecdQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.RecdQty)>0 Order By S.GodownCode,S.Item"
  loc_1ADC01E:       unk_4A9B2E.Execute CStr(var_1B8 & ".dbo.Depart D ON G.Code = D.Code " & CVar(var_D4) & var_224), -1, var_D8
  loc_1ADC029:       Set var_AC = var_D8
  loc_1ADC076:       var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.IssQty) AS Qty,Sum(S.IssQty*I.LPurRate) AS Amt FROM ((" & var_98 & ".dbo.Stock S Inner Join "
  loc_1ADC092:       var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1ADC0AE:       Proc_6_7_F26918(var_110, var_90, CVar(var_1DC & MemVar_1F95078 & "' and S.VDate < "))
  loc_1ADC0DC:       var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1ADC0E5:       var_1D8 = var_1B8 & ".dbo.Depart D ON G.Code = D.Code " 
  loc_1ADC0F3:       var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS','DAMGE','CONSE') AND S.IssQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.IssQty)>0 Order By S.GodownCode,S.Item"
  loc_1ADC106:       unk_4A9B2E.Execute CStr(var_1D8 & CVar(var_D4) & var_224), -1, var_D8
  loc_1ADC111:       Set var_B0 = var_D8
  loc_1ADC173:       var_128 = "SELECT G.Code,G.Name FROM " & var_98 & ".dbo.GodownMast G INNER JOIN " & var_98 & ".dbo.Depart D ON G.Code=D.Code " & var_D4
  loc_1ADC183:       unk_4A9B2E.Execute var_128 & " ORDER BY G.Name", var_110, -1
  loc_1ADC18E:       Set var_A4 = var_D8
  loc_1ADC1A6:       ' Referenced from:     1ADD2F9
  loc_1ADC1B5:       If Not(var_A4.EOF) Then
  loc_1ADC1DF:         var_110 = var_A4.Fields.Item("Code").Value
  loc_1ADC1F5:         var_A8 = CStr("GCode='" & var_110 & "' And ")
  loc_1ADC21C:         var_DC = "Select Distinct Item,I.Name As ItemName,I.Type,I.CODE as CODE,I.IssueUnit AS WUnit,I.Unit As PUnit, I.ConvRatio From ((" & var_98
  loc_1ADC238:         var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1ADC24D:         Proc_6_7_F26918(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1D8)
  loc_1ADC255:         var_148 = -1 & var_110 
  loc_1ADC274:         var_D8 = var_A4.Fields
  loc_1ADC290:         var_188 = "') And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','PRR','PRC','STOP','MRE','RQI','RQR','BKREC','KSREC','KSISS','KMREC','KMISS','DAMGE','CONSE') Order By Name"
  loc_1ADC2A3:         unk_4A9B2E.Execute CStr("GCode='" & var_110 & "' And " & " And S.GodownCode IN ('" & var_D8.Item("Code").Value & var_188), var_200, var_D8
  loc_1ADC2AE:         Set var_B8 = var_200
  loc_1ADC2F0:         If (var_B8.RecordCount > 0) Then
  loc_1ADC2F9:           Call Proc_198_10_10BE320(var_90)
  loc_1ADC304:           global_56 = var_DC
  loc_1ADC30B:         End If
  loc_1ADC310:         var_D0 = 0
  loc_1ADC313:         ' Referenced from:     1ADD24C
  loc_1ADC322:         If Not(var_B8.EOF) Then
  loc_1ADC328:           var_C4 = CDbl(0)
  loc_1ADC32E:           var_CC = CDbl(0)
  loc_1ADC33D:           var_AC.Filter = 0
  loc_1ADC34E:           var_B0.Filter = 0
  loc_1ADC398:           var_AC.Filter = CVar(var_A8 & "Item='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1ADC3B6:           var_138 = CVar(var_A8 & "Item='") 'String
  loc_1ADC3F4:           var_B0.Filter = var_138 & var_B8.Fields.Item("Code").Value & "'"
  loc_1ADC41F:           If (var_AC.RecordCount > 0) Then
  loc_1ADC44F:             Proc_6_39_E7D3A0(var_138, CVar(var_AC.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1ADC457:             var_148 = (var_C4 + var_138)
  loc_1ADC45C:             var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1ADC49C:             var_138 = (CVar(var_CC) + var_AC.Fields.Item("Amt").Value)
  loc_1ADC4A1:             var_CC = CSng(var_138)
  loc_1ADC4B2:           End If
  loc_1ADC4C6:           If (var_B0.RecordCount > 0) Then
  loc_1ADC4F6:             Proc_6_39_E7D3A0(var_138, CVar(var_B0.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1ADC4FE:             var_148 = (var_C4 - var_138)
  loc_1ADC503:             var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1ADC541:             var_138 = (CVar(var_CC) - var_B0.Fields.Item("Amt").Value)
  loc_1ADC546:             var_CC = CSng(var_138)
  loc_1ADC553:           End If
  loc_1ADC58B:           var_DC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Code")), "Select * From Stock Where Item='", var_234, -1, var_238)
  loc_1ADC5B5:           Proc_6_7_F26918(var_138, var_90, CVar(var_CC & var_DC & "' And VType='" & global_60 & "' And VDate>="))
  loc_1ADC607:           var_1FC = var_C4 & var_138 & " And GodownCode IN ('" & var_A4.Fields.Item("Code").Value & "') AND LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1ADC61E:           unk_4A9AE7.Execute CStr(var_1FC & "'"), var_D0, var_DC
  loc_1ADC629:           Set var_BC = var_238
  loc_1ADC671:           If (var_BC.RecordCount = 0) Then
  loc_1ADC67E:             var_100 = "0.000"
  loc_1ADC68C:             var_F0 = var_C4
  loc_1ADC6B4:             If (CDbl(Val(CStr(Format(var_F0, var_100)))) <> CDbl(0)) Then
  loc_1ADC6C0:               var_D0 = (var_D0 + 1)
  loc_1ADC6C6:               Set var_750 = var_94 
  loc_1ADC6D5:               var_750.AddNew var_F0, var_100
  loc_1ADC6E0:               var_100 = CVar(global_56) 'String
  loc_1ADC6ED:               var_750.Collect = "DocID"
  loc_1ADC6F5:               var_100 = CVar(var_D0) 'Long
  loc_1ADC703:               var_750.Collect = "SNo"
  loc_1ADC70E:               var_100 = CVar(global_60) 'String
  loc_1ADC71B:               var_750.Collect = "vType"
  loc_1ADC723:               var_100 = CDate(var_90)
  loc_1ADC731:               var_750.Collect = "VDate"
  loc_1ADC73C:               var_100 = CVar(global_52) 'Long
  loc_1ADC74A:               var_750.Collect = "VNo"
  loc_1ADC752:               var_100 = CVar(var_88) 'String
  loc_1ADC75F:               var_750.Collect = "vPrefix"
  loc_1ADC767:               var_100 = CVar(MemVar_1F95070) 'String
  loc_1ADC774:               var_750.Collect = "Site_Code"
  loc_1ADC798:               var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1ADC7A6:               var_750.Collect = "Godowncode"
  loc_1ADC7D0:               var_110 = CVar(var_B8.Fields.Item("Item")) 'Address
  loc_1ADC7DE:               var_750.Collect = "Item"
  loc_1ADC808:               var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1ADC816:               var_750.Collect = "DepartCode"
  loc_1ADC821:               var_100 = "OPENNING STOCK"
  loc_1ADC830:               var_750.Collect = "Specification"
  loc_1ADC866:               var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1ADC874:               var_750.Collect = "ChalQty"
  loc_1ADC8B4:               var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1ADC8C2:               var_750.Collect = "RecdQty"
  loc_1ADC8D1:               var_100 = 0
  loc_1ADC8E0:               var_750.Collect = "RejQty"
  loc_1ADC916:               var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1ADC924:               var_750.Collect = "AccQty"
  loc_1ADC952:               var_110 = CVar(var_B8.Fields.Item("WUnit")) 'Address
  loc_1ADC960:               var_750.Collect = "Unit"
  loc_1ADC9B7:               var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000")))) 'Double
  loc_1ADC9C5:               var_750.Collect = "ConvRatio"
  loc_1ADCA78:               var_198 = CVar((Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1ADCA90:               var_224 = CVar(Val(CStr(Format(var_198, "0.000")))) 'Double
  loc_1ADCA9E:               var_750.Collect = "QtyRec"
  loc_1ADCB5E:               var_224 = CVar(Val(CStr(Format(CVar((Val(CStr(Format(var_CC, "0.00"))) / Val(CStr(Format(var_C4, "0.000"))))), "0.00000")))) 'Double
  loc_1ADCB6C:               var_750.Collect = "Rate"
  loc_1ADCBAA:               var_110 = CVar(var_B8.Fields.Item("PUnit")) 'Address
  loc_1ADCBB8:               var_750.Collect = "RecdUnit"
  loc_1ADCBF4:               var_188 = CVar(Val(CStr(Format(var_CC, "0.00")))) 'Double
  loc_1ADCC02:               var_750.Collect = "Amount"
  loc_1ADCC11:               var_100 = "SA"
  loc_1ADCC20:               var_750.Collect = "U_Name"
  loc_1ADCC28:               var_100 = CDate(var_90)
  loc_1ADCC36:               var_750.Collect = "U_EntDt"
  loc_1ADCC3B:               var_100 = "A"
  loc_1ADCC4A:               var_750.Collect = "U_AE"
  loc_1ADCC56:               var_F0 = "LogSite_Code"
  loc_1ADCC5F:               var_750.Collect = var_F0
  loc_1ADCC6F:               var_750.Update var_F0, CVar(MemVar_1F95078)
  loc_1ADCC76:               Set var_750 = Nothing 
  loc_1ADCC7A:             End If
  loc_1ADCC7D:           Else
  loc_1ADCC91:             If (var_BC.RecordCount = 1) Then
  loc_1ADCCD4:               If (CDbl(Val(CStr(Format(var_C4, "0.000")))) <> CDbl(0)) Then
  loc_1ADCD1C:                 var_198 = Format(var_C4, "0.000")
  loc_1ADCDBC:                 var_238 = var_B8.Fields
  loc_1ADCE4C:                 var_400 = CVar((Val(CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1ADCE89:                 var_734 = Val(CStr(Format(var_CC, "0.00")))
  loc_1ADCEBD:                 var_73C = Val(CStr(Format(var_C4, "0.000")))
  loc_1ADCF85:                 Proc_6_39_E7D3A0(var_6C0, CVar(var_BC.Fields.Item("SNo")), 1, var_734)
  loc_1ADCF9F:                 var_148 = "Update Stock Set ChalQty=" & Format(var_C4, "0.000") 
  loc_1ADCFAF:                 var_1B8 = var_148 & ",RecdQty=" & var_198 
  loc_1ADCFD8:                 var_2CC = var_1B8 & ",RejQty=0,AccQty=" & Format(var_C4, "0.000") & ",Unit='" & var_B8.Fields.Item("WUnit").Value & "',ConvRatio=" 
  loc_1ADCFF8:                 var_460 = var_2CC & Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000") & ",QtyRec=" & Format(var_400, "0.000") & ",Rate=" 
  loc_1ADD018:                 var_5C8 = var_460 & Format(CVar((var_734 / var_73C)), "0.00000") & ",RecdUnit='" & var_B8.Fields.Item("PUnit").Value & "',Amount=" 
  loc_1ADD032:                 var_680 = var_5C8 & Format(var_CC, "0.00") & " Where DocId='" & CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("DocID")), 1, 1, 1, 1, var_73C, 1)) 
  loc_1ADD050:                 unk_4A9AE7.Execute CStr(var_680 & "' And SNo=" & var_6C0), var_6F8, -1
  loc_1ADD0EB:               Else
  loc_1ADD123:                 var_DC = Proc_6_38_E69628(CVar(var_BC.Fields.Item("DocID")), "Delete From Stock Where DocId='", var_198, -1, var_238)
  loc_1ADD157:                 Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("SNo")), CVar(var_65C & CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000")) & "' And SNo="), 1)
  loc_1ADD16D:                 unk_4A9AE7.Execute CStr(1 & var_148), 1, 1
  loc_1ADD193:               End If
  loc_1ADD196:             Else
  loc_1ADD1A5:               var_D8 = var_B8.Fields
  loc_1ADD1B5:               var_110 = CVar(var_D8.Item("ItemName")) 'Address
  loc_1ADD1F3:               var_178 = "Stock Opening Transfer"
  loc_1ADD219:               MsgBox(CVar("Multiple Opening In Stock " & Proc_6_38_E69628(var_110) & " In ") & var_A4.Fields.Item("Name").Value, &H10, var_178, var_198, var_1B8)
  loc_1ADD244:             Else
  loc_1ADD244:             End If
  loc_1ADD247:             var_B8.MoveNext
  loc_1ADD24C:             GoTo loc_1ADC313
  loc_1ADD24F:           End If
  loc_1ADD263:           If (var_B8.RecordCount > 0) Then
  loc_1ADD27A:             var_DC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_1ADD2A0:             var_138 = CVar(Proc_6_38_E69628(var_110) & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_1ADD2AE:             Proc_183_7_EB17D4(var_110, var_90, var_138)
  loc_1ADD2B6:             var_148 = var_178 & var_110 
  loc_1ADD2BF:             var_158 = var_148 & " BETWEEN DATE_FROM AND DATE_TO" 
  loc_1ADD2CD:             unk_4A9AE7.Execute CStr(var_158), -1, var_D8
  loc_1ADD2F1:           End If
  loc_1ADD2F4:           var_A4.MoveNext
  loc_1ADD2F9:           GoTo loc_1ADC1A6
  loc_1ADD2FC:         End If
  loc_1ADD2FC:       End If
  loc_1ADD302:       unk_4A9AE7.CommitTrans
  loc_1ADD309:       var_9E = 0
  loc_1ADD32D:       MsgBox("Opening Transfer In Stock Completed.", &H40, "Information", var_148, var_158)
  loc_1ADD342:       Set var_B8 = Nothing
  loc_1ADD34A:       Set var_94 = Nothing
  loc_1ADD352:       Set var_BC = Nothing
  loc_1ADD35A:       Set var_AC = Nothing
  loc_1ADD362:       Set var_B0 = Nothing
  loc_1ADD36A:       Set var_B4 = Nothing
  loc_1ADD379:       Me.FrStockTransfer.Enabled = True
  loc_1ADD381:       Exit Sub
  loc_1ADD382:     End If
  loc_1ADD382:   End If
  loc_1ADD382: End If
  loc_1ADD382: ' Referenced from: 1AD9378
  loc_1ADD388: If (var_9E = &HFF) Then
  loc_1ADD391:   unk_4A9AE7.RollbackTrans
  loc_1ADD396: End If
  loc_1ADD3A2: Me.FrStockTransfer.Enabled = True
  loc_1ADD3B0: Call 0.Method_arg_50 (Proc_6_38_E69628("Opening Transfer In Stock Completed."))
  loc_1ADD3C5: Proc_183_57_104B0BC(Proc_6_38_E69628("Opening Transfer In Stock Completed."), "Opening Transfer")
  loc_1ADD3D1: Exit Sub
End Sub

Public Sub Proc_198_10_10BE320(arg_C) '10BE320
  'Data Table: 4A9AE0
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_10BE09A: On Error Goto loc_10BE2F3
  loc_10BE0A0: var_90 = "STOP"
  loc_10BE0A7: Set var_8C = New 
  loc_10BE0B2: Me.Recordset15.CursorLocation = 3
  loc_10BE0BA: var_D0 = arg_C
  loc_10BE0C2: Proc_183_7_EB17D4(var_E0)
  loc_10BE0E5: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F95070
  loc_10BE116: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F95070 & "' AND VP.LOGSITE_CODE='"
  loc_10BE141: var_120 = CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BE149: var_8C.Open var_120, CVar(MemVar_1F951E0), 2
  loc_10BE186: If (var_8C.RecordCount > 0) Then
  loc_10BE1B8:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BE1C1:   global_52 = CLng(CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BE1FD:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BE21A:   var_98 = Proc_183_15_EAD490(MemVar_1F95070, 2, MemVar_1F9506C, global_52)
  loc_10BE224:   var_D0 = var_90
  loc_10BE234:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BE245:   var_120 = Space((5 - Len(var_90)))
  loc_10BE24D:   var_150 = (CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BE25E:   var_160 = Space((5 - Len(var_94)))
  loc_10BE266:   var_170 = (var_150 + var_160)
  loc_10BE270:   var_180 = (var_170 + CVar(var_94))
  loc_10BE289:   var_190 = Space((8 - Len(CStr(global_52))))
  loc_10BE291:   var_1A0 = (var_180 + var_190)
  loc_10BE2A0:   var_1C0 = (var_1A0 + CVar(CStr(global_52)))
  loc_10BE2D9:   var_88 = CStr(var_1C0)
  loc_10BE2DF: Else
  loc_10BE2E2:   var_88 = vbNullString
  loc_10BE2E5: End If
  loc_10BE2EA: Set var_8C = Nothing
  loc_10BE2ED: Proc_198_10_10BE320 = -1
  loc_10BE2F3: ' Referenced from: 10BE09A
  loc_10BE2F9: Call 0.Method_arg_50 (var_98)
  loc_10BE30E: Proc_183_57_104B0BC(var_98, "VoucherNoSTOP")
  loc_10BE31A: Proc_198_10_10BE320 = var_D0
End Sub

Public Sub Proc_198_11_10BE978(arg_C) '10BE978
  'Data Table: 4A9AE0
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_10BE6F2: On Error Goto loc_10BE94B
  loc_10BE6F8: var_90 = "F_AO"
  loc_10BE6FF: Set var_8C = New 
  loc_10BE70A: Me.Recordset15.CursorLocation = 3
  loc_10BE712: var_D0 = arg_C
  loc_10BE71A: Proc_183_7_EB17D4(var_E0)
  loc_10BE73D: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F95070
  loc_10BE76E: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F95070 & "' AND VP.LOGSITE_CODE='"
  loc_10BE799: var_120 = CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BE7A1: var_8C.Open var_120, CVar(MemVar_1F951E0), 2
  loc_10BE7DE: If (var_8C.RecordCount > 0) Then
  loc_10BE810:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BE819:   global_52 = CLng(CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BE855:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BE872:   var_98 = Proc_183_15_EAD490(MemVar_1F95070, 2, MemVar_1F9506C, global_52)
  loc_10BE87C:   var_D0 = var_90
  loc_10BE88C:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BE89D:   var_120 = Space((5 - Len(var_90)))
  loc_10BE8A5:   var_150 = (CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BE8B6:   var_160 = Space((5 - Len(var_94)))
  loc_10BE8BE:   var_170 = (var_150 + var_160)
  loc_10BE8C8:   var_180 = (var_170 + CVar(var_94))
  loc_10BE8E1:   var_190 = Space((8 - Len(CStr(global_52))))
  loc_10BE8E9:   var_1A0 = (var_180 + var_190)
  loc_10BE8F8:   var_1C0 = (var_1A0 + CVar(CStr(global_52)))
  loc_10BE931:   var_88 = CStr(var_1C0)
  loc_10BE937: Else
  loc_10BE93A:   var_88 = vbNullString
  loc_10BE93D: End If
  loc_10BE942: Set var_8C = Nothing
  loc_10BE945: Proc_198_11_10BE978 = -1
  loc_10BE94B: ' Referenced from: 10BE6F2
  loc_10BE951: Call 0.Method_arg_50 (var_98)
  loc_10BE966: Proc_183_57_104B0BC(var_98, "VoucherNo")
  loc_10BE972: Proc_198_11_10BE978 = var_D0
End Sub
