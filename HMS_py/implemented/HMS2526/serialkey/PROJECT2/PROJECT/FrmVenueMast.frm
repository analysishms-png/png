VERSION 5.00
Begin VB.Form FrmVenueMast
  Caption = "Venue Master"
  ForeColor = &H400000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9765
  ClientHeight = 5685
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9765
    Height = 450
    TabIndex = 19
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &H80000004&
    ForeColor = &H80000012&
    Left = 2715
    Top = 4590
    Width = 945
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 6780
    Top = 7935
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 13
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 180
      Top = 90
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 14
    End
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3435
    Top = 1755
    Width = 1515
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
    ForeColor = &HFF0000&
    Left = 3435
    Top = 2070
    Width = 1515
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3435
    Top = 2385
    Width = 1515
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 10
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
    ForeColor = &HFF0000&
    Left = 3435
    Top = 1440
    Width = 4050
    Height = 285
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid1
    Left = 2085
    Top = 4365
    Width = 5655
    Height = 1935
    TabIndex = 6
  End
  Begin CommonDialog CDlg
  End
  Begin DataGrid DGHelp
    Left = 2190
    Top = 6825
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 4935
    Top = 7215
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MSHFlexGrid FGrid2
    Left = 2055
    Top = 2745
    Width = 5475
    Height = 1545
    TabIndex = 4
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 150
    Top = 8535
    Width = 2520
    Height = 255
    TabIndex = 18
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 135
    Top = 8865
    Width = 2430
    Height = 285
    TabIndex = 17
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 480
    Width = 180
    Height = 540
    TabIndex = 16
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
  Begin Shape Shape1
    Left = 7785
    Top = 1425
    Width = 7290
    Height = 6405
  End
  Begin Image Picture1
    Left = 7785
    Top = 1440
    Width = 7320
    Height = 6375
    Stretch = -1  'True
  End
  Begin Label Label4
    Caption = "Click Here to insert Image"
    BackColor = &H80000009&
    ForeColor = &HFF0000&
    Left = 9000
    Top = 7800
    Width = 2655
    Height = 300
    TabIndex = 11
    Alignment = 2 'Center
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
    Caption = "Short Name "
    Index = 5
    ForeColor = &HFF0000&
    Left = 2055
    Top = 1785
    Width = 1185
    Height = 240
    TabIndex = 10
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
    Caption = "Area"
    Index = 8
    ForeColor = &HFF0000&
    Left = 2055
    Top = 2100
    Width = 450
    Height = 240
    TabIndex = 9
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
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2040
    Top = 2400
    Width = 585
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
    Caption = "Venue Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2055
    Top = 1470
    Width = 1230
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
End

Attribute VB_Name = "FrmVenueMast"

Private global_66 As Integer

Private Sub FGrid2_UnknownEvent_0 'E43D70
  'Data Table: 4B7B3C
  Dim var_8C As TextBox
  loc_E43D4F: Set var_88 = Me.TxtGrid
  loc_E43D55: Call 0.Method_FGrid2_UnknownEvent_00 (0, var_8C)
  loc_E43D5D: var_8C.Visible = False
  loc_E43D69: Call Proc_237_48_E87D50()
  loc_E43D6E: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 'E3D204
  'Data Table: 4B7B3C
  loc_E3D1FB: If (CLng(Me.FGrid2.ColSel) <> 1) Then
  loc_E3D1FE:   Call FGrid2_UnknownEvent_13()
  loc_E3D203: End If
  loc_E3D203: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_A(arg_C, arg_10) '10C432C
  'Data Table: 4B7B3C
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim arg_C As Integer
  loc_10C4060: Set var_88 = Me.TopCtrl1
  loc_10C4066: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C40AB: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_10C40B4:   Call Form_KeyDown(arg_C, arg_10)
  loc_10C40B9: End If
  loc_10C40BD: Set var_88 = Me.TopCtrl1
  loc_10C40C3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C40DC: If (CStr() = "Browse") Then
  loc_10C40DF:   Exit Sub
  loc_10C40E0: End If
  loc_10C40F3: var_A0 = CLng(Me.FGrid2.Col)
  loc_10C4103: If (var_A0 = CLng(3)) Then
  loc_10C4144:   Proc_6_63_110B734(Me, Me.FGrid2, Me.TxtGrid, 0)
  loc_10C4159: Else
  loc_10C4160:   If (var_A0 = CLng(4)) Then
  loc_10C41A1:     Proc_6_63_110B734(Me, Me.FGrid2, Me.TxtGrid, 0, &HFF, arg_C)
  loc_10C41B3:   End If
  loc_10C41B3: End If
  loc_10C41DB: If ((CLng(arg_C) = &H20) And (CLng(Me.FGrid2.Col) = CLng(1))) Then
  loc_10C41EE:   Me.FGrid2.CellFontName = "WINGDINGS"
  loc_10C4208:   Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_10C4223:   var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10C422B:   var_E8 = CVar(CLng(1)) 'Long
  loc_10C4259:   var_188 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10C4261:   var_1A8 = CVar(CLng(1)) 'Long
  loc_10C4298:   var_1C8 = CVar(CStr(IIf((CStr(Me.FGrid2.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10C42A0:   Set var_B4 = Me.FGrid2
  loc_10C42A6:   LateIdCallSt
  loc_10C42CF: End If
  loc_10C42F7: If ((CLng(arg_C) = &HD) And (CLng(Me.FGrid2.Col) = CLng(1))) Then
  loc_10C430C:   Me.FGrid2.Col = CVar(CLng(2))
  loc_10C4314: End If
  loc_10C431A: If (arg_C = &HD) Then
  loc_10C4322:   global_66 = 0
  loc_10C4325: End If
  loc_10C4327: arg_C = 0
  loc_10C432A: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'E133D8
  'Data Table: 4B7B3C
  loc_E133C9: Call FGrid2_UnknownEvent_C()
  loc_E133D3: global_66 = 0
  loc_E133D6: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_C(Index As Integer) 'F56D0C
  'Data Table: 4B7B3C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F56BF4: Set var_88 = Me.TopCtrl1
  loc_F56BFA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F56C13: If (CStr() = "Browse") Then
  loc_F56C16:   Exit Sub
  loc_F56C17: End If
  loc_F56C2A: var_A0 = CLng(Me.FGrid2.Col)
  loc_F56C3A: If (var_A0 = CLng(3)) Then
  loc_F56C7B:   Proc_6_63_110B734(Me, Me.FGrid2, Me.TxtGrid, 0)
  loc_F56C90: Else
  loc_F56C97:   If (var_A0 = CLng(4)) Then
  loc_F56CAD:     var_9C = 0
  loc_F56CDE:     Proc_6_134_112C1C4(Me, Me.FGrid2, Me.TxtGrid, 0, &HFF, Index)
  loc_F56CF3:   End If
  loc_F56CF3: End If
  loc_F56CFD: If (CLng(Index) <> &HD) Then
  loc_F56D05:   global_66 = &HFF
  loc_F56D08: End If
  loc_F56D08: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_13 '129A8C8
  'Data Table: 4B7B3C
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim var_94 As Variant
  Dim var_13C As Variant
  Dim var_164 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_19C As MSHFlexGrid
  Dim unk_4B7B4C As Connection15
  Dim var_8C As Recordset15
  loc_129A2FC: Set var_90 = Me.FGrid2
  loc_129A303: Set var_94 = Me.TopCtrl1
  loc_129A309: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_129A322: If (CStr() = "Browse") Then
  loc_129A328:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_C()
  loc_129A341:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_41(CVar(CLng(2)))
  loc_129A36D:   If CBool(Trim(CVar(CStr(CVar(CLng())))) <> vbNullString) Then
  loc_129A383:     var_B8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_129A38B:     var_D8 = CVar(CLng(0)) 'Long
  loc_129A3B9:     var_128 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_129A3C1:     var_164 = CVar(CLng(2)) 'Long
  loc_129A3D0:     var_118 = Me.FGrid2.TextMatrix)
  loc_129A417:     var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String
  loc_129A421:     Me.var_118.Open var_138, CVar(MemVar_1F95044), 2
  loc_129A454:     var_198 = Me.Recordset15.RecordCount
  loc_129A497:     If ((var_198 > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("PicPath"))) = 0)) Then
  loc_129A4B0:       Set var_13C = var_8C 
  loc_129A4C0:       Proc_142_1_F342F8(Me.Picture1, var_13C, "PicPath", 3, -1, var_118)
  loc_129A4CB:       Set var_8C = var_13C
  loc_129A4DD:     Else
  loc_129A4EF:       Me.Picture1.Picture = Nothing
  loc_129A4FB:     End If
  loc_129A501:     Me.Recordset15.Close
  loc_129A509:   Else
  loc_129A51B:     Me.Picture1.Picture = Nothing
  loc_129A527:   End If
  loc_129A527:   Exit Sub
  loc_129A528: End If
  loc_129A52A: Set var_90 = Nothing 
  loc_129A532: Set var_19C = Me.FGrid2
  loc_129A541: var_B8 = CVar(CLng(var_19C.RowSel)) 'Long
  loc_129A549: var_D8 = CVar(CLng(2)) 'Long
  loc_129A59D: If CBool((Trim(CVar(CStr(var_19C.TextMatrix)))) <> vbNullString) And (CLng(var_19C.ColSel) = CLng(2))) Then
  loc_129A5B3:   var_B8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_129A5BB:   var_D8 = CVar(CLng(0)) 'Long
  loc_129A5E9:   var_128 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_129A5F1:   var_164 = CVar(CLng(2)) 'Long
  loc_129A600:   var_118 = Me.FGrid2.TextMatrix)
  loc_129A647:   var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String
  loc_129A651:   Me.var_118.Open var_138, CVar(MemVar_1F95044), 2
  loc_129A6AC:   If IsNull(CVar(Me.Recordset15.Fields.Item("PicPath"))) Then
  loc_129A6C1:     Me.Picture1.Picture = Nothing
  loc_129A6CD:   End If
  loc_129A6D6:   unk_4B7B4C.BeginTrans var_198
  loc_129A6F2:   If (Me.Recordset15.RecordCount > 0) Then
  loc_129A70B:     Set var_13C = var_8C 
  loc_129A71B:     Proc_142_1_F342F8(Me.Picture1, var_13C, "PicPath", 3, -1, var_118, var_164, var_128)
  loc_129A726:     Set var_8C = var_13C
  loc_129A735:   End If
  loc_129A73B:   var_8C.Close
  loc_129A746:   unk_4B7B4C.CommitTrans
  loc_129A74E: Else
  loc_129A760:   Me.Picture1.Picture = Nothing
  loc_129A76C: End If
  loc_129A77F: If (CLng(Picture1.DispID_B) = CLng(1)) Then
  loc_129A78E:   var_B8 = CVar(CLng(Picture1.DispID_A)) 'Long
  loc_129A796:   var_D8 = CVar(CLng(1)) 'Long
  loc_129A7BB:   If (CStr(Picture1.DispID_41) = vbNullString) Then
  loc_129A7CA:     var_B8 = CVar(CLng(Picture1.DispID_B)) 'Long
  loc_129A7DA:     var_B8 = "wingdings"
  loc_129A7EB:     var_B8 = CVar(CDbl(&H12)) 'Single
  loc_129A80B:     If (CLng(Picture1.DispID_B) = CLng(1)) Then
  loc_129A80E:       var_B8 = &HFF
  loc_129A822:     Else
  loc_129A822:       var_B8 = &HFF0000
  loc_129A833:     End If
  loc_129A83F:     var_B8 = CVar(CLng(Picture1.DispID_A)) 'Long
  loc_129A850:     var_D8 = CVar(CLng(Picture1.DispID_B)) 'Long
  loc_129A855:     var_128 = "ü"
  loc_129A85E:     LateIdCallSt
  loc_129A870:   Else
  loc_129A87C:     var_B8 = CVar(CLng(Picture1.DispID_A)) 'Long
  loc_129A88D:     var_D8 = CVar(CLng(Picture1.DispID_B)) 'Long
  loc_129A892:     var_128 = vbNullString
  loc_129A89B:     LateIdCallSt
  loc_129A8AA:   End If
  loc_129A8AD: Else
  loc_129A8AD:   var_B8 = &HE0E0E0
  loc_129A8BE: End If
  loc_129A8C0: Set var_19C = Nothing 
  loc_129A8C4: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39D24
  'Data Table: 4B7B3C
  loc_E39D18: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E39D1B:   Call DGHelp_UnknownEvent_9()
  loc_E39D20: End If
  loc_E39D20: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F35E54
  'Data Table: 4B7B3C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F35D4B: Me.DGHelp.Visible = False
  loc_F35D6A: If (Me.RecordCount > 0) Then
  loc_F35DA9:   Set var_B4 = Me.Txt
  loc_F35DAF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35DB7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F35DEA:   var_B0 = Me.Fields.Item("Name")
  loc_F35E09:   Set var_B4 = Me.Txt
  loc_F35E0F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35E17:   var_B8.Text = CStr(var_B0.Value)
  loc_F35E2D: End If
  loc_F35E38: Set var_A8 = Me.Txt
  loc_F35E3E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F35E46: var_B0.SetFocus
  loc_F35E52: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E732C0
  'Data Table: 4B7B3C
  loc_E7327E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E73295: Set var_8C = Me.FGPoint
  loc_E732B1: Proc_6_138_106E830(Me.DGHelp, global_72, CInt(0))
  loc_E732BF: Exit Sub
End Sub

Private Sub Form_Load() '1082B8C
  'Data Table: 4B7B3C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C0 As DataGrid
  Dim var_C8 As String
  Dim var_CC As String
  Dim Me As Recordset15
  loc_10828F0: On Error Goto loc_1082B85
  loc_10828FA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1082912: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_108292D: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1082944: Me.LblUser.Left = CDbl(13500)
  loc_108295B: Me.LblUser.Top = CDbl(7800)
  loc_1082972: Me.LblLDt.Top = CDbl(8160)
  loc_1082989: Me.LblLDt.Left = CDbl(13500)
  loc_108299F: Set var_A8 = Me.Txt
  loc_10829A5: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_10829C4: Me.DGHelp.Left = CVar(var_AC.Left)
  loc_10829E0: Set var_B4 = Me.Txt
  loc_10829E6: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1082A01: Set var_A8 = Me.Txt
  loc_1082A07: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_1082A1F: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1082A28: Set var_C0 = Me.DGHelp
  loc_1082A2E: var_C0.Top = CVar(var_AC.Left)
  loc_1082A5C: Me.var_C0.CursorLocation = 3
  loc_1082A90: var_CC = "Select Code,Name From VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and DepartCode ='" & global_52
  loc_1082ABB: CVarUnk
  loc_1082AC0: VerifyVarObj
  loc_1082ACC: LateIdStAd
  loc_1082AF6: Me.DGHelp.CursorLocation = 3
  loc_1082B20: var_C8 = "Select V.*,V.Code as SearchCode From VenueMast V WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and DepartCode ='"
  loc_1082B3B: ar(var_C8 & global_52 & "' Order by Name"), CVar(MemVar_1F95044), 2 CVar(var_C8 & global_52 & "' Order by Name"), CVar(MemVar_1F95044), 2
  loc_1082B4C: Call Proc_237_51_1231704(3, -1, Me.DGHelp)
  loc_1082B74: Call Proc_237_47_E7CF7C(Proc_5_1_100EC1C("INI", Me, New), New)
  loc_1082B7F: Call Proc_237_46_14FB8E0(3)
  loc_1082B84: Exit Sub
  loc_1082B85: ' Referenced from: 10828F0
  loc_1082B85: Proc_6_60_E63754(-1)
  loc_1082B8A: Exit Sub
End Sub

Private Sub Form_Resize() 'ED86B8
  'Data Table: 4B7B3C
  Dim var_8C As Label
  loc_ED8616: Call 0.Method_arg_50 (var_88)
  loc_ED8628: Me.LblFormCaption.Caption = var_88
  loc_ED8641: Me.LblFormCaption.Left = CDbl(0)
  loc_ED864D: Set var_A0 = Me.TopCtrl1
  loc_ED8653: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8660: Set var_8C = Me.TopCtrl1
  loc_ED8666: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8680: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED869B: Call 0.Method_arg_100 (var_B8)
  loc_ED86AD: Me.LblFormCaption.Width = var_B8
  loc_ED86B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28A9C
  'Data Table: 4B7B3C
  loc_E28A7F: Set global_72 = Nothing
  loc_E28A91: Set global_68 = Nothing
  loc_E28A98: Exit Sub
End Sub

Private Sub Form_Activate() 'E39EA8
  'Data Table: 4B7B3C
  loc_E39E7C: On Error Goto loc_E39E9F
  loc_E39E92: Me.FGrid2.Row = 1
  loc_E39E9A: Call FGrid2_UnknownEvent_13()
  loc_E39E9F: ' Referenced from: E39E7C
  loc_E39E9F: Proc_6_60_E63754()
  loc_E39EA4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E289E4
  'Data Table: 4B7B3C
  loc_E289BC: On Error Goto loc_E289DC
  loc_E289D3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E289DB: Exit Sub
  loc_E289DC: ' Referenced from: E289BC
  loc_E289DC: Proc_6_60_E63754(Shift)
  loc_E289E1: Exit Sub
End Sub

Private Sub Label4_Click() 'E52208
  'Data Table: 4B7B3C
  loc_E521DC: Set var_88 = Me.TopCtrl1
  loc_E521E2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E521FB: If (CStr() = "Browse") Then
  loc_E521FE:   Exit Sub
  loc_E521FF: End If
  loc_E521FF: Call Picture1_DblClick()
  loc_E52204: Exit Sub
End Sub

Private Sub Picture1_DblClick() '11FE19C
  'Data Table: 4B7B3C
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim var_130 As String
  Dim var_1B8 As MSHFlexGrid
  Dim var_1E0 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_1C0 As Recordset15
  loc_11FDD28: On Error Goto loc_11FE13D
  loc_11FDD3E: var_A8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_11FDD46: var_C8 = CVar(CLng(1)) 'Long
  loc_11FDD60: var_FC = CVar(CStr(Me.FGrid2.TextMatrix))) 'String
  loc_11FDD66: var_10C = Trim(var_FC)
  loc_11FDD88: If (var_10C = vbNullString) Then
  loc_11FDDA1:   var_A8 = "Please Choose type of capacity."
  loc_11FDDAC:   MsgBox(var_A8, &H40, "Error...", var_FC, var_10C)
  loc_11FDDBC:   Exit Sub
  loc_11FDDBD: End If
  loc_11FDDC1: Set var_88 = Me.TopCtrl1
  loc_11FDDC7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_11FDDDB: Set var_DC = Me.TopCtrl1
  loc_11FDDE1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr(var_A8) <> "Add"))
  loc_11FDE07: If ( And (CStr() <> "Edit")) Then
  loc_11FDE0A:   Exit Sub
  loc_11FDE0B: End If
  loc_11FDE1B: Me.CDlg.Filter = "*.*"
  loc_11FDE33: Me.CDlg.Action = 1
  loc_11FDE45: Me.CDlg.FileName = 
  loc_11FDE5A: Me.Picture1.Tag = CStr()
  loc_11FDE76: Me.CDlg.FileName = 
  loc_11FDE7E: var_EC = CVar(CStr()) 'String
  loc_11FDE84: var_FC = Trim(var_EC)
  loc_11FDE8D: Set var_DC = Me.CDlg
  loc_11FDE93: var_DC.FileName = 
  loc_11FDEB1: var_10C = Right(var_FC, 3)
  loc_11FDEEC: var_B8 = "AVI"
  loc_11FDF1A: If CBool((Ucase(var_10C) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_B8)) Then
  loc_11FDF2B:   var_A8 = "Invalid Format"
  loc_11FDF36:   MsgBox(var_A8, 0, var_EC, var_FC, var_10C)
  loc_11FDF49: Else
  loc_11FDF60:   Set var_88 = Me.CDlg
  loc_11FDF66:   var_88.FileName = var_A8
  loc_11FDF78:   Me.var_88.LoadPicture CVar(CStr(var_B8)), var_C8, var_D8, var_DC, 
  loc_11FDF8D:   Me.Picture1.Picture = var_DC
  loc_11FDFA2: End If
  loc_11FDFB5: var_A8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_11FDFBD: var_C8 = CVar(CLng(0)) 'Long
  loc_11FDFEB: var_11C = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_11FDFF3: var_1E0 = CVar(CLng(2)) 'Long
  loc_11FE002: var_10C = Me.FGrid2.TextMatrix)
  loc_11FE049: var_12C = CVar("SELECT * FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_10C) & "'") 'String
  loc_11FE053: Me.var_10C.Open var_12C, CVar(MemVar_1F95044), 2
  loc_11FE086: var_210 = Me.Recordset15.RecordCount
  loc_11FE094: If (var_210 > 0) Then
  loc_11FE0A1:   var_130 = "PicPath"
  loc_11FE0AD:   Set var_DC = var_1C0 
  loc_11FE0BD:   Proc_142_0_F977BC(Me.Picture1, var_DC, var_130, 3, -1, var_10C)
  loc_11FE0C8:   Set var_1C0 = var_DC
  loc_11FE0D7: End If
  loc_11FE0DD: var_1C0.Close
  loc_11FE0EC: var_EC = Me.FGrid2.RowSel
  loc_11FE0F5: var_A8 = CVar(CLng(var_EC)) 'Long
  loc_11FE0FD: var_C8 = CVar(CLng(5)) 'Long
  loc_11FE10C: Me.CDlg.FileName = var_C8
  loc_11FE114: var_FC = CVar(CStr(var_A8)) 'String
  loc_11FE11C: Set var_1B8 = Me.FGrid2
  loc_11FE122: LateIdCallSt
  loc_11FE13C: Exit Sub
  loc_11FE13D: ' Referenced from: 11FDD28
  loc_11FE145: Set var_88 = Err()
  loc_11FE14B: Call 0.Method_arg_1C (var_210, var_1B8, var_FC, var_1E0)
  loc_11FE15C: If (var_210 <> 0) Then
  loc_11FE175:   Set var_88 = Err()
  loc_11FE17B:   Call 0.Method_arg_2C (var_130, 0, var_EC, var_FC, var_10C)
  loc_11FE186:   MsgBox(CVar(var_130), var_11C, var_EC, var_C8, var_A8)
  loc_11FE199: End If
  loc_11FE199: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F999D4
  'Data Table: 4B7B3C
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F9987A: Set var_88 = Me.TxtGrid
  loc_F99880: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F9988E: Proc_6_74_E23240(var_8C)
  loc_F9989A: Call Proc_237_48_E87D50(var_8C)
  loc_F998AB: If (Index = 0) Then
  loc_F998C1:   var_C4 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F998CA:   Set var_8C = Me.FGrid2
  loc_F99900:   Set var_108 = Me.TxtGrid
  loc_F99906:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid2.TextMatrix)))
  loc_F9990E:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_F9993F:   var_114 = CLng(Me.FGrid2.Col)
  loc_F9994F:   If (var_114 = CLng(3)) Then
  loc_F99961:     Set var_88 = Me.TxtGrid
  loc_F99967:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_F9996F:     var_8C.MaxLength = var_114
  loc_F9997E:   Else
  loc_F99985:     If (var_114 = CLng(4)) Then
  loc_F99997:       Set var_88 = Me.TxtGrid
  loc_F9999D:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_F999A5:       var_8C.MaxLength = var_C4
  loc_F999BA:       If (global_66 = 0) Then
  loc_F999C5:         var_110 = "{Home}+{End}"
  loc_F999CB:         Proc_303_0_FBACC8(CStr(Me.FGrid2.TextMatrix)), 0)
  loc_F999D3:       End If
  loc_F999D3:     End If
  loc_F999D3:   End If
  loc_F999D3: End If
  loc_F999D3: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '109A7F4
  'Data Table: 4B7B3C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_109A547: var_86 = KeyCode
  loc_109A550: If (var_86 = 0) Then
  loc_109A55D:   If (CLng(Shift) = &H1B) Then
  loc_109A56D:     Set var_8C = Me.TxtGrid
  loc_109A573:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_109A58D:     Set var_98 = Me.TxtGrid
  loc_109A593:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_109A59B:     var_9C.Text = var_90.Tag
  loc_109A5AE:     Call Proc_237_48_E87D50(var_86)
  loc_109A5B7:     Set var_8C = Me.FGrid2
  loc_109A5D4:     Set var_8C = Me.TxtGrid
  loc_109A5DA:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_109A5E2:     var_90.Visible = False
  loc_109A5EE:     Exit Sub
  loc_109A5EF:   End If
  loc_109A602:   var_B0 = CLng(Me.FGrid2.Col)
  loc_109A612:   If (var_B0 = CLng(3)) Then
  loc_109A61F:     Call Proc_237_43_F66A08(CInt(3), var_B4)
  loc_109A62A:     If (var_B4 = &HFF) Then
  loc_109A677:       Proc_6_62_1254E68(Me.FGrid2, Me.TxtGrid, KeyCode, Shift, global_66, CByte((CInt(4) + 1)))
  loc_109A687:     End If
  loc_109A68A:   Else
  loc_109A691:     If (var_B0 = CLng(4)) Then
  loc_109A6D4:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_109A712:         If (CLng(Me.FGrid2.Row) < (CLng(Me.FGrid2.Rows) - 1)) Then
  loc_109A71F:           Call Proc_237_43_F66A08(CInt(4), var_B4, 0, 0)
  loc_109A72A:           If (var_B4 = &HFF) Then
  loc_109A777:             Proc_6_62_1254E68(Me.FGrid2, Me.TxtGrid, KeyCode, Shift, global_66, CByte((CInt(4) + 1)))
  loc_109A799:             Me.FGrid2.Col = CVar(CLng(3))
  loc_109A7A1:           End If
  loc_109A7A4:         Else
  loc_109A7AC:           Call TxtGrid_Validate(KeyCode)
  loc_109A7E8:           If (MsgBox("Save Record ?", 4, "Save Data", var_108, var_128) = 6) Then
  loc_109A7EB:             Call TopCtrl1_UnknownEvent_16()
  loc_109A7F0:           End If
  loc_109A7F0:         End If
  loc_109A7F0:       End If
  loc_109A7F0:     End If
  loc_109A7F0:   End If
  loc_109A7F0: End If
  loc_109A7F0: Exit Sub
  loc_109A7F1: If 0 Then Exit Sub
  loc_109A7F1: End If
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'E552DC
  'Data Table: 4B7B3C
  Dim var_90 As TextBox
  loc_E552B0: If (Index = 0) Then
  loc_E552BF:   Set var_8C = Me.TxtGrid
  loc_E552C5:   Call 0.Method_TxtGrid_LostFocus0 (Index, var_90)
  loc_E552CD:   var_90.Visible = False
  loc_E552D9: End If
  loc_E552D9: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20C84
  'Data Table: 4B7B3C
  Dim arg_10 As Integer
  loc_E20C6C: If (Cancel = 0) Then
  loc_E20C75:   Call Proc_237_43_F66A08(Cancel, var_88)
  loc_E20C7E:   arg_10 = Not(var_88)
  loc_E20C81: End If
  loc_E20C81: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F05344
  'Data Table: 4B7B3C
  Dim var_8C As Variant
  Dim var_94 As TextBox
  loc_F05260: On Error Goto loc_F0533C
  loc_F05286: Call Proc_237_47_E7CF7C(Proc_5_1_100EC1C("ADD", Me))
  loc_F05291: Call Proc_237_45_F1EC90(global_68)
  loc_F052A3: Me.LblUser.Caption = vbNullString
  loc_F052B8: Me.LblLDt.Caption = vbNullString
  loc_F052CB: Set var_8C = Me.Txt
  loc_F052D1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F052D9: var_94.SetFocus
  loc_F052E5: Call Proc_237_50_1186044(var_94)
  loc_F052FD: Me.FGrid2.FillStyle = 0
  loc_F05318: Me.FGrid2.SelectionMode = 0
  loc_F05333: Me.FGrid2.HighLight = 2
  loc_F0533B: Exit Sub
  loc_F0533C: ' Referenced from: F05260
  loc_F0533C: Proc_6_60_E63754()
  loc_F05341: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9CE18
  'Data Table: 4B7B3C
  loc_E9CDA0: On Error Goto loc_E9CE11
  loc_E9CDDA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9CE00:   Call Proc_237_47_E7CF7C(Proc_5_1_100EC1C("INI", Me))
  loc_E9CE0B:   Call Proc_237_46_14FB8E0(global_68)
  loc_E9CE10: End If
  loc_E9CE10: Exit Sub
  loc_E9CE11: ' Referenced from: E9CDA0
  loc_E9CE11: Proc_6_60_E63754()
  loc_E9CE16: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12E4F30
  'Data Table: 4B7B3C
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4B7B4C As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_12E4890: On Error Goto loc_12E4ED7
  loc_12E48A1: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_12E48A4:   Exit Sub
  loc_12E48A5: End If
  loc_12E48D7: var_D4 = "Booking"
  loc_12E491F: If (Proc_6_108_101061C(MemVar_1F95044, "VenueOCC", "VenuCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_12E4922:   Exit Sub
  loc_12E4923: End If
  loc_12E4955: var_D4 = "Booking Inquiry"
  loc_12E499D: If (Proc_6_108_101061C(MemVar_1F95044, "BookingDetail", "VenueCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_12E49A0:   Exit Sub
  loc_12E49A1: End If
  loc_12E49D8: If (MsgBox("Are You Sure To Delete This ? ", &H14, "Delete Entry !", var_118, var_138) = 6) Then
  loc_12E49DD:   var_96 = 0
  loc_12E49E9:   unk_4B7B4C.BeginTrans var_D0
  loc_12E49F0:   var_96 = &HFF
  loc_12E4A04:   var_94 = Me.Bookmark 'Variant
  loc_12E4A5E:   unk_4B7B4C.Execute CStr("Delete From VenueMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12E4AA9:   var_168 = 0
  loc_12E4ABC:   var_160 = 0
  loc_12E4AC7:   var_15C = 0
  loc_12E4ADA:   var_154 = 0
  loc_12E4AE5:   var_150 = 0
  loc_12E4AF8:   var_148 = 0
  loc_12E4B41:   Proc_154_5_10E3BD4(MemVar_1F95044, "VenueMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12E4BBF:   unk_4B7B4C.Execute CStr("Delete From VenueFeatures Where VenueCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12E4C0A:   var_168 = 0
  loc_12E4C1D:   var_160 = 0
  loc_12E4C28:   var_15C = 0
  loc_12E4C3B:   var_154 = 0
  loc_12E4C46:   var_150 = 0
  loc_12E4C59:   var_148 = 0
  loc_12E4CA2:   Proc_154_5_10E3BD4(MemVar_1F95044, "VenueFeatures", "VenueCode", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12E4D12:   var_118 = "Delete From GodownMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12E4D20:   unk_4B7B4C.Execute CStr(var_118), var_138, -1
  loc_12E4D6B:   var_168 = 0
  loc_12E4D7E:   var_160 = 0
  loc_12E4D89:   var_15C = 0
  loc_12E4D9C:   var_154 = 0
  loc_12E4DA7:   var_150 = 0
  loc_12E4DBA:   var_148 = 0
  loc_12E4DFA:   var_B4 = "GodownMast"
  loc_12E4E03:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12E4E31:   unk_4B7B4C.CommitTrans
  loc_12E4E38:   var_96 = 0
  loc_12E4E46:   Me.Requery -1
  loc_12E4E56:   Me.Requery -1
  loc_12E4E76:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12E4E83:     Me.Bookmark = var_94
  loc_12E4E8B:   Else
  loc_12E4E9F:     If (Me.EOF = 0) Then
  loc_12E4EA8:       Me.MoveLast
  loc_12E4EAD:     End If
  loc_12E4EAD:   End If
  loc_12E4EAD:   Call Proc_237_46_14FB8E0(var_96, var_148, 0, var_150, var_154)
  loc_12E4ECE:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_12E4ED6: End If
  loc_12E4ED6: Exit Sub
  loc_12E4ED7: ' Referenced from: 12E4890
  loc_12E4EDD: If (var_96 = &HFF) Then
  loc_12E4EE6:   unk_4B7B4C.RollbackTrans
  loc_12E4EEB: End If
  loc_12E4EF3: Set var_9C = Err()
  loc_12E4EF9: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_12E4F1A: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_12E4F2D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FECE38
  'Data Table: 4B7B3C
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_B8 As TextBox
  loc_FECC58: On Error Goto loc_FECDF4
  loc_FECC69: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_FECC6C:   Exit Sub
  loc_FECC6D: End If
  loc_FECC84: If (Me.RecordCount > 0) Then
  loc_FECCAA:   Call Proc_237_47_E7CF7C(Proc_5_1_100EC1C("EDIT", Me))
  loc_FECCC8:   Me.FGrid2.FillStyle = 0
  loc_FECCE3:   Me.FGrid2.SelectionMode = 0
  loc_FECCFE:   Me.FGrid2.HighLight = 2
  loc_FECD14:   Set var_90 = Me.Txt
  loc_FECD1A:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B8)
  loc_FECD2D:   global_80 = var_B8.Text
  loc_FECD49:   Set var_90 = Me.Txt
  loc_FECD4F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B8)
  loc_FECD57:   var_8C = var_B8.Text
  loc_FECD62:   global_76 = var_8C
  loc_FECD7B:   Set var_90 = Me.Txt
  loc_FECD81:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B8)
  loc_FECD89:   var_B8.SetFocus
  loc_FECD98: Else
  loc_FECDB9:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FECDC9: End If
  loc_FECDD6: Me.LblUser.Caption = vbNullString
  loc_FECDEB: Me.LblLDt.Caption = vbNullString
  loc_FECDF3: Exit Sub
  loc_FECDF4: ' Referenced from: FECC58
  loc_FECDFC: Set var_90 = Err()
  loc_FECE02: Call 0.Method_arg_2C (var_8C)
  loc_FECE23: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FECE36: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BB20
  'Data Table: 4B7B3C
  loc_E1BB15: Me.Global.Unload Me
  loc_E1BB1D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE8DA4
  'Data Table: 4B7B3C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EE8CEC: On Error Goto loc_EE8D9B
  loc_EE8D06: If (Me.RecordCount <= 0) Then
  loc_EE8D0F:   var_B8 = "Information"
  loc_EE8D2A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE8D3A:   Exit Sub
  loc_EE8D3B: End If
  loc_EE8D42: var_10C = "Select Code as SearchCode,Name As VenueName,ShortName,Capacity,cast(Seating as Varchar(15)) as Seating,cast(Floating as varchar(15)) as Floating,Dimension,Status FROM VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_EE8D5A: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') and DepartCode ='" & global_52 & "' Order by Name"
  loc_EE8D6D: MemVar_1F95120 = Me
  loc_EE8D7A: Proc_6_126_F1C850("2500,1200,1200,800,800,1700,900")
  loc_EE8D95: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE8D9A: Exit Sub
  loc_EE8D9B: ' Referenced from: EE8CEC
  loc_EE8D9B: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EE8DA0: Exit Sub
  loc_EE8DA1: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A5C8
  'Data Table: 4B7B3C
  Dim var_3B01 As Double
  loc_E3A5B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A5C0: Call Proc_237_46_14FB8E0(global_68)
  loc_E3A5C5: Exit Sub
  loc_E3A5C6: var_3B01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A808
  'Data Table: 4B7B3C
  Dim var_3B01 As Double
  loc_E3A7F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A800: Call Proc_237_46_14FB8E0(global_68)
  loc_E3A805: Exit Sub
  loc_E3A806: var_3B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3D628
  'Data Table: 4B7B3C
  loc_E3D618: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D620: Call Proc_237_46_14FB8E0(global_68)
  loc_E3D625: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3AB08
  'Data Table: 4B7B3C
  Dim var_3B01 As Double
  loc_E3AAF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AB00: Call Proc_237_46_14FB8E0(global_68)
  loc_E3AB05: Exit Sub
  loc_E3AB06: var_3B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108AD74
  'Data Table: 4B7B3C
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4B7B4C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108AADC: On Error Goto loc_108AD28
  loc_108AB03: unk_4B7B4C.Execute "select * FROM VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108AB0E: Set var_88 = var_C8
  loc_108AB24: var_CC = var_88.RecordCount
  loc_108AB32: If (var_CC = 0) Then
  loc_108AB4E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108AB5E:   Exit Sub
  loc_108AB5F: End If
  loc_108AB6E: var_A4 = MemVar_1F950B4 & "\VenueMast.ttx"
  loc_108AB75: Set var_C8 = var_88 
  loc_108AB81: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108AB8B: Set var_88 = var_C8
  loc_108AB91: var_B4 = CVar(var_12E) 'Integer
  loc_108AB94: var_98 = var_B4 'Variant
  loc_108ABB0: var_A0 = MemVar_1F950B4 & "\VenueMast.RPT"
  loc_108ABB9: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108ABC4: MemVar_1F951E8 = var_C8
  loc_108ABDF: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108ABE7: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108ABF3: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108AC0C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108AC14:   Call 0.Method_arg_20 (var_138)
  loc_108AC1C:   Call 0.Method_arg_30 (var_A0)
  loc_108AC62:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108AC78:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108AC80:     Call 0.Method_arg_20 (var_138)
  loc_108AC88:     Call 0.Method_arg_38 ("'Venue Master'")
  loc_108AC94:   End If
  loc_108AC97: Next var_132 'Integer
  loc_108ACB5: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108ACBD: Call 0.Method_arg_2C (var_DC)
  loc_108ACCB: Call 0.Method_arg_150 (var_FC)
  loc_108ACD6: Call 0.Method_arg_50 (var_A0)
  loc_108ACE0: Set var_138 = Nothing
  loc_108ACFA: Set var_C8 = MemVar_1F951E8 
  loc_108AD06: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108AD11: MemVar_1F951E8 = var_C8
  loc_108AD24: Set var_88 = Nothing
  loc_108AD27: Exit Sub
  loc_108AD28: ' Referenced from: 108AADC
  loc_108AD30: Set var_C8 = Err()
  loc_108AD36: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108AD41: Call 0.Method_arg_50 (var_A4)
  loc_108AD5D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108AD70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0ABD0
  'Data Table: 4B7B3C
  Dim Me As Recordset15
  loc_E0ABC7: Me.Requery -1
  loc_E0ABCC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15BC1FC
  'Data Table: 4B7B3C
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4B7B4C As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_120 As Variant
  Dim var_15C As TextBox
  Dim var_1C8 As Variant
  Dim var_2D8 As Variant
  Dim var_370 As Variant
  Dim var_330 As String
  Dim var_340 As Variant
  Dim var_11C As Variant
  Dim var_134 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_258 As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_318 As Variant
  Dim var_3A0 As Variant
  Dim var_124 As String
  Dim var_E4 As Variant
  Dim var_458 As Double
  Dim var_460 As Double
  Dim var_160 As String
  Dim var_430 As String
  Dim var_450 As String
  Dim var_180 As Variant
  Dim var_1D8 As Variant
  Dim var_2E8 As Variant
  loc_15BAFE4: On Error Goto loc_15BC1A9
  loc_15BAFEB: var_86 = CByte(0) 'Byte
  loc_15BAFFA: Set var_90 = Me.Txt
  loc_15BB000: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15BB029: If (Proc_6_27_EA61EC(var_94, "Venue Name") = 0) Then
  loc_15BB033:   Call Txt_GotFocus()
  loc_15BB038:   Exit Sub
  loc_15BB039: End If
  loc_15BB044: Set var_90 = Me.Txt
  loc_15BB04A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_15BB073: If (Proc_6_27_EA61EC(var_94, "Short Name") = 0) Then
  loc_15BB07D:   Call Txt_GotFocus()
  loc_15BB082:   Exit Sub
  loc_15BB083: End If
  loc_15BB08E: Set var_90 = Me.Txt
  loc_15BB094: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, CInt(1))
  loc_15BB0BD: If (Proc_6_27_EA61EC(var_94, "Status") = 0) Then
  loc_15BB0C7:   Call Txt_GotFocus()
  loc_15BB0CC:   Exit Sub
  loc_15BB0CD: End If
  loc_15BB0D0: Call Proc_237_44_120FD34(var_9E, CInt(3))
  loc_15BB0DB: If (var_9E = &HFF) Then
  loc_15BB0DE:   Exit Sub
  loc_15BB0DF: End If
  loc_15BB0E3: Set var_90 = Me.TopCtrl1
  loc_15BB0E9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_15BB102: If (CStr(var_94) = "Add") Then
  loc_15BB10B:   var_D4 = 0
  loc_15BB128:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From VenueMast where Site_Code='" & MemVar_1F95070
  loc_15BB138:   unk_4B7B4C.Execute CStr(var_94) & "'", var_B0, -1
  loc_15BB140:   var_90 = var_90.Fields
  loc_15BB148:   var_D4 = var_94.Item(var_94)
  loc_15BB150:   var_98 = var_98.Value
  loc_15BB189:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_15BB1B7:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_15BB1C2:   global_56 = CStr(var_108)
  loc_15BB1D7: Else
  loc_15BB1F4:   var_94 = Me.Fields.Item("Code")
  loc_15BB1FC:   var_B0 = var_94.Value
  loc_15BB20B:   global_56 = CStr(var_B0)
  loc_15BB21C: End If
  loc_15BB225: unk_4B7B4C.BeginTrans var_10C
  loc_15BB22E: var_86 = CByte(1) 'Byte
  loc_15BB259: unk_4B7B4C.Execute "Delete From VenueMast Where Code='" & global_56 & "'", var_B0, -1
  loc_15BB292: unk_4B7B4C.Execute "Delete From VenueFeatures Where VenueCode='" & global_56 & "'", var_B0, -1
  loc_15BB2CB: unk_4B7B4C.Execute "Delete From GodownMast Where Code='" & global_56 & "'", var_B0, -1
  loc_15BB2E8: Set var_90 = Me.Txt
  loc_15BB2EE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_90, var_90)
  loc_15BB2F6: var_B0 = CVar(var_94) 'Address
  loc_15BB2FD: var_E4 = Trim(var_B0)
  loc_15BB316: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, var_124, var_90)
  loc_15BB31E: 1 = var_120.Text
  loc_15BB331: Set var_158 = Me.Txt
  loc_15BB337: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_160)
  loc_15BB33F: var_F8 = var_15C.Text
  loc_15BB34D: Proc_6_17_EAAE40(var_180, CVar(var_160))
  loc_15BB35D: Set var_1B4 = Me.Txt
  loc_15BB363: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B8)
  loc_15BB36B: var_1C8 = CVar(var_1B8) 'Address
  loc_15BB372: Proc_6_17_EAAE40(var_1D8, var_1C8)
  loc_15BB382: Proc_6_7_F26918(var_2E8, MemVar_1F950EC)
  loc_15BB38B: Set var_31C = Me.TopCtrl1
  loc_15BB391: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E4)
  loc_15BB3E3: var_B4 = "Insert Into VenueMast(Code,Name,ShortName," & " Status,Dimension,DepartCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values('"
  loc_15BB3F4: var_F8 = CVar(var_B4 & global_56 & "','") 'String
  loc_15BB3FA: var_108 = var_F8 & var_E4 
  loc_15BB436: var_208 = var_108 & "','" & CVar(var_124) & "'," & var_180 & "," & var_1D8 & ",'" 
  loc_15BB489: var_3A0 = var_208 & CVar(global_52) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_2E8 & ",'" & IIf((CStr(var_32C) = "Add"), "A", "E") 
  loc_15BB4B3: unk_4B7B4C.Execute CStr(var_3A0 & "','" & CVar(MemVar_1F95078) & "')"), var_424, -1
  loc_15BB525: Set var_90 = Me.TopCtrl1
  loc_15BB52B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_428)
  loc_15BB533: var_9C = CStr()
  loc_15BB541: var_D4 = 0
  loc_15BB571: unk_4B7B4C.Execute "SELECT Count(*) FROM VenueCapacity WHERE VenueCode='" & global_56 & "'", var_E4, -1
  loc_15BB579: var_94 = var_94.Fields
  loc_15BB581: var_D4 = Me.Txt.Item(Me.Txt)
  loc_15BB589: var_120 = var_120.Value
  loc_15BB5BF: If (var_F8 Or (CDbl(Val(CStr(var_F8))) <= CDbl(0))) Then
  loc_15BB5E9:   unk_4B7B4C.Execute "Delete From VenueCapacity Where VenueCode='" & global_56 & "'", var_B0, -1
  loc_15BB620:   For var_42C = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_88 = var_42C 'Integer
  loc_15BB62A:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BB632:     var_1A0 = CVar(CLng(1)) 'Long
  loc_15BB66E:     If CBool(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString) Then
  loc_15BB675:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BB67D:       var_1A0 = CVar(CLng(2)) 'Long
  loc_15BB6C6:       var_458 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BB6F7:       var_460 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BB705:       Proc_6_7_F26918(var_108, MemVar_1F950EC, var_460, CVar(CLng(4)), CVar(CLng(var_88)), var_458, CVar(CLng(3)), CVar(CLng(var_88)))
  loc_15BB728:       var_B4 = "Insert Into VenueCapacity(VenueCode,Capacity,Seating,Floating,Site_Code,U_EntDt,U_AE,logSite_Code) " & " Values('" & global_56
  loc_15BB775:       var_11C = CVar(var_B4 & "','" & CStr(Me.FGrid2.TextMatrix)) & "'," & CStr(var_458) & "," & CStr(var_460) & ",'" & MemVar_1F95070 & "',") 'String
  loc_15BB7A5:       unk_4B7B4C.Execute CStr(var_11C & var_108 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_180, -1
  loc_15BB7EF:     End If
  loc_15BB7F2:   Next var_42C 'Integer
  loc_15BB7FA: Else
  loc_15BB81F:   For var_464 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)):   var_88 = var_464 'Integer
  loc_15BB829:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BB831:     var_1A0 = CVar(CLng(1)) 'Long
  loc_15BB851:     var_F8 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_15BB86D:     If CBool(var_F8 <> vbNullString) Then
  loc_15BB874:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BB87C:       var_1A0 = CVar(CLng(0)) 'Long
  loc_15BB8B2:       var_E4 = Me.FGrid2.TextMatrix)
  loc_15BB8C1:       var_2B8 = 0
  loc_15BB8FB:       var_330 = "SELECT Count(*) FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND " & "Capacity='" & CStr(var_E4)
  loc_15BB90B:       unk_4B7B4C.Execute var_330 & "'", var_F8, -1
  loc_15BB913:       var_98 = var_98.Fields
  loc_15BB91B:       var_2B8 = var_120.Item(var_120)
  loc_15BB923:       var_108 = CVar(var_158) 'Address
  loc_15BB92A:       Proc_6_39_E7D3A0(var_11C, var_108, var_158, var_E4, CVar(CLng(2)), CVar(CLng(var_88)))
  loc_15BB963:       If (var_11C <= 0) Then
  loc_15BB96A:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BB972:         var_1A0 = CVar(CLng(2)) 'Long
  loc_15BB9BB:         var_458 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BB9EC:         var_460 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BB9FA:         Proc_6_7_F26918(var_108, MemVar_1F950EC, var_460, CVar(CLng(4)), CVar(CLng(var_88)), var_458, CVar(CLng(3)), CVar(CLng(var_88)))
  loc_15BBA1D:         var_B4 = "Insert Into VenueCapacity(VenueCode,Capacity,Seating,Floating,Site_Code,U_EntDt,U_AE,logSite_Code) " & " Values('" & global_56
  loc_15BBA6A:         var_11C = CVar(var_B4 & "','" & CStr(Me.FGrid2.TextMatrix)) & "'," & CStr(var_458) & "," & CStr(var_460) & ",'" & MemVar_1F95070 & "',") 'String
  loc_15BBA9A:         unk_4B7B4C.Execute CStr(var_11C & var_108 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_180, -1
  loc_15BBAE7:       Else
  loc_15BBAEB:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BBAF3:         var_1A0 = CVar(CLng(3)) 'Long
  loc_15BBB1C:         var_218 = CVar(CLng(var_88)) 'Long
  loc_15BBB24:         var_258 = CVar(CLng(4)) 'Long
  loc_15BBB4D:         var_298 = CVar(CLng(var_88)) 'Long
  loc_15BBB55:         var_2D8 = CVar(CLng(0)) 'Long
  loc_15BBB64:         var_F8 = Me.FGrid2.TextMatrix)
  loc_15BBB74:         var_340 = CVar(CLng(var_88)) 'Long
  loc_15BBB7C:         var_370 = CVar(CLng(2)) 'Long
  loc_15BBB85:         Set var_120 = Me.FGrid2
  loc_15BBBCC:         var_430 = "UPDATE VenueCapacity SET " & "Seating=" & CStr(Val(CStr(Me.FGrid2.TextMatrix)))) & ",Site_Code='" & MemVar_1F95070 & "',Floating="
  loc_15BBBFF:         var_450 = var_430 & CStr(Val(CStr(Me.FGrid2.TextMatrix)))) & " WHERE VenueCode='" & CStr(var_F8) & "'" & " AND " & "Capacity='"
  loc_15BBC1A:         unk_4B7B4C.Execute var_450 & CStr(var_120.TextMatrix)) & "'", var_11C, -1
  loc_15BBC62:       End If
  loc_15BBC65:     Else
  loc_15BBC69:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BBC71:       var_1A0 = CVar(CLng(0)) 'Long
  loc_15BBC90:       var_218 = CVar(CLng(var_88)) 'Long
  loc_15BBC98:       var_258 = CVar(CLng(2)) 'Long
  loc_15BBCA1:       Set var_94 = Me.FGrid2
  loc_15BBCF2:       var_430 = "Delete From VenueCapacity " & " WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "'" & " AND " & "Capacity='" & CStr(var_94.TextMatrix))
  loc_15BBD02:       unk_4B7B4C.Execute var_430 & "'", var_F8, -1
  loc_15BBD2E:     End If
  loc_15BBD31:   Next var_464 'Integer
  loc_15BBD36: End If
  loc_15BBD41: Set var_90 = Me.Txt
  loc_15BBD47: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15BBD69: Set var_98 = Me.Txt
  loc_15BBD6F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_15BBD87: Proc_6_7_F26918(var_1C8, MemVar_1F950EC)
  loc_15BBD90: Set var_158 = Me.TopCtrl1
  loc_15BBD96: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_15BBDEB: var_B4 = "Insert Into GodownMast(Code,Name,ShortName,DepartCode,SysYn,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) " & " Values('" & global_56
  loc_15BBE08: var_134 = CVar(var_120.Text) 'String
  loc_15BBE34: var_190 = CVar(var_B4 & "','") & Trim(CVar(var_94)) & "','" & var_134 & "','" & CVar(global_52) & "','Y','" & CVar(MemVar_1F950C8) 
  loc_15BBE44: var_1D8 = var_190 & "'," & var_1C8 
  loc_15BBE83: var_318 = var_1D8 & ",'" & IIf((CStr(var_208) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_15BBE91: unk_4B7B4C.Execute CStr(var_318), var_32C, -1
  loc_15BBF0C: For var_474 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_474 'Integer
  loc_15BBF16:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BBF1E:   var_1A0 = CVar(CLng(2)) 'Long
  loc_15BBF44:   var_218 = CVar(CLng(var_88)) 'Long
  loc_15BBF5B:   var_E4 = Me.FGrid1.TextMatrix)
  loc_15BBF84:   If (CVar(CLng(1)) And (CStr(var_E4) = "ü")) Then
  loc_15BBF8B:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BBFA2:     var_B0 = Me.FGrid1.TextMatrix)
  loc_15BBFB9:     Proc_6_7_F26918(var_E4, MemVar_1F950EC, var_B0, CVar(CLng(2)), var_C4, MemVar_1F950EC)
  loc_15BBFC2:     Set var_94 = Me.TopCtrl1
  loc_15BBFC8:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr(Me.FGrid1.TextMatrix)) <> vbNullString))
  loc_15BC01D:     var_B4 = "Insert Into VenueFeatures(VenueCode,Feature,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values('" & global_56
  loc_15BC052:     var_F8 = CVar(var_B4 & "','" & CStr(var_B0) & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_15BC058:     var_108 = var_F8 & var_E4 
  loc_15BC092:     unk_4B7B4C.Execute CStr(var_108 & ",'" & IIf((CStr(var_134) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_1D8, -1
  loc_15BC0DA:   End If
  loc_15BC0DD: Next var_474 'Integer
  loc_15BC0E8: unk_4B7B4C.CommitTrans
  loc_15BC0F1: var_86 = CByte(0) 'Byte
  loc_15BC100: Me.Requery -1
  loc_15BC110: Me.Requery -1
  loc_15BC13D: Me.Find "SearchCode='" & global_56 & "'", 0, 1
  loc_15BC14D: Set var_90 = Me.TopCtrl1
  loc_15BC153: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_15BC16C: If (CStr() = "Add") Then
  loc_15BC16F:   Call TopCtrl1_UnknownEvent_A()
  loc_15BC174:   Exit Sub
  loc_15BC175: End If
  loc_15BC18A: var_9C = "INI"
  loc_15BC198: Call Proc_237_47_E7CF7C(Proc_5_1_100EC1C(var_9C, Me))
  loc_15BC1A3: Call Proc_237_46_14FB8E0(global_68)
  loc_15BC1A8: Exit Sub
  loc_15BC1A9: ' Referenced from: 15BAFE4
  loc_15BC1B2: If (CInt(var_86) = 1) Then
  loc_15BC1BB:   unk_4B7B4C.RollbackTrans
  loc_15BC1C0: End If
  loc_15BC1C8: Set var_90 = Err()
  loc_15BC1CE: Call 0.Method_arg_2C (var_9C)
  loc_15BC1E7: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_15BC1FA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F78254
  'Data Table: 4B7B3C
  Dim var_92 As Integer
  Dim Me As Variant
  loc_F78126: Set var_88 = Me.Txt
  loc_F7812C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F7813A: Proc_6_74_E23240(var_8C)
  loc_F78146: Call Proc_237_48_E87D50(var_8C)
  loc_F7814E: var_92 = Index
  loc_F78159: If (var_92 = CInt(0)) Then
  loc_F78173:   If (Me.RecordCount > 0) Then
  loc_F78181:     Set var_8C = Me.FGPoint
  loc_F78199:     Proc_6_137_1192FDC(Me.DGHelp, global_72, Index)
  loc_F781A7:   End If
  loc_F781AA: Else
  loc_F781B2:   If (var_92 = CInt(3)) Then
  loc_F781C2:     ReDim var_9C(0 To 1)
  loc_F781D9:     var_9C(0) = "Active"
  loc_F781E8:     var_9C(1) = "Non Active"
  loc_F7823F:     Set global_100 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index, Array(var_9C))
  loc_F78250:   End If
  loc_F78250: End If
  loc_F78250: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '109E168
  'Data Table: 4B7B3C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_109DED2: If (CLng(Shift) = &H1B) Then
  loc_109DED5:   Call Proc_237_48_E87D50()
  loc_109DEDA:   Exit Sub
  loc_109DEDB: End If
  loc_109DEDE: var_86 = KeyCode
  loc_109DEE9: If (var_86 = CInt(0)) Then
  loc_109DEF0:   Set var_A4 = Me.DGHelp
  loc_109DEFE:   Set var_AC = Me.FGPoint
  loc_109DF09:   Set var_9C = var_AC
  loc_109DF3B:   Proc_6_79_11AD564(var_A4, Me.Txt, CInt(0), global_72, Shift)
  loc_109DF58:   var_B0 = Me.RecordCount
  loc_109DFA8:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_109DFB6:     Set var_90 = Me.FGPoint
  loc_109DFCE:     Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, var_90, 0)
  loc_109DFDC:   End If
  loc_109DFDF: Else
  loc_109DFE7:   If (var_86 = CInt(3)) Then
  loc_109E00C:     Set var_8C = Me.Txt
  loc_109E012:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_109E01A:     var_9C = var_90.Left
  loc_109E02C:     Set var_9C = Me.Txt
  loc_109E032:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_109E03A:     0 = var_A4.Top
  loc_109E04C:     Set var_A8 = Me.Txt
  loc_109E052:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_109E05A:     var_B8 = var_AC.Height
  loc_109E06C:     Set var_BC = Me.Txt
  loc_109E072:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_109E07A:     var_C4 = var_C0.Width
  loc_109E0C2:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_109E0E6:   End If
  loc_109E0E6: End If
  loc_109E11F: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_109E137:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109E140:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_B0), CInt((var_B4 + var_B8)))
  loc_109E145:   End If
  loc_109E158:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(3))) Then
  loc_109E161:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_C4))
  loc_109E166:   End If
  loc_109E166: End If
  loc_109E166: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F31A98
  'Data Table: 4B7B3C
  Dim var_86 As Integer
  loc_F3198B: var_86 = KeyCode
  loc_F31996: If (var_86 = CInt(0)) Then
  loc_F319B5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F319C2:     var_A4 = "Name"
  loc_F319E1:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_72)
  loc_F31A13:     Proc_6_138_106E830(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_F31A21:   End If
  loc_F31A24: Else
  loc_F31A2C:   If Not (var_86 = CInt(2)) Then
  loc_F31A37:     If (var_86 = CInt(3)) Then
  loc_F31A3A:     End If
  loc_F31A55:     If (Me.FrmList.Visible = &HFF) Then
  loc_F31A84:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F31A94:     End If
  loc_F31A94:   End If
  loc_F31A94: End If
  loc_F31A94: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4838C
  'Data Table: 4B7B3C
  loc_E4836A: Set var_88 = Me.Txt
  loc_E48370: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4837E: Proc_6_73_E23294(var_8C)
  loc_E4838A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FEF11C
  'Data Table: 4B7B3C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_B0 As TextBox
  loc_FEEF37: var_86 = Cancel
  loc_FEEF42: If (var_86 = CInt(0)) Then
  loc_FEEF50:   Set var_8C = Me.Txt
  loc_FEEF56:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FEEF7F:   If (Proc_6_27_EA61EC(var_90, "Venue Name") = 0) Then
  loc_FEEF8C:     Set var_8C = Me.Txt
  loc_FEEF92:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FEEF9A:     var_90.SetFocus
  loc_FEEFA8:     arg_10 = &HFF
  loc_FEEFAB:     Exit Sub
  loc_FEEFAC:   End If
  loc_FEEFAF:   Call Proc_237_44_120FD34(var_9A, arg_10)
  loc_FEEFBA:   If (var_9A = &HFF) Then
  loc_FEEFBF:     arg_10 = &HFF
  loc_FEEFC2:     Exit Sub
  loc_FEEFC3:   End If
  loc_FEEFC6: Else
  loc_FEEFCE:   If (var_86 = CInt(1)) Then
  loc_FEEFDC:     Set var_8C = Me.Txt
  loc_FEEFE2:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FEEFEA:     var_98 = "Short Name"
  loc_FEF00B:     If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_FEF018:       Set var_8C = Me.Txt
  loc_FEF01E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FEF026:       var_90.SetFocus
  loc_FEF034:       arg_10 = &HFF
  loc_FEF037:       Exit Sub
  loc_FEF038:     End If
  loc_FEF03B:     Call Proc_237_44_120FD34(var_9A, arg_10)
  loc_FEF046:     If (var_9A = &HFF) Then
  loc_FEF04B:       arg_10 = &HFF
  loc_FEF04E:       Exit Sub
  loc_FEF04F:     End If
  loc_FEF052:   Else
  loc_FEF05A:     If (var_86 = CInt(3)) Then
  loc_FEF06A:       Set var_8C = Me.Txt
  loc_FEF070:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_FEF08F:       If (var_98 <> vbNullString) Then
  loc_FEF0C2:         Set var_94 = Me.Txt
  loc_FEF0C8:         Call 0.Method_Txt_Validate0 (Cancel, var_B0, Me.ListView.SelectedItem.Text)
  loc_FEF0D0:         var_B0.Text = Me.ListView.SelectedItem.Text
  loc_FEF0E6:       End If
  loc_FEF0F8:       Me.FGrid2.Col = CVar(CLng(3))
  loc_FEF113:       Me.FGrid2.Row = 1
  loc_FEF11B:     End If
  loc_FEF11B:   End If
  loc_FEF11B: End If
  loc_FEF11B: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5BFFC
  'Data Table: 4B7B3C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5BF1E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5BF25:   Set var_A8 = Me.ListView
  loc_F5BF6F:   Set var_C0 = Me.Txt
  loc_F5BF75:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5BF7D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5BF9D: End If
  loc_F5BFA9: Me.FrmList.Visible = False
  loc_F5BFD9: Set var_9C = Me.Txt
  loc_F5BFDF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5BFE7: var_A8.SetFocus
  loc_F5BFFB: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '101A1E8
  'Data Table: 4B7B3C
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_1019FCC: Set var_88 = Me.TopCtrl1
  loc_1019FD2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1019FEB: If (CStr() = "Browse") Then
  loc_1019FEE:   Exit Sub
  loc_1019FEF: End If
  loc_101A00E: If (CLng(Me.FGrid1.Col) = 1) Then
  loc_101A024:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_101A03C:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_101A073:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_101A098:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_101A0B7:     Me.FGrid1.CellFontName = "wingdings"
  loc_101A0D1:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_101A0F6:     If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_101A10C:       Me.FGrid1.CellForeColor = &HFF
  loc_101A117:     Else
  loc_101A12A:       Me.FGrid1.CellForeColor = &HFF0000
  loc_101A132:     End If
  loc_101A145:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_101A15D:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_101A162:     var_114 = "ü"
  loc_101A16C:     Set var_F4 = Me.FGrid1
  loc_101A172:     LateIdCallSt
  loc_101A18D:   Else
  loc_101A1A0:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_101A1B8:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_101A1BD:     var_114 = vbNullString
  loc_101A1C7:     Set var_F4 = Me.FGrid1
  loc_101A1CD:     LateIdCallSt
  loc_101A1E5:   End If
  loc_101A1E5: End If
  loc_101A1E5: Exit Sub
End Sub

Public Function global_52Get() '4B8A48
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4B8A57
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97CC0
  'Data Table: 4B7B3C
  Dim Me As Recordset15
  loc_E97C4E: On Error Goto loc_E97CB7
  loc_E97C57: Me.MoveFirst
  loc_E97C81: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97CA9: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E97CB1: Call Proc_237_46_14FB8E0(0)
  loc_E97CB6: Exit Sub
  loc_E97CB7: ' Referenced from: E97C4E
  loc_E97CB7: Proc_6_60_E63754(var_A0)
  loc_E97CBC: Exit Sub
  loc_E97CBD: Exit Sub
End Sub

Public Sub Proc_237_43_F66A08
  'Data Table: 4B7B3C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_FC As Variant
  loc_F668F3: var_A0 = CLng(Me.FGrid2.Col)
  loc_F66903: If (var_A0 = CLng(3)) Then
  loc_F66919:   var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F66921:   var_DC = CVar(CLng(3)) 'Long
  loc_F66932:   Set var_8C = Me.TxtGrid
  loc_F66938:   Call 0.Method_Proc_237_43_F66A080 (0, var_A4, var_A8)
  loc_F66940:   var_DC = var_A4.Text
  loc_F6694F:   var_FC = CVar(CStr(Val(var_A8))) 'String
  loc_F66957:   Set var_110 = Me.FGrid2
  loc_F6695D:   LateIdCallSt
  loc_F6697D: Else
  loc_F66984:   If (var_A0 = CLng(4)) Then
  loc_F669B3:     Set var_8C = Me.TxtGrid
  loc_F669B9:     Call 0.Method_Proc_237_43_F66A080 (0, var_A4, var_A8, CVar(CLng(4)), CVar(CLng(Me.FGrid2.Row)))
  loc_F669C1:     var_110 = var_A4.Text
  loc_F669D0:     var_FC = CVar(CStr(Val(var_A8))) 'String
  loc_F669D8:     Set var_110 = Me.FGrid2
  loc_F669DE:     LateIdCallSt
  loc_F669FB:   End If
  loc_F669FB: End If
  loc_F66A00: Proc_237_43_F66A08 = &HFF
End Sub

Public Sub Proc_237_44_120FD34
  'Data Table: 4B7B3C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4B7B4C As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_120F89B: If (Me.RecordCount <> 0) Then
  loc_120F8A2:   Set var_90 = Me.TopCtrl1
  loc_120F8A8:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_120F8C1:   If (CStr() = "Add") Then
  loc_120F8FF:     Set var_90 = Me.Txt
  loc_120F905:     Call 0.Method_Proc_237_44_120FD340 (CInt(0), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_120F926:     unk_4B7B4C.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_120F936:      = var_D0.Item()
  loc_120F93E:      = var_E4.Value
  loc_120F96F:     If (var_A8.Text.Fields > 0) Then
  loc_120F98D:       var_A0 = "Duplicate Venue Name"
  loc_120F993:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_120F9AE:       Set var_90 = Me.Txt
  loc_120F9B4:       Call 0.Method_Proc_237_44_120FD340 (CInt(0))
  loc_120F9BC:       var_A8.SetFocus
  loc_120F9CD:       Proc_237_44_120FD34 = &HFF
  loc_120F9D3:     End If
  loc_120FA0E:     Set var_90 = Me.Txt
  loc_120FA14:     Call 0.Method_Proc_237_44_120FD340 (CInt(1), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and shortName='", var_A0, -1)
  loc_120FA35:     unk_4B7B4C.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_120FA45:      = var_D0.Item(var_A8)
  loc_120FA4D:      = var_E4.Value
  loc_120FA7E:     If (var_A8.Text.Fields > 0) Then
  loc_120FA9C:       var_A0 = "Duplicate Short Name"
  loc_120FAA2:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_120FABD:       Set var_90 = Me.Txt
  loc_120FAC3:       Call 0.Method_Proc_237_44_120FD340 (CInt(1))
  loc_120FACB:       var_A8.SetFocus
  loc_120FADC:       Proc_237_44_120FD34 = &HFF
  loc_120FAE2:     End If
  loc_120FAE5:   Else
  loc_120FB20:     Set var_90 = Me.Txt
  loc_120FB26:     Call 0.Method_Proc_237_44_120FD340 (CInt(0), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_120FB58:     unk_4B7B4C.Execute var_D0 & var_AC & "' And Name<>'" & global_80 & "'", 0, var_E4
  loc_120FB68:      = var_D0.Item(var_A8)
  loc_120FB70:      = var_E4.Value
  loc_120FBA5:     If (var_A8.Text.Fields > 0) Then
  loc_120FBC3:       var_A0 = "Duplicate Venue Name"
  loc_120FBC9:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_120FBE4:       Set var_90 = Me.Txt
  loc_120FBEA:       Call 0.Method_Proc_237_44_120FD340 (CInt(0))
  loc_120FBF2:       var_A8.SetFocus
  loc_120FC03:       Proc_237_44_120FD34 = &HFF
  loc_120FC09:     End If
  loc_120FC44:     Set var_90 = Me.Txt
  loc_120FC4A:     Call 0.Method_Proc_237_44_120FD340 (CInt(1), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and shortName='", var_A0, -1)
  loc_120FC7C:     unk_4B7B4C.Execute var_D0 & var_AC & "' And shortName<>'" & global_76 & "'", 0, var_E4
  loc_120FC8C:      = var_D0.Item(var_A8)
  loc_120FC94:      = var_E4.Value
  loc_120FCC9:     If (var_A8.Text.Fields > 0) Then
  loc_120FCED:       MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_120FD08:       Set var_90 = Me.Txt
  loc_120FD0E:       Call 0.Method_Proc_237_44_120FD340 (CInt(1))
  loc_120FD16:       var_A8.SetFocus
  loc_120FD27:       Proc_237_44_120FD34 = &HFF
  loc_120FD2D:     End If
  loc_120FD2D:   End If
  loc_120FD2D: End If
  loc_120FD2D: Proc_237_44_120FD34 = var_A8
End Sub

Public Sub Proc_237_45_F1EC90
  'Data Table: 4B7B3C
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F1EB92: global_80 = vbNullString
  loc_F1EB9C: global_76 = vbNullString
  loc_F1EBAE: Set var_8C = Me.Txt
  loc_F1EBB4: Call 0.Method_Proc_237_45_F1EC90C (var_8E, var_86)
  loc_F1EBC4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1EBDA:   Set var_8C = Me.Txt
  loc_F1EBE0:   Call 0.Method_Proc_237_45_F1EC900 (CInt(var_86), var_98)
  loc_F1EBE8:   var_98.Text = vbNullString
  loc_F1EC04:   Set var_8C = Me.Txt
  loc_F1EC0A:   Call 0.Method_Proc_237_45_F1EC900 (CInt(var_86), var_98)
  loc_F1EC12:   var_98.Tag = vbNullString
  loc_F1EC21: Next var_92 'Byte
  loc_F1EC45: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F1EC5A: Me.Picture1.Picture = var_8C
  loc_F1EC73: Me.Picture1.Tag = vbNullString
  loc_F1EC87: Me.Picture1.Visible = True
  loc_F1EC8F: Exit Sub
End Sub

Public Sub Proc_237_46_14FB8E0
  'Data Table: 4B7B3C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AE As Integer
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4B7B4C As Connection15
  Dim var_AC As Recordset15
  Dim var_128 As Variant
  Dim var_140 As String
  Dim var_114 As Variant
  Dim var_150 As Variant
  Dim var_1FC As Variant
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_B4 As Recordset15
  loc_14FAAA3: Me.FGrid2.FillStyle = 1
  loc_14FAABE: Me.FGrid2.SelectionMode = 1
  loc_14FAAD9: Me.FGrid2.HighLight = 1
  loc_14FAAE1: On Error Goto loc_14FB8DA
  loc_14FAB00: If (Me.RecordCount > 0) Then
  loc_14FAB59:   unk_4B7B4C.Execute CStr("SELECT * FROM VenueMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_14FAB64:   Set var_AC = var_128
  loc_14FAC21:   var_190 = IIf((Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_AE")), var_AC.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14FAC66:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_Name")), var_190)))
  loc_14FACF4:   var_140 = "entdt : "
  loc_14FAD41:   var_190 = IIf((Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_AE"))) = "E"), "Last Update : ", var_140))
  loc_14FAD86:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_EntDt")))))
  loc_14FADD2:   If (var_AC.RecordCount > 0) Then
  loc_14FADD5:     Call Proc_237_45_F1EC90()
  loc_14FADDA:     ' Referenced from: 14FB29E
  loc_14FADE0:     var_1EA = var_AC.EOF
  loc_14FADE9:     If Not(var_1EA) Then
  loc_14FADFB:       var_A8 = var_AC.Fields
  loc_14FAE14:       var_114 = IsNull(CVar(var_A8.Item("PicPath")))
  loc_14FAE1B:       var_A4 = "PicPath"
  loc_14FAE46:       var_F0 = vbNullString
  loc_14FAE50:       var_150 = var_114 Or (Trim(CVar(var_AC.Fields.Item(var_A4))) = var_F0)
  loc_14FAE68:       If CBool(var_150) Then
  loc_14FAE89:         Me.Global.LoadPicture var_94, var_A4, var_F0, var_114, var_140
  loc_14FAE9E:         Me.Picture1.Picture = var_A8
  loc_14FAEAD:       Else
  loc_14FAEDB:         var_F0 = "PicPath"
  loc_14FAF21:         var_A4 = "DAT"
  loc_14FAF49:         var_114 = "AVI"
  loc_14FAF53:         var_1FC = (Ucase(Right(Trim(CVar(var_AC.Fields.Item("PicPath"))), 3)) = var_A4) Or (Ucase(Right(Trim(CVar(var_AC.Fields.Item(var_F0))), 3)) = var_114)
  loc_14FAF73:         If CBool(var_1FC) Then
  loc_14FAF82:           Me.Picture1.Visible = False
  loc_14FAF8D:         Else
  loc_14FAFC5:           Me.Picture1.Tag = CStr(var_AC.Fields.Item("PicPath").Value)
  loc_14FAFE2:           var_94 = "PicPath"
  loc_14FAFF6:           var_C0 = var_AC.Fields.Item(var_94)
  loc_14FB010:           Call 0.Method_Proc_237_46_14FB8E04 (CStr(var_C0.Value), var_1EA)
  loc_14FB025:           If var_1EA Then
  loc_14FB042:             Set var_A8 = Me.Picture1
  loc_14FB05A:             Me.Global.LoadPicture CVar(Me.Picture1.Tag), var_94, var_A4, var_F0, var_114
  loc_14FB069:             Set var_12C = Me.Picture1
  loc_14FB06F:             var_12C.Picture = var_C0
  loc_14FB084:             Set var_A8 = Me.Picture1
  loc_14FB08A:             var_A8.Refresh
  loc_14FB095:           Else
  loc_14FB0B3:             Me.Global.LoadPicture var_94, var_A4, var_F0, var_114, var_140
  loc_14FB0C8:             Me.Picture1.Picture = var_A8
  loc_14FB0D4:           End If
  loc_14FB0D4:         End If
  loc_14FB0D4:       End If
  loc_14FB0E6:       var_A8 = var_AC.Fields
  loc_14FB10D:       Set var_128 = Me.Txt
  loc_14FB113:       Call 0.Method_Proc_237_46_14FB8E00 (CInt(0), var_12C, CStr(var_A8.Item("Code").Value))
  loc_14FB11B:       var_12C.Tag = var_A8
  loc_14FB14B:       var_C0 = var_AC.Fields.Item("Name")
  loc_14FB16A:       Set var_128 = Me.Txt
  loc_14FB170:       Call 0.Method_Proc_237_46_14FB8E00 (CInt(0), var_12C, CStr(var_C0.Value))
  loc_14FB178:       var_12C.Text = var_C0
  loc_14FB1C4:       Set var_128 = Me.Txt
  loc_14FB1CA:       Call 0.Method_Proc_237_46_14FB8E00 (CInt(1), var_12C)
  loc_14FB1D2:       var_12C.Text = Proc_6_38_E69628(CVar(var_AC.Fields.Item("ShortName")))
  loc_14FB21C:       Set var_128 = Me.Txt
  loc_14FB222:       Call 0.Method_Proc_237_46_14FB8E00 (CInt(3), var_12C)
  loc_14FB22A:       var_12C.Text = Proc_6_38_E69628(CVar(var_AC.Fields.Item("Status")))
  loc_14FB24D:       var_A8 = var_AC.Fields
  loc_14FB274:       Set var_128 = Me.Txt
  loc_14FB27A:       Call 0.Method_Proc_237_46_14FB8E00 (CInt(2), var_12C)
  loc_14FB282:       var_12C.Text = Proc_6_38_E69628(CVar(var_A8.Item("Dimension")))
  loc_14FB299:       var_AC.MoveNext
  loc_14FB29E:       GoTo loc_14FADDA
  loc_14FB2A1:     End If
  loc_14FB2A1:   End If
  loc_14FB2A1:   Call Proc_237_50_1186044(var_A8)
  loc_14FB2BA:   var_104 = "Select F.Name As FeatureName,V.Feature From VenueFeatures V Inner Join FeatureMast F ON V.Feature=F.Code Where V.LogSite_Code in ('" & MemVar_1F95078
  loc_14FB2FA:   var_124 = CVar(var_104 & "','HO') and VenueCode='") & Me.Fields.Item("SearchCode").Value & "'" 
  loc_14FB308:   unk_4B7B4C.Execute CStr(var_124), var_150, -1
  loc_14FB313:   Set var_B4 = var_128
  loc_14FB347:   If (var_B4.RecordCount > 0) Then
  loc_14FB34A:     ' Referenced from: 14FB495
  loc_14FB359:     If Not(var_B4.EOF) Then
  loc_14FB381:       For var_200 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_AE = var_200 'Integer
  loc_14FB38B:         var_94 = CVar(CLng(1)) 'Long
  loc_14FB393:         var_F0 = CVar(CLng(2)) 'Long
  loc_14FB3CB:         var_128 = var_B4.Fields.Item("Feature")
  loc_14FB3EF:         If (CVar(CStr(Me.FGrid1.TextMatrix))) = var_128.Value) Then
  loc_14FB404:           Me.FGrid1.Col = CVar(CLng(1))
  loc_14FB41C:           Me.FGrid1.CellFontName = "wingdings"
  loc_14FB436:           Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_14FB451:           Me.FGrid1.CellForeColor = &HFF0000
  loc_14FB45D:           var_94 = CVar(CLng(1)) 'Long
  loc_14FB465:           var_F0 = CVar(CLng(1)) 'Long
  loc_14FB46A:           var_140 = "ü"
  loc_14FB474:           Set var_A8 = Me.FGrid1
  loc_14FB47A:           LateIdCallSt
  loc_14FB485:         End If
  loc_14FB488:       Next var_200 'Integer
  loc_14FB490:       var_B4.MoveNext
  loc_14FB495:       GoTo loc_14FB34A
  loc_14FB498:     End If
  loc_14FB498:   End If
  loc_14FB4EE:   unk_4B7B4C.Execute CStr("Select * FROM VenueCapacity Where VenueCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_14FB4F9:   Set var_B4 = var_128
  loc_14FB527:   If (var_B4.RecordCount > 0) Then
  loc_14FB52A:     ' Referenced from: 14FB81E
  loc_14FB539:     If Not(var_B4.EOF) Then
  loc_14FB561:       For var_204 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_AE = var_204 'Integer
  loc_14FB56B:         var_94 = CVar(CLng(1)) 'Long
  loc_14FB573:         var_F0 = CVar(CLng(2)) 'Long
  loc_14FB5DF:         If (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) = Trim(CVar(var_B4.Fields.Item("Capacity")))) Then
  loc_14FB5F4:           Me.FGrid2.Col = CVar(CLng(1))
  loc_14FB60C:           Me.FGrid2.CellFontName = "wingdings"
  loc_14FB626:           Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_14FB641:           Me.FGrid2.CellForeColor = &HFF0000
  loc_14FB64D:           var_94 = CVar(CLng(1)) 'Long
  loc_14FB655:           var_F0 = CVar(CLng(1)) 'Long
  loc_14FB65A:           var_140 = "ü"
  loc_14FB664:           Set var_A8 = Me.FGrid2
  loc_14FB66A:           LateIdCallSt
  loc_14FB679:           var_A4 = CVar(CLng(1)) 'Long
  loc_14FB681:           var_114 = CVar(CLng(0)) 'Long
  loc_14FB6B4:           var_E0 = CVar(CStr(Me.Fields.Item("SearchCode").Value)) 'String
  loc_14FB6C2:           LateIdCallSt
  loc_14FB711:           Proc_6_48_EF4E00(var_E0, CVar(var_B4.Fields.Item("Seating")), CVar(CLng(3)), CVar(CLng(1)), Me.FGrid2, var_E0, CVar(CLng(3)))
  loc_14FB728:           LateIdCallSt
  loc_14FB777:           Proc_6_48_EF4E00(var_E0, CVar(var_B4.Fields.Item("Floating")), CVar(CLng(4)), CVar(CLng(1)), Me.FGrid2, CVar(CStr(var_E0)), CVar(CLng(1)))
  loc_14FB780:           var_100 = CVar(CStr(var_E0)) 'String
  loc_14FB788:           Set var_128 = Me.FGrid2
  loc_14FB78E:           LateIdCallSt
  loc_14FB7A9:         Else
  loc_14FB7AD:           var_A4 = CVar(CLng(1)) 'Long
  loc_14FB7B5:           var_114 = CVar(CLng(0)) 'Long
  loc_14FB7E8:           var_E0 = CVar(CStr(Me.Fields.Item("SearchCode").Value)) 'String
  loc_14FB7F0:           Set var_128 = Me.FGrid2
  loc_14FB7F6:           LateIdCallSt
  loc_14FB80E:         End If
  loc_14FB811:       Next var_204 'Integer
  loc_14FB819:       var_B4.MoveNext
  loc_14FB81E:       GoTo loc_14FB52A
  loc_14FB821:     End If
  loc_14FB824:   Else
  loc_14FB849:     For var_208 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)):   var_AE = var_208 'Integer
  loc_14FB853:       var_A4 = CVar(CLng(1)) 'Long
  loc_14FB85B:       var_114 = CVar(CLng(0)) 'Long
  loc_14FB88E:       var_E0 = CVar(CStr(Me.Fields.Item("SearchCode").Value)) 'String
  loc_14FB896:       Set var_128 = Me.FGrid2
  loc_14FB89C:       LateIdCallSt
  loc_14FB8B7:     Next var_208 'Integer
  loc_14FB8BC:   End If
  loc_14FB8BF: Else
  loc_14FB8BF:   Call Proc_237_45_F1EC90()
  loc_14FB8C4: End If
  loc_14FB8C4: Call Proc_237_48_E87D50()
  loc_14FB8CE: Set var_AC = Nothing
  loc_14FB8D6: Set var_B4 = Nothing
  loc_14FB8D9: Exit Sub
  loc_14FB8DA: ' Referenced from: 14FAAE1
  loc_14FB8DA: Proc_6_60_E63754()
  loc_14FB8DF: Exit Sub
End Sub

Public Sub Proc_237_47_E7CF7C(arg_C) 'E7CF7C
  'Data Table: 4B7B3C
  Dim var_98 As TextBox
  loc_E7CF2A: Set var_8C = Me.Txt
  loc_E7CF30: Call 0.Method_Proc_237_47_E7CF7CC (var_8E, var_86)
  loc_E7CF40: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7CF56:   Set var_8C = Me.Txt
  loc_E7CF5C:   Call 0.Method_Proc_237_47_E7CF7C0 (CInt(var_86), var_98)
  loc_E7CF64:   var_98.Enabled = arg_C
  loc_E7CF73: Next var_92 'Byte
  loc_E7CF79: Exit Sub
End Sub

Public Sub Proc_237_48_E87D50
  'Data Table: 4B7B3C
  loc_E87CFC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E87D0E:   Me.DGHelp.Visible = False
  loc_E87D16: End If
  loc_E87D32: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E87D44:   Me.FGPoint.Visible = False
  loc_E87D4C: End If
  loc_E87D4C: Exit Sub
End Sub

Public Sub Proc_237_49_E91C60(arg_C) 'E91C60
  'Data Table: 4B7B3C
  Dim var_10C As TextBox
  loc_E91BF4: Call Proc_237_48_E87D50()
  loc_E91C30: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E91C33:   Call TopCtrl1_UnknownEvent_16()
  loc_E91C3B: Else
  loc_E91C45:   Set var_108 = Me.Txt
  loc_E91C4B:   Call 0.Method_Proc_237_49_E91C600 (arg_C)
  loc_E91C53:   var_10C.SetFocus
  loc_E91C5F: End If
  loc_E91C5F: Exit Sub
End Sub

Public Sub Proc_237_50_1186044
  'Data Table: 4B7B3C
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim unk_4B7B4C As Connection15
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_130 As MSHFlexGrid
  loc_1185C68: On Error Goto loc_118603C
  loc_1185C6F: var_8A = CByte(1) 'Byte
  loc_1185C86: Me.FGrid1.Rows = 1
  loc_1185C8E: var_9C = vbNullString
  loc_1185C98: Set var_B0 = Me.FGrid1
  loc_1185CB6: Set var_B0 = Me.FGrid1
  loc_1185CBC: var_B0.FixedRows = 1
  loc_1185CE8: unk_4B7B4C.Execute "SELECT * FROM FEATUREMAST Where Status='Active' and LogSite_Code IN ('" & MemVar_1F95078 & "','HO') ORDER BY NAME", var_C8, -1
  loc_1185CF3: Set var_88 = var_B0
  loc_1185D1A: If (Me.Recordset15.RecordCount > 0) Then
  loc_1185D37:   For var_D0 = CByte(1) To CByte(Me.Recordset15.RecordCount): var_8A = var_D0 'Byte
  loc_1185D41:     Set var_D4 = Me.FGrid1
  loc_1185D51:     var_D4.Row = CVar(CLng(var_8A))
  loc_1185D61:     var_D4.Col = CVar(CLng(1))
  loc_1185D6F:     var_D4.CellFontName = "wingdings"
  loc_1185D7F:     var_D4.CellFontSize = CVar(CDbl(&H12))
  loc_1185D90:     var_D4.CellForeColor = &HFF0000
  loc_1185D9A:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_1185DA2:     var_E4 = CVar(CLng(1)) 'Long
  loc_1185DA7:     var_104 = vbNullString
  loc_1185DB0:     LateIdCallSt
  loc_1185DBD:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1185DC5:     var_F4 = CVar(CLng(2)) 'Long
  loc_1185DF8:     var_128 = CVar(CStr(Me.var_D4.Fields.Item("Code").Value)) 'String
  loc_1185DFF:     LateIdCallSt
  loc_1185E1A:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1185E22:     var_F4 = CVar(CLng(3)) 'Long
  loc_1185E4C:     var_C8 = Me.Recordset15.Fields.Item("Name").Value
  loc_1185E55:     var_128 = CVar(CStr(var_C8)) 'String
  loc_1185E5C:     LateIdCallSt
  loc_1185E74:     Set var_D4 = Nothing 
  loc_1185E7E:     Me.Recordset15.MoveNext
  loc_1185E83:     var_9C = vbNullString
  loc_1185E8D:     Set var_B0 = Me.FGrid1
  loc_1185EA1:   Next var_D0 'Byte
  loc_1185EA7: End If
  loc_1185EAB: var_8A = CByte(1) 'Byte
  loc_1185EC2: Me.FGrid2.Rows = 5
  loc_1185ED7: Set var_B0 = Me.FGrid2
  loc_1185EDD: var_B0.FixedRows = 1
  loc_1185EFB: unk_4B7B4C.Execute "SELECT DISTINCT([Capacity]) FROM VenueCapacity", var_C8, -1
  loc_1185F06: Set var_88 = var_B0
  loc_1185F26: If (Me.Recordset15.RecordCount > 0) Then
  loc_1185F43:   For var_12C = CByte(1) To CByte(Me.Recordset15.RecordCount): var_8A = var_12C 'Byte
  loc_1185F4D:     Set var_130 = Me.FGrid2
  loc_1185F5D:     var_130.Row = CVar(CLng(var_8A))
  loc_1185F6D:     var_130.Col = CVar(CLng(1))
  loc_1185F7B:     var_130.CellFontName = "wingdings"
  loc_1185F8B:     var_130.CellFontSize = CVar(CDbl(&H12))
  loc_1185F9C:     var_130.CellForeColor = &HFF0000
  loc_1185FA6:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_1185FAE:     var_E4 = CVar(CLng(1)) 'Long
  loc_1185FB3:     var_104 = vbNullString
  loc_1185FBC:     LateIdCallSt
  loc_1185FC9:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1185FD1:     var_F4 = CVar(CLng(2)) 'Long
  loc_1186004:     var_128 = CVar(CStr(Me.var_130.Fields.Item("Capacity").Value)) 'String
  loc_118600B:     LateIdCallSt
  loc_1186023:     Set var_130 = Nothing 
  loc_118602D:     Me.Recordset15.MoveNext
  loc_1186035:   Next var_12C 'Byte
  loc_118603B: End If
  loc_118603B: Exit Sub
  loc_118603C: ' Referenced from: 1185C68
  loc_118603C: Proc_6_60_E63754()
  loc_1186041: Exit Sub
End Sub

Public Sub Proc_237_51_1231704
  'Data Table: 4B7B3C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_CC As MSHFlexGrid
  Dim var_DC As String
  Dim var_100 As MSHFlexGrid
  loc_12311EB: Me.FGrid1.Row = 0
  loc_1231206: Me.FGrid1.Col = 0
  loc_123120E: var_94 = 0
  loc_123121D: var_B8 = CVar(CInt(3)) 'Integer
  loc_1231225: Set var_A8 = Me.FGrid1
  loc_123122B: LateIdCallSt
  loc_1231249: Me.FGrid1.Row = 1
  loc_1231264: Me.FGrid1.Cols = 4
  loc_1231269: var_94 = 0
  loc_1231272: var_B8 = 0
  loc_123127E: LateIdCallSt
  loc_1231286: var_94 = 0
  loc_1231292: var_B8 = CVar(CLng(1)) 'Long
  loc_1231297: var_DC = vbNullString
  loc_12312A0: LateIdCallSt
  loc_12312AB: var_94 = CVar(CLng(1)) 'Long
  loc_12312B0: var_B8 = &H1F4
  loc_12312BC: LateIdCallSt
  loc_12312C4: var_94 = 0
  loc_12312D0: var_B8 = CVar(CLng(2)) 'Long
  loc_12312D5: var_DC = "Code"
  loc_12312DE: LateIdCallSt
  loc_12312E9: var_94 = CVar(CLng(2)) 'Long
  loc_12312EE: var_B8 = 0
  loc_12312FA: LateIdCallSt
  loc_1231302: var_94 = 0
  loc_123130E: var_B8 = CVar(CLng(3)) 'Long
  loc_1231313: var_DC = "Venue Feature"
  loc_123131C: LateIdCallSt
  loc_1231327: var_94 = CVar(CLng(3)) 'Long
  loc_1231332: var_B8 = CVar(CInt(1)) 'Integer
  loc_1231339: LateIdCallSt
  loc_1231344: var_94 = CVar(CLng(3)) 'Long
  loc_123134F: var_B8 = CVar(CInt(1)) 'Integer
  loc_1231356: LateIdCallSt
  loc_1231361: var_94 = CVar(CLng(3)) 'Long
  loc_1231366: var_B8 = &H12DE
  loc_1231372: LateIdCallSt
  loc_123137C: Set var_CC = Nothing 
  loc_123139F: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_12313A2:   var_94 = vbNullString
  loc_12313AC:   Set var_A8 = Me.FGrid1
  loc_12313BD: End If
  loc_12313D0: Me.FGrid2.Row = 0
  loc_12313EB: Me.FGrid2.Col = 0
  loc_12313F3: var_94 = 0
  loc_1231402: var_B8 = CVar(CInt(3)) 'Integer
  loc_123140A: Set var_A8 = Me.FGrid2
  loc_1231410: LateIdCallSt
  loc_123142E: Me.FGrid2.Row = 1
  loc_123143A: Set var_100 = Me.FGrid2
  loc_123144A: global_60 = CStr(&HE0E0E0)
  loc_123145D: var_100.Cols = 6
  loc_1231462: var_94 = 0
  loc_123146E: var_B8 = CVar(CLng(0)) 'Long
  loc_1231473: var_DC = "Code"
  loc_123147C: LateIdCallSt
  loc_1231487: var_94 = CVar(CLng(0)) 'Long
  loc_123148C: var_B8 = 0
  loc_1231498: LateIdCallSt
  loc_12314A0: var_94 = 0
  loc_12314AC: var_B8 = CVar(CLng(1)) 'Long
  loc_12314B1: var_DC = vbNullString
  loc_12314BA: LateIdCallSt
  loc_12314C5: var_94 = CVar(CLng(1)) 'Long
  loc_12314CA: var_B8 = &H1F4
  loc_12314D6: LateIdCallSt
  loc_12314DE: var_94 = 0
  loc_12314EA: var_B8 = CVar(CLng(2)) 'Long
  loc_12314EF: var_DC = "Venue Capacity"
  loc_12314F8: LateIdCallSt
  loc_1231503: var_94 = CVar(CLng(2)) 'Long
  loc_123150E: var_B8 = CVar(CInt(1)) 'Integer
  loc_1231515: LateIdCallSt
  loc_1231520: var_94 = CVar(CLng(2)) 'Long
  loc_123152B: var_B8 = CVar(CInt(1)) 'Integer
  loc_1231532: LateIdCallSt
  loc_123153D: var_94 = CVar(CLng(2)) 'Long
  loc_1231542: var_B8 = &HAF0
  loc_123154E: LateIdCallSt
  loc_1231556: var_94 = 0
  loc_1231562: var_B8 = CVar(CLng(3)) 'Long
  loc_1231567: var_DC = "Seating"
  loc_1231570: LateIdCallSt
  loc_123157B: var_94 = CVar(CLng(3)) 'Long
  loc_1231586: var_B8 = CVar(CInt(1)) 'Integer
  loc_123158D: LateIdCallSt
  loc_1231598: var_94 = CVar(CLng(3)) 'Long
  loc_12315A3: var_B8 = CVar(CInt(1)) 'Integer
  loc_12315AA: LateIdCallSt
  loc_12315B5: var_94 = CVar(CLng(3)) 'Long
  loc_12315BA: var_B8 = &H3E8
  loc_12315C6: LateIdCallSt
  loc_12315CE: var_94 = 0
  loc_12315DA: var_B8 = CVar(CLng(4)) 'Long
  loc_12315DF: var_DC = "Floating"
  loc_12315E8: LateIdCallSt
  loc_12315F3: var_94 = CVar(CLng(4)) 'Long
  loc_12315FE: var_B8 = CVar(CInt(1)) 'Integer
  loc_1231605: LateIdCallSt
  loc_1231610: var_94 = CVar(CLng(4)) 'Long
  loc_123161B: var_B8 = CVar(CInt(1)) 'Integer
  loc_1231622: LateIdCallSt
  loc_123162D: var_94 = CVar(CLng(4)) 'Long
  loc_1231632: var_B8 = &H3E8
  loc_123163E: LateIdCallSt
  loc_1231649: var_94 = CVar(CLng(5)) 'Long
  loc_123164E: var_B8 = 0
  loc_123165A: LateIdCallSt
  loc_123166E: var_100.Rows = 5
  loc_1231673: var_94 = 3
  loc_123167F: var_B8 = CVar(CLng(2)) 'Long
  loc_1231684: var_DC = "Theatre"
  loc_123168D: LateIdCallSt
  loc_1231695: var_94 = 4
  loc_12316A1: var_B8 = CVar(CLng(2)) 'Long
  loc_12316A6: var_DC = "UShape"
  loc_12316AF: LateIdCallSt
  loc_12316B7: var_94 = 1
  loc_12316C3: var_B8 = CVar(CLng(2)) 'Long
  loc_12316C8: var_DC = "Informal"
  loc_12316D1: LateIdCallSt
  loc_12316D9: var_94 = 2
  loc_12316E5: var_B8 = CVar(CLng(2)) 'Long
  loc_12316EA: var_DC = "Seating"
  loc_12316F3: LateIdCallSt
  loc_12316FD: Set var_100 = Nothing 
  loc_1231701: Exit Sub
  loc_1231702: PrintItemSemi
End Sub
