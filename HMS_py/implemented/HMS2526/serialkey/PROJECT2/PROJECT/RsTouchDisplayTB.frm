VERSION 5.00
Begin VB.Form RsTouchDisplayTB
  Caption = "Display Table"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin BtnEnh BtnEnhTB
    Index = 0
    Left = 1095
    Top = 6165
    Width = 1155
    Height = 945
    Visible = 0   'False
    TabIndex = 36
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 10000
    Left = 9810
    Top = 3825
  End
  Begin Frame FrameOption
    Caption = "Frame1"
    BackColor = &HFFC0FF&
    Left = 11685
    Top = 1725
    Width = 2730
    Height = 4155
    TabIndex = 13
    BorderStyle = 0 'None
    Begin BtnEnh CmdAKOT
      Left = 0
      Top = 0
      Width = 2700
      Height = 600
      TabIndex = 29
    End
    Begin BtnEnh CmdSBill
      Left = 0
      Top = 585
      Width = 2700
      Height = 600
      TabIndex = 30
    End
    Begin BtnEnh CmdChngTable
      Left = 0
      Top = 1170
      Width = 2700
      Height = 600
      TabIndex = 31
    End
    Begin BtnEnh CmdBillLookup
      Left = 0
      Top = 1755
      Width = 2700
      Height = 600
      TabIndex = 32
    End
    Begin BtnEnh CmdPKOT
      Left = 0
      Top = 2340
      Width = 2700
      Height = 600
      TabIndex = 33
    End
    Begin BtnEnh CmdOrderBook
      Left = 0
      Top = 2925
      Width = 2700
      Height = 600
      TabIndex = 34
    End
    Begin BtnEnh CmdCancel
      Left = 0
      Top = 3510
      Width = 2700
      Height = 600
      TabIndex = 35
    End
  End
  Begin Frame FrPendingOrder
    Caption = "PENDING ORDER"
    BackColor = &HD6D7C6&
    Left = 375
    Top = 10350
    Width = 9330
    Height = 2580
    TabIndex = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdExit2
      Caption = "Exit"
      Left = 8085
      Top = 495
      Width = 1000
      Height = 1000
      Visible = 0   'False
      TabIndex = 11
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchDisplayTB.frx":0
      DisabledPicture = "RsTouchDisplayTB.frx":4E1
      Style = 1
    End
    Begin CommandButton CmdDown2
      Caption = "Down"
      Left = 7080
      Top = 495
      Width = 1000
      Height = 1000
      TabIndex = 10
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchDisplayTB.frx":91E
      DisabledPicture = "RsTouchDisplayTB.frx":DAD
      Style = 1
    End
    Begin CommandButton CmdUp2
      Caption = "Up"
      Left = 6075
      Top = 495
      Width = 1000
      Height = 1000
      TabIndex = 9
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchDisplayTB.frx":11BB
      DisabledPicture = "RsTouchDisplayTB.frx":1658
      Style = 1
    End
    Begin MSHFlexGrid FGrid2
      Left = 315
      Top = 510
      Width = 5535
      Height = 1965
      TabIndex = 12
    End
  End
  Begin Frame FrSettlement
    Caption = "UNSETTLED BILL"
    BackColor = &HD6D7C6&
    ForeColor = &HC0&
    Left = 4515
    Top = 6000
    Width = 9330
    Height = 2580
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
    Begin MSHFlexGrid FGrid
      Left = 435
      Top = 480
      Width = 5535
      Height = 1965
      TabIndex = 1
    End
    Begin BtnEnh CmdUP
      Left = 6090
      Top = 1500
      Width = 1005
      Height = 1005
      TabIndex = 2
    End
    Begin BtnEnh CmdDown
      Left = 7080
      Top = 1515
      Width = 1005
      Height = 1005
      TabIndex = 3
    End
    Begin BtnEnh CmdExit
      Left = 8085
      Top = 1515
      Width = 1005
      Height = 1005
      TabIndex = 4
    End
    Begin BtnEnh CmdRef
      Left = 6270
      Top = 150
      Width = 1005
      Height = 1005
      TabIndex = 37
    End
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 735
    Width = 10815
    Height = 6420
    TabIndex = 5
  End
  Begin BtnEnh CmdRight
    Left = 5760
    Top = 7305
    Width = 1500
    Height = 690
    TabIndex = 6
  End
  Begin BtnEnh CmdLeft
    Left = 3960
    Top = 7305
    Width = 1500
    Height = 690
    TabIndex = 7
  End
  Begin TopCtrl TopCtrl1
    Left = 165
    Top = 5265
    Width = 1185
    Height = 375
    Visible = 0   'False
    TabIndex = 14
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh CmdUnSBill
    Left = 6765
    Top = 300
    Width = 2670
    Height = 450
    TabIndex = 26
  End
  Begin BtnEnh CmdDone
    Left = 9450
    Top = 285
    Width = 2535
    Height = 450
    TabIndex = 27
  End
  Begin BtnEnh CmdCashCardStatement
    Left = 4110
    Top = 300
    Width = 2655
    Height = 450
    Visible = 0   'False
    TabIndex = 28
  End
  Begin BtnEnh cmdPrintPKOT
    Left = 12000
    Top = 285
    Width = 2670
    Height = 450
    Visible = 0   'False
    TabIndex = 38
  End
  Begin Label Label1
    Caption = "Occupied"
    Index = 5
    ForeColor = &HC00000&
    Left = 165
    Top = 375
    Width = 900
    Height = 240
    TabIndex = 20
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
    Caption = "Billed"
    Index = 7
    ForeColor = &HC00000&
    Left = 3105
    Top = 390
    Width = 570
    Height = 240
    TabIndex = 15
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
    Caption = "Not Occupied"
    Index = 6
    ForeColor = &HC00000&
    Left = 1440
    Top = 375
    Width = 1290
    Height = 210
    TabIndex = 19
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 30
    Top = 330
    Width = 1275
    Height = 330
    TabIndex = 22
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
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 1350
    Top = 330
    Width = 1410
    Height = 330
    TabIndex = 21
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
    Left = 2790
    Top = 330
    Width = 1245
    Height = 345
    TabIndex = 16
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
  Begin Label Label6
    BackColor = &HFFC0C0&
    Left = 0
    Top = 285
    Width = 12000
    Height = 450
    TabIndex = 25
  End
  Begin Label LBLRoomName
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 5970
    Top = 0
    Width = 6405
    Height = 285
    TabIndex = 23
    Alignment = 1 'Right Justify
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
  Begin Label Label5
    Caption = "#"
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3975
    Top = 0
    Width = 1980
    Height = 285
    TabIndex = 17
    Alignment = 2 'Center
    AutoSize = -1  'True
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
  Begin Label Label4
    Caption = "#"
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15
    Top = 0
    Width = 3945
    Height = 285
    TabIndex = 18
    Alignment = 2 'Center
    AutoSize = -1  'True
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
  Begin Label Label3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = -45
    Top = -15
    Width = 12495
    Height = 300
    TabIndex = 24
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

Attribute VB_Name = "RsTouchDisplayTB"

Private global_82 As Integer
Private global_100 As Integer

Private Sub CmdPKOT_UnknownEvent_9 '11C27E0
  'Data Table: 51A3CC
  Dim var_86 As Integer
  Dim var_A8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_18C As Variant
  loc_11C23B8: Me.FrameOption.Visible = False
  loc_11C23F3: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_11C240A:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_11C2416: Else
  loc_11C2455:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11C2469: End If
  loc_11C247C: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C2485: var_E8 = CVar(CLng(var_86)) 'Long
  loc_11C24C0: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_11C24C8: var_148 = "VACANT"
  loc_11C24E5: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C24F1: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_11C2544: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_11C254F:   If (MemVar_1F95210 = "Yes") Then
  loc_11C2556:     Set var_8C = New RsTouchScreenKOTEntry
  loc_11C255C:   Else
  loc_11C2560:     Set var_8C = New RsKOTEntry
  loc_11C2563:   End If
  loc_11C257B:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C2587:   var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11C25D3:   If CBool(InStr(var_E8, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_11C25E9:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C25F5:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11C2628:     var_148 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C2634:     var_18C = CVar(CLng((var_86 + 2))) 'Long
  loc_11C266F:     var_16C = (InStr(var_18C, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_11C2695:     var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, Me.FGrid1.Row)
  loc_11C26BE:   Else
  loc_11C26D1:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C26DD:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11C26FE:     var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_11C2712:   End If
  loc_11C2716:   Set var_A8 = var_C8(var_E8)
  loc_11C2738:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C2754:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11C2780:   var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11C27A7:   var_8C.pRestCode = CVar(global_52)
  loc_11C27B4:   var_8C.OpenType = "Pending KOT"
  loc_11C27C4:   var_8C.OpenMode = 1
  loc_11C27CB:   Call var_8C.Show
  loc_11C27D6:   global_82 = &HFF
  loc_11C27D9: End If
  loc_11C27DB: Set var_8C = Nothing 
  loc_11C27DF: Exit Sub
End Sub

Private Sub CmdOrderBook_UnknownEvent_9 '112F648
  'Data Table: 51A3CC
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_86 As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As String
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_11C As Variant
  Dim var_8C As Recordset15
  loc_112F30C: Me.FrameOption.Visible = False
  loc_112F347: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_112F35E:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_112F36A: Else
  loc_112F3A9:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_112F3BD: End If
  loc_112F3D0: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112F3D9: var_EC = CVar(CLng(var_86)) 'Long
  loc_112F414: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_112F41C: var_14C = "VACANT"
  loc_112F439: var_180 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112F445: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_112F498: If CBool(Not var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_112F4A3:   If (MemVar_1F95210 = "Yes") Then
  loc_112F4B0:     Set var_90 = New RsTouchScreenBookingEntry
  loc_112F4B6:   End If
  loc_112F4C0:   var_BC = Me.FGrid1.Col
  loc_112F4CD:   Set var_94 = Me.FGrid1
  loc_112F4D3:   var_A4 = var_94.Row
  loc_112F4DC:   var_CC = CVar(CLng(var_A4)) 'Long
  loc_112F4F8:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_112F507:   var_10C = Me.FGrid1.TextMatrix)
  loc_112F512:   var_11C = CVar(CStr(var_10C)) 'String
  loc_112F524:   var_90.PTableNo = Trim(var_11C)
  loc_112F54B:   var_90.pRestCode = CVar(global_52)
  loc_112F576:   var_90.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_A4, -1
  loc_112F581:   Set var_8C = var_94
  loc_112F5A5:   If (var_8C.RecordCount > 0) Then
  loc_112F5CF:     var_90.oVType = CVar(var_8C.Fields.Item("V_Type"))
  loc_112F5DC:   Else
  loc_112F5F5:     MsgBox("Contact to your S/w vendor", &H40, var_BC, var_10C, var_11C)
  loc_112F605:     Exit Sub
  loc_112F606:   End If
  loc_112F606:   var_CC = 1
  loc_112F612:   var_90.OpenMode = var_CC
  loc_112F621:   var_90.Show var_CC, var_DC
  loc_112F629:   Call var_90.TopCtrl1_eAdd
  loc_112F634:   global_82 = &HFF
  loc_112F637: End If
  loc_112F63C: Set var_90 = Nothing
  loc_112F644: Set var_8C = Nothing
  loc_112F647: Exit Sub
End Sub

Private Sub CmdBillLookup_UnknownEvent_9 '106CEA8
  'Data Table: 51A3CC
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_86 As Integer
  loc_106CC48: Me.FrameOption.Visible = False
  loc_106CC54: Set var_8C = New RSSaleBillDisplay
  loc_106CC5B: Set var_94 = ()
  loc_106CCA2: If (CStr(FrameOption.DispID_41) <> vbNullString) Then
  loc_106CCA9:   Set var_90 = CVar(CLng(FrameOption.DispID_C))(CVar(CLng(FrameOption.DispID_D)))
  loc_106CCD8:   If ((CLng(Val(CStr(CLng(FrameOption.DispID_B)))) Mod 6) = 1) Then
  loc_106CCDF:     Set var_90 = ()
  loc_106CCEF:     var_86 = CInt(CLng(FrameOption.DispID_B))
  loc_106CCFB:   Else
  loc_106CD3A:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_106CD4E:   End If
  loc_106CD61:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106CD6A:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_106CDD3:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_106CDFC:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106CE18:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_106CE44:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_106CE6B:     var_8C.LocalRestCode = CVar(global_52)
  loc_106CE7C:     var_8C.pRestCode = CVar(global_52)
  loc_106CE8C:     var_8C.OpenMode = 1
  loc_106CE93:     Call var_8C.Show
  loc_106CE9E:     global_82 = &HFF
  loc_106CEA1:   End If
  loc_106CEA1: End If
  loc_106CEA3: Set var_94 = Nothing 
  loc_106CEA7: Exit Sub
End Sub

Private Sub CmdSBill_UnknownEvent_9 '1155CC4
  'Data Table: 51A3CC
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_115594C: Me.FrameOption.Visible = False
  loc_1155987: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_115599E:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_11559AA: Else
  loc_11559E9:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11559FD: End If
  loc_1155A10: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1155A19: var_E8 = CVar(CLng(var_86)) 'Long
  loc_1155A54: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_1155A5C: var_148 = "VACANT"
  loc_1155A79: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1155A85: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_1155AD8: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1155AE3:   If (MemVar_1F95210 = "Yes") Then
  loc_1155B01:     New RSTouchScreenSaleBill.ParentForm = CVar(Me)
  loc_1155B08:   Else
  loc_1155B12:     Set var_8C = New RSSaleBill
  loc_1155B18:   End If
  loc_1155B3E:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1155B5A:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1155BA0:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1155BC9:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1155BE5:     var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1155C11:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1155C2E:   Else
  loc_1155C2E:     var_C8 = 1
  loc_1155C37:     var_E8 = 0
  loc_1155C67:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1155C77:   End If
  loc_1155C84:   var_8C.pRestCode = CVar(global_52)
  loc_1155C88:   var_C8 = 1
  loc_1155C94:   var_8C.OpenMode = var_C8
  loc_1155CA3:   var_8C.Show var_C8, var_D8
  loc_1155CAB:   Call var_8C.TopCtrl1_eAdd
  loc_1155CB6:   global_82 = &HFF
  loc_1155CB9: End If
  loc_1155CBE: Set var_8C = Nothing
  loc_1155CC1: Exit Sub
End Sub

Private Sub CmdChngTable_UnknownEvent_9 '10ADDF0
  'Data Table: 51A3CC
  Dim var_90 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_86 As Integer
  Dim var_10C As MSHFlexGrid
  loc_10ADB48: Me.FrameOption.Visible = False
  loc_10ADB58: If (MemVar_1F95210 = "Yes") Then
  loc_10ADB5F:   Set var_8C = New RsTbChange
  loc_10ADB65: Else
  loc_10ADB69:   Set var_8C = New RsTbChange
  loc_10ADB6C: End If
  loc_10ADB70: Set var_94 = Me.FGrid1
  loc_10ADB7F: var_C4 = CVar(CLng(var_94.RowSel)) 'Long
  loc_10ADB90: var_E4 = CVar(CLng(var_94.ColSel)) 'Long
  loc_10ADBB7: If (CStr(var_94.TextMatrix)) <> vbNullString) Then
  loc_10ADBED:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_10ADC04:     var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_10ADC10:   Else
  loc_10ADC4F:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_10ADC63:   End If
  loc_10ADC76:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10ADC7F:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_10ADCE8:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_10ADCEF:     Set var_10C = Me.FGrid1
  loc_10ADCF5:     var_B4 = var_10C.Col
  loc_10ADD11:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10ADD2D:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_B4) + 1)) / CDbl(6)))))) 'Long
  loc_10ADD59:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_10ADD79:     var_C4 = CVar(global_52) 'String
  loc_10ADD80:     var_8C.LocalRestCode = var_C4
  loc_10ADD90:     Set var_90 = var_10C(6)
  loc_10ADD96:     Call 0.Method_CmdChngTable_UnknownEvent_90 (var_174, var_E4, var_C4, var_B4, var_E4)
  loc_10ADD9E:     var_C4 = var_8C.Label.BackColor
  loc_10ADDAE:     var_8C.TVacantColor = CVar(var_174)
  loc_10ADDC5:     var_8C.OpenMode = 1
  loc_10ADDD2:     var_8C.CAPTION = "Change Table"
  loc_10ADDD9:     Call var_8C.Show
  loc_10ADDE4:     global_82 = &HFF
  loc_10ADDE7:   End If
  loc_10ADDE7: End If
  loc_10ADDE9: Set var_94 = Nothing 
  loc_10ADDED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '1241E84
  'Data Table: 51A3CC
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim unk_51A3D0 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Fields15
  Dim var_11C As Variant
  loc_12419D7: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12419DC: var_CC = 0
  loc_1241A13: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1241A29:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1241A41:   var_F0 = Me.FGrid.TextMatrix)
  loc_1241A75:   unk_51A3D0.Execute "Select Vtype As VoucherType,RoomNo as TableNo,DocId,RoomCat,RoomType,NetAmt from Sale1 Where DocId='" & CStr(var_F0) & "'", var_11C, -1
  loc_1241A80:   Set var_88 = var_120
  loc_1241AB2:   If (var_88.RecordCount > 0) Then
  loc_1241ABD:     If (MemVar_1F95210 = "Yes") Then
  loc_1241AC3:       var_AC = "VoucherType"
  loc_1241B19:       var_CC = "DocID"
  loc_1241B69:       var_1EC = Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")))
  loc_1241B94:       var_1F0 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")))
  loc_1241BBF:       var_1F4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")))
  loc_1241BE8:       Proc_6_39_E7D3A0(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_1241C40:       Proc_6_132_ECD044(1, 5, Proc_6_38_E69628(CVar(var_88.Fields.Item(var_AC)), var_88.Fields, CVar(var_88.Fields.Item("TableNo")), 0), Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")), var_AC), Proc_6_38_E69628(CVar(var_88.Fields.Item(var_CC)), var_CC), 0)
  loc_1241C89:     Else
  loc_1241D88:       var_200 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")))
  loc_1241DB1:       Proc_6_39_E7D3A0(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_1241DBB:       var_1E8 = 0
  loc_1241DC6:       var_1E4 = 0
  loc_1241DD1:       var_1E0 = 0
  loc_1241E2A:       Proc_6_131_FADE30(1, 5, Proc_6_38_E69628(CVar(var_88.Fields.Item("VoucherType")), var_1EC, Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), global_52)), Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), global_52), 0, Proc_6_38_E69628(CVar(var_88.Fields.Item("TableNo"))), Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat"))))
  loc_1241E76:     End If
  loc_1241E76:     Call CmdUnSBill_UnknownEvent_9()
  loc_1241E7B:   End If
  loc_1241E80:   Set var_88 = Nothing
  loc_1241E83: End If
  loc_1241E83: Exit Sub
End Sub

Private Sub CmdAKOT_UnknownEvent_9 '1224A60
  'Data Table: 51A3CC
  Dim var_94 As Variant
  Dim var_D0 As Integer
  Dim unk_51A3D0 As Connection15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_AC As Variant
  Dim var_128 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_86 As Integer
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_124 As Variant
  Dim var_1CC As Variant
  loc_122459C: Me.FrameOption.Visible = False
  loc_12245AA: var_D0 = 0
  loc_12245D7: unk_51A3D0.Execute "Select count(*) from Waiter where logsite_code='" & MemVar_1F95078 & "' And  ActiveYN='Yes'", var_BC, -1
  loc_12245DF: var_94 = var_94.Fields
  loc_12245E7: var_D0 = var_C0.Item(var_C0)
  loc_12245EF: var_D4 = var_D4.Value
  loc_1224616: If (var_E4 = 0) Then
  loc_1224632:   MsgBox("No Steward Define For this Outlet.", &H40, var_E4, var_104, var_124)
  loc_1224642:   Exit Sub
  loc_1224643: End If
  loc_122464B: If (MemVar_1F95210 = "Yes") Then
  loc_1224652:   Set var_8C = New RsTouchScreenKOTEntry
  loc_1224658: Else
  loc_122465C:   Set var_8C = New RsKOTEntry
  loc_122465F: End If
  loc_1224663: Set var_128 = Me.FGrid1
  loc_1224672: var_AC = CVar(CLng(var_128.RowSel)) 'Long
  loc_1224683: var_F4 = CVar(CLng(var_128.ColSel)) 'Long
  loc_12246AA: If (CStr(var_128.TextMatrix)) <> vbNullString) Then
  loc_12246E0:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_12246F7:     var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1224703:   Else
  loc_1224742:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1224756:   End If
  loc_1224769:   var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224772:   var_F4 = CVar(CLng(var_86)) 'Long
  loc_12247D3:   If (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT") Then
  loc_12247DF:     var_8C.PSteward = vbNullString
  loc_12247E6:   Else
  loc_12247FE:     var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122480A:     var_F4 = CVar(CLng((var_86 + 2))) 'Long
  loc_1224856:     If CBool(InStr(var_F4, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_122486C:       var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224878:       var_F4 = CVar(CLng((var_86 + 2))) 'Long
  loc_12248AB:       var_158 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12248B7:       var_188 = CVar(CLng((var_86 + 2))) 'Long
  loc_12248F2:       var_1CC = (InStr(var_188, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_1224918:       var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, var_1CC)
  loc_1224941:     Else
  loc_1224954:       var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224960:       var_F4 = CVar(CLng((var_86 + 2))) 'Long
  loc_1224981:       var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_1224995:     End If
  loc_1224995:   End If
  loc_1224999:   Set var_C0 = var_AC(var_F4)
  loc_12249BB:   var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12249D7:   var_F4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1224A03:   var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1224A2A:   var_8C.pRestCode = CVar(global_52)
  loc_1224A3A:   var_8C.OpenMode = 1
  loc_1224A41:   Call var_8C.Show
  loc_1224A4A:   Call var_8C.TopCtrl1_eAdd
  loc_1224A55:   global_82 = &HFF
  loc_1224A58: End If
  loc_1224A5A: Set var_128 = Nothing 
  loc_1224A5E: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E17D60
  'Data Table: 51A3CC
  loc_E17D54: Me.FrameOption.Visible = False
  loc_E17D5C: Exit Sub
End Sub

Private Sub cmdPrintPKOT_UnknownEvent_9 'EEEC2C
  'Data Table: 51A3CC
  Dim var_90 As String
  Dim unk_51A3D0 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  loc_EEEB86: var_90 = "Select DOCID from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52 & "' Group By DocId"
  loc_EEEB8F: unk_51A3D0.Execute var_90, var_B0, -1
  loc_EEEB9A: Set var_88 = var_B4
  loc_EEEBAA: ' Referenced from: EEEC05
  loc_EEEBB9: If Not(var_88.EOF) Then
  loc_EEEBEB:   Proc_260_21_1E6CEB4(CStr(var_88.Fields.Item("DocID").Value))
  loc_EEEC00:   var_88.MoveNext
  loc_EEEC05:   GoTo loc_EEEBAA
  loc_EEEC08: End If
  loc_EEEC15: Set var_B4 = Me.cmdPrintPKOT
  loc_EEEC1B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(&H800080)
  loc_EEEC28: Set var_88 = Nothing
  loc_EEEC2B: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '1203BF4
  'Data Table: 51A3CC
  Dim var_88 As Variant
  Dim var_9A As Integer
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_120377F: If (CLng(Me.FGrid2.Row) = 0) Then
  loc_1203782:   Exit Sub
  loc_1203783: End If
  loc_120378F: Me.FrameOption.Visible = False
  loc_12037CA: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_12037E1:   var_9A = CInt(CLng(Me.FGrid1.Col))
  loc_12037ED: Else
  loc_120382C:   var_9A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1203840: End If
  loc_1203853: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_120385C: var_E8 = CVar(CLng(var_9A)) 'Long
  loc_1203897: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_120389F: var_148 = "VACANT"
  loc_12038BC: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12038C8: var_19C = CVar(CLng((var_9A + 3))) 'Long
  loc_120391B: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1203926:   If (MemVar_1F95210 = "Yes") Then
  loc_1203933:     Set var_A0 = New RSTouchScreenSaleBill
  loc_120393C:   Else
  loc_1203946:     Set var_A0 = New RSSaleBill
  loc_120394C:   End If
  loc_1203972:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_120398E:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_12039D4:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_12039FD:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1203A19:     var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1203A45:     var_A0.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1203A62:   Else
  loc_1203A62:     var_C8 = 1
  loc_1203A6B:     var_E8 = 0
  loc_1203A9B:     var_A0.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1203AAB:   End If
  loc_1203AB1:   var_C8 = CVar(global_52) 'String
  loc_1203AB8:   var_A0.pRestCode = var_C8
  loc_1203AC0:   Set var_88 = var_C8(var_E8)
  loc_1203AF9:   var_A0.oBookingDocId = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_1203B11:   Set var_88 = CVar(CLng(var_A0.FGrid1.Row))(0)
  loc_1203B4A:   var_A0.oBookingNo = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_1203B62:   Set var_88 = CVar(CLng(var_A0.FGrid2.Row))(1)
  loc_1203B71:   var_C8 = CVar(CLng(var_A0.FGrid2.Row)) 'Long
  loc_1203B76:   var_E8 = 2
  loc_1203B9B:   var_A0.oCustName = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_1203BAF:   var_C8 = 1
  loc_1203BBB:   var_A0.OpenMode = var_C8
  loc_1203BCA:   var_A0.Show var_C8, var_D8
  loc_1203BD2:   Call var_A0.TopCtrl1_eAdd
  loc_1203BDB:   Call var_A0.SetOnLineBookingDetail
  loc_1203BE6:   global_82 = &HFF
  loc_1203BE9: End If
  loc_1203BEE: Set var_A0 = Nothing
  loc_1203BF1: Exit Sub
End Sub

Private Sub Timer1_Timer() 'DFE8E4
  'Data Table: 51A3CC
  loc_DFE8DC: Call Proc_256_48_EC8AB8()
  loc_DFE8E1: Exit Sub
End Sub

Private Sub Form_Load() '12DE510
  'Data Table: 51A3CC
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_92 As Integer
  Dim var_8C As Recordset15
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_F0 As Variant
  Dim unk_51A3D0 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Recordset15
  Dim var_E0 As Variant
  Dim var_114 As Variant
  loc_12DDE74: On Error Goto loc_12DE4CA
  loc_12DDE7E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12DDE96: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12DDEB1: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12DDECC: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12DDEE2: Me.FrSettlement.BackColor = CLng(MemVar_1F951B4)
  loc_12DDEF8: Me.FrameOption.BackColor = CLng(MemVar_1F951B4)
  loc_12DDF0E: Me.FrSettlement.BackColor = CLng(MemVar_1F951B4)
  loc_12DDF29: Me.FGrid1.Top = CVar(CDbl(725))
  loc_12DDF43: Me.FGrid1.Left = CVar(CDbl(&H14))
  loc_12DDF50: var_C4 = 0
  loc_12DDF5B: var_C0 = 0
  loc_12DDF7D: var_92 = Proc_96_17_FDCB2C(global_52, global_88, 0)
  loc_12DDF8F: var_C8 = global_88
  loc_12DDF9A: If (var_C8 = "Outlet") Then
  loc_12DDFA3:   global_96 = "TB"
  loc_12DDFAA: Else
  loc_12DDFB2:   If (var_C8 = "Room Service") Then
  loc_12DDFBB:     global_96 = "RO"
  loc_12DDFBF:   End If
  loc_12DDFBF: End If
  loc_12DDFC3: Set var_8C = New 
  loc_12DDFCE: var_8C.CursorLocation = 3
  loc_12DDFF8: var_C0 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 & "'or LOGSITE_CODE='HO') and Code='"
  loc_12DE002: var_C4 = var_C0 & global_52
  loc_12DE010: var_8C.Open CVar(var_C4 & "'"), CVar(MemVar_1F95044), 3
  loc_12DE035: If (var_8C.RecordCount > 0) Then
  loc_12DE047:   var_B8 = var_8C.Fields
  loc_12DE057:   var_D8 = CVar(var_B8.Item("MemberInfo")) 'Address
  loc_12DE060:   var_BC = Proc_6_38_E69628(var_D8, 1, -1)
  loc_12DE071:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 = "Y") Then
  loc_12DE091:     Proc_6_17_EAAE40(var_D8, MemVar_1F95078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_110, -1)
  loc_12DE0A7:     unk_51A3D0.Execute CStr(var_B8 & var_D8), var_92, var_C0
  loc_12DE0B2:     Set var_88 = var_B8
  loc_12DE0D8:     If (var_88.RecordCount > 0) Then
  loc_12DE0EA:       var_B8 = var_88.Fields
  loc_12DE0FA:       var_D8 = CVar(var_B8.Item("MemberVarificationInKOT")) 'Address
  loc_12DE109:       global_104 = Proc_6_38_E69628(var_D8)
  loc_12DE116:     End If
  loc_12DE116:   End If
  loc_12DE116: End If
  loc_12DE133: Proc_6_17_EAAE40(var_D8, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_110)
  loc_12DE13B: var_F0 = -1 & var_D8 
  loc_12DE149: unk_51A3D0.Execute CStr(var_B8 & var_D8), var_B8, var_C4
  loc_12DE19F: If (Proc_6_38_E69628(CVar(var_B8.Fields.Fields.Fields.Item("AutoPrintKOTYN"))) = "Yes") Then
  loc_12DE1AA:   Set var_B8 = Me.cmdPrintPKOT
  loc_12DE1B0:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_12DE1C4:   Me.Timer1.Enabled = True
  loc_12DE1CC: End If
  loc_12DE1D1: Set var_90 = Nothing
  loc_12DE1D4: Call ColorLabel()
  loc_12DE1D9: Call Proc_256_45_169C0F0()
  loc_12DE204: var_A4 = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_12DE213: Me.FGrid1.Height = True
  loc_12DE235: Me.FGrid1.Width = CVar(CDbl(10810))
  loc_12DE26B: If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(10810)) Then
  loc_12DE28F:   var_A4 = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_12DE29E:   Me.FGrid1.Width = CVar(CDbl(10810))
  loc_12DE2AD: End If
  loc_12DE2D0: Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_12DE31C: Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_12DE339: Me.FrameOption.Visible = False
  loc_12DE34F: Me.FrSettlement.Top = CDbl(0)
  loc_12DE365: Me.FrSettlement.Left = CDbl(0)
  loc_12DE390: Me.FrSettlement.Height = (CDbl(Me.FGrid1.Height) + CDbl(1500))
  loc_12DE3AB: Me.FrSettlement.Visible = False
  loc_12DE3C1: Me.FrPendingOrder.Top = CDbl(0)
  loc_12DE3D7: Me.FrPendingOrder.Left = CDbl(0)
  loc_12DE3E9: var_D8 = Me.FGrid1.Height
  loc_12DE3F7: Set var_E0 = Me.FrPendingOrder
  loc_12DE3FD: var_E0.Height = CDbl(var_D8)
  loc_12DE418: Me.FrPendingOrder.Visible = False
  loc_12DE433: If (TouchScreen = "Yes") Then
  loc_12DE43C:   var_B4 = 0
  loc_12DE459:   var_BC = "Select W.Name  From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_12DE477:   unk_51A3D0.Execute var_BC & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9501C & "'", var_D8, -1
  loc_12DE47F:   var_B8 = var_B8.Fields
  loc_12DE487:   var_B4 = var_E0.Item(var_E0)
  loc_12DE48F:   var_114 = var_114.Value
  loc_12DE4A5:   Me.Label5.Caption = CStr(var_B8 & var_D8)
  loc_12DE4C9: End If
  loc_12DE4C9: Exit Sub
  loc_12DE4CA: ' Referenced from: 12DDE74
  loc_12DE4D2: Set var_B8 = Err()
  loc_12DE4D8: Call 0.Method_arg_2C (var_BC)
  loc_12DE4F9: MsgBox(CVar(var_BC), &H10, "Information", var_110, var_130)
  loc_12DE50C: Exit Sub
  loc_12DE50D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E14FF4
  'Data Table: 51A3CC
  loc_E14FEB: Set global_116 = Nothing
  loc_E14FF2: Exit Sub
End Sub

Private Sub Form_Activate() 'ED0D14
  'Data Table: 51A3CC
  loc_ED0C60: Call Proc_256_45_169C0F0()
  loc_ED0C6E: If (global_82 = &HFF) Then
  loc_ED0C71:   Call Proc_256_45_169C0F0()
  loc_ED0C7B:   global_82 = 0
  loc_ED0C7E: End If
  loc_ED0C8B: Me.Label3.Caption = vbNullString
  loc_ED0C99: Call 0.Method_arg_100 (var_90)
  loc_ED0CAB: Me.FrSettlement.Width = var_90
  loc_ED0CB9: Call 0.Method_arg_100 (var_90)
  loc_ED0CD4: Me.FrPendingOrder.Left = ((var_90 * CDbl(2)) / CDbl(&HA))
  loc_ED0CE2: Call 0.Method_arg_100 (var_90)
  loc_ED0CFD: Me.FrPendingOrder.Width = ((var_90 * CDbl(8)) / CDbl(&HA))
  loc_ED0D05: Call Proc_256_42_F02CF4(global_82)
  loc_ED0D0F: Set var_88 = Nothing
  loc_ED0D12: Exit Sub
End Sub

Private Sub Form_Click() 'E17984
  'Data Table: 51A3CC
  loc_E17978: Me.FrameOption.Visible = False
  loc_E17980: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0B4D8
  'Data Table: 51A3CC
  loc_E0B4CE: If (CLng(KeyCode) = &H74) Then
  loc_E0B4D1:   Call Proc_256_45_169C0F0()
  loc_E0B4D6: End If
  loc_E0B4D6: Exit Sub
End Sub

Private Sub CmdRight_UnknownEvent_9 'E815F8
  'Data Table: 51A3CC
  Dim var_A8 As Variant
  loc_E815AF: If (CLng(Me.FGrid1.LeftCol) > 1) Then
  loc_E815D7:   var_A8 = CVar((((CLng(Me.FGrid1.LeftCol) - 1) + &H36) + 1)) 'Long
  loc_E815E6:   Me.FGrid1.LeftCol = var_A8
  loc_E815F5: End If
  loc_E815F5: Exit Sub
End Sub

Private Sub CmdDone_UnknownEvent_9 'E17C30
  'Data Table: 51A3CC
  Dim arg_54FF As Double
  loc_E17C25: Me.Global.Unload Me
  loc_E17C2D: Exit Sub
  loc_E17C2E: arg_54FF = 
End Sub

Private Sub CmdLeft_UnknownEvent_9 'E99C1C
  'Data Table: 51A3CC
  Dim var_A8 As Variant
  loc_E99BC1: If ((CLng(Me.FGrid1.LeftCol) - &H36) > 0) Then
  loc_E99BDD:   var_A8 = CVar((CLng(Me.FGrid1.LeftCol) - &H36)) 'Long
  loc_E99BEC:   Me.FGrid1.LeftCol = var_A8
  loc_E99BFE: Else
  loc_E99C11:   Me.FGrid1.LeftCol = 1
  loc_E99C19: End If
  loc_E99C19: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'EDAF58
  'Data Table: 51A3CC
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_EDAEC7: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_EDAECA:   Exit Sub
  loc_EDAECB: End If
  loc_EDAED5: var_98 = Me.FGrid1.Rows
  loc_EDAEE4: var_A8 = 1
  loc_EDAF25: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_EDAF28:   Exit Sub
  loc_EDAF29: End If
  loc_EDAF39: Me.FrameOption.ZOrder 0
  loc_EDAF4D: Me.FrameOption.Visible = True
  loc_EDAF55: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E91780
  'Data Table: 51A3CC
  loc_E9170E: If (KeyCode = &HD) Then
  loc_E9173C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E9173F:     Call Fgrid1_UnknownEvent_9()
  loc_E91744:   End If
  loc_E91777:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E9177A:     Call Fgrid1_UnknownEvent_B()
  loc_E9177F:   End If
  loc_E9177F: End If
  loc_E9177F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '12C4E14
  'Data Table: 51A3CC
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8A As Integer
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_150 As String
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_E0 As Integer
  Dim unk_51A3D0 As Connection15
  Dim var_120 As Variant
  Dim var_90 As Recordset15
  loc_12C47DC: Me.FrameOption.Visible = False
  loc_12C4817: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_12C482E:   var_8A = CInt(CLng(Me.FGrid1.Col))
  loc_12C483A: Else
  loc_12C4879:   var_8A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_12C488D: End If
  loc_12C4897: var_A8 = Me.FGrid1.Row
  loc_12C48A0: var_D0 = CVar(CLng(var_A8)) 'Long
  loc_12C48A9: var_F0 = CVar(CLng(var_8A)) 'Long
  loc_12C48B2: Set var_B0 = Me.FGrid1
  loc_12C48B8: var_C0 = var_B0.TextMatrix)
  loc_12C48E4: var_140 = Right(Ucase(Trim(CVar(CStr(var_C0)))), 6)
  loc_12C48EC: var_150 = "VACANT"
  loc_12C4909: var_184 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C4915: var_1A4 = CVar(CLng((var_8A + 3))) 'Long
  loc_12C4964: If CBool(var_1A4 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_12C496D:   var_E0 = 0
  loc_12C499A:   unk_51A3D0.Execute "Select count(*) from Waiter where logsite_code='" & MemVar_1F95078 & "'", var_A8, -1
  loc_12C49A2:   var_98 = var_98.Fields
  loc_12C49AA:   var_E0 = var_B0.Item(var_B0)
  loc_12C49B2:   var_164 = var_164.Value
  loc_12C49D9:   If (var_C0 = 0) Then
  loc_12C49DC:     Exit Sub
  loc_12C49DD:   End If
  loc_12C49E5:   If (MemVar_1F95210 = "Yes") Then
  loc_12C49F2:     Set var_88 = New RsTouchScreenKOTEntry
  loc_12C49FB:   Else
  loc_12C4A05:     Set var_88 = New RsKOTEntry
  loc_12C4A0B:   End If
  loc_12C4A31:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C4A4D:   var_F0 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_12C4A79:   var_88.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_12C4AA0:   var_88.pRestCode = CVar(global_52)
  loc_12C4AA4:   var_D0 = 1
  loc_12C4AB0:   var_88.OpenMode = var_D0
  loc_12C4ABF:   var_88.Show var_D0, var_E0
  loc_12C4AC7:   Call var_88.TopCtrl1_eAdd
  loc_12C4AD2:   global_82 = &HFF
  loc_12C4AD8: Else
  loc_12C4B13:   If (CLng(Me.FGrid1.Col) < (CLng(Me.FGrid1.Cols) - 1)) Then
  loc_12C4B21:     If (global_112 = "Y") Then
  loc_12C4B2C:       If (MemVar_1F95210 = "Yes") Then
  loc_12C4B39:         Set var_88 = New RsTouchScreenBookingEntry
  loc_12C4B3F:       End If
  loc_12C4B49:       var_C0 = Me.FGrid1.Col
  loc_12C4B56:       Set var_98 = Me.FGrid1
  loc_12C4B5C:       var_A8 = var_98.Row
  loc_12C4B65:       var_D0 = CVar(CLng(var_A8)) 'Long
  loc_12C4B81:       var_F0 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_C0) + 1)) / CDbl(6)))))) 'Long
  loc_12C4B90:       var_110 = Me.FGrid1.TextMatrix)
  loc_12C4B9B:       var_120 = CVar(CStr(var_110)) 'String
  loc_12C4BAD:       var_88.PTableNo = Trim(var_120)
  loc_12C4BD4:       var_88.pRestCode = CVar(global_52)
  loc_12C4BFF:       var_88.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_A8, -1
  loc_12C4C0A:       Set var_90 = var_98
  loc_12C4C2E:       If (var_90.RecordCount > 0) Then
  loc_12C4C58:         var_88.oVType = CVar(var_90.Fields.Item("V_Type"))
  loc_12C4C65:       Else
  loc_12C4C7E:         MsgBox("Contact to your S/w vendor", &H40, var_C0, var_110, var_120)
  loc_12C4C8E:         Exit Sub
  loc_12C4C8F:       End If
  loc_12C4C8F:       var_D0 = 1
  loc_12C4C9B:       var_88.OpenMode = var_D0
  loc_12C4CAA:       var_88.Show var_D0, var_E0
  loc_12C4CB2:       Call var_88.TopCtrl1_eAdd
  loc_12C4CBD:       global_82 = &HFF
  loc_12C4CC3:     Else
  loc_12C4CCB:       If (MemVar_1F95210 = "Yes") Then
  loc_12C4CD8:         Set var_94 = New RSTouchScreenSaleBill
  loc_12C4CE1:       Else
  loc_12C4CEB:         Set var_94 = New RSSaleBill
  loc_12C4CF1:       End If
  loc_12C4CFB:       var_C0 = Me.FGrid1.Col
  loc_12C4D17:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C4D33:       var_F0 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_C0) + 1)) / CDbl(6)))))) 'Long
  loc_12C4D42:       var_110 = Me.FGrid1.TextMatrix)
  loc_12C4D4D:       var_120 = CVar(CStr(var_110)) 'String
  loc_12C4D5F:       var_94.PTableNo = Trim(var_120)
  loc_12C4D86:       var_94.pRestCode = CVar(global_52)
  loc_12C4D8A:       var_D0 = 1
  loc_12C4D96:       var_94.OpenMode = var_D0
  loc_12C4DA5:       var_94.Show var_D0, var_E0
  loc_12C4DAD:       Call var_94.TopCtrl1_eAdd
  loc_12C4DB8:       global_82 = &HFF
  loc_12C4DBB:     End If
  loc_12C4DBE:   Else
  loc_12C4DD7:     MsgBox("Select A Table", &H40, var_C0, var_110, var_120)
  loc_12C4DE7:   End If
  loc_12C4DE7: End If
  loc_12C4DEC: Set var_88 = Nothing
  loc_12C4DF4: Set var_94 = Nothing
  loc_12C4E02: Set global_56 = Nothing
  loc_12C4E0E: Set var_90 = Nothing
  loc_12C4E11: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E5BB40
  'Data Table: 51A3CC
  loc_E5BB06: If (KeyCode = &HD) Then
  loc_E5BB34:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5BB37:     Call Fgrid1_UnknownEvent_9()
  loc_E5BB3C:   End If
  loc_E5BB3C: End If
  loc_E5BB3C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB5640
  'Data Table: 51A3CC
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB54C0: Set var_88 = Me.FGrid1
  loc_FB54D4: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB54E5: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB54F8: var_FC = CStr(var_88.TextMatrix))
  loc_FB556A: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB5579:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB558A:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB55AA:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB55BB:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB55F8:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB5608:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB562A: Else
  loc_FB5633:   var_88.ToolTipText = vbNullString
  loc_FB5638: End If
  loc_FB563A: Set var_88 = Nothing 
  loc_FB563E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '13EFFC8
  'Data Table: 51A3CC
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim var_188 As String
  Dim unk_51A3D0 As Connection15
  Dim var_18C As Fields15
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_25C As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_328 As Variant
  Dim var_360 As Variant
  Dim var_380 As Variant
  loc_13EF677: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_13EF68E: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF6B5: var_114 = Me.FGrid1.TextMatrix)
  loc_13EF6FA: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13EF710:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF72E:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13EF73D:   var_C0 = Me.FGrid1.TextMatrix)
  loc_13EF74C:   var_164 = 0
  loc_13EF78B:   unk_51A3D0.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_13EF793:   var_104 = var_104.Fields
  loc_13EF79B:   var_164 = var_18C.Item(var_18C)
  loc_13EF7BF:   var_174 = CVar(Proc_6_38_E69628(CVar(var_190), var_190, var_C0, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_13EF7D6:   var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF7F4:   var_1E8 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_13EF830:   var_25C = var_1E8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EF847:   var_294 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF865:   var_2B4 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_13EF8A1:   var_328 = var_2B4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EF8B8:   var_360 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF8D6:   var_380 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_13EF910:   Me.LBLRoomName.Caption = CStr(var_380 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_13EF98E:   Me.LBLRoomName.Refresh
  loc_13EF999: Else
  loc_13EF9BE:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_13EF9D5:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF9FC:   var_114 = Me.FGrid1.TextMatrix)
  loc_13EFA41:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13EFA75:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13EFA84:     var_C0 = Me.FGrid1.TextMatrix)
  loc_13EFA93:     var_164 = 0
  loc_13EFAD2:     unk_51A3D0.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_13EFADA:     var_104 = var_104.Fields
  loc_13EFAE2:     var_164 = var_18C.Item(var_18C)
  loc_13EFB06:     var_174 = CVar(Proc_6_38_E69628(CVar(var_190), var_190, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_13EFB1D:     var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EFB3B:     var_1E8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_13EFB77:     var_25C = var_1E8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EFB8E:     var_294 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EFBAC:     var_2B4 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_13EFBE6:     Me.LBLRoomName.Caption = CStr(var_2B4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_13EFC4E:     Me.LBLRoomName.Refresh
  loc_13EFC59:   Else
  loc_13EFC7E:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_13EFC95:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EFCBC:     var_114 = Me.FGrid1.TextMatrix)
  loc_13EFD01:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13EFD35:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_13EFD44:       var_C0 = Me.FGrid1.TextMatrix)
  loc_13EFD53:       var_164 = 0
  loc_13EFD89:       var_188 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'"
  loc_13EFD92:       unk_51A3D0.Execute var_188, var_114, -1
  loc_13EFD9A:       var_104 = var_104.Fields
  loc_13EFDA2:       var_164 = var_18C.Item(var_18C)
  loc_13EFDC6:       var_174 = CVar(Proc_6_38_E69628(CVar(var_190), var_190, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_13EFDDD:       var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EFDFB:       var_1E8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_13EFE37:       var_25C = var_1E8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EFE4E:       var_294 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EFE6C:       var_2B4 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_13EFEA8:       var_328 = var_2B4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EFEBF:       var_360 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EFEDD:       var_380 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_13EFF17:       Me.LBLRoomName.Caption = CStr(var_380 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_13EFF95:       Me.LBLRoomName.Refresh
  loc_13EFFA0:     Else
  loc_13EFFAD:       Me.LBLRoomName.Caption = vbNullString
  loc_13EFFBF:       Me.LBLRoomName.Refresh
  loc_13EFFC7:     End If
  loc_13EFFC7:   End If
  loc_13EFFC7: End If
  loc_13EFFC7: Exit Sub
End Sub

Private Sub Label2_Click(Index As Integer) '101DE3C
  'Data Table: 51A3CC
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_51A3D0 As Connection15
  loc_101DC5C: var_94 = 1
  loc_101DC66: Set var_A8 = Me.FGrid1
  loc_101DC81: arg_20 = Me.CDLG._Action
  loc_101DCAB: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101DCAE:   Exit Sub
  loc_101DCAF: End If
  loc_101DCB9: var_B8 = Me.CDLG.Color
  loc_101DCCC: Set var_BC = Me.Label2
  loc_101DCD2: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101DCDA: var_C0.BackColor = arg_20
  loc_101DD22: unk_51A3D0.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_101DD61: Set var_A8 = Me.CDLG
  loc_101DD76: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_101DD8D: Set var_BC = Me.Label1
  loc_101DD93: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_101DD9B: -1 = var_C0.Caption
  loc_101DDCA: Proc_6_7_F26918(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F95070 & "',"))
  loc_101DDD6: var_94 = ",'A','"
  loc_101DDFC: unk_51A3D0.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F95078) & "')"), FGrid1.DispID_18001, var_94
  loc_101DE3A: Exit Sub
End Sub

Private Sub CmdUnSBill_UnknownEvent_9 'FFBFCC
  'Data Table: 51A3CC
  Dim var_88 As Variant
  Dim var_8C As String
  Dim var_94 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim unk_51A3D0 As Connection15
  Dim Me As Recordset15
  loc_FFBDF2: Set var_88 = Me.FrameOption
  loc_FFBDF8: var_88.Visible = False
  loc_FFBE0B: If (global_112 = "Y") Then
  loc_FFBE22:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],Max(AA.Vno) As [Order No] ,Max(AA.CustName) As [Customer Name], " & "Max(AA.PhoneNo) As [Phone No] "
  loc_FFBE30:   var_94 = var_8C & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_FFBE3E:   var_9C = var_94 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN (SELECT PD.ContraDocId,P.Vno,P.CustName,P.PhoneNo FROM PackingOrder P Right JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID) AA  On AA.ContraDocID = Sale1.DocId "
  loc_FFBE4C:   var_A4 = var_9C & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_FFBE66:   unk_51A3D0.Execute var_A4 & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.Vno)", var_CC, -1
  loc_FFBE77:   Set global_116 = var_88
  loc_FFBE9D: Else
  loc_FFBEB1:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],MAX(T.Code) AS [Table No] ,max(Waiter.Name) as Steward, (Sum(SALE1.NetAmt)-Sum(IsNull(PAYCHARGE.AmtCr, 0))) As [Balance Amt.] " & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) "
  loc_FFBEBF:   var_94 = var_8C & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) " & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) "
  loc_FFBECD:   var_9C = var_94 & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code " & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') "
  loc_FFBEEE:   unk_51A3D0.Execute var_9C & "AND  Sale1.RoomType='TB' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(T.Code)", var_CC, -1
  loc_FFBEFF:   Set global_116 = var_88
  loc_FFBF20: End If
  loc_FFBF29: CVarUnk
  loc_FFBF2E: VerifyVarObj
  loc_FFBF34: Set var_88 = Me.FGrid
  loc_FFBF3A: LateIdStAd
  loc_FFBF5F: If (Me.RecordCount <= 0) Then
  loc_FFBF75:   Me.FGrid.Rows = 2
  loc_FFBF8A:   Set var_88 = Me.FGrid
  loc_FFBF90:   var_88.FixedRows = 1
  loc_FFBF98: End If
  loc_FFBF98: Call Proc_256_43_11B1D7C(var_88, global_116)
  loc_FFBFAD: Me.FrSettlement.ZOrder 0
  loc_FFBFC1: Me.FrSettlement.Visible = True
  loc_FFBFC9: Exit Sub
  loc_FFBFCA: var_88 = var_88
End Sub

Private Sub CmdRef_UnknownEvent_9 'DFF8A4
  'Data Table: 51A3CC
  loc_DFF89C: Call CmdUnSBill_UnknownEvent_9()
  loc_DFF8A1: Exit Sub
  loc_DFF8A2: Set arg_5470 = 
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE4D58
  'Data Table: 51A3CC
  Dim var_A8 As Variant
  loc_EE4CB3: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE4CCF:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE4CDE:   Me.FGrid.Row = var_A8
  loc_EE4D06:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE4D15:   Me.FGrid.ColSel = var_A8
  loc_EE4D46:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE4D55: End If
  loc_EE4D55: Exit Sub
End Sub

Private Sub CmdDown_UnknownEvent_9 'F05100
  'Data Table: 51A3CC
  Dim var_BC As Variant
  loc_F0505B: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F05077:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F05086:   Me.FGrid.Row = var_BC
  loc_F050AE:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F050BD:   Me.FGrid.ColSel = var_BC
  loc_F050EE:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F050FD: End If
  loc_F050FD: Exit Sub
  loc_F050FE:  = arg_5400
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1FC70
  'Data Table: 51A3CC
  loc_E1FC54: Call Proc_256_45_169C0F0()
  loc_E1FC65: Me.FrSettlement.Visible = False
  loc_E1FC6D: Exit Sub
End Sub

Private Sub CmdUp2_Click() 'EE4E58
  'Data Table: 51A3CC
  Dim var_A8 As Variant
  loc_EE4DB3: If (CLng(Me.FGrid2.Row) > 1) Then
  loc_EE4DCF:   var_A8 = CVar((CLng(Me.FGrid2.Row) - 1)) 'Long
  loc_EE4DDE:   Me.FGrid2.Row = var_A8
  loc_EE4E06:   var_A8 = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_EE4E15:   Me.FGrid2.ColSel = var_A8
  loc_EE4E46:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_EE4E55: End If
  loc_EE4E55: Exit Sub
  loc_EE4E56: Set arg_5474 = 
End Sub

Private Sub CmdDown2_Click() 'F04260
  'Data Table: 51A3CC
  Dim var_BC As Variant
  loc_F041BB: If (CLng(Me.FGrid2.Row) < (CLng(Me.FGrid2.Rows) - 1)) Then
  loc_F041D7:   var_BC = CVar((CLng(Me.FGrid2.Row) + 1)) 'Long
  loc_F041E6:   Me.FGrid2.Row = var_BC
  loc_F0420E:   var_BC = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_F0421D:   Me.FGrid2.ColSel = var_BC
  loc_F0424E:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_F0425D: End If
  loc_F0425D: Exit Sub
End Sub

Public Function global_52Get() '51BE08
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '51BE17
  global_52 = Value
End Sub

Public Property Let ptabpos(vNewValue) 'E01234
  'Data Table: 51A3CC
  loc_E0122E: ptabpos = vNewValue
  loc_E01233: Exit Sub
End Sub

Public Property Get ptabpos() 'E03FD0
  'Data Table: 51A3CC
  loc_E03FC9: ptabpos = global_100
End Sub

Public Property Let TouchScreen(vNewValue) 'E122AC
  'Data Table: 51A3CC
  loc_E122A4: global_92 = vNewValue
  loc_E122A8: Exit Sub
End Sub

Public Property Get TouchScreen() 'E12A44
  'Data Table: 51A3CC
  loc_E12A38: var_88 = global_92
  loc_E12A3B: TouchScreen = 
  loc_E12A41: Set var_8C = 
End Sub

Public Sub ColorLabel() 'F5243C
  'Data Table: 51A3CC
  Dim unk_51A3D0 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_E4 As Label
  loc_F52342: unk_51A3D0.Execute "Select * from DispColor", var_A8, -1
  loc_F5234D: Set var_88 = var_AC
  loc_F52356: ' Referenced from: F52436
  loc_F52365: If Not(var_88.EOF) Then
  loc_F523A4:   If (var_88.Fields.Item("index").Value > 4) Then
  loc_F52405:     Set var_E0 = Me.Label2
  loc_F5240B:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F52413:     var_E4.BackColor = CLng(var_88.Fields.Item("Color").Value)
  loc_F5242E:   End If
  loc_F52431:   var_88.MoveNext
  loc_F52436:   GoTo loc_F52356
  loc_F52439: End If
  loc_F52439: Exit Sub
End Sub

Public Property Get OpenMode() 'E150CC
  'Data Table: 51A3CC
  Dim arg_2CFF As Double
  loc_E150C0: var_88 = global_84
  loc_E150C3: OpenMode = 
  loc_E150C9: arg_2CFF = 
End Sub

Public Property Let OpenMode(vNewValue) 'E15474
  'Data Table: 51A3CC
  loc_E1546C: global_84 = vNewValue
  loc_E15470: Exit Sub
End Sub

Public Sub Proc_256_42_F02CF4
  'Data Table: 51A3CC
  Dim var_8C As String
  Dim var_98 As String
  Dim unk_51A3D0 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As MSHFlexGrid
  loc_F02C34: var_8C = "SELECT  Distinct P.Docid,P.Vno AS [Order No], P.CustName As [Customer Name],P.PhoneNo As [Phone No],P.Addr1 + ', ' + P.Addr2 As Address,convert(varchar(11),P.DDate,103)+ ' '+ P.DTime As [Delivery Date] FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE  (P.LogSite_Code = '" & MemVar_1F95078
  loc_F02C4C: var_98 = var_8C & "') AND (P.RestCode = '" & global_52 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '') Order By convert(varchar(11),P.DDate,103)+ ' '+ P.DTime"
  loc_F02C55: unk_51A3D0.Execute var_98, var_B8, -1
  loc_F02C60: Set var_88 = var_BC
  loc_F02C7A: CVarUnk
  loc_F02C7F: VerifyVarObj
  loc_F02C85: Set var_BC = Me.FGrid2
  loc_F02C8B: LateIdStAd
  loc_F02CAD: If (var_88.RecordCount <= 0) Then
  loc_F02CC3:   Me.FGrid.Rows = 2
  loc_F02CD8:   Set var_BC = Me.FGrid
  loc_F02CDE:   var_BC.FixedRows = 1
  loc_F02CE6: End If
  loc_F02CE6: Call Proc_256_44_117A0A0(var_BC, var_88)
  loc_F02CF0: Set var_88 = Nothing
  loc_F02CF3: Exit Sub
End Sub

Public Sub Proc_256_43_11B1D7C
  'Data Table: 51A3CC
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_B0 As MSHFlexGrid
  loc_11B1944: Set var_8C = Me.FGrid
  loc_11B1953: var_8C.Top = CVar(CDbl(600))
  loc_11B1964: var_8C.Left = CVar(CDbl(300))
  loc_11B1975: var_8C.Width = CVar(CDbl(6310))
  loc_11B1986: var_8C.Height = CVar(CDbl(5665))
  loc_11B1998: Set var_B0 = Me.CmdRef
  loc_11B199E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(800)))
  loc_11B19A9: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_11B19B5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_11B19C9: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B19D2: Set var_B0 = Me.CmdRef
  loc_11B19D8: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(800)))
  loc_11B19EB: Set var_D4 = Me.CmdRef
  loc_11B19F1: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11B19FE: Set var_B0 = Me.CmdRef
  loc_11B1A04: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11B1A13: var_9C = CVar((CDbl() + CDbl(var_D0))) 'Single
  loc_11B1A1C: Set var_D8 = Me.CmdUP
  loc_11B1A22: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B1A3A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B1A46: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B1A5A: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B1A63: Set var_B0 = Me.CmdUP
  loc_11B1A69: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B1A7C: Set var_D4 = Me.CmdRef
  loc_11B1A82: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11B1A8F: Set var_B0 = Me.CmdRef
  loc_11B1A95: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11B1AA8: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(2)))) 'Single
  loc_11B1AB1: Set var_D8 = Me.CmdDown
  loc_11B1AB7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(800)))
  loc_11B1ACF: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010005()
  loc_11B1ADB: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_11B1AEF: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B1AF8: Set var_B0 = Me.CmdDown
  loc_11B1AFE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003(CVar(CDbl(800)))
  loc_11B1B11: Set var_D4 = Me.CmdRef
  loc_11B1B17: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11B1B24: Set var_B0 = Me.CmdRef
  loc_11B1B2A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11B1B3D: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(3)))) 'Single
  loc_11B1B46: Set var_D8 = Me.CmdExit
  loc_11B1B4C: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(800)))
  loc_11B1B64: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010005()
  loc_11B1B70: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_11B1B84: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B1B8D: Set var_B0 = Me.CmdExit
  loc_11B1B93: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(800)))
  loc_11B1BA2: var_9C = 0
  loc_11B1BAB: var_E8 = &HA
  loc_11B1BB7: LateIdCallSt
  loc_11B1BBF: var_9C = 1
  loc_11B1BC8: var_E8 = &H4B0
  loc_11B1BD4: LateIdCallSt
  loc_11B1BDC: var_9C = 1
  loc_11B1BEB: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1BF2: LateIdCallSt
  loc_11B1BFA: var_9C = 1
  loc_11B1C09: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1C10: LateIdCallSt
  loc_11B1C18: var_9C = 2
  loc_11B1C21: var_E8 = &H3E8
  loc_11B1C2D: LateIdCallSt
  loc_11B1C35: var_9C = 2
  loc_11B1C44: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1C4B: LateIdCallSt
  loc_11B1C53: var_9C = 2
  loc_11B1C62: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1C69: LateIdCallSt
  loc_11B1C71: var_9C = 3
  loc_11B1C7A: var_E8 = &H960
  loc_11B1C86: LateIdCallSt
  loc_11B1C8E: var_9C = 3
  loc_11B1C9D: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1CA4: LateIdCallSt
  loc_11B1CAC: var_9C = 3
  loc_11B1CBB: var_E8 = CVar(CInt(1)) 'Integer
  loc_11B1CC2: LateIdCallSt
  loc_11B1CCA: var_9C = 4
  loc_11B1CD3: var_E8 = &H578
  loc_11B1CDF: LateIdCallSt
  loc_11B1CE7: var_9C = 4
  loc_11B1CF6: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1CFD: LateIdCallSt
  loc_11B1D05: var_9C = 4
  loc_11B1D14: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1D1B: LateIdCallSt
  loc_11B1D48: For var_FC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_FC 'Integer
  loc_11B1D52:   var_9C = CVar(CLng(var_86)) 'Long
  loc_11B1D57:   var_E8 = &H258
  loc_11B1D63:   LateIdCallSt
  loc_11B1D6E: Next var_FC 'Integer
  loc_11B1D75: Set var_8C = Nothing 
  loc_11B1D79: Exit Sub
End Sub

Public Sub Proc_256_44_117A0A0
  'Data Table: 51A3CC
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_F0 As Variant
  loc_1179CCC: Set var_8C = Me.FGrid2
  loc_1179CDB: var_8C.Top = CVar(CDbl(600))
  loc_1179CEC: var_8C.Left = CVar(CDbl(300))
  loc_1179CFD: var_8C.Width = CVar(CDbl(8810))
  loc_1179D0E: var_8C.Height = CVar(CDbl(5665))
  loc_1179D22: Me.CmdUp2.Top = CDbl(800)
  loc_1179D58: Me.CmdUp2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_1179D9D: Me.CmdDown2.Top = (Me.CmdUp2.Top + Me.CmdUp2.Height)
  loc_1179DD9: Me.CmdDown2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_1179E22: Me.CmdExit2.Top = (Me.CmdUp2.Top + (Me.CmdUp2.Height * CDbl(2)))
  loc_1179E5E: Me.CmdExit2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_1179E6D: var_9C = 0
  loc_1179E76: var_F0 = &HA
  loc_1179E82: LateIdCallSt
  loc_1179E8A: var_9C = 1
  loc_1179E93: var_F0 = &H4B0
  loc_1179E9F: LateIdCallSt
  loc_1179EA7: var_9C = 1
  loc_1179EB6: var_F0 = CVar(CInt(4)) 'Integer
  loc_1179EBD: LateIdCallSt
  loc_1179EC5: var_9C = 1
  loc_1179ED4: var_F0 = CVar(CInt(4)) 'Integer
  loc_1179EDB: LateIdCallSt
  loc_1179EE3: var_9C = 2
  loc_1179EEC: var_F0 = &H898
  loc_1179EF8: LateIdCallSt
  loc_1179F00: var_9C = 2
  loc_1179F0F: var_F0 = CVar(CInt(4)) 'Integer
  loc_1179F16: LateIdCallSt
  loc_1179F1E: var_9C = 2
  loc_1179F2D: var_F0 = CVar(CInt(4)) 'Integer
  loc_1179F34: LateIdCallSt
  loc_1179F3C: var_9C = 3
  loc_1179F45: var_F0 = &H578
  loc_1179F51: LateIdCallSt
  loc_1179F59: var_9C = 3
  loc_1179F68: var_F0 = CVar(CInt(4)) 'Integer
  loc_1179F6F: LateIdCallSt
  loc_1179F77: var_9C = 3
  loc_1179F86: var_F0 = CVar(CInt(1)) 'Integer
  loc_1179F8D: LateIdCallSt
  loc_1179F95: var_9C = 4
  loc_1179F9E: var_F0 = &H898
  loc_1179FAA: LateIdCallSt
  loc_1179FB2: var_9C = 4
  loc_1179FC1: var_F0 = CVar(CInt(4)) 'Integer
  loc_1179FC8: LateIdCallSt
  loc_1179FD0: var_9C = 4
  loc_1179FDF: var_F0 = CVar(CInt(4)) 'Integer
  loc_1179FE6: LateIdCallSt
  loc_1179FEE: var_9C = 5
  loc_1179FF7: var_F0 = &H578
  loc_117A003: LateIdCallSt
  loc_117A00B: var_9C = 5
  loc_117A01A: var_F0 = CVar(CInt(4)) 'Integer
  loc_117A021: LateIdCallSt
  loc_117A029: var_9C = 5
  loc_117A038: var_F0 = CVar(CInt(4)) 'Integer
  loc_117A03F: LateIdCallSt
  loc_117A06C: For var_104 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_104 'Integer
  loc_117A076:   var_9C = CVar(CLng(var_86)) 'Long
  loc_117A07B:   var_F0 = &H258
  loc_117A087:   LateIdCallSt
  loc_117A092: Next var_104 'Integer
  loc_117A099: Set var_8C = Nothing 
  loc_117A09D: Exit Sub
End Sub

Public Sub Proc_256_45_169C0F0
  'Data Table: 51A3CC
  Dim var_96 As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_51A3D0 As Connection15
  Dim var_C8 As Variant
  Dim var_A0 As Recordset15
  Dim var_DC As Variant
  Dim var_D8 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim var_108 As String
  Dim var_10C As String
  Dim var_11C As String
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_16C As Variant
  Dim var_100 As Variant
  Dim var_144 As Variant
  Dim var_28C As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1A0 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_2DC As Variant
  Dim var_AC As Recordset15
  Dim var_A4 As Recordset15
  Dim var_92 As Integer
  loc_169A8D4: unk_51A3D0.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_D8, -1
  loc_169A8DF: Set var_A0 = var_DC
  loc_169A8FE: var_DC = var_A0.Fields
  loc_169A91D: global_108 = Proc_6_38_E69628(CVar(var_DC.Item("KotYN")), var_DC)
  loc_169A958: global_112 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("Order_Booking")))
  loc_169A977: var_DC = var_A0.Fields
  loc_169A987: var_D8 = var_DC.Item("KotYN").Value
  loc_169A9A1: If (var_D8 = "Y") Then
  loc_169A9B8:   var_B4 = "SELECT RoomMast.Code as code,RoomMast.Name,RoomMast.RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_169A9D0:   var_108 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & global_52 & "' ORDER BY  RoomMast.code"
  loc_169A9D9:   unk_51A3D0.Execute var_108, var_D8, -1
  loc_169A9E4:   Set var_88 = var_DC
  loc_169AA0F:   var_B4 = "Select T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_169AA16:   var_B8 = var_B4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_169AA30:   unk_51A3D0.Execute var_B8 & global_52 & "'  order by T.Code", var_D8, -1
  loc_169AA3B:   Set var_A4 = var_DC
  loc_169AA63:   var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_169AA71:   var_104 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_169AA7F:   var_10C = var_104 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_169AAA1:   var_11C = var_10C & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_169AABB:   unk_51A3D0.Execute var_11C & global_52 & "' Order by T.Code", var_D8, -1
  loc_169AAC6:   Set var_AC = var_DC
  loc_169AAF0:   If (MemVar_1F95210 <> "Yes") Then
  loc_169AAFC:     Set var_DC = Me.CmdPKOT
  loc_169AB02:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169AB13:     Set var_DC = Me.CmdOrderBook
  loc_169AB19:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169AB25:     Set var_DC = Me.CmdPKOT
  loc_169AB2B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_DC)
  loc_169AB3D:     Set var_E0 = Me.CmdCancel
  loc_169AB43:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(var_DC)))
  loc_169AB5C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(Me.CmdAKOT)
  loc_169AB74:     Me.FrameOption.Height = (CDbl(0) * CDbl(5))
  loc_169AB86:   Else
  loc_169AB8F:     Set var_DC = Me.CmdOrderBook
  loc_169AB95:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169ABA1:     Set var_DC = Me.CmdOrderBook
  loc_169ABA7:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_169ABB9:     Set var_E0 = Me.CmdCancel
  loc_169ABBF:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl()))
  loc_169ABD2:     Set var_DC = Me.CmdAKOT
  loc_169ABD8:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_169ABF0:     Me.FrameOption.Height = (CDbl() * CDbl(6))
  loc_169ABFF:   End If
  loc_169AC02: Else
  loc_169AC16:   var_B4 = "SELECT RoomMast.Code as code,RoomMast.Name,RoomMast.RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_169AC2E:   var_108 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & global_52 & "' ORDER BY  RoomMast.code"
  loc_169AC37:   unk_51A3D0.Execute var_108, var_D8, -1
  loc_169AC42:   Set var_88 = var_DC
  loc_169AC6D:   var_B4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_169AC74:   var_B8 = var_B4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_169AC8E:   unk_51A3D0.Execute var_B8 & global_52 & "' order by T.Code", var_D8, -1
  loc_169AC99:   Set var_A4 = var_DC
  loc_169ACC1:   var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_169ACCF:   var_104 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_169ACDD:   var_10C = var_104 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_169ACFF:   var_11C = var_10C & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_169AD19:   unk_51A3D0.Execute var_11C & global_52 & "' Order by T.Code", var_D8, -1
  loc_169AD24:   Set var_AC = var_DC
  loc_169AD68:   var_D8 = var_A0.Fields.Item("Order_Booking").Value
  loc_169AD82:   If CBool(var_D8 <> "Y") Then
  loc_169AD8E:     Set var_DC = Me.CmdAKOT
  loc_169AD94:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169ADA5:     Set var_DC = Me.CmdChngTable
  loc_169ADAB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169ADBC:     Set var_DC = Me.CmdBillLookup
  loc_169ADC2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169ADD3:     Set var_DC = Me.CmdPKOT
  loc_169ADD9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169ADEA:     Set var_DC = Me.CmdOrderBook
  loc_169ADF0:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169AE0A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(0)))
  loc_169AE16:     Set var_E0 = Me.CmdSBill
  loc_169AE1C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(Me.CmdSBill)
  loc_169AE29:     Set var_DC = Me.CmdSBill
  loc_169AE2F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_DC)
  loc_169AE3E:     var_C8 = CVar((CDbl(var_DC) + CDbl(var_100))) 'Single
  loc_169AE47:     Set var_128 = Me.CmdCancel
  loc_169AE4D:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(0)))
  loc_169AE66:     Set var_DC = Me.CmdAKOT
  loc_169AE6C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_169AE84:     Me.FrameOption.Height = (CDbl() * CDbl(2))
  loc_169AE96:   Else
  loc_169AE9F:     Set var_DC = Me.CmdAKOT
  loc_169AEA5:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169AEB6:     Set var_DC = Me.CmdChngTable
  loc_169AEBC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169AECD:     Set var_DC = Me.CmdBillLookup
  loc_169AED3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169AEE4:     Set var_DC = Me.CmdPKOT
  loc_169AEEA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169AEFE:     Set var_DC = Me.CmdSBill
  loc_169AF04:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(0)))
  loc_169AF10:     Set var_E0 = Me.CmdSBill
  loc_169AF16:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_169AF23:     Set var_DC = Me.CmdSBill
  loc_169AF29:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_169AF38:     var_C8 = CVar((CDbl() + CDbl(var_100))) 'Single
  loc_169AF41:     Set var_128 = Me.CmdOrderBook
  loc_169AF47:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_169AF60:     Set var_E0 = Me.CmdOrderBook
  loc_169AF66:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_169AF73:     Set var_DC = Me.CmdOrderBook
  loc_169AF79:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_169AF88:     var_C8 = CVar((CDbl() + CDbl(var_100))) 'Single
  loc_169AF91:     Set var_128 = Me.CmdCancel
  loc_169AF97:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(0)))
  loc_169AFB0:     Set var_DC = Me.CmdAKOT
  loc_169AFB6:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_169AFC8:     Set var_E0 = Me.FrameOption
  loc_169AFCE:     var_E0.Height = (CDbl() * CDbl(3))
  loc_169AFDD:     Call Proc_256_44_117A0A0()
  loc_169AFEE:     Me.FrPendingOrder.Visible = True
  loc_169AFF6:   End If
  loc_169AFF6: End If
  loc_169AFFC: var_F0 = 0
  loc_169B02C: unk_51A3D0.Execute "Select Name From Depart Where Code ='" & global_52 & "'", var_D8, -1
  loc_169B034: var_DC = var_DC.Fields
  loc_169B03C: var_F0 = var_E0.Item(var_E0)
  loc_169B044: var_128 = var_128.Value
  loc_169B05A: Me.Label4.Caption = CStr(var_100)
  loc_169B07C: var_8A = 9
  loc_169B096: If (Me.Recordset15.RecordCount > 0) Then
  loc_169B0C6:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_169B133:     var_D8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_169B154:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_169B16C:   Else
  loc_169B19B:     var_D8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_169B1BC:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_169B1CB:   End If
  loc_169B1CE: Else
  loc_169B1D3:   global_100 = &HFF
  loc_169B1D9: Else
  loc_169B1DB:   var_90 = 1
  loc_169B1E0:   var_8E = 0
  loc_169B1F6:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_169B211:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_169B22B:   Call Proc_256_46_111F984((var_8A - 1), (var_8C - 1), var_8E, var_90, global_100, var_8C, 1, 1)
  loc_169B243:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_169B25E:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_169B275:   Me.FGrid1.Redraw = False
  loc_169B2A2:   For var_15C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_15C 'Integer
  loc_169B2AC:     var_C8 = CVar(CLng(var_94)) 'Long
  loc_169B2B1:     var_16C = &H320
  loc_169B2BE:     Set var_DC = Me.FGrid1
  loc_169B2C4:     LateIdCallSt
  loc_169B2D2:   Next var_15C 'Integer
  loc_169B2D7:   ' Referenced from:   169C0B3
  loc_169B2E9:   If Not(Me.FGrid1.EOF) Then
  loc_169B2EE:     var_90 = 1
  loc_169B2F1:     ' Referenced from:   169C0B0
  loc_169B2FB:     If (var_90 <= (var_8A - 1)) Then
  loc_169B300:       var_96 = &HFF
  loc_169B312:       For var_180 = (var_8C - 6) To (var_8C - 1):   var_94 = var_180 'Integer
  loc_169B322:         If (var_94 = (var_8C - 6)) Then
  loc_169B338:           var_100 = Me.FGrid1.Col
  loc_169B371:           var_144 = CVar(Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("Code")), CVar(CLng(var_100)), CVar(CLng(var_90)))) 'String
  loc_169B379:           Set var_12C = Me.FGrid1
  loc_169B37F:           LateIdCallSt
  loc_169B3B2:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169B3C1:           Me.FGrid1.Col = "Code"
  loc_169B3D0:         End If
  loc_169B3DA:         If (var_94 = (var_8C - 5)) Then
  loc_169B3F4:           If (Me.Recordset15.RecordCount > 0) Then
  loc_169B3FD:             Me.Recordset15.MoveFirst
  loc_169B402:           End If
  loc_169B434:           var_B8 = (var_8C - 6) & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_12C, var_144)
  loc_169B445:           Me.Recordset15.Filter = CVar(CStr(Me.Recordset15.RecordCount) & "'")
  loc_169B472:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_169B4A9:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_169B4BF:               var_28C = Me.FGrid1.Col
  loc_169B504:               var_100 = (Me.var_28C.Fields.Item("ShortName").Value + "(")
  loc_169B53A:               var_1C0 = (CVar(CStr(Me.Recordset15.RecordCount) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_169B543:               var_1D0 = (var_1C0 + ")")
  loc_169B54C:               var_1E0 = (var_1D0 + vbCrLf)
  loc_169B57B:               var_208 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1E0, "*", CVar(CLng(var_28C)))) 'String
  loc_169B57E:               var_218 = (CVar(CLng(var_90)) + var_208)
  loc_169B587:               var_238 = (var_218 + vbCrLf)
  loc_169B590:               var_258 = (var_238 + "Vacant")
  loc_169B599:               var_2DC = CVar(CStr(var_96 & var_258)) 'String
  loc_169B5A1:               Set var_2F0 = Me.FGrid1
  loc_169B5A7:               LateIdCallSt
  loc_169B5E5:               var_AE = CByte(0) 'Byte
  loc_169B5FD:               If (var_AC.RecordCount > 0) Then
  loc_169B60C:                 var_AC.Filter = 0
  loc_169B614:                 var_AC.MoveFirst
  loc_169B619:               End If
  loc_169B659:               var_AC.Filter = CVar(var_2DC & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_2F0) & "'")
  loc_169B683:               If (var_AC.AbsolutePosition > 0) Then
  loc_169B6B7:                 If (IsNull(CVar(var_AC.Fields.Item("WaiterName"))) = 0) Then
  loc_169B6BE:                   var_AE = CByte(1) 'Byte
  loc_169B6C2:                 End If
  loc_169B6C2:               End If
  loc_169B6C5:             Else
  loc_169B6C9:               var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169B6D8:               var_1F8 = Me.FGrid1.Col
  loc_169B6E1:               var_248 = CVar(CLng(var_1F8)) 'Long
  loc_169B718:               var_100 = (Me.var_1F8.Fields.Item("ShortName").Value + "(")
  loc_169B74E:               var_1C0 = (CVar(var_2DC & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_2F0) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_169B757:               var_1D0 = (var_1C0 + ")")
  loc_169B760:               var_1E0 = (var_1D0 + vbCrLf)
  loc_169B765:               var_208 = CVar(CStr(var_1E0)) 'String
  loc_169B76D:               Set var_1E8 = Me.FGrid1
  loc_169B773:               LateIdCallSt
  loc_169B7A3:               var_AE = CByte(2) 'Byte
  loc_169B7A7:               ' Referenced from:     169BA7D
  loc_169B7FF:               var_144 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGrid1.Fields.Item("Code").Value, var_1E8, var_208)) 'String
  loc_169B817:               If (var_248 = var_144) Then
  loc_169B831:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_169B838:                   var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169B880:                   var_100 = Me.FGrid1.TextMatrix)
  loc_169B8B9:                   var_B8 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_169B8BD:                   var_1C0 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_B8) 'String
  loc_169B8C5:                   Set var_1E8 = Me.FGrid1
  loc_169B8CB:                   LateIdCallSt
  loc_169B8F7:                 Else
  loc_169B927:                   var_100 = Me.FGrid1.TextMatrix)
  loc_169B960:                   var_B4 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1)
  loc_169B989:                   If (InStr(var_1C0, var_1E8, var_B4, 0) = 0) Then
  loc_169B990:                     var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169B9D8:                     var_100 = Me.FGrid1.TextMatrix)
  loc_169BA18:                     var_104 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))
  loc_169BA1C:                     var_1C0 = CVar(var_1A0 & var_104) 'String
  loc_169BA24:                     Set var_1E8 = Me.FGrid1
  loc_169BA2A:                     LateIdCallSt
  loc_169BA55:                   End If
  loc_169BA55:                 End If
  loc_169BA5B:                 var_A4.MoveNext
  loc_169BA77:                 If (var_A4.AbsolutePosition < 0) Then
  loc_169BA7A:                   GoTo loc_169BA80
  loc_169BA7D:                 End If
  loc_169BA7D:                 GoTo loc_169B7A7
  loc_169BA80:                 ' Referenced from:     169BA7A
  loc_169BA80:               End If
  loc_169BA8F:               Me.Recordset15.Filter = 0
  loc_169BA94:             End If
  loc_169BA94:           End If
  loc_169BAAD:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169BABC:           Me.FGrid1.Col = 0
  loc_169BACB:         End If
  loc_169BAD5:         If (var_94 = (var_8C - 4)) Then
  loc_169BAEC:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_169BB08:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_169BB2F:           Call Proc_256_47_10C49BC(CInt(CLng(Me.FGrid1.Col)), var_AE, Me.FGrid1.Col, var_92, var_1E8)
  loc_169BB4D:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_169BB6E:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169BB7D:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_169BB8C:         End If
  loc_169BB96:         If (var_94 = (var_8C - 3)) Then
  loc_169BBB0:           If (Me.Recordset15.RecordCount > 0) Then
  loc_169BBB9:             Me.Recordset15.MoveFirst
  loc_169BBBE:           End If
  loc_169BC01:           Me.Recordset15.Filter = CVar(var_1A0 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_1C0) & "'")
  loc_169BC2E:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_169BC65:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_169BC68:               ' Referenced from:   169BF03
  loc_169BCC0:               var_144 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_169BCD8:               If (var_1A0 = var_144) Then
  loc_169BCF2:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_169BCF9:                   var_F0 = CVar(CLng(var_90)) 'Long
  loc_169BD08:                   var_100 = Me.FGrid1.Col
  loc_169BD41:                   var_144 = CVar(Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CVar(CLng(var_100)))) 'String
  loc_169BD49:                   Set var_12C = Me.FGrid1
  loc_169BD4F:                   LateIdCallSt
  loc_169BD6C:                 Else
  loc_169BD9C:                   var_100 = Me.FGrid1.TextMatrix)
  loc_169BDC4:                   var_12C = Me.var_100.Fields.Item("WaiterName")
  loc_169BDCC:                   var_144 = CVar(var_12C) 'Address
  loc_169BDFE:                   If (InStr(var_144, var_12C, Proc_6_38_E69628(var_144, CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1), 0) = 0) Then
  loc_169BE05:                     var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169BE4D:                     var_100 = Me.FGrid1.TextMatrix)
  loc_169BE8D:                     var_104 = Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_169BE91:                     var_1C0 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_104) 'String
  loc_169BE99:                     Set var_1E8 = Me.FGrid1
  loc_169BE9F:                     LateIdCallSt
  loc_169BECA:                   End If
  loc_169BECA:                 End If
  loc_169BED0:                 var_A4.MoveNext
  loc_169BEEC:                 If (var_A4.AbsolutePosition < 0) Then
  loc_169BEFE:                   Me.Recordset15.Filter = 0
  loc_169BF03:                 End If
  loc_169BF03:                 GoTo loc_169BC68
  loc_169BF06:               End If
  loc_169BF06:             End If
  loc_169BF06:           End If
  loc_169BF1F:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169BF2E:           Me.FGrid1.Col = 0
  loc_169BF3D:         End If
  loc_169BF47:         If (var_94 = (var_8C - 2)) Then
  loc_169BF93:           var_144 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1E8)) 'String
  loc_169BF9B:           Set var_12C = Me.FGrid1
  loc_169BFA1:           LateIdCallSt
  loc_169BFD4:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169BFE3:           Me.FGrid1.Col = "KotYN"
  loc_169BFF2:         End If
  loc_169BFFC:         If (var_94 = (var_8C - 1)) Then
  loc_169C018:           var_C8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_169C027:           Me.FGrid1.Col = "KotYN"
  loc_169C036:         End If
  loc_169C039:       Next var_180 'Integer
  loc_169C044:       var_90 = (var_90 + 1)
  loc_169C051:       If (var_90 > (var_8A - 1)) Then
  loc_169C06D:         var_C8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_169C07C:         Me.FGrid1.Col = "KotYN"
  loc_169C08B:       End If
  loc_169C091:       var_88.MoveNext
  loc_169C0AA:       If (var_88.EOF = &HFF) Then
  loc_169C0AD:         GoTo loc_169C0B6
  loc_169C0B0:       End If
  loc_169C0B0:       GoTo loc_169B2F1
  loc_169C0B3:     End If
  loc_169C0B3:     GoTo loc_169B2D7
  loc_169C0B6:     ' Referenced from:   169C0AD
  loc_169C0B6:   End If
  loc_169C0B6: End If
  loc_169C0C4: Me.FGrid1.Redraw = True
  loc_169C0D1: Set var_88 = Nothing
  loc_169C0D9: Set var_A4 = Nothing
  loc_169C0E1: Set var_A0 = Nothing
  loc_169C0E9: Set var_AC = Nothing
  loc_169C0EC: Exit Sub
End Sub

Public Sub Proc_256_46_111F984(arg_C, arg_10) '111F984
  'Data Table: 51A3CC
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_111F62B: Me.FGrid1.Row = 0
  loc_111F646: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111F64B: var_CC = 0
  loc_111F658: Set var_E0 = Me.FGrid1
  loc_111F65E: LateIdCallSt
  loc_111F670: ' Referenced from: 111F8C7
  loc_111F676: If (arg_10 < 5) Then
  loc_111F679:   GoTo loc_111F8CA
  loc_111F67C: End If
  loc_111F680: Set var_E4 = Me.FGrid1
  loc_111F691: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_111F69B:   var_98 = CVar(CLng(var_86)) 'Long
  loc_111F6A0:   var_CC = 0
  loc_111F6AD:   Set var_AC = Me.FGrid1
  loc_111F6B3:   LateIdCallSt
  loc_111F6C1: Next var_E8 'Integer
  loc_111F6D5: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_111F6E5:   If (var_86 = (arg_10 - 5)) Then
  loc_111F6EC:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F6F1:     var_CC = 0
  loc_111F6FE:     Set var_AC = Me.FGrid1
  loc_111F704:     LateIdCallSt
  loc_111F713:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F718:     var_CC = 1
  loc_111F722:     Set var_AC = Me.FGrid1
  loc_111F728:     LateIdCallSt
  loc_111F746:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111F74F:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111F754:     var_FC = "Table No"
  loc_111F75E:     Set var_E0 = Me.FGrid1
  loc_111F764:     LateIdCallSt
  loc_111F776:   End If
  loc_111F780:   If (var_86 = (arg_10 - 4)) Then
  loc_111F787:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F78C:     var_CC = &H4B0
  loc_111F799:     Set var_AC = Me.FGrid1
  loc_111F79F:     LateIdCallSt
  loc_111F7AE:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F7B3:     var_CC = 1
  loc_111F7BD:     Set var_AC = Me.FGrid1
  loc_111F7C3:     LateIdCallSt
  loc_111F7E1:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111F7EA:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111F7EF:     var_FC = "Status"
  loc_111F7F9:     Set var_E0 = Me.FGrid1
  loc_111F7FF:     LateIdCallSt
  loc_111F811:   End If
  loc_111F81B:   If (var_86 = (arg_10 - 3)) Then
  loc_111F822:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F827:     var_CC = &H12C
  loc_111F834:     Set var_AC = Me.FGrid1
  loc_111F83A:     LateIdCallSt
  loc_111F849:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F854:     var_CC = CVar(CInt(4)) 'Integer
  loc_111F85C:     Set var_AC = Me.FGrid1
  loc_111F862:     LateIdCallSt
  loc_111F880:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111F889:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111F88E:     var_FC = vbNullString
  loc_111F898:     Set var_E0 = Me.FGrid1
  loc_111F89E:     LateIdCallSt
  loc_111F8B0:   End If
  loc_111F8B3: Next var_EC 'Integer
  loc_111F8BA: Set var_E4 = Nothing 
  loc_111F8C4: arg_10 = (arg_10 - 6)
  loc_111F8C7: GoTo loc_111F670
  loc_111F8CA: ' Referenced from: 111F679
  loc_111F8F1: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_111F90A:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_111F91A:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_111F933:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_111F94E:     Me.FGrid1.CellBackColor = &HE69839
  loc_111F969:     Me.FGrid1.CellForeColor = &HFFFF
  loc_111F974:   Next var_114 'Integer
  loc_111F97C: Next var_110 'Integer
  loc_111F981: Exit Sub
End Sub

Public Sub Proc_256_47_10C49BC
  'Data Table: 51A3CC
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  loc_10C46C8: var_86 = arg_10 'Byte
  loc_10C46D5: If (var_86 = CByte(0)) Then
  loc_10C46F1:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C46FA:   Set var_C0 = Me.FGrid1
  loc_10C4700:   var_C0.Col = var_AC
  loc_10C471B:   Set var_8C = Me.Label2
  loc_10C4721:   Call 0.Method_Proc_256_47_10C49BC0 (6, var_C0)
  loc_10C4740:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4767:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4770:   Set var_C0 = Me.FGrid1
  loc_10C4776:   var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4791:   Set var_8C = Me.Label2
  loc_10C4797:   Call 0.Method_Proc_256_47_10C49BC0 (6, var_C0)
  loc_10C47B6:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C47C7: Else
  loc_10C47D0:   If (var_86 = CByte(1)) Then
  loc_10C47EC:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C47F5:     Set var_C0 = Me.FGrid1
  loc_10C47FB:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4816:     Set var_8C = Me.Label2
  loc_10C481C:     Call 0.Method_Proc_256_47_10C49BC0 (7, var_C0)
  loc_10C483B:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4862:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C486B:     Set var_C0 = Me.FGrid1
  loc_10C4871:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C488C:     Set var_8C = Me.Label2
  loc_10C4892:     Call 0.Method_Proc_256_47_10C49BC0 (7, var_C0)
  loc_10C48B1:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C48C2:   Else
  loc_10C48CB:     If (var_86 = CByte(2)) Then
  loc_10C48E7:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C48F0:       Set var_C0 = Me.FGrid1
  loc_10C48F6:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4911:       Set var_8C = Me.Label2
  loc_10C4917:       Call 0.Method_Proc_256_47_10C49BC0 (5, var_C0)
  loc_10C4936:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C495D:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4966:       Set var_C0 = Me.FGrid1
  loc_10C496C:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4987:       Set var_8C = Me.Label2
  loc_10C498D:       Call 0.Method_Proc_256_47_10C49BC0 (5, var_C0)
  loc_10C49AC:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C49BA:     End If
  loc_10C49BA:   End If
  loc_10C49BA: End If
  loc_10C49BA: Exit Sub
End Sub

Public Sub Proc_256_48_EC8AB8
  'Data Table: 51A3CC
  Dim var_C4 As Integer
  Dim var_88 As String
  Dim unk_51A3D0 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  loc_EC8A2A: var_C4 = 0
  loc_EC8A4A: var_88 = "Select Count(DOCID) from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52
  loc_EC8A5A: unk_51A3D0.Execute var_88 & "'", var_AC, -1
  loc_EC8A62: var_B0 = var_B0.Fields
  loc_EC8A6A: var_C4 = var_B4.Item(var_B4)
  loc_EC8A72: var_C8 = var_C8.Value
  loc_EC8A99: If (var_D8 > 0) Then
  loc_EC8AA9:   Set var_B0 = Me.cmdPrintPKOT
  loc_EC8AAF:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(&HFF00)
  loc_EC8AB7: End If
  loc_EC8AB7: Exit Sub
End Sub
