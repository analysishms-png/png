VERSION 5.00
Begin VB.Form RsTouchScreenKeyBoard
  Caption = "Touch Screen KeyBoard"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 0
  ClientTop = -105
  ClientWidth = 11610
  ClientHeight = 5040
  LockControls = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin Frame Frame1
    BackColor = &H80000003&
    Left = 0
    Top = 0
    Width = 11610
    Height = 5055
    TabIndex = 0
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
    Begin TextBox TxtKeyBoard
      Left = 30
      Top = 30
      Width = 9870
      Height = 1665
      TabIndex = 49
      MultiLine = -1  'True
      ScrollBars = 2
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin BtnEnh SSPKey
      Index = 0
      Left = 9120
      Top = 4215
      Width = 795
      Height = 795
      TabIndex = 1
    End
    Begin BtnEnh SSPKey
      Index = 1
      Left = 9120
      Top = 3390
      Width = 795
      Height = 795
      TabIndex = 2
    End
    Begin BtnEnh SSPKey
      Index = 3
      Left = 10770
      Top = 3390
      Width = 795
      Height = 795
      TabIndex = 3
    End
    Begin BtnEnh SSPKey
      Index = 4
      Left = 9120
      Top = 2565
      Width = 795
      Height = 795
      TabIndex = 4
    End
    Begin BtnEnh SSPKey
      Index = 6
      Left = 10770
      Top = 2565
      Width = 795
      Height = 795
      TabIndex = 5
    End
    Begin BtnEnh SSPKey
      Index = 7
      Left = 9120
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 6
    End
    Begin BtnEnh SSPKey
      Index = 9
      Left = 10770
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 7
    End
    Begin BtnEnh SSPKey
      Index = 11
      Left = 10770
      Top = 4215
      Width = 795
      Height = 795
      TabIndex = 8
    End
    Begin BtnEnh SSPKey
      Index = 12
      Left = 45
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 9
    End
    Begin BtnEnh SSPKey
      Index = 13
      Left = 870
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 10
    End
    Begin BtnEnh SSPKey
      Index = 14
      Left = 1695
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 11
    End
    Begin BtnEnh SSPKey
      Index = 15
      Left = 2520
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 12
    End
    Begin BtnEnh SSPKey
      Index = 16
      Left = 3345
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 13
    End
    Begin BtnEnh SSPKey
      Index = 17
      Left = 4170
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 14
    End
    Begin BtnEnh SSPKey
      Index = 18
      Left = 4995
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 15
    End
    Begin BtnEnh SSPKey
      Index = 19
      Left = 5820
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 16
    End
    Begin BtnEnh SSPKey
      Index = 20
      Left = 6645
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 17
    End
    Begin BtnEnh SSPKey
      Index = 21
      Left = 7470
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 18
    End
  End
End
End

Attribute VB_Name = "RsTouchScreenKeyBoard"

Private global_52 As Integer

Private Sub Form_Load() 'E1C704
  'Data Table: 41F534
  loc_E1C6EF: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E1C6FC: Call Proc_252_7_1029494(&HFF)
  loc_E1C701: Exit Sub
End Sub

Private Sub Form_Activate() 'E29338
  'Data Table: 41F534
  loc_E2932C: global_64 = Me.TxtKeyBoard.Text
  loc_E29336: Exit Sub
End Sub

Public Sub SSPKey_UnknownEvent_9(Index As Integer) '140E77C
  'Data Table: 41F534
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim var_BC As Variant
  Dim var_A8 As TextBox
  Dim var_114 As Variant
  loc_140DD1A: Set var_8C = Me.SSPKey
  loc_140DD20: Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140DD28: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140DD42: Set var_A8 = Me.SSPKey
  loc_140DD48: Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_AC)
  loc_140DD50: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA((CStr() = "FINISH"))
  loc_140DD7A: If ( Or (CStr() = "ENTER")) Then
  loc_140DDA4:   var_90 = ParentForm
  loc_140DDAC:   var_90.TxtKeyBoard = Trim(CVar(Me.TxtKeyBoard.Text))
  loc_140DDCB:   Me.Global.Unload Me
  loc_140DDD3:   Exit Sub
  loc_140DDD7: Else
  loc_140DDE1:   Set var_8C = Me.SSPKey
  loc_140DDE7:   Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140DDEF:   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140DE0C:   If (CStr() = "CANCEL") Then
  loc_140DE24:     ParentForm.TxtKeyBoard = CVar(global_64)
  loc_140DE38:     Me.Global.Unload Me
  loc_140DE40:     Exit Sub
  loc_140DE44:   Else
  loc_140DE4E:     Set var_8C = Me.SSPKey
  loc_140DE54:     Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140DE5C:     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140DE79:     If (CStr() = "CLR") Then
  loc_140DE89:       Me.TxtKeyBoard.Text = vbNullString
  loc_140DE94:     Else
  loc_140DE9E:       Set var_8C = Me.SSPKey
  loc_140DEA4:       Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140DEAC:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140DEC9:       If (CStr() = "BKS") Then
  loc_140DEEA:         If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_140DF0C:           Set var_90 = Me.TxtKeyBoard
  loc_140DF12:           var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_140DF2D:           Me.TxtKeyBoard.SelLength = 1
  loc_140DF42:           Me.TxtKeyBoard.SelText = vbNullString
  loc_140DF4A:         End If
  loc_140DF4D:       Else
  loc_140DF57:         Set var_8C = Me.SSPKey
  loc_140DF5D:         Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140DF65:         Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140DF82:         If (CStr() = "DEL") Then
  loc_140DFA1:           Set var_90 = Me.TxtKeyBoard
  loc_140DFBB:           If (Me.TxtKeyBoard.SelStart < Len(var_90.Text)) Then
  loc_140DFCD:             Me.TxtKeyBoard.SelLength = 1
  loc_140DFE2:             Me.TxtKeyBoard.SelText = vbNullString
  loc_140DFEA:           End If
  loc_140DFED:         Else
  loc_140DFF7:           Set var_8C = Me.SSPKey
  loc_140DFFD:           Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E005:           Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E022:           If (CStr() = "CAPS") Then
  loc_140E02F:             global_52 = Not(global_52)
  loc_140E03B:             If (global_52 = &HFF) Then
  loc_140E04A:               Set var_8C = Me.SSPKey
  loc_140E050:               Call 0.Method_SSPKey_UnknownEvent_9C (var_E6, var_86)
  loc_140E05E:               For var_EA = global_52 To (var_E6 - 1):           0 = var_EA 'Integer
  loc_140E06E:                 Set var_8C = Me.SSPKey
  loc_140E074:                 Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_90)
  loc_140E07C:                 Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(global_52)
  loc_140E09B:                 If (Len(CStr()) = 1) Then
  loc_140E0A8:                   Set var_8C = Me.SSPKey
  loc_140E0AE:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_140E0B6:                   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E0D7:                   Set var_A8 = Me.SSPKey
  loc_140E0DD:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_AC)
  loc_140E0E5:                   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Ucase(CVar(CStr())))
  loc_140E0FE:                 End If
  loc_140E101:               Next var_EA 'Integer
  loc_140E109:             Else
  loc_140E115:               Set var_8C = Me.SSPKey
  loc_140E11B:               Call 0.Method_SSPKey_UnknownEvent_9C (var_E6, var_86)
  loc_140E129:               For var_100 =  To (var_E6 - 1):             0 = var_100 'Integer
  loc_140E139:                 Set var_8C = Me.SSPKey
  loc_140E13F:                 Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_140E147:                 Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E166:                 If (Len(CStr()) = 1) Then
  loc_140E173:                   Set var_8C = Me.SSPKey
  loc_140E179:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_140E181:                   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E1A2:                   Set var_A8 = Me.SSPKey
  loc_140E1A8:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_AC)
  loc_140E1B0:                   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(LCase(CVar(CStr())))
  loc_140E1C9:                 End If
  loc_140E1CC:               Next var_100 'Integer
  loc_140E1D1:             End If
  loc_140E1D4:           Else
  loc_140E1DE:             Set var_8C = Me.SSPKey
  loc_140E1E4:             Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E1EC:             Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E209:             If (CStr() = "HOME") Then
  loc_140E21B:               Me.TxtKeyBoard.SelStart = 0
  loc_140E226:             Else
  loc_140E230:               Set var_8C = Me.SSPKey
  loc_140E236:               Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E23E:               Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E25B:               If (CStr() = "SPACE") Then
  loc_140E2D3:                 Set var_90 = Me.TxtKeyBoard
  loc_140E2F8:                 var_BC = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_140E30F:                 var_FC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_140E356:                 var_BC = (CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))) + Space(1))
  loc_140E361:                 global_56 = CStr(CVar(Me.TxtKeyBoard.SelStart))
  loc_140E389:                 Me.TxtKeyBoard.Text = global_56 & CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_140E3A5:                 Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_140E3B0:               Else
  loc_140E3BA:                 Set var_8C = Me.SSPKey
  loc_140E3C0:                 Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E3C8:                 Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E3E5:                 If (CStr() = "END") Then
  loc_140E402:                   Set var_90 = Me.TxtKeyBoard
  loc_140E408:                   var_90.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_140E41A:                 Else
  loc_140E424:                   Set var_8C = Me.SSPKey
  loc_140E42A:                   Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E432:                   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E44F:                   If (CStr() = "<") Then
  loc_140E470:                     If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_140E492:                       Set var_90 = Me.TxtKeyBoard
  loc_140E498:                       var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_140E4A4:                     End If
  loc_140E4A7:                   Else
  loc_140E4B1:                     Set var_8C = Me.SSPKey
  loc_140E4B7:                     Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E4BF:                     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E4DC:                     If (CStr() = ">") Then
  loc_140E515:                       If (Me.TxtKeyBoard.SelStart < Len(Me.TxtKeyBoard.Text)) Then
  loc_140E537:                         Set var_90 = Me.TxtKeyBoard
  loc_140E53D:                         var_90.SelStart = (Me.TxtKeyBoard.SelStart + 1)
  loc_140E549:                       End If
  loc_140E54C:                     Else
  loc_140E556:                       Set var_8C = Me.SSPKey
  loc_140E55C:                       Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E564:                       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E583:                       If (Len(CStr()) = 1) Then
  loc_140E5FB:                         Set var_90 = Me.TxtKeyBoard
  loc_140E620:                         var_BC = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_140E637:                         var_FC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_140E646:                         global_60 = CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_140E66E:                         If (global_52 = &HFF) Then
  loc_140E684:                           Set var_8C = Me.SSPKey
  loc_140E68A:                           Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_90)
  loc_140E692:                           Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))))
  loc_140E6A8:                           var_114 = ( + Ucase(CVar(CStr())))
  loc_140E6B3:                           global_56 = CStr(var_114)
  loc_140E6CF:                         Else
  loc_140E6E2:                           Set var_8C = Me.SSPKey
  loc_140E6E8:                           Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_90)
  loc_140E6F0:                           Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(global_56))
  loc_140E706:                           var_114 = ( + LCase(CVar(CStr())))
  loc_140E711:                           global_56 = CStr(var_114)
  loc_140E72A:                         End If
  loc_140E744:                         Me.TxtKeyBoard.Text = global_56 & global_60
  loc_140E760:                         Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_140E768:                       End If
  loc_140E768:                     End If
  loc_140E768:                   End If
  loc_140E768:                 End If
  loc_140E768:               End If
  loc_140E768:             End If
  loc_140E768:           End If
  loc_140E768:         End If
  loc_140E768:       End If
  loc_140E768:     End If
  loc_140E768:   End If
  loc_140E768: End If
  loc_140E772: Me.TxtKeyBoard.SetFocus
  loc_140E77A: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E1164C
  'Data Table: 41F534
  loc_E11645: Set global_68 = vNewValue
  loc_E11649: Exit Sub
End Sub

Public Property Get ParentForm() 'E1140C
  'Data Table: 41F534
  loc_E11400: Set var_88 = global_68 
  loc_E11404: ParentForm = 
End Sub

Public Property Let InputType(vNewValue) 'E11214
  'Data Table: 41F534
  loc_E1120C: global_72 = vNewValue
  loc_E11210: Exit Sub
End Sub

Public Property Get InputType() 'E10F44
  'Data Table: 41F534
  loc_E10F38: var_88 = global_72
  loc_E10F3B: InputType = 
End Sub

Public Sub Proc_252_7_1029494
  'Data Table: 41F534
  loc_10292A5: var_BC = Ucase(CVar(InputType)) 'Variant
  loc_10292B7: If Not (var_BC = "DATE") Then
  loc_10292C5:   If Not (var_BC = "TIME") Then
  loc_10292D3:     If (var_BC = "NUMERIC") Then
  loc_10292D6:     End If
  loc_10292D6:   End If
  loc_10292E2:   Set var_F0 = Me.SSPKey
  loc_10292E8:   Call 0.Method_Proc_252_7_1029494C (var_F2, var_86)
  loc_10292F6:   For var_F6 =  To (var_F2 - 1): 0 = var_F6 'Integer
  loc_1029306:     Set var_F0 = Me.SSPKey
  loc_102930C:     Call 0.Method_Proc_252_7_10294940 (var_86)
  loc_1029314:     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_FC)
  loc_1029330:     Set var_100 = Me.SSPKey
  loc_1029336:     Call 0.Method_Proc_252_7_10294940 (var_86, var_104)
  loc_102933E:     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA((Len(CStr()) = 1))
  loc_102936B:     Set var_12C = Me.SSPKey
  loc_1029371:     Call 0.Method_Proc_252_7_10294940 (var_86, var_130)
  loc_1029379:     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(( And (Asc(CStr(Ucase(CVar(CStr())))) >= &H41)))
  loc_10293C5:     If ( And (Asc(CStr(Ucase(CVar(CStr())))) <= &H5A)) Then
  loc_10293D7:       Set var_F0 = Me.SSPKey
  loc_10293DD:       Call 0.Method_Proc_252_7_10294940 (var_86, var_FC)
  loc_10293E5:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_10293F4:     Else
  loc_10293FE:       Set var_F0 = Me.SSPKey
  loc_1029404:       Call 0.Method_Proc_252_7_10294940 (var_86)
  loc_102940C:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_FC)
  loc_1029426:       Set var_100 = Me.SSPKey
  loc_102942C:       Call 0.Method_Proc_252_7_10294940 (var_86, var_104)
  loc_1029434:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA((CStr() = "CAPS"))
  loc_102945E:       If ( Or (CStr() = "SPACE")) Then
  loc_1029470:         Set var_F0 = Me.SSPKey
  loc_1029476:         Call 0.Method_Proc_252_7_10294940 (var_86, var_FC)
  loc_102947E:         Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_102948A:       End If
  loc_102948A:     End If
  loc_102948D:   Next var_F6 'Integer
  loc_1029492: End If
  loc_1029492: Exit Sub
End Sub
