VERSION 5.00
Begin VB.Form FrmImage
  Caption = "Image"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 390
  ClientWidth = 8820
  ClientHeight = 9000
  StartUpPosition = 3 'Windows Default
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8820
    Height = 450
    Visible = 0   'False
    TabIndex = 0
  End
  Begin Image Image1
    Left = 0
    Top = 0
    Width = 8805
    Height = 8985
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest"
  End
End

Attribute VB_Name = "FrmImage"


Private Sub Form_Load() 'DFF6AC
  'Data Table: 41E34C
  Dim var_2B86 As Integer
  loc_DFF6A4: Call Proc_330_4_1033380()
  loc_DFF6A9: Exit Sub
  loc_DFF6AA: var_2B86 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B16C
  'Data Table: 41E34C
  loc_E2B144: On Error Goto loc_E2B164
  loc_E2B15B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B163: Exit Sub
  loc_E2B164: ' Referenced from: E2B144
  loc_E2B164: Proc_6_60_E63754(Shift)
  loc_E2B169: Exit Sub
  loc_E2B16A: Set var_2C00 = &HFF
End Sub

Public Property Let ImagePath(vNewValue) 'E0FB04
  'Data Table: 41E34C
  Dim var_2B9C As String
  loc_E0FAFC: global_52 = vNewValue
  loc_E0FB00: Exit Sub
  loc_E0FB02: var_2B9C = CStr()
End Sub

Public Property Get ImagePath() 'E0FA74
  'Data Table: 41E34C
  loc_E0FA68: var_88 = global_52
  loc_E0FA6B: ImagePath = 
End Sub

Public Sub Proc_330_4_1033380
  'Data Table: 41E34C
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_130 As Image
  loc_1033177: var_EC = IsNull(CVar(ImagePath))
  loc_10331AF: If CBool(var_EC Or (Trim(CVar(ImagePath)) = vbNullString)) Then
  loc_10331D0:   Me.Global.LoadPicture var_CC, var_EC, var_10C, var_11C, var_12C
  loc_10331E5:   Me.Image1.Picture = var_130
  loc_10331FE:   Me.Image1.Tag = vbNullString
  loc_1033209: Else
  loc_1033253:   var_CC = "DAT"
  loc_103327B:   var_EC = "AVI"
  loc_103329E:   If CBool((Ucase(Right(Trim(CVar(ImagePath)), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(ImagePath)), 3)) = var_EC)) Then
  loc_10332A7:     Set var_130 = Me.Image1
  loc_10332AD:     var_130.Visible = False
  loc_10332B8:   Else
  loc_10332CF:     Call 0.Method_Proc_330_4_10333804 (ImagePath, var_19A)
  loc_10332DA:     If var_19A Then
  loc_1033305:       Me.Global.LoadPicture CVar(ImagePath), var_CC, var_EC, var_10C, var_11C
  loc_103331A:       Me.Image1.Picture = var_130
  loc_103332D:       Set var_130 = Me.Image1
  loc_1033333:       var_130.Refresh
  loc_103333E:     Else
  loc_103335C:       Me.Global.LoadPicture var_CC, var_EC, var_10C, var_11C, var_12C
  loc_1033371:       Me.Image1.Picture = var_130
  loc_103337D:     End If
  loc_103337D:   End If
  loc_103337D: End If
  loc_103337D: Exit Sub
End Sub
