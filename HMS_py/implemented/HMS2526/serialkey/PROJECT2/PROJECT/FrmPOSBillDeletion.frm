VERSION 5.00
Begin VB.Form FrmPOSBillDeletion
  Caption = "POS Bill Deletion Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 10980
  ClientHeight = 9645
  Begin CommandButton CmdSerialize
    Caption = "Serialize Bills"
    Left = 12135
    Top = 600
    Width = 1950
    Height = 525
    Visible = 0   'False
    TabIndex = 20
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 9270
    Width = 10980
    Height = 375
    Visible = 0   'False
    TabIndex = 19
  End
  Begin TextBox TxtSearch
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 1800
    Top = 2505
    Width = 915
    Height = 195
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 2070
    Width = 3345
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 1755
    Width = 3345
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 1440
    Width = 1635
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 1125
    Width = 1635
    Height = 285
    TabIndex = 0
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
  Begin MSHFlexGrid GridSel
    Left = 1710
    Top = 2430
    Width = 6495
    Height = 5985
    TabIndex = 4
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin BtnEnh CmdExit
    Left = 9375
    Top = 1185
    Width = 1200
    Height = 870
    TabIndex = 16
  End
  Begin BtnEnh CmdFill
    Left = 6915
    Top = 1185
    Width = 1275
    Height = 870
    TabIndex = 17
  End
  Begin BtnEnh CmdDelete
    Left = 8175
    Top = 1185
    Width = 1200
    Height = 870
    TabIndex = 18
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = -15
    Top = 15
    Width = 180
    Height = 540
    TabIndex = 15
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
  Begin Label Label1
    BackColor = &H80FFFF&
    ForeColor = &H80&
    Left = 1740
    Top = 8535
    Width = 6360
    Height = 345
    TabIndex = 14
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
  Begin Label LblName
    Caption = "Payment mode"
    Index = 3
    ForeColor = &HC00000&
    Left = 1935
    Top = 2085
    Width = 1440
    Height = 240
    TabIndex = 8
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 1935
    Top = 1755
    Width = 1185
    Height = 240
    TabIndex = 7
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
  Begin Label LblName
    Caption = "From Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1935
    Top = 1125
    Width = 990
    Height = 240
    TabIndex = 6
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
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 1935
    Top = 1425
    Width = 735
    Height = 240
    TabIndex = 5
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

Attribute VB_Name = "FrmPOSBillDeletion"

Private global_80 As Long
Private global_52 As Integer
Private global_84 As Long

Private Sub CmdSerialize_Click() '12C2588
  'Data Table: 499474
  Dim var_9C As String
  Dim var_8C As Long
  Dim var_90 As Variant
  Dim var_94 As TextBox
  Dim unk_499487 As Connection15
  Dim var_98 As Recordset15
  Dim var_190 As Fields15
  Dim var_194 As Field20
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_22C As Variant
  Dim var_86 As Integer
  loc_12C1F78: On Error Goto loc_12C256E
  loc_12C1F86: Set var_90 = Me.Txt
  loc_12C1F8C: Call 0.Method_CmdSerialize_Click0 (CInt(2))
  loc_12C1F9D: Set var_98 = var_94
  loc_12C1FB5: If (Proc_6_27_EA61EC(var_98, "Outlet") = 0) Then
  loc_12C1FB8:   Exit Sub
  loc_12C1FB9: End If
  loc_12C1FCD: var_DC = "Start Bill No."
  loc_12C1FE3: var_9C = InputBox("Please Give Start Bill No.", var_DC, var_FC, var_11C, var_13C, var_15C, var_17C)
  loc_12C1FEC: var_8C = CLng(Val(var_9C))
  loc_12C200C: If (var_8C < 1) Then
  loc_12C2022:   var_BC = "Please Input Valid Bill No."
  loc_12C2028:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_12C2038:   Exit Sub
  loc_12C2039: End If
  loc_12C2045: Me.CmdSerialize.Enabled = False
  loc_12C2056: Set var_90 = Me.CmdFill
  loc_12C205C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(False)
  loc_12C2071: Me.Label1.Caption = "Serialization..."
  loc_12C2083: Me.Label1.Refresh
  loc_12C20BB: Set var_90 = Me.Txt
  loc_12C20C1: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_BC, -1, var_98)
  loc_12C20C9: var_190 = var_94.Tag
  loc_12C20F0: unk_499487.Execute 0 & var_9C & "'And Logsite_Code='" & MemVar_1F95078 & "'", var_194, var_DC
  loc_12C20F8: "B" = var_98.Fields
  loc_12C2100: var_94 = var_190.Item(var_8C)
  loc_12C2108:  = var_194.Value
  loc_12C211F: global_88 = Proc_6_38_E69628(var_DC)
  loc_12C2174: Proc_6_7_F26918(var_BC, MemVar_1F950F4, "Select max(Vno) From Sale1 Where VDate Between ", var_24C, -1)
  loc_12C2194: Proc_6_7_F26918(var_11C, MemVar_1F950FC, var_98 & var_BC & " And ", var_190)
  loc_12C21A5: var_15C = 0 & var_11C & " And RestCode='" 
  loc_12C21B7: Set var_90 = Me.Txt
  loc_12C21BD: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C)
  loc_12C21C5: var_15C = var_94.Tag
  loc_12C2210: unk_499487.Execute CStr(var_194 & CVar(var_9C) & "' And VType='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "'"), var_26C, 
  loc_12C2218:  = var_98.Fields
  loc_12C2220:  = var_190.Item()
  loc_12C2228:  = var_194.Value
  loc_12C2233: Proc_6_39_E7D3A0(var_27C)
  loc_12C2284: unk_499487.BeginTrans var_280
  loc_12C229F: unk_499487.Execute "Drop Table TempPosDel", var_BC, -1
  loc_12C22C0: unk_499487.Execute "CREATE TABLE [dbo].[TempPosDel]([AutoId] [int] IDENTITY(1,1) NOT NULL,[OldDocId] [varchar](21) NOT NULL CONSTRAINT [DF_TempPosDel_OldDocId_1__75]  DEFAULT (''),[OldVno] [int] NULL CONSTRAINT [DF_TempPosDel_OldVno_1__75]  DEFAULT (''),[OldVdate] [datetime] NULL,[NewDocId] [varchar](21) NULL CONSTRAINT [DF_TempPosDel_NewDocId_1__75]  DEFAULT (''),[NewVno] [int] NULL CONSTRAINT [DF_TempPosDel_NewVno_1__75]  DEFAULT (''), CONSTRAINT [PK_TempPosDel] PRIMARY KEY CLUSTERED ([OldDocId] ASC) ON [PRIMARY]) ON [PRIMARY]", var_BC, -1
  loc_12C22E8: Proc_6_7_F26918(var_BC, MemVar_1F950F4, "Insert into TempPosDel(OldDocId,OldVno,OldVdate) Select DocId,Vno,Vdate from Sale1 Where VDate Between ", var_24C, -1, var_98)
  loc_12C2308: Proc_6_7_F26918(var_11C, MemVar_1F950FC, var_90 & var_BC & " And ", var_90)
  loc_12C2319: var_15C = &HFF & var_11C & " And RestCode='" 
  loc_12C2331: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C)
  loc_12C2339: var_15C = var_94.Tag
  loc_12C2376: var_22C = CLng(var_27C) & CVar(var_9C) & "' And VType='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by VDate,CAST(VTime AS DateTime),Vno" 
  loc_12C2384: unk_499487.Execute CStr(var_22C), var_26C, 
  loc_12C23B4: Call Proc_179_30_112D098()
  loc_12C23C5: global_80 = (var_8C - 1)
  loc_12C23DE: unk_499487.Execute "Drop Table TempPosDel", var_BC, -1
  loc_12C23FF: unk_499487.Execute "CREATE TABLE [dbo].[TempPosDel]([AutoId] [int] IDENTITY(1,1) NOT NULL,[OldDocId] [varchar](21) NOT NULL CONSTRAINT [DF_TempPosDel_OldDocId_1__75]  DEFAULT (''),[OldVno] [int] NULL CONSTRAINT [DF_TempPosDel_OldVno_1__75]  DEFAULT (''),[OldVdate] [datetime] NULL,[NewDocId] [varchar](21) NULL CONSTRAINT [DF_TempPosDel_NewDocId_1__75]  DEFAULT (''),[NewVno] [int] NULL CONSTRAINT [DF_TempPosDel_NewVno_1__75]  DEFAULT (''), CONSTRAINT [PK_TempPosDel] PRIMARY KEY CLUSTERED ([OldDocId] ASC) ON [PRIMARY]) ON [PRIMARY]", var_BC, -1
  loc_12C2427: Proc_6_7_F26918(var_BC, MemVar_1F950F4, "Insert into TempPosDel(OldDocId,OldVno,OldVdate) Select DocId,Vno,Vdate from Sale1 Where VDate Between ", var_24C, -1)
  loc_12C2447: Proc_6_7_F26918(var_11C, MemVar_1F950FC, var_98 & var_BC & " And ")
  loc_12C2458: var_15C = Me.Txt & var_11C & " And RestCode='" 
  loc_12C2470: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C)
  loc_12C2478: var_15C = var_94.Tag
  loc_12C24B5: var_22C = Me.Txt & CVar(var_9C) & "' And VType='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by VDate,CAST(VTime AS DateTime),Vno" 
  loc_12C24C3: unk_499487.Execute CStr(var_22C), CLng(var_27C), 
  loc_12C24F3: Call Proc_179_30_112D098()
  loc_12C24FE: unk_499487.CommitTrans
  loc_12C2505: var_86 = 0
  loc_12C2515: Me.Label1.Caption = "Serialization Completed."
  loc_12C2527: Me.Label1.Refresh
  loc_12C253B: Me.CmdSerialize.Enabled = True
  loc_12C254F: Me.CmdSerialize.Visible = False
  loc_12C255F: Set var_90 = Me.CmdFill
  loc_12C2565: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(True)
  loc_12C256D: Exit Sub
  loc_12C256E: ' Referenced from: 12C1F78
  loc_12C2574: If (var_86 = &HFF) Then
  loc_12C257D:   unk_499487.RollbackTrans
  loc_12C2582: End If
  loc_12C2582: Proc_6_60_E63754(var_86)
  loc_12C2587: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E65540
  'Data Table: 499474
  loc_E65510: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E65513:   Call DGRestType_UnknownEvent_9()
  loc_E65518: End If
  loc_E65534: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E65537:   Call DGPayType_UnknownEvent_9()
  loc_E6553C: End If
  loc_E6553C: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_9 '1168934
  'Data Table: 499474
  Dim var_AC As Variant
  Dim var_B0 As TextBox
  Dim unk_499487 As Connection15
  Dim var_DC As Variant
  Dim var_E0 As Field20
  Dim var_86 As Integer
  Dim var_D4 As Variant
  Dim var_120 As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_B4 As String
  Dim var_140 As Variant
  loc_11685BC: On Error Goto loc_1168918
  loc_11685C8: Set var_AC = Me.CmdDelete
  loc_11685CE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(False)
  loc_11685E3: Me.Label1.Caption = "Deleting..."
  loc_11685F5: Me.Label1.Refresh
  loc_116862D: Set var_AC = Me.Txt
  loc_1168633: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(2), var_B0, var_B4, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_D4, -1)
  loc_1168662: unk_499487.Execute var_DC & var_B4 & "'And Logsite_Code='" & MemVar_1F95078 & "'", 0, var_E0
  loc_116866A: var_F0 = var_B0.Tag.Fields
  loc_1168672:  = var_DC.Item("B")
  loc_116867A:  = var_E0.Value
  loc_11686C8: unk_499487.BeginTrans var_FC
  loc_11686E3: unk_499487.Execute "Delete from TempPosDel", var_D4, -1
  loc_1168717: Call Proc_179_28_11A892C(global_60, CByte(Me.Check1.Value), var_D4)
  loc_1168745: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(0), var_B0, "Insert into TempPosDel(OldDocId,OldVno) Select DocId,Vno from Sale1 Where VDate>= ", var_210)
  loc_1168754: Proc_6_7_F26918(var_F0, CVar(var_B0), -1)
  loc_1168774: Proc_6_7_F26918(var_140, MemVar_1F950FC, var_E0 & var_F0 & " And VDate<=")
  loc_1168785: var_170 = Me.Txt & var_140 & " And RestCode='" 
  loc_116879D: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(2), var_DC, var_B4)
  loc_11687A5: var_170 = var_DC.Tag
  loc_11687B9: var_1B0 = &HFF & CVar(var_B4) & "' And Logsite_Code='" 
  loc_11687DA: unk_499487.Execute CStr(var_1B0 & CVar(MemVar_1F95078) & "' Order by Vno,VDate"), , 
  loc_116880A: Call Proc_179_27_107C4C8()
  loc_116880F: Call Proc_179_26_13CB074()
  loc_1168845: Set var_AC = Me.Txt
  loc_116884B: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(1), var_B0, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_116885A: Proc_6_7_F26918(var_F0, CVar(var_B0), var_1B0)
  loc_1168862: var_120 = -1 & var_F0 
  loc_1168881: var_170 = var_E0 & var_F0 & " And VDate<=" & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(Proc_6_38_E69628(var_F0)) & "' And Logsite_Code='" 
  loc_11688A2: unk_499487.Execute CStr(var_170 & CVar(MemVar_1F95078) & "'"), Me.Txt, 
  loc_11688D4: unk_499487.CommitTrans
  loc_11688DB: var_86 = 0
  loc_11688E9: Set global_76 = Nothing
  loc_11688FD: Me.Label1.Caption = "Deletion Completed."
  loc_116890F: Me.Label1.Refresh
  loc_1168917: Exit Sub
  loc_1168918: ' Referenced from: 11685BC
  loc_116891E: If (var_86 = &HFF) Then
  loc_1168927:   unk_499487.RollbackTrans
  loc_116892C: End If
  loc_116892C: Proc_6_60_E63754(var_86)
  loc_1168931: Exit Sub
  loc_1168932: Assert
End Sub

Private Sub Form_Load() 'F932A0
  'Data Table: 499474
  Dim var_88 As Variant
  Dim var_B4 As String
  Dim unk_499487 As Connection15
  loc_F93138: On Error Goto loc_F93297
  loc_F93151: Proc_6_23_DFC5B8(Me, 0)
  loc_F93160: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F93178: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F93188: Set var_88 = Me.Label1
  loc_F9318E: var_88.BackColor = CLng(MemVar_1F951B4)
  loc_F931B1: var_B4 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where  (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F931BA: unk_499487.Execute var_B4, var_C4, -1
  loc_F931CB: Set global_68 = var_88
  loc_F931E9: CVarUnk
  loc_F931EE: VerifyVarObj
  loc_F931FA: LateIdStAd
  loc_F93223: var_B4 = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name"
  loc_F9322C: unk_499487.Execute var_B4, var_C4, -1
  loc_F9325B: CVarUnk
  loc_F93260: VerifyVarObj
  loc_F93266: Set var_88 = Me.DGPayType
  loc_F9326C: LateIdStAd
  loc_F93283: Set var_88 = Me.CmdDelete
  loc_F93289: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(False)
  loc_F93291: Call Proc_179_23_11BD918(var_88, Me.DGRestType, var_88, var_88)
  loc_F93296: Exit Sub
  loc_F93297: ' Referenced from: F93138
  loc_F93297: Proc_6_60_E63754(global_68, var_88)
  loc_F9329C: Exit Sub
End Sub

Private Sub Form_Resize() 'E70F80
  'Data Table: 499474
  loc_E70F2A: Call 0.Method_arg_50 (var_88)
  loc_E70F3C: Me.LblFormCaption.Caption = var_88
  loc_E70F55: Me.LblFormCaption.Left = CDbl(0)
  loc_E70F63: Call 0.Method_arg_100 (var_90)
  loc_E70F75: Me.LblFormCaption.Width = var_90
  loc_E70F7D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60348
  'Data Table: 499474
  loc_E60307: Set global_64 = Nothing
  loc_E60319: Set global_76 = Nothing
  loc_E6032B: Set global_68 = Nothing
  loc_E6033D: Set global_72 = Nothing
  loc_E60344: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '10003FC
  'Data Table: 499474
  Dim var_D4 As Variant
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_13C As MSHFlexGrid
  Dim var_150 As String
  loc_100020C: On Error Goto loc_10003F3
  loc_1000220: var_94 = MemVar_1F950C8
  loc_1000230: var_B4 = "HTW_SYSTEM"
  loc_100023A: var_E4 = (CLng(KeyCode) = &H70) And (Ucase(var_94) = var_B4)
  loc_1000251: var_108 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1000262: Set var_13C = Me.GridSel
  loc_1000273: var_150 = CStr(var_13C.TextMatrix))
  loc_100029C: If CBool(CVar(CLng(2)) And (var_150 <> vbNullString)) Then
  loc_10002A9:   Set var_174 = New RSSaleBill
  loc_10002BD:   Set var_E8 = Me.Label2
  loc_10002C3:   Call 0.Method_Form_KeyDown0 (CInt(2), var_13C, var_150)
  loc_10002CB:   var_108 = RSSaleBill.Label2.Tag
  loc_10002DA:   var_174.LocalRestCode = CVar(var_150)
  loc_10002F6:   Set var_E8 = var_13C(CInt(2))
  loc_10002FC:   Call 0.Method_Form_KeyDown0 (var_150)
  loc_1000304:   var_E4 = var_174.TextBox.Text
  loc_100030F:   Form.Caption = var_150
  loc_1000329:   Form.Show var_94, var_B4
  loc_1000341:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1000349:   var_D4 = CVar(CLng(2)) 'Long
  loc_1000363:   var_E4 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_100036A:   Call var_174.SEARCHBACK
  loc_1000383: Else
  loc_10003C0:   If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "H")) Then
  loc_10003CF:     Me.CmdSerialize.Visible = True
  loc_10003D7:   End If
  loc_10003D7: End If
  loc_10003EB: Proc_6_88_FE8F6C(Me, KeyCode, Shift, 0)
  loc_10003F3: ' Referenced from: 100020C
  loc_10003F3: Proc_6_60_E63754(var_E4, var_D4)
  loc_10003F8: Exit Sub
  loc_10003F9: CopyBytes 1279
End Sub

Private Sub Check1_Click() 'F6960C
  'Data Table: 499474
  Dim var_9C As Variant
  loc_F694EF: If (CLng(Me.Check1.Value) = 0) Then
  loc_F69500:   Me.GridSel.Enabled = True
  loc_F69527:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6953D:     Me.GridSel.Row = 1
  loc_F69558:     Me.GridSel.Col = 0
  loc_F69560:   End If
  loc_F69563: Else
  loc_F69572:   Me.GridSel.Enabled = False
  loc_F69599:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F695AF:     Me.GridSel.Row = 0
  loc_F695CA:     Me.GridSel.Col = 0
  loc_F695EB:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F695FA:     Me.GridSel.RowSel = 0
  loc_F69609:   End If
  loc_F69609: End If
  loc_F69609: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E237D0
  'Data Table: 499474
  loc_E237B6: If (KeyCode = &HD) Then
  loc_E237C7:   Proc_303_0_FBACC8("	")
  loc_E237CF: End If
  loc_E237CF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1014664
  'Data Table: 499474
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_1014466: If (KeyCode = &HD) Then
  loc_1014477:   Proc_303_0_FBACC8("	")
  loc_101447F: End If
  loc_101449E: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_10144A1:   Exit Sub
  loc_10144A2: End If
  loc_10144B6: var_A4 = Me.GridSel.Col
  loc_10144D9: var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1014519: If (CVar(CLng(5)) And (CStr(Me.GridSel.TextMatrix)) = "Cash")) Then
  loc_101452C:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1014546:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1014561:   var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1014566:   var_E8 = 0
  loc_1014598:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_101459D:   var_19C = 0
  loc_10145D8:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10145E0:   Set var_1D0 = Me.GridSel
  loc_10145E6:   LateIdCallSt
  loc_1014620:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1014632:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_101465A:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1014661: End If
  loc_1014661: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D938
  'Data Table: 499474
  loc_E5D913: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D916:   Exit Sub
  loc_E5D917: End If
  loc_E5D92E: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5D937: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '10690D0
  'Data Table: 499474
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1068E7D: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1068E80:   Exit Sub
  loc_1068E81: End If
  loc_1068EDD: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1068EE0:   Exit Sub
  loc_1068EE1: End If
  loc_1068F10: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1068F29:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1068F44:   Me.GridSel.Col = 0
  loc_1068F5F:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1068F67:   var_EC = CVar(CLng(5)) 'Long
  loc_1068F9A:   If (CStr(Me.GridSel.TextMatrix)) = "Cash") Then
  loc_1068FAD:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_1068FC7:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1068FD3:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1068FD8:     var_EC = 0
  loc_1068FFB:     var_160 = CVar(CLng(var_88)) 'Long
  loc_1069000:     var_180 = 0
  loc_106903B:     var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1069043:     Set var_A0 = Me.GridSel
  loc_1069049:     LateIdCallSt
  loc_106907B:     var_86 = CInt((UBound(global_60, 1) + 1))
  loc_106908D:     ReDim Preserve global_60(0 To CLng(var_86))
  loc_10690B5:     global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10690BC:   End If
  loc_10690BF: Next var_BA 'Integer
  loc_10690C9: global_52 = 0
  loc_10690CC: Exit Sub
  loc_10690CD: ThisVCallR4
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E0F8C
  'Data Table: 499474
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E08D8: On Error Goto loc_12E0F47
  loc_12E08E5: Set var_88 = Me.Txt
  loc_12E08EB: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E08F9: Proc_6_74_E23240(var_8C)
  loc_12E0905: Call Proc_179_29_EBDF38(var_8C)
  loc_12E090D: var_92 = Index
  loc_12E0918: If (var_92 = CInt(0)) Then
  loc_12E0928:   Set var_88 = Me.Txt
  loc_12E092E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0949:   Set var_90 = Me.Txt
  loc_12E094F:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0957:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E0977:   Set var_88 = Me.Txt
  loc_12E097D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0997:   Set var_90 = Me.Txt
  loc_12E099D:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E09A5:   var_9C.Tag = var_8C.Text
  loc_12E09BB: Else
  loc_12E09C3:   If (var_92 = CInt(1)) Then
  loc_12E09D3:     Set var_88 = Me.Txt
  loc_12E09D9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E09F4:     Set var_90 = Me.Txt
  loc_12E09FA:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0A02:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E0A22:     Set var_88 = Me.Txt
  loc_12E0A28:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0A30:     var_98 = var_8C.Text
  loc_12E0A42:     Set var_90 = Me.Txt
  loc_12E0A48:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0A50:     var_9C.Tag = var_98
  loc_12E0A66:   Else
  loc_12E0A6E:     If (var_92 = CInt(2)) Then
  loc_12E0A7F:       Set var_88 = Me.Txt
  loc_12E0A85:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E0AA4:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E0AC0:       Set var_90 = Me.Txt
  loc_12E0AC6:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E0AE1:       Set var_88 = Me.Txt
  loc_12E0AE7:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E0AFF:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E0B0E:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E0B2F:       Me.Filter = 0
  loc_12E0B40:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E0B5C:       If (Me.RecordCount > 0) Then
  loc_12E0B6A:         Set var_8C = Me.FGPoint
  loc_12E0B82:         Proc_6_137_1192FDC(Me.DGRestType, global_68, Index)
  loc_12E0B90:       End If
  loc_12E0BDE:       Set var_88 = Me.Txt
  loc_12E0BE4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E0BEC:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E0C04:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E0C07:         Exit Sub
  loc_12E0C08:       End If
  loc_12E0C15:       Set var_88 = Me.Txt
  loc_12E0C1B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0C23:       var_98 = var_8C.Text
  loc_12E0C35:       var_B0 = "Name"
  loc_12E0C4C:       var_9C = Me.Fields.Item(var_B0)
  loc_12E0C70:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E0C79:         Me.MoveFirst
  loc_12E0C9C:         Set var_88 = Me.Txt
  loc_12E0CA2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E0CAA:         0 = var_8C.Text
  loc_12E0CC3:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E0CD8:       End If
  loc_12E0CEB:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E0CF9:     Else
  loc_12E0D01:       If (var_92 = CInt(3)) Then
  loc_12E0D12:         Set var_88 = Me.Txt
  loc_12E0D18:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E0D37:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E0D53:         Set var_90 = Me.Txt
  loc_12E0D59:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E0D74:         Set var_88 = Me.Txt
  loc_12E0D7A:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E0D92:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E0DA1:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E0DCA:         If (Me.RecordCount > 0) Then
  loc_12E0DD8:           Set var_8C = Me.FGPoint
  loc_12E0DF0:           Proc_6_137_1192FDC(Me.DGPayType, global_72)
  loc_12E0DFE:         End If
  loc_12E0E4C:         Set var_88 = Me.Txt
  loc_12E0E52:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E0E5A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E0E72:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E0E75:           Exit Sub
  loc_12E0E76:         End If
  loc_12E0E83:         Set var_88 = Me.Txt
  loc_12E0E89:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0E91:         var_98 = var_8C.Text
  loc_12E0EA3:         var_B0 = "Name"
  loc_12E0EDE:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E0EE7:           Me.MoveFirst
  loc_12E0F0A:           Set var_88 = Me.Txt
  loc_12E0F10:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E0F18:           0 = var_8C.Text
  loc_12E0F31:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E0F46:         End If
  loc_12E0F46:       End If
  loc_12E0F46:     End If
  loc_12E0F46:   End If
  loc_12E0F46: End If
  loc_12E0F46: Exit Sub
  loc_12E0F47: ' Referenced from: 12E08D8
  loc_12E0F4F: Set var_88 = Err()
  loc_12E0F55: Call 0.Method_arg_2C (var_98)
  loc_12E0F76: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E0F89: Exit Sub
  loc_12E0F8A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CD200
  'Data Table: 499474
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CCF16: If (CLng(Shift) = &H1B) Then
  loc_10CCF19:   Call Proc_179_29_EBDF38()
  loc_10CCF1E:   Exit Sub
  loc_10CCF1F: End If
  loc_10CCF22: var_88 = KeyCode
  loc_10CCF2D: If (var_88 = CInt(2)) Then
  loc_10CCF4D:   Set var_9C = Me.FGPoint
  loc_10CCF58:   Set var_98 = Nothing
  loc_10CCF86:   Proc_6_69_134A630(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CCFF5:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CD01B:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CD029:   End If
  loc_10CD02C: Else
  loc_10CD034:   If (var_88 = CInt(3)) Then
  loc_10CD054:     Set var_9C = Me.FGPoint
  loc_10CD05F:     Set var_98 = Nothing
  loc_10CD091:     Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CD100:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CD107:       Set var_98 = Me.DGPayType
  loc_10CD126:       Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CD134:     End If
  loc_10CD134:   End If
  loc_10CD134: End If
  loc_10CD16F: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CD199:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CD1A2:     Call Txt_Validate(KeyCode)
  loc_10CD1AD:     If (var_86 = &HFF) Then
  loc_10CD1B0:       Exit Sub
  loc_10CD1B1:     End If
  loc_10CD1B7:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_10CD1BF:   Else
  loc_10CD1D4:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CD1DD:       Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_10CD1E5:     Else
  loc_10CD1EF:       If (CLng(Shift) = &H26) Then
  loc_10CD1F8:         Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_10CD1FD:       End If
  loc_10CD1FD:     End If
  loc_10CD1FD:   End If
  loc_10CD1FD: End If
  loc_10CD1FD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8F1CC
  'Data Table: 499474
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8F06F: Proc_6_58_E06050(arg_10)
  loc_F8F07A: Proc_6_133_E7FB08(var_94)
  loc_F8F083: arg_10 = CInt(var_94)
  loc_F8F08C: var_96 = KeyAscii
  loc_F8F097: If (var_96 = CInt(2)) Then
  loc_F8F0B6:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8F0E3:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8F115:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8F123:   End If
  loc_F8F126: Else
  loc_F8F12E:   If (var_96 = CInt(3)) Then
  loc_F8F14D:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8F185:       Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8F1BB:       Proc_6_138_106E830(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8F1C9:     End If
  loc_F8F1C9:   End If
  loc_F8F1C9: End If
  loc_F8F1C9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FA94
  'Data Table: 499474
  loc_E4FA72: Set var_88 = Me.Txt
  loc_E4FA78: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FA86: Proc_6_73_E23294(var_8C)
  loc_E4FA92: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1166920
  'Data Table: 499474
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_1166570: On Error Goto loc_11668D9
  loc_1166576: var_86 = Cancel
  loc_1166581: If (var_86 = CInt(0)) Then
  loc_116658E:   Set var_8C = Me.Txt
  loc_1166594:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11665B4:   Set var_98 = Me.Txt
  loc_11665BA:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_11665C2:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_11665D8: Else
  loc_11665E0:   If (var_86 = CInt(1)) Then
  loc_11665ED:     Set var_8C = Me.Txt
  loc_11665F3:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166613:     Set var_98 = Me.Txt
  loc_1166619:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1166621:     var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_1166637:   Else
  loc_116663F:     If (var_86 = CInt(2)) Then
  loc_116664F:       Set var_8C = Me.Txt
  loc_1166655:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166674:       If (var_90.Text <> vbNullString) Then
  loc_11666B2:         Set var_94 = Me.Txt
  loc_11666B8:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11666C0:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11666F3:         var_90 = Me.Fields.Item("Code")
  loc_1166711:         Set var_94 = Me.Txt
  loc_1166717:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_116671F:         var_98.Tag = CStr(var_90.Value)
  loc_1166738:       Else
  loc_1166745:         Set var_8C = Me.Txt
  loc_116674B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166753:         var_90.Text = vbNullString
  loc_116676C:         Set var_8C = Me.Txt
  loc_1166772:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116677A:         var_90.Tag = vbNullString
  loc_1166786:       End If
  loc_1166789:     Else
  loc_1166791:       If (var_86 = CInt(3)) Then
  loc_11667A1:         Set var_8C = Me.Txt
  loc_11667A7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11667C6:         If (var_90.Text <> vbNullString) Then
  loc_1166804:           Set var_94 = Me.Txt
  loc_116680A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166812:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1166845:           var_90 = Me.Fields.Item("Code")
  loc_1166856:           var_A0 = CStr(var_90.Value)
  loc_1166863:           Set var_94 = Me.Txt
  loc_1166869:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166871:           var_98.Tag = var_A0
  loc_116688A:         Else
  loc_1166897:           Set var_8C = Me.Txt
  loc_116689D:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11668A5:           var_90.Text = vbNullString
  loc_11668BE:           Set var_8C = Me.Txt
  loc_11668C4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11668CC:           var_90.Tag = vbNullString
  loc_11668D8:         End If
  loc_11668D8:       End If
  loc_11668D8:     End If
  loc_11668D8:   End If
  loc_11668D8: End If
  loc_11668D8: Exit Sub
  loc_11668D9: ' Referenced from: 1166570
  loc_11668E1: Set var_8C = Err()
  loc_11668E7: Call 0.Method_arg_2C (var_A0)
  loc_1166908: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_116691B: Exit Sub
  loc_116691C: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E16424
  'Data Table: 499474
  loc_E16419: Me.Global.Unload Me
  loc_E16421: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F3A894
  'Data Table: 499474
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A78B: Me.DGRestType.Visible = False
  loc_F3A7AA: If (Me.RecordCount > 0) Then
  loc_F3A7E9:   Set var_B4 = Me.Txt
  loc_F3A7EF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3A7F7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3A82A:   var_B0 = Me.Fields.Item("Code")
  loc_F3A849:   Set var_B4 = Me.Txt
  loc_F3A84F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3A857:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A86D: End If
  loc_F3A878: Set var_A8 = Me.Txt
  loc_F3A87E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F3A886: var_B0.SetFocus
  loc_F3A892: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E702C4
  'Data Table: 499474
  loc_E70282: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E70299: Set var_8C = Me.FGPoint
  loc_E702B5: Proc_6_138_106E830(Me.DGRestType, global_68, CInt(2))
  loc_E702C3: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F3A734
  'Data Table: 499474
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A62B: Me.DGPayType.Visible = False
  loc_F3A64A: If (Me.RecordCount > 0) Then
  loc_F3A689:   Set var_B4 = Me.Txt
  loc_F3A68F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3A697:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3A6CA:   var_B0 = Me.Fields.Item("Code")
  loc_F3A6E9:   Set var_B4 = Me.Txt
  loc_F3A6EF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3A6F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A70D: End If
  loc_F3A718: Set var_A8 = Me.Txt
  loc_F3A71E: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F3A726: var_B0.SetFocus
  loc_F3A732: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E7088C
  'Data Table: 499474
  loc_E7084A: Proc_6_153_E91D24(Me.DGPayType, arg_14)
  loc_E70861: Set var_8C = Me.FGPoint
  loc_E7087D: Proc_6_138_106E830(Me.DGPayType, global_72, CInt(3))
  loc_E7088B: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '1191EC8
  'Data Table: 499474
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_1191AE7: Set var_88 = Me.Txt
  loc_1191AED: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_1191B16: If (Proc_6_27_EA61EC(var_8C, "From Date") = 0) Then
  loc_1191B19:   Exit Sub
  loc_1191B1A: End If
  loc_1191B28: Set var_88 = Me.Txt
  loc_1191B2E: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1191B52: Set var_90 = Me.Txt
  loc_1191B58: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_98, var_9C)
  loc_1191B60: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_1191B81: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_1191B9D:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1191BB8:   Set var_88 = Me.Txt
  loc_1191BBE:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_1191BC6:   var_8C.SetFocus
  loc_1191BD2:   Exit Sub
  loc_1191BD3: End If
  loc_1191BDE: Set var_88 = Me.Txt
  loc_1191BE4: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_1191C0D: If (Proc_6_27_EA61EC(var_8C, "To Date") = 0) Then
  loc_1191C10:   Exit Sub
  loc_1191C11: End If
  loc_1191C1F: Set var_88 = Me.Txt
  loc_1191C25: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_1191C49: Set var_90 = Me.Txt
  loc_1191C4F: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98, var_9C)
  loc_1191C57: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_1191C78: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_1191C94:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1191CAF:   Set var_88 = Me.Txt
  loc_1191CB5:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_1191CBD:   var_8C.SetFocus
  loc_1191CC9:   Exit Sub
  loc_1191CCA: End If
  loc_1191CD8: Set var_90 = Me.Txt
  loc_1191CDE: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98)
  loc_1191CF9: Set var_88 = Me.Txt
  loc_1191CFF: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1191D29: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_1191D45:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_1191D60:   Set var_88 = Me.Txt
  loc_1191D66:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1191D6E:   var_8C.SetFocus
  loc_1191D7A:   Exit Sub
  loc_1191D7B: End If
  loc_1191D86: Set var_88 = Me.Txt
  loc_1191D8C: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_1191DB5: If (Proc_6_27_EA61EC(var_8C, "Outlet") = 0) Then
  loc_1191DB8:   Exit Sub
  loc_1191DB9: End If
  loc_1191DC4: Set var_88 = Me.Txt
  loc_1191DCA: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3), var_8C)
  loc_1191DF3: If (Proc_6_27_EA61EC(var_8C, "Payment Mode") = 0) Then
  loc_1191DF6:   Exit Sub
  loc_1191DF7: End If
  loc_1191E00: Set var_88 = Me.CmdFill
  loc_1191E06: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(False)
  loc_1191E1B: Me.Label1.Caption = "Processing..."
  loc_1191E2D: Me.Label1.Refresh
  loc_1191E35: Call Proc_179_23_11BD918(var_8C)
  loc_1191E3A: Call Proc_179_24_131B190()
  loc_1191E52: Me.GridSel.Row = 1
  loc_1191E6D: Me.GridSel.Col = 0
  loc_1191E79: Set var_88 = Me.GridSel
  loc_1191E97: Me.Label1.Caption = vbNullString
  loc_1191EA9: Me.Label1.Refresh
  loc_1191EB9: Set var_88 = Me.CmdFill
  loc_1191EBF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(True)
  loc_1191EC7: Exit Sub
End Sub

Public Sub Proc_179_23_11BD918
  'Data Table: 499474
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  Dim var_301 As Double
  loc_11BD4D2: Me.GridSel.Rows = 1
  loc_11BD4E6: Me.GridSel.Cols = 6
  loc_11BD4EB: var_98 = 0
  loc_11BD4F7: var_BC = CVar(CLng(0)) 'Long
  loc_11BD4FC: var_DC = "O"
  loc_11BD505: LateIdCallSt
  loc_11BD510: var_98 = CVar(CLng(0)) 'Long
  loc_11BD515: var_BC = &H258
  loc_11BD521: LateIdCallSt
  loc_11BD529: var_98 = 0
  loc_11BD535: var_BC = CVar(CLng(1)) 'Long
  loc_11BD53A: var_DC = "Bill No"
  loc_11BD543: LateIdCallSt
  loc_11BD54E: var_98 = CVar(CLng(1)) 'Long
  loc_11BD559: var_BC = CVar(CInt(1)) 'Integer
  loc_11BD560: LateIdCallSt
  loc_11BD56B: var_98 = CVar(CLng(1)) 'Long
  loc_11BD576: var_BC = CVar(CInt(1)) 'Integer
  loc_11BD57D: LateIdCallSt
  loc_11BD588: var_98 = CVar(CLng(1)) 'Long
  loc_11BD58D: var_BC = &H514
  loc_11BD599: LateIdCallSt
  loc_11BD5A1: var_98 = 0
  loc_11BD5AD: var_BC = CVar(CLng(2)) 'Long
  loc_11BD5B2: var_DC = "DocId"
  loc_11BD5BB: LateIdCallSt
  loc_11BD5C6: var_98 = CVar(CLng(2)) 'Long
  loc_11BD5D1: var_BC = CVar(CInt(7)) 'Integer
  loc_11BD5D8: LateIdCallSt
  loc_11BD5E3: var_98 = CVar(CLng(2)) 'Long
  loc_11BD5EE: var_BC = CVar(CInt(7)) 'Integer
  loc_11BD5F5: LateIdCallSt
  loc_11BD600: var_98 = CVar(CLng(2)) 'Long
  loc_11BD605: var_BC = 0
  loc_11BD611: LateIdCallSt
  loc_11BD619: var_98 = 0
  loc_11BD625: var_BC = CVar(CLng(3)) 'Long
  loc_11BD62A: var_DC = "Bill Date"
  loc_11BD633: LateIdCallSt
  loc_11BD63E: var_98 = CVar(CLng(3)) 'Long
  loc_11BD649: var_BC = CVar(CInt(1)) 'Integer
  loc_11BD650: LateIdCallSt
  loc_11BD65B: var_98 = CVar(CLng(3)) 'Long
  loc_11BD666: var_BC = CVar(CInt(1)) 'Integer
  loc_11BD66D: LateIdCallSt
  loc_11BD678: var_98 = CVar(CLng(3)) 'Long
  loc_11BD67D: var_BC = &H640
  loc_11BD689: LateIdCallSt
  loc_11BD691: var_98 = 0
  loc_11BD69D: var_BC = CVar(CLng(4)) 'Long
  loc_11BD6A2: var_DC = "Bill Amount"
  loc_11BD6AB: LateIdCallSt
  loc_11BD6B6: var_98 = CVar(CLng(4)) 'Long
  loc_11BD6C1: var_BC = CVar(CInt(7)) 'Integer
  loc_11BD6C8: LateIdCallSt
  loc_11BD6D3: var_98 = CVar(CLng(4)) 'Long
  loc_11BD6DE: var_BC = CVar(CInt(7)) 'Integer
  loc_11BD6E5: LateIdCallSt
  loc_11BD6F0: var_98 = CVar(CLng(4)) 'Long
  loc_11BD6F5: var_BC = &H640
  loc_11BD701: LateIdCallSt
  loc_11BD709: var_98 = 0
  loc_11BD715: var_BC = CVar(CLng(5)) 'Long
  loc_11BD71A: var_DC = "PayType"
  loc_11BD723: LateIdCallSt
  loc_11BD72E: var_98 = CVar(CLng(5)) 'Long
  loc_11BD739: var_BC = CVar(CInt(1)) 'Integer
  loc_11BD740: LateIdCallSt
  loc_11BD74B: var_98 = CVar(CLng(5)) 'Long
  loc_11BD756: var_BC = CVar(CInt(1)) 'Integer
  loc_11BD75D: LateIdCallSt
  loc_11BD768: var_98 = CVar(CLng(5)) 'Long
  loc_11BD76D: var_BC = &H44C
  loc_11BD779: LateIdCallSt
  loc_11BD781: var_98 = vbNullString
  loc_11BD78B: Set var_AC = Me.GridSel
  loc_11BD7AF: Me.GridSel.FixedRows = 1
  loc_11BD7B9: Set var_88 = Nothing 
  loc_11BD7CD: ReDim Preserve global_60(0 To 0)
  loc_11BD7E4: global_60(0) = 0
  loc_11BD7F8: Me.GridSel.Height = CVar(CDbl(6000))
  loc_11BD813: Me.GridSel.Width = CVar(CDbl(6500))
  loc_11BD81B: var_98 = 0
  loc_11BD84C: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_11BD88C: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_11BD8BD: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_11BD8EE: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_11BD90D: Me.Check1.Value = CInt(0)
  loc_11BD915: Exit Sub
  loc_11BD916: var_301 = 0
End Sub

Public Sub Proc_179_24_131B190
  'Data Table: 499474
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim unk_499487 As Connection15
  Dim var_1F4 As Recordset15
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_A8 As Variant
  Dim var_110 As Variant
  Dim var_1F0 As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim var_14C As String
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  Dim var_1E0 As Variant
  Dim var_24C As Variant
  loc_131AA90: Proc_6_7_F26918(var_A8, MemVar_1F950F4, "Select max(Vno) From Sale1 Where VDate>=", var_1F0, -1)
  loc_131AA98: var_C8 = var_1F4 & var_A8 
  loc_131AAB0: Set var_EC = Me.Txt
  loc_131AAB6: Call 0.Method_Proc_179_24_131B1900 (CInt(0), var_F0, var_C8 & " And vdate<", var_1F8)
  loc_131AAC5: Proc_6_7_F26918(var_110, CVar(var_F0), 0)
  loc_131AACD: var_120 = var_20C & var_110 
  loc_131AAD6: var_140 = var_120 & " And RestCode='" 
  loc_131AAE8: Set var_144 = Me.Txt
  loc_131AAEE: Call 0.Method_Proc_179_24_131B1900 (CInt(2), var_148, var_14C)
  loc_131AAF6: var_140 = var_148.Tag
  loc_131AB2B: unk_499487.Execute CStr(var_21C & CVar(var_14C) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "'"), , 
  loc_131AB33:  = var_1F4.Fields
  loc_131AB3B:  = var_1F8.Item()
  loc_131AB43:  = var_20C.Value
  loc_131AB4E: Proc_6_39_E7D3A0(var_22C)
  loc_131AB9E: var_98 = "Select Distinct S.DocId,S.Vno From (Sale1 S Left Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') Not In('PPOS','IPOS') And S.VDate Between "
  loc_131ABAE: Set var_EC = Me.Txt
  loc_131ABB4: Call 0.Method_Proc_179_24_131B1900 (CInt(0), var_F0, var_98, var_21C)
  loc_131ABC3: Proc_6_7_F26918(var_C8, CVar(var_F0), -1)
  loc_131ABD4: var_100 = var_20C & var_C8 & " And " 
  loc_131ABE3: Set var_144 = Me.Txt
  loc_131ABE9: Call 0.Method_Proc_179_24_131B1900 (CInt(1), var_148, var_100)
  loc_131ABF8: Proc_6_7_F26918(var_120, CVar(var_148))
  loc_131AC09: var_15C = CLng(var_22C) & var_120 & " And S.RestCode='" 
  loc_131AC1B: Set var_1F4 = Me.Txt
  loc_131AC21: Call 0.Method_Proc_179_24_131B1900 (CInt(2), var_1F8, var_14C)
  loc_131AC29: var_15C = var_1F8.Tag
  loc_131AC31: var_16C = CVar(var_14C) 'String
  loc_131AC5E: unk_499487.Execute CStr(var_21C & var_16C & "' And S.Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by S.Vno"), , 
  loc_131AC6F: Set global_76 = var_20C
  loc_131ACBB: If (Me.RecordCount = 0) Then
  loc_131ACD1:   Me.GridSel.Rows = 2
  loc_131ACD9:   Exit Sub
  loc_131ACDA: End If
  loc_131ACED: Me.GridSel.Row = 1
  loc_131ACFD: Set var_EC = Me.CmdDelete
  loc_131AD03: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(True)
  loc_131AD0B: ' Referenced from: 131B16F
  loc_131AD1D: If Not(Me.EOF) Then
  loc_131AD76:   unk_499487.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_100, -1
  loc_131AD81:   Set var_88 = var_144
  loc_131ADAF:   If (var_88.RecordCount = 1) Then
  loc_131ADB6:     Set var_23C = Me.GridSel
  loc_131ADB9:     var_98 = vbNullString
  loc_131ADDD:     var_98 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_131ADE5:     var_D8 = CVar(CLng(0)) 'Long
  loc_131ADF3:     LateIdCallSt
  loc_131AE14:     var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_131AE1C:     var_130 = CVar(CLng(1)) 'Long
  loc_131AE4C:     var_E8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_131AE53:     LateIdCallSt
  loc_131AEB5:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_23C, var_E8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_131AEBC:     LateIdCallSt
  loc_131AF12:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_131AF1A:     var_17C = CVar(CLng(3)) 'Long
  loc_131AF37:     var_C8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), var_23C, "dd/mmm/yyyy", var_23C, vbNullString)) 'String
  loc_131AF4D:     LateIdCallSt
  loc_131AF94:     Proc_6_39_E7D3A0(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_23C, CVar(CStr(Format(var_C8, "dd/mmm/yyyy"))), 1, 1)
  loc_131AFAC:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_131AFE4:     LateIdCallSt
  loc_131B028:     Proc_6_39_E7D3A0(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_23C, CVar(CStr(Format(var_C8, "0.00"))), 1, 1, CVar(CLng(4)))
  loc_131B06A:     var_1E0 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_131B072:     var_24C = CVar(CLng(5)) 'Long
  loc_131B07D:     var_1BC = 0
  loc_131B09F:     var_D8 = " Then 'Cash' Else 'Non-Cash' End From Paycharge Where PayType='Cash' And DocId='"
  loc_131B0C2:     unk_499487.Execute CStr("Select Case When IsNull(Sum(AmtCr),0)=" & var_C8 & var_D8 & Me.Fields.Item(0).Value & "'"), var_15C, -1
  loc_131B0CA:     var_1F4 = var_1F4.Fields
  loc_131B0D2:     var_1BC = var_1F8.Item(var_1F8)
  loc_131B0DA:     var_20C = var_20C.Value
  loc_131B0E3:     var_1AC = CVar(CStr(var_16C)) 'String
  loc_131B0EA:     LateIdCallSt
  loc_131B121:     Set var_23C = Nothing 
  loc_131B12A:     Set var_88 = Nothing
  loc_131B146:     var_98 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_131B155:     Me.GridSel.Row = "BillAmount"
  loc_131B164:   End If
  loc_131B16A:   Me.MoveNext
  loc_131B16F:   GoTo loc_131AD0B
  loc_131B172: End If
  loc_131B185: Me.GridSel.FixedRows = 1
  loc_131B18D: Exit Sub
End Sub

Public Sub Proc_179_25_FC6A60(arg_C) 'FC6A60
  'Data Table: 499474
  Dim unk_499487 As Connection15
  loc_FC68D0: unk_499487.Execute "Update Kot Set ContraDocID='Deleted' Where ContraDocID='" & arg_C & "'", var_B0, -1
  loc_FC6906: unk_499487.Execute "Delete From Sale1 Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC693C: unk_499487.Execute "Delete From Sale2 Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC6972: unk_499487.Execute "Delete From SunTran Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC69A8: unk_499487.Execute "Delete From Stock Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC69DE: unk_499487.Execute "Delete From Paycharge Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC6A14: unk_499487.Execute "Delete From GuestReward Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC6A4A: unk_499487.Execute "Delete From AssignDelivery Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC6A5C: Exit Sub
End Sub

Public Sub Proc_179_26_13CB074
  'Data Table: 499474
  Dim unk_499487 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_130 As Variant
  loc_13CA72E: unk_499487.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_13CA739: Set var_88 = var_AC
  loc_13CA756: If (var_88.RecordCount = 0) Then
  loc_13CA759:   Exit Sub
  loc_13CA75A: End If
  loc_13CA76E: If (var_88.RecordCount > 0) Then
  loc_13CA774:   var_88.MoveFirst
  loc_13CA779:   ' Referenced from: 13CB070
  loc_13CA788:   If Not(var_88.EOF) Then
  loc_13CA7AF:     var_AC = var_88.Fields
  loc_13CA7FA:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale1 Set DocId='" & var_AC.Item("NewDocId").Value & "',Vno=", var_214)
  loc_13CA802:     var_140 = -1 & var_130 
  loc_13CA874:     var_1F4 = CStr(var_140 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value)
  loc_13CA87E:     unk_499487.Execute var_1F4, var_218, var_AC
  loc_13CA925:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale2 Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13CA99B:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13CA9A9:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13CAA50:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update SunTran Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13CAAC6:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13CAAD4:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13CAB7B:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Stock Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13CABF1:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13CABFF:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13CACA6:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13CAD1C:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13CAD2A:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13CADD1:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update GuestReward Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',BillNo=")
  loc_13CAE47:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And BillNo=" & var_88.Fields.Item("OldVno").Value 
  loc_13CAE55:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13CAEFC:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update AssignDelivery Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13CAF0D:     var_160 = var_214 & var_130 & " Where DocId='" 
  loc_13CAF80:     unk_499487.Execute CStr(var_160 & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value), -1, var_218
  loc_13CB02B:     var_130 = "Update Kot Set ContraDocId='" & var_88.Fields.Item("NewDocId").Value & "' Where ContraDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_13CB042:     unk_499487.Execute CStr(var_130 & "'"), var_160, -1
  loc_13CB06B:     var_88.MoveNext
  loc_13CB070:     GoTo loc_13CA779
  loc_13CB073:   End If
  loc_13CB073: End If
  loc_13CB073: Exit Sub
End Sub

Public Sub Proc_179_27_107C4C8
  'Data Table: 499474
  Dim unk_499487 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_234 As Variant
  loc_107C2A6: unk_499487.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_107C2B1: Set var_88 = var_B0
  loc_107C2CE: If (var_88.RecordCount = 0) Then
  loc_107C2DA:   global_84 = global_80
  loc_107C2DD:   Exit Sub
  loc_107C2DE: End If
  loc_107C2E3: var_8C = 1
  loc_107C2FA: If (var_88.RecordCount > 0) Then
  loc_107C300:   var_88.MoveFirst
  loc_107C305:   ' Referenced from: 107C4AD
  loc_107C314:   If Not(var_88.EOF) Then
  loc_107C358:     var_DC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107C36A:     var_11C = (8 - Len(Trim(var_DC)))
  loc_107C384:     var_14C = CVar(CStr((global_80 + var_8C))) 'String
  loc_107C39B:     var_1BC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107C40C:     var_13C = (Left(CVar(var_88.Fields.Item("OldDocid")), &HD) + Space(CLng(var_11C)))
  loc_107C413:     var_16C = (var_13C + Trim(var_14C))
  loc_107C437:     var_234 = "Update TempPosDel Set NewDocId='" & var_16C & "',NewVno=" & Trim(var_1BC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_107C455:     unk_499487.Execute CStr(var_234 & "' And OldVno=" & var_88.Fields.Item("OldVno").Value), var_2B0, -1
  loc_107C4A2:     var_8C = (var_8C + 1)
  loc_107C4A8:     var_88.MoveNext
  loc_107C4AD:     GoTo loc_107C305
  loc_107C4B0:   End If
  loc_107C4C3:   global_84 = ((global_80 + var_8C) - 1)
  loc_107C4C6: End If
  loc_107C4C6: Exit Sub
End Sub

Public Sub Proc_179_28_11A892C(arg_C, arg_10) '11A892C
  'Data Table: 499474
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_14C As Variant
  loc_11A850E: On Error Goto loc_11A8921
  loc_11A8513: var_96 = 0
  loc_11A851F: If (CInt(arg_10) = 1) Then
  loc_11A8547:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A8550:     var_9A = var_98
  loc_11A8557:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A855C:     var_E4 = 2
  loc_11A858B:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A8592:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8597:       var_E4 = 2
  loc_11A85BA:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A85BF:       var_128 = 1
  loc_11A85D2:       var_14C = Me.GridSel.TextMatrix)
  loc_11A85E9:       Call Proc_179_25_FC6A60(CStr(Me.GridSel.TextMatrix)))
  loc_11A8605:       var_96 = &HFF
  loc_11A862D:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A8646:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A8661:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A867C:         Me.GridSel.CellBackColor = &H80FF
  loc_11A8687:       Next var_154 'Integer
  loc_11A868C:     End If
  loc_11A868F:   Next var_B4 'Integer
  loc_11A8694:   Exit For
  loc_11A8697: End If
  loc_11A869F: CRefVarAry
  loc_11A86A7: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A86C8:   If (arg_C(var_98) = 0) Then
  loc_11A86CB:     GoTo loc_11A8859
  loc_11A86CE:   End If
  loc_11A86DF:   var_9A = CInt(arg_C(var_98))
  loc_11A86E9:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A86EE:   var_E4 = 0
  loc_11A871D:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A8724:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8729:     var_E4 = 2
  loc_11A8758:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A875F:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8764:       var_E4 = 2
  loc_11A8787:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A878C:       var_128 = 1
  loc_11A879F:       var_14C = Me.GridSel.TextMatrix)
  loc_11A87B6:       Call Proc_179_25_FC6A60(CStr(Me.GridSel.TextMatrix)))
  loc_11A87D2:       var_96 = &HFF
  loc_11A87FA:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A8813:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A882E:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A8849:         Me.GridSel.CellBackColor = &H80FF
  loc_11A8854:       Next var_15C 'Integer
  loc_11A8859:       ' Referenced from: 11A86CB
  loc_11A8859:     End If
  loc_11A8859:   End If
  loc_11A885C: Next var_158 'Integer
  loc_11A8861: ' Referenced from: 11A8694
  loc_11A8871: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A8874:   var_C4 = 0
  loc_11A887D:   var_E4 = 1
  loc_11A8890:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A88B8:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A88E3:   Me.GridSel.Row = 1
  loc_11A88EB:   var_C4 = 0
  loc_11A88FE:   Me.GridSel.Col = var_C4
  loc_11A890A:   Set var_A0 = Me.GridSel
  loc_11A891B: End If
  loc_11A891B: Proc_179_28_11A892C = GridSel.DispID_8001
  loc_11A8921: ' Referenced from: 11A850E
  loc_11A8921: Proc_6_60_E63754(var_B0, var_E4)
  loc_11A8926: Proc_179_28_11A892C = var_C4
End Sub

Public Sub Proc_179_29_EBDF38
  'Data Table: 499474
  loc_EBDEB0: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EBDEC2:   Me.DGRestType.Visible = False
  loc_EBDECA: End If
  loc_EBDEE6: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EBDEF8:   Me.DGPayType.Visible = False
  loc_EBDF00: End If
  loc_EBDF1C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBDF2E:   Me.FGPoint.Visible = False
  loc_EBDF36: End If
  loc_EBDF36: Exit Sub
End Sub

Public Sub Proc_179_30_112D098
  'Data Table: 499474
  Dim var_88 As String
  Dim var_8C As String
  Dim var_90 As String
  Dim var_9C As String
  Dim var_A8 As String
  Dim unk_499487 As Connection15
  Dim var_104 As Variant
  Dim var_E0 As Variant
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_114 As Variant
  Dim var_F4 As Variant
  Dim var_134 As Variant
  Dim var_174 As Variant
  loc_112CD74: var_8C = "Update TempPosDel Set NewDocId=SubString(OldDocid,1,13)+Space(8 - Len(Cast(" & CStr(global_80)
  loc_112CD7B: var_90 = var_8C & " + AutoId As Varchar)))+Cast("
  loc_112CD91: var_9C = var_90 & CStr(global_80) & " + AutoId As Varchar),NewVno="
  loc_112CDA7: var_A8 = var_9C & CStr(global_80) & " + AutoId from TempPosDel"
  loc_112CDB0: unk_499487.Execute var_A8, var_C8, -1
  loc_112CDD6: var_104 = CVar(global_80) 'Long
  loc_112CDE0: var_E0 = 0
  loc_112CDFF: unk_499487.Execute "Select IsNull(Max(AutoId),0) from TempPosDel", var_C8, -1
  loc_112CE07: var_CC = var_CC.Fields
  loc_112CE0F: var_E0 = var_D0.Item(var_D0)
  loc_112CE17: var_E4 = var_E4.Value
  loc_112CE1F: var_114 = (var_F4 + var_F4)
  loc_112CE62: var_F4 = "Update Sale1 Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId and Vprefix=Year('" & Year(MemVar_1F950F4) 
  loc_112CE79: unk_499487.Execute CStr(var_F4 & "')"), var_134, -1
  loc_112CEAC: var_C8 = Year(MemVar_1F950F4)
  loc_112CEBD: var_114 = "Update Sale2 Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & var_C8 & "')" 
  loc_112CECB: unk_499487.Execute CStr(var_114), var_134, -1
  loc_112CEF7: unk_499487.Execute "Update SunTran Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId ", var_C8, -1
  loc_112CF27: var_F4 = "Update Stock Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & Year(MemVar_1F950F4) 
  loc_112CF3E: unk_499487.Execute CStr(var_F4 & "')"), var_134, -1
  loc_112CF79: var_F4 = "Update PayCharge Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & Year(MemVar_1F950F4) 
  loc_112CF90: unk_499487.Execute CStr(var_F4 & "')"), var_134, -1
  loc_112CFC3: var_C8 = Year(MemVar_1F950F4)
  loc_112CFD8: var_88 = CStr("Update Kot Set ContraDocId=T.NewDocId From TempPosDel T Where ContraDocId=T.OldDocId and Vprefix=Year('" & var_C8 & "')")
  loc_112CFE2: unk_499487.Execute var_88, var_134, -1
  loc_112D010: var_88 = CStr(CLng("Update Kot Set ContraDocId=T.NewDocId From TempPosDel T Where ContraDocId=T.OldDocId and Vprefix=Year('" & var_C8 & "')"))
  loc_112D029: Proc_6_7_F26918(var_C8, MemVar_1F950EC, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & var_88 & " WHERE "), var_1B4, -1, var_CC, var_CC, var_CC)
  loc_112D05A: var_174 = var_CC & var_C8 & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F95078) 
  loc_112D071: unk_499487.Execute CStr(var_174 & "'"), var_CC, var_CC
  loc_112D097: Exit Sub
End Sub
