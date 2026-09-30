VERSION 5.00
Begin VB.Form frmmessageKey
  Caption = "Key Massage"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 11700
  ClientHeight = 1440
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin BtnEnh lblOK
    Left = 4515
    Top = 945
    Width = 1620
    Height = 480
    TabIndex = 1
  End
  Begin BtnEnh BtnEnh1
    Left = 15
    Top = 0
    Width = 11670
    Height = 1440
    TabIndex = 0
  End
End

Attribute VB_Name = "frmmessageKey"


Private Sub lblOK_UnknownEvent_9 'E02878
  'Data Table: 41D704
  loc_E02872: Call 0.Method_arg_2B4 ()
  loc_E02877: Exit Sub
End Sub

Private Sub Form_Load() 'EF3044
  'Data Table: 41D704
  loc_EF2F80: On Error Goto loc_EF2FF8
  loc_EF2F8A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EF2F97: Call 0.Method_MeC (CDbl(1440))
  loc_EF2FA4: Call 0.Method_Me4 (CDbl(11700))
  loc_EF2FB1: Call 0.Method_arg_7C (CDbl(6000))
  loc_EF2FBE: Call 0.Method_arg_74 (CDbl(2500))
  loc_EF2FCF: Set var_A8 = Me.BtnEnh1
  loc_EF2FD5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_EF2FE9: Set var_A8 = Me.BtnEnh1
  loc_EF2FEF: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(0)))
  loc_EF2FF7: Exit Sub
  loc_EF2FF8: ' Referenced from: EF2F80
  loc_EF3000: Set var_A8 = Err()
  loc_EF3006: Call 0.Method_arg_2C (var_AC)
  loc_EF3011: Call 0.Method_arg_50 (var_B0)
  loc_EF302D: MsgBox(CVar(var_AC), &H40, CVar(var_B0), var_E0, var_F0)
  loc_EF3040: Exit Sub
End Sub

Private Sub Form_Activate() 'E07790
  'Data Table: 41D704
  loc_E07787: Proc_96_21_E587E0(CDbl(1))
  loc_E0778C: Exit Sub
End Sub
