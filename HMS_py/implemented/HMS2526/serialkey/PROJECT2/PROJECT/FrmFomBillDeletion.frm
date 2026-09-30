VERSION 5.00
Begin VB.Form FrmFomBillDeletion
  Caption = "Fom Bill Delection"
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 1110
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 1425
    Width = 1635
    Height = 285
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 1740
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 2055
    Width = 3345
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 1815
    Top = 2490
    Width = 915
    Height = 195
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
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFillz
    Caption = "&Fill"
    BackColor = &HC0FFFF&
    Left = 9135
    Top = 4890
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox TxtSearch
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 8430
    Top = 2235
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdDeletez
    Caption = "&Delete"
    BackColor = &HC0FFFF&
    Left = 10680
    Top = 5085
    Width = 1545
    Height = 495
    Visible = 0   'False
    TabIndex = 9
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdExitz
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 12615
    Top = 5430
    Width = 1545
    Height = 495
    Visible = 0   'False
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
    Style = 1
  End
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11895
    Top = 3315
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 4680
    Height = 345
    Visible = 0   'False
    TabIndex = 0
  End
  Begin MSHFlexGrid GridSel
    Left = 1725
    Top = 2415
    Width = 6495
    Height = 5985
    TabIndex = 6
  End
  Begin DataGrid DGRestType
    Left = 8325
    Top = 6570
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 8475
    Top = 2490
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGPayType
    Left = 8010
    Top = 6210
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin BtnEnh CmdExit
    Left = 9390
    Top = 1170
    Width = 1200
    Height = 870
    TabIndex = 16
  End
  Begin BtnEnh CmdFill
    Left = 6930
    Top = 1170
    Width = 1275
    Height = 870
    TabIndex = 5
  End
  Begin BtnEnh CmdDelete
    Left = 8190
    Top = 1170
    Width = 1200
    Height = 870
    TabIndex = 17
  End
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 1950
    Top = 1410
    Width = 735
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
  Begin Label LblName
    Caption = "From Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1950
    Top = 1110
    Width = 990
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
  Begin Label LblName
    Caption = "Department"
    Index = 2
    ForeColor = &HC00000&
    Left = 1950
    Top = 1740
    Width = 1110
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
  Begin Label LblName
    Caption = "Payment mode"
    Index = 3
    ForeColor = &HC00000&
    Left = 1950
    Top = 2070
    Width = 1440
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
    BackColor = &H80FFFF&
    ForeColor = &H80&
    Left = 1755
    Top = 8520
    Width = 6360
    Height = 345
    TabIndex = 19
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
    TabIndex = 18
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

Attribute VB_Name = "FrmFomBillDeletion"

Private global_52 As Integer
Private global_84 As Long

Private Sub CmdDelete_UnknownEvent_9 '108DF98
  'Data Table: 4A2FEC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim unk_4A2FFD As Connection15
  Dim var_C0 As Variant
  Dim var_F8 As Variant
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_108DD10: On Error Goto loc_108DF7B
  loc_108DD1C: Set var_AC = Me.CmdDelete
  loc_108DD22: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_108DD37: Me.Label1.Caption = "Deleting..."
  loc_108DD49: Me.Label1.Refresh
  loc_108DD69: unk_4A2FFD.BeginTrans var_B0
  loc_108DD84: unk_4A2FFD.Execute "Delete from TempPosDel", var_C0, -1
  loc_108DDB8: Call Proc_299_27_11A9694(global_60, CByte(Me.Check1.Value), var_C0)
  loc_108DDD0: var_98 = "Insert into TempPosDel(OldDocId,OldVno) Select Distinct FolioNoDocId,Cast(Bill_no As Int) Bill_no from FomBillDetails Where Bill_Date>= "
  loc_108DDE6: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(0), var_C8, var_98, var_1AC)
  loc_108DDF5: Proc_6_7_F26918(var_D8, CVar(var_C8), -1)
  loc_108DE15: Proc_6_7_F26918(var_118, MemVar_1F950FC, var_1B0 & var_D8 & " And Bill_Date<=")
  loc_108DE47: unk_4A2FFD.Execute CStr(Me.Txt & var_118 & " And Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by Cast(Bill_no As Int)"), &HFF, 
  loc_108DE6D: Call Proc_299_26_FCC54C()
  loc_108DE72: Call Proc_299_25_10AF3AC()
  loc_108DEA8: Set var_AC = Me.Txt
  loc_108DEAE: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(1), var_C8, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_108DEBD: Proc_6_7_F26918(var_D8, CVar(var_C8), var_1AC)
  loc_108DEC5: var_F8 = -1 & var_D8 
  loc_108DEE4: var_148 = var_1B0 & var_D8 & " And Bill_Date<=" & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar("BCNT") & "' And Logsite_Code='" 
  loc_108DF05: unk_4A2FFD.Execute CStr(var_148 & CVar(MemVar_1F95078) & "'"), var_1B0, 
  loc_108DF37: unk_4A2FFD.CommitTrans
  loc_108DF3E: var_86 = 0
  loc_108DF4C: Set global_76 = Nothing
  loc_108DF60: Me.Label1.Caption = "Deletion Completed."
  loc_108DF72: Me.Label1.Refresh
  loc_108DF7A: Exit Sub
  loc_108DF7B: ' Referenced from: 108DD10
  loc_108DF81: If (var_86 = &HFF) Then
  loc_108DF8A:   unk_4A2FFD.RollbackTrans
  loc_108DF8F: End If
  loc_108DF8F: Proc_6_60_E63754(var_86)
  loc_108DF94: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E3A04
  'Data Table: 4A2FEC
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E3350: On Error Goto loc_12E39BF
  loc_12E335D: Set var_88 = Me.Txt
  loc_12E3363: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E3371: Proc_6_74_E23240(var_8C)
  loc_12E337D: Call Proc_299_28_EB9D0C(var_8C)
  loc_12E3385: var_92 = Index
  loc_12E3390: If (var_92 = CInt(0)) Then
  loc_12E33A0:   Set var_88 = Me.Txt
  loc_12E33A6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E33C1:   Set var_90 = Me.Txt
  loc_12E33C7:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E33CF:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E33EF:   Set var_88 = Me.Txt
  loc_12E33F5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E340F:   Set var_90 = Me.Txt
  loc_12E3415:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E341D:   var_9C.Tag = var_8C.Text
  loc_12E3433: Else
  loc_12E343B:   If (var_92 = CInt(1)) Then
  loc_12E344B:     Set var_88 = Me.Txt
  loc_12E3451:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E346C:     Set var_90 = Me.Txt
  loc_12E3472:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E347A:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E349A:     Set var_88 = Me.Txt
  loc_12E34A0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E34A8:     var_98 = var_8C.Text
  loc_12E34BA:     Set var_90 = Me.Txt
  loc_12E34C0:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E34C8:     var_9C.Tag = var_98
  loc_12E34DE:   Else
  loc_12E34E6:     If (var_92 = CInt(2)) Then
  loc_12E34F7:       Set var_88 = Me.Txt
  loc_12E34FD:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E351C:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E3538:       Set var_90 = Me.Txt
  loc_12E353E:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E3559:       Set var_88 = Me.Txt
  loc_12E355F:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E3577:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E3586:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E35A7:       Me.Filter = 0
  loc_12E35B8:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E35D4:       If (Me.RecordCount > 0) Then
  loc_12E35E2:         Set var_8C = Me.FGPoint
  loc_12E35FA:         Proc_6_137_1192FDC(Me.DGRestType, global_68, Index)
  loc_12E3608:       End If
  loc_12E3656:       Set var_88 = Me.Txt
  loc_12E365C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E3664:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E367C:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E367F:         Exit Sub
  loc_12E3680:       End If
  loc_12E368D:       Set var_88 = Me.Txt
  loc_12E3693:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E369B:       var_98 = var_8C.Text
  loc_12E36AD:       var_B0 = "Name"
  loc_12E36C4:       var_9C = Me.Fields.Item(var_B0)
  loc_12E36E8:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E36F1:         Me.MoveFirst
  loc_12E3714:         Set var_88 = Me.Txt
  loc_12E371A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E3722:         0 = var_8C.Text
  loc_12E373B:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E3750:       End If
  loc_12E3763:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E3771:     Else
  loc_12E3779:       If (var_92 = CInt(3)) Then
  loc_12E378A:         Set var_88 = Me.Txt
  loc_12E3790:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E37AF:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E37CB:         Set var_90 = Me.Txt
  loc_12E37D1:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E37EC:         Set var_88 = Me.Txt
  loc_12E37F2:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E380A:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E3819:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E3842:         If (Me.RecordCount > 0) Then
  loc_12E3850:           Set var_8C = Me.FGPoint
  loc_12E3868:           Proc_6_137_1192FDC(Me.DGPayType, global_72)
  loc_12E3876:         End If
  loc_12E38C4:         Set var_88 = Me.Txt
  loc_12E38CA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E38D2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E38EA:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E38ED:           Exit Sub
  loc_12E38EE:         End If
  loc_12E38FB:         Set var_88 = Me.Txt
  loc_12E3901:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E3909:         var_98 = var_8C.Text
  loc_12E391B:         var_B0 = "Name"
  loc_12E3956:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E395F:           Me.MoveFirst
  loc_12E3982:           Set var_88 = Me.Txt
  loc_12E3988:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E3990:           0 = var_8C.Text
  loc_12E39A9:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E39BE:         End If
  loc_12E39BE:       End If
  loc_12E39BE:     End If
  loc_12E39BE:   End If
  loc_12E39BE: End If
  loc_12E39BE: Exit Sub
  loc_12E39BF: ' Referenced from: 12E3350
  loc_12E39C7: Set var_88 = Err()
  loc_12E39CD: Call 0.Method_arg_2C (var_98)
  loc_12E39EE: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E3A01: Exit Sub
  loc_12E3A02: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CC198
  'Data Table: 4A2FEC
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CBEAE: If (CLng(Shift) = &H1B) Then
  loc_10CBEB1:   Call Proc_299_28_EB9D0C()
  loc_10CBEB6:   Exit Sub
  loc_10CBEB7: End If
  loc_10CBEBA: var_88 = KeyCode
  loc_10CBEC5: If (var_88 = CInt(2)) Then
  loc_10CBEE5:   Set var_9C = Me.FGPoint
  loc_10CBEF0:   Set var_98 = Nothing
  loc_10CBF1E:   Proc_6_69_134A630(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CBF8D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CBFB3:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CBFC1:   End If
  loc_10CBFC4: Else
  loc_10CBFCC:   If (var_88 = CInt(3)) Then
  loc_10CBFEC:     Set var_9C = Me.FGPoint
  loc_10CBFF7:     Set var_98 = Nothing
  loc_10CC029:     Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CC098:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CC09F:       Set var_98 = Me.DGPayType
  loc_10CC0BE:       Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CC0CC:     End If
  loc_10CC0CC:   End If
  loc_10CC0CC: End If
  loc_10CC107: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CC131:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CC13A:     Call Txt_Validate(KeyCode)
  loc_10CC145:     If (var_86 = &HFF) Then
  loc_10CC148:       Exit Sub
  loc_10CC149:     End If
  loc_10CC14F:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_10CC157:   Else
  loc_10CC16C:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CC175:       Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_10CC17D:     Else
  loc_10CC187:       If (CLng(Shift) = &H26) Then
  loc_10CC190:         Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_10CC195:       End If
  loc_10CC195:     End If
  loc_10CC195:   End If
  loc_10CC195: End If
  loc_10CC195: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8E13C
  'Data Table: 4A2FEC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8DFDF: Proc_6_58_E06050(arg_10)
  loc_F8DFEA: Proc_6_133_E7FB08(var_94)
  loc_F8DFF3: arg_10 = CInt(var_94)
  loc_F8DFFC: var_96 = KeyAscii
  loc_F8E007: If (var_96 = CInt(2)) Then
  loc_F8E026:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8E053:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8E085:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8E093:   End If
  loc_F8E096: Else
  loc_F8E09E:   If (var_96 = CInt(3)) Then
  loc_F8E0BD:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8E0F5:       Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8E12B:       Proc_6_138_106E830(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8E139:     End If
  loc_F8E139:   End If
  loc_F8E139: End If
  loc_F8E139: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F6EC
  'Data Table: 4A2FEC
  loc_E4F6CA: Set var_88 = Me.Txt
  loc_E4F6D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F6DE: Proc_6_73_E23294(var_8C)
  loc_E4F6EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1167538
  'Data Table: 4A2FEC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_1167188: On Error Goto loc_11674F1
  loc_116718E: var_86 = Cancel
  loc_1167199: If (var_86 = CInt(0)) Then
  loc_11671A6:   Set var_8C = Me.Txt
  loc_11671AC:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11671CC:   Set var_98 = Me.Txt
  loc_11671D2:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_11671DA:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_11671F0: Else
  loc_11671F8:   If (var_86 = CInt(1)) Then
  loc_1167205:     Set var_8C = Me.Txt
  loc_116720B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116722B:     Set var_98 = Me.Txt
  loc_1167231:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1167239:     var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_116724F:   Else
  loc_1167257:     If (var_86 = CInt(2)) Then
  loc_1167267:       Set var_8C = Me.Txt
  loc_116726D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116728C:       If (var_90.Text <> vbNullString) Then
  loc_11672CA:         Set var_94 = Me.Txt
  loc_11672D0:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11672D8:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_116730B:         var_90 = Me.Fields.Item("Code")
  loc_1167329:         Set var_94 = Me.Txt
  loc_116732F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1167337:         var_98.Tag = CStr(var_90.Value)
  loc_1167350:       Else
  loc_116735D:         Set var_8C = Me.Txt
  loc_1167363:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116736B:         var_90.Text = vbNullString
  loc_1167384:         Set var_8C = Me.Txt
  loc_116738A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1167392:         var_90.Tag = vbNullString
  loc_116739E:       End If
  loc_11673A1:     Else
  loc_11673A9:       If (var_86 = CInt(3)) Then
  loc_11673B9:         Set var_8C = Me.Txt
  loc_11673BF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11673DE:         If (var_90.Text <> vbNullString) Then
  loc_116741C:           Set var_94 = Me.Txt
  loc_1167422:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_116742A:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_116745D:           var_90 = Me.Fields.Item("Code")
  loc_116746E:           var_A0 = CStr(var_90.Value)
  loc_116747B:           Set var_94 = Me.Txt
  loc_1167481:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1167489:           var_98.Tag = var_A0
  loc_11674A2:         Else
  loc_11674AF:           Set var_8C = Me.Txt
  loc_11674B5:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11674BD:           var_90.Text = vbNullString
  loc_11674D6:           Set var_8C = Me.Txt
  loc_11674DC:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11674E4:           var_90.Tag = vbNullString
  loc_11674F0:         End If
  loc_11674F0:       End If
  loc_11674F0:     End If
  loc_11674F0:   End If
  loc_11674F0: End If
  loc_11674F0: Exit Sub
  loc_11674F1: ' Referenced from: 1167188
  loc_11674F9: Set var_8C = Err()
  loc_11674FF: Call 0.Method_arg_2C (var_A0)
  loc_1167520: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_1167533: Exit Sub
  loc_1167534: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F3C6D4
  'Data Table: 4A2FEC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C5CB: Me.DGRestType.Visible = False
  loc_F3C5EA: If (Me.RecordCount > 0) Then
  loc_F3C629:   Set var_B4 = Me.Txt
  loc_F3C62F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3C637:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3C66A:   var_B0 = Me.Fields.Item("Code")
  loc_F3C689:   Set var_B4 = Me.Txt
  loc_F3C68F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3C697:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3C6AD: End If
  loc_F3C6B8: Set var_A8 = Me.Txt
  loc_F3C6BE: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F3C6C6: var_B0.SetFocus
  loc_F3C6D2: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E71FAC
  'Data Table: 4A2FEC
  loc_E71F6A: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E71F81: Set var_8C = Me.FGPoint
  loc_E71F9D: Proc_6_138_106E830(Me.DGRestType, global_68, CInt(2))
  loc_E71FAB: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A86C
  'Data Table: 4A2FEC
  loc_E1A861: Me.Global.Unload Me
  loc_E1A869: Exit Sub
End Sub

Private Sub Form_Load() 'F92394
  'Data Table: 4A2FEC
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim var_B4 As String
  Dim unk_4A2FFD As Connection15
  loc_F9222C: On Error Goto loc_F9238B
  loc_F92245: Proc_6_23_DFC5B8(Me, 0)
  loc_F92254: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F9226C: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F9227C: Set var_88 = Me.Label1
  loc_F92282: var_88.BackColor = CLng(MemVar_1F951B4)
  loc_F922A5: var_B4 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestType='Fom' ORDER BY Name"
  loc_F922AE: unk_4A2FFD.Execute var_B4, var_C4, -1
  loc_F922BF: Set global_68 = var_88
  loc_F922DD: CVarUnk
  loc_F922E2: VerifyVarObj
  loc_F922EE: LateIdStAd
  loc_F92310: var_B0 = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Credit Card','Company','Complementary') And (LOGSITE_CODE='" & MemVar_1F95078
  loc_F92320: unk_4A2FFD.Execute var_B0 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name", var_C4, -1
  loc_F9234F: CVarUnk
  loc_F92354: VerifyVarObj
  loc_F9235A: Set var_88 = Me.DGPayType
  loc_F92360: LateIdStAd
  loc_F92377: Set var_88 = Me.CmdDelete
  loc_F9237D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_F92385: Call Proc_299_22_11BDDB8(var_88, Me.DGRestType, var_88, var_88)
  loc_F9238A: Exit Sub
  loc_F9238B: ' Referenced from: F9222C
  loc_F9238B: Proc_6_60_E63754(global_68, var_88)
  loc_F92390: Exit Sub
  loc_F92391: Result 0 End Sub 'Currency
End Sub

Private Sub Form_Resize() 'E714B4
  'Data Table: 4A2FEC
  loc_E7145E: Call 0.Method_arg_50 (var_88)
  loc_E71470: Me.LblFormCaption.Caption = var_88
  loc_E71489: Me.LblFormCaption.Left = CDbl(0)
  loc_E71497: Call 0.Method_arg_100 (var_90)
  loc_E714A9: Me.LblFormCaption.Width = var_90
  loc_E714B1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F848
  'Data Table: 4A2FEC
  loc_E5F807: Set global_64 = Nothing
  loc_E5F819: Set global_76 = Nothing
  loc_E5F82B: Set global_68 = Nothing
  loc_E5F83D: Set global_72 = Nothing
  loc_E5F844: Exit Sub
  loc_E5F845: StAryRecMove
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FBBA70
  'Data Table: 4A2FEC
  Dim var_D4 As Variant
  Dim var_94 As Variant
  Dim var_B4 As String
  Dim var_E4 As Variant
  Dim var_E8 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_13C As MSHFlexGrid
  Dim var_150 As String
  loc_FBB8D8: On Error Goto loc_FBBA68
  loc_FBB8EC: var_94 = MemVar_1F950C8
  loc_FBB8FC: var_B4 = "HTW_SYSTEM"
  loc_FBB906: var_E4 = (CLng(KeyCode) = &H70) And (Ucase(var_94) = var_B4)
  loc_FBB91D: var_108 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FBB92E: Set var_13C = Me.GridSel
  loc_FBB93F: var_150 = CStr(var_13C.TextMatrix))
  loc_FBB968: If CBool(CVar(CLng(2)) And (var_150 <> vbNullString)) Then
  loc_FBB975:   Set var_174 = New RSSaleBill
  loc_FBB989:   Set var_E8 = Me.FrCustSaleDetail
  loc_FBB98F:   Call 0.Method_Form_KeyDown0 (CInt(2), var_13C, var_150)
  loc_FBB997:   var_108 = RSSaleBill.FrCustSaleDetail.Tag
  loc_FBB9A6:   var_174.LocalRestCode = CVar(var_150)
  loc_FBB9C2:   Set var_E8 = var_13C(CInt(2))
  loc_FBB9C8:   Call 0.Method_Form_KeyDown0 (var_150)
  loc_FBB9D0:   var_E4 = var_174.TextBox.Text
  loc_FBB9DB:   Form.Caption = var_150
  loc_FBB9F5:   Form.Show var_94, var_B4
  loc_FBBA0D:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FBBA15:   var_D4 = CVar(CLng(2)) 'Long
  loc_FBBA2F:   var_E4 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_FBBA36:   Call var_174.SEARCHBACK
  loc_FBBA4C: End If
  loc_FBBA60: Proc_6_88_FE8F6C(Me, KeyCode, Shift, 0)
  loc_FBBA68: ' Referenced from: FBB8D8
  loc_FBBA68: Proc_6_60_E63754(var_E4, var_D4)
  loc_FBBA6D: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '1166D28
  'Data Table: 4A2FEC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_1166983: Set var_88 = Me.Txt
  loc_1166989: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_11669B2: If (Proc_6_27_EA61EC(var_8C, "From Date") = 0) Then
  loc_11669B5:   Exit Sub
  loc_11669B6: End If
  loc_11669C4: Set var_88 = Me.Txt
  loc_11669CA: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_11669EE: Set var_90 = Me.Txt
  loc_11669F4: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_98, var_9C)
  loc_11669FC: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_1166A1D: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_1166A39:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1166A54:   Set var_88 = Me.Txt
  loc_1166A5A:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_1166A62:   var_8C.SetFocus
  loc_1166A6E:   Exit Sub
  loc_1166A6F: End If
  loc_1166A7A: Set var_88 = Me.Txt
  loc_1166A80: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_1166AA9: If (Proc_6_27_EA61EC(var_8C, "To Date") = 0) Then
  loc_1166AAC:   Exit Sub
  loc_1166AAD: End If
  loc_1166ABB: Set var_88 = Me.Txt
  loc_1166AC1: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_1166AE5: Set var_90 = Me.Txt
  loc_1166AEB: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98, var_9C)
  loc_1166AF3: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_1166B14: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_1166B30:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1166B4B:   Set var_88 = Me.Txt
  loc_1166B51:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_1166B59:   var_8C.SetFocus
  loc_1166B65:   Exit Sub
  loc_1166B66: End If
  loc_1166B74: Set var_90 = Me.Txt
  loc_1166B7A: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98)
  loc_1166B95: Set var_88 = Me.Txt
  loc_1166B9B: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1166BC5: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_1166BE1:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_1166BFC:   Set var_88 = Me.Txt
  loc_1166C02:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1166C0A:   var_8C.SetFocus
  loc_1166C16:   Exit Sub
  loc_1166C17: End If
  loc_1166C22: Set var_88 = Me.Txt
  loc_1166C28: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_1166C51: If (Proc_6_27_EA61EC(var_8C, "Department") = 0) Then
  loc_1166C54:   Exit Sub
  loc_1166C55: End If
  loc_1166C5E: Set var_88 = Me.CmdFill
  loc_1166C64: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1166C79: Me.Label1.Caption = "Processing..."
  loc_1166C8B: Me.Label1.Refresh
  loc_1166C93: Call Proc_299_22_11BDDB8(var_8C)
  loc_1166C98: Call Proc_299_23_126DEB4()
  loc_1166CB0: Me.GridSel.Row = 1
  loc_1166CCB: Me.GridSel.Col = 0
  loc_1166CD7: Set var_88 = Me.GridSel
  loc_1166CF5: Me.Label1.Caption = vbNullString
  loc_1166D07: Me.Label1.Refresh
  loc_1166D17: Set var_88 = Me.CmdFill
  loc_1166D1D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_1166D25: Exit Sub
End Sub

Private Sub Check1_Click() 'F68004
  'Data Table: 4A2FEC
  Dim var_9C As Variant
  loc_F67EE7: If (CLng(Me.Check1.Value) = 0) Then
  loc_F67EF8:   Me.GridSel.Enabled = True
  loc_F67F1F:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F67F35:     Me.GridSel.Row = 1
  loc_F67F50:     Me.GridSel.Col = 0
  loc_F67F58:   End If
  loc_F67F5B: Else
  loc_F67F6A:   Me.GridSel.Enabled = False
  loc_F67F91:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F67FA7:     Me.GridSel.Row = 0
  loc_F67FC2:     Me.GridSel.Col = 0
  loc_F67FE3:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F67FF2:     Me.GridSel.RowSel = 0
  loc_F68001:   End If
  loc_F68001: End If
  loc_F68001: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E23728
  'Data Table: 4A2FEC
  loc_E2370E: If (KeyCode = &HD) Then
  loc_E2371F:   Proc_303_0_FBACC8("	")
  loc_E23727: End If
  loc_E23727: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F45054
  'Data Table: 4A2FEC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44F4B: Me.DGPayType.Visible = False
  loc_F44F6A: If (Me.RecordCount > 0) Then
  loc_F44FA9:   Set var_B4 = Me.Txt
  loc_F44FAF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F44FB7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F44FEA:   var_B0 = Me.Fields.Item("Code")
  loc_F45009:   Set var_B4 = Me.Txt
  loc_F4500F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F45017:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4502D: End If
  loc_F45038: Set var_A8 = Me.Txt
  loc_F4503E: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F45046: var_B0.SetFocus
  loc_F45052: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E6FC68
  'Data Table: 4A2FEC
  loc_E6FC26: Proc_6_153_E91D24(Me.DGPayType, arg_14)
  loc_E6FC3D: Set var_8C = Me.FGPoint
  loc_E6FC59: Proc_6_138_106E830(Me.DGPayType, global_72, CInt(3))
  loc_E6FC67: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FD83EC
  'Data Table: 4A2FEC
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD823A: If (KeyCode = &HD) Then
  loc_FD824B:   Proc_303_0_FBACC8("	")
  loc_FD8253: End If
  loc_FD8272: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD8275:   Exit Sub
  loc_FD8276: End If
  loc_FD82A0: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD82B3:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD82CD:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD82E8:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD82ED:   var_D4 = 0
  loc_FD831F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD8324:   var_19C = 0
  loc_FD835F:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD8367:   Set var_1D0 = Me.GridSel
  loc_FD836D:   LateIdCallSt
  loc_FD83A7:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FD83B9:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FD83E1:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD83E8: End If
  loc_FD83E8: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D080
  'Data Table: 4A2FEC
  loc_E5D05B: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D05E:   Exit Sub
  loc_E5D05F: End If
  loc_E5D076: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5D07F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1027468
  'Data Table: 4A2FEC
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1027269: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_102726C:   Exit Sub
  loc_102726D: End If
  loc_10272C9: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_10272CC:   Exit Sub
  loc_10272CD: End If
  loc_10272FC: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1027315:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1027330:   Me.GridSel.Col = 0
  loc_1027348:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1027362:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_102736E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1027373:   var_EC = 0
  loc_1027396:   var_160 = CVar(CLng(var_88)) 'Long
  loc_102739B:   var_180 = 0
  loc_10273D6:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10273DE:   Set var_A0 = Me.GridSel
  loc_10273E4:   LateIdCallSt
  loc_1027416:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1027428:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1027450:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_102745A: Next var_BA 'Integer
  loc_1027464: global_52 = 0
  loc_1027467: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64BF8
  'Data Table: 4A2FEC
  loc_E64BC8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E64BCB:   Call DGRestType_UnknownEvent_9()
  loc_E64BD0: End If
  loc_E64BEC: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E64BEF:   Call DGPayType_UnknownEvent_9()
  loc_E64BF4: End If
  loc_E64BF4: Exit Sub
End Sub

Public Sub Proc_299_22_11BDDB8
  'Data Table: 4A2FEC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11BD972: Me.GridSel.Rows = 1
  loc_11BD986: Me.GridSel.Cols = 6
  loc_11BD98B: var_98 = 0
  loc_11BD997: var_BC = CVar(CLng(0)) 'Long
  loc_11BD99C: var_DC = "O"
  loc_11BD9A5: LateIdCallSt
  loc_11BD9B0: var_98 = CVar(CLng(0)) 'Long
  loc_11BD9B5: var_BC = &H258
  loc_11BD9C1: LateIdCallSt
  loc_11BD9C9: var_98 = 0
  loc_11BD9D5: var_BC = CVar(CLng(1)) 'Long
  loc_11BD9DA: var_DC = "Bill No"
  loc_11BD9E3: LateIdCallSt
  loc_11BD9EE: var_98 = CVar(CLng(1)) 'Long
  loc_11BD9F9: var_BC = CVar(CInt(1)) 'Integer
  loc_11BDA00: LateIdCallSt
  loc_11BDA0B: var_98 = CVar(CLng(1)) 'Long
  loc_11BDA16: var_BC = CVar(CInt(1)) 'Integer
  loc_11BDA1D: LateIdCallSt
  loc_11BDA28: var_98 = CVar(CLng(1)) 'Long
  loc_11BDA2D: var_BC = &H514
  loc_11BDA39: LateIdCallSt
  loc_11BDA41: var_98 = 0
  loc_11BDA4D: var_BC = CVar(CLng(2)) 'Long
  loc_11BDA52: var_DC = "DocId"
  loc_11BDA5B: LateIdCallSt
  loc_11BDA66: var_98 = CVar(CLng(2)) 'Long
  loc_11BDA71: var_BC = CVar(CInt(7)) 'Integer
  loc_11BDA78: LateIdCallSt
  loc_11BDA83: var_98 = CVar(CLng(2)) 'Long
  loc_11BDA8E: var_BC = CVar(CInt(7)) 'Integer
  loc_11BDA95: LateIdCallSt
  loc_11BDAA0: var_98 = CVar(CLng(2)) 'Long
  loc_11BDAA5: var_BC = 0
  loc_11BDAB1: LateIdCallSt
  loc_11BDAB9: var_98 = 0
  loc_11BDAC5: var_BC = CVar(CLng(3)) 'Long
  loc_11BDACA: var_DC = "Bill Date"
  loc_11BDAD3: LateIdCallSt
  loc_11BDADE: var_98 = CVar(CLng(3)) 'Long
  loc_11BDAE9: var_BC = CVar(CInt(1)) 'Integer
  loc_11BDAF0: LateIdCallSt
  loc_11BDAFB: var_98 = CVar(CLng(3)) 'Long
  loc_11BDB06: var_BC = CVar(CInt(1)) 'Integer
  loc_11BDB0D: LateIdCallSt
  loc_11BDB18: var_98 = CVar(CLng(3)) 'Long
  loc_11BDB1D: var_BC = &H578
  loc_11BDB29: LateIdCallSt
  loc_11BDB31: var_98 = 0
  loc_11BDB3D: var_BC = CVar(CLng(4)) 'Long
  loc_11BDB42: var_DC = "Bill Amount"
  loc_11BDB4B: LateIdCallSt
  loc_11BDB56: var_98 = CVar(CLng(4)) 'Long
  loc_11BDB61: var_BC = CVar(CInt(7)) 'Integer
  loc_11BDB68: LateIdCallSt
  loc_11BDB73: var_98 = CVar(CLng(4)) 'Long
  loc_11BDB7E: var_BC = CVar(CInt(7)) 'Integer
  loc_11BDB85: LateIdCallSt
  loc_11BDB90: var_98 = CVar(CLng(4)) 'Long
  loc_11BDB95: var_BC = &H640
  loc_11BDBA1: LateIdCallSt
  loc_11BDBA9: var_98 = 0
  loc_11BDBB5: var_BC = CVar(CLng(5)) 'Long
  loc_11BDBBA: var_DC = "Status"
  loc_11BDBC3: LateIdCallSt
  loc_11BDBCE: var_98 = CVar(CLng(5)) 'Long
  loc_11BDBD9: var_BC = CVar(CInt(1)) 'Integer
  loc_11BDBE0: LateIdCallSt
  loc_11BDBEB: var_98 = CVar(CLng(5)) 'Long
  loc_11BDBF6: var_BC = CVar(CInt(1)) 'Integer
  loc_11BDBFD: LateIdCallSt
  loc_11BDC08: var_98 = CVar(CLng(5)) 'Long
  loc_11BDC0D: var_BC = &H4B0
  loc_11BDC19: LateIdCallSt
  loc_11BDC21: var_98 = vbNullString
  loc_11BDC2B: Set var_AC = Me.GridSel
  loc_11BDC4F: Me.GridSel.FixedRows = 1
  loc_11BDC59: Set var_88 = Nothing 
  loc_11BDC6D: ReDim Preserve global_60(0 To 0)
  loc_11BDC84: global_60(0) = 0
  loc_11BDC98: Me.GridSel.Height = CVar(CDbl(6000))
  loc_11BDCB3: Me.GridSel.Width = CVar(CDbl(6500))
  loc_11BDCBB: var_98 = 0
  loc_11BDCEC: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_11BDCFB: var_98 = 0
  loc_11BDD2C: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_11BDD5D: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_11BDD8E: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_11BDDAD: Me.Check1.Value = CInt(0)
  loc_11BDDB5: Exit Sub
End Sub

Public Sub Proc_299_23_126DEB4
  'Data Table: 4A2FEC
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim unk_4A2FFD As Connection15
  Dim var_1A4 As Variant
  Dim var_1A8 As Fields15
  Dim var_1BC As Field20
  Dim var_A4 As Variant
  Dim var_10C As Variant
  Dim var_1A0 As Variant
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As Variant
  loc_126D970: Proc_6_7_F26918(var_A4, MemVar_1F950F4, "Select isnull(max(cast(bill_no as integer)),0) From FomBillDetails Where Bill_Date>=", var_1A0, -1)
  loc_126D978: var_C4 = var_1A4 & var_A4 
  loc_126D990: Set var_E8 = Me.Txt
  loc_126D996: Call 0.Method_Proc_299_23_126DEB40 (CInt(0), var_EC, var_C4 & " And Bill_date<", var_1A8)
  loc_126D9A5: Proc_6_7_F26918(var_10C, CVar(var_EC), 0)
  loc_126D9AD: var_11C = var_1BC & var_10C 
  loc_126D9D7: unk_4A2FFD.Execute CStr(var_11C & "  And Logsite_Code='" & CVar(MemVar_1F95078) & "'"), var_1CC, 
  loc_126D9DF:  = var_1A4.Fields
  loc_126D9E7:  = var_1A8.Item()
  loc_126D9EF:  = var_1BC.Value
  loc_126D9FA: Proc_6_39_E7D3A0(var_1DC)
  loc_126DA40: var_94 = "Select Distinct S.Bill_no,S.Bill_date,S.BillAmt as BillAmount,S.Status,S.FolioNoDocId,Cast(S.Bill_no As Integer) Bill_no From (FomBillDetails S Left Join PayCharge P on P.DocId=S.FolioNoDocId) Where S.Bill_Date Between "
  loc_126DA50: Set var_E8 = Me.Txt
  loc_126DA56: Call 0.Method_Proc_299_23_126DEB40 (CInt(0), var_EC, var_94, var_1CC)
  loc_126DA65: Proc_6_7_F26918(var_C4, CVar(var_EC), -1)
  loc_126DA85: Set var_1A4 = Me.Txt
  loc_126DA8B: Call 0.Method_Proc_299_23_126DEB40 (CInt(1), var_1A8, var_1BC & var_C4 & " And ")
  loc_126DA9A: Proc_6_7_F26918(var_11C, CVar(var_1A8))
  loc_126DACC: unk_4A2FFD.Execute CStr(CLng(var_1DC) & var_11C & "  And S.Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by Cast(S.Bill_no As Integer)"), var_1CC, 
  loc_126DADD: Set global_76 = var_1BC
  loc_126DB1F: If (Me.RecordCount = 0) Then
  loc_126DB35:   Me.GridSel.Rows = 2
  loc_126DB3D:   Exit Sub
  loc_126DB3E: End If
  loc_126DB51: Me.GridSel.Row = 1
  loc_126DB61: Set var_E8 = Me.CmdDelete
  loc_126DB67: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_126DB6F: ' Referenced from: 126DE93
  loc_126DB81: If Not(Me.EOF) Then
  loc_126DB88:   Set var_1EC = Me.GridSel
  loc_126DB8B:   var_94 = vbNullString
  loc_126DBAF:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126DBB7:   var_D4 = CVar(CLng(0)) 'Long
  loc_126DBC5:   LateIdCallSt
  loc_126DBE6:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126DBEE:   var_12C = CVar(CLng(1)) 'Long
  loc_126DC22:   var_E4 = CVar(CStr(Me.Fields.Item("Bill_no").Value)) 'String
  loc_126DC29:   LateIdCallSt
  loc_126DC8E:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNoDocid")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_1EC, var_E4, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_126DC95:   LateIdCallSt
  loc_126DCEE:   var_D4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126DCF6:   var_14C = CVar(CLng(3)) 'Long
  loc_126DD13:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Bill_Date")), var_1EC, "dd/mmm/yyyy", var_1EC, vbNullString)) 'String
  loc_126DD29:   LateIdCallSt
  loc_126DD73:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Fields.Item("BillAmount")), var_1EC, CVar(CStr(Format(var_C4, "dd/mmm/yyyy"))), 1, 1)
  loc_126DD8B:   var_D4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126DD93:   var_14C = CVar(CLng(4)) 'Long
  loc_126DDC3:   LateIdCallSt
  loc_126DE2C:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Status")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_1EC, CVar(CStr(Format(Me.GridSel.Row, "0.00"))), 1, 1)) 'String
  loc_126DE33:   LateIdCallSt
  loc_126DE4D:   Set var_1EC = Nothing 
  loc_126DE6A:   var_94 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_126DE79:   Me.GridSel.Row = "Status"
  loc_126DE8E:   Me.MoveNext
  loc_126DE93:   GoTo loc_126DB6F
  loc_126DE96: End If
  loc_126DEA9: Me.GridSel.FixedRows = 1
  loc_126DEB1: Exit Sub
End Sub

Public Sub Proc_299_24_F607F8(arg_C, arg_10) 'F607F8
  'Data Table: 4A2FEC
  Dim unk_4A2FFD As Connection15
  Dim var_CC As Integer
  Dim var_B8 As Recordset15
  Dim var_BC As Fields15
  Dim var_D0 As Field20
  loc_F606EC: If (arg_C = vbNullString) Then
  loc_F606EF:   Exit Sub
  loc_F606F0: End If
  loc_F60722: unk_4A2FFD.Execute "Delete From FomBillDetails Where FolioNoDocID='" & arg_C & "' And RTrim(LTrim(Bill_no))='" & arg_10 & "'", var_B4, -1
  loc_F6073E: var_CC = 0
  loc_F60779: unk_4A2FFD.Execute "Select count(*) From Paycharge Where FolioNoDocID='" & arg_C & "' And RTrim(LTrim(Bill_no))='" & arg_10 & "'", var_B4, -1
  loc_F60781: var_B8 = var_B8.Fields
  loc_F60789: var_CC = var_BC.Item(var_BC)
  loc_F60791: var_D0 = var_D0.Value
  loc_F607BC: If (var_E0 >= 1) Then
  loc_F607E3:   unk_4A2FFD.Execute "Delete From Paycharge Where FolioNoDocID='" & arg_C & "'", var_B4, -1
  loc_F607F5: End If
  loc_F607F5: Exit Sub
End Sub

Public Sub Proc_299_25_10AF3AC
  'Data Table: 4A2FEC
  Dim unk_4A2FFD As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_A8 As Variant
  Dim var_D0 As String
  Dim var_138 As Variant
  Dim var_190 As Variant
  loc_10AF12E: unk_4A2FFD.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_10AF139: Set var_88 = var_AC
  loc_10AF156: If (var_88.RecordCount = 0) Then
  loc_10AF159:   Exit Sub
  loc_10AF15A: End If
  loc_10AF16E: If (var_88.RecordCount > 0) Then
  loc_10AF174:   var_88.MoveFirst
  loc_10AF179:   ' Referenced from: 10AF3A5
  loc_10AF188:   If Not(var_88.EOF) Then
  loc_10AF1AA:     var_AC = var_88.Fields
  loc_10AF1C1:     Proc_6_39_E7D3A0(var_C8, CVar(var_AC.Item("NEWVNO")), "Update FomBillDetails Set Bill_no='", var_1D4)
  loc_10AF1CF:     var_D0 = -1 & CStr(var_C8)
  loc_10AF236:     Proc_6_39_E7D3A0(var_170, CVar(var_88.Fields.Item("OldVno")), CVar(var_D0 & "' Where FolionoDocId='") & var_88.Fields.Item("OldDocid").Value & "' And RTrim(LTrim(Bill_no))='")
  loc_10AF25A:     unk_4A2FFD.Execute CStr(var_1D8 & CVar(CStr(var_170)) & "'"), var_AC, 
  loc_10AF2CA:     Proc_6_39_E7D3A0(var_C8, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set Bill_no='")
  loc_10AF315:     var_138 = CVar(var_1D4 & CStr(var_C8) & "' Where FolioNoDocId='") & var_88.Fields.Item("OldDocid").Value & "' And RTrim(LTrim(Bill_no))='" 
  loc_10AF33F:     Proc_6_39_E7D3A0(var_170, CVar(var_88.Fields.Item("OldVno")), var_138)
  loc_10AF34C:     var_190 = -1 & CVar(CStr(var_170)) 
  loc_10AF363:     unk_4A2FFD.Execute CStr(var_1D8 & CVar(CStr(var_170)) & "'"), var_1D8, 
  loc_10AF3A0:     var_88.MoveNext
  loc_10AF3A5:     GoTo loc_10AF179
  loc_10AF3A8:   End If
  loc_10AF3A8: End If
  loc_10AF3A8: Exit Sub
End Sub

Public Sub Proc_299_26_FCC54C
  'Data Table: 4A2FEC
  Dim unk_4A2FFD As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_AC As Variant
  Dim var_B0 As Fields15
  Dim var_14C As Variant
  loc_FCC3D6: unk_4A2FFD.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_FCC3E1: Set var_88 = var_B0
  loc_FCC3FE: If (var_88.RecordCount = 0) Then
  loc_FCC40A:   global_84 = global_80
  loc_FCC40D:   Exit Sub
  loc_FCC40E: End If
  loc_FCC413: var_8C = 1
  loc_FCC42A: If (var_88.RecordCount > 0) Then
  loc_FCC430:   var_88.MoveFirst
  loc_FCC435:   ' Referenced from: FCC52F
  loc_FCC444:   If Not(var_88.EOF) Then
  loc_FCC465:     var_AC = CVar(CStr((global_80 + var_8C))) 'String
  loc_FCC4B3:     var_14C = "Update TempPosDel Set NewVno=" & Trim(var_AC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value & "' And OldVno=" 
  loc_FCC4EF:     unk_4A2FFD.Execute CStr(var_14C & var_88.Fields.Item("OldVno").Value), var_1A8, -1
  loc_FCC524:     var_8C = (var_8C + 1)
  loc_FCC52A:     var_88.MoveNext
  loc_FCC52F:     GoTo loc_FCC435
  loc_FCC532:   End If
  loc_FCC545:   global_84 = ((global_80 + var_8C) - 1)
  loc_FCC548: End If
  loc_FCC548: Exit Sub
End Sub

Public Sub Proc_299_27_11A9694(arg_C, arg_10) '11A9694
  'Data Table: 4A2FEC
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  loc_11A9276: On Error Goto loc_11A9689
  loc_11A927B: var_96 = 0
  loc_11A9287: If (CInt(arg_10) = 1) Then
  loc_11A92AF:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A92B8:     var_9A = var_98
  loc_11A92BF:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A92C4:     var_E4 = 2
  loc_11A92F3:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A92FA:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A92FF:       var_E4 = 2
  loc_11A9322:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A9327:       var_128 = 1
  loc_11A9351:       Call Proc_299_24_F607F8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11A936D:       var_96 = &HFF
  loc_11A9395:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A93AE:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A93C9:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A93E4:         Me.GridSel.CellBackColor = &H80FF
  loc_11A93EF:       Next var_154 'Integer
  loc_11A93F4:     End If
  loc_11A93F7:   Next var_B4 'Integer
  loc_11A93FC:   Exit For
  loc_11A93FF: End If
  loc_11A9407: CRefVarAry
  loc_11A940F: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A9430:   If (arg_C(var_98) = 0) Then
  loc_11A9433:     GoTo loc_11A95C1
  loc_11A9436:   End If
  loc_11A9447:   var_9A = CInt(arg_C(var_98))
  loc_11A9451:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9456:   var_E4 = 0
  loc_11A9485:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A948C:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9491:     var_E4 = 2
  loc_11A94C0:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A94C7:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A94CC:       var_E4 = 2
  loc_11A94EF:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A94F4:       var_128 = 1
  loc_11A951E:       Call Proc_299_24_F607F8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11A953A:       var_96 = &HFF
  loc_11A9562:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A957B:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A9596:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A95B1:         Me.GridSel.CellBackColor = &H80FF
  loc_11A95BC:       Next var_15C 'Integer
  loc_11A95C1:       ' Referenced from: 11A9433
  loc_11A95C1:     End If
  loc_11A95C1:   End If
  loc_11A95C4: Next var_158 'Integer
  loc_11A95C9: ' Referenced from: 11A93FC
  loc_11A95D9: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A95DC:   var_C4 = 0
  loc_11A95E5:   var_E4 = 1
  loc_11A95F8:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A9620:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A964B:   Me.GridSel.Row = 1
  loc_11A9653:   var_C4 = 0
  loc_11A9666:   Me.GridSel.Col = var_C4
  loc_11A9672:   Set var_A0 = Me.GridSel
  loc_11A9683: End If
  loc_11A9683: Proc_299_27_11A9694 = GridSel.DispID_8001
  loc_11A9689: ' Referenced from: 11A9276
  loc_11A9689: Proc_6_60_E63754(var_B0, var_E4)
  loc_11A968E: Proc_299_27_11A9694 = var_C4
End Sub

Public Sub Proc_299_28_EB9D0C
  'Data Table: 4A2FEC
  loc_EB9C84: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB9C96:   Me.DGRestType.Visible = False
  loc_EB9C9E: End If
  loc_EB9CBA: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EB9CCC:   Me.DGPayType.Visible = False
  loc_EB9CD4: End If
  loc_EB9CF0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB9D02:   Me.FGPoint.Visible = False
  loc_EB9D0A: End If
  loc_EB9D0A: Exit Sub
End Sub
