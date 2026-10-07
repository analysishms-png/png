VERSION 5.00
Begin VB.Form FrmChangeSite
  Caption = "                                               Login Site "
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 5310
  ClientHeight = 2460
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin CommandButton Command1
    Caption = "&Exit"
    Left = 3375
    Top = 1275
    Width = 1050
    Height = 375
    TabIndex = 4
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
  Begin CommandButton CmdOK
    Caption = "&OK"
    Left = 885
    Top = 1275
    Width = 1050
    Height = 375
    TabIndex = 1
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
  Begin TopCtrl TopCtrl1
    Left = 5130
    Top = 2580
    Width = 300
    Height = 375
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataCombo TXT_SITE
    Left = 885
    Top = 720
    Width = 3600
    Height = 360
    TabIndex = 0
  End
  Begin Line Line1
    Index = 1
    BorderColor = &H808080&
    X1 = 885
    Y1 = 1830
    X2 = 4470
    Y2 = 1830
    BorderWidth = 2
  End
  Begin Line Line1
    Index = 0
    BorderColor = &H808080&
    X1 = 885
    Y1 = 1785
    X2 = 4470
    Y2 = 1785
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Site Name"
    Index = 0
    ForeColor = &H0&
    Left = 885
    Top = 360
    Width = 960
    Height = 240
    TabIndex = 2
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
  Begin Shape Shape1
    BorderColor = &H808080&
    Left = 420
    Top = 150
    Width = 4485
    Height = 2010
    Shape = 4
    BorderWidth = 5
    FillColor = &H8000000F&
    FillStyle = 0
  End
End

Attribute VB_Name = "FrmChangeSite"

Private global_52 As Integer
Private global_54 As Integer

Private Sub Command1_Click() 'E4B934
  'Data Table: 424B3C
  loc_E4B909: Call 0.Method_arg_1B8 (var_86)
  loc_E4B914: If (var_86 = &HFF) Then
  loc_E4B924:   Me.Global.Unload Me
  loc_E4B92F: Else
  loc_E4B92F:   End
  loc_E4B931: End If
  loc_E4B931: Exit Sub
  loc_E4B932:  = 
End Sub

Private Sub CmdOK_Click() 'F9AE78
  'Data Table: 424B3C
  Dim var_8C As Variant
  Dim MemVar_1F95078 As String
  Dim var_B0 As Variant
  Dim MemVar_1F953D8 As String
  Dim var_E0 As String
  Dim var_C0 As Integer
  Dim var_D8 As Variant
  Dim var_DC As Panel
  Dim var_C4 As Panels
  loc_F9AD37: If (CStr(Me.TXT_SITE.defText) <> vbNullString) Then
  loc_F9AD4C:   MemVar_1F95078 = CStr(Me.TXT_SITE.BoundText)
  loc_F9AD77:   MemVar_1F953D8 = CStr(Trim(CVar(CStr(Me.TXT_SITE.Text))))
  loc_F9ADA0:   var_E0 = "For Site :" & CStr(Me.TXT_SITE.Text)
  loc_F9ADA6:   var_C0 = 5
  loc_F9ADB4:   Set var_C4 = MemVar_1F95248.sbar
  loc_F9ADC5:   Set var_D8 = MDIForm1.sbar.Panels
  loc_F9ADCB:   var_C0 = var_D8.ControlDefault
  loc_F9ADD3:   var_DC.Text = var_DC
  loc_F9AE00:   var_B0 = 4
  loc_F9AE0E:   Set var_8C = MemVar_1F95248.sbar
  loc_F9AE25:   var_B0 = MDIForm1.sbar.Panels.ControlDefault
  loc_F9AE2D:   var_D8.Text = var_D8
  loc_F9AE52:   Me.Global.Unload Me
  loc_F9AE68:   Call 0.Method_arg_2B0 (var_D4, var_F0, "From Site :" & MemVar_1F95174)
  loc_F9AE6D: End If
  loc_F9AE72: Set var_88 = Nothing
  loc_F9AE75: Exit Sub
End Sub

Private Sub Form_Load() 'FA881C
  'Data Table: 424B3C
  Dim Me As Recordset15
  loc_FA869C: On Error Goto loc_FA8814
  loc_FA86CB: Set var_EC = Me.TXT_SITE
  loc_FA86EB: Proc_6_92_EF7BF4(CStr("SELECT Site_CODE , Site_Desc FROM SITE Where CompCode='" & Trim(MemVar_1F95128) & "' ORDER BY Site_Desc"), var_EC)
  loc_FA8725: Me.TXT_SITE.CursorLocation = 3
  loc_FA876D: Me.Open "Select S.Site_Code as SearchCode,S.Site_Desc From SITE S Where CompCode='" & Trim(MemVar_1F95128) & "' Order by S.Site_Desc", CVar(MemVar_1F95044), 3
  loc_FA8784: Call 0.Method_arg_160 (var_EC, 1, -1)
  loc_FA8792: Call 0.Method_arg_164 (var_EC, "Site_Desc")
  loc_FA87BD: Call Proc_105_14_E1F1D0(Proc_5_1_100EC1C("ADD", Me), New)
  loc_FA87C8: Call Proc_105_13_EA5420("Site_CODE")
  loc_FA87E3: Proc_6_23_DFC5B8(Me, 0)
  loc_FA87F4: Call 0.Method_arg_9C (CInt(0))
  loc_FA8801: Call 0.Method_MeC (CDbl(2835))
  loc_FA880E: Call 0.Method_Me4 (CDbl(5400))
  loc_FA8813: Exit Sub
  loc_FA8814: ' Referenced from: FA869C
  loc_FA8814: Proc_6_60_E63754(0)
  loc_FA8819: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1F130
  'Data Table: 424B3C
  loc_E1F11F: Set global_56 = Nothing
  loc_E1F12B: global_52 = 0
  loc_E1F12E: Exit Sub
End Sub

Private Sub Form_Activate() 'E7E690
  'Data Table: 424B3C
  loc_E7E631: If (global_54 = &HFF) Then
  loc_E7E63E:   Proc_6_93_EACCB4(Me.TXT_SITE)
  loc_E7E64B:   global_54 = 0
  loc_E7E64E: End If
  loc_E7E656: If (MemVar_1F95078 = vbNullString) Then
  loc_E7E66A:   Me.TXT_SITE.BoundText = MemVar_1F95070
  loc_E7E675: Else
  loc_E7E686:   Me.TXT_SITE.BoundText = MemVar_1F95078
  loc_E7E68E: End If
  loc_E7E68E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E3B228
  'Data Table: 424B3C
  loc_E3B205: If (global_52 = &HFF) Then
  loc_E3B215:   Me.Global.Unload Me
  loc_E3B21D: End If
  loc_E3B222: global_54 = &HFF
  loc_E3B225: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E55970
  'Data Table: 424B3C
  loc_E55934: On Error Goto loc_E5596A
  loc_E55941: If (CLng(KeyCode) = &HD) Then
  loc_E55944:   Call CmdOK_Click()
  loc_E55949: End If
  loc_E55961: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E55969: Exit Sub
  loc_E5596A: ' Referenced from: E55934
  loc_E5596A: Proc_6_60_E63754(Shift)
  loc_E5596F: Exit Sub
End Sub

Public Function global_52Get() '424FF0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '424FFF
  global_52 = Value
End Sub

Public Function global_54Get() '42500E
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '42501D
  global_54 = Value
End Sub

Public Sub Proc_105_11_E17B98
  'Data Table: 424B3C
  loc_E17B8D: Me.Global.Unload Me
  loc_E17B95: Exit Sub
End Sub

Public Sub Proc_105_12_E1F180
  'Data Table: 424B3C
  loc_E1F174: Me.TXT_SITE.BoundText = vbNullString
  loc_E1F17C: Exit Sub
  loc_E1F17D:  = 
End Sub

Public Sub Proc_105_13_EA5420
  'Data Table: 424B3C
  Dim Me As Recordset15
  loc_EA53A0: On Error Goto loc_EA5417
  loc_EA53BA: If (Me.RecordCount > 0) Then
  loc_EA53F9:   Me.TXT_SITE.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA5411: Else
  loc_EA5411:   Call Proc_105_12_E1F180()
  loc_EA5416: End If
  loc_EA5416: Exit Sub
  loc_EA5417: ' Referenced from: EA53A0
  loc_EA5417: Proc_6_60_E63754()
  loc_EA541C: Exit Sub
End Sub

Public Sub Proc_105_14_E1F1D0(arg_C) 'E1F1D0
  'Data Table: 424B3C
  loc_E1F1C5: Me.TXT_SITE.Enabled = arg_C
  loc_E1F1CD: Exit Sub
  loc_E1F1CE: Exit Sub
End Sub
