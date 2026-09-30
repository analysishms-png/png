VERSION 5.00
Begin VB.Form pMREntry
  Caption = "Material Receive Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "pMREntry.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8880
  ClientHeight = 6870
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MSHFlexGrid FRectGrid
    Left = 3435
    Top = 5055
    Width = 4065
    Height = 1020
    Visible = 0   'False
    TabIndex = 48
  End
  Begin TextBox TxtBarCode
    ForeColor = &HC00000&
    Left = 13425
    Top = 585
    Width = 2670
    Height = 315
    Visible = 0   'False
    TabIndex = 0
    TabStop = 0   'False
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HFF0000&
    Left = 5775
    Top = 1020
    Width = 2685
    Height = 285
    TabIndex = 45
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 14
    ForeColor = &HFF0000&
    Left = 9540
    Top = 1020
    Width = 600
    Height = 285
    TabIndex = 44
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 43
  End
  Begin DataGrid DGPreDoc
    Left = 13410
    Top = 3990
    Width = 6660
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGGod
    Left = 16800
    Top = 1065
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 16
    ForeColor = &HC00000&
    Left = 1560
    Top = 7935
    Width = 1260
    Height = 270
    TabIndex = 38
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    ForeColor = &HFF0000&
    Left = 10170
    Top = 1020
    Width = 555
    Height = 285
    TabIndex = 37
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
  Begin DataGrid DGIndent
    Left = 16605
    Top = 675
    Width = 5970
    Height = 3450
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGParty
    Left = 660
    Top = 8280
    Width = 11805
    Height = 3420
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGVType
    Left = 6000
    Top = 8025
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 885
    Top = 1650
    Width = 3645
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 9
    Left = 5760
    Top = 10665
    Width = 2115
    Height = 240
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 12090
    Top = 1635
    Width = 3720
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 13
    ForeColor = &HC00000&
    Left = 12105
    Top = 1320
    Width = 3705
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 12
    ForeColor = &HC00000&
    Left = 12105
    Top = 1005
    Width = 3705
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 11
    ForeColor = &HFF0000&
    Left = 9555
    Top = 1635
    Width = 1170
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 10
    ForeColor = &HFF0000&
    Left = 5775
    Top = 1650
    Width = 2685
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 8
    ForeColor = &HFF0000&
    Left = 9555
    Top = 1335
    Width = 1170
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 7
    ForeColor = &HFF0000&
    Left = 5775
    Top = 1335
    Width = 2685
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 100
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
    Index = 6
    ForeColor = &HFF0000&
    Left = 915
    Top = 1650
    Width = 3660
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 930
    Top = 2295
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
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
    ForeColor = &HFF0000&
    Left = 3390
    Top = 1020
    Width = 1155
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 12
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
    ForeColor = &HFF0000&
    Left = 900
    Top = 1020
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
    ForeColor = &HFF0000&
    Left = 900
    Top = 1335
    Width = 3660
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1965
    Width = 13050
    Height = 5385
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 18315
    Top = 5820
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGItem
    Left = 12990
    Top = 7305
    Width = 7215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 15
    Top = 7485
    Width = 2745
    Height = 345
    TabIndex = 49
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Bar Code"
    Index = 2
    ForeColor = &HC00000&
    Left = 12480
    Top = 615
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 46
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7830
    Top = 7770
    Width = 2790
    Height = 285
    TabIndex = 42
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 4455
    Top = 7770
    Width = 2880
    Height = 255
    TabIndex = 41
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
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
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 40
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
    Caption = "Total Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 240
    Top = 7935
    Width = 1275
    Height = 240
    TabIndex = 39
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
    Caption = "Indent No."
    Index = 0
    ForeColor = &HC00000&
    Left = 8505
    Top = 1020
    Width = 975
    Height = 240
    TabIndex = 35
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
    Caption = "DocID"
    Index = 12
    ForeColor = &H0&
    Left = 5205
    Top = 10680
    Width = 555
    Height = 210
    Visible = 0   'False
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Approved By"
    Index = 23
    ForeColor = &HC00000&
    Left = 10830
    Top = 1335
    Width = 1215
    Height = 240
    TabIndex = 31
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
    Caption = "Remark"
    Index = 22
    ForeColor = &HC00000&
    Left = 10830
    Top = 1635
    Width = 735
    Height = 240
    TabIndex = 30
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
    Caption = "Inspected By"
    Index = 21
    ForeColor = &HC00000&
    Left = 10815
    Top = 1020
    Width = 1215
    Height = 240
    TabIndex = 29
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
    Caption = "Inv. Date"
    Index = 16
    ForeColor = &HC00000&
    Left = 8505
    Top = 1635
    Width = 840
    Height = 240
    TabIndex = 28
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
    Caption = "Inv. No."
    Index = 15
    ForeColor = &HC00000&
    Left = 4710
    Top = 1635
    Width = 720
    Height = 240
    TabIndex = 27
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
    Caption = "Challan Dt."
    Index = 14
    ForeColor = &HC00000&
    Left = 8475
    Top = 1335
    Width = 1050
    Height = 240
    TabIndex = 26
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
    Caption = "Challan No."
    Index = 11
    ForeColor = &HC00000&
    Left = 4665
    Top = 1335
    Width = 1110
    Height = 240
    TabIndex = 23
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
    Caption = "P.O.No."
    Index = 10
    ForeColor = &HC00000&
    Left = 4665
    Top = 1020
    Width = 720
    Height = 240
    TabIndex = 22
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
    Caption = "Party"
    Index = 7
    ForeColor = &HC00000&
    Left = 150
    Top = 1635
    Width = 495
    Height = 240
    TabIndex = 21
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 19275
    Top = 5175
    Width = 690
    Height = 210
    Visible = 0   'False
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 2865
    Top = 1020
    Width = 435
    Height = 240
    TabIndex = 17
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
    Caption = "Type "
    Index = 4
    ForeColor = &HC00000&
    Left = 165
    Top = 1335
    Width = 525
    Height = 240
    TabIndex = 16
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
    Caption = "MR.No"
    Index = 3
    ForeColor = &HC00000&
    Left = 165
    Top = 1020
    Width = 615
    Height = 240
    TabIndex = 15
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

Attribute VB_Name = "pMREntry"

Private global_116 As Integer
Private global_118 As Integer
Private global_172 As Double
Private global_52 As Integer
Private global_104 As Integer

Private Sub FGPoint_UnknownEvent_9 'EF7364
  'Data Table: 511018
  loc_EF72A4: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF72A7:   Call DGItem_UnknownEvent_9()
  loc_EF72AC: End If
  loc_EF72C8: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF72CB:   Call DGVType_UnknownEvent_9()
  loc_EF72D0: End If
  loc_EF72EC: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EF72EF:   Call DGParty_UnknownEvent_9()
  loc_EF72F4: End If
  loc_EF7310: If (CBool(Me.DGPreDoc.Visible) = &HFF) Then
  loc_EF7313:   Call DGPreDoc_UnknownEvent_9()
  loc_EF7318: End If
  loc_EF7334: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_EF7337:   Call DGGod_UnknownEvent_9()
  loc_EF733C: End If
  loc_EF7358: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_EF735B:   Call DGIndent_UnknownEvent_9()
  loc_EF7360: End If
  loc_EF7360: Exit Sub
End Sub

Private Sub FRectGrid_UnknownEvent_9 'E2BA08
  'Data Table: 511018
  loc_E2B9FB: Call Proc_90_61_10B51E0(CInt(CLng(Me.FRectGrid.Row)))
  loc_E2BA06: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1287204
  'Data Table: 511018
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_108 As TextBox
  loc_1286C3C: Call Proc_90_68_F98C48()
  loc_1286C4D: If (Index = 0) Then
  loc_1286C66:   Me.FGrid.CellBackColor = CVar(CLng(global_88))
  loc_1286C81:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286CC0:   Set var_108 = Me.TxtGrid
  loc_1286CC6:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1286CCE:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1286CFF:   var_114 = CLng(Me.FGrid.Col)
  loc_1286D0F:   If (var_114 = CLng(1)) Then
  loc_1286D25:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286D4D:     global_124 = CStr(Me.FGrid.TextMatrix))
  loc_1286D79:     If (Me.RecordCount > 0) Then
  loc_1286D9F:       Proc_6_137_1192FDC(Me.DGItem, global_64, Index, Me.FGPoint, CVar(CLng(&H11)))
  loc_1286DAD:     End If
  loc_1286DEE:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1286DF1:       Exit Sub
  loc_1286DF2:     End If
  loc_1286E05:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286E0D:     var_E0 = CVar(CLng(1)) 'Long
  loc_1286E40:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1286E49:       Me.MoveFirst
  loc_1286E89:       Proc_6_17_EAAE40(var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H11)))
  loc_1286EB2:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_1286EE2:       If (Me.EOF = &HFF) Then
  loc_1286EEB:         Me.MoveFirst
  loc_1286EF0:       End If
  loc_1286EF0:     End If
  loc_1286EF3:   Else
  loc_1286EFA:     If (var_114 = CLng(&HE)) Then
  loc_1286F10:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286F38:       global_124 = CStr(Me.FGrid.TextMatrix))
  loc_1286F64:       If (Me.RecordCount > 0) Then
  loc_1286F72:         Set var_C0 = Me.FGPoint
  loc_1286F8A:         Proc_6_137_1192FDC(Me.DGGod, global_72, Index, var_C0, CVar(CLng(&H11)), var_98)
  loc_1286F98:       End If
  loc_1286FA1:       var_118 = Me.RecordCount
  loc_1286FD9:       If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1286FDC:         Exit Sub
  loc_1286FDD:       End If
  loc_1286FEA:       Set var_F4 = Me.TxtGrid
  loc_1286FF0:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_160, var_15C, var_98)
  loc_1286FF8:       var_98 = var_108.Height
  loc_128700A:       Set var_AC = Me.TxtGrid
  loc_1287010:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_1287018:       var_114 = var_C0.Top
  loc_1287024:       var_98 = CVar((var_118 + var_160)) 'Single
  loc_1287033:       Me.DGGod.Top = var_98
  loc_1287052:       Set var_AC = Me.TxtGrid
  loc_1287058:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_1287060:       var_98 = var_C0.Left
  loc_1287077:       Me.DGGod.Left = CVar(var_118)
  loc_1287098:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12870A0:       var_E0 = CVar(CLng(&HE)) 'Long
  loc_12870D3:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12870DC:         Me.MoveFirst
  loc_128711C:         Proc_6_17_EAAE40(var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)))
  loc_1287145:         Me.Find CStr("Code =" & var_12C), 0, 1
  loc_1287175:         If (Me.EOF = &HFF) Then
  loc_128717E:           Me.MoveFirst
  loc_1287183:         End If
  loc_1287183:       End If
  loc_1287186:     Else
  loc_128718D:       If Not (var_114 = CLng(5)) Then
  loc_1287197:         If Not (var_114 = CLng(&HB)) Then
  loc_12871A1:           If Not (var_114 = CLng(6)) Then
  loc_12871AB:             If Not (var_114 = CLng(8)) Then
  loc_12871B5:               If Not (var_114 = CLng(7)) Then
  loc_12871BF:                 If (var_114 = CLng(4)) Then
  loc_12871C2:                 End If
  loc_12871C2:               End If
  loc_12871C2:             End If
  loc_12871C2:           End If
  loc_12871C2:         End If
  loc_12871DD:         If (Me.TxtBarCode.Visible = 0) Then
  loc_12871E9:           If (global_118 = 0) Then
  loc_12871F4:             var_110 = "{Home}+{End}"
  loc_12871FA:             Proc_303_0_FBACC8(CStr("Code =" & var_12C), 0, var_15C)
  loc_1287202:           End If
  loc_1287202:         End If
  loc_1287202:       End If
  loc_1287202:     End If
  loc_1287202:   End If
  loc_1287202: End If
  loc_1287202: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13EAD1C
  'Data Table: 511018
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_98 As DataGrid
  loc_13EA30F: var_86 = Shift
  loc_13EA31E: If (KeyCode = 0) Then
  loc_13EA32B:   If (CLng(Shift) = &H1B) Then
  loc_13EA33B:     Set var_8C = Me.TxtGrid
  loc_13EA341:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_13EA349:     var_88 = var_90.Tag
  loc_13EA35B:     Set var_98 = Me.TxtGrid
  loc_13EA361:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_13EA369:     var_9C.Text = var_94
  loc_13EA385:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13EA38A:     Call Proc_90_68_F98C48(arg_14)
  loc_13EA393:     Set var_8C = Me.FGrid
  loc_13EA3B0:     Set var_8C = Me.TxtGrid
  loc_13EA3B6:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_13EA3BE:     var_90.Visible = FGrid.DispID_8001
  loc_13EA3CA:     Exit Sub
  loc_13EA3CB:   End If
  loc_13EA3EE:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_13EA3FC:     If (global_164 = "Yes") Then
  loc_13EA41C:       Set var_9C = Me.FGPoint
  loc_13EA427:       Set var_98 = Nothing
  loc_13EA455:       Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_13EA46E:     Else
  loc_13EA48B:       Set var_9C = Me.FGPoint
  loc_13EA4C4:       Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 2, Nothing)
  loc_13EA4DA:     End If
  loc_13EA4E3:     var_C8 = Me.RecordCount
  loc_13EA533:     If ((var_C8 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13EA541:       Set var_90 = Me.FGPoint
  loc_13EA559:       Proc_6_138_106E830(Me.DGItem, global_64, KeyCode, var_90, var_9C, 0)
  loc_13EA567:     End If
  loc_13EA57A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_CC, 1, Me.TxtGrid)
  loc_13EA582:     var_9C = var_9C.Height
  loc_13EA594:     Set var_8C = Me.TxtGrid
  loc_13EA59A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_13EA5A2:     0 = var_90.Top
  loc_13EA5AE:     var_DC = CVar((var_C8 + var_CC)) 'Single
  loc_13EA5BD:     Me.DGItem.Top = var_DC
  loc_13EA5DC:     Set var_8C = Me.TxtGrid
  loc_13EA5E2:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_13EA5EA:     var_B0 = var_90.Left
  loc_13EA601:     Me.DGItem.Left = CVar(var_C8)
  loc_13EA619:     If (CLng(Shift) = &HD) Then
  loc_13EA622:       Call Proc_90_63_175FF04(KeyCode, var_B2)
  loc_13EA62D:       If (var_B2 = &HFF) Then
  loc_13EA67A:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118)
  loc_13EA68A:       End If
  loc_13EA68A:     End If
  loc_13EA68D:   Else
  loc_13EA694:     If (var_B0 = CLng(&HE)) Then
  loc_13EA6ED:       Proc_6_69_134A630(Me.DGGod, Me.TxtGrid, KeyCode, global_72, Shift, &HFF, 1, Nothing)
  loc_13EA75C:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13EA782:         Proc_6_138_106E830(Me.DGGod, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13EA790:       End If
  loc_13EA79A:       If (CLng(Shift) = &HD) Then
  loc_13EA7A3:         Call Proc_90_63_175FF04(KeyCode, var_B2, CByte((CInt(&HE) + 1)), 0)
  loc_13EA7AE:         If (var_B2 = &HFF) Then
  loc_13EA7BC:           If (global_180 = "YES") Then
  loc_13EA809:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)))
  loc_13EA81C:           Else
  loc_13EA866:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0, 0)
  loc_13EA876:           End If
  loc_13EA876:         End If
  loc_13EA876:       End If
  loc_13EA879:     Else
  loc_13EA880:       If Not (var_B0 = CLng(6)) Then
  loc_13EA88A:         If (var_B0 = CLng(4)) Then
  loc_13EA88D:         End If
  loc_13EA8CD:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13EA8D6:           Call Proc_90_63_175FF04(KeyCode, var_B2, 0, 0, &HF)
  loc_13EA8E1:           If (var_B2 = &HFF) Then
  loc_13EA92E:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EA93E:           End If
  loc_13EA93E:         End If
  loc_13EA941:       Else
  loc_13EA948:         If Not (var_B0 = CLng(5)) Then
  loc_13EA952:           If (var_B0 = CLng(8)) Then
  loc_13EA955:           End If
  loc_13EA995:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13EA99E:             Call Proc_90_63_175FF04(KeyCode, var_B2, 0, 0)
  loc_13EA9A9:             If (var_B2 = &HFF) Then
  loc_13EA9F6:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EAA06:             End If
  loc_13EAA06:           End If
  loc_13EAA09:         Else
  loc_13EAA10:           If (var_B0 = CLng(7)) Then
  loc_13EAA53:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13EAA5C:               Call Proc_90_63_175FF04(KeyCode, var_B2, 0, 0)
  loc_13EAA67:               If (var_B2 = &HFF) Then
  loc_13EAAB4:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EAAC4:               End If
  loc_13EAAC4:             End If
  loc_13EAAC7:           Else
  loc_13EAACE:             If (var_B0 = CLng(&HB)) Then
  loc_13EAB11:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13EAB1A:                 Call Proc_90_63_175FF04(KeyCode, var_B2, &HB, 0)
  loc_13EAB25:                 If (var_B2 = &HFF) Then
  loc_13EAB72:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EAB82:                 End If
  loc_13EAB82:               End If
  loc_13EAB85:             Else
  loc_13EAB8C:               If (var_B0 = CLng(2)) Then
  loc_13EAB99:                 If (CLng(Shift) = &HD) Then
  loc_13EABA2:                   Call Proc_90_63_175FF04(KeyCode, var_B2, &HE, 0)
  loc_13EABAD:                   If (var_B2 = &HFF) Then
  loc_13EABFA:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EAC0A:                   End If
  loc_13EAC0A:                 End If
  loc_13EAC0D:               Else
  loc_13EAC14:                 If (var_B0 = CLng(&HF)) Then
  loc_13EAC21:                   If (CLng(Shift) = &HD) Then
  loc_13EAC2A:                     Call Proc_90_63_175FF04(KeyCode, var_B2, 5, 0)
  loc_13EAC35:                     If (var_B2 = &HFF) Then
  loc_13EAC82:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EAC92:                     End If
  loc_13EAC92:                   End If
  loc_13EAC95:                 Else
  loc_13EAC9C:                   If (var_B0 = CLng(&H10)) Then
  loc_13EACA9:                     If (CLng(Shift) = &HD) Then
  loc_13EACB2:                       Call Proc_90_63_175FF04(KeyCode, var_B2, &H10, 0)
  loc_13EACBD:                       If (var_B2 = &HFF) Then
  loc_13EAD0A:                         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EAD1A:                       End If
  loc_13EAD1A:                     End If
  loc_13EAD1A:                   End If
  loc_13EAD1A:                 End If
  loc_13EAD1A:               End If
  loc_13EAD1A:             End If
  loc_13EAD1A:           End If
  loc_13EAD1A:         End If
  loc_13EAD1A:       End If
  loc_13EAD1A:     End If
  loc_13EAD1A:   End If
  loc_13EAD1A: End If
  loc_13EAD1A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '114693C
  'Data Table: 511018
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  Dim arg_10 As Integer
  loc_11465A3: Proc_6_58_E06050(arg_10)
  loc_11465B4: If (KeyAscii = 0) Then
  loc_11465DA:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_11465F9:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1146607:       If (global_164 = "Yes") Then
  loc_1146616:         Set var_94 = Me.TxtGrid
  loc_114661C:         Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, var_B0)
  loc_1146624:         var_A8 = var_AC.Text
  loc_114663E:         var_88 = arg_10
  loc_1146645:         Set var_AC = Me.TxtGrid
  loc_1146650:         var_B0 = "BarCode"
  loc_114666B:         Proc_6_89_1470B00(var_AC, KeyAscii, global_64, arg_10, var_B0)
  loc_1146686:         Set var_94 = Me.TxtGrid
  loc_114668C:         Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, var_B0, 0)
  loc_1146694:         var_88 = var_AC.Text
  loc_11466AC:         If (Len(var_B0) = CLng(CInt(Len(var_B0)))) Then
  loc_11466C6:           If (Me.AbsolutePosition > 0) Then
  loc_11466DA:             var_8C = Me.AbsolutePosition
  loc_11466E0:           Else
  loc_11466E5:             var_8C = 1
  loc_11466E8:           End If
  loc_11466EB:           arg_10 = var_88
  loc_1146718:           Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_114673E:           If (Me.AbsolutePosition <= 0) Then
  loc_114674A:             Me.AbsolutePosition = var_8C
  loc_114674F:           End If
  loc_114674F:         End If
  loc_1146752:       Else
  loc_114677C:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_114678B:       End If
  loc_11467AE:       Proc_6_138_106E830(Me.DGItem, global_64, KeyAscii, Me.FGPoint, arg_10)
  loc_11467BC:     End If
  loc_11467BF:   Else
  loc_11467C6:     If (var_A8 = CLng(&HE)) Then
  loc_11467E5:       If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_1146812:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_72, arg_10, "Name")
  loc_114682C:         Set var_AC = Me.FGPoint
  loc_1146844:         Proc_6_138_106E830(Me.DGGod, global_72, KeyAscii, var_AC, 0)
  loc_1146852:       End If
  loc_1146855:     Else
  loc_114685C:       If Not (var_A8 = CLng(5)) Then
  loc_1146866:         If Not (var_A8 = CLng(6)) Then
  loc_1146870:           If Not (var_A8 = CLng(8)) Then
  loc_114687A:             If (var_A8 = CLng(7)) Then
  loc_114687D:             End If
  loc_114687D:           End If
  loc_114687D:         End If
  loc_1146887:         Set var_94 = Me.TxtGrid
  loc_114688D:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_8C)
  loc_11468A8:         Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_11468B7:       Else
  loc_11468BE:         If Not (var_A8 = CLng(&HB)) Then
  loc_11468C8:           If (var_A8 = CLng(4)) Then
  loc_11468CB:           End If
  loc_11468D5:           Set var_94 = Me.TxtGrid
  loc_11468DB:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_8C)
  loc_11468F6:           Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_1146905:         Else
  loc_114690C:           If (var_A8 = CLng(2)) Then
  loc_114691E:             Set var_94 = Me.TxtGrid
  loc_1146924:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H23)
  loc_114692C:             var_AC.MaxLength = 2
  loc_1146938:           End If
  loc_1146938:         End If
  loc_1146938:       End If
  loc_1146938:     End If
  loc_1146938:   End If
  loc_1146938: End If
  loc_1146938: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F9B04C
  'Data Table: 511018
  Dim var_A0 As Long
  loc_F9AED0: On Error Goto loc_F9B044
  loc_F9AEDF: If (KeyCode = 0) Then
  loc_F9AEF5:   var_A0 = CLng(Me.FGrid.Col)
  loc_F9AF05:   If (var_A0 = CLng(1)) Then
  loc_F9AF2B:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F9AF3C:       Call TxtGrid_KeyDown(KeyCode, global_116)
  loc_F9AF4C:       If (global_164 = "Yes") Then
  loc_F9AF79:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_64, Shift, "BarCode")
  loc_F9AF8B:       Else
  loc_F9AFB5:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_F9AFC4:       End If
  loc_F9AFC4:     End If
  loc_F9AFC7:   Else
  loc_F9AFCE:     If (var_A0 = CLng(&HE)) Then
  loc_F9AFF4:       If ((Shift <> &HD) And (CBool(Me.DGGod.Visible) = 0)) Then
  loc_F9B005:         Call TxtGrid_KeyDown(KeyCode, global_116)
  loc_F9B034:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_72, Shift, "Name", &HFF)
  loc_F9B043:       End If
  loc_F9B043:     End If
  loc_F9B043:   End If
  loc_F9B043: End If
  loc_F9B043: Exit Sub
  loc_F9B044: ' Referenced from: F9AED0
  loc_F9B044: Proc_6_60_E63754(0, &HFF, &HFF)
  loc_F9B049: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E3546C
  'Data Table: 511018
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E3543F: var_86 = Cancel
  loc_E35448: If (var_86 = 0) Then
  loc_E35451:   Call Proc_90_63_175FF04(Cancel, var_88)
  loc_E3545A:   arg_10 = Not(var_88)
  loc_E35460: Else
  loc_E35468:   If (var_86 = CInt(&HF)) Then
  loc_E3546B:   End If
  loc_E3546B: End If
  loc_E3546B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA1ABC
  'Data Table: 511018
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA1A57: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_88)) Then
  loc_EA1A6D:   Me.FGrid.Col = 1
  loc_EA1A75: End If
  loc_EA1A88: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA1A9B: Set var_88 = Me.TxtGrid
  loc_EA1AA1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1AA9: var_BC.Visible = False
  loc_EA1AB5: Call Proc_90_68_F98C48()
  loc_EA1ABA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'EA10E4
  'Data Table: 511018
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA107C: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_EA108E:   Me.FRectGrid.Visible = False
  loc_EA1096: End If
  loc_EA10A2: Set var_88 = Me.TxtGrid
  loc_EA10A8: Call 0.Method_FGrid_UnknownEvent_10 (0, var_BC)
  loc_EA10C2: If (var_BC.Visible = 0) Then
  loc_EA10DB:   Me.FGrid.BackColorSel = CVar(CLng(global_88))
  loc_EA10E3: End If
  loc_EA10E3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF24C
  'Data Table: 511018
  loc_DFF244: Call Proc_90_62_E40144()
  loc_DFF249: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1120F80
  'Data Table: 511018
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_1120C24: Set var_88 = Me.TopCtrl1
  loc_1120C2A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1120C6F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1120C78:   Call Form_KeyDown(Cancel, arg_10)
  loc_1120C7D: End If
  loc_1120C81: Set var_88 = Me.TopCtrl1
  loc_1120C87: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1120CA0: If (CStr() = "Browse") Then
  loc_1120CA3:   Exit Sub
  loc_1120CA4: End If
  loc_1120D18: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1120D31:   Me.FGrid.CellBackColor = CVar(CLng(global_88))
  loc_1120D41:   var_9C = "+{Tab}"
  loc_1120D47:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1120D51:   Cancel = 0
  loc_1120D57: Else
  loc_1120D61:   var_B0 = Me.FGrid.Rows
  loc_1120DAE:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1120DC7:     Me.FGrid.CellBackColor = CVar(CLng(global_88))
  loc_1120DDD:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_1120DE7:     Cancel = 0
  loc_1120DEA:   End If
  loc_1120DEA: End If
  loc_1120DF0: global_116 = Cancel
  loc_1120E16: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1120E3A: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1120E50:   var_EC = CLng(Me.FGrid.Col)
  loc_1120E60:   If Not (var_EC = CLng(1)) Then
  loc_1120E6A:     If Not (var_EC = CLng(&HE)) Then
  loc_1120E74:       If (var_EC = CLng(2)) Then
  loc_1120E77:       End If
  loc_1120E77:     End If
  loc_1120E7A:   Else
  loc_1120E81:     If Not (var_EC = CLng(5)) Then
  loc_1120E8B:       If Not (var_EC = CLng(6)) Then
  loc_1120E95:         If Not (var_EC = CLng(7)) Then
  loc_1120E9F:           If (var_EC = CLng(4)) Then
  loc_1120EA2:           End If
  loc_1120EA2:         End If
  loc_1120EA2:       End If
  loc_1120EE2:       LateIdCallSt
  loc_1120EFA:       Call Proc_90_73_118D218(Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_1120F02:     Else
  loc_1120F09:       If (var_EC = CLng(&HB)) Then
  loc_1120F4C:         LateIdCallSt
  loc_1120F64:         Call Proc_90_73_118D218(Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), global_116)
  loc_1120F69:       End If
  loc_1120F69:     End If
  loc_1120F69:   End If
  loc_1120F69: End If
  loc_1120F6F: If (Cancel = &HD) Then
  loc_1120F77:   global_118 = 0
  loc_1120F7A: End If
  loc_1120F7C: Cancel = 0
  loc_1120F7F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11380
  'Data Table: 511018
  loc_E11371: Call FGrid_UnknownEvent_C()
  loc_E1137B: global_118 = 0
  loc_E1137E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '14387DC
  'Data Table: 511018
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A8 As TextBox
  Dim var_DC As Variant
  Dim var_10C As Variant
  Dim var_11E As Integer
  Dim var_A4 As Variant
  Dim var_118 As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_1C8 As Variant
  loc_1437D1C: Set var_88 = Me.TopCtrl1
  loc_1437D22: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1437D3B: If (CStr() = "Browse") Then
  loc_1437D3E:   Exit Sub
  loc_1437D3F: End If
  loc_1437D52: var_A0 = CLng(Me.FGrid.Col)
  loc_1437D62: If (var_A0 = CLng(1)) Then
  loc_1437D69:   Set var_88 = Me.TopCtrl1
  loc_1437D6F:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A0)
  loc_1437D91:   Set var_A4 = Me.Txt
  loc_1437D97:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A8)
  loc_1437DDC:   If CBool((CStr() = "Edit") And (Trim(CVar(var_A8.Tag)) <> "MRCR")) Then
  loc_1437DE3:     Set var_118 = Me.FGrid
  loc_1437E07:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1437E10:     var_11E = Asc(var_9C)
  loc_1437E34:     Set var_A4 = var_118
  loc_1437E46:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0)
  loc_1437E6E:     Set var_88 = Me.TxtGrid
  loc_1437E74:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_1437E7C:     var_11E = var_A4.Text
  loc_1437E95:     If (Len(var_9C) <= 1) Then
  loc_1437EA4:       Set var_88 = Me.TxtGrid
  loc_1437EAA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_1437EB2:       0 = var_A4.Text
  loc_1437EC3:       Set var_A8 = Me.TxtGrid
  loc_1437EC9:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1437ED1:       var_118.Text = var_9C
  loc_1437EE4:     End If
  loc_1437EF0:     Set var_88 = Me.TxtGrid
  loc_1437EF6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1437F10:     Set var_A8 = Me.TxtGrid
  loc_1437F16:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1437F1E:     var_118.SelStart = Len(var_A4.Text)
  loc_1437F34:   Else
  loc_1437F38:     Set var_88 = Me.TopCtrl1
  loc_1437F3E:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_11E)
  loc_1437F57:     If (CStr() = "Add") Then
  loc_1437F5E:       Set var_118 = Me.FGrid
  loc_1437F82:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1437F8B:       var_11E = Asc(var_9C)
  loc_1437FAF:       Set var_A4 = var_118
  loc_1437FC1:       Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0)
  loc_1437FE9:       Set var_88 = Me.TxtGrid
  loc_1437FEF:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_1437FF7:       var_11E = var_A4.Text
  loc_1438010:       If (Len(var_9C) <= 1) Then
  loc_143801F:         Set var_88 = Me.TxtGrid
  loc_1438025:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_143802D:         0 = var_A4.Text
  loc_143803E:         Set var_A8 = Me.TxtGrid
  loc_1438044:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_143804C:         var_118.Text = var_9C
  loc_143805F:       End If
  loc_143806B:       Set var_88 = Me.TxtGrid
  loc_1438071:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_143808B:       Set var_A8 = Me.TxtGrid
  loc_1438091:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1438099:       var_118.SelStart = Len(var_A4.Text)
  loc_14380AF:     Else
  loc_14380B9:       If (CLng(Cancel) = &HD) Then
  loc_14380CE:         Me.FGrid.Col = CVar(CLng(2))
  loc_14380D6:       End If
  loc_14380D6:     End If
  loc_14380D6:   End If
  loc_14380DA:   Set var_88 = Me.TopCtrl1
  loc_14380E0:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_11E)
  loc_1438102:   Set var_A4 = Me.Txt
  loc_1438108:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A8)
  loc_1438110:   var_AC = var_A8.Tag
  loc_143814D:   If CBool((CStr() = "Edit") And (Trim(CVar(var_AC)) = "MRCR")) Then
  loc_1438154:     Set var_118 = Me.FGrid
  loc_1438178:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1438181:     var_11E = Asc(var_9C)
  loc_14381A5:     Set var_A4 = var_118
  loc_14381B7:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0)
  loc_14381DF:     Set var_88 = Me.TxtGrid
  loc_14381E5:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_14381ED:     var_11E = var_A4.Text
  loc_1438206:     If (Len(var_9C) <= 1) Then
  loc_1438215:       Set var_88 = Me.TxtGrid
  loc_143821B:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_1438223:       0 = var_A4.Text
  loc_1438234:       Set var_A8 = Me.TxtGrid
  loc_143823A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1438242:       var_118.Text = var_9C
  loc_1438255:     End If
  loc_1438261:     Set var_88 = Me.TxtGrid
  loc_1438267:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1438281:     Set var_A8 = Me.TxtGrid
  loc_1438287:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_143828F:     var_118.SelStart = Len(var_A4.Text)
  loc_14382A2:   End If
  loc_14382A5: Else
  loc_14382AC:   If (var_A0 = CLng(&HE)) Then
  loc_14382E0:     var_11E = Asc(CStr(Ucase(Chr(CLng(Cancel)))))
  loc_1438316:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_1438335:   Else
  loc_143833C:     If (var_A0 = CLng(2)) Then
  loc_1438370:       var_11E = Asc(CStr(Ucase(Chr(CLng(Cancel)))))
  loc_14383A6:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, var_11E)
  loc_14383C5:     Else
  loc_14383CC:       If Not (var_A0 = CLng(5)) Then
  loc_14383D6:         If Not (var_A0 = CLng(&HB)) Then
  loc_14383E0:           If Not (var_A0 = CLng(6)) Then
  loc_14383EA:             If (var_A0 = CLng(7)) Then
  loc_14383ED:             End If
  loc_14383ED:           End If
  loc_14383ED:         End If
  loc_143842B:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_1438440:       Else
  loc_1438447:         If (var_A0 = CLng(4)) Then
  loc_1438467:           If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_143847D:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1438485:             var_130 = CVar(CLng(4)) 'Long
  loc_14384AA:             global_172 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14384BE:           End If
  loc_14384C2:           Set var_88 = Me.TopCtrl1
  loc_14384C8:           Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_172)
  loc_14384E1:           If (CStr(var_130) = "Add") Then
  loc_1438507:             Set var_A8 = Me.TxtGrid
  loc_1438522:             Proc_6_63_110B734(Me, Me.FGrid, var_A8, 0, &HFF, Cancel, 0)
  loc_1438537:           Else
  loc_143853B:             Set var_88 = Me.TopCtrl1
  loc_1438541:             Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_DC)
  loc_1438563:             Set var_A4 = Me.Txt
  loc_1438569:             Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A8, var_AC, (CStr(0) = "Edit"), var_11E)
  loc_1438571:             var_11E = var_A8.Tag
  loc_1438591:             var_10C = 0 And (Trim(CVar(var_AC)) <> "MRCR")
  loc_14385A8:             var_130 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14385D6:             var_1A4 = CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)
  loc_14385ED:             var_1C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1438652:             If CBool(CVar(CLng(&H15)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1438693:               Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_14386A5:             End If
  loc_14386A5:           End If
  loc_14386A8:         Else
  loc_14386AF:           If (var_A0 = CLng(&HF)) Then
  loc_1438719:             Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))), 0)
  loc_1438738:           Else
  loc_143873F:             If (var_A0 = CLng(&H10)) Then
  loc_14387A9:               Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))), 0, Asc(CStr(Ucase(Chr(CLng(Cancel))))))
  loc_14387C5:             End If
  loc_14387C5:           End If
  loc_14387C5:         End If
  loc_14387C5:       End If
  loc_14387C5:     End If
  loc_14387C5:   End If
  loc_14387C5: End If
  loc_14387CF: If (CLng(Cancel) <> &HD) Then
  loc_14387D7:   global_118 = &HFF
  loc_14387DA: End If
  loc_14387DA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10F2AF0
  'Data Table: 511018
  Dim var_8C As MSHFlexGrid
  Dim var_A8 As TextBox
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_1A4 As Boolean
  Dim var_160 As Integer
  Dim unk_511047 As Connection15
  Dim var_14C As Recordset15
  Dim var_150 As Fields15
  Dim var_164 As Field20
  loc_10F2808: Set var_8C = Me.TopCtrl1
  loc_10F280E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10F2827: If (CStr() = "Browse") Then
  loc_10F282A:   Exit Sub
  loc_10F282B: End If
  loc_10F2848: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10F284B:   Exit Sub
  loc_10F284C: End If
  loc_10F285D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10F287F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10F2890:     Set var_A4 = Me.Txt
  loc_10F2896:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(9), var_A8)
  loc_10F28B6:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F28CD:     var_118 = Me.FGrid.TextMatrix)
  loc_10F28DD:     Set var_8C = Me.TopCtrl1
  loc_10F28E3:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_118)
  loc_10F28F3:     var_1A4 = (CStr(CVar(CLng(&H11))) = "Edit")
  loc_10F28FD:     var_160 = 0
  loc_10F293C:     unk_511047.Execute "Select Count(*) from Purch2 where ContraDocId='" & var_A8.Text & "' and Item='" & CStr(var_118) & "'", var_148, -1
  loc_10F2944:     var_14C = var_14C.Fields
  loc_10F294C:     var_160 = var_150.Item(var_150)
  loc_10F2954:     var_164 = var_164.Value
  loc_10F299F:     If CBool(var_174 And (var_174 > 0)) Then
  loc_10F29A2:       Exit Sub
  loc_10F29A3:     End If
  loc_10F29DA:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_118, var_148) = 6) Then
  loc_10F29FC:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10F2A12:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F2A1B:         Set var_A4 = Me.FGrid
  loc_10F2A36:       Else
  loc_10F2A49:         Me.FGrid.Rows = 1
  loc_10F2A66:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10F2A6E:         Set var_A4 = Me.FGrid
  loc_10F2A9D:         Me.FGrid.FixedRows = 1
  loc_10F2AA5:       End If
  loc_10F2AA5:     End If
  loc_10F2AA8:   Else
  loc_10F2AC9:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_118, var_148)
  loc_10F2AD9:   End If
  loc_10F2ADD:   Set var_8C = Me.FGrid
  loc_10F2AEE: End If
  loc_10F2AEE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'FEFC08
  'Data Table: 511018
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_110 As Variant
  loc_FEFA2F: If (global_164 = "Yes") Then
  loc_FEFA38:   If (Cancel = 2) Then
  loc_FEFA3F:     Set var_88 = Me.FGrid
  loc_FEFA5E:     Me.FRectGrid.Visible = True
  loc_FEFA79:     Me.FRectGrid.Rows = 0
  loc_FEFA81:     var_98 = "Print Receipt"
  loc_FEFA8B:     Set var_88 = Me.FRectGrid
  loc_FEFA9C:     var_98 = 0
  loc_FEFAA5:     var_B8 = &H12C
  loc_FEFAB2:     Set var_88 = Me.FRectGrid
  loc_FEFAB8:     LateIdCallSt
  loc_FEFAC3:     var_98 = 0
  loc_FEFAF2:     Me.FRectGrid.Height = CVar(CDbl(CLng(Me.FRectGrid.RowHeight))))
  loc_FEFB01:     var_98 = 0
  loc_FEFB0A:     var_B8 = &H5DC
  loc_FEFB17:     Set var_88 = Me.FRectGrid
  loc_FEFB1D:     LateIdCallSt
  loc_FEFB3B:     Me.FRectGrid.Width = CVar(CDbl(1510))
  loc_FEFB43:     var_98 = 0
  loc_FEFB62:     var_B8 = 0
  loc_FEFBAA:     var_110 = CVar((((CDbl(Me.FGrid.Top) + arg_18) + CDbl(CLng(Me.FRectGrid.RowHeight)))) - (CDbl(CLng(Me.FRectGrid.RowHeight))) / CDbl(4)))) 'Single
  loc_FEFBB9:     Me.FRectGrid.Top = var_110
  loc_FEFBE9:     var_98 = CVar((CDbl(Me.FGrid.Left) + arg_14)) 'Single
  loc_FEFBF8:     Me.FRectGrid.Left = var_98
  loc_FEFC07:   End If
  loc_FEFC07: End If
  loc_FEFC07: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E542AC
  'Data Table: 511018
  loc_E54290: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E542A2:   Me.FRectGrid.Visible = False
  loc_E542AA: End If
  loc_E542AA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F590
  'Data Table: 511018
  Dim var_8C As TextBox
  loc_E3F564: Call Proc_90_68_F98C48()
  loc_E3F574: Set var_88 = Me.TxtGrid
  loc_E3F57A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F582: var_8C.Visible = False
  loc_E3F58E: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '1106588
  'Data Table: 511018
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_110625B: Me.DGItem.Visible = False
  loc_110627A: If (Me.RecordCount > 0) Then
  loc_11062B7:   Set var_B4 = Me.TxtGrid
  loc_11062BD:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_11062C5:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11062EE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11062F6:   var_EC = CVar(CLng(1)) 'Long
  loc_1106329:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1106331:   Set var_B8 = Me.FGrid
  loc_1106337:   LateIdCallSt
  loc_1106366:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110636E:   var_EC = CVar(CLng(&H11)) 'Long
  loc_11063A1:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_11063A9:   Set var_B8 = Me.FGrid
  loc_11063AF:   LateIdCallSt
  loc_11063DE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11063E6:   var_EC = CVar(CLng(3)) 'Long
  loc_1106419:   var_11C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1106421:   Set var_B8 = Me.FGrid
  loc_1106427:   LateIdCallSt
  loc_1106456:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110645E:   var_EC = CVar(CLng(&H12)) 'Long
  loc_1106491:   var_11C = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1106499:   Set var_B8 = Me.FGrid
  loc_110649F:   LateIdCallSt
  loc_11064CE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11064D6:   var_EC = CVar(CLng(&H13)) 'Long
  loc_11064F8:   var_B0 = Me.Fields.Item("SNo")
  loc_1106509:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_1106511:   Set var_B8 = Me.FGrid
  loc_1106517:   LateIdCallSt
  loc_1106533: End If
  loc_110653F: Set var_A8 = Me.TxtGrid
  loc_1106545: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_110654D: var_B8 = var_B0.Visible
  loc_110655F: If (var_12E = &HFF) Then
  loc_110656B:   Set var_A8 = Me.TxtGrid
  loc_1106571:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_1106579:   var_B0.SetFocus
  loc_1106585: End If
  loc_1106585: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E75BCC
  'Data Table: 511018
  loc_E75B8A: Proc_6_153_E91D24(Me.DGItem, arg_14)
  loc_E75BA1: Set var_8C = Me.FGPoint
  loc_E75BBB: Proc_6_138_106E830(Me.DGItem, global_64, 0)
  loc_E75BC9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1362C54
  'Data Table: 511018
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_C4 As Variant
  loc_1362416: Set var_88 = Me.Txt
  loc_136241C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_136242A: Proc_6_74_E23240(var_8C)
  loc_1362436: Call Proc_90_68_F98C48(var_8C)
  loc_136243E: var_92 = Index
  loc_1362449: If (var_92 = CInt(0)) Then
  loc_136245F:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_1362478:   Set var_88 = Me.Txt
  loc_136247E:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1362486:   var_B8 = var_8C.Text
  loc_1362491:   global_120 = var_B8
  loc_13624B6:   If (Me.RecordCount > 0) Then
  loc_13624C4:     Set var_8C = Me.FGPoint
  loc_13624DC:     Proc_6_137_1192FDC(Me.DGVType, global_60, Index)
  loc_13624EA:   End If
  loc_1362538:   Set var_88 = Me.Txt
  loc_136253E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8)
  loc_1362546:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_136255E:   If (var_8C Or (var_B8 = vbNullString)) Then
  loc_1362561:     Exit Sub
  loc_1362562:   End If
  loc_136256F:   Set var_88 = Me.Txt
  loc_1362575:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_136257D:   var_B8 = var_8C.Text
  loc_1362585:   var_D4 = CVar(var_B8) 'String
  loc_13625A6:   var_C4 = Me.Fields.Item("Name")
  loc_13625CA:   If CBool(var_D4 <> var_C4.Value) Then
  loc_13625D3:     Me.MoveFirst
  loc_13625F8:     Set var_88 = Me.Txt
  loc_13625FE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Name =")
  loc_1362606:     0 = var_8C.Text
  loc_1362614:     Proc_6_17_EAAE40(var_D4, CVar(var_B8), 1)
  loc_136262A:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1362642:   End If
  loc_1362645: Else
  loc_136264D:   If (var_92 = CInt(4)) Then
  loc_136265E:     Set var_88 = Me.Txt
  loc_1362664:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1362683:     Me.DGPreDoc.Left = CVar(var_8C.Left)
  loc_136269F:     Set var_90 = Me.Txt
  loc_13626A5:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_C4)
  loc_13626C0:     Set var_88 = Me.Txt
  loc_13626C6:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_13626DE:     var_B4 = CVar(((var_8C.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_13626ED:     Me.DGPreDoc.Top = CVar(var_8C.Left)
  loc_1362716:     If (Me.RecordCount > 0) Then
  loc_1362724:       Set var_8C = Me.FGPoint
  loc_136273C:       Proc_6_137_1192FDC(Me.DGPreDoc, global_84)
  loc_136274A:     End If
  loc_1362798:     Set var_88 = Me.Txt
  loc_136279E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8)
  loc_13627A6:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13627BE:     If (Index Or (var_B8 = vbNullString)) Then
  loc_13627C1:       Exit Sub
  loc_13627C2:     End If
  loc_13627CF:     Set var_88 = Me.Txt
  loc_13627D5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13627DD:     var_B8 = var_8C.Text
  loc_13627EF:     var_B4 = "Name"
  loc_136282A:     If CBool(CVar(var_B8) <> Me.Fields.Item(var_B4).Value) Then
  loc_1362833:       Me.MoveFirst
  loc_1362856:       Set var_88 = Me.Txt
  loc_136285C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Name ='")
  loc_1362864:       0 = var_8C.Text
  loc_136287D:       Me.Find 1 & var_B8 & "'", var_B4, var_8C
  loc_1362892:     End If
  loc_136289B:     CVarUnk
  loc_13628A0:     VerifyVarObj
  loc_13628A6:     Set var_88 = Me.DGPreDoc
  loc_13628AC:     LateIdStAd
  loc_13628BD:   Else
  loc_13628C5:     If (var_92 = CInt(&HE)) Then
  loc_13628DB:       Me.DGIndent.Tag = CVar(CStr(Index))
  loc_13628FD:       If (Me.RecordCount > 0) Then
  loc_136290B:         Set var_8C = Me.FGPoint
  loc_1362923:         Proc_6_137_1192FDC(Me.DGIndent, global_76, Index)
  loc_1362931:       End If
  loc_1362985:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_136298D:       var_8C = var_8C.Text
  loc_13629A5:       If (Me.Txt Or (var_B8 = vbNullString)) Then
  loc_13629A8:         Exit Sub
  loc_13629A9:       End If
  loc_13629B6:       Set var_88 = Me.Txt
  loc_13629BC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13629C4:       var_B8 = var_8C.Text
  loc_13629CC:       var_D4 = CVar(var_B8) 'String
  loc_1362A11:       If CBool(var_D4 <> Me.Fields.Item("VNo").Value) Then
  loc_1362A1A:         Me.MoveFirst
  loc_1362A3F:         Set var_88 = Me.Txt
  loc_1362A45:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Vno =")
  loc_1362A4D:         0 = var_8C.Text
  loc_1362A5B:         Proc_6_17_EAAE40(var_D4, CVar(var_B8), 1)
  loc_1362A71:         Me.Find CStr(var_F8 & var_D4), global_84, 
  loc_1362A89:       End If
  loc_1362A8C:     Else
  loc_1362A94:       If (var_92 = CInt(6)) Then
  loc_1362AAE:         If (Me.RecordCount > 0) Then
  loc_1362ABC:           Set var_8C = Me.FGPoint
  loc_1362AD4:           Proc_6_137_1192FDC(Me.DGParty, global_68)
  loc_1362AE2:         End If
  loc_1362B30:         Set var_88 = Me.Txt
  loc_1362B36:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8)
  loc_1362B3E:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1362B56:         If (Index Or (var_B8 = vbNullString)) Then
  loc_1362B59:           Exit Sub
  loc_1362B5A:         End If
  loc_1362B67:         Set var_88 = Me.Txt
  loc_1362B6D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1362B75:         var_B8 = var_8C.Text
  loc_1362B7D:         var_D4 = CVar(var_B8) 'String
  loc_1362BC2:         If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1362BCB:           Me.MoveFirst
  loc_1362BF0:           Set var_88 = Me.Txt
  loc_1362BF6:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Name =")
  loc_1362BFE:           0 = var_8C.Text
  loc_1362C0C:           Proc_6_17_EAAE40(var_D4, CVar(var_B8), 1)
  loc_1362C22:           Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1362C3A:         End If
  loc_1362C3D:       Else
  loc_1362C45:         If Not (var_92 = CInt(&HC)) Then
  loc_1362C50:           If (var_92 = CInt(&HD)) Then
  loc_1362C53:           End If
  loc_1362C53:         End If
  loc_1362C53:       End If
  loc_1362C53:     End If
  loc_1362C53:   End If
  loc_1362C53: End If
  loc_1362C53: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12931D0
  'Data Table: 511018
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_1292BFB: var_86 = Shift
  loc_1292C08: If (CLng(Shift) = &H1B) Then
  loc_1292C0B:   Call Proc_90_68_F98C48(var_86)
  loc_1292C10:   Exit Sub
  loc_1292C11: End If
  loc_1292C14: var_88 = KeyCode
  loc_1292C1F: If (var_88 = CInt(0)) Then
  loc_1292C3F:   Set var_A0 = Me.FGPoint
  loc_1292C4A:   Set var_9C = Nothing
  loc_1292C7C:   Proc_6_69_134A630(Me.DGVType, Me.Txt, CInt(0), global_60, Shift, &HFF)
  loc_1292CEB:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1292D11:     Proc_6_138_106E830(Me.DGVType, global_60, KeyCode, Me.FGPoint, 1)
  loc_1292D1F:   End If
  loc_1292D22: Else
  loc_1292D2A:   If (var_88 = CInt(&HE)) Then
  loc_1292D55:     Set var_9C = Nothing
  loc_1292D87:     Proc_6_69_134A630(Me.DGIndent, Me.Txt, CInt(&HE), global_76, Shift, &HFF, 1)
  loc_1292DF6:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1292DFD:       Set var_9C = Me.DGIndent
  loc_1292E1C:       Proc_6_138_106E830(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_1292E2A:     End If
  loc_1292E2D:   Else
  loc_1292E35:     If (var_88 = CInt(4)) Then
  loc_1292E92:       Proc_6_69_134A630(Me.DGPreDoc, Me.Txt, CInt(4), global_84, Shift, &HFF, 1, Nothing)
  loc_1292F01:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1292F27:         Proc_6_138_106E830(Me.DGPreDoc, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1292F35:       End If
  loc_1292F38:     Else
  loc_1292F40:       If (var_88 = CInt(6)) Then
  loc_1292F9D:         Proc_6_69_134A630(Me.DGParty, Me.Txt, CInt(6), global_68, Shift, &HFF, 1, Nothing)
  loc_129300C:         If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1293032:           Proc_6_138_106E830(Me.DGParty, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1293040:         End If
  loc_1293043:       Else
  loc_129304B:         If Not (var_88 = CInt(&HC)) Then
  loc_1293056:           If (var_88 = CInt(&HD)) Then
  loc_1293059:           End If
  loc_1293059:         End If
  loc_1293059:       End If
  loc_1293059:     End If
  loc_1293059:   End If
  loc_1293059: End If
  loc_129308A: Set var_9C = Me.DGIndent
  loc_12930A1: Set var_A0 = Me.DGParty
  loc_1293100: If ((((((CBool(Me.DGPreDoc.Visible) = 0) And (CBool(Me.DGVType.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DGGod.Visible) = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1293118:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1293121:     Proc_6_75_E5335C(Shift, arg_14, 0, var_9C)
  loc_1293126:   End If
  loc_129312A:   Set var_8C = Me.TopCtrl1
  loc_1293130:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A0)
  loc_1293152:   If ((CStr(0) = "Add") And (KeyCode <> CInt(0))) Then
  loc_129316A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1293173:       Proc_6_76_E533C8(Shift, arg_14)
  loc_1293178:     End If
  loc_129317B:   Else
  loc_129317F:     Set var_8C = Me.TopCtrl1
  loc_1293185:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_88)
  loc_12931A7:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_12931BF:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_12931C8:         Proc_6_76_E533C8(Shift)
  loc_12931CD:       End If
  loc_12931CD:     End If
  loc_12931CD:   End If
  loc_12931CD: End If
  loc_12931CD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10E6524
  'Data Table: 511018
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_10E6204: On Error Goto loc_10E651E
  loc_10E620A: Proc_6_58_E06050(arg_10)
  loc_10E6215: Proc_6_133_E7FB08(var_94)
  loc_10E621E: arg_10 = CInt(var_94)
  loc_10E6227: var_96 = KeyAscii
  loc_10E6232: If (var_96 = CInt(0)) Then
  loc_10E6251:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_10E6267:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_10E629C:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_10E62CE:     Proc_6_138_106E830(Me.DGVType, global_60, KeyAscii, Me.FGPoint)
  loc_10E62DC:   End If
  loc_10E62DF: Else
  loc_10E62E7:   If (var_96 = CInt(&HE)) Then
  loc_10E6306:     If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_10E631C:       Me.DGIndent.Tag = CVar(CStr(KeyAscii))
  loc_10E6351:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Vno")
  loc_10E636B:       Set var_B8 = Me.FGPoint
  loc_10E6383:       Proc_6_138_106E830(Me.DGIndent, global_76, KeyAscii, var_B8, 0)
  loc_10E6391:     End If
  loc_10E6394:   Else
  loc_10E639C:     If (var_96 = CInt(1)) Then
  loc_10E63A9:       Set var_9C = Me.Txt
  loc_10E63AF:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_10E63CA:       Proc_6_42_129B55C(var_B8, arg_10, 8, 0)
  loc_10E63D9:     Else
  loc_10E63E1:       If (var_96 = CInt(4)) Then
  loc_10E6400:         If (CBool(Me.DGPreDoc.Visible) = &HFF) Then
  loc_10E642D:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_84, arg_10, "Name")
  loc_10E645F:           Proc_6_138_106E830(Me.DGPreDoc, global_84, KeyAscii, Me.FGPoint)
  loc_10E646D:         End If
  loc_10E6470:       Else
  loc_10E6478:         If (var_96 = CInt(6)) Then
  loc_10E6497:           If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_10E64C4:             Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_10E64F6:             Proc_6_138_106E830(Me.DGParty, global_68, KeyAscii, Me.FGPoint, 0)
  loc_10E6504:           End If
  loc_10E6507:         Else
  loc_10E650F:           If Not (var_96 = CInt(&HC)) Then
  loc_10E651A:             If (var_96 = CInt(&HD)) Then
  loc_10E651D:             End If
  loc_10E651D:           End If
  loc_10E651D:         End If
  loc_10E651D:       End If
  loc_10E651D:     End If
  loc_10E651D:   End If
  loc_10E651D: End If
  loc_10E651D: Exit Sub
  loc_10E651E: ' Referenced from: 10E6204
  loc_10E651E: Proc_6_60_E63754(0, var_96)
  loc_10E6523: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00324
  'Data Table: 511018
  Dim var_86 As Integer
  loc_E0031F: var_86 = KeyCode
  loc_E00322: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50CDC
  'Data Table: 511018
  loc_E50CBA: Set var_88 = Me.Txt
  loc_E50CC0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50CCE: Proc_6_73_E23294(var_8C)
  loc_E50CDA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1645A94
  'Data Table: 511018
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_130 As Variant
  Dim var_158 As String
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1B0 As TextBox
  Dim var_1D4 As Variant
  Dim var_1DC As TextBox
  Dim var_200 As Variant
  Dim var_100 As String
  Dim var_134 As String
  Dim unk_511047 As Connection15
  Dim var_9C As Variant
  Dim var_1AC As Variant
  Dim var_1B4 As String
  Dim var_88 As Recordset15
  loc_16444C8: On Error Goto loc_1645A8B
  loc_16444CE: var_8E = Cancel
  loc_16444D9: If (var_8E = CInt(0)) Then
  loc_16444E7:   Set var_94 = Me.Txt
  loc_16444ED:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_16444F5:   var_A0 = "Voucher Type"
  loc_1644516:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_1644524:     Set var_94 = Me.Txt
  loc_164452A:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1644532:     var_98.SetFocus
  loc_1644540:     arg_10 = &HFF
  loc_1644543:     Exit Sub
  loc_1644544:   End If
  loc_1644592:   Set var_94 = Me.Txt
  loc_1644598:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16445A0:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16445B8:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16445C8:     Set var_94 = Me.Txt
  loc_16445CE:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16445D6:     var_98.Text = vbNullString
  loc_16445EF:     Set var_94 = Me.Txt
  loc_16445F5:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16445FD:     var_98.Tag = vbNullString
  loc_164460F:     global_108 = vbNullString
  loc_1644619:     global_112 = vbNullString
  loc_1644620:   Else
  loc_164465B:     Set var_9C = Me.Txt
  loc_1644661:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1644669:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16446BE:     Set var_9C = Me.Txt
  loc_16446C4:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16446CC:     var_BC.Tag = CStr(Trim(CVar(Me.Fields.Item("Code"))))
  loc_1644718:     global_108 = CStr(Me.Fields.Item("NCat").Value)
  loc_1644743:     var_98 = Me.Fields.Item("ContraType")
  loc_164475A:     global_112 = Proc_6_38_E69628(CVar(var_98))
  loc_164477C:     Set var_94 = Me.Txt
  loc_1644782:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_16447A5:     If CBool(CVar(global_120) <> Trim(CVar(var_98))) Then
  loc_16447B6:       Set var_94 = Me.Txt
  loc_16447BC:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_16447C4:       var_98.Text = vbNullString
  loc_16447DE:       Set var_94 = Me.Txt
  loc_16447E4:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_16447EC:       var_98.Text = vbNullString
  loc_1644806:       Set var_94 = Me.Txt
  loc_164480C:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_1644814:       var_98.Tag = vbNullString
  loc_1644833:       Me.FGrid.Rows = 1
  loc_1644850:       var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1644858:       Set var_98 = Me.FGrid
  loc_1644887:       Me.FGrid.FixedRows = 1
  loc_164488F:     End If
  loc_1644893:     Set var_94 = Me.TopCtrl1
  loc_1644899:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(FGrid.DispID_10000)
  loc_16448A1:     var_A0 = CStr(var_DC)
  loc_16448B2:     If (var_A0 = "Add") Then
  loc_16448BB:       Call Proc_90_70_11192DC(MemVar_1F95044, var_A0)
  loc_16448CE:       Set var_94 = Me.Txt
  loc_16448D4:       Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_16448DC:       var_98.Text = var_A0
  loc_16448EB:     End If
  loc_16448EB:     Call Proc_90_77_EE99E0(var_8E)
  loc_16448F0:     Call Proc_90_76_F1B83C()
  loc_16448F5:   End If
  loc_16448F8: Else
  loc_1644900:   If (var_8E = CInt(&HE)) Then
  loc_1644951:     Set var_94 = Me.Txt
  loc_1644957:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1644977:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1644987:       Set var_94 = Me.Txt
  loc_164498D:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1644995:       var_98.Text = vbNullString
  loc_16449AE:       Set var_94 = Me.Txt
  loc_16449B4:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16449BC:       var_98.Tag = vbNullString
  loc_16449D6:       Set var_94 = Me.Txt
  loc_16449DC:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_98)
  loc_16449E4:       var_98.Text = vbNullString
  loc_16449F3:     Else
  loc_1644A2E:       Set var_9C = Me.Txt
  loc_1644A34:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1644A3C:       var_BC.Text = CStr(Me.Fields.Item("VNo").Value)
  loc_1644A8D:       Set var_9C = Me.Txt
  loc_1644A93:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1644A9B:       var_BC.Tag = CStr(Me.Fields.Item("DocID").Value)
  loc_1644ACB:       var_98 = Me.Fields.Item("VDate")
  loc_1644AEA:       Set var_9C = Me.Txt
  loc_1644AF0:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_BC)
  loc_1644AF8:       var_BC.Text = Proc_6_38_E69628(CVar(var_98))
  loc_1644B10:       Set var_94 = Me.TopCtrl1
  loc_1644B16:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1644B2F:       If (CStr() = "Add") Then
  loc_1644B3F:         Set var_94 = Me.Txt
  loc_1644B45:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1644B4D:         var_A0 = var_98.Tag
  loc_1644B5F:         Call Proc_90_75_14676EC(global_108)
  loc_1644B6E:       End If
  loc_1644B6E:     End If
  loc_1644B71:   Else
  loc_1644B79:     If (var_8E = CInt(1)) Then
  loc_1644B87:       Set var_94 = Me.Txt
  loc_1644B8D:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1644B95:       var_A0 = "GIN No"
  loc_1644BB6:       If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_1644BC4:         Set var_94 = Me.Txt
  loc_1644BCA:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1644BD2:         var_98.SetFocus
  loc_1644BE0:         arg_10 = &HFF
  loc_1644BE3:         Exit Sub
  loc_1644BE4:       End If
  loc_1644BF2:       Set var_94 = Me.Txt
  loc_1644BF8:       Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_1644C00:       arg_10 = var_98.Text
  loc_1644C18:       If (CDbl(var_A0) = CDbl(0)) Then
  loc_1644C34:         MsgBox("GIN No Can Not Be 0", 0, var_DC, var_EC, var_130)
  loc_1644C4E:         Set var_94 = Me.Txt
  loc_1644C54:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1644C5C:         var_98.SetFocus
  loc_1644C6A:         arg_10 = &HFF
  loc_1644C6D:         Exit Sub
  loc_1644C6E:       End If
  loc_1644C72:       Set var_94 = Me.TopCtrl1
  loc_1644C78:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_1644C91:       If (CStr(var_A0) = "Add") Then
  loc_1644CA8:         var_EC = CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1644CB9:         Set var_94 = Me.Txt
  loc_1644CBF:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1644CCF:         var_CC = CVar(var_98.Tag) 'String
  loc_1644CDD:         var_130 = (var_EC + Trim(var_CC))
  loc_1644CF4:         Set var_9C = Me.Txt
  loc_1644CFA:         Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_134)
  loc_1644D02:         5 = var_BC.Tag
  loc_1644D22:         var_168 = Space((var_130 - Len(CStr(Trim(CVar(var_134))))))
  loc_1644D2A:         var_178 = ( + var_168)
  loc_1644D37:         var_188 = (var_178 + CVar(global_100))
  loc_1644D4B:         var_198 = Space((5 - Len(global_100)))
  loc_1644D53:         var_1A8 = (var_188 + var_198)
  loc_1644D6A:         Set var_1AC = Me.Txt
  loc_1644D70:         Call 0.Method_Txt_Validate0 (CInt(1), var_1B0, var_1B4)
  loc_1644D78:         8 = var_1B0.Text
  loc_1644D85:         var_1C4 = Space((var_1A8 - Len(var_1B4)))
  loc_1644D8D:         var_1D4 = ( + var_1C4)
  loc_1644D9F:         Set var_1D8 = Me.Txt
  loc_1644DA5:         Call 0.Method_Txt_Validate0 (CInt(1), var_1DC)
  loc_1644DB8:         var_200 = (var_1D4 + CVar(var_1DC.Text))
  loc_1644E19:         Set var_94 = Me.Txt
  loc_1644E1F:         Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_1644E27:         var_98.Text = CStr(var_200)
  loc_1644E43:         Me.LblVPrefix.Caption = global_100
  loc_1644E4B:       End If
  loc_1644E4F:       Set var_94 = Me.TopCtrl1
  loc_1644E55:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1644E5D:       var_A0 = CStr()
  loc_1644E6E:       If (var_A0 = "Add") Then
  loc_1644E9E:         Set var_94 = Me.Txt
  loc_1644EA4:         Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_A0, "Select Count(*) From GIN Where DocID='", var_CC, -1)
  loc_1644EB5:         var_100 = var_BC & var_A0
  loc_1644EBC:         var_134 = var_100 & "'"
  loc_1644EC5:         unk_511047.Execute var_134, 0, var_1AC
  loc_1644ED5:          = var_BC.Item()
  loc_1644EDD:          = var_1AC.Value
  loc_1644F0A:         If (var_98.Text.Fields > 0) Then
  loc_1644F13:           Call 0.Method_arg_50 (var_A0)
  loc_1644F34:           MsgBox("Duplicate GIN No.", &H40, CVar(var_A0), var_EC, var_130)
  loc_1644F4A:           Call Proc_90_70_11192DC(MemVar_1F95044)
  loc_1644F5A:           If (var_A0 = vbNullString) Then
  loc_1644F67:             Set var_94 = Me.Txt
  loc_1644F6D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1644F75:             var_98.SetFocus
  loc_1644F83:             arg_10 = &HFF
  loc_1644F86:             Exit Sub
  loc_1644F87:           End If
  loc_1644F8D:           Call Proc_90_70_11192DC(MemVar_1F95044, var_A0)
  loc_1644FA0:           Set var_94 = Me.Txt
  loc_1644FA6:           Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_A0)
  loc_1644FAE:           var_98.Text = arg_10
  loc_1644FBF:           arg_10 = &HFF
  loc_1644FC2:           Exit Sub
  loc_1644FC3:         End If
  loc_1644FC3:       End If
  loc_1644FC6:     Else
  loc_1644FCE:       If (var_8E = CInt(2)) Then
  loc_1644FDF:         Set var_94 = Me.Txt
  loc_1644FE5:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_1644FED:         arg_10 = var_98.Text
  loc_1645003:         var_EC = Len(Trim(CVar(var_A0)))
  loc_164501D:         If (var_EC = 0) Then
  loc_1645033:           Set var_94 = Me.Txt
  loc_1645039:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1645041:           var_98.Text = CStr(MemVar_1F950EC)
  loc_1645053:         Else
  loc_164505D:           Set var_94 = Me.Txt
  loc_1645063:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1645083:           Set var_BC = Me.Txt
  loc_1645089:           Call 0.Method_Txt_Validate0 (Cancel, var_1AC)
  loc_1645091:           var_1AC.Text = Proc_6_33_15125B8(var_98)
  loc_16450A4:         End If
  loc_16450B1:         Set var_94 = Me.Txt
  loc_16450B7:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16450BF:         var_A0 = var_98.Text
  loc_16450DA:         Set var_9C = Me.Txt
  loc_16450E0:         Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_100)
  loc_16450E8:         (CDate(var_A0) >= MemVar_1F950F4) = var_BC.Text
  loc_164510A:         If Not((var_A0 And (CDate(var_100) <= MemVar_1F950FC))) Then
  loc_164512E:           MsgBox("GIN Date Not Between Current Fin. Year", 0, "Date Validate", var_EC, var_130)
  loc_1645148:           Set var_94 = Me.Txt
  loc_164514E:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_1645156:           var_98.SetFocus
  loc_1645164:           arg_10 = &HFF
  loc_1645167:           Exit Sub
  loc_1645168:         End If
  loc_164516C:         Set var_94 = Me.TopCtrl1
  loc_1645172:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_164517A:         var_A0 = CStr(var_98)
  loc_1645190:         Set var_98 = Me.Txt
  loc_1645196:         Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_16451BF:         If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_16451C8:           Call Proc_90_70_11192DC(MemVar_1F95044)
  loc_16451DB:           Set var_94 = Me.Txt
  loc_16451E1:           Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_16451E9:           var_98.Text = var_A0
  loc_16451F8:         End If
  loc_16451FB:       Else
  loc_1645203:         If (var_8E = CInt(4)) Then
  loc_1645254:           Set var_94 = Me.Txt
  loc_164525A:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1645262:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_164527A:           If (var_A0 Or (var_A0 = vbNullString)) Then
  loc_164528A:             Set var_94 = Me.Txt
  loc_1645290:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1645298:             var_98.Text = vbNullString
  loc_16452B1:             Set var_94 = Me.Txt
  loc_16452B7:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16452BF:             var_98.Tag = vbNullString
  loc_16452CE:           Else
  loc_1645309:             Set var_9C = Me.Txt
  loc_164530F:             Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1645317:             var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_164534A:             var_98 = Me.Fields.Item("Code")
  loc_1645368:             Set var_9C = Me.Txt
  loc_164536E:             Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1645376:             var_BC.Tag = CStr(var_98.Value)
  loc_1645390:             Set var_94 = Me.TopCtrl1
  loc_1645396:             Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_16453AF:             If (CStr() = "Add") Then
  loc_16453BF:               Set var_94 = Me.Txt
  loc_16453C5:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16453CD:               var_A0 = var_98.Tag
  loc_16453DF:               Call Proc_90_74_14BD794(global_108)
  loc_16453EE:             End If
  loc_16453EE:           End If
  loc_16453F1:         Else
  loc_16453F9:           If (var_8E = CInt(6)) Then
  loc_1645407:             Set var_94 = Me.Txt
  loc_164540D:             Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1645415:             var_A0 = "CreditParty Name"
  loc_1645436:             If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_1645444:               Set var_94 = Me.Txt
  loc_164544A:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1645452:               var_98.SetFocus
  loc_1645460:               arg_10 = &HFF
  loc_1645463:               Exit Sub
  loc_1645464:             End If
  loc_16454B2:             Set var_94 = Me.Txt
  loc_16454B8:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16454C0:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16454D8:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16454E8:               Set var_94 = Me.Txt
  loc_16454EE:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16454F6:               var_98.Text = vbNullString
  loc_164550F:               Set var_94 = Me.Txt
  loc_1645515:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_164551D:               var_98.Tag = vbNullString
  loc_164552C:             Else
  loc_1645567:               Set var_9C = Me.Txt
  loc_164556D:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1645575:               var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16455C6:               Set var_9C = Me.Txt
  loc_16455CC:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16455D4:               var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1645607:               var_98 = Me.Fields.Item("Name")
  loc_1645626:               Set var_9C = Me.Txt
  loc_164562C:               Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_1645634:               var_BC.Text = CStr(var_98.Value)
  loc_164564A:             End If
  loc_1645658:             Set var_94 = Me.Txt
  loc_164565E:             Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1645692:             If (Trim(CVar(var_98.Tag)) = "MRCR") Then
  loc_164569F:               Set global_84 = New 
  loc_16456B1:               Me.Recordset15.CursorLocation = 3
  loc_16456BD:               var_A0 = "Select Distinct P1.Docid as Code ,ltrim(Right(max(P1.DocId),8)) as Name,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date,Max(SG.Name) As PartyName " & "From (POrder1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno)) "
  loc_16456CB:               var_158 = var_A0 & "Left Join SubGroup SG on P1.PartyCode=SG.SubCode " & "where P1.Partycode='"
  loc_16456DC:               Set var_94 = Me.Txt
  loc_16456E2:               Call 0.Method_Txt_Validate0 (CInt(6), var_98, var_134)
  loc_16456EA:               var_158 = var_98.Tag
  loc_16456FA:               var_8C = var_A0 & var_134 & "'  Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isNull(S.QtyRec,0)) > 0 "
  loc_1645735:               Me.Open CVar(var_8C), CVar(MemVar_1F95044), 3
  loc_1645743:               CVarUnk
  loc_1645748:               VerifyVarObj
  loc_164574E:               Set var_94 = Me.DGPreDoc
  loc_1645754:               LateIdStAd
  loc_1645762:             End If
  loc_1645765:           Else
  loc_164576D:             If (var_8E = CInt(3)) Then
  loc_1645781:               Call 0.Method_Txt_Validate0 (CInt(3), var_98, Me.Txt)
  loc_1645789:               var_A0 = "Party Name"
  loc_16457AA:               If (Proc_6_27_EA61EC(var_98, var_A0, global_84) = 0) Then
  loc_16457B8:                 Set var_94 = Me.Txt
  loc_16457BE:                 Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_16457C6:                 var_98.SetFocus
  loc_16457D4:                 arg_10 = &HFF
  loc_16457D7:                 Exit Sub
  loc_16457D8:               End If
  loc_16457E6:               Set var_94 = Me.Txt
  loc_16457EC:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_16457F4:               arg_10 = var_98.Tag
  loc_16457FC:               var_CC = CVar(var_A0) 'String
  loc_1645820:               If (Trim(var_CC) = "MRCH") Then
  loc_1645840:                 Proc_6_17_EAAE40(var_CC, MemVar_1F95078, "Select CashPurchAc From Enviro  WHERE LOGSITE_CODE=", var_EC)
  loc_1645848:                 var_DC = -1 & var_CC 
  loc_1645856:                 unk_511047.Execute CStr(Trim(var_CC)), var_94, 1
  loc_1645861:                 Set var_88 = var_94
  loc_1645887:                 If (var_88.RecordCount > 0) Then
  loc_16458A4:                   var_98 = var_88.Fields.Item("CashPurchAc")
  loc_16458C3:                   Set var_9C = Me.Txt
  loc_16458C9:                   Call 0.Method_Txt_Validate0 (CInt(6), var_BC)
  loc_16458D1:                   var_BC.Tag = CStr(var_98.Value)
  loc_16458E7:                 End If
  loc_16458E7:               End If
  loc_16458F5:               Set var_94 = Me.Txt
  loc_16458FB:               Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_164592F:               If (Trim(CVar(var_98.Tag)) = "MRCH") Then
  loc_164593C:                 Set global_84 = New 
  loc_164594E:                 Me.Recordset15.CursorLocation = 3
  loc_164595A:                 var_A0 = "Select Distinct P1.Docid as Code ,ltrim(Right(max(P1.DocId),8)) as Name,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date,Max(SG.Name) As PartyName " & "From (POrder1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno)) "
  loc_1645968:                 var_158 = var_A0 & "Left Join SubGroup SG on P1.PartyCode=SG.SubCode " & "where P1.Partycode='"
  loc_1645979:                 Set var_94 = Me.Txt
  loc_164597F:                 Call 0.Method_Txt_Validate0 (CInt(6), var_98, var_134)
  loc_1645987:                 var_158 = var_98.Tag
  loc_1645990:                 var_1B4 = -1 & var_134
  loc_1645997:                 var_8C = var_A0 & var_134 & "'  Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isNull(S.QtyRec,0)) > 0 "
  loc_16459D2:                 Me.Open CVar(var_8C), CVar(MemVar_1F95044), 3
  loc_16459E0:                 CVarUnk
  loc_16459E5:                 VerifyVarObj
  loc_16459EB:                 Set var_94 = Me.DGPreDoc
  loc_16459F1:                 LateIdStAd
  loc_16459FF:               End If
  loc_1645A02:             Else
  loc_1645A0A:               If Not (var_8E = CInt(&HC)) Then
  loc_1645A15:                 If (var_8E = CInt(&HD)) Then
  loc_1645A18:                 End If
  loc_1645A1B:               Else
  loc_1645A23:                 If Not (var_8E = CInt(8)) Then
  loc_1645A2E:                   If (var_8E = CInt(&HB)) Then
  loc_1645A31:                   End If
  loc_1645A41:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, Me.Txt)
  loc_1645A61:                   Set var_BC = Me.Txt
  loc_1645A67:                   Call 0.Method_Txt_Validate0 (Cancel, var_1AC, Proc_6_33_15125B8(var_98, global_84))
  loc_1645A6F:                   var_1AC.Text = 1
  loc_1645A82:                 End If
  loc_1645A82:               End If
  loc_1645A82:             End If
  loc_1645A82:           End If
  loc_1645A82:         End If
  loc_1645A82:       End If
  loc_1645A82:     End If
  loc_1645A82:   End If
  loc_1645A82: End If
  loc_1645A87: Set var_88 = Nothing
  loc_1645A8A: Exit Sub
  loc_1645A8B: ' Referenced from: 16444C8
  loc_1645A8B: Proc_6_60_E63754(-1)
  loc_1645A90: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1039798
  'Data Table: 511018
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_511047 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_D0 As TextBox
  loc_1039558: On Error Goto loc_1039791
  loc_103957E: Call Proc_90_67_F1D894(Proc_5_1_100EC1C("ADD", Me))
  loc_1039589: Call Proc_90_66_F5392C(global_80)
  loc_10395A7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_10395AF: var_98.Text = CStr(MemVar_1F950EC)
  loc_10395E7: var_A4 = "Select Description,V_Type From Voucher_Type Where logSite_Code='" & MemVar_1F95078 & "' and Site_Code='" & MemVar_1F95070 & "' and NCat='MRE'"
  loc_10395F0: unk_511047.Execute var_A4, var_C4, -1
  loc_10395FB: Set var_88 = Me.Txt
  loc_1039623: If (var_88.RecordCount > 0) Then
  loc_103965F:   Set var_CC = Me.Txt
  loc_1039665:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D0)
  loc_103966D:   var_D0.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_103969D:   var_98 = var_88.Fields.Item("V_Type")
  loc_10396BC:   Set var_CC = Me.Txt
  loc_10396C2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D0)
  loc_10396CA:   var_D0.Tag = CStr(var_98.Value)
  loc_10396E0: End If
  loc_10396EE: Set var_90 = Me.Txt
  loc_10396F4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_103970E: If (var_98.Enabled = &HFF) Then
  loc_103971C:   Set var_90 = Me.Txt
  loc_1039722:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_103972A:   var_98.SetFocus
  loc_1039739: Else
  loc_1039744:   Set var_90 = Me.Txt
  loc_103974A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_1039752:   var_98.SetFocus
  loc_103975E: End If
  loc_1039763: Set var_88 = Nothing
  loc_1039773: Me.LblUser.Caption = vbNullString
  loc_1039782: Set var_90 = Me.LblLDt
  loc_1039788: var_90.Caption = vbNullString
  loc_1039790: Exit Sub
  loc_1039791: ' Referenced from: 1039558
  loc_1039791: Proc_6_60_E63754(var_90)
  loc_1039796: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA1864
  'Data Table: 511018
  loc_EA17E8: On Error Goto loc_EA185E
  loc_EA1822: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA1848:   Call Proc_90_67_F1D894(Proc_5_1_100EC1C("INI", Me))
  loc_EA1853:   Call Proc_90_64_16AC164(global_80)
  loc_EA1858: End If
  loc_EA1858: Call Proc_90_68_F98C48()
  loc_EA185D: Exit Sub
  loc_EA185E: ' Referenced from: EA17E8
  loc_EA185E: Proc_6_60_E63754()
  loc_EA1863: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12F08F4
  'Data Table: 511018
  Dim var_A8 As Variant
  Dim unk_511047 As Connection15
  Dim var_D8 As Variant
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  Dim var_AC As String
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_120 As Variant
  Dim var_98 As Recordset15
  Dim var_130 As Variant
  loc_12F0254: On Error Goto loc_12F08A4
  loc_12F0265: If (Proc_183_56_FE8B08(global_80) = &HFF) Then
  loc_12F0268:   Exit Sub
  loc_12F0269: End If
  loc_12F0296: Set var_A4 = Me.Txt
  loc_12F029C: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(9), var_A8, var_AC, "select count(*) from Purch2 where ContradOCID='", var_D4, -1)
  loc_12F02A4: var_D8 = var_A8.Text
  loc_12F02BD: unk_511047.Execute var_DC & var_AC & "'", 0, var_F0
  loc_12F02CD:  = var_DC.Item()
  loc_12F02D5:  = var_F0.Value
  loc_12F0302: If (var_D8.Fields > 0) Then
  loc_12F032C:   MsgBox(CVar("Purchase Bill Already Feeded" & vbCrLf & "You Can't Delete it."), &H10, "Delete Validation", var_120, var_130)
  loc_12F0343:   Set var_A4 = Me.FGrid
  loc_12F0354:   Exit Sub
  loc_12F0355: End If
  loc_12F038C: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_120, var_130) = 6) Then
  loc_12F0398:   unk_511047.BeginTrans var_144
  loc_12F03AE:   var_94 = Me.Bookmark 'Variant
  loc_12F03FA:   var_120 = "Select IndentDocId,IndentSno from Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12F0408:   unk_511047.Execute CStr(var_120), var_130, -1
  loc_12F0413:   Set var_98 = var_D8
  loc_12F042D:   ' Referenced from: 12F04EF
  loc_12F0433:   var_146 = var_98.EOF
  loc_12F043C:   If Not(var_146) Then
  loc_12F0477:     var_AC = Proc_6_38_E69628(CVar(var_98.Fields.Item("IndentDocID")), "Update Indent1 Set ClearYN='' where Docid='", var_168, -1)
  loc_12F0482:     var_130 = CVar(var_F0 & CStr(var_120) & "' and Sno=") 'String
  loc_12F0494:     var_D8 = var_98.Fields
  loc_12F04AB:     Proc_6_39_E7D3A0(var_120, CVar(var_D8.Item("IndentSno")), var_130)
  loc_12F04C1:     unk_511047.Execute CStr(var_D8 & var_120), FGrid.DispID_8001, 
  loc_12F04EA:     var_98.MoveNext
  loc_12F04EF:     GoTo loc_12F042D
  loc_12F04F2:   End If
  loc_12F0548:   unk_511047.Execute CStr("Delete From Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_12F0593:   var_198 = 0
  loc_12F05A6:   var_190 = 0
  loc_12F05B1:   var_18C = 0
  loc_12F05C4:   var_184 = 0
  loc_12F05CF:   var_180 = 0
  loc_12F05E2:   var_178 = 0
  loc_12F062B:   Proc_154_5_10E3BD4(MemVar_1F95044, "Stock", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F069B:   var_120 = "Delete From GIN Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12F06A9:   unk_511047.Execute CStr(var_120), var_130, -1
  loc_12F06E2:   var_A8 = Me.Fields.Item("SearchCode")
  loc_12F06F4:   var_198 = 0
  loc_12F0707:   var_190 = 0
  loc_12F0712:   var_18C = 0
  loc_12F0725:   var_184 = 0
  loc_12F0783:   var_AC = "GIN"
  loc_12F078C:   Proc_154_5_10E3BD4(MemVar_1F95044, var_AC, "DocId", &HC8, CStr(var_A8.Value), 0, 0, 0)
  loc_12F07BA:   unk_511047.CommitTrans
  loc_12F07CA:   Me.Requery -1
  loc_12F07DD:   Set var_A4 = Me.Txt
  loc_12F07E3:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_A8, var_146, 0, 0, 0)
  loc_12F07EB:   var_184 = var_A8.Enabled
  loc_12F07FD:   If (var_146 = &HFF) Then
  loc_12F080B:     Me.Requery -1
  loc_12F0810:   End If
  loc_12F081B:   Me.Requery -1
  loc_12F083B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12F0848:     Me.Bookmark = var_94
  loc_12F0850:   Else
  loc_12F0864:     If (Me.EOF = 0) Then
  loc_12F086D:       Me.MoveLast
  loc_12F0872:     End If
  loc_12F0872:   End If
  loc_12F0872:   Call Proc_90_64_16AC164(0, var_18C)
  loc_12F0893:   Proc_5_0_1107AD0(&HFF, Me, global_80)
  loc_12F089B: End If
  loc_12F08A0: Set var_98 = Nothing
  loc_12F08A3: Exit Sub
  loc_12F08A4: ' Referenced from: 12F0254
  loc_12F08AA: unk_511047.RollbackTrans
  loc_12F08B7: Set var_A4 = Err()
  loc_12F08BD: Call 0.Method_arg_2C (var_AC, 0)
  loc_12F08DE: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_120, var_130)
  loc_12F08F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F766CC
  'Data Table: 511018
  Dim var_8C As TextBox
  Dim var_88 As Label
  Dim var_10C As String
  loc_F76588: On Error Goto loc_F766C3
  loc_F76599: Set var_88 = Me.Txt
  loc_F7659F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_8C)
  loc_F765B2: var_98 = "Edit"
  loc_F765C5: Call Proc_90_71_10ED538(global_108, var_8C.Text)
  loc_F765DE: If (var_9A = 0) Then
  loc_F765E1:   Exit Sub
  loc_F765E2: End If
  loc_F76605: Call Proc_90_67_F1D894(Proc_5_1_100EC1C("EDIT", Me, global_80), var_98)
  loc_F76610: Call Proc_90_77_EE99E0(var_9A)
  loc_F76615: Call Proc_90_76_F1B83C()
  loc_F76628: Set var_88 = Me.Txt
  loc_F7662E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_8C)
  loc_F76648: If (var_8C.Enabled = &HFF) Then
  loc_F76656:   Set var_88 = Me.Txt
  loc_F7665C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_F76664:   var_8C.SetFocus
  loc_F76673: Else
  loc_F7667E:   Set var_88 = Me.Txt
  loc_F76684:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_F7668C:   var_8C.SetFocus
  loc_F76698: End If
  loc_F766A5: Me.LblUser.Caption = vbNullString
  loc_F766BA: Me.LblLDt.Caption = vbNullString
  loc_F766C2: Exit Sub
  loc_F766C3: ' Referenced from: F76588
  loc_F766C3: Proc_6_60_E63754(var_8C)
  loc_F766C8: Exit Sub
  loc_F766C9: var_10C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19190
  'Data Table: 511018
  loc_E19185: Me.Global.Unload Me
  loc_E1918D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F54168
  'Data Table: 511018
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_168 As Variant
  Dim MemVar_1F950E4 As String
  loc_F54060: On Error Goto loc_F54162
  loc_F5407A: If (Me.RecordCount <= 0) Then
  loc_F54098:   var_A8 = "No Records To Search."
  loc_F5409E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F540AE:   Exit Sub
  loc_F540AF: End If
  loc_F540B6: var_C8 = CVar("Select G.DocID as SearchCode,V.Description As GINType,G.VNo As GINNo,cast(G.VDate as VarChar(11)) As GINDate,G.PartyName " & " From GIN G Inner Join Voucher_Type V on (G.VType=V.V_Type And G.LogSite_Code=V.LogSite_Code)  Where G.VDATE>=") 'String
  loc_F540C4: Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F540D0: var_B8 = " AND V.Site_code='"
  loc_F540FB: var_168 = var_C8 & var_A8 & var_B8 & CVar(MemVar_1F95070) & "' and V.LogSite_Code='" & CVar(MemVar_1F95078) & "' and V.Category in ('MREntry') And G.LogSite_Code='" 
  loc_F54113: MemVar_1F950E4 = CStr(var_168 & CVar(MemVar_1F95078) & "' Order by G.DocID,G.VNo")
  loc_F54134: MemVar_1F95120 = Me
  loc_F54141: Proc_6_126_F1C850("1600,900,1000,4000")
  loc_F5415C: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F54161: Exit Sub
  loc_F54162: ' Referenced from: F54060
  loc_F54162: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F54167: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37BC8
  'Data Table: 511018
  Dim var_5F01 As Double
  loc_E37BB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37BC0: Call Proc_90_64_16AC164(global_80)
  loc_E37BC5: Exit Sub
  loc_E37BC6: var_5F01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37928
  'Data Table: 511018
  loc_E37918: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37920: Call Proc_90_64_16AC164(global_80)
  loc_E37925: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37748
  'Data Table: 511018
  loc_E37738: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37740: Call Proc_90_64_16AC164(global_80)
  loc_E37745: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37448
  'Data Table: 511018
  loc_E37438: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37440: Call Proc_90_64_16AC164(global_80)
  loc_E37445: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10E09C4
  'Data Table: 511018
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_C0 As String
  Dim var_C8 As String
  Dim var_D4 As TextBox
  Dim var_E0 As String
  Dim unk_511047 As Connection15
  Dim var_A0 As Recordset15
  Dim var_F0 As Variant
  Dim var_152 As Integer
  loc_10E06F4: On Error Goto loc_10E09BB
  loc_10E070E: If (Me.RecordCount <= 0) Then
  loc_10E0711:   Exit Sub
  loc_10E0712: End If
  loc_10E0719: var_B8 = "Select G.Docid,G.VNo,G.VDate,G.VType As V_Type,G.PartyName As PartyName,G.Remark,G.POrdDocid,G.Vdate,G.POrdDate,G.ChalNo,G.ChalDate,G.MemInvNo,G.MemInvDate,G.InspectedBy As InspBy,G.ApprovedBy As ApprBy," & " S.Sno as sSno,S.Item as sItemName,S.QtyIss ,S.QtyRec,S.Recdunit As unit,S.ChalQty,S.Rate,S.Amount as sAmount,"
  loc_10E0727: var_C0 = var_B8 & " S.RecdQty as sRecdQty,S.RejQty as sRejQty,S.QtyRec as sStkQtyRec,S.QtyIss as sStkQtyIss," & " S.Remarks as sRem,I.Name as ItemName,V.Description"
  loc_10E0735: var_C8 = var_C0 & " From ((GIN as G Inner Join Stock as S on G.DocID=S.DocID) " & " Inner Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_10E0754: Set var_D0 = Me.Txt
  loc_10E075A: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(9), var_D4)
  loc_10E076B: var_E0 = var_C8 & " Inner Join Voucher_Type as V on (G.VType=V.V_Type and G.LogSite_Code=V.LogSite_Code)" & " Where G.DocID='" & var_D4.Text
  loc_10E0772: var_88 = var_E0 & "'"
  loc_10E0799: If (var_88 = vbNullString) Then
  loc_10E079C:   Exit Sub
  loc_10E079D: End If
  loc_10E07B3: unk_511047.Execute var_88, var_100, -1
  loc_10E07BE: Set var_A0 = var_D0
  loc_10E07CD: var_B4 = var_A0.RecordCount
  loc_10E07DB: If (var_B4 <= 0) Then
  loc_10E07E4:   Call 0.Method_arg_50 (var_B8)
  loc_10E0805:   MsgBox("** No Records Found to Print **", &H40, CVar(var_B8), var_130, var_150)
  loc_10E0815:   Exit Sub
  loc_10E0816: End If
  loc_10E082C: Set var_D0 = var_A0 
  loc_10E0838: var_152 = CreateFieldDefFile(var_D0, MemVar_1F950B4 & "\MREntry.ttx")
  loc_10E0842: Set var_A0 = var_D0
  loc_10E0848: var_F0 = CVar(var_152) 'Integer
  loc_10E084B: var_9C = var_F0 'Variant
  loc_10E0867: var_B8 = MemVar_1F950B4 & "\MREntry.RPT"
  loc_10E0870: Call 0.Method_arg_1C (var_B8, var_F0, var_D0)
  loc_10E087B: MemVar_1F951E8 = var_D0
  loc_10E0896: Call 0.Method_arg_90 (var_D0, var_B4, var_AA, 1)
  loc_10E089E: Call 0.Method_arg_24 (var_152, &HFF)
  loc_10E08AA: For var_156 =  To CInt(var_B4): var_D0 = var_156 'Integer
  loc_10E08C3:   Call 0.Method_arg_90 (var_D0, CLng(var_AA))
  loc_10E08CB:   Call 0.Method_arg_20 (var_D4)
  loc_10E08D3:   Call 0.Method_arg_30 (var_B8)
  loc_10E08ED:   If (var_B8 = "Title") Then
  loc_10E0903:     Call 0.Method_arg_90 (var_D0, CLng(var_AA))
  loc_10E090B:     Call 0.Method_arg_20 (var_D4)
  loc_10E0913:     Call 0.Method_arg_38 ("'MR Entry'")
  loc_10E091F:   End If
  loc_10E0922: Next var_156 'Integer
  loc_10E0940: Call 0.Method_arg_64 (var_D0, CVar(var_A0))
  loc_10E0948: Call 0.Method_arg_2C (var_120)
  loc_10E0956: Call 0.Method_arg_150 (var_140)
  loc_10E0961: Call 0.Method_arg_50 (var_B8)
  loc_10E096B: Set var_D4 = Nothing
  loc_10E0985: Set var_D0 = MemVar_1F951E8 
  loc_10E0991: Proc_6_99_1484404(var_D0, 0, var_B8)
  loc_10E099C: MemVar_1F951E8 = var_D0
  loc_10E09AF: Set var_A0 = Nothing
  loc_10E09B7: Set var_B0 = Nothing
  loc_10E09BA: Exit Sub
  loc_10E09BB: ' Referenced from: 10E06F4
  loc_10E09BB: Proc_6_60_E63754(&HFF)
  loc_10E09C0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E57884
  'Data Table: 511018
  Dim Me As Recordset15
  loc_E5784B: Me.Requery -1
  loc_E5785B: Me.Requery -1
  loc_E5786B: Me.Requery -1
  loc_E5787B: Me.Requery -1
  loc_E57880: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1711430
  'Data Table: 511018
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_9C As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_A8 As Variant
  Dim var_1E4 As String
  Dim unk_511047 As Connection15
  Dim var_A4 As Variant
  Dim var_1EC As Variant
  Dim var_1F0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_748 As Double
  Dim var_224 As TextBox
  Dim var_298 As TextBox
  Dim var_2D4 As Variant
  Dim var_310 As Variant
  Dim var_34C As Variant
  Dim var_388 As Variant
  Dim var_3F4 As Variant
  Dim var_498 As Variant
  Dim var_55C As Variant
  Dim var_688 As Variant
  Dim var_1F8 As String
  Dim var_1FC As String
  Dim var_208 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_1D0 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_EC As Variant
  Dim var_2BC As Variant
  Dim var_370 As Variant
  Dim var_39C As Variant
  Dim var_428 As Variant
  Dim var_4CC As Variant
  Dim var_514 As Variant
  Dim var_590 As Variant
  Dim var_5D0 As Variant
  Dim var_630 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_6E8 As Variant
  Dim var_1120 As Double
  Dim var_2D0 As MSHFlexGrid
  Dim var_30C As MSHFlexGrid
  Dim var_76C As Variant
  Dim var_78C As Variant
  Dim var_348 As MSHFlexGrid
  Dim var_7DC As Variant
  Dim var_7FC As Variant
  Dim var_840 As Variant
  Dim var_860 As Variant
  Dim var_384 As MSHFlexGrid
  Dim var_8C4 As Variant
  Dim var_504 As Variant
  Dim var_908 As Variant
  Dim var_928 As Variant
  Dim var_3F0 As MSHFlexGrid
  Dim var_96C As Variant
  Dim var_98C As Variant
  Dim var_9BC As Variant
  Dim var_9DC As Variant
  Dim var_43C As MSHFlexGrid
  Dim var_600 As Variant
  Dim var_440 As MSHFlexGrid
  Dim var_1160 As Double
  Dim var_494 As MSHFlexGrid
  Dim var_1168 As Double
  Dim var_4E0 As MSHFlexGrid
  Dim var_4E4 As MSHFlexGrid
  Dim var_1174 As Double
  Dim var_558 As MSHFlexGrid
  Dim var_F8C As Variant
  Dim var_FAC As Variant
  Dim var_200 As String
  Dim var_230 As String
  Dim var_460 As Variant
  Dim var_644 As Variant
  Dim var_73C As Variant
  Dim var_BF4 As Variant
  Dim var_E98 As Variant
  Dim var_100C As Variant
  Dim var_88 As Recordset15
  Dim var_1B0 As Variant
  loc_170FAEC: On Error Goto loc_1711415
  loc_170FAFA: Set var_9C = Me.Txt
  loc_170FB00: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_170FB29: If (Proc_6_27_EA61EC(var_A0, "V.Type") = 0) Then
  loc_170FB2C:   Exit Sub
  loc_170FB2D: End If
  loc_170FB38: Set var_9C = Me.Txt
  loc_170FB3E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_170FB67: If (Proc_6_27_EA61EC(var_A0, "GIN Date") = 0) Then
  loc_170FB6A:   Exit Sub
  loc_170FB6B: End If
  loc_170FB76: Set var_9C = Me.Txt
  loc_170FB7C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_170FBA5: If (Proc_6_27_EA61EC(var_A0, "GIN No") = 0) Then
  loc_170FBA8:   Exit Sub
  loc_170FBA9: End If
  loc_170FBB4: Set var_9C = Me.Txt
  loc_170FBBA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A0)
  loc_170FBE3: If (Proc_6_27_EA61EC(var_A0, "Inspected By") = 0) Then
  loc_170FBE6:   Exit Sub
  loc_170FBE7: End If
  loc_170FBF2: Set var_9C = Me.Txt
  loc_170FBF8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_A0)
  loc_170FC21: If (Proc_6_27_EA61EC(var_A0, "Approved By") = 0) Then
  loc_170FC24:   Exit Sub
  loc_170FC25: End If
  loc_170FC33: Set var_9C = Me.Txt
  loc_170FC39: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_170FC41: var_AA = var_A0.Visible
  loc_170FC53: If (var_AA = &HFF) Then
  loc_170FC61:   Set var_9C = Me.Txt
  loc_170FC67:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_170FC90:   If (Proc_6_27_EA61EC(var_A0, "Party Name") = 0) Then
  loc_170FC93:     Exit Sub
  loc_170FC94:   End If
  loc_170FC97: Else
  loc_170FCA2:   Set var_9C = Me.Txt
  loc_170FCA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A0)
  loc_170FCD1:   If (Proc_6_27_EA61EC(var_A0, "Party Name") = 0) Then
  loc_170FCD4:     Exit Sub
  loc_170FCD5:   End If
  loc_170FCD5: End If
  loc_170FCD8: Call Proc_90_65_11DA210(var_AA)
  loc_170FCE3: If (var_AA = 0) Then
  loc_170FCE6:   Exit Sub
  loc_170FCE7: End If
  loc_170FCF3: Call Txt_Validate(CInt(1))
  loc_170FD03: Set var_9C = Me.TxtGrid
  loc_170FD09: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A0, 0)
  loc_170FD11: var_A0.Visible = True
  loc_170FD1D: Call Proc_90_68_F98C48(var_A0)
  loc_170FD22: var_BC = 1
  loc_170FD2B: var_DC = 1
  loc_170FD49: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_170FD4F: var_11C = Trim(var_10C)
  loc_170FD6B: If (var_11C = vbNullString) Then
  loc_170FD87:   MsgBox("Item Detail Required ", 0, var_10C, var_11C, var_13C)
  loc_170FDAA:   Me.FGrid.Row = 1
  loc_170FDB6:   Set var_9C = Me.FGrid
  loc_170FDDA:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_170FDE2:   Exit Sub
  loc_170FDE3: End If
  loc_170FE08: For var_140 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_140 'Integer
  loc_170FE12:   var_BC = CVar(CLng(var_92)) 'Long
  loc_170FE1A:   var_DC = CVar(CLng(1)) 'Long
  loc_170FE34:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_170FE42:   var_12C = vbNullString
  loc_170FE50:   var_150 = CVar(CLng(var_92)) 'Long
  loc_170FE61:   Set var_A0 = Me.FGrid
  loc_170FEA6:   If CBool(CVar(CLng(&HE)) And (Trim(CVar(CStr(var_A0.TextMatrix)))) = vbNullString)) Then
  loc_170FEBC:     var_FC = "Item Godown Required "
  loc_170FEC2:     MsgBox(var_FC, 0, var_10C, Trim(var_10C), var_13C)
  loc_170FEE5:     Me.FGrid.Row = 1
  loc_170FEF1:     Set var_9C = Me.FGrid
  loc_170FF15:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_170FF1D:     Exit Sub
  loc_170FF1E:   End If
  loc_170FF21: Next var_140 'Integer
  loc_170FF2A: Set var_9C = Me.TopCtrl1
  loc_170FF30: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_170FF38: var_A8 = CStr()
  loc_170FF49: If (var_A8 = "Add") Then
  loc_170FF79:   Set var_9C = Me.Txt
  loc_170FF7F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8, "Select Count(*) From GIN Where DocID='", var_FC, -1)
  loc_170FF87:   var_A4 = var_A0.Text
  loc_170FFA0:   unk_511047.Execute var_1EC & var_A8 & "'", 0, var_1F0
  loc_170FFA8:   var_10C = var_A4.Fields
  loc_170FFB0:    = var_1EC.Item()
  loc_170FFB8:    = var_1F0.Value
  loc_170FFE5:   If (var_10C > 0) Then
  loc_170FFEE:     Call Proc_90_70_11192DC(MemVar_1F95044)
  loc_1710001:     Set var_9C = Me.Txt
  loc_1710007:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0)
  loc_171000F:     var_A0.Text = var_A8
  loc_171001E:     Exit Sub
  loc_171001F:   End If
  loc_1710022: Else
  loc_171003F:   var_A0 = Me.Fields.Item("DocID")
  loc_1710047:   var_FC = var_A0.Value
  loc_1710050:   var_A8 = CStr(var_FC)
  loc_1710056:   global_92 = var_A8
  loc_1710067: End If
  loc_1710069: var_8A = &HFF
  loc_1710075: unk_511047.BeginTrans var_1F4
  loc_1710098: Set var_9C = Me.Txt
  loc_171009E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8, "Delete From Stock Where DocID='", var_FC)
  loc_17100A6: -1 = var_A0.Text
  loc_17100BF: unk_511047.Execute var_A4 & var_A8 & "'", var_8A, var_A8
  loc_17100F7: Set var_9C = Me.Txt
  loc_17100FD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8, "Delete From GIN Where DocID='")
  loc_1710105: var_FC = var_A0.Text
  loc_171010E: var_1E4 = -1 & var_A8
  loc_171011E: unk_511047.Execute var_A4 & var_A8 & "'", var_A4, 
  loc_1710146: Set var_9C = Me.Txt
  loc_171014C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0)
  loc_1710167: Set var_A4 = Me.Txt
  loc_171016D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC)
  loc_1710182: var_748 = Val(var_1EC.Text)
  loc_1710190: Set var_1F0 = Me.Txt
  loc_1710196: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_21C)
  loc_17101A5: Proc_6_7_F26918(var_10C, CVar(var_21C))
  loc_17101B8: Set var_220 = Me.Txt
  loc_17101BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_224)
  loc_17101F9: Set var_294 = Me.Txt
  loc_17101FF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298)
  loc_1710207: var_29C = var_298.Tag
  loc_171021A: Set var_2D0 = Me.Txt
  loc_1710220: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2D4)
  loc_171023B: Set var_30C = Me.Txt
  loc_1710241: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_310)
  loc_171025C: Set var_348 = Me.Txt
  loc_1710262: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_34C)
  loc_171027D: Set var_384 = Me.Txt
  loc_1710283: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_388)
  loc_171028B: var_38C = var_388.Text
  loc_171029E: Set var_3F0 = Me.Txt
  loc_17102A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3F4)
  loc_17102BC: Set var_43C = Me.Txt
  loc_17102C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_440)
  loc_17102D1: Proc_6_7_F26918(var_460, CVar(var_440))
  loc_17102E4: Set var_494 = Me.Txt
  loc_17102EA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_498)
  loc_1710302: Set var_4E0 = Me.Txt
  loc_1710308: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_4E4)
  loc_1710317: Proc_6_7_F26918(var_504, CVar(var_4E4))
  loc_171032A: Set var_558 = Me.Txt
  loc_1710330: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_55C)
  loc_171034B: Proc_6_7_F26918(var_600, Date)
  loc_1710354: Set var_634 = Me.TopCtrl1
  loc_171035A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_748)
  loc_17103A5: var_A8 = "Insert Into GIN(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code, "
  loc_17103BA: var_1F8 = var_A8 & "POrdDocid,POrdDate,PartyCode,PartyName,InspectedBy,ApprovedBy," & "ChalNo,ChalDate,MemInvNo,MemInvDate, " & "Remark,U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_17103CF: var_208 = var_1F8 & " Values(" & "'" & var_A0.Text
  loc_171041B: var_260 = CVar(var_208 & "'," & CStr(var_748) & ",") & var_10C & ",'" & Trim(CVar(var_224.Tag)) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1710422: var_EC = CVar(MemVar_1F95070) 'String
  loc_171047A: var_370 = var_260 & var_EC & "'," & "'" & CVar(var_29C) & "',NULL,'" & CVar(var_2D4.Tag) & "','" & CVar(var_310.Text) & "','" & CVar(var_34C.Text) 
  loc_17104DC: var_514 = var_370 & "','" & CVar(var_38C) & "'," & "'" & CVar(var_3F4.Text) & "'," & var_460 & ",'" & CVar(var_498.Text) & "'," & var_504 
  loc_171052B: var_6B8 = var_514 & "," & "'" & CVar(var_55C.Text) & "','" & CVar(MemVar_1F950C8) & "'," & var_600 & ",'" & IIf((CStr(var_644) = "Add"), "A", "E") 
  loc_1710555: unk_511047.Execute CStr(var_6B8 & "','" & CVar(MemVar_1F95078) & "')"), var_73C, -1
  loc_171065E: For var_74C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_74C 'Integer
  loc_1710668:   var_BC = CVar(CLng(var_92)) 'Long
  loc_171068A:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17106AC:   If CBool(Trim(var_10C) <> vbNullString) Then
  loc_17106BD:     Set var_9C = Me.Txt
  loc_17106C3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_208, CVar(CLng(1)))
  loc_17106CB:     var_BC = var_A0.Text
  loc_17106DD:     var_748 = Val(CStr(var_92))
  loc_17106EE:     Set var_A4 = Me.Txt
  loc_17106F4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC, var_29C)
  loc_1710709:     var_1120 = Val(var_29C)
  loc_1710717:     Set var_1F0 = Me.Txt
  loc_171071D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_21C, var_1120)
  loc_1710725:     var_FC = CVar(var_21C) 'Address
  loc_171072C:     Proc_6_7_F26918(var_10C, var_FC)
  loc_171073F:     Set var_220 = Me.Txt
  loc_1710745:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_224, var_38C)
  loc_171074D:     1 = var_224.Tag
  loc_171075B:     var_1B0 = Trim(CVar(var_38C))
  loc_1710780:     Set var_294 = Me.Txt
  loc_1710786:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_298)
  loc_1710797:     var_170 = CVar(CLng(var_92)) 'Long
  loc_171079F:     var_1C0 = CVar(CLng(&H16)) 'Long
  loc_17107BE:     var_428 = CVar(CLng(var_92)) 'Long
  loc_17107C6:     var_4CC = CVar(CLng(&H11)) 'Long
  loc_17107E5:     var_590 = CVar(CLng(var_92)) 'Long
  loc_17107ED:     var_5D0 = CVar(CLng(5)) 'Long
  loc_1710816:     var_688 = CVar(CLng(var_92)) 'Long
  loc_171081E:     var_6E8 = CVar(CLng(6)) 'Long
  loc_1710847:     var_76C = CVar(CLng(var_92)) 'Long
  loc_171084F:     var_78C = CVar(CLng(7)) 'Long
  loc_1710878:     var_7DC = CVar(CLng(var_92)) 'Long
  loc_1710880:     var_7FC = CVar(CLng(9)) 'Long
  loc_17108A9:     var_840 = CVar(CLng(var_92)) 'Long
  loc_17108B1:     var_860 = CVar(CLng(8)) 'Long
  loc_17108DA:     var_8A4 = CVar(CLng(var_92)) 'Long
  loc_17108E2:     var_8C4 = CVar(CLng(&HB)) 'Long
  loc_171090B:     var_908 = CVar(CLng(var_92)) 'Long
  loc_1710913:     var_928 = CVar(CLng(&HC)) 'Long
  loc_171093C:     var_96C = CVar(CLng(var_92)) 'Long
  loc_1710944:     var_98C = CVar(CLng(3)) 'Long
  loc_1710963:     var_9BC = CVar(CLng(var_92)) 'Long
  loc_171096B:     var_9DC = CVar(CLng(&HA)) 'Long
  loc_171097A:     var_600 = Me.FGrid.TextMatrix)
  loc_17109B4:     var_1160 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17109D2:     var_6D8 = Me.FGrid.TextMatrix)
  loc_1710A0C:     var_1168 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1710A3D:     var_116C = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H12)), CVar(CLng(var_92)), var_1168, CVar(CLng(4)), CVar(CLng(var_92)), var_6D8, CVar(CLng(2)))
  loc_1710A6E:     var_1174 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1710A9D:     Proc_6_7_F26918(var_D18, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(var_92)), var_1174, CVar(CLng(&H13)), CVar(CLng(var_92)))
  loc_1710ACE:     Proc_6_7_F26918(var_DB8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H10)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1160)
  loc_1710AE1:     Proc_6_7_F26918(var_E68, Date, CVar(CLng(&HD)), CVar(CLng(var_92)))
  loc_1710AEA:     Set var_634 = Me.TopCtrl1
  loc_1710AF0:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_600)
  loc_1710B2B:     var_F8C = CVar(CLng(var_92)) 'Long
  loc_1710B33:     var_FAC = CVar(CLng(&H17)) 'Long
  loc_1710B42:     var_FCC = Me.FGrid.TextMatrix)
  loc_1710B7A:     Proc_6_39_E7D3A0(var_1080, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_92)), var_FCC)
  loc_1710B9A:     var_1E4 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1710BA8:     var_1F8 = var_1E4 & "QtyRec,AccQty,Rate,ItemRate,RecdUnit,Unit," & "Amount,Specification,ConvRatio,"
  loc_1710BAF:     var_1FC = var_1F8 & "ContraDocid,ContraSNo,ExpDate,MfdDate, "
  loc_1710BDE:     var_230 = var_1FC & "U_Name,U_EntDt,U_AE,DepartCode,IndentDocId,IndentSno,LogSite_Code) " & "Values(" & "'" & var_208 & "'," & CStr(var_1EC.Text)
  loc_1710BFE:     var_13C = CVar(var_230 & "," & CStr(var_1120) & ",") & var_10C 
  loc_1710C25:     var_DC = "','"
  loc_1710C50:     var_2BC = var_13C & ",'" & var_1B0 & "','" & CVar(Me.LblVPrefix.Caption) & var_DC & CVar(MemVar_1F95070) & "'," & "'" & CVar(var_298.Tag) 
  loc_1710C8C:     var_39C = var_2BC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1710CC6:     var_460 = var_39C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString 
  loc_1710CF9:     var_514 = var_460 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1710D35:     var_630 = var_514 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_600)) 
  loc_1710D96:     var_BF4 = var_630 & "'," & vbNullString & CVar(var_1160) & ",'" & CVar(CStr(var_6D8)) & "'," & CVar(var_1168) & "," & "'" & CVar(var_116C) 
  loc_1710DFF:     var_E98 = var_BF4 & "'," & CVar(var_1174) & "," & var_D18 & "," & var_DB8 & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_E68 & ",'" 
  loc_1710E36:     var_100C = var_E98 & IIf((CStr(var_EA8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "PURC','" & CVar(CStr(var_FCC)) & "'," 
  loc_1710E67:     unk_511047.Execute CStr(var_100C & var_1080 & ",'" & CVar(MemVar_1F95078) & "')"), var_1114, -1
  loc_1710FDB:     var_BC = CVar(CLng(var_92)) 'Long
  loc_1710FF2:     var_FC = Me.FGrid.TextMatrix)
  loc_1711013:     Set var_A0 = Me.FGrid
  loc_171102A:     Proc_6_39_E7D3A0(var_13C, CVar(CStr(var_A0.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_92)), var_FC, CVar(CLng(&H17)))
  loc_1711062:     unk_511047.Execute CStr(CVar("Update Indent1 set ClearYN='Y' Where Docid='" & CStr(var_FC) & "' and SNo=") & var_13C), var_1B0, -1
  loc_171108A:   End If
  loc_171108D: Next var_74C 'Integer
  loc_1711096: Set var_9C = Me.TopCtrl1
  loc_171109C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_17110B5: If (CStr() = "Add") Then
  loc_17110CC:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_17110F2:   Set var_9C = Me.Txt
  loc_17110F8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_1F8, CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='"))
  loc_1711100:   var_240 = var_A0.Tag
  loc_1711116:   var_13C = -1 & Trim(CVar(var_1F8)) 
  loc_171111F:   var_190 = var_13C & "' And VP.Date_From<=" 
  loc_1711131:   Set var_A4 = Me.Txt
  loc_1711137:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1EC, var_1FC)
  loc_171113F:   var_190 = var_1EC.Text
  loc_1711147:   var_1A0 = CVar(var_1FC) 'String
  loc_171114D:   Proc_6_7_F26918(var_1B0, var_1A0)
  loc_1711155:   var_1D0 = var_1F0 & var_1B0 
  loc_171116C:   unk_511047.Execute CStr(var_1D0 & " Order By VP.Date_From DESC"), , 
  loc_1711177:   Set var_88 = var_1F0
  loc_17111BD:   If (var_88.RecordCount > 0) Then
  loc_17111CE:     Set var_9C = Me.Txt
  loc_17111D4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_17111DC:     var_A8 = var_A0.Text
  loc_17111E9:     var_748 = Val(var_A8)
  loc_17111F2:     var_BC = "V_Type"
  loc_1711239:     Proc_6_7_F26918(var_1A0, CVar(var_88.Fields.Item("Date_From")))
  loc_171126C:     var_200 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_748) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1711294:     var_208 = CStr(CVar(var_200 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_BC).Value & "' and Date_From=" & var_1A0)
  loc_171129E:     unk_511047.Execute var_208, var_1D0, -1
  loc_17112D8:   End If
  loc_17112D8: End If
  loc_17112DE: unk_511047.CommitTrans
  loc_17112E5: var_8A = 0
  loc_17112F6: Set var_9C = Me.Txt
  loc_17112FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8)
  loc_1711304: var_8A = var_A0.Text
  loc_171130C: var_90 = var_A8
  loc_1711318: var_8A = 0
  loc_1711326: Me.Requery -1
  loc_1711339: Set var_9C = Me.Txt
  loc_171133F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A0, var_AA)
  loc_1711347: var_8A = var_A0.Enabled
  loc_1711359: If (var_AA = &HFF) Then
  loc_1711367:   Me.Requery -1
  loc_171136C: End If
  loc_1711377: Me.Requery -1
  loc_17113A1: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_17113B1: Set var_9C = Me.TopCtrl1
  loc_17113B7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_BC)
  loc_17113D0: If (CStr(var_220) = "Add") Then
  loc_17113D3:   Call TopCtrl1_UnknownEvent_A()
  loc_17113D8:   Exit Sub
  loc_17113D9: End If
  loc_17113FC: Call Proc_90_67_F1D894(Proc_5_1_100EC1C("INI", Me), global_80)
  loc_1711407: Call Proc_90_64_16AC164(var_748)
  loc_1711411: Set var_88 = Nothing
  loc_1711414: Exit Sub
  loc_1711415: ' Referenced from: 170FAEC
  loc_171141B: If (var_8A = &HFF) Then
  loc_1711424:   unk_511047.RollbackTrans
  loc_1711429: End If
  loc_1711429: Proc_6_60_E63754()
  loc_171142E: Exit Sub
End Sub

Private Sub DGPreDoc_UnknownEvent_9 'F413D4
  'Data Table: 511018
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F412CB: Me.DGPreDoc.Visible = False
  loc_F412EA: If (Me.RecordCount > 0) Then
  loc_F41329:   Set var_B4 = Me.Txt
  loc_F4132F:   Call 0.Method_DGPreDoc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F41337:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4136A:   var_B0 = Me.Fields.Item("Code")
  loc_F41389:   Set var_B4 = Me.Txt
  loc_F4138F:   Call 0.Method_DGPreDoc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F41397:   var_B8.Tag = CStr(var_B0.Value)
  loc_F413AD: End If
  loc_F413B8: Set var_A8 = Me.Txt
  loc_F413BE: Call 0.Method_DGPreDoc_UnknownEvent_90 (CInt(4))
  loc_F413C6: var_B0.SetFocus
  loc_F413D2: Exit Sub
End Sub

Private Sub DGPreDoc_UnknownEvent_1F 'E75CF4
  'Data Table: 511018
  loc_E75CB2: Proc_6_153_E91D24(Me.DGPreDoc, arg_14)
  loc_E75CC9: Set var_8C = Me.FGPoint
  loc_E75CE5: Proc_6_138_106E830(Me.DGPreDoc, global_84, CInt(4))
  loc_E75CF3: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E0DB40
  'Data Table: 511018
  loc_E0DB32: If (CLng(KeyCode) = &HD) Then
  loc_E0DB3A:   Call TxtBarCode_Validate(&HFF)
  loc_E0DB3F: End If
  loc_E0DB3F: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1300908
  'Data Table: 511018
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_104 As Variant
  Dim var_164 As TextBox
  Dim var_14C As Variant
  loc_1300210: Set var_88 = Me.TopCtrl1
  loc_1300216: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_130021E: var_9C = CStr()
  loc_1300252: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_1300262:   Me.TxtBarCode.Text = vbNullString
  loc_1300270:   Call 0.Method_arg_50 (var_9C)
  loc_1300291:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_13002A1:   Exit Sub
  loc_13002A2: End If
  loc_13002C4: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_13002C7:   Exit Sub
  loc_13002C8: End If
  loc_13002D3: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_13002DC: var_110 = CStr(var_C4)
  loc_13002F3: Me.TxtBarCode.Text = vbNullString
  loc_1300312: If (Me.RecordCount = 0) Then
  loc_1300315:   Exit Sub
  loc_1300316: End If
  loc_130031C: Me.MoveFirst
  loc_130033D: var_A4 = "BarCode='" & var_110 & "'"
  loc_1300346: Me.Find var_A4, 0, 1
  loc_1300366: If (Me.EOF = &HFF) Then
  loc_1300382:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_1300395: Else
  loc_13003AF:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_13003BC:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13003C4:   var_F4 = CVar(CLng(&H11)) 'Long
  loc_13003EF:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13003F2:     var_B4 = vbNullString
  loc_13003FC:     Set var_88 = Me.FGrid
  loc_1300427:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1300430:   End If
  loc_1300443:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_130044F:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1300457:   var_F4 = CVar(CLng(0)) 'Long
  loc_1300461:   var_98 = CVar(CStr(var_106)) 'String
  loc_1300469:   Set var_88 = Me.FGrid
  loc_130046F:   LateIdCallSt
  loc_1300481:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1300489:   var_12C = CVar(CLng(1)) 'Long
  loc_13004BC:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13004C4:   Set var_150 = Me.FGrid
  loc_13004CA:   LateIdCallSt
  loc_13004E6:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13004EE:   var_12C = CVar(CLng(&H11)) 'Long
  loc_1300521:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1300529:   Set var_150 = Me.FGrid
  loc_130052F:   LateIdCallSt
  loc_1300572:   var_13C = CVar(CLng(4)) 'Long
  loc_13005A7:   Set var_150 = Me.FGrid
  loc_13005AD:   LateIdCallSt
  loc_13005FF:   Set var_150 = Me.Txt
  loc_1300605:   Call 0.Method_TxtBarCode_Validate0 (CInt(2), var_164, var_A4, var_150, CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))), 1, 1)
  loc_130060D:   var_13C = var_164.Text
  loc_1300624:   Call Proc_90_79_1064AA8(CStr(Me.Fields.Item("Code").Value), var_A4, var_170, CVar(CLng(var_106)), var_150)
  loc_1300635:   var_14C = CVar(CLng(&HB)) 'Long
  loc_1300670:   LateIdCallSt
  loc_13006D1:   Set var_150 = Me.Txt
  loc_13006D7:   Call 0.Method_TxtBarCode_Validate0 (CInt(2), var_164, var_A4, Me.FGrid, CVar(CStr(Format(CVar(var_170), "0.00"))), 1, 1)
  loc_13006DF:   var_14C = var_164.Text
  loc_13006F6:   Call Proc_90_79_1064AA8(CStr(Me.Fields.Item("Code").Value), var_A4, var_170, CVar(CLng(var_106)))
  loc_13006FF:   var_12C = CVar(CLng(var_106)) 'Long
  loc_1300707:   var_14C = CVar(CLng(&HC)) 'Long
  loc_1300742:   LateIdCallSt
  loc_13007A7:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&HA)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar(var_170), "0.00"))), 1, 1)) 'String
  loc_13007AF:   Set var_150 = Me.FGrid
  loc_13007B5:   LateIdCallSt
  loc_13007CF:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13007D7:   var_12C = CVar(CLng(3)) 'Long
  loc_130080A:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1300812:   Set var_150 = Me.FGrid
  loc_1300818:   LateIdCallSt
  loc_1300834:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_130083C:   var_F4 = CVar(CLng(&H15)) 'Long
  loc_1300841:   var_13C = "*"
  loc_130084B:   Set var_88 = Me.FGrid
  loc_1300851:   LateIdCallSt
  loc_1300860:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1300868:   var_F4 = CVar(CLng(&H16)) 'Long
  loc_13008A4:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13008AB:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_13008B3:     var_F4 = CVar(CLng(&H16)) 'Long
  loc_13008C6:     Set var_88 = Me.FGrid
  loc_13008CC:     LateIdCallSt
  loc_13008DB:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_13008E3:     var_F4 = CVar(CLng(&HE)) 'Long
  loc_13008F6:     Set var_88 = Me.FGrid
  loc_13008FC:     LateIdCallSt
  loc_1300907:   End If
  loc_1300907: End If
  loc_1300907: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_9 'FEBAA8
  'Data Table: 511018
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FEB8CC: On Error Goto loc_FEBAA1
  loc_FEB8DE: Me.DGGod.Visible = False
  loc_FEB8FD: If (Me.RecordCount > 0) Then
  loc_FEB93A:   Set var_B4 = Me.TxtGrid
  loc_FEB940:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B8)
  loc_FEB948:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEB971:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB979:   var_EC = CVar(CLng(&HE)) 'Long
  loc_FEB9AC:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FEB9B4:   Set var_B8 = Me.FGrid
  loc_FEB9BA:   LateIdCallSt
  loc_FEB9E9:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB9F1:   var_EC = CVar(CLng(&H16)) 'Long
  loc_FEBA13:   var_B0 = Me.Fields.Item("Code")
  loc_FEBA24:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FEBA2C:   Set var_B8 = Me.FGrid
  loc_FEBA32:   LateIdCallSt
  loc_FEBA4E: End If
  loc_FEBA5A: Set var_A8 = Me.TxtGrid
  loc_FEBA60: Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FEBA68: var_A4 = var_B0.Visible
  loc_FEBA7A: If (var_12E = &HFF) Then
  loc_FEBA86:   Set var_A8 = Me.TxtGrid
  loc_FEBA8C:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FEBA94:   var_B0.SetFocus
  loc_FEBAA0: End If
  loc_FEBAA0: Exit Sub
  loc_FEBAA1: ' Referenced from: FEB8CC
  loc_FEBAA1: Proc_6_60_E63754(var_11C, var_EC)
  loc_FEBAA6: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_1F 'E7650C
  'Data Table: 511018
  loc_E764CA: Proc_6_153_E91D24(Me.DGGod, arg_14)
  loc_E764E1: Set var_8C = Me.FGPoint
  loc_E764FB: Proc_6_138_106E830(Me.DGGod, global_72, 0)
  loc_E76509: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F47414
  'Data Table: 511018
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4730B: Me.DGParty.Visible = False
  loc_F4732A: If (Me.RecordCount > 0) Then
  loc_F47369:   Set var_B4 = Me.Txt
  loc_F4736F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F47377:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F473AA:   var_B0 = Me.Fields.Item("Code")
  loc_F473C9:   Set var_B4 = Me.Txt
  loc_F473CF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F473D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F473ED: End If
  loc_F473F8: Set var_A8 = Me.Txt
  loc_F473FE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(6))
  loc_F47406: var_B0.SetFocus
  loc_F47412: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'E7606C
  'Data Table: 511018
  loc_E7602A: Proc_6_153_E91D24(Me.DGParty, arg_14)
  loc_E76041: Set var_8C = Me.FGPoint
  loc_E7605D: Proc_6_138_106E830(Me.DGParty, global_68, CInt(6))
  loc_E7606B: Exit Sub
End Sub

Private Sub Form_Load() '130ACE8
  'Data Table: 511018
  Dim var_8C As String
  Dim var_BC As String
  Dim unk_511047 As Connection15
  Dim var_88 As Recordset15
  Dim var_F0 As Variant
  Dim var_AC As Variant
  Dim var_F8 As Label
  Dim Me As Recordset15
  Dim var_FC As String
  Dim var_10C As String
  Dim var_EC As Variant
  Dim var_198 As Variant
  loc_130A5E4: On Error Goto loc_130ACE0
  loc_130A5F4: global_148 = MemVar_1F95070 & "PURC"
  loc_130A608: var_BC = "Select E.ExpMfdDateInMR,E.ItemRateInMRBasedOn,E.PurChaseGodown,E.BarCodeFeatureInPurchase,G.Name PurChaseGodownName,DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_130A618: Proc_6_17_EAAE40(var_AC, MemVar_1F95078, var_BC)
  loc_130A62E: unk_511047.Execute CStr(var_EC & var_AC), -1, var_F0
  loc_130A639: Set var_88 = var_F0
  loc_130A65F: If (var_88.RecordCount > 0) Then
  loc_130A690:   global_156 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PurchaseGodown")))
  loc_130A6CB:   global_160 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PurchaseGodownName")))
  loc_130A715:   global_180 = CStr(Ucase(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ExpMfdDateInMR"))))))
  loc_130A765:   global_152 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemRateInMRBasedOn"))))))
  loc_130A7A6:   global_164 = Proc_6_38_E69628(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")))
  loc_130A7CA:   var_F8 = var_88.Fields.Item("DateEditableOnRequisitionYN")
  loc_130A7E1:   global_168 = Proc_6_38_E69628(CVar(var_F8))
  loc_130A7EE: End If
  loc_130A7F9: If (global_164 = "Yes") Then
  loc_130A808:   Me.TxtBarCode.Visible = True
  loc_130A81B:   Set var_F0 = Me.Label1
  loc_130A821:   Call 0.Method_Form_Load0 (2, var_F8)
  loc_130A829:   var_F8.Visible = True
  loc_130A835: End If
  loc_130A83F: Set global_60 = New 
  loc_130A851: Me.CursorLocation = 3
  loc_130A87B: var_FC = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Site_Code='" & MemVar_1F95070 & "' and LogSite_Code='"
  loc_130A893: Me.Open CVar(var_FC & MemVar_1F95078 & "' and NCat in('MRE') Order by Description"), CVar(MemVar_1F95044), 3
  loc_130A8AD: CVarUnk
  loc_130A8B2: VerifyVarObj
  loc_130A8B8: Set var_F0 = Me.DGVType
  loc_130A8BE: LateIdStAd
  loc_130A8D6: Set global_72 = New 
  loc_130A8E8: Me.DGVType.CursorLocation = 3
  loc_130A912: var_AC = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SysYN='Y' Order by Name") 'String
  loc_130A91C: Me.Open var_AC, CVar(MemVar_1F95044), 3
  loc_130A930: CVarUnk
  loc_130A935: VerifyVarObj
  loc_130A93B: Set var_F0 = Me.DGGod
  loc_130A941: LateIdStAd
  loc_130A959: Set global_64 = New 
  loc_130A96B: Me.DGGod.CursorLocation = 3
  loc_130A97B: If (global_164 = "Yes") Then
  loc_130A99C:   var_8C = "Select I.Code,I.BarCode,I.Name as Name,I.Unit,I.PurchRate as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_130A9AD:   Me.Open CVar(var_8C & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F95044), 3
  loc_130A9BB: Else
  loc_130A9D9:   var_8C = "Select I.Code,I.BarCode,I.Name as Name,I.Unit,I.PurchRate as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_130A9EA:   Me.Open CVar(var_8C & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_130A9F5: End If
  loc_130A9FE: CVarUnk
  loc_130AA03: VerifyVarObj
  loc_130AA09: Set var_F0 = Me.DGItem
  loc_130AA0F: LateIdStAd
  loc_130AA39: Me.DGItem.CursorLocation = 3
  loc_130AA5C: var_8C = "SELECT Indent.DocId, Convert(Char(4),Indent.VNo) as VNo, Convert(Varchar(11),Indent.VDate,103) as VDate, GodownMast.Name FROM Indent INNER JOIN GodownMast ON Indent.Department = GodownMast.Code Where (Indent.LOGSITE_CODE='" & MemVar_1F95078
  loc_130AA63: var_FC = var_8C & "' or Indent.LOGSITE_CODE='HO') and Indent.Docid in (Select Distinct Docid from Indent1 where ClearYN<>'Y' or ClearYn is NULL and VType in (Select V_type from Voucher_Type where logsite_Code='"
  loc_130AA7F: var_10C = var_FC & MemVar_1F95078 & "' and Site_Code='" & MemVar_1F95070 & "' and NCAT='PIND')) and Vtype in (Select V_type from Voucher_Type where Site_Code='"
  loc_130AAA5: Me.Open CVar(var_10C & MemVar_1F95070 & "' and LogSite_Code='" & MemVar_1F95078 & "' and NCAT='PIND') order by VDate"), CVar(MemVar_1F95044), 3
  loc_130AACB: CVarUnk
  loc_130AAD0: VerifyVarObj
  loc_130AAD6: Set var_F0 = Me.DGIndent
  loc_130AADC: LateIdStAd
  loc_130AB06: Me.DGIndent.CursorLocation = 3
  loc_130AB29: var_8C = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where (Subgroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_130AB30: var_AC = CVar(var_8C & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier') Order by Name") 'String
  loc_130AB4E: CVarUnk
  loc_130AB53: VerifyVarObj
  loc_130AB5F: LateIdStAd
  loc_130AB89: Me.DGParty.CursorLocation = 3
  loc_130AB99: Proc_6_7_F26918(var_AC, MemVar_1F950F4, Me.DGParty, New, 1, -1, Me.DGParty, New)
  loc_130ABB5: var_BC = "Select G.Docid as SearchCode,G.DocID,G.Site_Code,G.LogSite_Code From GIN G Inner Join Voucher_Type V On (G.VType= V.V_Type And G.LogSite_Code=V.LogSite_Code) Where G.VDATE>="
  loc_130ABEC: var_198 = var_BC & var_AC & " AND v.Site_Code='" & CVar(MemVar_1F95070) & "' and V.LogSite_Code='" & CVar(MemVar_1F95078) & "' and V.Ncat= 'MRE' And G.Site_Code='" 
  loc_130AC0A: r_AC, CVar(MemVar_1F95044), 3 var_198 & CVar(MemVar_1F95070) & "' Order by Docid ", CVar(MemVar_1F95044), 3
  loc_130AC47: Call Proc_90_67_F1D894(Proc_5_1_100EC1C("INI", Me, New, 1, -1, 1, -1), Me, global_64, 1)
  loc_130AC61: Me.LblUser.Left = CDbl(13500)
  loc_130AC78: Me.LblUser.Top = CDbl(7800)
  loc_130AC8F: Me.LblLDt.Top = CDbl(8160)
  loc_130ACA6: Me.LblLDt.Left = CDbl(13500)
  loc_130ACB5: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), -1)
  loc_130ACCD: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_130ACD5: Call Proc_90_60_14A073C(1)
  loc_130ACDA: Call Proc_90_64_16AC164(-1)
  loc_130ACDF: Exit Sub
  loc_130ACE0: ' Referenced from: 130A5E4
  loc_130ACE0: Proc_6_60_E63754()
  loc_130ACE5: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3348
  'Data Table: 511018
  Dim var_8C As Label
  loc_ED32A6: Call 0.Method_arg_50 (var_88)
  loc_ED32B8: Me.LblFormCaption.Caption = var_88
  loc_ED32D1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED32DD: Set var_A0 = Me.TopCtrl1
  loc_ED32E3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED32F0: Set var_8C = Me.TopCtrl1
  loc_ED32F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED3310: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED332B: Call 0.Method_arg_100 (var_B8)
  loc_ED333D: Me.LblFormCaption.Width = var_B8
  loc_ED3345: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8895C
  'Data Table: 511018
  loc_E888EF: Set global_60 = Nothing
  loc_E88901: Set global_64 = Nothing
  loc_E88913: Set global_84 = Nothing
  loc_E88925: Set global_68 = Nothing
  loc_E88937: Set global_72 = Nothing
  loc_E88949: Set global_80 = Nothing
  loc_E88955: global_52 = 0
  loc_E88958: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5BAC4
  'Data Table: 511018
  loc_E5BA8C: Set var_88 = Me.TopCtrl1
  loc_E5BA92: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E5BAB5: If ((CStr() <> "Browse") And (global_52 = 0)) Then
  loc_E5BABD:   Call Form_Unload(&HFF)
  loc_E5BAC2: End If
  loc_E5BAC2: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26FF4
  'Data Table: 511018
  loc_E26FD9: If (global_52 = &HFF) Then
  loc_E26FE9:   Me.Global.Unload Me
  loc_E26FF1: End If
  loc_E26FF1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E837F4
  'Data Table: 511018
  loc_E83784: On Error Goto loc_E837EB
  loc_E837B5: If (((global_164 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E837C2:   Me.TxtBarCode.SetFocus
  loc_E837CA: End If
  loc_E837E2: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E837EA: Exit Sub
  loc_E837EB: ' Referenced from: E83784
  loc_E837EB: Proc_6_60_E63754(Shift)
  loc_E837F0: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD5648
  'Data Table: 511018
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD548C: On Error Goto loc_FD5640
  loc_FD549E: Me.DGVType.Visible = False
  loc_FD54BD: If (Me.RecordCount > 0) Then
  loc_FD550F:   Set var_CC = Me.Txt
  loc_FD5515:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD551D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD5575:   Set var_B4 = Me.DGVType
  loc_FD558C:   Set var_CC = Me.Txt
  loc_FD5592:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD559A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD55EE:   global_108 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD55FF: End If
  loc_FD561D: Set var_B0 = Me.Txt
  loc_FD5623: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD562B: var_B4.SetFocus
  loc_FD563F: Exit Sub
  loc_FD5640: ' Referenced from: FD548C
  loc_FD5640: Proc_6_60_E63754(var_B4)
  loc_FD5645: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_1F 'E75EB0
  'Data Table: 511018
  loc_E75E6E: Proc_6_153_E91D24(Me.DGVType, arg_14)
  loc_E75E85: Set var_8C = Me.FGPoint
  loc_E75EA1: Proc_6_138_106E830(Me.DGVType, global_60, CInt(0))
  loc_E75EAF: Exit Sub
End Sub

Private Sub DGIndent_UnknownEvent_9 'F9FCF8
  'Data Table: 511018
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F9FB8F: Me.DGIndent.Visible = False
  loc_F9FBAE: If (Me.RecordCount > 0) Then
  loc_F9FBED:   Set var_B4 = Me.Txt
  loc_F9FBF3:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F9FBFB:   var_B8.Text = CStr(Me.Fields.Item("VNo").Value)
  loc_F9FC4D:   Set var_B4 = Me.Txt
  loc_F9FC53:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F9FC5B:   var_B8.Text = CStr(Me.Fields.Item("VDate").Value)
  loc_F9FC8E:   var_B0 = Me.Fields.Item("DocID")
  loc_F9FCAD:   Set var_B4 = Me.Txt
  loc_F9FCB3:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F9FCBB:   var_B8.Tag = CStr(var_B0.Value)
  loc_F9FCD1: End If
  loc_F9FCDC: Set var_A8 = Me.Txt
  loc_F9FCE2: Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HE))
  loc_F9FCEA: var_B0.SetFocus
  loc_F9FCF6: Exit Sub
End Sub

Public Function global_52Get() '512684
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '512693
  global_52 = Value
End Sub

Public Function global_56Get() '5126A2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5126B1
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96730
  'Data Table: 511018
  Dim Me As Recordset15
  Dim var_5F08 As Variant
  loc_E966BE: On Error Goto loc_E96727
  loc_E966C7: Me.MoveFirst
  loc_E966F1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96719: Proc_5_0_1107AD0(&HFF, Me, global_80)
  loc_E96721: Call Proc_90_64_16AC164(0)
  loc_E96726: Exit Sub
  loc_E96727: ' Referenced from: E966BE
  loc_E96727: Proc_6_60_E63754(var_A0)
  loc_E9672C: Exit Sub
  loc_E9672D: var_5F08 =  
End Sub

Public Sub Proc_90_60_14A073C
  'Data Table: 511018
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_D8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_149FA8E: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_149FAA9: Me.FGrid.Top = CVar(CDbl(1950))
  loc_149FAC4: Me.FGrid.Width = CVar(CDbl(19000))
  loc_149FAD0: Set var_BC = Me.FGrid
  loc_149FB03: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(var_BC.Height))
  loc_149FB2B: Me.DGItem.Left = CVar(CDbl(3000))
  loc_149FB46: Me.DGItem.Top = CVar(CDbl(3145))
  loc_149FB60: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_149FB76: Set var_D0 = Me.Txt
  loc_149FB7C: Call 0.Method_Proc_90_60_14A073C0 (CInt(6), var_D8)
  loc_149FB97: Set var_A8 = Me.Txt
  loc_149FB9D: Call 0.Method_Proc_90_60_14A073C0 (CInt(6), var_BC)
  loc_149FBB5: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_149FBC4: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_149FBE9: Me.DGGod.Left = CVar(CDbl(7530))
  loc_149FC04: Me.DGGod.Top = CVar(CDbl(3480))
  loc_149FC1A: Set var_A8 = Me.Txt
  loc_149FC20: Call 0.Method_Proc_90_60_14A073C0 (CInt(0), var_BC)
  loc_149FC3F: Me.DGVType.Left = CVar(var_BC.Left)
  loc_149FC5B: Set var_D0 = Me.Txt
  loc_149FC61: Call 0.Method_Proc_90_60_14A073C0 (CInt(0), var_D8)
  loc_149FC7C: Set var_A8 = Me.Txt
  loc_149FC82: Call 0.Method_Proc_90_60_14A073C0 (CInt(0), var_BC)
  loc_149FC9A: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_149FCA9: Me.DGVType.Top = CVar(var_BC.Left)
  loc_149FCC9: Set var_A8 = Me.Txt
  loc_149FCCF: Call 0.Method_Proc_90_60_14A073C0 (CInt(&HE), var_BC)
  loc_149FCEE: Me.DGIndent.Left = CVar(var_BC.Left)
  loc_149FD0A: Set var_D0 = Me.Txt
  loc_149FD10: Call 0.Method_Proc_90_60_14A073C0 (CInt(&HE), var_D8)
  loc_149FD2B: Set var_A8 = Me.Txt
  loc_149FD31: Call 0.Method_Proc_90_60_14A073C0 (CInt(&HE), var_BC)
  loc_149FD49: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_149FD58: Me.DGIndent.Top = CVar(var_BC.Left)
  loc_149FD75: If (global_164 <> "Yes") Then
  loc_149FD89:   Set var_A8 = Me.DGItem
  loc_149FDA8:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_149FDD1:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_149FDE0:   Me.DGItem.Width = 1
  loc_149FDEF: End If
  loc_149FDF3: Set var_E4 = Me.FGrid
  loc_149FE0A: global_88 = CStr(CLng(var_E4.BackColor))
  loc_149FE20: var_E4.Cols = &H1A
  loc_149FE28: var_94 = CVar(CLng(0)) 'Long
  loc_149FE2D: var_F8 = &H190
  loc_149FE39: LateIdCallSt
  loc_149FE41: var_94 = 0
  loc_149FE4D: var_F8 = CVar(CLng(1)) 'Long
  loc_149FE52: var_118 = "Item Name"
  loc_149FE5B: LateIdCallSt
  loc_149FE66: var_94 = CVar(CLng(1)) 'Long
  loc_149FE71: var_F8 = CVar(CInt(1)) 'Integer
  loc_149FE78: LateIdCallSt
  loc_149FE83: var_94 = CVar(CLng(1)) 'Long
  loc_149FE88: var_F8 = &HCE4
  loc_149FE94: LateIdCallSt
  loc_149FE9C: var_94 = 0
  loc_149FEA8: var_F8 = CVar(CLng(2)) 'Long
  loc_149FEAD: var_118 = "Specification"
  loc_149FEB6: LateIdCallSt
  loc_149FEC1: var_94 = CVar(CLng(2)) 'Long
  loc_149FECC: var_F8 = CVar(CInt(1)) 'Integer
  loc_149FED3: LateIdCallSt
  loc_149FEDE: var_94 = CVar(CLng(2)) 'Long
  loc_149FEE3: var_F8 = &H4B0
  loc_149FEEF: LateIdCallSt
  loc_149FEF7: var_94 = 0
  loc_149FF03: var_F8 = CVar(CLng(4)) 'Long
  loc_149FF08: var_118 = "Con.Ratio"
  loc_149FF11: LateIdCallSt
  loc_149FF1C: var_94 = CVar(CLng(4)) 'Long
  loc_149FF27: var_F8 = CVar(CInt(7)) 'Integer
  loc_149FF2E: LateIdCallSt
  loc_149FF39: var_94 = CVar(CLng(4)) 'Long
  loc_149FF44: var_F8 = CVar(CInt(7)) 'Integer
  loc_149FF4B: LateIdCallSt
  loc_149FF56: var_94 = CVar(CLng(4)) 'Long
  loc_149FF5B: var_F8 = 0
  loc_149FF67: LateIdCallSt
  loc_149FF6F: var_94 = 0
  loc_149FF7B: var_F8 = CVar(CLng(3)) 'Long
  loc_149FF80: var_118 = "Unit"
  loc_149FF89: LateIdCallSt
  loc_149FF94: var_94 = CVar(CLng(3)) 'Long
  loc_149FF9F: var_F8 = CVar(CInt(1)) 'Integer
  loc_149FFA6: LateIdCallSt
  loc_149FFB1: var_94 = CVar(CLng(3)) 'Long
  loc_149FFB6: var_F8 = &H320
  loc_149FFC2: LateIdCallSt
  loc_149FFCA: var_94 = 0
  loc_149FFD6: var_F8 = CVar(CLng(5)) 'Long
  loc_149FFDB: var_118 = "Chal.Qty"
  loc_149FFE4: LateIdCallSt
  loc_149FFEF: var_94 = CVar(CLng(5)) 'Long
  loc_149FFFA: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0001: LateIdCallSt
  loc_14A000C: var_94 = CVar(CLng(5)) 'Long
  loc_14A0017: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A001E: LateIdCallSt
  loc_14A0029: var_94 = CVar(CLng(5)) 'Long
  loc_14A002E: var_F8 = &H384
  loc_14A003A: LateIdCallSt
  loc_14A0042: var_94 = 0
  loc_14A004E: var_F8 = CVar(CLng(6)) 'Long
  loc_14A0053: var_118 = "Recd.Qty"
  loc_14A005C: LateIdCallSt
  loc_14A0067: var_94 = CVar(CLng(6)) 'Long
  loc_14A0072: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0079: LateIdCallSt
  loc_14A0084: var_94 = CVar(CLng(6)) 'Long
  loc_14A008F: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0096: LateIdCallSt
  loc_14A00A1: var_94 = CVar(CLng(6)) 'Long
  loc_14A00A6: var_F8 = &H3B6
  loc_14A00B2: LateIdCallSt
  loc_14A00BA: var_94 = 0
  loc_14A00C6: var_F8 = CVar(CLng(7)) 'Long
  loc_14A00CB: var_118 = "Rej.Qty"
  loc_14A00D4: LateIdCallSt
  loc_14A00DF: var_94 = CVar(CLng(7)) 'Long
  loc_14A00EA: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A00F1: LateIdCallSt
  loc_14A00FC: var_94 = CVar(CLng(7)) 'Long
  loc_14A0107: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A010E: LateIdCallSt
  loc_14A0119: var_94 = CVar(CLng(7)) 'Long
  loc_14A011E: var_F8 = &H320
  loc_14A012A: LateIdCallSt
  loc_14A0132: var_94 = 0
  loc_14A013E: var_F8 = CVar(CLng(8)) 'Long
  loc_14A0143: var_118 = "Acc.Qty"
  loc_14A014C: LateIdCallSt
  loc_14A0157: var_94 = CVar(CLng(8)) 'Long
  loc_14A0162: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0169: LateIdCallSt
  loc_14A0174: var_94 = CVar(CLng(8)) 'Long
  loc_14A017F: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0186: LateIdCallSt
  loc_14A0191: var_94 = CVar(CLng(8)) 'Long
  loc_14A0196: var_F8 = &H320
  loc_14A01A2: LateIdCallSt
  loc_14A01AA: var_94 = 0
  loc_14A01B6: var_F8 = CVar(CLng(9)) 'Long
  loc_14A01BB: var_118 = "Wt.Qty"
  loc_14A01C4: LateIdCallSt
  loc_14A01CF: var_94 = CVar(CLng(9)) 'Long
  loc_14A01DA: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A01E1: LateIdCallSt
  loc_14A01EC: var_94 = CVar(CLng(9)) 'Long
  loc_14A01F7: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A01FE: LateIdCallSt
  loc_14A0209: var_94 = CVar(CLng(9)) 'Long
  loc_14A020E: var_F8 = &H352
  loc_14A021A: LateIdCallSt
  loc_14A0222: var_94 = 0
  loc_14A022E: var_F8 = CVar(CLng(&HA)) 'Long
  loc_14A0233: var_118 = "Wt.Unit"
  loc_14A023C: LateIdCallSt
  loc_14A0247: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A0252: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0259: LateIdCallSt
  loc_14A0264: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A026F: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0276: LateIdCallSt
  loc_14A0281: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A0286: var_F8 = &H384
  loc_14A0292: LateIdCallSt
  loc_14A029A: var_94 = 0
  loc_14A02A6: var_F8 = CVar(CLng(&HB)) 'Long
  loc_14A02AB: var_118 = "Rate"
  loc_14A02B4: LateIdCallSt
  loc_14A02BF: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A02CA: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A02D1: LateIdCallSt
  loc_14A02DC: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A02E7: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A02EE: LateIdCallSt
  loc_14A02F9: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A02FE: var_F8 = &H384
  loc_14A030A: LateIdCallSt
  loc_14A0312: var_94 = 0
  loc_14A031E: var_F8 = CVar(CLng(&HC)) 'Long
  loc_14A0323: var_118 = "ItemRate"
  loc_14A032C: LateIdCallSt
  loc_14A0337: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A0342: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0349: LateIdCallSt
  loc_14A0354: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A035F: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0366: LateIdCallSt
  loc_14A0371: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A0376: var_F8 = 0
  loc_14A0382: LateIdCallSt
  loc_14A038A: var_94 = 0
  loc_14A0396: var_F8 = CVar(CLng(&HD)) 'Long
  loc_14A039B: var_118 = "Amount"
  loc_14A03A4: LateIdCallSt
  loc_14A03AF: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A03BA: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A03C1: LateIdCallSt
  loc_14A03CC: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A03D7: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A03DE: LateIdCallSt
  loc_14A03E9: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A03EE: var_F8 = &H3E8
  loc_14A03FA: LateIdCallSt
  loc_14A0402: var_94 = 0
  loc_14A040E: var_F8 = CVar(CLng(&HE)) 'Long
  loc_14A0413: var_118 = "Godown Name"
  loc_14A041C: LateIdCallSt
  loc_14A0427: var_94 = CVar(CLng(&HE)) 'Long
  loc_14A0432: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A0439: LateIdCallSt
  loc_14A0444: var_94 = CVar(CLng(&HE)) 'Long
  loc_14A0449: var_F8 = &HBB8
  loc_14A0455: LateIdCallSt
  loc_14A045D: var_94 = 0
  loc_14A0469: var_F8 = CVar(CLng(&HF)) 'Long
  loc_14A046E: var_118 = "Exp. Date"
  loc_14A0477: LateIdCallSt
  loc_14A0482: var_94 = CVar(CLng(&HF)) 'Long
  loc_14A048D: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A0494: LateIdCallSt
  loc_14A049F: var_94 = CVar(CLng(&HF)) 'Long
  loc_14A04A4: var_F8 = 0
  loc_14A04B0: LateIdCallSt
  loc_14A04B8: var_94 = 0
  loc_14A04C4: var_F8 = CVar(CLng(&H10)) 'Long
  loc_14A04C9: var_118 = "Mf. Date"
  loc_14A04D2: LateIdCallSt
  loc_14A04DD: var_94 = CVar(CLng(&H10)) 'Long
  loc_14A04E8: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A04EF: LateIdCallSt
  loc_14A04FA: var_94 = CVar(CLng(&H10)) 'Long
  loc_14A04FF: var_F8 = 0
  loc_14A050B: LateIdCallSt
  loc_14A051E: If (global_180 = "YES") Then
  loc_14A0532:   var_94 = CVar((CDbl(var_E4.Width) + CDbl(2400))) 'Single
  loc_14A053A:   var_E4.Width = var_94
  loc_14A0545:   var_94 = CVar(CLng(&HF)) 'Long
  loc_14A054A:   var_F8 = &H4B0
  loc_14A0556:   LateIdCallSt
  loc_14A0561:   var_94 = CVar(CLng(&H10)) 'Long
  loc_14A0566:   var_F8 = &H4B0
  loc_14A0572:   LateIdCallSt
  loc_14A057A: End If
  loc_14A057A: var_94 = 0
  loc_14A0586: var_F8 = CVar(CLng(&H17)) 'Long
  loc_14A058B: var_118 = "Godown Name"
  loc_14A0594: LateIdCallSt
  loc_14A059F: var_94 = CVar(CLng(&H17)) 'Long
  loc_14A05AA: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A05B1: LateIdCallSt
  loc_14A05BC: var_94 = CVar(CLng(&H17)) 'Long
  loc_14A05C1: var_F8 = 0
  loc_14A05CD: LateIdCallSt
  loc_14A05D5: var_94 = 0
  loc_14A05E1: var_F8 = CVar(CLng(&H18)) 'Long
  loc_14A05E6: var_118 = "Godown Name"
  loc_14A05EF: LateIdCallSt
  loc_14A05FA: var_94 = CVar(CLng(&H18)) 'Long
  loc_14A0605: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A060C: LateIdCallSt
  loc_14A0617: var_94 = CVar(CLng(&H18)) 'Long
  loc_14A061C: var_F8 = 0
  loc_14A0628: LateIdCallSt
  loc_14A0630: var_94 = 0
  loc_14A063C: var_F8 = CVar(CLng(&H19)) 'Long
  loc_14A0641: var_118 = "ClearYN"
  loc_14A064A: LateIdCallSt
  loc_14A0655: var_94 = CVar(CLng(&H19)) 'Long
  loc_14A0660: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A0667: LateIdCallSt
  loc_14A0672: var_94 = CVar(CLng(&H19)) 'Long
  loc_14A0677: var_F8 = 0
  loc_14A0683: LateIdCallSt
  loc_14A068E: var_94 = CVar(CLng(&H11)) 'Long
  loc_14A0693: var_F8 = 0
  loc_14A069F: LateIdCallSt
  loc_14A06AA: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A06AF: var_F8 = 0
  loc_14A06BB: LateIdCallSt
  loc_14A06C6: var_94 = CVar(CLng(&H12)) 'Long
  loc_14A06CB: var_F8 = 0
  loc_14A06D7: LateIdCallSt
  loc_14A06E2: var_94 = CVar(CLng(&H13)) 'Long
  loc_14A06E7: var_F8 = 0
  loc_14A06F3: LateIdCallSt
  loc_14A06FE: var_94 = CVar(CLng(&H14)) 'Long
  loc_14A0703: var_F8 = 0
  loc_14A070F: LateIdCallSt
  loc_14A071A: var_94 = CVar(CLng(&H15)) 'Long
  loc_14A071F: var_F8 = 0
  loc_14A072B: LateIdCallSt
  loc_14A0735: Set var_E4 = Nothing 
  loc_14A0739: Exit Sub
End Sub

Public Sub Proc_90_61_10B51E0(arg_C) '10B51E0
  'Data Table: 511018
  Dim var_88 As Integer
  Dim var_A0 As Variant
  Dim var_148 As Variant
  Dim var_160 As Variant
  Dim var_180 As Byte
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1D4 As Variant
  Dim var_210 As Double
  Dim var_8C As MSHFlexGrid
  loc_10B4F47: Call 0.Method_arg_A4 (CInt(&HB))
  loc_10B4F4F: var_88 = arg_C
  loc_10B4F58: If (var_88 = 0) Then
  loc_10B4F67:   var_8C = Me.Global.Screen
  loc_10B4F98:   If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_10B4F9F:     Set var_8C = (var_88)
  loc_10B4FA5:     var_A0 = var_A0.FRectGrid.Row
  loc_10B4FC6:     var_90 = Me.var_A0.Screen
  loc_10B4FCE:     var_D4 = Screen.ActiveForm
  loc_10B4FDB:     VarLateMemCallLdRfVar
  loc_10B4FFC:     Set var_138 = &H11((Trim(var_D4.FGrid) <> vbNullString))
  loc_10B5002:     var_148 = var_D4.FRectGrid.Row
  loc_10B5023:     var_14C = Me.var_148.Screen
  loc_10B5033:     var_1A0 = Screen.ActiveForm.FGrid
  loc_10B507D:     If CBool(6 And (CDbl(Val(CStr(var_1A0.TextMatrix))) <> CDbl(0))) Then
  loc_10B5084:       Set var_8C = CVar(CLng(var_A0))(CVar(CLng(var_148)))
  loc_10B508A:       var_A0 = var_1A0.FRectGrid.Row
  loc_10B50AB:       var_90 = Me.var_A0.Screen
  loc_10B50B3:       var_D4 = Screen.ActiveForm
  loc_10B50C0:       VarLateMemCallLdRfVar
  loc_10B50E4:       Set var_138 = CVar(CLng(var_A0))(&H11)
  loc_10B50EA:       var_1B0 = var_D4.FRectGrid.Row
  loc_10B50F3:       var_160 = CVar(CLng(var_1B0)) 'Long
  loc_10B50F8:       var_180 = 6
  loc_10B510B:       var_14C = Me.var_1B0.Screen
  loc_10B511B:       var_1D4 = Screen.ActiveForm.FGrid
  loc_10B5131:       var_210 = Val(CStr(var_1D4.TextMatrix))
  loc_10B5142:       Set var_1EC = var_1F0(CInt(2))
  loc_10B5148:       Call 0.Method_Proc_90_61_10B51E00 (var_1F4, var_210)
  loc_10B5150:       var_180 = var_1D4.TextBox.Text
  loc_10B516E:       var_148 = (Trim(var_D4.FGrid) + CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)))
  loc_10B5177:       var_1A0 = (var_148 + "PURC")
  loc_10B5180:       Proc_96_100_138A248(CStr(var_1A0), CLng(var_210))
  loc_10B51BA:     End If
  loc_10B51BA:   End If
  loc_10B51BA: End If
  loc_10B51C9: Me.FRectGrid.Visible = False
  loc_10B51D8: Call 0.Method_arg_A4 (CInt(0), CDate(var_1F4))
  loc_10B51DD: Exit Sub
End Sub

Public Sub Proc_90_62_E40144
  'Data Table: 511018
  loc_E40120: Set var_88 = Me.TopCtrl1
  loc_E40126: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E4013F: If (CStr() = "Browse") Then
  loc_E40142:   Exit Sub
  loc_E40143: End If
  loc_E40143: Exit Sub
End Sub

Public Sub Proc_90_63_175FF04(arg_C) '175FF04
  'Data Table: 511018
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_B4 As String
  Dim var_118 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_13C As Variant
  Dim var_180 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_190 As Variant
  Dim var_1C4 As Variant
  Dim var_16C As Variant
  Dim var_1B4 As Variant
  Dim var_1FC As Double
  Dim var_1E4 As Variant
  Dim var_1A4 As MSHFlexGrid
  Dim var_8A As Integer
  Dim var_17C As Double
  Dim var_170 As String
  Dim var_21C As Variant
  Dim var_23C As Variant
  loc_175E15C: If (arg_C = 0) Then
  loc_175E172:   var_A4 = CLng(Me.FGrid.Col)
  loc_175E182:   If (var_A4 = CLng(1)) Then
  loc_175E1D3:     Set var_90 = Me.TxtGrid
  loc_175E1D9:     Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4)
  loc_175E1E1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_175E1F9:     If (var_A4 Or (var_B4 = vbNullString)) Then
  loc_175E20F:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E217:       var_E4 = CVar(CLng(1)) 'Long
  loc_175E21C:       var_104 = vbNullString
  loc_175E226:       Set var_B0 = Me.FGrid
  loc_175E22C:       LateIdCallSt
  loc_175E251:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E259:       var_E4 = CVar(CLng(&H11)) 'Long
  loc_175E25E:       var_104 = vbNullString
  loc_175E268:       Set var_B0 = Me.FGrid
  loc_175E26E:       LateIdCallSt
  loc_175E293:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E29B:       var_E4 = CVar(CLng(3)) 'Long
  loc_175E2A0:       var_104 = vbNullString
  loc_175E2AA:       Set var_B0 = Me.FGrid
  loc_175E2B0:       LateIdCallSt
  loc_175E2D5:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E2DD:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_175E2E2:       var_104 = vbNullString
  loc_175E2EC:       Set var_B0 = Me.FGrid
  loc_175E2F2:       LateIdCallSt
  loc_175E317:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E31F:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_175E324:       var_104 = vbNullString
  loc_175E32E:       Set var_B0 = Me.FGrid
  loc_175E334:       LateIdCallSt
  loc_175E359:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E361:       var_E4 = CVar(CLng(4)) 'Long
  loc_175E366:       var_104 = vbNullString
  loc_175E370:       Set var_B0 = Me.FGrid
  loc_175E376:       LateIdCallSt
  loc_175E39B:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E3A3:       var_E4 = CVar(CLng(&HA)) 'Long
  loc_175E3A8:       var_104 = vbNullString
  loc_175E3B2:       Set var_B0 = Me.FGrid
  loc_175E3B8:       LateIdCallSt
  loc_175E3DD:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E3E5:       var_E4 = CVar(CLng(&H15)) 'Long
  loc_175E3EA:       var_104 = vbNullString
  loc_175E3F4:       Set var_B0 = Me.FGrid
  loc_175E3FA:       LateIdCallSt
  loc_175E40F:     Else
  loc_175E413:       Set var_90 = Me.TopCtrl1
  loc_175E419:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_B0)
  loc_175E432:       If (CStr(var_104) = "Add") Then
  loc_175E448:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E450:         var_F4 = CVar(CLng(1)) 'Long
  loc_175E483:         var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_175E48B:         Set var_13C = Me.FGrid
  loc_175E491:         LateIdCallSt
  loc_175E4C0:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E4C8:         var_F4 = CVar(CLng(&H11)) 'Long
  loc_175E4FB:         var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_175E503:         Set var_13C = Me.FGrid
  loc_175E509:         LateIdCallSt
  loc_175E55F:         var_104 = CVar(CLng(4)) 'Long
  loc_175E594:         Set var_13C = Me.FGrid
  loc_175E59A:         LateIdCallSt
  loc_175E5F0:         Set var_118 = Me.Txt
  loc_175E5F6:         Call 0.Method_Proc_90_63_175FF040 (CInt(2), var_13C, var_170, var_13C, CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))), 1, 1)
  loc_175E5FE:         var_104 = var_13C.Text
  loc_175E615:         Call Proc_90_79_1064AA8(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, CVar(CLng(Me.FGrid.Row)), var_13C)
  loc_175E635:         var_114 = CVar(CLng(&HB)) 'Long
  loc_175E670:         LateIdCallSt
  loc_175E6D5:         Set var_118 = Me.Txt
  loc_175E6DB:         Call 0.Method_Proc_90_63_175FF040 (CInt(2), var_13C, var_170, Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)
  loc_175E6E3:         var_114 = var_13C.Text
  loc_175E6FA:         Call Proc_90_79_1064AA8(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, CVar(CLng(Me.FGrid.Row)))
  loc_175E712:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E71A:         var_114 = CVar(CLng(&HC)) 'Long
  loc_175E755:         LateIdCallSt
  loc_175E7CD:         var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)) 'String
  loc_175E7D5:         Set var_13C = Me.FGrid
  loc_175E7DB:         LateIdCallSt
  loc_175E7F9:         Set var_118 = Me.FGrid
  loc_175E808:         var_D4 = CVar(CLng(var_118.Row)) 'Long
  loc_175E810:         var_F4 = CVar(CLng(3)) 'Long
  loc_175E843:         var_138 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_175E84B:         Set var_13C = Me.FGrid
  loc_175E851:         LateIdCallSt
  loc_175E880:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E888:         var_E4 = CVar(CLng(&H15)) 'Long
  loc_175E88D:         var_104 = "*"
  loc_175E897:         Set var_B0 = Me.FGrid
  loc_175E89D:         LateIdCallSt
  loc_175E8B2:       Else
  loc_175E8B6:         Set var_90 = Me.TopCtrl1
  loc_175E8BC:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_B0)
  loc_175E8DB:         Set var_B0 = Me.Txt
  loc_175E8E1:         Call 0.Method_Proc_90_63_175FF040 (CInt(0), var_118, (CStr(var_104) = "Edit"), var_E4, var_C4, var_13C, var_138)
  loc_175E91D:         If CBool(var_F4 And (Trim(CVar(var_118)) <> "MRCR")) Then
  loc_175E933:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E93B:           var_F4 = CVar(CLng(1)) 'Long
  loc_175E96E:           var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_175E976:           Set var_13C = Me.FGrid
  loc_175E97C:           LateIdCallSt
  loc_175E9AB:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175E9B3:           var_F4 = CVar(CLng(&H11)) 'Long
  loc_175E9E6:           var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_175E9EE:           Set var_13C = Me.FGrid
  loc_175E9F4:           LateIdCallSt
  loc_175EA23:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EA2B:           var_E4 = CVar(CLng(4)) 'Long
  loc_175EA4D:           var_1C4 = (CStr(Me.FGrid.TextMatrix)) = vbNullString)
  loc_175EA64:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EAB5:           If CBool(CVar(CLng(4)) Or (CVar(CStr(Me.FGrid.TextMatrix))) = Null)) Then
  loc_175EAEA:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EAF2:             var_104 = CVar(CLng(4)) 'Long
  loc_175EB1F:             var_15C = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_175EB27:             Set var_13C = Me.FGrid
  loc_175EB2D:             LateIdCallSt
  loc_175EB4B:           End If
  loc_175EB83:           Set var_118 = Me.Txt
  loc_175EB89:           Call 0.Method_Proc_90_63_175FF040 (CInt(2), var_13C, var_170, var_13C, var_15C, 1, 1)
  loc_175EBA8:           Call Proc_90_79_1064AA8(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, var_E4, var_13C.Text)
  loc_175EBC8:           var_114 = CVar(CLng(&HB)) 'Long
  loc_175EC03:           LateIdCallSt
  loc_175EC68:           Set var_118 = Me.Txt
  loc_175EC6E:           Call 0.Method_Proc_90_63_175FF040 (CInt(2), var_13C, var_170, Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)
  loc_175EC76:           var_114 = var_13C.Text
  loc_175EC8D:           Call Proc_90_79_1064AA8(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, CVar(CLng(Me.FGrid.Row)))
  loc_175ECA5:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175ECAD:           var_114 = CVar(CLng(&HC)) 'Long
  loc_175ECE8:           LateIdCallSt
  loc_175ED60:           var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)) 'String
  loc_175ED68:           Set var_13C = Me.FGrid
  loc_175ED6E:           LateIdCallSt
  loc_175ED9B:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EDA3:           var_F4 = CVar(CLng(3)) 'Long
  loc_175EDD6:           var_138 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_175EDDE:           Set var_13C = Me.FGrid
  loc_175EDE4:           LateIdCallSt
  loc_175EE00:         End If
  loc_175EE00:       End If
  loc_175EE13:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EE1B:       var_E4 = CVar(CLng(&H16)) 'Long
  loc_175EE5D:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_175EE73:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EE7B:         var_E4 = CVar(CLng(&H16)) 'Long
  loc_175EE8E:         Set var_B0 = Me.FGrid
  loc_175EE94:         LateIdCallSt
  loc_175EEB9:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EEC1:         var_E4 = CVar(CLng(&HE)) 'Long
  loc_175EED4:         Set var_B0 = Me.FGrid
  loc_175EEDA:         LateIdCallSt
  loc_175EEEC:       End If
  loc_175EEEC:     End If
  loc_175EEFA:     Me.FGrid.Redraw = True
  loc_175EF08:     If (var_88 = 1) Then
  loc_175EF0B:       var_C4 = 1
  loc_175EF1E:       Me.FGrid.Rows = var_C4
  loc_175EF44:       var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_B0, global_160, var_E4, var_C4, var_B0, global_156))) 'String
  loc_175EF4C:       Set var_B0 = Me.FGrid
  loc_175EF79:       Me.FGrid.FixedRows = 1
  loc_175EF81:     End If
  loc_175EF94:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EF9C:     var_E4 = CVar(CLng(&H11)) 'Long
  loc_175EFA5:     Set var_B0 = Me.FGrid
  loc_175EFAB:     var_128 = var_B0.TextMatrix)
  loc_175EFCA:     var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175EFD2:     var_16C = CVar(CLng(9)) 'Long
  loc_175EFEC:     var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_175EFF4:     var_1FC = Val(var_B4)
  loc_175F052:     var_8A = Proc_96_27_11F256C(CStr(var_128), var_1FC, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)))
  loc_175F08C:     Me.LblCurStockStr.Caption = global_56
  loc_175F097:   Else
  loc_175F09E:     If (var_A4 = CLng(&HE)) Then
  loc_175F0EF:       Set var_90 = Me.TxtGrid
  loc_175F0F5:       Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8A, var_1FC, var_16C)
  loc_175F0FD:       var_104 = var_B0.Text
  loc_175F115:       If (var_128 Or (var_B4 = vbNullString)) Then
  loc_175F12B:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F133:         var_E4 = CVar(CLng(&HE)) 'Long
  loc_175F138:         var_104 = vbNullString
  loc_175F142:         Set var_B0 = Me.FGrid
  loc_175F148:         LateIdCallSt
  loc_175F16D:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F175:         var_E4 = CVar(CLng(&H16)) 'Long
  loc_175F17A:         var_104 = vbNullString
  loc_175F184:         Set var_B0 = Me.FGrid
  loc_175F18A:         LateIdCallSt
  loc_175F19F:       Else
  loc_175F1B2:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F1BA:         var_F4 = CVar(CLng(&HE)) 'Long
  loc_175F1ED:         var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_175F1F5:         Set var_13C = Me.FGrid
  loc_175F1FB:         LateIdCallSt
  loc_175F22A:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F232:         var_F4 = CVar(CLng(&H16)) 'Long
  loc_175F265:         var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_175F26D:         Set var_13C = Me.FGrid
  loc_175F273:         LateIdCallSt
  loc_175F28F:       End If
  loc_175F2C4:       var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_175F2CA:       var_14C = Trim(var_138)
  loc_175F2EC:       If (var_14C = vbNullString) Then
  loc_175F2F5:         Call 0.Method_arg_50 (var_B4, CVar(CLng(&HE)), CVar(CLng(Me.FGrid.Row)), var_13C, var_138, var_F4, var_D4, var_13C)
  loc_175F316:         MsgBox("Godown Required", &H40, CVar(var_B4), var_138, var_14C)
  loc_175F32B:         Proc_90_63_175FF04 = 0
  loc_175F331:       End If
  loc_175F365:       global_156 = CStr(Me.Fields.Item("Code").Value)
  loc_175F3AA:       global_160 = CStr(Me.Fields.Item("Name").Value)
  loc_175F3CE:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F3D6:       var_E4 = CVar(CLng(&H11)) 'Long
  loc_175F3DF:       Set var_B0 = Me.FGrid
  loc_175F3E5:       var_128 = var_B0.TextMatrix)
  loc_175F404:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F40C:       var_16C = CVar(CLng(9)) 'Long
  loc_175F42E:       var_1FC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_175F48C:       var_8A = Proc_96_27_11F256C(CStr(var_128), var_1FC, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)))
  loc_175F4C6:       Me.LblCurStockStr.Caption = global_56
  loc_175F4D1:     Else
  loc_175F4D8:       If (var_A4 = CLng(5)) Then
  loc_175F4E5:         Set var_90 = Me.TxtGrid
  loc_175F4EB:         Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_8A, var_1FC, var_16C, var_104)
  loc_175F503:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_175F50A:           var_B4 = CStr(0)
  loc_175F517:           Set var_90 = Me.TxtGrid
  loc_175F51D:           Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, var_128)
  loc_175F525:           var_B0.Text = var_E4
  loc_175F534:         End If
  loc_175F541:         Set var_90 = Me.TxtGrid
  loc_175F547:         Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4)
  loc_175F54F:         var_C4 = var_B0.Text
  loc_175F55E:         var_14C = Me.FGrid.Row
  loc_175F567:         var_D4 = CVar(CLng(var_14C)) 'Long
  loc_175F570:         Set var_13C = Me.FGrid
  loc_175F57F:         var_F4 = CVar(CLng(var_13C.Col)) 'Long
  loc_175F5A2:         var_138 = Format(CVar(var_B4), "0.000")
  loc_175F5AB:         var_190 = CVar(CStr(var_138)) 'String
  loc_175F5B3:         Set var_180 = Me.FGrid
  loc_175F5B9:         LateIdCallSt
  loc_175F5E0:       Else
  loc_175F5E7:         If (var_A4 = CLng(6)) Then
  loc_175F5F6:           Set var_118 = Me.TxtGrid
  loc_175F5FC:           Call 0.Method_Proc_90_63_175FF040 (0, var_13C, var_170, var_180, var_190, 1)
  loc_175F604:           1 = var_13C.Text
  loc_175F627:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F62F:           var_E4 = CVar(CLng(5)) 'Long
  loc_175F638:           Set var_B0 = Me.FGrid
  loc_175F649:           var_B4 = CStr(var_B0.TextMatrix))
  loc_175F670:           If (CDbl(Val(var_B4)) < CDbl(Val(var_170))) Then
  loc_175F689:             var_C4 = "Recd. Qty Can Not Be Greater Than Chal.Qty"
  loc_175F694:             MsgBox(var_C4, 0, "Qty Validate", var_138, var_14C)
  loc_175F6A9:             Proc_90_63_175FF04 = 0
  loc_175F6AF:           End If
  loc_175F6BC:           Set var_90 = Me.TxtGrid
  loc_175F6C2:           Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, var_E4, var_C4)
  loc_175F6CA:           var_17C = var_B0.Text
  loc_175F6E2:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F6FA:           var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_175F726:           var_190 = CVar(CStr(Format(CVar(var_B4), "0.000"))) 'String
  loc_175F72E:           Set var_180 = Me.FGrid
  loc_175F734:           LateIdCallSt
  loc_175F75B:         Else
  loc_175F762:           If (var_A4 = CLng(8)) Then
  loc_175F771:             Set var_90 = Me.TxtGrid
  loc_175F777:             Call 0.Method_Proc_90_63_175FF040 (0, var_B0, var_B4, var_180, var_190, 1, 1)
  loc_175F77F:             var_F4 = var_B0.Text
  loc_175F79B:             If (CDbl(Val(var_B4)) = CDbl(0)) Then
  loc_175F7B1:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F7B9:               var_16C = CVar(CLng(8)) 'Long
  loc_175F7D1:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F7D9:               var_E4 = CVar(CLng(6)) 'Long
  loc_175F7E2:               Set var_B0 = Me.FGrid
  loc_175F7F3:               var_14C = CVar(CStr(var_B0.TextMatrix))) 'String
  loc_175F7FB:               Set var_13C = Me.FGrid
  loc_175F801:               LateIdCallSt
  loc_175F822:             Else
  loc_175F82F:               Set var_90 = Me.TxtGrid
  loc_175F835:               Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, var_13C, var_14C, var_E4, var_C4)
  loc_175F83D:               var_16C = var_B0.Text
  loc_175F855:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F85D:               var_F4 = CVar(CLng(8)) 'Long
  loc_175F889:               var_15C = CVar(CStr(Format(CVar(var_B4), "0.000"))) 'String
  loc_175F891:               Set var_13C = Me.FGrid
  loc_175F897:               LateIdCallSt
  loc_175F8B7:             End If
  loc_175F8BA:           Else
  loc_175F8C1:             If (var_A4 = CLng(7)) Then
  loc_175F8CE:               Set var_90 = Me.TxtGrid
  loc_175F8D4:               Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_13C, var_15C, 1, 1, var_F4)
  loc_175F8EC:               If Not(IsNumeric(CVar(var_B0))) Then
  loc_175F8F3:                 var_B4 = CStr(0)
  loc_175F900:                 Set var_90 = Me.TxtGrid
  loc_175F906:                 Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, var_D4, var_104)
  loc_175F90E:                 var_B0.Text = var_D4
  loc_175F91D:               End If
  loc_175F92A:               Set var_90 = Me.TxtGrid
  loc_175F930:               Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, var_F4)
  loc_175F938:               var_D4 = var_B0.Text
  loc_175F950:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F968:               var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_175F994:               var_190 = CVar(CStr(Format(CVar(var_B4), "0.00"))) 'String
  loc_175F99C:               Set var_180 = Me.FGrid
  loc_175F9A2:               LateIdCallSt
  loc_175F9D9:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175F9E1:               var_E4 = CVar(CLng(6)) 'Long
  loc_175F9EA:               Set var_B0 = Me.FGrid
  loc_175F9F0:               var_128 = var_B0.TextMatrix)
  loc_175FA10:               var_138 = Me.FGrid.Row
  loc_175FA19:               var_104 = CVar(CLng(var_138)) 'Long
  loc_175FA21:               var_16C = CVar(CLng(7)) 'Long
  loc_175FA30:               var_14C = Me.FGrid.TextMatrix)
  loc_175FA43:               var_1FC = Val(CStr(var_14C))
  loc_175FA59:               var_1E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175FA61:               var_21C = CVar(CLng(8)) 'Long
  loc_175FA82:               var_15C = CVar((Val(CStr(var_128)) - var_1FC)) 'Double
  loc_175FA92:               var_23C = CVar(CStr(Format(Me.FGrid.Col, "0.00"))) 'String
  loc_175FA9A:               Set var_1A4 = Me.FGrid
  loc_175FAA0:               LateIdCallSt
  loc_175FAD6:             Else
  loc_175FADD:               If Not (var_A4 = CLng(&HB)) Then
  loc_175FAE7:                 If (var_A4 = CLng(4)) Then
  loc_175FAEA:                 End If
  loc_175FAF4:                 Set var_90 = Me.TxtGrid
  loc_175FAFA:                 Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_1A4, var_23C, 1, 1, var_21C)
  loc_175FB12:                 If Not(IsNumeric(CVar(var_B0))) Then
  loc_175FB19:                   var_B4 = CStr(0)
  loc_175FB26:                   Set var_90 = Me.TxtGrid
  loc_175FB2C:                   Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, var_1E4, var_1FC)
  loc_175FB34:                   var_B0.Text = var_16C
  loc_175FB43:                 End If
  loc_175FB60:                 If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_175FB6F:                   Set var_90 = Me.TxtGrid
  loc_175FB75:                   Call 0.Method_Proc_90_63_175FF040 (0, var_B0, var_B4, var_104)
  loc_175FB7D:                   var_17C = var_B0.Text
  loc_175FB8A:                   var_17C = Val(var_B4)
  loc_175FBA2:                   If (global_172 <> CDbl(var_17C)) Then
  loc_175FBD4:                     If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_128, var_138, var_14C) = 7) Then
  loc_175FBDF:                       var_B4 = CStr(global_172)
  loc_175FBEB:                       Set var_90 = Me.TxtGrid
  loc_175FBF1:                       Call 0.Method_Proc_90_63_175FF040 (0, var_B0, var_B4)
  loc_175FBF9:                       var_B0.Text = var_17C
  loc_175FC08:                     End If
  loc_175FC08:                   End If
  loc_175FC08:                 End If
  loc_175FC15:                 Set var_90 = Me.TxtGrid
  loc_175FC1B:                 Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4)
  loc_175FC23:                 var_E4 = var_B0.Text
  loc_175FC3B:                 var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175FC53:                 var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_175FC7F:                 var_190 = CVar(CStr(Format(CVar(var_B4), "0.00"))) 'String
  loc_175FC87:                 Set var_180 = Me.FGrid
  loc_175FC8D:                 LateIdCallSt
  loc_175FCC4:                 var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175FCCC:                 var_16C = CVar(CLng(4)) 'Long
  loc_175FCEE:                 var_17C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_175FD04:                 var_1B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175FD0C:                 var_1E4 = CVar(CLng(9)) 'Long
  loc_175FD24:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175FD2C:                 var_E4 = CVar(CLng(8)) 'Long
  loc_175FD35:                 Set var_B0 = Me.FGrid
  loc_175FD46:                 var_B4 = CStr(var_B0.TextMatrix))
  loc_175FD54:                 var_190 = CVar(CStr((Val(var_B4) * var_17C))) 'String
  loc_175FD5C:                 Set var_1A4 = Me.FGrid
  loc_175FD62:                 LateIdCallSt
  loc_175FD92:               Else
  loc_175FD99:                 If (var_A4 = CLng(2)) Then
  loc_175FDAF:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_175FDD9:                   Set var_90 = Me.TxtGrid
  loc_175FDDF:                   Call 0.Method_Proc_90_63_175FF040 (arg_C, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)), var_C4, var_1A4, var_190)
  loc_175FDE7:                   var_E4 = var_B0.Text
  loc_175FDEF:                   var_138 = CVar(var_B4) 'String
  loc_175FDF7:                   Set var_180 = Me.FGrid
  loc_175FDFD:                   LateIdCallSt
  loc_175FE1E:                 Else
  loc_175FE25:                   If Not (var_A4 = CLng(&HF)) Then
  loc_175FE2F:                     If (var_A4 = CLng(&H10)) Then
  loc_175FE32:                     End If
  loc_175FE3B:                     Set var_90 = Me.TxtGrid
  loc_175FE41:                     Call 0.Method_Proc_90_63_175FF040 (0, var_B0, var_180, var_138, var_C4)
  loc_175FE67:                     If Not(IsDate(CVar(Proc_6_33_15125B8(var_B0, var_1E4, var_1B4)))) Then
  loc_175FE6F:                       Proc_90_63_175FF04 = 0
  loc_175FE75:                     End If
  loc_175FEAE:                     Set var_90 = Me.TxtGrid
  loc_175FEB4:                     Call 0.Method_Proc_90_63_175FF040 (0, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_175FEC7:                     var_138 = CVar(Proc_6_33_15125B8(var_B0, var_17C)) 'String
  loc_175FECF:                     Set var_1A4 = Me.FGrid
  loc_175FED5:                     LateIdCallSt
  loc_175FEF3:                   End If
  loc_175FEF3:                 End If
  loc_175FEF3:               End If
  loc_175FEF3:             End If
  loc_175FEF3:           End If
  loc_175FEF3:         End If
  loc_175FEF3:       End If
  loc_175FEF3:     End If
  loc_175FEF3:   End If
  loc_175FEF3: End If
  loc_175FEF3: Call Proc_90_73_118D218(var_1A4, var_138)
  loc_175FEFD: Proc_90_63_175FF04 = &HFF
End Sub

Public Sub Proc_90_64_16AC164
  'Data Table: 511018
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_511047 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_144 As Variant
  Dim var_118 As Variant
  Dim var_174 As Variant
  Dim var_198 As Variant
  Dim var_1E4 As Variant
  Dim var_1F0 As Recordset15
  Dim var_130 As Variant
  Dim var_1F2 As Integer
  Dim var_1AC As TextBox
  Dim var_128 As Variant
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_154 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_210 As Double
  Dim var_98 As Double
  loc_16AA81C: On Error Goto loc_16AC15E
  loc_16AA836: If (Me.RecordCount > 0) Then
  loc_16AA846:   Me.LblCurStockStr.Caption = vbNullString
  loc_16AA8A4:   unk_511047.Execute CStr("Select G.* From GIN G Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_128, -1
  loc_16AA8AF:   Set var_88 = var_12C
  loc_16AA903:   var_12C = var_88.Fields
  loc_16AA96C:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16AA9B1:   Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_194)))
  loc_16AAA00:   var_B4 = var_88.Fields.Item("U_AE")
  loc_16AAA2B:   var_130 = var_88.Fields.Item("U_AE")
  loc_16AAA8C:   var_194 = IIf((Proc_6_38_E69628(CVar(var_B4)) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_16AAAAB:   var_1AC = var_88.Fields.Item("U_EntDt")
  loc_16AAACB:   Set var_1E4 = Me.LblLDt
  loc_16AAAD1:   var_1E4.Caption = CStr(var_194 & CVar(Proc_6_38_E69628(CVar(var_1AC))))
  loc_16AAB17:   Set var_A0 = Me.Txt
  loc_16AAB1D:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&HE), var_B4)
  loc_16AAB25:   var_B4.Text = vbNullString
  loc_16AAB3F:   Set var_A0 = Me.Txt
  loc_16AAB45:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&HE), var_B4)
  loc_16AAB4D:   var_B4.Tag = vbNullString
  loc_16AAB67:   Set var_A0 = Me.Txt
  loc_16AAB6D:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&HF), var_B4)
  loc_16AAB75:   var_B4.Text = vbNullString
  loc_16AAB84:   Set var_1F0 = var_88 
  loc_16AAB8B:   Call Proc_90_78_EE4B54(var_88)
  loc_16AABC9:   Set var_12C = Me.Txt
  loc_16AABCF:   Call 0.Method_Proc_90_64_16AC1640 (CInt(9), var_130)
  loc_16AABD7:   var_130.Text = CStr(var_1F0.Fields.Item("DocID").Value)
  loc_16AAC26:   Set var_12C = Me.Txt
  loc_16AAC2C:   Call 0.Method_Proc_90_64_16AC1640 (CInt(1), var_130)
  loc_16AAC34:   var_130.Text = CStr(var_1F0.Fields.Item("VNo").Value)
  loc_16AAC72:   var_1F2 = IsNull(CVar(var_1F0.Fields.Item("VDate")))
  loc_16AAC8C:   var_130 = var_1F0.Fields.Item("VDate")
  loc_16AACE4:   Set var_198 = Me.Txt
  loc_16AACEA:   Call 0.Method_Proc_90_64_16AC1640 (CInt(2), var_1AC, CStr(IIf(var_1F2, vbNullString, Format(CVar(var_130), "DD/MMM/YYYY"))))
  loc_16AACF2:   var_1AC.Text = 1
  loc_16AAD30:   var_B4 = var_1F0.Fields.Item("vType")
  loc_16AAD41:   var_108 = CStr(var_B4.Value)
  loc_16AAD4F:   Set var_12C = Me.Txt
  loc_16AAD55:   Call 0.Method_Proc_90_64_16AC1640 (CInt(0), var_130, var_108)
  loc_16AAD5D:   var_130.Tag = 1
  loc_16AAD93:   Set var_A0 = Me.Txt
  loc_16AAD99:   Call 0.Method_Proc_90_64_16AC1640 (CInt(0), var_B4, var_108, "Select Description,NCat From Voucher_type Where V_Type='")
  loc_16AADA1:   var_154 = var_B4.Tag
  loc_16AADB7:   var_104 = -1 & Trim(CVar(var_108)) 
  loc_16AADCE:   unk_511047.Execute CStr("DD/MMM/YYYY" & "'"), var_12C, var_1F2
  loc_16AADD9:   Set var_8C = var_12C
  loc_16AAE09:   If (var_8C.RecordCount > 0) Then
  loc_16AAE45:     Set var_12C = Me.Txt
  loc_16AAE4B:     Call 0.Method_Proc_90_64_16AC1640 (CInt(0), var_130)
  loc_16AAE53:     var_130.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_16AAE83:     var_B4 = var_8C.Fields.Item("NCat")
  loc_16AAE9A:     global_108 = CStr(var_B4.Value)
  loc_16AAEAE:   Else
  loc_16AAEBC:     Set var_A0 = Me.Txt
  loc_16AAEC2:     Call 0.Method_Proc_90_64_16AC1640 (CInt(0), var_B4)
  loc_16AAECA:     var_B4.Text = vbNullString
  loc_16AAEDC:     global_108 = vbNullString
  loc_16AAEE0:   End If
  loc_16AAEFA:   var_B4 = var_1F0.Fields.Item("vPrefix")
  loc_16AAF18:   Me.LblVPrefix.Caption = CStr(var_B4.Value)
  loc_16AAF3A:   Set var_A0 = Me.Txt
  loc_16AAF40:   Call 0.Method_Proc_90_64_16AC1640 (CInt(0), var_B4)
  loc_16AAF74:   If (Trim(CVar(var_B4.Tag)) = "MRCR") Then
  loc_16AAF84:     Set var_A0 = Me.Txt
  loc_16AAF8A:     Call 0.Method_Proc_90_64_16AC1640 (CInt(6), var_B4)
  loc_16AAF92:     var_B4.Visible = True
  loc_16AAFAB:     Set var_A0 = Me.Txt
  loc_16AAFB1:     Call 0.Method_Proc_90_64_16AC1640 (CInt(3), var_B4)
  loc_16AAFB9:     var_B4.Visible = False
  loc_16AAFC8:   Else
  loc_16AAFD6:     Set var_A0 = Me.Txt
  loc_16AAFDC:     Call 0.Method_Proc_90_64_16AC1640 (CInt(4), var_B4)
  loc_16AAFE4:     var_B4.Tag = vbNullString
  loc_16AAFFE:     Set var_A0 = Me.Txt
  loc_16AB004:     Call 0.Method_Proc_90_64_16AC1640 (CInt(4), var_B4)
  loc_16AB00C:     var_B4.Text = vbNullString
  loc_16AB025:     Set var_A0 = Me.Txt
  loc_16AB02B:     Call 0.Method_Proc_90_64_16AC1640 (CInt(6), var_B4)
  loc_16AB033:     var_B4.Visible = False
  loc_16AB04C:     Set var_A0 = Me.Txt
  loc_16AB052:     Call 0.Method_Proc_90_64_16AC1640 (CInt(3), var_B4)
  loc_16AB05A:     var_B4.Visible = True
  loc_16AB066:   End If
  loc_16AB091:   var_108 = CStr(var_1F0.Fields.Item("PartyCode").Value)
  loc_16AB09F:   Set var_12C = Me.Txt
  loc_16AB0A5:   Call 0.Method_Proc_90_64_16AC1640 (CInt(6), var_130)
  loc_16AB0AD:   var_130.Tag = var_108
  loc_16AB0DD:   var_B4 = var_1F0.Fields.Item("PartyCode")
  loc_16AB0E5:   var_C4 = var_B4.Value
  loc_16AB0FF:   If CBool(var_C4 <> vbNullString) Then
  loc_16AB12F:     Set var_A0 = Me.Txt
  loc_16AB135:     Call 0.Method_Proc_90_64_16AC1640 (CInt(6), var_B4, var_108, "Select Name From SubGroup Where SubCode='", var_C4, -1)
  loc_16AB156:     unk_511047.Execute var_130 & var_108 & "'", 0, var_198
  loc_16AB166:      = var_130.Item()
  loc_16AB16E:      = var_198.Value
  loc_16AB185:     Set var_1AC = Me.Txt
  loc_16AB18B:     Call 0.Method_Proc_90_64_16AC1640 (CInt(6), var_1E4)
  loc_16AB193:     var_1E4.Text = CStr(var_B4.Tag.Fields)
  loc_16AB1D2:     var_B4 = var_1F0.Fields.Item("PartyName")
  loc_16AB1F1:     Set var_12C = Me.Txt
  loc_16AB1F7:     Call 0.Method_Proc_90_64_16AC1640 (CInt(3), var_130)
  loc_16AB1FF:     var_130.Text = Proc_6_38_E69628(CVar(var_B4))
  loc_16AB216:   Else
  loc_16AB224:     Set var_A0 = Me.Txt
  loc_16AB22A:     Call 0.Method_Proc_90_64_16AC1640 (CInt(6), var_B4)
  loc_16AB232:     var_B4.Text = vbNullString
  loc_16AB23E:   End If
  loc_16AB277:   Set var_12C = Me.Txt
  loc_16AB27D:   Call 0.Method_Proc_90_64_16AC1640 (CInt(7), var_130)
  loc_16AB285:   var_130.Text = CStr(var_1F0.Fields.Item("ChalNo").Value)
  loc_16AB2DD:   var_130 = var_1F0.Fields.Item("ChalDate")
  loc_16AB335:   Set var_198 = Me.Txt
  loc_16AB33B:   Call 0.Method_Proc_90_64_16AC1640 (CInt(8), var_1AC, CStr(IIf(IsNull(CVar(var_1F0.Fields.Item("ChalDate"))), vbNullString, Format(CVar(var_130), "DD/MMM/YYYY"))))
  loc_16AB343:   var_1AC.Text = 1
  loc_16AB3A0:   Set var_12C = Me.Txt
  loc_16AB3A6:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&HA), var_130, CStr(var_1F0.Fields.Item("MemInvNo").Value))
  loc_16AB3AE:   var_130.Text = 1
  loc_16AB3EC:   var_1F2 = IsNull(CVar(var_1F0.Fields.Item("MemInvDate")))
  loc_16AB406:   var_130 = var_1F0.Fields.Item("MemInvDate")
  loc_16AB42A:   var_128 = Format(CVar(var_130), "DD/MMM/YYYY")
  loc_16AB45E:   Set var_198 = Me.Txt
  loc_16AB464:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&HB), var_1AC, CStr(IIf(var_1F2, vbNullString, var_128)), 1)
  loc_16AB46C:   var_1AC.Text = 1
  loc_16AB4C6:   Set var_12C = Me.Txt
  loc_16AB4CC:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&HC), var_130)
  loc_16AB4D4:   var_130.Text = Proc_6_38_E69628(CVar(var_1F0.Fields.Item("InspectedBy")), var_1F2)
  loc_16AB51E:   Set var_12C = Me.Txt
  loc_16AB524:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&HD), var_130)
  loc_16AB52C:   var_130.Text = Proc_6_38_E69628(CVar(var_1F0.Fields.Item("ApprovedBy")))
  loc_16AB57C:   Call 0.Method_Proc_90_64_16AC1640 (CInt(5), var_130)
  loc_16AB584:   var_130.Text = Proc_6_38_E69628(CVar(var_1F0.Fields.Item("Remark")))
  loc_16AB59A:   Set var_1F0 = Nothing 
  loc_16AB5AD:   Me.FGrid.Redraw = False
  loc_16AB5C8:   Me.FGrid.Rows = 1
  loc_16AB5D2:   var_8E = 1
  loc_16AB5E2:   var_D4 = "Select S.*,I.Name as ItemName,G.name as GodownName From (Stock S Left Join Itemmast I On S.Item=I.Code And I.ItemType='Store')Left Join GodownMast G On S.Godowncode=G.Code  Where S.Docid='"
  loc_16AB62B:   unk_511047.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_16AB636:   Set var_88 = Me.Txt
  loc_16AB664:   If (var_88.RecordCount > 0) Then
  loc_16AB667:     ' Referenced from: 16AC039
  loc_16AB676:     If Not(var_88.EOF) Then
  loc_16AB679:       var_B0 = vbNullString
  loc_16AB683:       Set var_A0 = Me.FGrid
  loc_16AB698:       Set var_1F8 = Me.FGrid
  loc_16AB69F:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16AB6A7:       var_F4 = CVar(CLng(0)) 'Long
  loc_16AB6B1:       var_C4 = CVar(CStr(var_8E)) 'String
  loc_16AB6B8:       LateIdCallSt
  loc_16AB6C7:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16AB6CF:       var_118 = CVar(CLng(&H11)) 'Long
  loc_16AB6FF:       var_E4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_16AB706:       LateIdCallSt
  loc_16AB74B:       var_144 = CVar(CLng(var_8E)) 'Long
  loc_16AB753:       var_174 = CVar(CLng(1)) 'Long
  loc_16AB799:       var_154 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("ItemName"))), vbNullString, CVar(var_88.Fields.Item("ItemName"))))) 'String
  loc_16AB7A0:       LateIdCallSt
  loc_16AB7DE:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AB7E6:       var_144 = CVar(CLng(4)) 'Long
  loc_16AB813:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_16AB81A:       LateIdCallSt
  loc_16AB850:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AB858:       var_144 = CVar(CLng(5)) 'Long
  loc_16AB885:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ChalQty")), "0.000"))) 'String
  loc_16AB88C:       LateIdCallSt
  loc_16AB8C2:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AB8CA:       var_144 = CVar(CLng(6)) 'Long
  loc_16AB8F7:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_16AB8FE:       LateIdCallSt
  loc_16AB934:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AB93C:       var_144 = CVar(CLng(7)) 'Long
  loc_16AB969:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("RejQty")), "0.000"))) 'String
  loc_16AB970:       LateIdCallSt
  loc_16AB9A6:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AB9AE:       var_144 = CVar(CLng(8)) 'Long
  loc_16AB9DB:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("AccQty")), "0.000"))) 'String
  loc_16AB9E2:       LateIdCallSt
  loc_16ABA18:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16ABA20:       var_144 = CVar(CLng(9)) 'Long
  loc_16ABA4D:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_16ABA54:       LateIdCallSt
  loc_16ABA8A:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16ABA92:       var_144 = CVar(CLng(&HB)) 'Long
  loc_16ABABF:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_16ABAC6:       LateIdCallSt
  loc_16ABAFC:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16ABB04:       var_144 = CVar(CLng(&HC)) 'Long
  loc_16ABB31:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_16ABB38:       LateIdCallSt
  loc_16ABB6E:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16ABB76:       var_144 = CVar(CLng(&HD)) 'Long
  loc_16ABBA3:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16ABBAA:       LateIdCallSt
  loc_16ABBC4:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16ABBE7:       var_210 = Val(CStr(var_1F8.TextMatrix)))
  loc_16ABBF1:       var_98 = (var_98 + var_210)
  loc_16ABC0E:       var_B0 = "ContraDocId"
  loc_16ABC33:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_B0)), CVar(CLng(&H12)), CVar(CLng(var_8E)), var_98, var_210, CVar(CLng(&HD)), var_B0)) 'String
  loc_16ABC3A:       LateIdCallSt
  loc_16ABC83:       Proc_6_39_E7D3A0(var_E4, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_1F8, var_E4)
  loc_16ABC8C:       var_104 = CVar(CStr(var_E4)) 'String
  loc_16ABC93:       LateIdCallSt
  loc_16ABCAB:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16ABCB3:       var_118 = CVar(CLng(&H16)) 'Long
  loc_16ABCE3:       var_E4 = CVar(CStr(var_88.Fields.Item("Godowncode").Value)) 'String
  loc_16ABCEA:       LateIdCallSt
  loc_16ABD39:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GodownName")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_1F8, var_E4, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_16ABD40:       LateIdCallSt
  loc_16ABD8B:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1F8, var_E4, var_1F8)) 'String
  loc_16ABD92:       LateIdCallSt
  loc_16ABDA8:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16ABDB0:       var_118 = CVar(CLng(3)) 'Long
  loc_16ABDE0:       var_E4 = CVar(CStr(var_88.Fields.Item("RecdUnit").Value)) 'String
  loc_16ABDE7:       LateIdCallSt
  loc_16ABE01:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16ABE09:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16ABE39:       var_E4 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_16ABE40:       LateIdCallSt
  loc_16ABE76:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16ABE7E:       var_144 = CVar(CLng(&HF)) 'Long
  loc_16ABEAB:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ExpDate")), "dd/MMM/yyyy"))) 'String
  loc_16ABEB2:       LateIdCallSt
  loc_16ABEE8:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16ABEF0:       var_144 = CVar(CLng(&H10)) 'Long
  loc_16ABF1D:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("mfdDate")), "dd/MMM/yyyy"))) 'String
  loc_16ABF24:       LateIdCallSt
  loc_16ABF3E:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16ABF54:       LateIdCallSt
  loc_16ABF70:       var_B0 = "IndentDocID"
  loc_16ABF95:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_B0)), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_1F8, "*", CVar(CLng(&H15)), var_B0)) 'String
  loc_16ABF9C:       LateIdCallSt
  loc_16ABFE7:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IndentSno")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_1F8, var_E4, var_1F8)) 'String
  loc_16ABFEE:       LateIdCallSt
  loc_16AC004:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16AC00C:       var_F4 = CVar(CLng(&H19)) 'Long
  loc_16AC011:       var_144 = "Y"
  loc_16AC01A:       LateIdCallSt
  loc_16AC024:       Set var_1F8 = Nothing 
  loc_16AC02E:       var_8E = (var_8E + 1)
  loc_16AC034:       var_88.MoveNext
  loc_16AC039:       GoTo loc_16AB667
  loc_16AC03C:     End If
  loc_16AC04F:     Me.FGrid.FixedRows = 1
  loc_16AC057:   End If
  loc_16AC065:   Me.FGrid.Redraw = True
  loc_16AC073:   If (var_8E = 1) Then
  loc_16AC089:     Me.FGrid.Rows = 1
  loc_16AC0A6:     var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16AC0AE:     Set var_B4 = Me.FGrid
  loc_16AC0DD:     Me.FGrid.FixedRows = 1
  loc_16AC0E5:   End If
  loc_16AC0FD:   var_B0 = var_98
  loc_16AC105:   var_E4 = Format(var_B0, "0.00")
  loc_16AC11C:   Set var_A0 = Me.Txt
  loc_16AC122:   Call 0.Method_Proc_90_64_16AC1640 (CInt(&H10), var_B4, CStr(var_E4), 1, 1, FGrid.DispID_10000, var_E4)
  loc_16AC12A:   var_B4.Text = var_8E
  loc_16AC143: Else
  loc_16AC143:   Call Proc_90_66_F5392C(var_1F8, var_144, var_F4)
  loc_16AC148: End If
  loc_16AC148: Call Proc_90_68_F98C48(var_B0, var_1F8)
  loc_16AC152: Set var_88 = Nothing
  loc_16AC15A: Set var_8C = Nothing
  loc_16AC15D: Exit Sub
  loc_16AC15E: ' Referenced from: 16AA81C
  loc_16AC15E: Proc_6_60_E63754(var_E4)
  loc_16AC163: Exit Sub
End Sub

Public Sub Proc_90_65_11DA210
  'Data Table: 511018
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_511047 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_11D9DC1: Set var_9C = Me.TopCtrl1
  loc_11D9DC7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_11D9DCF: var_B0 = CStr()
  loc_11D9DE0: If (var_B0 = "Add") Then
  loc_11D9E10:   Set var_9C = Me.Txt
  loc_11D9E16:   Call 0.Method_Proc_90_65_11DA2100 (CInt(9), var_B4, var_B0, "Select Count(*) From GIN Where DocID='", var_AC, -1)
  loc_11D9E37:   unk_511047.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_11D9E47:    = var_D4.Item()
  loc_11D9E4F:    = var_E8.Value
  loc_11D9E7C:   If (var_B4.Text.Fields > 0) Then
  loc_11D9E85:     Call 0.Method_arg_50 (var_B0)
  loc_11D9EA6:     MsgBox("Duplicate GIN No.", &H40, CVar(var_B0), var_118, var_128)
  loc_11D9EBC:     Call Proc_90_70_11192DC(MemVar_1F95044)
  loc_11D9ECF:     Set var_9C = Me.Txt
  loc_11D9ED5:     Call 0.Method_Proc_90_65_11DA2100 (CInt(9), var_B4)
  loc_11D9EDD:     var_B4.Text = var_B0
  loc_11D9EF1:     Proc_90_65_11DA210 = 0
  loc_11D9EF7:   End If
  loc_11D9EF7: End If
  loc_11D9F1C: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_11D9F26:   var_CC = CVar(CLng(var_88)) 'Long
  loc_11D9F2E:   var_108 = CVar(CLng(1)) 'Long
  loc_11D9F4E:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11D9F6A:   If CBool(var_118 <> vbNullString) Then
  loc_11D9F7E:     If (global_108 = "GIG2") Then
  loc_11D9F81:       GoTo loc_11DA1FF
  loc_11D9F84:     End If
  loc_11D9F88:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11D9F90:     var_108 = CVar(CLng(5)) 'Long
  loc_11D9FC0:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11D9FE8:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11DA00E:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11DA01A:       Set var_9C = Me.FGrid
  loc_11DA03E:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11DA04B:       Proc_90_65_11DA210 = 0
  loc_11DA051:     End If
  loc_11DA062:     If (global_108 = "MRE") Then
  loc_11DA069:       var_CC = CVar(CLng(var_88)) 'Long
  loc_11DA071:       var_108 = CVar(CLng(8)) 'Long
  loc_11DA0A1:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11DA0C9:         MsgBox(CVar("Acc. Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11DA0EF:         Me.FGrid.Row = CVar(CLng(var_88))
  loc_11DA0FB:         Set var_9C = Me.FGrid
  loc_11DA11F:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11DA12C:         Proc_90_65_11DA210 = 0
  loc_11DA132:       End If
  loc_11DA136:       var_CC = CVar(CLng(var_88)) 'Long
  loc_11DA13E:       var_108 = CVar(CLng(6)) 'Long
  loc_11DA16E:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11DA196:         MsgBox(CVar("Recd. Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11DA1BC:         Me.FGrid.Row = CVar(CLng(var_88))
  loc_11DA1C8:         Set var_9C = Me.FGrid
  loc_11DA1EC:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11DA1F9:         Proc_90_65_11DA210 = 0
  loc_11DA1FF:         ' Referenced from: 11D9F81
  loc_11DA1FF:       End If
  loc_11DA1FF:     End If
  loc_11DA1FF:   End If
  loc_11DA202: Next var_12C 'Integer
  loc_11DA207: Proc_90_65_11DA210 = 
End Sub

Public Sub Proc_90_66_F5392C
  'Data Table: 511018
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_D8 As Variant
  loc_F53815: Me.LblVPrefix.Caption = vbNullString
  loc_F5382B: Set var_8C = Me.Txt
  loc_F53831: Call 0.Method_Proc_90_66_F5392CC (var_8E, var_86)
  loc_F53841: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F53857:   Set var_8C = Me.Txt
  loc_F5385D:   Call 0.Method_Proc_90_66_F5392C0 (CInt(var_86), var_98)
  loc_F53865:   var_98.Text = vbNullString
  loc_F53881:   Set var_8C = Me.Txt
  loc_F53887:   Call 0.Method_Proc_90_66_F5392C0 (CInt(var_86), var_98)
  loc_F5388F:   var_98.Tag = vbNullString
  loc_F5389E: Next var_92 'Byte
  loc_F538B1: Me.LblCurStockStr.Caption = vbNullString
  loc_F538CC: Me.FGrid.Rows = 1
  loc_F538E9: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F538F1: Set var_98 = Me.FGrid
  loc_F53920: Me.FGrid.FixedRows = 1
  loc_F53928: Exit Sub
End Sub

Public Sub Proc_90_67_F1D894(arg_C) 'F1D894
  'Data Table: 511018
  Dim var_98 As TextBox
  loc_F1D79A: Set var_8C = Me.Txt
  loc_F1D7A0: Call 0.Method_Proc_90_67_F1D894C (var_8E, var_86)
  loc_F1D7B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1D7C6:   Set var_8C = Me.Txt
  loc_F1D7CC:   Call 0.Method_Proc_90_67_F1D8940 (CInt(var_86), var_98)
  loc_F1D7D4:   var_98.Enabled = arg_C
  loc_F1D7E3: Next var_92 'Byte
  loc_F1D7F6: Set var_8C = Me.Txt
  loc_F1D7FC: Call 0.Method_Proc_90_67_F1D8940 (CInt(9), var_98)
  loc_F1D804: var_98.Enabled = False
  loc_F1D81D: Set var_8C = Me.Txt
  loc_F1D823: Call 0.Method_Proc_90_67_F1D8940 (CInt(&H10), var_98)
  loc_F1D82B: var_98.Enabled = False
  loc_F1D842: If (global_168 = "No") Then
  loc_F1D852:   Set var_8C = Me.Txt
  loc_F1D858:   Call 0.Method_Proc_90_67_F1D8940 (CInt(2), var_98)
  loc_F1D860:   var_98.Enabled = False
  loc_F1D879:   Set var_8C = Me.Txt
  loc_F1D87F:   Call 0.Method_Proc_90_67_F1D8940 (CInt(1), var_98)
  loc_F1D887:   var_98.Enabled = False
  loc_F1D893: End If
  loc_F1D893: Exit Sub
End Sub

Public Sub Proc_90_68_F98C48
  'Data Table: 511018
  loc_F98AE8: If (CBool(Me.DGPreDoc.Visible) = &HFF) Then
  loc_F98AFA:   Me.DGPreDoc.Visible = False
  loc_F98B02: End If
  loc_F98B1E: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F98B30:   Me.DGItem.Visible = False
  loc_F98B38: End If
  loc_F98B54: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F98B66:   Me.DGParty.Visible = False
  loc_F98B6E: End If
  loc_F98B8A: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_F98B9C:   Me.DGGod.Visible = False
  loc_F98BA4: End If
  loc_F98BC0: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F98BD2:   Me.DGVType.Visible = False
  loc_F98BDA: End If
  loc_F98BF6: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_F98C08:   Me.DGIndent.Visible = False
  loc_F98C10: End If
  loc_F98C2C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F98C3E:   Me.FGPoint.Visible = False
  loc_F98C46: End If
  loc_F98C46: Exit Sub
End Sub

Public Sub Proc_90_69_F0D124
  'Data Table: 511018
  loc_F0D048: Call Proc_90_68_F98C48()
  loc_F0D058: Set var_88 = Me.Txt
  loc_F0D05E: Call 0.Method_Proc_90_69_F0D1240 (CInt(2))
  loc_F0D087: If (Proc_6_27_EA61EC(var_8C, "GIN Date") = 0) Then
  loc_F0D08A:   Exit Sub
  loc_F0D08B: End If
  loc_F0D096: Set var_88 = Me.Txt
  loc_F0D09C: Call 0.Method_Proc_90_69_F0D1240 (CInt(1), var_8C)
  loc_F0D0C5: If (Proc_6_27_EA61EC(var_8C, "GIN No") = 0) Then
  loc_F0D0C8:   Exit Sub
  loc_F0D0C9: End If
  loc_F0D100: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0D103:   Call TopCtrl1_UnknownEvent_16()
  loc_F0D10B: Else
  loc_F0D111:   Call 0.Method_arg_1E8 (var_88)
  loc_F0D119:   Call var_88.SetFocus
  loc_F0D122: End If
  loc_F0D122: Exit Sub
End Sub

Public Sub Proc_90_70_11192DC
  'Data Table: 511018
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_1118FD0: Set var_94 = Me.Txt
  loc_1118FD6: Call 0.Method_Proc_90_70_11192DC0 (CInt(0), var_98)
  loc_1118FEC: var_BC = Trim(CVar(var_98.Tag))
  loc_1118FF5: var_90 = CStr(var_BC)
  loc_111901A: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_111904B: Set var_94 = Me.Txt
  loc_1119051: Call 0.Method_Proc_90_70_11192DC0 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1119060: Proc_6_7_F26918(var_BC, CVar(var_98), var_130)
  loc_1119068: var_EC = -1 & var_BC 
  loc_111907C: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1119087: Set var_8C = var_134
  loc_11190C3: If (var_8C.RecordCount > 0) Then
  loc_1119102:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1119105:     GoTo loc_1119192
  loc_1119108:   End If
  loc_1119139:   global_100 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1119164:   var_98 = var_8C.Fields.Item("start_srl_no")
  loc_1119179:   var_BC = (var_98.Value + 1)
  loc_1119181:   global_104 = CInt(var_BC)
  loc_1119192:   ' Referenced from: 1119105
  loc_1119192: End If
  loc_11191BD: var_AC = Space((5 - Len(var_90)))
  loc_11191C5: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_98.Value)
  loc_11191D2: var_EC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_100))
  loc_11191E6: var_10C = Space((5 - Len(global_100)))
  loc_11191EE: var_130 = (var_EC + var_EC & " Order By VP.Date_From DESC")
  loc_1119207: var_14C = Space((8 - Len(CStr(global_104))))
  loc_111920F: var_15C = (var_130 + var_14C)
  loc_111921E: var_17C = (var_15C + CVar(CStr(global_104)))
  loc_1119229: global_92 = CStr(var_17C)
  loc_111925F: Me.LblVPrefix.Caption = global_100
  loc_1119278: Set var_94 = Me.Txt
  loc_111927E: Call 0.Method_Proc_90_70_11192DC0 (CInt(9), var_98)
  loc_1119286: var_98.Text = global_92
  loc_11192A8: Set var_94 = Me.Txt
  loc_11192AE: Call 0.Method_Proc_90_70_11192DC0 (CInt(1), var_98)
  loc_11192B6: var_98.Text = CStr(global_104)
  loc_11192CB: var_88 = global_92
  loc_11192D3: Set var_8C = Nothing
  loc_11192D6: Proc_90_70_11192DC = global_104
End Sub

Public Sub Proc_90_71_10ED538(arg_C, arg_10, arg_14) '10ED538
  'Data Table: 511018
  Dim unk_511047 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10ED262: If (arg_C = "MRE") Then
  loc_10ED289:   unk_511047.Execute "Select Distinct DocId,VType,VNo From Stock Where ContraDocId='" & arg_10 & "'", var_C0, -1
  loc_10ED294:   Set var_8C = var_C4
  loc_10ED2B8:   If (var_8C.RecordCount > 0) Then
  loc_10ED2C3:     If (var_90 = vbNullString) Then
  loc_10ED2C9:       var_94 = "GIN (Re Offer)"
  loc_10ED2CF:     Else
  loc_10ED2E4:       var_90 = var_90 & " And " & vbCrLf & "GIN (Re Offer)"
  loc_10ED2EE:     End If
  loc_10ED2EE:   End If
  loc_10ED2F1: Else
  loc_10ED2F6:   Proc_90_71_10ED538 = &HFF
  loc_10ED2FC: End If
  loc_10ED310: If (var_8C.RecordCount > 0) Then
  loc_10ED313:   ' Referenced from: 10ED48C
  loc_10ED322:   If Not(var_8C.EOF) Then
  loc_10ED32D:     If (var_90 = vbNullString) Then
  loc_10ED370:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("vType").Value), 6)
  loc_10ED377:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10ED3A9:       var_90 = CStr(var_10C & var_8C.Fields.Item("VNo").Value)
  loc_10ED3CE:     Else
  loc_10ED40A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10ED42A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("vType").Value), 6) & " V.No :-> ") 'String
  loc_10ED457:       var_11C = var_10C & var_8C.Fields.Item("VNo").Value 
  loc_10ED45C:       var_90 = CStr(var_11C)
  loc_10ED484:     End If
  loc_10ED487:     var_8C.MoveNext
  loc_10ED48C:     GoTo loc_10ED313
  loc_10ED48F:   End If
  loc_10ED495:   Call 0.Method_arg_50 (var_138)
  loc_10ED4F1:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10ED4F4:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10ED523:   Set var_8C = Nothing
  loc_10ED526:   Proc_90_71_10ED538 = 0
  loc_10ED52C: End If
  loc_10ED531: Proc_90_71_10ED538 = &HFF
End Sub

Public Sub Proc_90_72_F034DC
  'Data Table: 511018
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_108 As TextBox
  loc_F03400: On Error Goto loc_F034D6
  loc_F03428: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F03432:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F0343A:   var_D8 = CVar(CLng(&HD)) 'Long
  loc_F03466:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F03475: Next var_A8 'Integer
  loc_F034B1: Set var_94 = Me.Txt
  loc_F034B7: Call 0.Method_Proc_90_72_F034DC0 (CInt(&H10), var_108, CStr(Format(var_90, "0.00")))
  loc_F034BF: var_108.Text = 1
  loc_F034D5: Exit Sub
  loc_F034D6: ' Referenced from: F03400
  loc_F034D6: Proc_6_60_E63754(1)
  loc_F034DB: Exit Sub
End Sub

Public Sub Proc_90_73_118D218
  'Data Table: 511018
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_234 As Double
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_118CE5F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118CE67: var_C8 = CVar(CLng(4)) 'Long
  loc_118CE9F: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_118CEB5:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118CEBD:   var_C8 = CVar(CLng(4)) 'Long
  loc_118CEC6:   var_EC = CVar(CStr(1)) 'String
  loc_118CECE:   Set var_DC = Me.FGrid
  loc_118CED4:   LateIdCallSt
  loc_118CEEA: End If
  loc_118CEFD: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118CF05: var_C8 = CVar(CLng(6)) 'Long
  loc_118CF3D: var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118CF45: var_134 = CVar(CLng(7)) 'Long
  loc_118CF7D: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118CF85: var_1F0 = CVar(CLng(8)) 'Long
  loc_118CFA6: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) - Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_118CFB6: var_210 = CVar(CStr(Format(var_17C, "0.00"))) 'String
  loc_118CFBE: Set var_224 = Me.FGrid
  loc_118CFC4: LateIdCallSt
  loc_118D00A: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D012: var_C8 = CVar(CLng(4)) 'Long
  loc_118D04A: var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D052: var_134 = CVar(CLng(8)) 'Long
  loc_118D08A: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D092: var_1F0 = CVar(CLng(9)) 'Long
  loc_118D0C3: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_118D0CB: Set var_224 = Me.FGrid
  loc_118D0D1: LateIdCallSt
  loc_118D117: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D11F: var_C8 = CVar(CLng(&HB)) 'Long
  loc_118D157: var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D181: var_234 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_118D1DE: LateIdCallSt
  loc_118D211: Call Proc_90_72_F034DC(Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_234)), "0.00"))), 1, 1, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), var_234, CVar(CLng(8)))
  loc_118D216: Exit Sub
End Sub

Public Sub Proc_90_74_14BD794
  'Data Table: 511018
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim unk_511047 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_D8 As Recordset15
  Dim var_D0 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_CC As Variant
  Dim var_14E As Integer
  Dim var_F4 As Variant
  Dim var_E0 As Variant
  Dim var_134 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_14C As Variant
  Dim var_8A As Integer
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_148 As Fields15
  Dim var_124 As Variant
  Dim var_184 As Variant
  Dim var_144 As Variant
  Dim var_210 As Double
  Dim var_1A4 As Variant
  Dim var_220 As Variant
  loc_14BCAA0: On Error Goto loc_14BD78D
  loc_14BCAAA: var_98 = "Select Distinct P1.Docid ,P1.Sno,Max(P1.VNo) as V_No,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date,Max(P1.PartyCode) as PartyCode," & " Max(P1.Itemcode) as Itemcode,Max(P1.Unit) as Unit,Max(P1.Qty) as Qty,Max(P1.Rate) as Rate,Max(P1.Qty)- sum(isnull(S.QtyRec,0)) as PendQty,"
  loc_14BCAB1: var_9C = var_98 & " Max(P1.Amount) as Amount,max(P1.Specification) as Specific ,Max(I.Name) As ItemName,max(I.convratio) as ConvRatio,max(I.IssueUnit) as IssUnit,Max(SG.Name) as PartyName ,max(P1.indentDocid) as IDocid ,max(P1.IndentSno) as ISno "
  loc_14BCABF: var_A4 = var_9C & " From (((POrder1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno )) " & " Left Join SubGroup SG on P1.PartyCode=SG.SubCode) Left Join Itemmast I on P1.Itemcode=I.Code And I.ItemType='Store') "
  loc_14BCAD4: var_90 = var_A4 & " Where P1.DocID='" & arg_10 & "' Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isnull(S.QtyRec,0)) > 0 "
  loc_14BCAFC: unk_511047.Execute var_90, var_CC, -1
  loc_14BCB07: Set var_88 = var_D0
  loc_14BCB24: If (var_88.RecordCount > 0) Then
  loc_14BCB2A:   Set var_D8 = var_88 
  loc_14BCB67:   Set var_E0 = Me.Txt
  loc_14BCB6D:   Call 0.Method_Proc_90_74_14BD7940 (CInt(6), var_E4)
  loc_14BCB75:   var_E4.Tag = CStr(var_D8.Fields.Item("PartyCode").Value)
  loc_14BCBA2:   var_DC = var_D8.Fields.Item("PartyName")
  loc_14BCBB3:   var_14E = IsNull(CVar(var_DC))
  loc_14BCC05:   Set var_148 = Me.Txt
  loc_14BCC0B:   Call 0.Method_Proc_90_74_14BD7940 (CInt(6), var_14C, CStr(IIf(var_14E, vbNullString, CVar(var_D8.Fields.Item("PartyName")))))
  loc_14BCC13:   var_14C.Text = var_14E
  loc_14BCC40:   Set var_D0 = Me.Txt
  loc_14BCC46:   Call 0.Method_Proc_90_74_14BD7940 (CInt(6), var_DC)
  loc_14BCC4E:   var_DC.Enabled = False
  loc_14BCC68:   Set var_D0 = Me.Txt
  loc_14BCC6E:   Call 0.Method_Proc_90_74_14BD7940 (CInt(7), var_DC)
  loc_14BCC76:   var_DC.Text = vbNullString
  loc_14BCC90:   Set var_D0 = Me.Txt
  loc_14BCC96:   Call 0.Method_Proc_90_74_14BD7940 (CInt(8), var_DC)
  loc_14BCC9E:   var_DC.Text = vbNullString
  loc_14BCCB8:   Set var_D0 = Me.Txt
  loc_14BCCBE:   Call 0.Method_Proc_90_74_14BD7940 (CInt(&HA), var_DC)
  loc_14BCCC6:   var_DC.Text = vbNullString
  loc_14BCCE0:   Set var_D0 = Me.Txt
  loc_14BCCE6:   Call 0.Method_Proc_90_74_14BD7940 (CInt(&HB), var_DC)
  loc_14BCCEE:   var_DC.Text = vbNullString
  loc_14BCD09:   Me.FGrid.Redraw = False
  loc_14BCD2B:   var_8A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14BCD34:   ' Referenced from: 14BD629
  loc_14BCD43:   If Not(var_88.EOF) Then
  loc_14BCD6B:     For var_152 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_152 'Integer
  loc_14BCD75:       var_BC = CVar(CLng(var_92)) 'Long
  loc_14BCD7D:       var_104 = CVar(CLng(&H12)) 'Long
  loc_14BCD97:       var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14BCDBD:       var_124 = var_88.Fields.Item("DocID").Value
  loc_14BCDCD:       var_174 = CVar(CLng(var_92)) 'Long
  loc_14BCE45:       If CBool(CVar(CLng(&H13)) And (CVar(CStr(Me.FGrid.TextMatrix))) = var_88.Fields.Item("SNo").Value)) Then
  loc_14BCE48:         GoTo loc_14BD621
  loc_14BCE4B:       End If
  loc_14BCE4E:     Next var_152 'Integer
  loc_14BCE71:     var_CC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_14BCE79:     Set var_DC = Me.FGrid
  loc_14BCE97:     Set var_208 = Me.FGrid
  loc_14BCE9E:     var_BC = CVar(CLng(var_8A)) 'Long
  loc_14BCEA6:     var_104 = CVar(CLng(0)) 'Long
  loc_14BCEB0:     var_CC = CVar(CStr(var_8A)) 'String
  loc_14BCEB7:     LateIdCallSt
  loc_14BCEC6:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BCECE:     var_114 = CVar(CLng(&H11)) 'Long
  loc_14BCEFE:     var_124 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_14BCF05:     LateIdCallSt
  loc_14BCF6E:     var_E4 = var_88.Fields.Item("ItemName")
  loc_14BCF9F:     LateIdCallSt
  loc_14BCFF6:     var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Specific")), CVar(CLng(2)), CVar(CLng(var_8A)), var_208, CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("ItemName"))), vbNullString, CVar(var_E4)))), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_14BCFFD:     LateIdCallSt
  loc_14BD013:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BD01B:     var_114 = CVar(CLng(3)) 'Long
  loc_14BD04B:     var_124 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_14BD052:     LateIdCallSt
  loc_14BD0A1:     var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IssUnit")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_208, var_124, CVar(CLng(&HA)), CVar(CLng(var_8A)))) 'String
  loc_14BD0A8:     LateIdCallSt
  loc_14BD0DA:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BD0E2:     var_164 = CVar(CLng(4)) 'Long
  loc_14BD10F:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_14BD116:     LateIdCallSt
  loc_14BD14C:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BD154:     var_164 = CVar(CLng(5)) 'Long
  loc_14BD181:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14BD188:     LateIdCallSt
  loc_14BD1BE:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BD1C6:     var_164 = CVar(CLng(6)) 'Long
  loc_14BD1F3:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14BD1FA:     LateIdCallSt
  loc_14BD230:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BD238:     var_164 = CVar(CLng(8)) 'Long
  loc_14BD265:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14BD26C:     LateIdCallSt
  loc_14BD2AA:     var_164 = CVar(CLng(&HB)) 'Long
  loc_14BD2DE:     LateIdCallSt
  loc_14BD329:     Set var_E0 = Me.Txt
  loc_14BD32F:     Call 0.Method_Proc_90_74_14BD7940 (CInt(2), var_E4, var_9C, var_208, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))), 1, 1)
  loc_14BD337:     var_164 = var_E4.Text
  loc_14BD34E:     Call Proc_90_79_1064AA8(CStr(var_88.Fields.Item("ItemCode").Value), var_9C, var_210, CVar(CLng(var_8A)), var_208)
  loc_14BD357:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_14BD35F:     var_174 = CVar(CLng(&HC)) 'Long
  loc_14BD38C:     var_1B4 = CVar(CStr(Format(CVar(var_210), "0.00"))) 'String
  loc_14BD393:     LateIdCallSt
  loc_14BD3DA:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BD3E2:     var_164 = CVar(CLng(&HD)) 'Long
  loc_14BD40F:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_14BD416:     LateIdCallSt
  loc_14BD430:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BD438:     var_114 = CVar(CLng(&H12)) 'Long
  loc_14BD468:     var_124 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_14BD46F:     LateIdCallSt
  loc_14BD489:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BD491:     var_114 = CVar(CLng(&H13)) 'Long
  loc_14BD4C1:     var_124 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_14BD4C8:     LateIdCallSt
  loc_14BD517:     var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IDocid")), CVar(CLng(&H17)), CVar(CLng(var_8A)), var_208, var_124, CVar(CLng(&H17)), CVar(CLng(var_8A)))) 'String
  loc_14BD51E:     LateIdCallSt
  loc_14BD567:     Proc_6_39_E7D3A0(var_124, CVar(var_88.Fields.Item("ISNo")), CVar(CLng(&H18)), CVar(CLng(var_8A)), var_208, var_124)
  loc_14BD570:     var_134 = CVar(CStr(var_124)) 'String
  loc_14BD577:     LateIdCallSt
  loc_14BD58F:     var_164 = CVar(CLng(var_8A)) 'Long
  loc_14BD597:     var_184 = CVar(CLng(4)) 'Long
  loc_14BD5B2:     var_210 = Val(CStr(Txt.DispID_41))
  loc_14BD5B9:     var_1A4 = CVar(CLng(var_8A)) 'Long
  loc_14BD5C1:     var_220 = CVar(CLng(9)) 'Long
  loc_14BD5CA:     var_BC = CVar(CLng(var_8A)) 'Long
  loc_14BD5D2:     var_104 = CVar(CLng(8)) 'Long
  loc_14BD5F3:     var_134 = CVar(CStr((Val(CStr(Txt.DispID_41)) * var_210))) 'String
  loc_14BD5FA:     LateIdCallSt
  loc_14BD614:     Set var_208 = Nothing 
  loc_14BD61E:     var_8A = (var_8A + 1)
  loc_14BD621:     ' Referenced from: 14BCE48
  loc_14BD624:     var_88.MoveNext
  loc_14BD629:     GoTo loc_14BCD34
  loc_14BD62C:   End If
  loc_14BD63F:   Me.FGrid.FixedRows = 1
  loc_14BD649:   Set var_D8 = Nothing 
  loc_14BD650: Else
  loc_14BD65E:   Me.FGrid.Redraw = True
  loc_14BD66C:   If (var_8A = 1) Then
  loc_14BD66F:     var_BC = 1
  loc_14BD682:     Me.FGrid.Rows = var_BC
  loc_14BD6A8:     var_CC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8A, var_208, var_134, var_104, var_BC, var_220))) 'String
  loc_14BD6B0:     Set var_DC = Me.FGrid
  loc_14BD6DD:     Me.FGrid.FixedRows = 1
  loc_14BD6E5:   End If
  loc_14BD6E5: End If
  loc_14BD6F3: Me.FGrid.Redraw = True
  loc_14BD701: If (var_8A = 1) Then
  loc_14BD717:   Me.FGrid.Rows = 1
  loc_14BD73D:   var_CC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_CC, var_1A4, var_210))) 'String
  loc_14BD745:   Set var_DC = Me.FGrid
  loc_14BD772:   Me.FGrid.FixedRows = 1
  loc_14BD77A: End If
  loc_14BD77A: Call Proc_90_73_118D218(FGrid.DispID_10000, var_CC, var_184, var_164)
  loc_14BD77F: Call Proc_90_68_F98C48(var_208, var_134)
  loc_14BD789: Set var_88 = Nothing
  loc_14BD78C: Exit Sub
  loc_14BD78D: ' Referenced from: 14BCAA0
  loc_14BD78D: Proc_6_60_E63754(var_208)
  loc_14BD792: Exit Sub
End Sub

Public Sub Proc_90_75_14676EC
  'Data Table: 511018
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim unk_511047 As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_D4 As Variant
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_150 As Variant
  Dim var_12C As Variant
  Dim var_130 As Variant
  Dim var_170 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_F4 As Variant
  Dim var_11C As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  loc_1466B50: On Error Goto loc_14676E5
  loc_1466B5A: var_98 = "Select Distinct P1.Docid ,P1.Sno,Max(P1.VNo) as V_No,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date," & " '' as PartyCode, Max(P1.Item) as Itemcode,Max(P1.Unit) as Unit,"
  loc_1466B61: var_9C = var_98 & " Max(P1.Qty) as Qty,Max(P1.Rate) as Rate,Max(P1.Qty)- sum(IsNull(S.QtyRec,0)) as PendQty,"
  loc_1466B6F: var_A4 = var_9C & " Max(P1.Amount) as Amount,max(P1.Specification) as Specific ,Max(I.Name) As ItemName," & " max(I.convratio) as ConvRatio,max(I.IssueUnit) as IssUnit,'' as PartyName,"
  loc_1466B7D: var_AC = var_A4 & " max(P1.Docid) as IDocid ,max(P1.Sno) as ISno,max(P1.ClearYN) as ClearYN " & " From (Indent1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno )) Left Join Itemmast I on P1.Item=I.Code And I.ItemType='Store' "
  loc_1466B92: var_90 = var_AC & " Where P1.DocID='" & arg_10 & "' and P1.ClearYN<>'Y' Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isnull(S.QtyRec,0)) > 0 "
  loc_1466BBE: unk_511047.Execute var_90, var_D4, -1
  loc_1466BC9: Set var_88 = var_D8
  loc_1466BE6: If (var_88.RecordCount > 0) Then
  loc_1466BEC:   Set var_E0 = var_88 
  loc_1466BFD:   Set var_D8 = Me.Txt
  loc_1466C03:   Call 0.Method_Proc_90_75_14676EC0 (CInt(6), var_E4)
  loc_1466C0B:   var_E4.Enabled = False
  loc_1466C25:   Set var_D8 = Me.Txt
  loc_1466C2B:   Call 0.Method_Proc_90_75_14676EC0 (CInt(7), var_E4)
  loc_1466C33:   var_E4.Text = vbNullString
  loc_1466C4D:   Set var_D8 = Me.Txt
  loc_1466C53:   Call 0.Method_Proc_90_75_14676EC0 (CInt(8), var_E4)
  loc_1466C5B:   var_E4.Text = vbNullString
  loc_1466C75:   Set var_D8 = Me.Txt
  loc_1466C7B:   Call 0.Method_Proc_90_75_14676EC0 (CInt(&HA), var_E4)
  loc_1466C83:   var_E4.Text = vbNullString
  loc_1466C9D:   Set var_D8 = Me.Txt
  loc_1466CA3:   Call 0.Method_Proc_90_75_14676EC0 (CInt(&HB), var_E4)
  loc_1466CAB:   var_E4.Text = vbNullString
  loc_1466CC6:   Me.FGrid.Redraw = False
  loc_1466CE8:   var_8A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1466CF1:   ' Referenced from: 1467581
  loc_1466D00:   If Not(var_88.EOF) Then
  loc_1466D28:     For var_FA = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_FA 'Integer
  loc_1466D32:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1466D3A:       var_10C = CVar(CLng(&H12)) 'Long
  loc_1466D54:       var_150 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1466D7A:       var_140 = var_88.Fields.Item("DocID").Value
  loc_1466D8A:       var_170 = CVar(CLng(var_92)) 'Long
  loc_1466E02:       If CBool(CVar(CLng(&H13)) And (CVar(CStr(Me.FGrid.TextMatrix))) = var_88.Fields.Item("SNo").Value)) Then
  loc_1466E05:         GoTo loc_1467579
  loc_1466E08:       End If
  loc_1466E0B:     Next var_FA 'Integer
  loc_1466E2E:     var_D4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_1466E36:     Set var_E4 = Me.FGrid
  loc_1466E54:     Set var_210 = Me.FGrid
  loc_1466E5B:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_1466E63:     var_10C = CVar(CLng(0)) 'Long
  loc_1466E6D:     var_D4 = CVar(CStr(var_8A)) 'String
  loc_1466E74:     LateIdCallSt
  loc_1466E83:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1466E8B:     var_11C = CVar(CLng(&H11)) 'Long
  loc_1466EBB:     var_140 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_1466EC2:     LateIdCallSt
  loc_1466F2B:     var_1A4 = var_88.Fields.Item("ItemName")
  loc_1466F5C:     LateIdCallSt
  loc_1466FB3:     var_140 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Specific")), CVar(CLng(2)), CVar(CLng(var_8A)), var_210, CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("ItemName"))), vbNullString, CVar(var_1A4)))), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_1466FBA:     LateIdCallSt
  loc_1466FD0:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1466FD8:     var_11C = CVar(CLng(3)) 'Long
  loc_1467008:     var_140 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_146700F:     LateIdCallSt
  loc_146705E:     var_140 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IssUnit")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_210, var_140, CVar(CLng(&HA)), CVar(CLng(var_8A)))) 'String
  loc_1467065:     LateIdCallSt
  loc_1467097:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_146709F:     var_12C = CVar(CLng(4)) 'Long
  loc_14670CC:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_14670D3:     LateIdCallSt
  loc_1467109:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_1467111:     var_12C = CVar(CLng(5)) 'Long
  loc_146713E:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_1467145:     LateIdCallSt
  loc_146717B:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_1467183:     var_12C = CVar(CLng(6)) 'Long
  loc_14671B0:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14671B7:     LateIdCallSt
  loc_14671ED:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_14671F5:     var_12C = CVar(CLng(8)) 'Long
  loc_1467222:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_1467229:     LateIdCallSt
  loc_1467267:     var_12C = CVar(CLng(&HB)) 'Long
  loc_146729B:     LateIdCallSt
  loc_14672E6:     Set var_130 = Me.Txt
  loc_14672EC:     Call 0.Method_Proc_90_75_14676EC0 (CInt(2), var_1A4, var_9C, var_210, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))), 1, 1)
  loc_14672F4:     var_12C = var_1A4.Text
  loc_146730B:     Call Proc_90_79_1064AA8(CStr(var_88.Fields.Item("ItemCode").Value), var_9C, var_218, CVar(CLng(var_8A)), var_210)
  loc_1467314:     var_11C = CVar(CLng(var_8A)) 'Long
  loc_146731C:     var_170 = CVar(CLng(&HC)) 'Long
  loc_1467349:     var_1B4 = CVar(CStr(Format(CVar(var_218), "0.00"))) 'String
  loc_1467350:     LateIdCallSt
  loc_1467397:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_146739F:     var_12C = CVar(CLng(&HD)) 'Long
  loc_14673CC:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_14673D3:     LateIdCallSt
  loc_14673ED:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14673F5:     var_11C = CVar(CLng(&H12)) 'Long
  loc_1467425:     var_140 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_146742C:     LateIdCallSt
  loc_1467446:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_146744E:     var_11C = CVar(CLng(&H13)) 'Long
  loc_146747E:     var_140 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1467485:     LateIdCallSt
  loc_14674D4:     var_140 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("IDocid")), CVar(CLng(&H17)), CVar(CLng(var_8A)), var_210, var_140, CVar(CLng(&H17)), CVar(CLng(var_8A)))) 'String
  loc_14674DB:     LateIdCallSt
  loc_14674F1:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14674F9:     var_11C = CVar(CLng(&H18)) 'Long
  loc_1467524:     Proc_6_39_E7D3A0(var_140, CVar(var_88.Fields.Item("ISNo")), var_11C, var_F4, var_210, var_140)
  loc_146752D:     var_150 = CVar(CStr(var_140)) 'String
  loc_1467534:     LateIdCallSt
  loc_146754C:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_1467554:     var_10C = CVar(CLng(&H19)) 'Long
  loc_1467559:     var_12C = "Y"
  loc_1467562:     LateIdCallSt
  loc_146756C:     Set var_210 = Nothing 
  loc_1467576:     var_8A = (var_8A + 1)
  loc_1467579:     ' Referenced from: 1466E05
  loc_146757C:     var_88.MoveNext
  loc_1467581:     GoTo loc_1466CF1
  loc_1467584:   End If
  loc_1467597:   Me.FGrid.FixedRows = 1
  loc_14675A1:   Set var_E0 = Nothing 
  loc_14675A8: Else
  loc_14675B6:   Me.FGrid.Redraw = True
  loc_14675C4:   If (var_8A = 1) Then
  loc_14675C7:     var_C4 = 1
  loc_14675DA:     Me.FGrid.Rows = var_C4
  loc_1467600:     var_D4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8A, var_210, var_12C, var_10C, var_C4, var_210))) 'String
  loc_1467608:     Set var_E4 = Me.FGrid
  loc_1467635:     Me.FGrid.FixedRows = 1
  loc_146763D:   End If
  loc_146763D: End If
  loc_146764B: Me.FGrid.Redraw = True
  loc_1467659: If (var_8A = 1) Then
  loc_146766F:   Me.FGrid.Rows = 1
  loc_1467695:   var_D4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_D4, var_150, var_210))) 'String
  loc_146769D:   Set var_E4 = Me.FGrid
  loc_14676CA:   Me.FGrid.FixedRows = 1
  loc_14676D2: End If
  loc_14676D2: Call Proc_90_73_118D218(FGrid.DispID_10000, var_D4, var_140, var_11C)
  loc_14676D7: Call Proc_90_68_F98C48(var_F4, var_210)
  loc_14676E1: Set var_88 = Nothing
  loc_14676E4: Exit Sub
  loc_14676E5: ' Referenced from: 1466B50
  loc_14676E5: Proc_6_60_E63754(var_160)
  loc_14676EA: Exit Sub
End Sub

Public Sub Proc_90_76_F1B83C
  'Data Table: 511018
  Dim var_8C As TextBox
  loc_F1B74A: Set var_88 = Me.Txt
  loc_F1B750: Call 0.Method_Proc_90_76_F1B83C0 (CInt(0), var_8C)
  loc_F1B76F: If (var_8C.Tag = "MRCH") Then
  loc_F1B77F:   Set var_88 = Me.Txt
  loc_F1B785:   Call 0.Method_Proc_90_76_F1B83C0 (CInt(3), var_8C)
  loc_F1B78D:   var_8C.Visible = True
  loc_F1B7A6:   Set var_88 = Me.Txt
  loc_F1B7AC:   Call 0.Method_Proc_90_76_F1B83C0 (CInt(6), var_8C)
  loc_F1B7B4:   var_8C.Visible = False
  loc_F1B7C3: Else
  loc_F1B7D0:   Set var_88 = Me.Txt
  loc_F1B7D6:   Call 0.Method_Proc_90_76_F1B83C0 (CInt(3), var_8C)
  loc_F1B7DE:   var_8C.Visible = False
  loc_F1B7F7:   Set var_88 = Me.Txt
  loc_F1B7FD:   Call 0.Method_Proc_90_76_F1B83C0 (CInt(6), var_8C)
  loc_F1B805:   var_8C.Visible = True
  loc_F1B81E:   Set var_88 = Me.Txt
  loc_F1B824:   Call 0.Method_Proc_90_76_F1B83C0 (CInt(6), var_8C)
  loc_F1B82C:   var_8C.Enabled = True
  loc_F1B838: End If
  loc_F1B838: Exit Sub
  loc_F1B839: Set var_D8 = 
End Sub

Public Sub Proc_90_77_EE99E0
  'Data Table: 511018
  Dim var_BC As String
  loc_EE9941: If (Trim(global_108) = "MRE") Then
  loc_EE994E:   Set global_64 = New 
  loc_EE9973:   var_BC = "Select I.Code,I.BarCode,I.Name as Name,I.Unit,I.PurchRate ,I.convratio,I.IssueUnit,I.RestCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_EE9984:   Me.Recordset15.Open CVar(var_BC & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_EE998F: End If
  loc_EE9998: CVarUnk
  loc_EE999D: VerifyVarObj
  loc_EE99A3: Set var_B8 = Me.DGItem
  loc_EE99A9: LateIdStAd
  loc_EE99C0: CVarUnk
  loc_EE99C5: VerifyVarObj
  loc_EE99CB: Set var_B8 = Me.DGParty
  loc_EE99D1: LateIdStAd
  loc_EE99DF: Exit Sub
End Sub

Public Sub Proc_90_78_EE4B54
  'Data Table: 511018
  Dim var_A8 As TextBox
  loc_EE4AA8: If (Me.Recordset15.RecordCount > 0) Then
  loc_EE4AE0:   Set var_A4 = Me.Txt
  loc_EE4AE6:   Call 0.Method_Proc_90_78_EE4B540 (CInt(&HC), var_A8)
  loc_EE4AEE:   var_A8.MaxLength = Me.Recordset15.Fields.Item("InspectedBy").DefinedSize
  loc_EE4B33:   Set var_A4 = Me.Txt
  loc_EE4B39:   Call 0.Method_Proc_90_78_EE4B540 (CInt(&HD), var_A8)
  loc_EE4B41:   var_A8.MaxLength = Me.Recordset15.Fields.Item("ApprovedBy").DefinedSize
  loc_EE4B51: End If
  loc_EE4B51: Exit Sub
  loc_EE4B52: Exit Sub
End Sub

Public Sub Proc_90_79_1064AA8(arg_C, arg_10) '1064AA8
  'Data Table: 511018
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_511047 As Connection15
  Dim var_CC As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_90 As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_8C As Double
  loc_1064856: var_94 = global_152
  loc_1064861: If (var_94 = "Last Purchase Rate") Then
  loc_106487F:   var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1064890:   var_A4 = var_9C & global_148 & "'"
  loc_1064899:   unk_511047.Execute var_A4, var_C4, -1
  loc_10648A4:   Set var_90 = var_C8
  loc_10648BB: Else
  loc_10648C3:   If (var_94 = "Party Wise Last Pur Rate") Then
  loc_10648EB:     var_A0 = "Select Top 1 ItemRate As Rate From Purch2 Where VType In ('PBPB','PBPC') And Item='" & arg_C & "' And RestCode='" & global_148
  loc_1064903:     Set var_C8 = Me.Txt
  loc_1064909:     Call 0.Method_Proc_90_79_1064AA80 (CInt(6), var_CC, var_A4, var_A0 & "' And PartyCode='")
  loc_1064911:     var_138 = var_CC.Tag
  loc_106491A:     var_D4 = -1 & var_A4
  loc_1064921:     var_E4 = CVar(var_D4 & "' And DelFlag='N' And Vdate<=") 'String
  loc_106492F:     Proc_6_7_F26918(var_C4, arg_10, var_E4)
  loc_106494E:     unk_511047.Execute CStr(var_13C & var_C4 & " Order By VDate Desc,Vno Desc"), var_C8, 
  loc_1064997:     If (var_13C.RecordCount = 0) Then
  loc_10649B5:       var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_10649CF:       unk_511047.Execute var_9C & global_148 & "'", var_C4, -1
  loc_10649DA:       Set var_90 = var_C8
  loc_10649EE:     End If
  loc_10649F1:   Else
  loc_1064A26:     unk_511047.Execute "Select PurchRate As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='" & global_148 & "'", var_C4, -1
  loc_1064A31:     Set var_90 = var_C8
  loc_1064A45:   End If
  loc_1064A45: End If
  loc_1064A59: If (var_90.RecordCount > 0) Then
  loc_1064A82:   Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item("Rate")))
  loc_1064A8B:   var_8C = CSng(var_E4)
  loc_1064A9B: Else
  loc_1064A9E:   var_8C = CDbl(0)
  loc_1064AA1: End If
  loc_1064AA1: Proc_90_79_1064AA8 = var_8C
End Sub
