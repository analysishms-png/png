VERSION 5.00
Begin VB.Form RsTouchScreenSteward
  Caption = "Steward"
  BackColor = &H80000007&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 7425
  ClientHeight = 6450
  LockControls = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrameSteward
    BackColor = &H808080&
    Left = -45
    Top = -30
    Width = 7480
    Height = 6510
    TabIndex = 0
    BorderStyle = 0 'None
    Begin BtnEnh CmSteward
      Index = 0
      Left = 3780
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 5
    End
    Begin MSHFlexGrid FGPerson
      Left = 60
      Top = 465
      Width = 3690
      Height = 5985
      TabIndex = 4
    End
    Begin TextBox TxtPerson
      Index = 1
      ForeColor = &HFF0000&
      Left = 75
      Top = 45
      Width = 3690
      Height = 420
      TabIndex = 3
      BorderStyle = 0 'None
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtPerson
      Index = 0
      Left = 75
      Top = 1965
      Width = 3645
      Height = 255
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
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
    Begin MSFlexGrid FGPointSt
      Left = 570
      Top = 2715
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 2
    End
    Begin BtnEnh CmSteward
      Index = 1
      Left = 4695
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 6
    End
    Begin BtnEnh CmSteward
      Index = 2
      Left = 5610
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 7
    End
    Begin BtnEnh CmSteward
      Index = 3
      Left = 6525
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 8
    End
    Begin BtnEnh CmSteward
      Index = 4
      Left = 3780
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 9
    End
    Begin BtnEnh CmSteward
      Index = 5
      Left = 4695
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 10
    End
    Begin BtnEnh CmSteward
      Index = 6
      Left = 5610
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 11
    End
    Begin BtnEnh CmSteward
      Index = 7
      Left = 6525
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 12
    End
    Begin BtnEnh CmSteward
      Index = 8
      Left = 3780
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 13
    End
    Begin BtnEnh CmSteward
      Index = 9
      Left = 4695
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 14
    End
    Begin BtnEnh CmSteward
      Index = 10
      Left = 5610
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 15
    End
    Begin BtnEnh CmSteward
      Index = 11
      Left = 6525
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 16
    End
    Begin BtnEnh CmSteward
      Index = 12
      Left = 3780
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 17
    End
    Begin BtnEnh CmSteward
      Index = 13
      Left = 4695
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 18
    End
    Begin BtnEnh CmSteward
      Index = 14
      Left = 5610
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 19
    End
    Begin BtnEnh CmSteward
      Index = 15
      Left = 6525
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 20
    End
    Begin BtnEnh CmSteward
      Index = 16
      Left = 3780
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 21
    End
    Begin BtnEnh CmSteward
      Index = 17
      Left = 4695
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 22
    End
    Begin BtnEnh CmSteward
      Index = 18
      Left = 5610
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 23
    End
    Begin BtnEnh CmSteward
      Index = 19
      Left = 6525
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 24
    End
    Begin BtnEnh CmSteward
      Index = 20
      Left = 3780
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 25
    End
    Begin BtnEnh CmSteward
      Index = 21
      Left = 4695
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 26
    End
    Begin BtnEnh CmSteward
      Index = 22
      Left = 5610
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 27
    End
    Begin BtnEnh CmSteward
      Index = 23
      Left = 6525
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 28
    End
    Begin BtnEnh CmSteward
      Index = 24
      Left = 3780
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 29
    End
    Begin BtnEnh CmSteward
      Index = 25
      Left = 4695
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 30
    End
    Begin BtnEnh CmSteward
      Index = 26
      Left = 5610
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 31
    End
    Begin BtnEnh CmSteward
      Index = 27
      Left = 6525
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 32
    End
  End
End

Attribute VB_Name = "RsTouchScreenSteward"


Private Sub CmSteward_UnknownEvent_9 '11FD2C8
  'Data Table: 423360
  Dim var_92 As Integer
  Dim var_B0 As String
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As TextBox
  Dim var_D0 As Variant
  Dim var_98 As Variant
  Dim var_FC As Long
  Dim MemVar_1F9501C As String
  Dim MemVar_1F95234 As String
  Dim MemVar_1F95238 As String
  loc_11FCE2F: var_92 = Cancel
  loc_11FCE38: If Not (var_92 = 0) Then
  loc_11FCE41:   If Not (var_92 = 1) Then
  loc_11FCE4A:     If Not (var_92 = 2) Then
  loc_11FCE53:       If Not (var_92 = 3) Then
  loc_11FCE5C:         If Not (var_92 = 4) Then
  loc_11FCE65:           If Not (var_92 = 5) Then
  loc_11FCE6E:             If Not (var_92 = 6) Then
  loc_11FCE77:               If Not (var_92 = 7) Then
  loc_11FCE80:                 If Not (var_92 = 8) Then
  loc_11FCE89:                   If Not (var_92 = 9) Then
  loc_11FCE92:                     If Not (var_92 = &HA) Then
  loc_11FCE9B:                       If Not (var_92 = &HB) Then
  loc_11FCEA4:                         If Not (var_92 = &HC) Then
  loc_11FCEAD:                           If Not (var_92 = &HD) Then
  loc_11FCEB6:                             If Not (var_92 = &HE) Then
  loc_11FCEBF:                               If Not (var_92 = &HF) Then
  loc_11FCEC8:                                 If Not (var_92 = &H10) Then
  loc_11FCED1:                                   If Not (var_92 = &H11) Then
  loc_11FCEDA:                                     If Not (var_92 = &H12) Then
  loc_11FCEE3:                                       If Not (var_92 = &H13) Then
  loc_11FCEEC:                                         If Not (var_92 = &H14) Then
  loc_11FCEF5:                                           If Not (var_92 = &H15) Then
  loc_11FCEFE:                                             If Not (var_92 = &H16) Then
  loc_11FCF07:                                               If Not (var_92 = &H17) Then
  loc_11FCF10:                                                 If Not (var_92 = &H18) Then
  loc_11FCF19:                                                   If (var_92 = &H19) Then
  loc_11FCF1C:                                                   End If
  loc_11FCF1C:                                                 End If
  loc_11FCF1C:                                               End If
  loc_11FCF1C:                                             End If
  loc_11FCF1C:                                           End If
  loc_11FCF1C:                                         End If
  loc_11FCF1C:                                       End If
  loc_11FCF1C:                                     End If
  loc_11FCF1C:                                   End If
  loc_11FCF1C:                                 End If
  loc_11FCF1C:                               End If
  loc_11FCF1C:                             End If
  loc_11FCF1C:                           End If
  loc_11FCF1C:                         End If
  loc_11FCF1C:                       End If
  loc_11FCF1C:                     End If
  loc_11FCF1C:                   End If
  loc_11FCF1C:                 End If
  loc_11FCF1C:               End If
  loc_11FCF1C:             End If
  loc_11FCF1C:           End If
  loc_11FCF1C:         End If
  loc_11FCF1C:       End If
  loc_11FCF1C:     End If
  loc_11FCF1C:   End If
  loc_11FCF26:   Set var_98 = Me.CmSteward
  loc_11FCF2C:   Call 0.Method_CmSteward_UnknownEvent_90 (Cancel, var_9C)
  loc_11FCF34:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_92)
  loc_11FCF3C:   var_B0 = CStr()
  loc_11FCF44:   var_86 = Asc(var_B0)
  loc_11FCF64:   var_90 = CStr(Chr(CLng(var_86)))
  loc_11FCF81:   If (Me.RecordCount > 0) Then
  loc_11FCF8A:     Me.MoveFirst
  loc_11FCFAE:     Set var_98 = Me.TxtPerson
  loc_11FCFB4:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_9C, var_B0, "Name Like '")
  loc_11FCFBC:     0 = var_9C.Text
  loc_11FCFDC:     Me.Find 1 & var_B0 & var_90 & "", var_D0, var_86
  loc_11FCFF3:   End If
  loc_11FD01C:   If ((Me.BOF = 0) And (Me.EOF = 0)) Then
  loc_11FD02D:     Set var_98 = Me.TxtPerson
  loc_11FD033:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_9C)
  loc_11FD055:     Set var_D8 = Me.TxtPerson
  loc_11FD05B:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_DC)
  loc_11FD063:     var_DC.Text = var_9C.Text & var_90
  loc_11FD09C:     Me.FGPerson.Row = CVar(CLng(Me.Bookmark))
  loc_11FD0BA:     Me.FGPerson.Col = 1
  loc_11FD0DE:     Set var_9C = Me.FGPerson
  loc_11FD0E4:     var_9C.TopRow = CVar(CLng(Me.FGPerson.Row))
  loc_11FD0F3:   End If
  loc_11FD0F6: Else
  loc_11FD0FE:   If (var_92 = CInt(&H1A)) Then
  loc_11FD10F:     Set var_98 = Me.TxtPerson
  loc_11FD115:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_9C)
  loc_11FD11D:     var_9C.Text = vbNullString
  loc_11FD12C:   Else
  loc_11FD134:     If (var_92 = CInt(&H1B)) Then
  loc_11FD14A:       var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FD17B:       Set var_D8 = Me.TxtPerson
  loc_11FD181:       Call 0.Method_CmSteward_UnknownEvent_90 (CInt(0), var_DC, CStr(Me.FGPerson.TextMatrix)))
  loc_11FD189:       var_DC.Text = 1
  loc_11FD1AE:       var_120 = pOpenAs
  loc_11FD1B9:       If (var_120 = "Steward") Then
  loc_11FD1CF:         var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FD1D4:         var_FC = 0
  loc_11FD1F2:         MemVar_1F9501C = CStr(Me.FGPerson.TextMatrix))
  loc_11FD207:       Else
  loc_11FD20F:         If (var_120 = "Member") Then
  loc_11FD225:           var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FD22A:           var_FC = 0
  loc_11FD248:           MemVar_1F95234 = CStr(Me.FGPerson.TextMatrix))
  loc_11FD25D:         Else
  loc_11FD265:           If (var_120 = "Description") Then
  loc_11FD27B:             var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FD280:             var_FC = 0
  loc_11FD29E:             MemVar_1F95238 = CStr(Me.FGPerson.TextMatrix))
  loc_11FD2B0:           End If
  loc_11FD2B0:         End If
  loc_11FD2B0:       End If
  loc_11FD2BD:       Me.Global.Unload Me
  loc_11FD2C5:     End If
  loc_11FD2C5:   End If
  loc_11FD2C5: End If
  loc_11FD2C5: Exit Sub
End Sub

Private Sub Form_Load() '1063A04
  'Data Table: 423360
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_E4 As Variant
  Dim var_A8 As Long
  loc_1063790: Call 0.Method_arg_7C (CDbl(2900))
  loc_106379C: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10637B4: Me.FGPerson.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10637CA: Me.FrameSteward.BackColor = CLng(MemVar_1F951B4)
  loc_10637DC: Set global_52 = New 
  loc_10637EE: Me.Recordset15.CursorLocation = 3
  loc_10637FE: var_B4 = pOpenAs
  loc_1063809: If (var_B4 = "Steward") Then
  loc_1063831:   var_C4 = CVar("Select W.Code,W.Name As Steward,W.Name From Waiter W wHERE (W.LOGSITE_CODE='" & MemVar_1F95078 & "' or W.LOGSITE_CODE='HO')  And W.ActiveYN='Yes' Order by W.Name") 'String
  loc_106383B:   Me.Open var_C4, CVar(MemVar_1F95044), 3
  loc_1063849: Else
  loc_1063851:   If (var_B4 = "Member") Then
  loc_1063872:     var_B0 = "Select SubCode as Code,Name As Member,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078
  loc_1063887:     var_C4 = CVar(var_B0 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='" & MemVar_1F95078 & "') Order By Name") 'String
  loc_1063891:     Me.Open var_C4, CVar(MemVar_1F95044), 3
  loc_10638A5:   Else
  loc_10638AD:     If (var_B4 = "Description") Then
  loc_10638DD:       var_CC = "Select Distinct Description Code,Description,Description As Name From KOT where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And RestCode='"
  loc_10638F5:       Me.Open CVar(var_CC & pRestCode & "' Order By Name"), CVar(MemVar_1F95044), 3
  loc_1063908:     End If
  loc_1063908:   End If
  loc_1063908: End If
  loc_1063911: CVarUnk
  loc_1063916: VerifyVarObj
  loc_106391C: Set var_AC = Me.FGPerson
  loc_1063922: LateIdStAd
  loc_1063934: Set var_D4 = Me.FGPerson
  loc_1063937: var_98 = 0
  loc_1063940: var_E4 = 0
  loc_106394C: LateIdCallSt
  loc_1063954: var_98 = 1
  loc_106395D: var_E4 = &HE74
  loc_1063969: LateIdCallSt
  loc_1063971: var_98 = 1
  loc_1063980: var_E4 = CVar(CInt(1)) 'Integer
  loc_1063987: LateIdCallSt
  loc_106398F: var_98 = 1
  loc_106399E: var_E4 = CVar(CInt(1)) 'Integer
  loc_10639A5: LateIdCallSt
  loc_10639D4: For var_FC = 1 To (CLng(Me.FGPerson.Rows) - 1): var_88 = var_FC 'Long
  loc_10639E1:   var_A8 = &H258
  loc_10639ED:   LateIdCallSt
  loc_10639F8: Next var_FC 'Long
  loc_10639FF: Set var_D4 = Nothing 
  loc_1063A03: Exit Sub
End Sub

Private Sub FGPerson_UnknownEvent_9 'FF377C
  'Data Table: 423360
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F4 As TextBox
  Dim MemVar_1F9501C As String
  Dim MemVar_1F95234 As String
  Dim MemVar_1F95238 As String
  loc_FF35A7: var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF35D8: Set var_F0 = Me.TxtPerson
  loc_FF35DE: Call 0.Method_FGPerson_UnknownEvent_90 (CInt(0), var_F4, CStr(Me.FGPerson.TextMatrix)))
  loc_FF35E6: var_F4.Text = 1
  loc_FF3613: var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF3644: Set var_F0 = Me.TxtPerson
  loc_FF364A: Call 0.Method_FGPerson_UnknownEvent_90 (CInt(1), var_F4, CStr(Me.FGPerson.TextMatrix)))
  loc_FF3652: var_F4.Text = 1
  loc_FF3677: var_FC = pOpenAs
  loc_FF3682: If (var_FC = "Steward") Then
  loc_FF3698:   var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF369D:   var_C8 = 0
  loc_FF36BB:   MemVar_1F9501C = CStr(Me.FGPerson.TextMatrix))
  loc_FF36D0: Else
  loc_FF36D8:   If (var_FC = "Member") Then
  loc_FF36EE:     var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF36F3:     var_C8 = 0
  loc_FF3711:     MemVar_1F95234 = CStr(Me.FGPerson.TextMatrix))
  loc_FF3726:   Else
  loc_FF372E:     If (var_FC = "Description") Then
  loc_FF3744:       var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF3749:       var_C8 = 0
  loc_FF3767:       MemVar_1F95238 = CStr(Me.FGPerson.TextMatrix))
  loc_FF3779:     End If
  loc_FF3779:   End If
  loc_FF3779: End If
  loc_FF3779: Exit Sub
End Sub

Private Sub FGPerson_UnknownEvent_B 'E05810
  'Data Table: 423360
  loc_E05807: Call CmSteward_UnknownEvent_9()
  loc_E0580C: Exit Sub
End Sub

Public Property Let pOpenAs(vNewValue) 'E0ECF4
  'Data Table: 423360
  loc_E0ECEC: global_56 = vNewValue
  loc_E0ECF0: Exit Sub
End Sub

Public Property Get pOpenAs() 'E0EAFC
  'Data Table: 423360
  loc_E0EAF0: var_88 = global_56
  loc_E0EAF3: pOpenAs = 
End Sub

Public Property Let pRestCode(vNewValue) 'E124A4
  'Data Table: 423360
  loc_E1249C: global_60 = vNewValue
  loc_E124A0: Exit Sub
End Sub

Public Property Get pRestCode() 'E0E634
  'Data Table: 423360
  loc_E0E628: var_88 = global_60
  loc_E0E62B: pRestCode = 
End Sub
