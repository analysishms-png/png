VERSION 5.00
Begin VB.Form RsStatusScreen
  Caption = "POS Status Screen"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin TreeView TreeView1
    Left = 30
    Top = 600
    Width = 2745
    Height = 7575
    TabIndex = 35
  End
  Begin DTPicker DTP
    Left = 30
    Top = 90
    Width = 2265
    Height = 315
    TabIndex = 13
  End
  Begin SSTab SSTabStatusScreen
    Left = 2805
    Top = 600
    Width = 12570
    Height = 8205
    TabIndex = 11
    Begin Frame FrOrders
      Left = -74850
      Top = 6315
      Width = 12285
      Height = 1695
      TabIndex = 36
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin CheckBox ChkOrders
        Caption = "Total No. Of (KOT/Order)'s"
        Index = 0
        Left = 3480
        Top = 195
        Width = 3465
        Height = 195
        TabIndex = 46
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
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Cancelled (KOT/Order)'s"
        Index = 4
        Left = 3480
        Top = 1380
        Width = 3465
        Height = 195
        TabIndex = 45
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
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Running (KOT/Order)'s"
        Index = 3
        Left = 3480
        Top = 1083
        Width = 3465
        Height = 195
        TabIndex = 44
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
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Billed (KOT/Order)'s"
        Index = 2
        Left = 3480
        Top = 787
        Width = 3465
        Height = 195
        TabIndex = 43
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
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Deleted (KOT/Order)'s"
        Index = 1
        Left = 3480
        Top = 491
        Width = 3465
        Height = 195
        TabIndex = 42
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
      Begin TextBox TxtOrders
        Index = 4
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 1350
        Width = 1515
        Height = 285
        TabIndex = 41
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtOrders
        Index = 3
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 1050
        Width = 1515
        Height = 285
        TabIndex = 40
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtOrders
        Index = 2
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 750
        Width = 1515
        Height = 285
        TabIndex = 39
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtOrders
        Index = 1
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 38
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtOrders
        Index = 0
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 150
        Width = 1515
        Height = 285
        TabIndex = 37
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
    Begin Frame Frame1
      Caption = "Over All Sale"
      Left = 150
      Top = 6435
      Width = 12285
      Height = 1695
      TabIndex = 14
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin TextBox TxtPOSSale
        Index = 7
        BackColor = &HC0C0FF&
        Left = 4800
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 50
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 5
        BackColor = &HC0C0FF&
        Left = 330
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 24
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 6
        BackColor = &HC0C0FF&
        Left = 2565
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 23
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 8
        BackColor = &HC0C0FF&
        Left = 7035
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 22
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 9
        BackColor = &HC0C0FF&
        Left = 9270
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 21
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 0
        BackColor = &HC0C0FF&
        Left = 330
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 20
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 1
        BackColor = &HC0C0FF&
        Left = 2565
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 19
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 2
        BackColor = &HC0C0FF&
        Left = 4800
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 18
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 3
        BackColor = &HC0C0FF&
        Left = 7035
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 17
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin TextBox TxtPOSSale
        Index = 4
        BackColor = &HC0C0FF&
        Left = 9270
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 16
        Alignment = 1 'Right Justify
        Locked = -1  'True
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
      Begin Label LblPOSSale
        Caption = "Sub Total"
        Index = 9
        BackColor = &HFFFFFF&
        Left = 4800
        Top = 1005
        Width = 795
        Height = 195
        TabIndex = 51
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Sub Total (With Service Charge)"
        Index = 8
        BackColor = &HFFFFFF&
        Left = 9270
        Top = 1005
        Width = 2700
        Height = 195
        TabIndex = 32
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Sub Total (With Tax)"
        Index = 7
        BackColor = &HFFFFFF&
        Left = 7035
        Top = 1005
        Width = 1740
        Height = 195
        TabIndex = 31
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Service Tax"
        Index = 6
        BackColor = &HFFFFFF&
        Left = 2565
        Top = 1005
        Width = 1440
        Height = 195
        TabIndex = 30
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Service Charge"
        Index = 5
        BackColor = &HFFFFFF&
        Left = 330
        Top = 1005
        Width = 1275
        Height = 195
        TabIndex = 29
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Grand Total (With Running KOT's)"
        Index = 4
        BackColor = &HFFFFFF&
        Left = 9270
        Top = 225
        Width = 2835
        Height = 195
        TabIndex = 28
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Amt. Of Running KOT's"
        Index = 3
        BackColor = &HFFFFFF&
        Left = 7035
        Top = 225
        Width = 1875
        Height = 195
        TabIndex = 27
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Grand Total"
        Index = 2
        BackColor = &HFFFFFF&
        Left = 4800
        Top = 225
        Width = 990
        Height = 195
        TabIndex = 26
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Discount"
        Index = 1
        BackColor = &HFFFFFF&
        Left = 2565
        Top = 225
        Width = 735
        Height = 195
        TabIndex = 25
        BackStyle = 0 'Transparent
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
      Begin Label LblPOSSale
        Caption = "Tax"
        Index = 0
        BackColor = &HFFFFFF&
        Left = 330
        Top = 225
        Width = 315
        Height = 195
        TabIndex = 15
        BackStyle = 0 'Transparent
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
    Begin DataGrid DGOrders
      Left = -74895
      Top = 330
      Width = 12360
      Height = 5850
      TabStop = 0   'False
      TabIndex = 34
    End
    Begin DataGrid DGPenBills
      Left = -74880
      Top = 345
      Width = 12360
      Height = 7650
      TabStop = 0   'False
      TabIndex = 47
    End
    Begin DataGrid DGPOSSale
      Left = 105
      Top = 330
      Width = 12345
      Height = 5970
      TabStop = 0   'False
      TabIndex = 33
    End
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 420
    Top = 6720
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdSave
    Caption = "Save"
    Left = 15120
    Top = 0
    Width = 1920
    Height = 630
    Visible = 0   'False
    TabIndex = 9
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 12030
    Top = 195
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
    BackColor = &HFFFFFF&
    Left = 12030
    Top = -75
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 375
    Top = 6120
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 3015
    Top = 5460
    Width = 1845
    Height = 1755
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
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1860
      Height = 1725
      TabStop = 0   'False
      TabIndex = 1
    End
  End
  Begin DataGrid DGVType
    Left = 6270
    Top = 5235
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 14670
    Top = 7845
    Width = 5085
    Height = 2655
    Visible = 0   'False
    TabIndex = 12
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 4680
    Height = 450
    Visible = 0   'False
    TabIndex = 48
  End
  Begin BtnEnh CmdExit
    Left = 600
    Top = 8220
    Width = 1560
    Height = 555
    TabIndex = 49
  End
  Begin Label LblName
    Caption = "Entry Date"
    Index = 1
    ForeColor = &H0&
    Left = 10845
    Top = 210
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblFacility
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 2325
    Top = -30
    Width = 7605
    Height = 510
    TabIndex = 7
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "For Month"
    Index = 0
    ForeColor = &H0&
    Left = 10845
    Top = -75
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "RsStatusScreen"

Private global_92 As Integer
Private global_94 As Integer
Private MasterFormExit As Integer

Private Sub FGrid_UnknownEvent_0 'E87960
  'Data Table: 5016DC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E87903: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E87916: Set var_A8 = Me.TxtGrid
  loc_E8791C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E87924: var_AC.Visible = False
  loc_E8793E: Set var_A8 = Me.TxtGrid
  loc_E87944: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8794C: var_AC.MaxLength = 0
  loc_E87958: Call Proc_227_67_DFDF1C()
  loc_E8795D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67210
  'Data Table: 5016DC
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E671CC: Set var_88 = Me.TxtGrid
  loc_E671D2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E671EC: If (var_8C.Visible = 0) Then
  loc_E67205:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E6720D: End If
  loc_E6720D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E190
  'Data Table: 5016DC
  loc_E1E187: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E18F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFD04
  'Data Table: 5016DC
  loc_DFFCFC: Call Proc_227_63_E44280()
  loc_DFFD01: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '109BA14
  'Data Table: 5016DC
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_109B760: Set var_88 = Me.TopCtrl1
  loc_109B766: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_109B7AB: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_109B7B4:   Call Form_KeyDown(arg_C, arg_10)
  loc_109B7B9: End If
  loc_109B7BD: Set var_88 = Me.TopCtrl1
  loc_109B7C3: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_109B7DC: If (CStr() = "Browse") Then
  loc_109B7DF:   Exit Sub
  loc_109B7E0: End If
  loc_109B854: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_109B86A:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109B87A:   var_9C = "+{Tab}"
  loc_109B880:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_109B88A:   arg_C = 0
  loc_109B890: Else
  loc_109B89A:   var_B0 = Me.FGrid.Rows
  loc_109B8E7:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_109B8FD:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109B913:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_109B91D:     arg_C = 0
  loc_109B920:   End If
  loc_109B920: End If
  loc_109B926: global_92 = arg_C
  loc_109B94C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_109B970: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_109B986:   var_EC = CLng(Me.FGrid.Col)
  loc_109B996:   If Not (var_EC = CLng(4)) Then
  loc_109B9A0:     If (var_EC = CLng(5)) Then
  loc_109B9A3:     End If
  loc_109B9B6:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109B9CE:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109B9D3:     var_11C = vbNullString
  loc_109B9DD:     Set var_B4 = Me.FGrid
  loc_109B9E3:     LateIdCallSt
  loc_109B9FB:   End If
  loc_109B9FB: End If
  loc_109BA01: If (arg_C = &HD) Then
  loc_109BA09:   global_94 = 0
  loc_109BA0C: End If
  loc_109BA0E: arg_C = 0
  loc_109BA11: Exit Sub
  loc_109BA12: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_B 'E15A18
  'Data Table: 5016DC
  loc_E15A09: Call FGrid_UnknownEvent_C()
  loc_E15A13: global_94 = 0
  loc_E15A16: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '11F3E30
  'Data Table: 5016DC
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As String
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_11F39B4: Set var_88 = Me.TopCtrl1
  loc_11F39BA: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CLng(Me.FGrid.Col))
  loc_11F39D3: If (CStr() = "Browse") Then
  loc_11F39D6:   Exit Sub
  loc_11F39D7: End If
  loc_11F39EA: var_A4 = CLng(Me.FGrid.Col)
  loc_11F39FA: If (var_A4 = CLng(3)) Then
  loc_11F3A01:   Set var_C8 = Me.FGrid
  loc_11F3A25:   var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_11F3A52:   Set var_B8 = var_C8
  loc_11F3A64:   Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F3A8C:   Set var_88 = Me.TxtGrid
  loc_11F3A92:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F3A9A:   0 = var_B8.Text
  loc_11F3AB3:   If (Len(var_A0) <= 1) Then
  loc_11F3AC2:     Set var_88 = Me.TxtGrid
  loc_11F3AC8:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F3AD0:     var_CE = var_B8.Text
  loc_11F3AE1:     Set var_BC = Me.TxtGrid
  loc_11F3AE7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3AEF:     var_C8.Text = var_A0
  loc_11F3B02:   End If
  loc_11F3B0E:   Set var_88 = Me.TxtGrid
  loc_11F3B14:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F3B2E:   Set var_BC = Me.TxtGrid
  loc_11F3B34:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3B3C:   var_C8.SelStart = Len(var_B8.Text)
  loc_11F3B52: Else
  loc_11F3B59:   If (var_A4 = CLng(2)) Then
  loc_11F3B60:     Set var_C8 = Me.FGrid
  loc_11F3B84:     var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_11F3BB1:     Set var_B8 = var_C8
  loc_11F3BC3:     Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F3BEB:     Set var_88 = Me.TxtGrid
  loc_11F3BF1:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F3BF9:     0 = var_B8.Text
  loc_11F3C12:     If (Len(var_A0) <= 1) Then
  loc_11F3C21:       Set var_88 = Me.TxtGrid
  loc_11F3C27:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F3C2F:       var_CE = var_B8.Text
  loc_11F3C40:       Set var_BC = Me.TxtGrid
  loc_11F3C46:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3C4E:       var_C8.Text = var_A0
  loc_11F3C61:     End If
  loc_11F3C6D:     Set var_88 = Me.TxtGrid
  loc_11F3C73:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F3C8D:     Set var_BC = Me.TxtGrid
  loc_11F3C93:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3C9B:     var_C8.SelStart = Len(var_B8.Text)
  loc_11F3CB1:   Else
  loc_11F3CB8:     If Not (var_A4 = CLng(4)) Then
  loc_11F3CC2:       If (var_A4 = CLng(5)) Then
  loc_11F3CC5:       End If
  loc_11F3CC9:       Set var_C8 = Me.FGrid
  loc_11F3CED:       var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_11F3D1A:       Set var_B8 = var_C8
  loc_11F3D2C:       Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, &HFF)
  loc_11F3D54:       Set var_88 = Me.TxtGrid
  loc_11F3D5A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F3D62:       0 = var_B8.Text
  loc_11F3D7B:       If (Len(var_A0) <= 1) Then
  loc_11F3D8A:         Set var_88 = Me.TxtGrid
  loc_11F3D90:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F3D98:         var_CE = var_B8.Text
  loc_11F3DA9:         Set var_BC = Me.TxtGrid
  loc_11F3DAF:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3DB7:         var_C8.Text = var_A0
  loc_11F3DCA:       End If
  loc_11F3DD6:       Set var_88 = Me.TxtGrid
  loc_11F3DDC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F3DF6:       Set var_BC = Me.TxtGrid
  loc_11F3DFC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3E04:       var_C8.SelStart = Len(var_B8.Text)
  loc_11F3E17:     End If
  loc_11F3E17:   End If
  loc_11F3E17: End If
  loc_11F3E21: If (CLng(Index) <> &HD) Then
  loc_11F3E29:   global_94 = &HFF
  loc_11F3E2C: End If
  loc_11F3E2C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E500
  'Data Table: 5016DC
  loc_E1E4F7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1E4FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E2D0
  'Data Table: 5016DC
  loc_E1E2C7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E2CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E7D578
  'Data Table: 5016DC
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  loc_E7D518: Call Proc_227_67_DFDF1C()
  loc_E7D530: var_9C = CLng(Me.FGrid.Col)
  loc_E7D540: If Not (var_9C = CLng(3)) Then
  loc_E7D54A:   If (var_9C = CLng(2)) Then
  loc_E7D54D:   End If
  loc_E7D550: Else
  loc_E7D55B:   Set var_88 = Me.TxtGrid
  loc_E7D561:   Call 0.Method_FGrid_UnknownEvent_150 (0, var_A0)
  loc_E7D569:   var_A0.Visible = False
  loc_E7D575: End If
  loc_E7D575: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'DFC2AC
  'Data Table: 5016DC
  loc_DFC2A8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E800AC
  'Data Table: 5016DC
  Dim var_94 As TextBox
  loc_E80048: On Error Goto loc_E800A4
  loc_E8006E: Call Proc_227_66_E9C828(Proc_5_1_100EC1C("ADD", Me))
  loc_E80079: Call Proc_227_65_F16670(global_100)
  loc_E80089: Set var_8C = Me.Txt
  loc_E8008F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E80097: var_94.SetFocus
  loc_E800A3: Exit Sub
  loc_E800A4: ' Referenced from: E80048
  loc_E800A4: Proc_6_60_E63754(var_94)
  loc_E800A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E98ED8
  'Data Table: 5016DC
  loc_E98E64: On Error Goto loc_E98ED0
  loc_E98E9E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E98EC4:   Call Proc_227_66_E9C828(Proc_5_1_100EC1C("INI", Me))
  loc_E98ECF: End If
  loc_E98ECF: Exit Sub
  loc_E98ED0: ' Referenced from: E98E64
  loc_E98ED0: Proc_6_60_E63754(global_100)
  loc_E98ED5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17B4C
  'Data Table: 5016DC
  loc_E17B41: Me.Global.Unload Me
  loc_E17B49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC88FC
  'Data Table: 5016DC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC885C: On Error Goto loc_EC88F4
  loc_EC8876: If (Me.RecordCount <= 0) Then
  loc_EC887F:   var_B8 = "Information"
  loc_EC889A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC88AA:   Exit Sub
  loc_EC88AB: End If
  loc_EC88B2: var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC88B9: MemVar_1F950E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EC88C6: MemVar_1F95120 = Me
  loc_EC88D3: Proc_6_126_F1C850("4500,1500")
  loc_EC88EE: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC88F3: Exit Sub
  loc_EC88F4: ' Referenced from: EC885C
  loc_EC88F4: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC88F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E28538
  'Data Table: 5016DC
  loc_E2852C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E28534: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E284DC
  'Data Table: 5016DC
  loc_E284D0: Proc_5_0_1107AD0(&HFF, Me)
  loc_E284D8: Exit Sub
  loc_E284D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E28480
  'Data Table: 5016DC
  loc_E28474: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2847C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E27EC0
  'Data Table: 5016DC
  loc_E27EB4: Proc_5_0_1107AD0(&HFF, Me)
  loc_E27EBC: Exit Sub
  loc_E27EBD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22B08
  'Data Table: 5016DC
  Dim Me As Recordset15
  loc_E22AEF: Me.Requery -1
  loc_E22AFF: Me.Requery -1
  loc_E22B04: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12D0520
  'Data Table: 5016DC
  Dim unk_5016E2 As Connection15
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_130 As Variant
  Dim var_C4 As Variant
  Dim var_180 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_98 As String
  Dim var_1C0 As Variant
  Dim var_10C As Label
  Dim var_2A4 As Variant
  Dim var_5B4 As Double
  Dim var_5BC As Double
  Dim var_274 As Variant
  Dim var_48C As Variant
  loc_12CFF64: var_86 = CByte(0) 'Byte
  loc_12CFF73: Set var_8C = Me.Txt
  loc_12CFF79: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12CFFA2: If (Proc_6_27_EA61EC(var_90, "For Month") = 0) Then
  loc_12CFFAC:   Call Txt_GotFocus()
  loc_12CFFB1:   Exit Sub
  loc_12CFFB2: End If
  loc_12CFFBD: Set var_8C = Me.Txt
  loc_12CFFC3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_12CFFD4: Set var_94 = var_90
  loc_12CFFEC: If (Proc_6_27_EA61EC(var_94, "Bill Date") = 0) Then
  loc_12CFFF6:   Call Txt_GotFocus()
  loc_12CFFFB:   Exit Sub
  loc_12CFFFC: End If
  loc_12CFFFF: Call Proc_227_62_E0035C(var_9A, CInt(1))
  loc_12D000A: If (var_9A = &HFF) Then
  loc_12D000D:   Exit Sub
  loc_12D000E: End If
  loc_12D0017: unk_5016E2.BeginTrans var_A0
  loc_12D0020: var_86 = CByte(1) 'Byte
  loc_12D0065: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, CVar("Delete From MemFacilityBilling Where FcCode='" & Me.LblFacility.Tag & "' And EntryDate="), var_108)
  loc_12D0074: Proc_6_7_F26918(var_C4, CVar(var_94), -1)
  loc_12D008A: unk_5016E2.Execute CStr(var_10C & var_C4), CInt(0), Me.Txt
  loc_12D00D3: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_12D00DD:   var_F8 = CVar(CLng(var_88)) 'Long
  loc_12D00E5:   var_130 = CVar(CLng(1)) 'Long
  loc_12D0105:   var_D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_12D017E:   If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))) <> CDbl(0))) Then
  loc_12D018D:     var_130 = CVar(CLng(1)) 'Long
  loc_12D019C:     var_B4 = Me.FGrid.TextMatrix)
  loc_12D01B3:     Set var_90 = Me.Txt
  loc_12D01B9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_130, CVar(CLng(var_88)))
  loc_12D01C1:     var_C4 = CVar(var_94) 'Address
  loc_12D01C8:     Proc_6_7_F26918(var_D4, var_C4, CVar(CLng(var_88)), (var_D4 <> vbNullString))
  loc_12D01EA:     Set var_1E8 = Me.Txt
  loc_12D01F0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_130)
  loc_12D0208:     var_180 = CVar(CLng(var_88)) 'Long
  loc_12D0210:     var_1C0 = CVar(CLng(4)) 'Long
  loc_12D0239:     var_2A4 = CVar(CLng(var_88)) 'Long
  loc_12D0263:     var_5B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12D0294:     var_5BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12D029B:     Set var_3C8 = Me.TopCtrl1
  loc_12D02A1:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5BC)
  loc_12D02E6:     Proc_6_7_F26918(var_4CC, Date, CVar(CLng(6)), CVar(CLng(var_88)), var_5B4, CVar(CLng(5)))
  loc_12D02FF:     var_98 = "Insert Into MemFacilityBilling (MemCode,EntryDate,FcCode,MthYear,Occurence,Rate,Amount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_12D0311:     var_E4 = CVar(var_98 & CStr(var_B4) & "',") 'String
  loc_12D034E:     var_274 = var_E4 & var_D4 & ",'" & CVar(Me.LblFacility.Tag) & "','" & Trim(CVar(var_1EC)) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_12D0399:     var_48C = var_274 & "," & CVar(var_5B4) & "," & CVar(var_5BC) & ",'" & IIf((CStr(var_3D8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F950C8) 
  loc_12D03E6:     unk_5016E2.Execute CStr(var_48C & "'," & var_4CC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_5A0, -1
  loc_12D0466:   End If
  loc_12D0469: Next var_110 'Integer
  loc_12D0474: unk_5016E2.CommitTrans
  loc_12D048E: var_98 = Me.LblFacility.Caption
  loc_12D04B2: MsgBox(CVar("Details Of " & var_98 & " Facility Saved."), &H40, var_C4, var_D4, var_E4)
  loc_12D04CC: Exit Sub
  loc_12D04D6: If (CInt(CByte(0)) = 1) Then
  loc_12D04DF:   unk_5016E2.RollbackTrans
  loc_12D04E4: End If
  loc_12D04EC: Set var_8C = Err()
  loc_12D04F2: Call 0.Method_arg_2C (var_98)
  loc_12D050B: MsgBox(CVar(var_98), &H10, var_C4, var_D4, var_E4)
  loc_12D051E: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E172B0
  'Data Table: 5016DC
  loc_E172A5: Me.Global.Unload Me
  loc_E172AD: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FF2A2C
  'Data Table: 5016DC
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FF284C: Call Proc_227_67_DFDF1C()
  loc_FF2864: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FF287F: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF2888: Set var_BC = Me.FGrid
  loc_FF28BE: Set var_104 = Me.TxtGrid
  loc_FF28C4: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FF28CC: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_FF28FD: var_110 = CLng(Me.FGrid.Col)
  loc_FF290D: If (var_110 = CLng(3)) Then
  loc_FF291D:   Set var_A8 = Me.TxtGrid
  loc_FF2923:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, vbNullString)
  loc_FF292B:   var_BC.Text = var_110
  loc_FF2946:   Set var_A8 = Me.TxtGrid
  loc_FF294C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF2954:   var_BC.MaxLength = &HA
  loc_FF2963: Else
  loc_FF296A:   If (var_110 = CLng(2)) Then
  loc_FF297A:     Set var_A8 = Me.TxtGrid
  loc_FF2980:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF2988:     var_BC.Text = vbNullString
  loc_FF29A3:     Set var_A8 = Me.TxtGrid
  loc_FF29A9:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF29B1:     var_BC.MaxLength = &H32
  loc_FF29C0:   Else
  loc_FF29C7:     If (var_110 = CLng(4)) Then
  loc_FF29D9:       Set var_A8 = Me.TxtGrid
  loc_FF29DF:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF29E7:       var_BC.MaxLength = 4
  loc_FF29F6:     Else
  loc_FF29FD:       If (var_110 = CLng(5)) Then
  loc_FF2A0F:         Set var_A8 = Me.TxtGrid
  loc_FF2A15:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF2A1D:         var_BC.MaxLength = &HB
  loc_FF2A29:       End If
  loc_FF2A29:     End If
  loc_FF2A29:   End If
  loc_FF2A29: End If
  loc_FF2A29: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1105058
  'Data Table: 5016DC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_1104D18: On Error Goto loc_110504F
  loc_1104D25: If (CLng(Shift) = &H1B) Then
  loc_1104D35:   Set var_88 = Me.TxtGrid
  loc_1104D3B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1104D55:   Set var_94 = Me.TxtGrid
  loc_1104D5B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1104D63:   var_98.Text = var_8C.Tag
  loc_1104D7F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1104D84:   Call Proc_227_67_DFDF1C(arg_14)
  loc_1104D8D:   Set var_88 = Me.FGrid
  loc_1104DAA:   Set var_88 = Me.TxtGrid
  loc_1104DB0:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1104DB8:   var_8C.Visible = False
  loc_1104DC4:   Exit Sub
  loc_1104DC5: End If
  loc_1104DD8: var_AC = CLng(Me.FGrid.Col)
  loc_1104DE8: If (var_AC = CLng(3)) Then
  loc_1104DF5:   If (CLng(Shift) = &HD) Then
  loc_1104DFE:     Call Proc_227_64_11A3910(KeyCode, var_AE)
  loc_1104E09:     If (var_AE = &HFF) Then
  loc_1104E4F:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1104E5F:     End If
  loc_1104E5F:   End If
  loc_1104E62: Else
  loc_1104E69:   If (var_AC = CLng(2)) Then
  loc_1104E76:     If (CLng(Shift) = &HD) Then
  loc_1104E7F:       Call Proc_227_64_11A3910(KeyCode, var_AE, 0, 4)
  loc_1104E8A:       If (var_AE = &HFF) Then
  loc_1104ED0:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1104EE0:       End If
  loc_1104EE0:     End If
  loc_1104EE3:   Else
  loc_1104EEA:     If (var_AC = CLng(4)) Then
  loc_1104F2D:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1104F36:         Call Proc_227_64_11A3910(KeyCode, var_AE, 0, 3)
  loc_1104F41:         If (var_AE = &HFF) Then
  loc_1104F87:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_1104F97:         End If
  loc_1104F97:       End If
  loc_1104F9A:     Else
  loc_1104FA1:       If (var_AC = CLng(5)) Then
  loc_1104FE4:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1104FED:           Call Proc_227_64_11A3910(KeyCode, var_AE, 5, 0)
  loc_1104FF8:           If (var_AE = &HFF) Then
  loc_110503E:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_110504E:           End If
  loc_110504E:         End If
  loc_110504E:       End If
  loc_110504E:     End If
  loc_110504E:   End If
  loc_110504E: End If
  loc_110504E: Exit Sub
  loc_110504F: ' Referenced from: 1104D18
  loc_110504F: Proc_6_60_E63754(3, 0, 0)
  loc_1105054: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1114324
  'Data Table: 5016DC
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim arg_10 As Integer
  loc_1113FF4: On Error Goto loc_111431E
  loc_1113FFA: Proc_6_58_E06050(arg_10)
  loc_1114002: var_86 = KeyAscii
  loc_111400B: If (var_86 = 0) Then
  loc_1114021:   var_A0 = CLng(Me.FGrid.Col)
  loc_1114031:   If (var_A0 = CLng(3)) Then
  loc_1114038:     Set var_8C = Me.TopCtrl1
  loc_111403E:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_1114057:     If (CStr(var_86) = "Add") Then
  loc_1114064:       Set var_8C = Me.TxtGrid
  loc_111406A:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_11140D4:       Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(1).Name, "14737632", "16777215")
  loc_11140F4:     Else
  loc_11140F8:       Set var_8C = Me.TopCtrl1
  loc_11140FE:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A8)
  loc_1114117:       If (CStr() = "Edit") Then
  loc_111411A:       End If
  loc_111411A:     End If
  loc_1114123:     Set var_8C = Me.TxtGrid
  loc_1114129:     Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_1114156:     If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_111415B:       arg_10 = 0
  loc_111415E:     End If
  loc_1114161:   Else
  loc_1114168:     If (var_A0 = CLng(2)) Then
  loc_111416F:       Set var_8C = Me.TopCtrl1
  loc_1114175:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_111418E:       If (CStr(var_A8) = "Add") Then
  loc_111419B:         Set var_8C = Me.TxtGrid
  loc_11141A1:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_111420B:         Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(2).Name, "14737632", "16777215")
  loc_111422B:       Else
  loc_111422F:         Set var_8C = Me.TopCtrl1
  loc_1114235:         Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A8)
  loc_111424E:         If (CStr() = "Edit") Then
  loc_1114251:         End If
  loc_1114251:       End If
  loc_111425A:       Set var_8C = Me.TxtGrid
  loc_1114260:       Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_111428D:       If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_1114292:         arg_10 = 0
  loc_1114295:       End If
  loc_1114298:     Else
  loc_111429F:       If (var_A0 = CLng(4)) Then
  loc_11142AC:         Set var_8C = Me.TxtGrid
  loc_11142B2:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_11142CD:         Proc_6_42_129B55C(var_A8, arg_10, 4)
  loc_11142DC:       Else
  loc_11142E3:         If (var_A0 = CLng(5)) Then
  loc_11142F0:           Set var_8C = Me.TxtGrid
  loc_11142F6:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1114311:           Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_111431D:         End If
  loc_111431D:       End If
  loc_111431D:     End If
  loc_111431D:   End If
  loc_111431D: End If
  loc_111431D: Exit Sub
  loc_111431E: ' Referenced from: 1113FF4
  loc_111431E: Proc_6_60_E63754(2, arg_10)
  loc_1114323: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E303C4
  'Data Table: 5016DC
  Dim var_9C As Long
  loc_E3039C: On Error Goto loc_E303BC
  loc_E303B2: var_9C = CLng(Me.FGrid.Col)
  loc_E303BB: Exit Sub
  loc_E303BC: ' Referenced from: E3039C
  loc_E303BC: Proc_6_60_E63754(var_9C)
  loc_E303C1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20B88
  'Data Table: 5016DC
  Dim arg_10 As Integer
  loc_E20B70: If (Cancel = 0) Then
  loc_E20B79:   Call Proc_227_64_11A3910(Cancel, var_88)
  loc_E20B82:   arg_10 = Not(var_88)
  loc_E20B85: End If
  loc_E20B85: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_F 'DFF0C4
  'Data Table: 5016DC
  loc_DFF0BC: Call TreeView1_UnknownEvent_14()
  loc_DFF0C1: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_14 'EBE29C
  'Data Table: 5016DC
  loc_EBE22D: global_128 = Me.TreeView1.SelectedItem.Key
  loc_EBE26E: Me.LblFacility.Caption = Me.TreeView1.SelectedItem.Text
  loc_EBE28C: Me.LblFacility.Refresh
  loc_EBE294: Call Proc_227_59_16487A4()
  loc_EBE299: Exit Sub
End Sub

Private Sub DTP_UnknownEvent_A 'DFF32C
  'Data Table: 5016DC
  loc_DFF324: Call Proc_227_59_16487A4()
  loc_DFF329: Exit Sub
  loc_DFF32A: Set arg_6478 = 
End Sub

Private Sub Form_Load() '11A2790
  'Data Table: 5016DC
  Dim var_9C As Variant
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_D4 As Variant
  loc_11A2370: On Error Goto loc_11A2789
  loc_11A2389: Proc_6_23_DFC5B8(Me, 0)
  loc_11A2398: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11A23A1: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_11A23AA: Set var_88 = Me.DGPOSSale
  loc_11A23BC: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_11A23C5: Set var_88 = Me.DGPOSSale
  loc_11A23D7: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_11A23E0: Set var_88 = Me.DGOrders
  loc_11A23F2: var_9C = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_11A23FB: Set var_88 = Me.DGPenBills
  loc_11A241C: Me.SSTabStatusScreen.BackColor = CVar(CLng(MemVar_1F951B4))
  loc_11A2437: Me.DTP.CalendarBackColor = CVar(CLng(MemVar_1F951B4))
  loc_11A243F: var_9C = "AEDP"
  loc_11A2449: Set var_88 = Me.TopCtrl1
  loc_11A244F: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_9C)
  loc_11A245D: Call 0.Method_arg_50 (var_B0, DGPenBills.DispID_FFFFFE0B, var_9C, DGOrders.DispID_FFFFFE0B, var_9C)
  loc_11A246D: Set var_88 = Me.TopCtrl1
  loc_11A2473: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_11A2488: Set global_112 = New 
  loc_11A249A: Me.TopCtrl1.CursorLocation = 3
  loc_11A24A9: Set global_116 = New 
  loc_11A24BB: Me.Recordset15.CursorLocation = 3
  loc_11A24CA: Set global_96 = New 
  loc_11A24DC: Me.Recordset15.CursorLocation = 3
  loc_11A24EB: Set global_104 = New 
  loc_11A24FD: Me.Recordset15.CursorLocation = 3
  loc_11A250C: Set global_108 = New 
  loc_11A251E: Me.Recordset15.CursorLocation = 3
  loc_11A2548: var_C0 = CVar("Select Code,Name,RestType From Depart where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Resttype IN ('Outlet','Room Service') Order By RestType,Name") 'String
  loc_11A2579: Me.Recordset15.CursorLocation = 3
  loc_11A2590: var_9C = CVar(MemVar_1F95044) 'Address
  loc_11A25A3: var_C0 = CVar("Select Code AS SearchCode,Name,RestType,SITE_CODE,LOGSITE_CODE From Depart where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Resttype IN ('Outlet','Room Service') Order By RestType,Name") 'String
  loc_11A25AD: r_C0, CVar(MemVar_1F95044), 3 var_C0, var_9C, 3
  loc_11A25B8: Call Proc_227_58_E522E0(1, -1, 1, -1, DGPOSSale.DispID_FFFFFE0B)
  loc_11A25BD: Call Proc_227_61_11BCB34(var_9C, DGPOSSale.DispID_FFFFFE0B)
  loc_11A25E0: Me.LblFacility.Left = CDbl(Me.SSTabStatusScreen.Left)
  loc_11A260D: Me.LblFacility.Width = CDbl(Me.SSTabStatusScreen.Width)
  loc_11A2629: Me.LblFacility.Caption = "POINT OF SALE"
  loc_11A263B: Me.LblFacility.Refresh
  loc_11A2643: Call Proc_227_60_1177720(var_9C)
  loc_11A2659: Me.DTP.MinDate = MemVar_1F950F4
  loc_11A2672: Me.DTP.MaxDate = MemVar_1F950FC
  loc_11A268C: Me.DTP.Value = CDate(MemVar_1F950EC)
  loc_11A269A: global_128 = "Point Of Sale"
  loc_11A26AE: Me.SSTabStatusScreen.Tab = 0
  loc_11A26C0: var_C0 = Me.SSTabStatusScreen.Tab
  loc_11A26CB: Call SSTabStatusScreen_UnknownEvent_10()
  loc_11A26E9: Me.FGrid.Top = CVar(CDbl(1340))
  loc_11A26FB: var_D4 = Me.FGrid.Width
  loc_11A2720: var_C0 = Me.FGrid.Left
  loc_11A273E: Me.CmdSave.Left = ((CDbl(var_C0) + CDbl(var_D4)) - Me.CmdSave.Width)
  loc_11A2778: Call Proc_227_66_E9C828(Proc_5_1_100EC1C("ADD", Me, New), var_D4)
  loc_11A2783: Call Proc_227_65_F16670(CInt(var_C0))
  loc_11A2788: Exit Sub
  loc_11A2789: ' Referenced from: 11A2370
  loc_11A2789: Proc_6_60_E63754(0)
  loc_11A278E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7B008
  'Data Table: 5016DC
  loc_E7AFAF: Set global_100 = Nothing
  loc_E7AFC1: Set global_112 = Nothing
  loc_E7AFD3: Set global_116 = Nothing
  loc_E7AFE5: Set global_108 = Nothing
  loc_E7AFF7: Set global_96 = Nothing
  loc_E7B003: MasterFormExit = 0
  loc_E7B006: Exit Sub
End Sub

Private Sub Form_Activate() 'E4F140
  'Data Table: 5016DC
  loc_E4F110: On Error Goto loc_E4F13A
  loc_E4F117: Set var_88 = Me.TopCtrl1
  loc_E4F11D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4F132: If (CLng(CInt()) = &H2D) Then
  loc_E4F135:   Call TopCtrl1_UnknownEvent_15()
  loc_E4F13A:   ' Referenced from: E4F110
  loc_E4F13A: End If
  loc_E4F13A: Proc_6_60_E63754()
  loc_E4F13F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26184
  'Data Table: 5016DC
  loc_E26169: If (MasterFormExit = &HFF) Then
  loc_E26179:   Me.Global.Unload Me
  loc_E26181: End If
  loc_E26181: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28874
  'Data Table: 5016DC
  loc_E2884C: On Error Goto loc_E2886C
  loc_E28863: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2886B: Exit Sub
  loc_E2886C: ' Referenced from: E2884C
  loc_E2886C: Proc_6_60_E63754(Shift)
  loc_E28871: Exit Sub
End Sub

Private Sub SSTabStatusScreen_UnknownEvent_10 'E7F9C0
  'Data Table: 5016DC
  loc_E7F9A1: Me.SSTabStatusScreen.Tag = CVar(CStr(Me.SSTabStatusScreen.TabCaption)))
  loc_E7F9B8: Call Proc_227_59_16487A4(CVar(CInt(Me.SSTabStatusScreen.Tab)))
  loc_E7F9BD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4E304
  'Data Table: 5016DC
  loc_E4E2E2: Set var_88 = Me.Txt
  loc_E4E2E8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4E2F6: Proc_6_74_E23240(var_8C)
  loc_E4E302: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EDF764
  'Data Table: 5016DC
  Dim var_86 As Integer
  loc_EDF6BA: If (CLng(Shift) = &H1B) Then
  loc_EDF6BD:   Exit Sub
  loc_EDF6BE: End If
  loc_EDF6C1: var_86 = KeyCode
  loc_EDF71A: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGPOSSale.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_EDF732:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EDF73B:     Proc_6_75_E5335C(Shift, arg_14)
  loc_EDF740:   End If
  loc_EDF755:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EDF75E:     Proc_6_76_E533C8(Shift, arg_14)
  loc_EDF763:   End If
  loc_EDF763: End If
  loc_EDF763: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E086D0
  'Data Table: 5016DC
  Dim var_86 As Integer
  loc_E086C3: Proc_6_58_E06050(arg_10)
  loc_E086CB: var_86 = KeyAscii
  loc_E086CE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFFB0C
  'Data Table: 5016DC
  Dim var_86 As Integer
  loc_DFFB07: var_86 = KeyCode
  loc_DFFB0A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DC1C
  'Data Table: 5016DC
  loc_E4DBFA: Set var_88 = Me.Txt
  loc_E4DC00: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DC0E: Proc_6_73_E23294(var_8C)
  loc_E4DC1A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103DB40
  'Data Table: 5016DC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_103D8FB: var_86 = Cancel
  loc_103D906: If (var_86 = CInt(0)) Then
  loc_103D914:   Set var_8C = Me.Txt
  loc_103D91A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103D943:   If (Proc_6_27_EA61EC(var_90, "For Month") = 0) Then
  loc_103D951:     Set var_8C = Me.Txt
  loc_103D957:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103D95F:     var_90.SetFocus
  loc_103D96D:     arg_10 = &HFF
  loc_103D970:     Exit Sub
  loc_103D971:   End If
  loc_103D97B:   Set var_8C = Me.Txt
  loc_103D981:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103D9A1:   Set var_9C = Me.Txt
  loc_103D9A7:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103D9AF:   var_A0.Text = Proc_6_120_133AEC8(var_90, arg_10)
  loc_103D9C2:   Call Proc_227_59_16487A4(var_86)
  loc_103D9CA: Else
  loc_103D9D2:   If (var_86 = CInt(1)) Then
  loc_103D9E0:     Set var_8C = Me.Txt
  loc_103D9E6:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_103DA0F:     If (Proc_6_27_EA61EC(var_90, "Bill Date") = 0) Then
  loc_103DA1D:       Set var_8C = Me.Txt
  loc_103DA23:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_103DA2B:       var_90.SetFocus
  loc_103DA39:       arg_10 = &HFF
  loc_103DA3C:       Exit Sub
  loc_103DA3D:     End If
  loc_103DA47:     Set var_8C = Me.Txt
  loc_103DA4D:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103DA6D:     Set var_9C = Me.Txt
  loc_103DA73:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103DA7B:     var_A0.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_103DA98:     Set var_8C = Me.Txt
  loc_103DA9E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103DAD9:     Set var_94 = Me.Txt
  loc_103DADF:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, CStr(Format(CVar(var_90), "MMM/yyyy")))
  loc_103DAE7:     var_9C.Text = 1
  loc_103DB01:     Call Proc_227_59_16487A4(1)
  loc_103DB19:     Me.FGrid.Row = 1
  loc_103DB34:     Me.FGrid.Col = 2
  loc_103DB3C:   End If
  loc_103DB3C: End If
  loc_103DB3C: Exit Sub
End Sub

Private Sub ChkOrders_Click() 'DFEB84
  'Data Table: 5016DC
  loc_DFEB7C: Call Proc_227_59_16487A4()
  loc_DFEB81: Exit Sub
End Sub

Private Sub CmdSave_Click() 'DFE83C
  'Data Table: 5016DC
  loc_DFE834: Call TopCtrl1_UnknownEvent_16()
  loc_DFE839: Exit Sub
End Sub

Public Function MasterFormExitGet() '502C0C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '502C1B
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '502C2A
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '502C39
  SearchCode = Value
End Sub

Public Function global_60Get() '502C48
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '502C57
  global_60 = Value
End Sub

Public Function global_64Get() '502C66
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '502C75
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '502C84
  global_64 = Value
End Sub

Public Function global_80Get() '502C93
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '502CA2
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '502CB1
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E8D76C
  'Data Table: 5016DC
  Dim Me As Recordset15
  loc_E8D702: On Error Goto loc_E8D766
  loc_E8D70B: Me.MoveFirst
  loc_E8D735: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E8D75D: Proc_5_0_1107AD0(&HFF, Me, global_100)
  loc_E8D765: Exit Sub
  loc_E8D766: ' Referenced from: E8D702
  loc_E8D766: Proc_6_60_E63754(0)
  loc_E8D76B: Exit Sub
End Sub

Public Sub MemSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11509A4
  'Data Table: 5016DC
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim KeyAscii As Integer
  loc_115060C: On Error Goto loc_115099B
  loc_1150622: If (Me.rows < 1) Then
  loc_1150625:   Exit Sub
  loc_1150626: End If
  loc_115063A: If (Me.RecordCount <= 0) Then
  loc_1150646:   Me.TEXT = vbNullString
  loc_115064A:   Exit Sub
  loc_115064B: End If
  loc_1150667: If (((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Or (KeyAscii = 0)) Then
  loc_1150674:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_1150678:   Exit Sub
  loc_1150679: End If
  loc_1150683: If (CLng(KeyAscii) = 8) Then
  loc_115069D:   If (Len(Me.SelText) > 1) Then
  loc_11506B1:     var_E0 = (Len(Me.SelText) - 1)
  loc_11506B9:     Me.SelLength = var_E0
  loc_11506C9:     var_8C = CStr(Me.SelText)
  loc_11506D2:   Else
  loc_11506DB:     Me.TEXT = vbNullString
  loc_11506E2:     Call Me.SetFocus
  loc_11506F0:     Me.Visible = False
  loc_11506F4:     Exit Sub
  loc_11506F5:   End If
  loc_11506F8: Else
  loc_115070F:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_1150714:   var_8C = CStr(var_E0)
  loc_1150720: End If
  loc_115073D: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_1150743: Me.Recordset15.MoveFirst
  loc_1150780: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11507C3:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_11507D8: Else
  loc_1150808:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_1150818: End If
  loc_115081A: KeyAscii = 0
  loc_1150846: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_1150853:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_115086D:   Me.Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_115087B:   Me.CellBackColor = CVar(CellBackColEnter)
  loc_11508AE:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11508C8:   Me.SelLength = CVar(Len(var_8C))
  loc_11508DC:   var_E0 = (Me.CellLeft + Me.left)
  loc_11508E4:   Me.left = var_E0
  loc_1150901:   var_E0 = (Me.CellTop + Me.top)
  loc_1150909:   Me.top = var_E0
  loc_1150928:   If (Me.Visible = False) Then
  loc_1150932:     Me.Visible = True
  loc_1150936:     var_9C = 0
  loc_115093F:     Call Me.ZOrder
  loc_1150948:     Call Me.SetFocus
  loc_115095A:     Me.BackColor = Me.CellBackColor
  loc_115096D:     Me.ForeColor = Me.CellForeColor
  loc_1150980:     Me.width = Me.CellWidth
  loc_1150993:     Me.height = Me.CellHeight
  loc_115099A:   End If
  loc_115099A: End If
  loc_115099A: Exit Sub
  loc_115099B: ' Referenced from: 115060C
  loc_115099B: Proc_6_60_E63754(var_9C, KeyAscii, var_9C)
  loc_11509A0: Exit Sub
End Sub

Public Sub Proc_227_58_E522E0
  'Data Table: 5016DC
  Dim var_88 As TreeView
  Dim var_9C As Nodes
  loc_E522CE: Me.TreeView1.Nodes.Clear
  loc_E522D5: Set var_9C = Nothing 
  loc_E522DB: Set var_88 = Nothing 
  loc_E522DF: Exit Sub
End Sub

Public Sub Proc_227_59_16487A4
  'Data Table: 5016DC
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_1A8 As Variant
  Dim var_B0 As String
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim unk_5016E2 As Connection15
  Dim var_1BC As Variant
  Dim var_204 As Variant
  Dim var_1C4 As Variant
  Dim var_1C0 As Fields15
  Dim var_22C As TextBox
  Dim var_228 As Fields15
  Dim var_234 As TextBox
  Dim var_238 As Long
  Dim var_C4 As Variant
  loc_16471D6: var_A4 = CStr(Me.SSTabStatusScreen.Tag)
  loc_16471E7: If (var_A4 = "POS SALE") Then
  loc_16471F0:   var_A8 = global_128
  loc_16471FB:   If (var_A8 = "Point Of Sale") Then
  loc_1647215:     If (Me.State = 1) Then
  loc_164721E:       Me.Close
  loc_1647223:     End If
  loc_164722D:     var_A0 = Me.DTP.Value
  loc_1647237:     Proc_6_7_F26918(var_C4)
  loc_1647250:     Proc_6_7_F26918(var_168, Me.DTP.Value)
  loc_1647273:     var_B0 = "Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_164728B:     var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_16472A3:     var_144 = CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=" 
  loc_16472AE:     var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode Order By D.Name,Q.RoomNo"
  loc_16472BE:     Me.Open var_144 & var_168 & var_188, CVar(MemVar_1F95044), 3
  loc_16472FE:     var_B0 = "Select Sum(Tax) Tax,Sum(DiscAmt) DiscAmt,Sum(NetAmt) NetAmt,Sum(RunKotAmt) RunKotAmt,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(Total) Total From (Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_1647319:     var_A0 = Me.DTP.Value
  loc_1647323:     Proc_6_7_F26918(var_C4, var_A0, CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate="), var_1BC, -1)
  loc_164732F:     var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_164735F:     Proc_6_7_F26918(var_168, Me.DTP.Value, var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=")
  loc_164736B:     var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode) Z"
  loc_164737E:     unk_5016E2.Execute CStr(1 & var_168 & var_188), -1, var_A0
  loc_164738F:     Set global_120 = var_1C0
  loc_16473CB:     CVarUnk
  loc_16473D0:     VerifyVarObj
  loc_16473D6:     Set var_90 = Me.DGPOSSale
  loc_16473DC:     LateIdStAd
  loc_16473ED:   Else
  loc_16473F5:     If Not (var_A8 = "Outlet") Then
  loc_1647400:       If (var_A8 = "Room Service") Then
  loc_1647403:       End If
  loc_164741A:       If (Me.State = 1) Then
  loc_1647423:         Me.Close
  loc_1647428:       End If
  loc_164743C:       Proc_6_7_F26918(var_C4, Me.DTP.Value)
  loc_1647455:       Proc_6_7_F26918(var_168, Me.DTP.Value)
  loc_1647478:       var_B0 = "Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_1647490:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_16474A8:       var_144 = CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=" 
  loc_16474B3:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode Where D.RestType='"
  loc_16474D9:       Me.Open var_144 & var_168 & var_188 & CVar(global_128) & "' Order By D.Name,Q.RoomNo", CVar(MemVar_1F95044), 3
  loc_164751D:       var_B0 = "Select Sum(Tax) Tax,Sum(DiscAmt) DiscAmt,Sum(NetAmt) NetAmt,Sum(RunKotAmt) RunKotAmt,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(Total) Total From (Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_1647532:       Set var_90 = Me.DTP
  loc_1647542:       Proc_6_7_F26918(var_C4, var_90.Value, CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate="), var_204, -1)
  loc_164754E:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_164757E:       Proc_6_7_F26918(var_168, Me.DTP.Value, var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=", 1)
  loc_1647586:       var_178 = -1 & var_168 
  loc_164758A:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode Where D.RestType='"
  loc_164759C:       var_1BC = var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=" & var_168 & var_188 & CVar(global_128) 
  loc_16475B3:       unk_5016E2.Execute CStr(var_1BC & "') Z"), var_90, global_112
  loc_16475C4:       Set global_120 = var_1C0
  loc_1647604:       CVarUnk
  loc_1647609:       VerifyVarObj
  loc_164760F:       Set var_90 = Me.DGPOSSale
  loc_1647615:       LateIdStAd
  loc_1647626:     Else
  loc_164763D:       If (Me.State = 1) Then
  loc_1647646:         Me.Close
  loc_164764B:       End If
  loc_164765F:       Proc_6_7_F26918(var_C4, Me.DTP.Value)
  loc_1647678:       Proc_6_7_F26918(var_168, Me.DTP.Value)
  loc_164769B:       var_B0 = "Select Q.*,D.Name Outlet,Case When IsNull(RM.Name,'')='' Then Q.RoomNo Else RM.Name End Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable," & "Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 Where (LOGSITE_CODE='"
  loc_16476B3:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode,RoomNo) S1 Full Outer Join (Select RestCode, RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_16476CB:       var_144 = CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=" 
  loc_16476D6:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode,RoomNo) K "
  loc_16476DF:       var_1A8 = "On S1.RestCode=K.RestCode And S1.RoomNo=K.RoomNo) Q Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode Where D.Code='"
  loc_1647705:       Me.Open var_144 & var_168 & var_188 & var_1A8 & CVar(global_128) & "' Order By D.Name,Q.RoomNo", CVar(MemVar_1F95044), 3
  loc_164774B:       var_B0 = "Select Sum(Tax) Tax,Sum(DiscAmt) DiscAmt,Sum(NetAmt) NetAmt,Sum(RunKotAmt) RunKotAmt,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(Total) Total From (Select Q.*,D.Name Outlet,Case When IsNull(RM.Name,'')='' Then Q.RoomNo Else RM.Name End Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable," & "Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 Where (LOGSITE_CODE='"
  loc_1647760:       Set var_90 = Me.DTP
  loc_1647770:       Proc_6_7_F26918(var_C4, var_90.Value, CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate="), var_224, -1)
  loc_164777C:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode,RoomNo) S1 Full Outer Join (Select RestCode, RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_16477AC:       Proc_6_7_F26918(var_168, Me.DTP.Value, var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=", 1)
  loc_16477B4:       var_178 = -1 & var_168 
  loc_16477B8:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode,RoomNo) K "
  loc_16477BD:       var_198 = var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') And Vdate=" & var_168 & var_188 
  loc_16477C1:       var_1A8 = "On S1.RestCode=K.RestCode And S1.RoomNo=K.RoomNo) Q Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode Where D.Code='"
  loc_16477EA:       unk_5016E2.Execute CStr(var_198 & var_1A8 & CVar(global_128) & "') Z"), var_90, global_112
  loc_16477FB:       Set global_120 = var_1C0
  loc_164783D:       CVarUnk
  loc_1647842:       VerifyVarObj
  loc_1647848:       Set var_90 = Me.DGPOSSale
  loc_164784E:       LateIdStAd
  loc_164785C:     End If
  loc_164785C:   End If
  loc_1647885:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Tax")))
  loc_16478BC:   Set var_1C0 = Me.TxtPOSSale
  loc_16478C2:   Call 0.Method_Proc_227_59_16487A40 (CInt(0), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_16478CA:   var_1C4.Text = 1
  loc_164790F:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("DiscAmt")))
  loc_1647946:   Set var_1C0 = Me.TxtPOSSale
  loc_164794C:   Call 0.Method_Proc_227_59_16487A40 (CInt(1), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1647954:   var_1C4.Text = 1
  loc_1647999:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("NetAmt")))
  loc_16479D0:   Set var_1C0 = Me.TxtPOSSale
  loc_16479D6:   Call 0.Method_Proc_227_59_16487A40 (CInt(2), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_16479DE:   var_1C4.Text = 1
  loc_1647A23:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("RunKotamt")))
  loc_1647A43:   var_E4 = Format(var_C4, "0.00")
  loc_1647A5A:   Set var_1C0 = Me.TxtPOSSale
  loc_1647A60:   Call 0.Method_Proc_227_59_16487A40 (CInt(3), var_1C4, CStr(var_E4), 1)
  loc_1647A68:   var_1C4.Text = 1
  loc_1647AAD:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("RunKotamt")))
  loc_1647ACC:   var_1C4 = Me.Fields.Item("NetAmt")
  loc_1647ADB:   Proc_6_39_E7D3A0(var_E4, CVar(var_1C4))
  loc_1647AFB:   var_104 = (var_C4 + var_E4)
  loc_1647B02:   var_144 = Format(Me.Fields & var_C4 & "RunKotamt", "0.00")
  loc_1647B19:   Set var_228 = Me.TxtPOSSale
  loc_1647B1F:   Call 0.Method_Proc_227_59_16487A40 (CInt(4), var_22C, CStr(var_144), 1)
  loc_1647B27:   var_22C.Text = 1
  loc_1647B74:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Servicecharge")))
  loc_1647BAB:   Set var_1C0 = Me.TxtPOSSale
  loc_1647BB1:   Call 0.Method_Proc_227_59_16487A40 (CInt(5), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1647BB9:   var_1C4.Text = 1
  loc_1647BFE:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Servicetax")))
  loc_1647C35:   Set var_1C0 = Me.TxtPOSSale
  loc_1647C3B:   Call 0.Method_Proc_227_59_16487A40 (CInt(6), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1647C43:   var_1C4.Text = 1
  loc_1647C88:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Total")))
  loc_1647CA8:   var_E4 = Format(var_C4, "0.00")
  loc_1647CBF:   Set var_1C0 = Me.TxtPOSSale
  loc_1647CC5:   Call 0.Method_Proc_227_59_16487A40 (CInt(7), var_1C4, CStr(var_E4), 1)
  loc_1647CCD:   var_1C4.Text = 1
  loc_1647D12:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Tax")))
  loc_1647D40:   Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("Servicetax")))
  loc_1647D5F:   var_22C = Me.Fields.Item("Total")
  loc_1647D6E:   Proc_6_39_E7D3A0(var_144, CVar(var_22C))
  loc_1647D82:   var_168 = "0.00"
  loc_1647D8E:   var_104 = (var_C4 + var_E4)
  loc_1647D95:   var_158 = (Me.Fields & var_C4 & "Tax" + var_144)
  loc_1647DB3:   Set var_230 = Me.TxtPOSSale
  loc_1647DB9:   Call 0.Method_Proc_227_59_16487A40 (CInt(8), var_234, CStr(Format(Me.DTP.Value, var_168)), 1)
  loc_1647DC1:   var_234.Text = 1
  loc_1647E07:   var_148 = Me.Fields.Item("Servicecharge")
  loc_1647E16:   Proc_6_39_E7D3A0(var_C4, CVar(var_148))
  loc_1647E2D:   var_1C0 = Me.Fields
  loc_1647E35:   var_1C4 = var_1C0.Item("Total")
  loc_1647E44:   Proc_6_39_E7D3A0(var_E4, CVar(var_1C4))
  loc_1647E64:   var_104 = (var_C4 + var_E4)
  loc_1647E82:   Set var_228 = Me.TxtPOSSale
  loc_1647E88:   Call 0.Method_Proc_227_59_16487A40 (CInt(9), var_22C, CStr(Format(var_1C0 & var_C4 & "Servicecharge", "0.00")), 1)
  loc_1647E90:   var_22C.Text = 1
  loc_1647EB7: Else
  loc_1647EBF:   If (var_A4 = "ORDERS") Then
  loc_1647EC8:     var_23C = global_128
  loc_1647ED3:     If (var_23C = "Point Of Sale") Then
  loc_1647ED9:       var_88 = vbNullString
  loc_1647EDF:     Else
  loc_1647EE7:       If Not (var_23C = "Outlet") Then
  loc_1647EF2:         If (var_23C = "Room Service") Then
  loc_1647EF5:         End If
  loc_1647F06:         var_88 = " Where D.RestType='" & global_128 & "'"
  loc_1647F0F:       Else
  loc_1647F20:         var_88 = " Where D.Code='" & global_128 & "'"
  loc_1647F26:       End If
  loc_1647F26:     End If
  loc_1647F49:     var_B0 = "Select Count(Q.Vno) As KOTNO From (Select RestCode,Vno,Max(VTime) VTime,Max(RoomNo) RoomNo,Max(IsNull(DELFLAG,'')) DELFLAG, " & "Max(IsNull(Pending,'')) PENDING,IsNull(Sum(Case When VOIDYN='N' Then Amount End),0) AMOUNT,IsNull(Sum(Case When VOIDYN<>'N' Then Amount End),0) VOIDAMT,Max(IsNull(ContraDocId,'')) ContraDocId,Max(Waiter) WAITER,Max(LogSite_Code) LOGSITE_CODE From KOT Where (LOGSITE_CODE='"
  loc_1647F5E:     Set var_90 = Me.DTP
  loc_1647F6E:     Proc_6_7_F26918(var_C4, var_90.Value, CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate="), var_168, -1, var_148)
  loc_1647F7A:     var_F4 = " AND NCKOT<>'Y' Group By RestCode,Vno) Q Left Join Sale1 S On Q.ContraDocId=S.DocId Left Join Waiter W On Q.Waiter=W.Code And Q.LogSite_Code=W.LogSite_Code "
  loc_1647F88:     var_124 = var_1C0 & var_C4 & var_F4 & "Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode " 
  loc_1647FA9:     unk_5016E2.Execute CStr(var_124 & CVar(var_88) & vbNullString), 0, var_1C4
  loc_1647FB1:     var_178 = var_148.Fields
  loc_1647FB9:     global_112 = var_1C0.Item(var_90)
  loc_1647FC1:      = var_1C4.Value
  loc_1647FCC:     Proc_6_39_E7D3A0(var_198)
  loc_1647FD6:     var_238 = CLng(var_198)
  loc_1648014:     Set var_90 = Me.ChkOrders
  loc_164801A:     Call 0.Method_Proc_227_59_16487A40 (CInt(1), var_148, var_23E)
  loc_1648022:     var_238 = var_148.Value
  loc_1648034:     If (var_23E = 1) Then
  loc_164806A:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " Q.DELFLAG='Y' ", " OR Q.DELFLAG='Y' "))
  loc_164806F:       var_8C = CStr(var_1C0 & " OR Q.DELFLAG='Y' ")
  loc_164807F:     End If
  loc_164808D:     Set var_90 = Me.ChkOrders
  loc_1648093:     Call 0.Method_Proc_227_59_16487A40 (CInt(2), var_148)
  loc_16480AD:     If (var_148.Value = 1) Then
  loc_16480E3:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " (Q.PENDING<>'Y' And Q.DELFLAG<>'Y') ", " OR (Q.PENDING<>'Y' And Q.DELFLAG<>'Y') "))
  loc_16480E8:       var_8C = CStr(var_1C0 & " OR (Q.PENDING<>'Y' And Q.DELFLAG<>'Y') ")
  loc_16480F8:     End If
  loc_1648106:     Set var_90 = Me.ChkOrders
  loc_164810C:     Call 0.Method_Proc_227_59_16487A40 (CInt(3), var_148)
  loc_1648126:     If (var_148.Value = 1) Then
  loc_164815C:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " (Q.PENDING='Y' And Q.AMOUNT<>0) ", " OR (Q.PENDING='Y' And Q.AMOUNT<>0) "))
  loc_1648161:       var_8C = CStr(var_1C0 & " OR (Q.PENDING='Y' And Q.AMOUNT<>0) ")
  loc_1648171:     End If
  loc_164817F:     Set var_90 = Me.ChkOrders
  loc_1648185:     Call 0.Method_Proc_227_59_16487A40 (CInt(4), var_148)
  loc_164818D:     var_23E = var_148.Value
  loc_164819F:     If (var_23E = 1) Then
  loc_16481D5:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " Q.AMOUNT=0 ", " OR Q.AMOUNT=0 "))
  loc_16481DA:       var_8C = CStr(var_1C0 & " OR Q.AMOUNT=0 ")
  loc_16481EA:     End If
  loc_16481F8:     var_C4 = CVar(" Where (" & var_8C & ")") 'String
  loc_1648263:     var_124 = IIf((var_88 = vbNullString), IIf((var_8C = vbNullString), vbNullString, var_C4), IIf((var_8C = vbNullString), var_88, CVar(var_88 & " And (" & var_8C & ")")))
  loc_164826C:     var_88 = CStr(var_124)
  loc_16482A4:     If (Me.State = 1) Then
  loc_16482AD:       Me.Close
  loc_16482B2:     End If
  loc_16482C6:     Proc_6_7_F26918(var_C4, Me.DTP.Value)
  loc_16482E9:     var_B0 = "Select D.Name Outlet,Case When IsNull(RM.Name,'')='' Then Q.RoomNo Else RM.Name End Room,Q.Vno As KOTNO,Q.VTime KOTTime,Case When Q.DELFLAG='Y' Then 'Deleted' When Q.PENDING<>'Y' Then 'Billed' When Q.PENDING='Y' And Q.AMOUNT<>0 Then 'Running' When Q.AMOUNT=0 Then 'Cancelled' End Status,Q.AMOUNT,Q.VOIDAMT,W.Name STEWARD,S.VNo BillNo From (Select RestCode,Vno,Max(VTime) VTime,Max(RoomNo) RoomNo,Max(IsNull(DELFLAG,'')) DELFLAG, " & "Max(IsNull(Pending,'')) PENDING,IsNull(Sum(Case When VOIDYN='N' Then Amount End),0) AMOUNT,IsNull(Sum(Case When VOIDYN<>'N' Then Amount End),0) VOIDAMT,Max(IsNull(ContraDocId,'')) ContraDocId,Max(Waiter) WAITER,Max(LogSite_Code) LOGSITE_CODE From KOT Where (LOGSITE_CODE='"
  loc_1648301:     var_F4 = " AND NCKOT<>'Y' Group By RestCode,Vno) Q Left Join Sale1 S On Q.ContraDocId=S.DocId Left Join Waiter W On Q.Waiter=W.Code And Q.LogSite_Code=W.LogSite_Code "
  loc_164830F:     var_124 = CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & "Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode " 
  loc_164832D:     Me.Open var_124 & CVar(var_88) & " Order By D.RestType,D.Name,Q.RoomNo,Q.Vno", CVar(MemVar_1F95044), 3
  loc_1648363:     var_B0 = "Select Count(Q.Vno) As KOTNO,  Count(Case When Q.DELFLAG='Y' Then Q.VNO End) Deleted,  Count(Case When Q.PENDING<>'Y' Then Q.VNO End) Billed,  Count(Case When Q.PENDING='Y' And Q.AMOUNT<>0 Then Q.VNO End) Running,  Count(Case When Q.AMOUNT=0 Then Q.VNO End) Cancelled From (Select RestCode,Vno,Max(VTime) VTime,Max(RoomNo) RoomNo,Max(IsNull(DELFLAG,'')) DELFLAG, " & "Max(IsNull(Pending,'')) PENDING,IsNull(Sum(Case When VOIDYN='N' Then Amount End),0) AMOUNT,IsNull(Sum(Case When VOIDYN<>'N' Then Amount End),0) VOIDAMT,Max(IsNull(ContraDocId,'')) ContraDocId,Max(Waiter) WAITER,Max(LogSite_Code) LOGSITE_CODE From KOT Where (LOGSITE_CODE='"
  loc_1648388:     Proc_6_7_F26918(var_C4, Me.DTP.Value, CVar(var_B0 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And Vdate="), var_168, -1)
  loc_1648394:     var_F4 = " AND NCKOT<>'Y' Group By RestCode,Vno) Q Left Join Sale1 S On Q.ContraDocId=S.DocId Left Join Waiter W On Q.Waiter=W.Code And Q.LogSite_Code=W.LogSite_Code "
  loc_16483A2:     var_124 = var_148 & var_C4 & var_F4 & "Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode " 
  loc_16483C3:     unk_5016E2.Execute CStr(var_124 & CVar(var_88) & vbNullString), 1, -1
  loc_16483D4:     Set global_124 = var_148
  loc_1648408:     CVarUnk
  loc_164840D:     VerifyVarObj
  loc_1648413:     Set var_90 = Me.DGOrders
  loc_1648419:     LateIdStAd
  loc_1648435:     Set var_90 = Me.ChkOrders
  loc_164843B:     Call 0.Method_Proc_227_59_16487A40 (CInt(0), var_148, var_23E)
  loc_1648443:     var_90 = var_148.Value
  loc_1648455:     If (var_23E = 1) Then
  loc_1648478:       var_C4 = Format(var_238, "0")
  loc_164848F:       Set var_90 = Me.TxtOrders
  loc_1648495:       Call 0.Method_Proc_227_59_16487A40 (CInt(0), var_148, CStr(var_C4), 1)
  loc_164849D:       var_148.Text = 1
  loc_16484B6:     Else
  loc_16484DF:       Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("KOTNo")))
  loc_1648516:       Set var_1C0 = Me.TxtOrders
  loc_164851C:       Call 0.Method_Proc_227_59_16487A40 (CInt(0), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_1648524:       var_1C4.Text = 1
  loc_1648540:     End If
  loc_1648569:     Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Deleted")))
  loc_16485A0:     Set var_1C0 = Me.TxtOrders
  loc_16485A6:     Call 0.Method_Proc_227_59_16487A40 (CInt(1), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_16485AE:     var_1C4.Text = 1
  loc_16485F3:     Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Billed")))
  loc_164862A:     Set var_1C0 = Me.TxtOrders
  loc_1648630:     Call 0.Method_Proc_227_59_16487A40 (CInt(2), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_1648638:     var_1C4.Text = 1
  loc_164867D:     Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Running")))
  loc_16486B4:     Set var_1C0 = Me.TxtOrders
  loc_16486BA:     Call 0.Method_Proc_227_59_16487A40 (CInt(3), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_16486C2:     var_1C4.Text = 1
  loc_1648707:     Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("Cancelled")))
  loc_164873E:     Set var_1C0 = Me.TxtOrders
  loc_1648744:     Call 0.Method_Proc_227_59_16487A40 (CInt(4), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_164874C:     var_1C4.Text = 1
  loc_164876B:   Else
  loc_1648773:     If (var_A4 = "PEN. BILLS") Then
  loc_1648776:       GoTo loc_16487A0
  loc_1648779:     End If
  loc_1648781:     If (var_A4 = "BILLING") Then
  loc_1648784:       GoTo loc_16487A0
  loc_1648787:     End If
  loc_164878F:     If (var_A4 = "ITEM VIEW") Then
  loc_1648792:       GoTo loc_16487A0
  loc_1648795:     End If
  loc_164879D:     If (var_A4 = "COMP. SALE") Then
  loc_16487A0:       ' Referenced from:     1648792
  loc_16487A0:       ' Referenced from:     1648784
  loc_16487A0:       ' Referenced from:     1648776
  loc_16487A0:     End If
  loc_16487A0:   End If
  loc_16487A0: End If
  loc_16487A0: Exit Sub
End Sub

Public Sub Proc_227_60_1177720
  'Data Table: 5016DC
  Dim Me As Recordset15
  Dim var_90 As TreeView
  Dim var_A0 As Variant
  Dim var_A4 As Nodes
  Dim var_15C As Node
  Dim var_158 As Fields15
  Dim var_D4 As Variant
  Dim var_154 As Variant
  Dim var_134 As Variant
  Dim var_198 As Node
  Dim var_1A0 As Node
  Dim var_1A4 As Node
  loc_117739F: If (Me.RecordCount > 0) Then
  loc_11773AC:   var_A0 = Me.TreeView1.Nodes
  loc_11773B7:   Set var_A4 = var_A0
  loc_11773E5:   var_A4.Add var_A0, var_D4, "Point Of Sale", "POINT OF SALE", var_134, var_154
  loc_11773ED:   Set var_15C = var_158
  loc_1177404:   var_15C.Bold = True
  loc_117740E:   var_15C.Expanded = True
  loc_1177415:   Set var_15C = Nothing 
  loc_117741F:   Me.MoveFirst
  loc_1177424:   ' Referenced from: 117770E
  loc_1177436:   If Not(Me.EOF) Then
  loc_117744E:     var_158 = Me.Fields
  loc_1177475:     If (var_158 <> Proc_6_38_E69628(CVar(var_158.Item("RestType")), var_88)) Then
  loc_11774E0:       var_154 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RestType")))) 'String
  loc_11774FC:       var_A4.Add "Point Of Sale", 4, CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RestType")))), var_154, var_180, var_190
  loc_1177504:       Set var_198 = var_194
  loc_117752D:       var_198.Bold = True
  loc_1177537:       var_198.Expanded = True
  loc_117753E:       Set var_198 = Nothing 
  loc_117756D:       var_88 = Proc_6_38_E69628(CVar(Me.Fields.Item("RestType")))
  loc_11775F7:       var_A4.Add var_88, 4, CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))), CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))), var_154, var_180
  loc_11775FF:       Set var_1A0 = var_194
  loc_1177626:       var_1A0.Bold = False
  loc_1177630:       var_1A0.Expanded = False
  loc_1177637:       Set var_1A0 = Nothing 
  loc_117763E:     Else
  loc_11776BF:       var_A4.Add var_88, 4, CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Code")), var_194)), CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))), var_154, var_180
  loc_11776C7:       Set var_1A4 = var_194
  loc_11776EE:       var_1A4.Bold = False
  loc_11776F8:       var_1A4.Expanded = False
  loc_11776FF:       Set var_1A4 = Nothing 
  loc_1177703:     End If
  loc_1177709:     Me.MoveNext
  loc_117770E:     GoTo loc_1177424
  loc_1177711:   End If
  loc_1177713:   Set var_A4 = Nothing 
  loc_1177719:   Set var_90 = Nothing 
  loc_117771D: End If
  loc_117771D: Exit Sub
End Sub

Public Sub Proc_227_61_11BCB34
  'Data Table: 5016DC
  Dim var_94 As Variant
  Dim var_A8 As DataGrid
  Dim var_AC As CheckBox
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_11BC6D8: On Error Goto loc_11BCB2C
  loc_11BC6EE: Me.DGPOSSale.Width = CVar(CDbl(12345))
  loc_11BC709: Me.DGPOSSale.Height = CVar(CDbl(5175))
  loc_11BC724: Me.DGOrders.Width = CVar(CDbl(12345))
  loc_11BC73F: Me.DGOrders.Height = CVar(CDbl(5175))
  loc_11BC754: Set var_A8 = Me.ChkOrders
  loc_11BC75A: Call 0.Method_Proc_227_61_11BCB340 (CInt(0), var_AC)
  loc_11BC762: var_AC.Value = 1
  loc_11BC77B: Set var_A8 = Me.ChkOrders
  loc_11BC781: Call 0.Method_Proc_227_61_11BCB340 (CInt(1), var_AC)
  loc_11BC789: var_AC.Value = 1
  loc_11BC7A2: Set var_A8 = Me.ChkOrders
  loc_11BC7A8: Call 0.Method_Proc_227_61_11BCB340 (CInt(2), var_AC)
  loc_11BC7B0: var_AC.Value = 1
  loc_11BC7C9: Set var_A8 = Me.ChkOrders
  loc_11BC7CF: Call 0.Method_Proc_227_61_11BCB340 (CInt(3), var_AC)
  loc_11BC7D7: var_AC.Value = 1
  loc_11BC7F0: Set var_A8 = Me.ChkOrders
  loc_11BC7F6: Call 0.Method_Proc_227_61_11BCB340 (CInt(4), var_AC)
  loc_11BC7FE: var_AC.Value = 1
  loc_11BC80E: Set var_B0 = Me.FGrid
  loc_11BC81D: var_B0.Height = CVar(CDbl(6500))
  loc_11BC82E: var_B0.Width = CVar(CDbl(8500))
  loc_11BC83F: var_B0.Cols = 8
  loc_11BC850: var_B0.Rows = 2
  loc_11BC869: global_84 = CStr(CLng(var_B0.BackColor))
  loc_11BC873: var_94 = 0
  loc_11BC87C: var_D4 = &H64
  loc_11BC888: LateIdCallSt
  loc_11BC893: var_94 = CVar(CLng(1)) 'Long
  loc_11BC898: var_D4 = 0
  loc_11BC8A4: LateIdCallSt
  loc_11BC8AF: var_94 = CVar(CLng(3)) 'Long
  loc_11BC8B4: var_D4 = &H320
  loc_11BC8C0: LateIdCallSt
  loc_11BC8C8: var_94 = 0
  loc_11BC8D4: var_D4 = CVar(CLng(3)) 'Long
  loc_11BC8D9: var_F4 = "Card No"
  loc_11BC8E2: LateIdCallSt
  loc_11BC8ED: var_94 = CVar(CLng(3)) 'Long
  loc_11BC8F8: var_D4 = CVar(CInt(1)) 'Integer
  loc_11BC8FF: LateIdCallSt
  loc_11BC90A: var_94 = CVar(CLng(2)) 'Long
  loc_11BC90F: var_D4 = &HA28
  loc_11BC91B: LateIdCallSt
  loc_11BC923: var_94 = 0
  loc_11BC92F: var_D4 = CVar(CLng(2)) 'Long
  loc_11BC934: var_F4 = "Member Name"
  loc_11BC93D: LateIdCallSt
  loc_11BC948: var_94 = CVar(CLng(2)) 'Long
  loc_11BC953: var_D4 = CVar(CInt(1)) 'Integer
  loc_11BC95A: LateIdCallSt
  loc_11BC965: var_94 = CVar(CLng(4)) 'Long
  loc_11BC96A: var_D4 = &H708
  loc_11BC976: LateIdCallSt
  loc_11BC97E: var_94 = 0
  loc_11BC98A: var_D4 = CVar(CLng(4)) 'Long
  loc_11BC98F: var_F4 = "No Of Occurences"
  loc_11BC998: LateIdCallSt
  loc_11BC9A3: var_94 = CVar(CLng(4)) 'Long
  loc_11BC9AE: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BC9B5: LateIdCallSt
  loc_11BC9C0: var_94 = CVar(CLng(4)) 'Long
  loc_11BC9CB: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BC9D2: LateIdCallSt
  loc_11BC9DD: var_94 = CVar(CLng(5)) 'Long
  loc_11BC9E2: var_D4 = &H578
  loc_11BC9EE: LateIdCallSt
  loc_11BC9F6: var_94 = 0
  loc_11BCA02: var_D4 = CVar(CLng(5)) 'Long
  loc_11BCA07: var_F4 = "Rate"
  loc_11BCA10: LateIdCallSt
  loc_11BCA1B: var_94 = CVar(CLng(5)) 'Long
  loc_11BCA26: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BCA2D: LateIdCallSt
  loc_11BCA38: var_94 = CVar(CLng(5)) 'Long
  loc_11BCA43: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BCA4A: LateIdCallSt
  loc_11BCA55: var_94 = CVar(CLng(6)) 'Long
  loc_11BCA5A: var_D4 = &H578
  loc_11BCA66: LateIdCallSt
  loc_11BCA6E: var_94 = 0
  loc_11BCA7A: var_D4 = CVar(CLng(6)) 'Long
  loc_11BCA7F: var_F4 = "Amount"
  loc_11BCA88: LateIdCallSt
  loc_11BCA93: var_94 = CVar(CLng(6)) 'Long
  loc_11BCA9E: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BCAA5: LateIdCallSt
  loc_11BCAB0: var_94 = CVar(CLng(6)) 'Long
  loc_11BCABB: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BCAC2: LateIdCallSt
  loc_11BCACD: var_94 = CVar(CLng(7)) 'Long
  loc_11BCAD2: var_D4 = 0
  loc_11BCADE: LateIdCallSt
  loc_11BCAE6: var_94 = 0
  loc_11BCAF2: var_D4 = CVar(CLng(7)) 'Long
  loc_11BCAF7: var_F4 = "Charge Type"
  loc_11BCB00: LateIdCallSt
  loc_11BCB0B: var_94 = CVar(CLng(7)) 'Long
  loc_11BCB16: var_D4 = CVar(CInt(1)) 'Integer
  loc_11BCB1D: LateIdCallSt
  loc_11BCB27: Set var_B0 = Nothing 
  loc_11BCB2B: Exit Sub
  loc_11BCB2C: ' Referenced from: 11BC6D8
  loc_11BCB2C: Proc_6_60_E63754(var_B0, var_D4, var_94, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_11BCB31: Exit Sub
End Sub

Public Sub Proc_227_62_E0035C
  'Data Table: 5016DC
  loc_E00354: Proc_227_62_E0035C = 
End Sub

Public Sub Proc_227_63_E44280
  'Data Table: 5016DC
  loc_E4425C: Set var_88 = Me.TopCtrl1
  loc_E44262: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4427B: If (CStr() = "Browse") Then
  loc_E4427E:   Exit Sub
  loc_E4427F: End If
  loc_E4427F: Exit Sub
End Sub

Public Sub Proc_227_64_11A3910
  'Data Table: 5016DC
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_170 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  loc_11A3533: var_A0 = CLng(Me.FGrid.Col)
  loc_11A3543: If (var_A0 = CLng(4)) Then
  loc_11A3552:   Set var_8C = Me.TxtGrid
  loc_11A3558:   Call 0.Method_Proc_227_64_11A39100 (0, var_A4)
  loc_11A3583:   var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A359B:   var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A35C8:   var_160 = CVar(CStr(Format(CVar(Val(var_A4.Text)), "0"))) 'String
  loc_11A35D0:   Set var_174 = Me.FGrid
  loc_11A35D6:   LateIdCallSt
  loc_11A3610:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3619:   Set var_A4 = Me.FGrid
  loc_11A3628:   var_120 = CVar(CLng(var_A4.Col)) 'Long
  loc_11A3642:   var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11A3660:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3668:   var_170 = CVar(CLng(5)) 'Long
  loc_11A36A0:   var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A36A8:   var_214 = CVar(CLng(6)) 'Long
  loc_11A36D9:   var_234 = CVar(CStr(Format(CVar((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A36E1:   Set var_248 = Me.FGrid
  loc_11A36E7:   LateIdCallSt
  loc_11A3721: Else
  loc_11A3728:   If (var_A0 = CLng(5)) Then
  loc_11A3737:     Set var_8C = Me.TxtGrid
  loc_11A373D:     Call 0.Method_Proc_227_64_11A39100 (0, var_A4, var_A8, var_248, var_234, 1, 1)
  loc_11A3745:     var_214 = var_A4.Text
  loc_11A3768:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3780:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A37AD:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_11A37B5:     Set var_174 = Me.FGrid
  loc_11A37BB:     LateIdCallSt
  loc_11A37F5:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A380D:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A3845:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A384D:     var_170 = CVar(CLng(4)) 'Long
  loc_11A3885:     var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A388D:     var_214 = CVar(CLng(6)) 'Long
  loc_11A38BE:     var_234 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A38C6:     Set var_248 = Me.FGrid
  loc_11A38CC:     LateIdCallSt
  loc_11A3903:   End If
  loc_11A3903: End If
  loc_11A3908: Proc_227_64_11A3910 = &HFF
End Sub

Public Sub Proc_227_65_F16670
  'Data Table: 5016DC
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F16586: Set var_8C = Me.Txt
  loc_F1658C: Call 0.Method_Proc_227_65_F16670C (var_8E, var_86)
  loc_F1659C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F165B2:   Set var_8C = Me.Txt
  loc_F165B8:   Call 0.Method_Proc_227_65_F166700 (CInt(var_86), var_98)
  loc_F165C0:   var_98.Text = vbNullString
  loc_F165DC:   Set var_8C = Me.Txt
  loc_F165E2:   Call 0.Method_Proc_227_65_F166700 (CInt(var_86), var_98)
  loc_F165EA:   var_98.Tag = vbNullString
  loc_F165F9: Next var_92 'Byte
  loc_F16612: Me.FGrid.Rows = 1
  loc_F1662F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F16637: Set var_98 = Me.FGrid
  loc_F16666: Me.FGrid.FixedRows = 1
  loc_F1666E: Exit Sub
End Sub

Public Sub Proc_227_66_E9C828(arg_C) 'E9C828
  'Data Table: 5016DC
  Dim var_98 As TextBox
  loc_E9C7AE: Set var_8C = Me.Txt
  loc_E9C7B4: Call 0.Method_Proc_227_66_E9C828C (var_8E, var_86)
  loc_E9C7C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9C7DA:   Set var_8C = Me.Txt
  loc_E9C7E0:   Call 0.Method_Proc_227_66_E9C8280 (CInt(var_86), var_98)
  loc_E9C7E8:   var_98.Enabled = arg_C
  loc_E9C7F7: Next var_92 'Byte
  loc_E9C80A: Set var_8C = Me.Txt
  loc_E9C810: Call 0.Method_Proc_227_66_E9C8280 (CInt(0), var_98)
  loc_E9C818: var_98.Enabled = False
  loc_E9C824: Exit Sub
  loc_E9C825: StAryRecCopy
End Sub

Public Sub Proc_227_67_DFDF1C
  'Data Table: 5016DC
  loc_DFDF18: Exit Sub
End Sub
