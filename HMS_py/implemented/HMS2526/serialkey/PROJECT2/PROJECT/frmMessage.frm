VERSION 5.00
Begin VB.Form frmMessage
  Caption = "User Information"
  BackColor = &HCEE0C2&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  BorderStyle = 0 'None
  Icon = "frmMessage.frx":0
  LinkTopic = "Form4"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = -270
  ClientTop = -1320
  ClientWidth = 9945
  ClientHeight = 1425
  WhatsThisButton = -1  'True
  WhatsThisHelp = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin BtnEnh lblOK
    Left = 3525
    Top = 930
    Width = 1620
    Height = 480
    TabIndex = 0
  End
  Begin BtnEnh BtnEnh1
    Left = 0
    Top = 0
    Width = 9960
    Height = 1440
    TabIndex = 1
  End
  Begin Menu POPUP
    Visible = 0   'False
    Caption = ""
    Begin Menu add
      Caption = "&Add"
    End
    Begin Menu edit
      Caption = "&Edit"
    End
    Begin Menu del
      Caption = "&Delete"
    End
    Begin Menu DASH1
      Caption = "-"
    End
    Begin Menu MNUSAVE
      Caption = "&Save"
    End
    Begin Menu MNUCANCEL
      Caption = "&Cancel"
    End
    Begin Menu exit
      Caption = "E&xit"
    End
  End
End

Attribute VB_Name = "frmMessage"


Private Sub Form_Load() 'EF6454
  'Data Table: 421230
  loc_EF6390: On Error Goto loc_EF6408
  loc_EF639A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EF63A7: Call 0.Method_MeC (CDbl(1905))
  loc_EF63B4: Call 0.Method_Me4 (CDbl(10035))
  loc_EF63C1: Call 0.Method_arg_7C (CDbl(6000))
  loc_EF63CE: Call 0.Method_arg_74 (CDbl(2600))
  loc_EF63DF: Set var_A8 = Me.BtnEnh1
  loc_EF63E5: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_EF63F9: Set var_A8 = Me.BtnEnh1
  loc_EF63FF: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(0)))
  loc_EF6407: Exit Sub
  loc_EF6408: ' Referenced from: EF6390
  loc_EF6410: Set var_A8 = Err()
  loc_EF6416: Call 0.Method_arg_2C (var_AC)
  loc_EF6421: Call 0.Method_arg_50 (var_B0)
  loc_EF643D: MsgBox(CVar(var_AC), &H40, CVar(var_B0), var_E0, var_F0)
  loc_EF6450: Exit Sub
End Sub

Private Sub Form_Activate() 'E09590
  'Data Table: 421230
  loc_E09587: Proc_96_21_E587E0(CDbl(1))
  loc_E0958C: Exit Sub
End Sub

Private Sub lblOK_UnknownEvent_9 'E01180
  'Data Table: 421230
  loc_E0117A: Call 0.Method_arg_2B4 ()
  loc_E0117F: Exit Sub
End Sub
