VERSION 5.00
Begin VB.Form rMemberRepView
  Caption = "Member Report"
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
  BeginProperty Font
    Name = "Arial"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin PictureBox PictPreview
    BackColor = &HC0FFFF&
    Left = 9825
    Top = 0
    Width = 11010
    Height = 3090
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Text2
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 660
      Width = 10935
      Height = 270
      TabIndex = 27
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 390
      Width = 10935
      Height = 270
      TabIndex = 26
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text3
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 930
      Width = 10935
      Height = 270
      TabIndex = 25
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text4
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 1200
      Width = 10935
      Height = 270
      TabIndex = 24
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid FGrid1
      Left = 15
      Top = 1470
      Width = 14415
      Height = 7830
      Visible = 0   'False
      TabIndex = 28
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 2100
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 30
    End
    Begin BtnEnh LblRefresh
      Left = 0
      Top = 0
      Width = 1395
      Height = 465
      TabIndex = 31
    End
    Begin BtnEnh BtnPrint
      Index = 3
      Left = 1395
      Top = 0
      Width = 700
      Height = 465
      TabIndex = 32
    End
    Begin BtnEnh BTNEXIT
      Left = 2805
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 33
    End
    Begin BtnEnh LblRep
      Left = 3510
      Top = 0
      Width = 4470
      Height = 495
      TabIndex = 34
    End
  End
  Begin PictureBox PictParameter
    BackColor = &HC0C0FF&
    Left = 0
    Top = 0
    Width = 9825
    Height = 3090
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton Command2
      Caption = "Text Printing"
      Left = 120
      Top = 1200
      Width = 1680
      Height = 615
      Visible = 0   'False
      TabIndex = 39
    End
    Begin DataGrid DGOutlet
      Left = 3675
      Top = 5700
      Width = 3375
      Height = 2295
      Visible = 0   'False
      TabIndex = 23
    End
    Begin DataGrid DGTax
      Left = 3225
      Top = 5445
      Width = 3705
      Height = 2355
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 37
    End
  End
End
Begin DataGrid DGMemType
  Left = 3180
  Top = 5175
  Width = 3705
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 38
End
Begin BtnEnh CmdDate1
  Left = 4305
  Top = 90
  Width = 360
  Height = 300
  TabIndex = 36
End
Begin MainCtrl TopCtrl1
  Left = 495
  Top = 10740
  Width = 975
  Height = 195
  Visible = 0   'False
  TabIndex = 29
End
Begin CheckBox Check1
  Caption = "All"
  Index = 1
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 150
  Top = 1830
  Width = 915
  Height = 195
  Visible = 0   'False
  TabIndex = 17
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
Begin CheckBox Check1
  Caption = "All"
  Index = 2
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 4920
  Top = 1830
  Width = 870
  Height = 195
  Visible = 0   'False
  TabIndex = 16
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
Begin CheckBox Check1
  Caption = "All"
  Index = 3
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 135
  Top = 3870
  Width = 870
  Height = 195
  Visible = 0   'False
  TabIndex = 15
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
Begin CheckBox Check1
  Caption = "All"
  Index = 4
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 4950
  Top = 3855
  Width = 870
  Height = 195
  Visible = 0   'False
  TabIndex = 14
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
Begin TextBox TxtSearch
  BackColor = &HE0E0E0&
  Left = 0
  Top = 1470
  Width = 2055
  Height = 240
  Visible = 0   'False
  TabIndex = 13
  BorderStyle = 0 'None
  HideSelection = 0   'False
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
Begin TextBox TxtGrid
  Index = 0
  BackColor = &HE0E0E0&
  ForeColor = &H80000012&
  Left = 510
  Top = 30
  Width = 690
  Height = 240
  Visible = 0   'False
  TabIndex = 12
  BorderStyle = 0 'None
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
Begin PictureBox Pic
  BackColor = &H808080&
  Left = -75
  Top = 8715
  Width = 9825
  Height = 435
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 10
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  TabStop = 0   'False
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Label LblTitle
    Caption = "LblTitle"
    BackColor = &H0&
    ForeColor = &HFFFFFF&
    Left = 4740
    Top = 60
    Width = 4470
    Height = 315
    Visible = 0   'False
    TabIndex = 11
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End
Begin Frame FrmList
  Left = 1155
  Top = 5055
  Width = 2520
  Height = 1875
  Visible = 0   'False
  TabIndex = 8
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
    Left = 0
    Top = 0
    Width = 2325
    Height = 1830
    TabStop = 0   'False
    TabIndex = 9
  End
End
Begin Frame Frame1
  Caption = "Site Selection"
  Left = 6975
  Top = 240
  Width = 4065
  Height = 3540
  Visible = 0   'False
  TabIndex = 3
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox txtSite
    Index = 0
    Left = 1095
    Top = 285
    Width = 2820
    Height = 360
    TabIndex = 5
  End
  Begin CommandButton Command1
    Caption = "&OK"
    Left = 1485
    Top = 3060
    Width = 1485
    Height = 390
    TabIndex = 4
  End
  Begin DataGrid DGSite
    Left = 1095
    Top = 660
    Width = 2835
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin Label Label1
    Caption = "Site Name"
    Left = 120
    Top = 315
    Width = 900
    Height = 270
    TabIndex = 7
  End
End
Begin CommandButton BtnParam
  Caption = "&For Site"
  BackColor = &HC0C0C0&
  Left = 9255
  Top = 0
  Width = 1305
  Height = 375
  Visible = 0   'False
  TabIndex = 2
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DownPicture = "rMemberRepView.frx":0
  ToolTipText = "Works Only at Head Office"
End
Begin MSHFlexGrid GridSel
  Index = 1
  Left = 90
  Top = 1785
  Width = 4695
  Height = 1650
  Visible = 0   'False
  TabIndex = 18
End
Begin MSHFlexGrid GridSel
  Index = 2
  Left = 4860
  Top = 1785
  Width = 4710
  Height = 1650
  Visible = 0   'False
  TabIndex = 19
End
Begin MSHFlexGrid GridSel
  Index = 4
  Left = 4875
  Top = 3810
  Width = 4710
  Height = 1650
  Visible = 0   'False
  TabIndex = 20
End
Begin MSHFlexGrid GridSel
  Index = 3
  Left = 75
  Top = 3825
  Width = 4710
  Height = 1650
  Visible = 0   'False
  TabIndex = 21
End
Begin MSHFlexGrid FGrid
  Left = 240
  Top = 75
  Width = 4485
  Height = 1560
  TabIndex = 22
End
Begin Label LblProcess
  ForeColor = &HC0&
  Left = 15
  Top = 8340
  Width = 6060
  Height = 360
  TabIndex = 35
  BackStyle = 0 'Transparent
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
Begin Label Ä&S=¶T&FÆ·ÒﬂòlˆwAÄﬁTdåCìX ∑qˇœf:O≠3ôfœ∑ ™ `”ì                                    QÖ  ´    rInventRepView 
 ReportForm ¿¿ˇ ‡‡‡ 
 b #>  lt  6             Ë  &        (    (       @         Ä                        Ä  Ä   ÄÄ Ä   Ä Ä ÄÄ  ¿¿¿ ÄÄÄ   ˇ  ˇ   ˇˇ ˇ   ˇ ˇ ˇˇ  ˇˇˇ    ÃÃÃÃÃÃÃÃÃÃ      ÃÃÃÃÃÃÃÃÃÃ        ÃÃÃÃÃ           ÃÃÃÃÃ            ÃÃÃÃ            ÃÃÃÃ            ˇˇ              ˇˇ               ˇˇˇˇˇ           ˇˇˇˇˇ           ˇˇˇˇà           ˇˇˇˇà           ˇˇˇˇˇ           ˇˇˇˇˇ          ˇˇˇˇˇˇˇ         ˇˇˇˇˇˇˇ           ˇˇàˇ            ˇˇàˇ           ˇˇˇà            ˇˇˇà           ˇˇˇˇˇ           ˇˇˇˇˇ             ˇˇ              ˇˇ                                                                                                                                          ¸  ?¸  ?ˇ ˇˇ ˇˇ¿ ˇˇ¿ ˇˇ  ?ˇ  ?ˇ  ?ˇ  ?¸  ?¸  ?      ?  ?  ˇ  ˇ  ˇ  ˇ ˇ ˇ¸  ˇ¸  ˇˇ ˇˇ ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ(                ¿                         Ä  Ä   ÄÄ Ä   Ä Ä ÄÄ  ¿¿¿ ÄÄÄ   ˇ  ˇ   ˇˇ ˇ   ˇ ˇ ˇˇ  ˇˇˇ  ÃÃÃÃ¿   ÃÃ      ÃÃ      ˇ       ˇˇ     ˇ¯     ˇˇ     ˇˇˇ     ˇè     ˇÄ     ˇˇ      ˇ                                   ¿  ‡    ¯      ‡  ¿  ¿  ¿  ¿  ¿  ‡    ˇˇ  ˇˇ  $ Form3 ( 0ˇ1ˇ5•   Y  ˇ-  ¶  @   êDB Arialˇ5    PictPreview  ˇˇ¿ ,  F#¶#  B  #ˇ$ - 2ˇ<    Text1 ¿¿ˇ   ¿   Ü∑*&    .   º‹| Arial0 ˇı   LblRep ˇ BTNENHLib4.BtnEnh ∂ kÔ4 -LB	 º    ´  i  B   ˇ˛ˇ.  R„ëèŒù„ ™ K∏Q   º‹| Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial <    ÄÄ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ    Z `       ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ   öôôôôôπ?        J      ˇˇˇ ˇˇˇˇ         ˇˇˇˇˇ        ¿¿¿                ˇˇˇˇˇˇˇˇˇˇˇ ˇ˛ˇ.                                       @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ     ˇ˛ˇ               ˇ/    Frame2  Frame1     m)w
 3 " ˇS   
 BTNRefresh  Para&meters gã)fJ	 2    ºDB Tahoma%
 Parameters )ˇJ  Ä   BTNEXITz  E&xit   Nã)HJ	 1    ºDB Tahoma% Exit )ˇF  Ä  	 BtnPrintz  P&review   †ã)fJ	 0    ºDB Tahoma)ˇG  Ä 	 BtnPrintz 	 &WinPrint  ˜ã)fJ	 /    ºDB Tahoma)ˇG  Ä 	 BtnPrintz 	 &DosPrint  á|)ÉJ	 *    ºDB Tahoma)ˇ<    Text2 ¿¿ˇ   ¿   î∑*'    .   º‹| Arial0 ˇ<    Text3 ¿¿ˇ   ¿   ì∑*%    .   º‹| Arial0 ˇ<   	 Text4 ¿¿ˇ   ¿   °∑*$    .   º‹| Arial0 ˇ∂   FGrid1 ˇ% MSHierarchicalFlexGridLib.MSHFlexGrid - ÕO8ñ ( -LB	 g  !C4   Rc  Û5  BooP   å                       ˇˇˇ   ¿ ˇˇˇ   ¿ ˇˇˇ     ‡‡‡ ‡‡‡ ‡‡‡ ‡‡‡ ÄÄÄ       Äø                              ˇˇ                      H   ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ  Äˇˇˇˇˇˇˇˇ¿¿¿   Äø  Äø           ˇˇˇˇ   ˇˇˇˇ           ˇˇˇˇ             R„ëèŒù„ ™ K∏Q   êê_ Tahoma R„ëèŒù„ ™ K∏Q   ºê_ Arial    R„ëèŒù„ ™ K∏Qlt      ˇ Ä  BtnPrint ˇ BTNENHLib4.BtnEnh  4  ¡—+ -LB	 ’    ”  4  B   ˇ˛ˇ   R„ëèŒù„ ™ K∏Q   º¿‘ Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇ,E : \ A n a l y s i s   S e r v i c e s \ i m a g e _ t o p c t r l \ P r i n t . g i f ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        5  Ï  )  Ï  xús˜t≥∞LT`P`¯˛ü¡⁄∆“ﬁ¡÷—…ﬁÕ›≈›√’◊œ;0( 8$0<"4**<&6*.>611.9%1##5??∑∞0Ø®®∞¢¢¨≤≤≤¶¶™Æ∂6©=9goLcc]ccc[[[{wgGG[WWg__ﬂƒâ¶Nô8uÍ‘ô3¶œõ7wÓºÛ,òΩr—Ç˘s-ú∑p·¬ãñ,Z≤|˘™’ÀWØ_πbŸ ï+ó-ŸºbÈ÷µÎ6-€∂n„Üu€∂nﬁ∂uÎ¶m;∑Ô⁄Ωc˚ñù@∞cˇé=˚˜Ó›µÔ¿¡ΩáO<x‡ËëCGè=v¸ƒ°ìÁO?zÊÙ…≥gN9}Ò‹ÖãŒü‚´W.›∏~ıÊçk∑nﬁ∏sÎ∆Ωª∑>z¯‰—ÉgOΩ|˛ÙÌÎóﬁΩ˘Ù·›óO˛ˇˇœ0
F¯œ†¯ìÖëHÎÄ∏†<¡¿Òü·?ßå«Üõ9ÑµbNlXx∏]@|ŸE%gÕ»MÅã∑Ò…äqÓ;·a¥XT;t⁄éƒ@˜ì:Ík*©∂ªJ©˚Œ[‚˘¥SîO,≈î»•œ'´{˚π,ë>uf±˚ $úÿO-òm0ë…$©K5¢ﬂH2€òcÏÇ∂Lt‚^·>› 2Ë€—ÓVÎ†?MGN/ˆ¶π(Öìk3◊Âw?>^,†Ë6≈e≠““S¬≤ä-%èéÒ…Î∏ı8<lr„ÎrÌ—±‘b]:AP1Hƒßp±a7èàA…'ÆK¶~ŒfI*≠EDÿÓUaÁ„‚3©`pdjÂŸS=π.0Ÿ•ÏŒ…ˇΩ'7lptÎbb`—(H`dfPÚ8–`Î¬qÁÜÊãı◊õ •(Ò0øå „äráj^ã,ª≈YeW®»	ª	46ÒÂk:≥Û-`o``Ÿ0›Å]≥bπ<´æÑaìÉÈVaùáÖ‹y∂âG∏%tha`Ê¸ï™‡¬[.h‚‘%‹*‡X™∏EbÜÄÊÉ√|¶ ö∫˘?˛8¿,‘–,®≥¿ô]≤F%⁄É≈Œ·¢ÄfG@å´"Ø…≈à˛ΩÀı%ÿ/Õk`”z±†ÅçÖ¡ d[                                          @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ      ˇ˛ˇE : \ B I \ I C O \ P r i n t D i s a b l e . G I F ú           ˇˇˇˇñ   Ñ   6  xúsÚ5„a 3 ÷ b(fdêÄH@ÂëÅ•çı(ràv1àôB®eVì)¥Ö†ôDZA™9ƒ[AéˇI∞Ö3â0”
¬∆R pZAô±hÊS7~±öO#[ËúV©h-2/©ÊShçJπn˛àÚ¬†"¸Vêm&VÛ©b⁄(¢ s˛ú?              J Print ˇI  
 LblRefresh ˇ BTNENHLib4.BtnEnh     s—, -LB	 ˜    ù	  4  B   ˇ˛ˇR e f r e s h  R„ëèŒù„ ™ K∏Q   º‹| Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   º‹| Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇE : \ B I \ I C O \ s y n c . i c o ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ   ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        ï          ˇˇˇˇ    }  6	  xú•ñPT◊∆/Ø]VQ,æxÉÄ∫»a$è"5$c«Ã‘ÛíZ•RMåöà—Ñ1’&
ËòBP— `Çèbå¨%F|/ë èeóeÒÅ¨ãÀ˛z¿Ëdv2”ˇÃ7ÁŒ=s˜;ﬂ˘ﬂ3wÍÃ(Ö‘_QBJ!˜üe'˘ﬂü¯y˛∑TDÆ§Õí6ÜeJï¡i ≠ÅªÌò∞Ÿeö=!ü;îÖe;&¸/F‹È!n›WÌêÚ¬3$TﬂJåΩ"·Æì]/1¢FbTç=^5éå´î°,ñû·DXÆlÎ£å–"Ái <èxˆQnë∑_¬∑N¬KpΩµblo!ﬂk¯÷:TÎÃ∏˙¡åopAU7î‡CŒÑÏíYT˘Œû}øLß<ﬂ›r∆ÙêØﬁ+˘Ñà|O	ø>ÇÎ#Fo°1Z{¥é7:¶sA≠w%RÔFd„H‘⁄ëÑG£:ÔäøXÀ»Z<äD∑´Qùty»W}.|ä<F÷ﬁ˜⁄«ˆ
–:†‘Àò†Wf¬ƒ&W&7è`Jã”Ø˚◊@å1êh1™~E¿Ÿﬂ°nû¿Ùˆﬂ£,øœWeIyA˘˜ÛuˇI¬Sd„ßµ#HÁà“† ÙíúßœcJÈ0Êkûa©nÈwsx£m3[CxÈv$/∂F1£u"SnN‚˘€±¸…ÚO¸‡∆ª$Ep™}Ib∏FåU¬≠»£—âOí±€…¨ﬁ„ÙAT°<<¢HûyHæ3‚∞Ç?ˇ¯Ÿ÷"^3O%·ŒyÂŒ,Ê›ôÕÀ|ñv/g≤fT_ﬂm(í&∏√≈;<™Ï	“ DÆÉòQ™`zâ"q†S ◊yg;Úæ)Ö%sXﬁπÄ∑;ÛNW´ªí˘»˙	±◊º	N≥Ø-ˆ‘Mcá˚èå©ï°jra∆©¡<|⁄Åÿcv…J√JFê‘ëÃ\Û≥,µº…ªwì|Ô}>Í^œÜÓMl∂e2•¡á–{EO≥«O#c¨≠=W¨0˝Í{˘~®wËA>9Œ$6Ø¶Ñsú¥ùgØ≠òTk6ÀªVí‹≥éè≠õŸ‘ªÉ)zˇ˛˝çˇR>¸©˝≤¯ß
‰—áDoU0˘Ä< Ô}TËÔS‡î>ráC]`©+1UœêlN„,5•íBNê≈A¢u^Ï˚Édﬁ˜ú4Ìq¨ﬂR˛%Œsºé»v∫ó…M™À~ÃmI`øÌ—ıJ˛Ω" ˝Å◊˚uaÉ∫_ﬂºÏº≥ÏÕas˛üwVª,{Õ’\<O‚Ê·L?ºEWc‚≥Ê3RïE˘¬!uÀFßü[Ìˇ8ñ6kbæÒ´©¥ƒ–¸Â§ä_ŒïΩÊÄnõ⁄m2ÙôC0‰z”v˙U:´”ËΩy[kñö/∏ö™ÊrJW>Ô˝(ø1+‹‘]˜!∂Êœ∞Í7sØÍ:.æK€—g9ˆÜ]F€ï¶å{1ÊO‡Fa∑®±T≠•aÔ,.ÆÒ+»ª.{“Zca∂¶t¨B6√∏q kK)mﬂƒT~õ†@ó•@üÂÜaó∆ºÒ\ˇ*ÇõEQò/$Sπ ìÛ´}÷úã:Qü£¶ªf÷∆Tzı[∞ÈS¡|âNM≤ªÒªøl¡ˇbÕª}1ÓÊ∆◊ë¬B˜vq˝¯JëK öˇù’ˇõt-=$ºn[Ëı€√ÕMπ—‹Ω˙Ωçõ∞j7”´K≈÷R ˆ∞ä∂‚hL%”ÂãDÊY."wå{π^®‚Üﬁz8Ü÷#±tT.·^SæXK*∑N≠¿P0ì€«ÁsÁÃ¨ıÎÈ©ˇá`"Ù©»fXË8ü‘ó}^ﬂO%∫b»*r˜¢1”O‰…≠√O“ZÀÌ“xL«_ƒT>õˆäW±T˛ïªóñ—UµÇÓÍ5"óuÙ‘≠«⁄∞Åﬁ&¡6_°G_@€ëßû˚ßˇÓFÀ7Æn‚ªDœñ≥´Ç0‰«—V«Ìc/`:9ÛÈóÈ8ÛñsãÈº,¯öï‹ÎÁØ¸zçπ¬w==MrÒy¿ØX6úÔﬂvß|âgˇzŒ¨Ùı<ª ◊“∞3éˆ≥K0ˇÁÃsˇuë’B·?âª¢ˇ∫ÆÆ¢Gª⁄Œa3iÓg"|ˇí›W'	ˆﬂ<~u>\N	‹™I√ı≤≈¥_\OWC=Ü|¨ÜBl7èA{5›˙":.ºG€ø¢Ê˝hï'z¯Ò†jRÉj”ïeı€T4n°µdû¯>¢i…üƒ≠Ø£+≈>mÏÎì«=ˇ_Ï√;ñV      ˇˇˇ ˇˇˇˇ        ˇˇˇˇˇ        ¿¿¿                ˇˇˇˇˇˇˇˇˇˇˇ ˇ˛ˇR e f r e s h                                       @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ     ˇ˛ˇE : \ B I \ g i f \ 2 4 x 2 4 \ S t o p   s i g n . g i f (          ˇˇˇˇñ     ˆ  xúÖî}le«Ø,tÎÀÆw◊óµ[eå¯á[√¢√ÕUùlsVYL∞€∫9…Ü≤ ∞∫çΩ°11bLÄ®q√ê`» ˛'—¯té–1 æl´•Ñ∂◊Î=Ωˆ≤ê˘{ÓZÈ`Ã'ü{ÚΩÁ˘›Á˘]ì^ızAIH£Æá‡2'/Ö4ƒ∑…˝•áÇxπ‚xÜ‚‰‚£PøíeƒF˝yã1Aj¢§6ägµDO™ÑÃåÛP∂Ñ$É¯ƒd¯:7W µ!]ˆ‡£I°E†Ç‚˚HFM∆ °Ë0≈ÑÒLat∫d#ô)íœZ˛ÕΩ*¯A@b]£ı,cÀ–˙Üb¯)
©î?¿Éií1KŒè arXΩ9Ã 9¶∆§¸,£Á%’XRbæ∏¢1÷∞å>/ãÑ9|?´œ·’Íüîg)Ì˜kjÃ
NgÂ»<ŒêœWF C~·÷ kÄ-sDkå–Ê»ô<c·Ùfìã_POO<\…ÎËÒ∂-^ ‰–iö±Zø≥Ÿ&!
xÇ∏Ë¨ı™®Y ¯l—‘W -úOò…B{Ãiˇ|jy ?~˝ÖÖÅP^ªàŒß€£”xÜSÚxË‹TU´&Ù•“ıB±Ì≤≈zU´˘
∫Æ⁄Ÿ©Òà‰ôŸ‡º
·Ωw˝–Ãêuö	ŸCW4Ê[¶yçÍ£Ûñ◊Y¶õ•è\ìè€÷6≥åÙÀ"”7⁄,Ñl˙zvÔÈòñ“€ï&ÎÚìÂ:;ÑäÚiyÒ‡˛†íˆÅvjú«u`∞' ø U››urGÓ™œ ≠ˆ≠Ãˇ›Q5ªc_‚‰Q|:©ô…‘¯‡]‚ÔÒˆ9*n@hoÑoj2yï˜Ûƒ„ ¬ŒŒà˝±iGµﬂ≥_|˚uÏI$n√¸·>ΩÌ—a~n.}aæÂ\ãﬂñoü™âÿÀˇOÔA±‚yÓùΩ±+ﬁπ√Òó\‹©œ‚«é Ñv7gØf?`˜°xYÁﬁ √:T¬ºÆñs∂#TVú_†˙NT˜*⁄∞mÙ†∫]8À‘ÔBõ:ës;zn+_∑’Ô@∑£⁄óì@ﬁÏÏe7Jl˛M.ˆ–¢´5t£∆ÆÆªŸ,Œ$íûZ[,-¿_¨§( ™èNãÓ^‘‘ã‹}Çúõz0ç=ã˘ªQS¨ÍiVñ»£ƒrπ∏√câÊ~‘<ÄZQ3–üõ˚¯›ª°K äÉw}Çd’«g≈÷=BÎîhˇ˚PÎõ±™g"•´Cã~◊ÿ"—#Áƒ-oÄ$LÚ‚ ¶eêU€ê,aó¯DÉ™±âˇÙKÒ≠qËËˆé`ÜFƒ}«D,)Êñê»jj÷rÎ—{©}6Í®‰ï¸øR˝i              J Refresh/Parameter ˇ^ Ä   BtnPrint ˇ BTNENHLib4.BtnEnh   s  º—- -LB	     ”  4  B   ˇ˛ˇ   R„ëèŒù„ ™ K∏Q   º¿‘ Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇE : \ B I \ I C O \ t e x t   p r e v i e w . i c o ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        »          ˇˇˇˇ    ∞  6	  xú•îyLTWáÈfıè˛—-5Möö6MçM⁄∆Vm⁄‘¶¶*¶°⁄*äFÎFMIÏ"#Z¢∏†TAEYã *Ç2¨ÇÄtX*¢≤≤¬¿√¨ oøﬁ˜™£’Qi{^~yÛrÔ˘Ê,˜ûOÁMü‡£ÿt°…BoÈ1üI/‹ZêmÙ{Y™y„	˝ó⁄8˜i~ˆØh¬¥|ﬁ ∆∑ôªˇó∆ΩA5∞˛t>o©≤ÓÊoˆs_'ˇ’üGëx7M<>æ˚Ìﬁ¯›⁄‘À¶	ΩÔUIK¶í¥x*…SIøSóº«∏è»Ö:¡ˆâöµ¯ﬁ˙ÏY;≈ø”>Ä”fˆ¢AÜbÕ—è≈÷èÕ2Äœ‚|≤%∏"¸û⁄)ÚS„≠ø˜ÛÔ®8'õ† Ç˝ødÌú9OL¿aÎÂ≥-≈|S&·Ûd4<±Ë,[>˚Pæ.OMÊ™=Ú{˝UÇóbh;…M©ä€%.UU6ˇˆÆdﬁ	˜6âq¡ZÙÕ⁄Ú6Ãº/˛ïüA„—0î :*≈ªY®◊””¯Â˛§Æ˛ÜI˚ïo}ÛcÊú8IVH†H>óé¸ÏÌ\ˆ$€5ëá…Ûáf„4õ…Oùıè˙¨üı√ÖQtkbÈ©Hb§_ã€^èÀvïQ∑\C
≥∂¨Ñ_}'ãO˙ñj¡Ó°¸€Ò´¯C≈NÙÂIÙWß1ÿòR/.gª»C«®S/v∫io¨'=fó‚w]˜'[ø~ﬁ+ˇ‡&?ÿa"zY ˆ‹_0‘§`ΩVÄS_ã•I4”eƒmΩÇdΩ,vDM »à€£¯u5î≥m—ã^˘G"yÓW∆ ÿ@w¸å⁄d·ŸÆ¯€teÿ;ãê,ZF˙‰~∑q•Ú(·æoãÙ”¢=√ˆÄóºÚ’ªWy‚wãß"_√y’BL˘—]◊¿h´»CÉ£≥Ñæ™4.eâù’ƒ¨[Å∂0õ¡ûÍK‘D.}Ÿ+ˇTÏ˜w¯nó∏õ&ˆ}∑›ûÂÙÁGaÆWcºöMá&éﬁíﬂ¿xä¬à	Q—Z[Ñ^W√Ö3qDæ‚ïüó¯ìß>ôﬂŒ5öA ⁄π⁄∞éR’W4Ô]∆@VC·Ùùç /‚6/X¿¡ÖÔ7
∫⁄J≥bÿ±bíW~AÍ&O¸#n7í$)≤Xlîk
8®⁄»·MaPÖêIn“.*N«QûI±Z•(uÀlvØz”+ø0-¸Œ˘πÕwπê‹7F¨8¨=Xç]ò˚ªïXãíBîΩv´Eô˝-ï‰˙yŒxÂ´∑zÍsÏV}‰:•ã≥î&Êuäò√…Ú\⁄Ó˚öá/≥[Îä∂|áº±e+˛=‚Æ˛ä¯]nF≈u⁄Õ◊1¥7—€XC◊ÂJÍÚ…å]£∞ÕÜNrˆ=î≠3¢<|Ir3$Ÿ±Ù·0t`ËjÁ„"mãD¨yh≥c~”≈Rr„É…æó/€MÒ‹p:pÙbÍn¶£±öñöÀOp˛xÒÇYò:&∂lÁ≤v*|YVs&}+]∫:⁄ hÆ9K]©öÍúX*2w(±À|yÊéÖ}õ_*|K“∑#˜¢$]V$ÁéEq.c≈…°ßÜë{(ò£ªñåâ˝ex                                          @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ      ˇ˛ˇ!E : \ B I \ I C O \ t e x t   p r e v i e w d i s a b l e . b m p ]          ˇˇˇˇñ   E  ˆ  xúsÚ˝∆∆ f@¨ƒPÃ&@Âë¡h›¯	àö7}o!µn˛—π„;};’˛ˇ÷‘ˇH hØ†4IËÁ˘JÜ…>™ˇØ4√ÕiXÛZPL”¡∏¿ﬂ£YN:œ„˛ÔHG3G⁄‘%j¡©®ß—P‹‚≥qKœ∆.9≥¯lÙ‚3?¶∫31É•å·ˇætdÂOø
qèØ *‡‡‚‚ÂÁÂÂ˙ø‘’óïAãÅ·W1√ﬂçQˇQ™9P‰ËÌ[;uÍÑ5Î¶oŸîò Õ+±ªﬁqπ9É0√ÔRÜ?À<™Wæ√jéä{T¨#¥ÒŒÉ‘	ãƒ˝YÕŸxuuÕÕ7Ïœõ≥pS √Ø*÷üLe‘L1ÕIÌ=äÏû9ª∂jD42 √Ä€íÅAçöt“ÊØâûπ¸~Ü ê-£fÜﬂó ˇ¿ˆÖ¬^ÚÆ©<
n,<:¨ºJå¨¬£ñlÁ∆eNbÀ>∏ø&Ô;ƒ·\&Ìñ-i«&j Ã£«¬´…ƒ,¬¿¬	‘ndÎêª„:'∑å™Iı ∑XÕÅ∏ßy’´bÎ8QìH_V	.&.fΩ∞Ç"†J)ÉÍo–ÃIn⁄1áÉ[∏t¡BØ:q„>%.#~ı f>-V>mq5€ê¨|†JYÎ™eØ–ÃâØ\Iá!sN‘/Y"ù6Cƒ4ñÅA®ûW≈ñGŒâïﬂîMÊäZñµ;.r	ä™özV,yÅfNT·,à{òò≠\›löW
ªñrJπ10)Û)πqÀ9àôG
È20òLõkÍÏ+ )ØÁUæË)ö9~Ÿ°Ê0≥ÚgLô©í?_‘µLP/JD”Wﬁ-K¬!ìAƒœ"•±†ΩYŸ»IF≈ÿ¬3´t·#4s‹ª ˛
û},dŒ±òÈõìzßŸ5ØVÀ[ ÿŒÈR+ÊQÈ^Ÿ”∞jUÚ YÆ™πÿîÃΩèféKtƒ=lÃÃ¨`¿œœkÌÊí‹‹ö–‘ò“‹[YÓWdÂìeYÓ’D—ı€g›@3«9≤_sXXXôYŸŸ¯∏˘$˘DdE•Åpäk*‡·„>™:ñÓI›¿‹ÑnNT5ƒ_°`}6ÁD‰ÇS1ãœƒKå•g+v‹Öò4DŸ–	h0…˝« é·ï∞pffeafb·‰‚óWPó–0ñ’∂4tOŒû4DP\Œ;}*VC@ÊÑîAÃaeeÊdÂa„„óóUóQ—W‘wR6t7ı- ö£ÆoÁï6ó!»ÊÄ+Fv.n.!	ai5yUcoÎ õ† ¥ñ}Œq-x˚¿b†9@ƒ'(),£,´b®®c´fÏahe‚ùm\t–`±Ä«à9v¡%a¿Är¢r˚–2˚ê«ÿ«ËFØ§	EãÒ —”N              J Preview ˇ∆   BTNEXIT ˇ BTNENHLib4.BtnEnh ı
  ¡—. -LB	 Ñ    ”  4  B   ˇ˛ˇ  R„ëèŒù„ ™ K∏Q   º¿‘ Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇE : \ B I \ I C O \ e x i t . i c o ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        Ü          ˇˇˇˇ    n  6	  xú•‘}Le «q$‹‹∂a[Z^JÅåe¿x[õÚôdô3»"XBïŸÄ∫LBY(§–∞¢8¬[xÕ %∫92+ä¿(FT¨l§ctº˝±üOŒ†©Ÿ%ü‹s˜‰æ˜¥πªc|Æ•ôa„Æƒ·-œô16'∂Êüe˚Ã◊LÆ(ßc∏Ñ÷3,¢	ÜETªgØ˛ΩâBÃ~RTêæà˙_›D:¡¯øÕ˙$ÍÖëîÀ˝‘Or˝Ã~óÏÿˇßÂ11ı+ŸIjÆ)˝∆”Ù—"÷˚)»5á“–ßuGLCm¶Ù[ﬁwî_àb¿Íe
≤¸Õ1!a`Ddo‘XuINªˆ≠,j^¸k‹y÷Y^ÎK“œ4«§ƒ£•t£b{4º«‹µo˚Í‡”π˙@q<”–Üí~•F/1å“?
  RightToLeft = -1  'True
End

Attribute VB_Name = "rMemberRepView"

Private global_196 As Integer
Private global_198 As Integer
Private global_160 As Integer
Private global_226 As Integer
Private global_164 As Variant
Private global_156 As Integer
Private global_158 As Integer
Private global_152 As Long
Private global_134 As Integer
Private global_132 As Integer
Private global_136 As Variant

Private Sub DGSite_UnknownEvent_9 'F44D94
  'Data Table: 563044
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44C8B: Me.DGSite.Visible = False
  loc_F44CAA: If (Me.RecordCount > 0) Then
  loc_F44CE9:   Set var_B4 = Me.txtSite
  loc_F44CEF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44CF7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F44D2A:   var_B0 = Me.Fields.Item("Name")
  loc_F44D49:   Set var_B4 = Me.txtSite
  loc_F44D4F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44D57:   var_B8.Text = CStr(var_B0.Value)
  loc_F44D6D: End If
  loc_F44D78: Set var_A8 = Me.txtSite
  loc_F44D7E: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F44D86: var_B0.SetFocus
  loc_F44D92: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FFBB68
  'Data Table: 563044
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FFB979: Set var_88 = Me.Check1
  loc_FFB97F: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB99D: If (CLng(var_8C.Value) = 0) Then
  loc_FFB9AE:   Set var_88 = Me.GridSel
  loc_FFB9B4:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB9BC:   var_8C.Enabled = True
  loc_FFB9D2:   Set var_88 = Me.GridSel
  loc_FFB9D8:   Call 0.Method_Check1_Click0 (Index)
  loc_FFB9F9:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFBA0F:     Set var_88 = Me.GridSel
  loc_FFBA15:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFBA1D:     var_8C.Row = 1
  loc_FFBA3C:     Set var_88 = Me.GridSel
  loc_FFBA42:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFBA4A:     var_8C.Col = 0
  loc_FFBA56:   End If
  loc_FFBA59: Else
  loc_FFBA68:   Set var_88 = Me.GridSel
  loc_FFBA6E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFBA76:   var_8C.Enabled = False
  loc_FFBA8C:   Set var_88 = Me.GridSel
  loc_FFBA92:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFBAB3:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFBAC9:     Set var_88 = Me.GridSel
  loc_FFBACF:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFBAF6:     Set var_88 = Me.GridSel
  loc_FFBAFC:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFBB04:     var_8C.Col = 0
  loc_FFBB1A:     Set var_88 = Me.GridSel
  loc_FFBB20:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFBB37:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FFBB46:     Set var_C4 = Me.GridSel
  loc_FFBB4C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FFBB54:     var_C8.RowSel = 0
  loc_FFBB67:   End If
  loc_FFBB67: End If
  loc_FFBB67: Exit Sub
End Sub

Private Sub Check1_GotFocus() 'DFC654
  'Data Table: 563044
  loc_DFC650: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E24A84
  'Data Table: 563044
  loc_E24A6A: If (Shift = &HD) Then
  loc_E24A7B:   Proc_303_0_FBACC8("	")
  loc_E24A83: End If
  loc_E24A83: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'DFC008
  'Data Table: 563044
  Dim arg_383D As Boolean
  loc_DFC004: Exit Sub
  loc_DFC005: arg_383D = True
End Sub

Private Sub GridSel_UnknownEvent_0 'DFD4C0
  'Data Table: 563044
  Dim arg_7FFF As Double
  loc_DFD4BC: Exit Sub
  loc_DFD4BD: arg_7FFF = 
End Sub

Private Sub GridSel_UnknownEvent_8 'DFBF6C
  'Data Table: 563044
  Dim arg_21FF As Double
  loc_DFBF68: Exit Sub
  loc_DFBF69: arg_21FF = 
End Sub

Private Sub GridSel_UnknownEvent_A '118F85C
  'Data Table: 563044
  Dim var_98 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_118F492: If (arg_10 = &HD) Then
  loc_118F4A3:   Proc_303_0_FBACC8("	")
  loc_118F4AB: End If
  loc_118F4B5: Set var_94 = Me.GridSel
  loc_118F4BB: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_118F4DC: If (CLng(var_98.Rows) < 1) Then
  loc_118F4DF:   Exit Sub
  loc_118F4E0: End If
  loc_118F4F4: Set var_94 = Me.GridSel
  loc_118F4FA: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_118F51C: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_118F52F:   Set var_94 = Me.GridSel
  loc_118F535:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_118F53D:   var_98.CellFontName = "WINGDINGS"
  loc_118F55B:   Set var_94 = Me.GridSel
  loc_118F561:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_118F569:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_118F57F:   Set var_94 = Me.GridSel
  loc_118F585:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_118F596:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_118F5AE:   Set var_CC = Me.GridSel
  loc_118F5B4:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_D0, 0)
  loc_118F5BC:   var_100 = var_D0.TextMatrix)
  loc_118F5D2:   Set var_164 = Me.GridSel
  loc_118F5D8:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_168, var_100)
  loc_118F5E9:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_118F637:   Set var_17C = Me.GridSel
  loc_118F63D:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_180, CVar(CStr(IIf((CStr(var_100) = "¸"), " ", "¸"))), 0)
  loc_118F645:   LateIdCallSt
  loc_118F679:   var_1E2 = Cancel
  loc_118F682:   If (var_1E2 = 1) Then
  loc_118F696:     var_86 = CInt((UBound(global_180, 1) + 1))
  loc_118F6A8:     ReDim Preserve global_180(0 To CLng(var_86))
  loc_118F6BC:     Set var_94 = Me.GridSel
  loc_118F6C2:     Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_1E2)
  loc_118F6DE:     global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_118F6EC:   Else
  loc_118F6F2:     If (var_1E2 = 2) Then
  loc_118F706:       var_86 = CInt((UBound(global_184, 1) + 1))
  loc_118F718:       ReDim Preserve global_184(0 To CLng(var_86))
  loc_118F72C:       Set var_94 = Me.GridSel
  loc_118F732:       Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_180)
  loc_118F74E:       global_184(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_118F75C:     Else
  loc_118F762:       If (var_1E2 = 3) Then
  loc_118F776:         var_86 = CInt((UBound(global_188, 1) + 1))
  loc_118F788:         ReDim Preserve global_188(0 To CLng(var_86))
  loc_118F79C:         Set var_94 = Me.GridSel
  loc_118F7A2:         Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_118F7BE:         global_188(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_118F7CC:       Else
  loc_118F7D2:         If (var_1E2 = 4) Then
  loc_118F7E6:           var_86 = CInt((UBound(global_192, 1) + 1))
  loc_118F7F8:           ReDim Preserve global_192(0 To CLng(var_86))
  loc_118F80C:           Set var_94 = Me.GridSel
  loc_118F812:           Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_118F81A:           var_A8 = var_98.Row
  loc_118F82E:           global_192(CLng(var_86)) = CInt(CLng(var_A8))
  loc_118F839:         End If
  loc_118F839:       End If
  loc_118F839:     End If
  loc_118F839:   End If
  loc_118F844:   If (global_52 = "MemBirthAnnvDtls") Then
  loc_118F84D:     If (Cancel = 1) Then
  loc_118F853:       Call Proc_292_99_1159884(var_A8, var_190)
  loc_118F85B:     End If
  loc_118F85B:   End If
  loc_118F85B: End If
  loc_118F85B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '1137B10
  'Data Table: 563044
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_11377AA: Set var_88 = Me.GridSel
  loc_11377B0: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel)
  loc_11377D1: Set var_A0 = Me.GridSel
  loc_11377D7: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_A4)
  loc_1137801: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1137804:   Exit Sub
  loc_1137805: End If
  loc_1137808: var_B6 = Cancel
  loc_1137811: If (var_B6 = 1) Then
  loc_113782C:   Set var_88 = Me.GridSel
  loc_1137832:   Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C)
  loc_113783A:   var_9C = var_8C.Col
  loc_11378A4:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_11378C5: Else
  loc_11378CB:   If (var_B6 = 2) Then
  loc_11378E6:     Set var_88 = Me.GridSel
  loc_11378EC:     Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_11378F4:     var_9C = var_8C.Col
  loc_113795E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_113797F:   Else
  loc_1137985:     If (var_B6 = 3) Then
  loc_11379A0:       Set var_88 = Me.GridSel
  loc_11379A6:       Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_11379AE:       var_9C = var_8C.Col
  loc_1137A18:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_112, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137A39:     Else
  loc_1137A3F:       If (var_B6 = 4) Then
  loc_1137A5A:         Set var_88 = Me.GridSel
  loc_1137A60:         Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1137AD2:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_116, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137AF0:       End If
  loc_1137AF0:     End If
  loc_1137AF0:   End If
  loc_1137AF0: End If
  loc_1137B02: Me.TxtSearch.Tag = CStr(Cancel)
  loc_1137B0D: Exit Sub
  loc_1137B0E: var_9C = var_3301
End Sub

Private Sub GridSel_UnknownEvent_E 'E81888
  'Data Table: 563044
  Dim var_8C As MSHFlexGrid
  loc_E8182A: Set var_88 = Me.GridSel
  loc_E81830: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel)
  loc_E81851: If (CLng(var_8C.Col) <> 0) Then
  loc_E81854:   Exit Sub
  loc_E81855: End If
  loc_E8185F: Set var_88 = Me.GridSel
  loc_E81865: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel, var_8C)
  loc_E8187A: global_196 = CInt(CLng(var_8C.Row))
  loc_E81887: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '118DAB4
  'Data Table: 563044
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_118D6D6: Set var_8C = Me.GridSel
  loc_118D6DC: Call 0.Method_GridSel_UnknownEvent_100 (Cancel)
  loc_118D707: If ((CLng(var_90.Col) <> 0) Or (global_196 = 0)) Then
  loc_118D70A:   Exit Sub
  loc_118D70B: End If
  loc_118D715: Set var_8C = Me.GridSel
  loc_118D71B: Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_118D730: global_198 = CInt(CLng(var_90.RowSel))
  loc_118D74C: For var_A4 = global_196 To global_198: var_88 = var_A4 'Integer
  loc_118D765:   Set var_8C = Me.GridSel
  loc_118D76B:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, CVar(CLng(var_88)))
  loc_118D773:   var_90.Row = global_196
  loc_118D792:   Set var_8C = Me.GridSel
  loc_118D798:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_118D7A0:   var_90.Col = global_198
  loc_118D7BC:   Set var_8C = Me.GridSel
  loc_118D7C2:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_118D7CA:   var_90.CellFontName = "WINGDINGS"
  loc_118D7E8:   Set var_8C = Me.GridSel
  loc_118D7EE:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_118D7F6:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_118D806:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_118D81E:   Set var_8C = Me.GridSel
  loc_118D824:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_118D83C:   var_160 = CVar(CLng(var_88)) 'Long
  loc_118D88A:   Set var_14C = Me.GridSel
  loc_118D890:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "¸"), " ", "¸"))), 0)
  loc_118D898:   LateIdCallSt
  loc_118D8C0:   var_1B2 = Cancel
  loc_118D8C9:   If (var_1B2 = 1) Then
  loc_118D8DD:     var_86 = CInt((UBound(global_180, 1) + 1))
  loc_118D8EF:     ReDim Preserve global_180(0 To CLng(var_86))
  loc_118D903:     Set var_8C = Me.GridSel
  loc_118D909:     Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_1B2, var_150)
  loc_118D925:     global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_118D933:   Else
  loc_118D939:     If (var_1B2 = 2) Then
  loc_118D94D:       var_86 = CInt((UBound(global_184, 1) + 1))
  loc_118D95F:       ReDim Preserve global_184(0 To CLng(var_86))
  loc_118D973:       Set var_8C = Me.GridSel
  loc_118D979:       Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_160)
  loc_118D995:       global_184(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_118D9A3:     Else
  loc_118D9A9:       If (var_1B2 = 3) Then
  loc_118D9BD:         var_86 = CInt((UBound(global_188, 1) + 1))
  loc_118D9CF:         ReDim Preserve global_188(0 To CLng(var_86))
  loc_118D9E3:         Set var_8C = Me.GridSel
  loc_118D9E9:         Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_118DA05:         global_188(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_118DA13:       Else
  loc_118DA19:         If (var_1B2 = 4) Then
  loc_118DA2D:           var_86 = CInt((UBound(global_192, 1) + 1))
  loc_118DA3F:           ReDim Preserve global_192(0 To CLng(var_86))
  loc_118DA53:           Set var_8C = Me.GridSel
  loc_118DA59:           Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_118DA61:           var_A0 = var_90.Row
  loc_118DA75:           global_192(CLng(var_86)) = CInt(CLng(var_A0))
  loc_118DA80:         End If
  loc_118DA80:       End If
  loc_118DA80:     End If
  loc_118DA80:   End If
  loc_118DA83: Next var_A4 'Integer
  loc_118DA93: If (global_52 = "MemBirthAnnvDtls") Then
  loc_118DA9C:   If (Cancel = 1) Then
  loc_118DAA2:     Call Proc_292_99_1159884(var_A0)
  loc_118DAAA:   End If
  loc_118DAAA: End If
  loc_118DAAF: global_196 = 0
  loc_118DAB2: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'DFD320
  'Data Table: 563044
  Dim arg_D3D As Boolean
  loc_DFD31C: Exit Sub
  loc_DFD31D: arg_D3D = True
End Sub

Private Sub GridSel_UnknownEvent_14 'DFD388
  'Data Table: 563044
  loc_DFD384: Exit Sub
  loc_DFD385: ThisVCallAd
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '16D6D20
  'Data Table: 563044
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim unk_56304A As Connection15
  Dim var_BC As Variant
  Dim var_94 As Recordset15
  Dim var_D4 As String
  Dim var_C4 As Fields15
  Dim var_128 As Variant
  Dim var_108 As String
  Dim var_C0 As String
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953D0 As String
  Dim var_13C As String
  Dim var_118 As Variant
  loc_16D52E4: On Error Goto loc_16D6D1A
  loc_16D52EC: global_160 = &HFF
  loc_16D52F3: Set var_98 = Me.FGrid1
  loc_16D52F9: var_A8 = var_98.DataSource
  loc_16D5315: If (var_A8 Is Nothing) Then
  loc_16D5318:   Exit Sub
  loc_16D5319: End If
  loc_16D532F: unk_56304A.Execute "Select * From FAEnviro", var_A8, -1
  loc_16D533A: Set var_94 = var_98
  loc_16D5352: var_98 = var_94.Fields
  loc_16D53B6: var_138 = IIf((Proc_6_38_E69628(CVar(var_98.Item("daterfill")), var_98) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_16D53BF: MemVar_1F953C4 = CStr(var_138)
  loc_16D5453: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_16D545C: MemVar_1F953C8 = CStr(var_138)
  loc_16D54F0: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_16D551D: var_BC = "linefiller"
  loc_16D5531: var_AC = var_94.Fields.Item(var_BC)
  loc_16D5548: var_D4 = "linefiller"
  loc_16D5570: var_108 = "-"
  loc_16D558D: var_138 = IIf((Proc_6_38_E69628(CVar(var_AC), CStr(var_138)) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item(var_D4)))))
  loc_16D5596: MemVar_1F953D0 = CStr(var_138)
  loc_16D55C9: var_140 = CStr(Me.FGrid1.Tag)
  loc_16D55DA: If (var_140 = "MemVisitDetail") Then
  loc_16D55E0:   var_88 = "MemVisitDetail"
  loc_16D55E9:   global_120 = "Member Visit Detail"
  loc_16D55F0: Else
  loc_16D55F8:   If (var_140 = "MemMalingLabels") Then
  loc_16D55FE:     var_88 = "MemMalingLabels"
  loc_16D5607:     global_120 = "Members Mailing Labels Report"
  loc_16D560E:   Else
  loc_16D5616:     If (var_140 = "MemSalesRegister") Then
  loc_16D561C:       var_88 = "MemSalesRegister"
  loc_16D5625:       global_120 = "Member Sales Register"
  loc_16D562C:     Else
  loc_16D5634:       If (var_140 = "MemTaxReport") Then
  loc_16D563A:         var_88 = "MemTaxReport"
  loc_16D5643:         global_120 = "Member Tax Report"
  loc_16D564A:       Else
  loc_16D5652:         If (var_140 = "PaymentDueLetterReport") Then
  loc_16D5658:           var_88 = "PaymentDueLetterReport"
  loc_16D5661:           global_120 = "Payment Due Letter Report"
  loc_16D5668:         Else
  loc_16D5670:           If (var_140 = "MemBirthAnnvDtls") Then
  loc_16D5676:             var_88 = "MemBirthAnnvDtls"
  loc_16D567F:             global_120 = "Member Birthday/Anniversary Details"
  loc_16D5686:           Else
  loc_16D568E:             If (var_140 = "MemBirthMailLabel") Then
  loc_16D5694:               var_88 = "MemBirthMailLabel"
  loc_16D569D:               global_120 = "Member Birthday/Anniversary Details"
  loc_16D56A1:             End If
  loc_16D56A1:           End If
  loc_16D56A1:         End If
  loc_16D56A1:       End If
  loc_16D56A1:     End If
  loc_16D56A1:   End If
  loc_16D56A1: End If
  loc_16D56AA: If (global_160 = 0) Then
  loc_16D56AD:   Exit Sub
  loc_16D56AE: End If
  loc_16D56B2: Set var_98 = Me.FGrid1
  loc_16D56EF: Set var_C4 = var_98.DataSource
  loc_16D56F5: CreateFieldDefFile(var_C4, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_16D5723: var_C0 = "\" & var_88
  loc_16D5737: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C0 & ".RPT", var_BC, var_98)
  loc_16D5742: MemVar_1F951E8 = var_98
  loc_16D575E: Set var_98 = Me.FGrid1
  loc_16D5764: var_A8 = var_98.DataSource
  loc_16D576F: CVarUnk
  loc_16D577D: Call 0.Method_arg_64 (var_AC, var_A8, var_BC, var_D4)
  loc_16D5785: Call 0.Method_arg_2C (var_A8, MemVar_1F953D0)
  loc_16D579E: Call 0.Method_arg_150 (global_160)
  loc_16D57B4: Call 0.Method_arg_90 (var_98, var_14C)
  loc_16D57BC: Call 0.Method_arg_24 (var_8A)
  loc_16D57C8: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_16D57E1:   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D57E9:   Call 0.Method_arg_20 (var_AC)
  loc_16D57F1:   Call 0.Method_arg_30 (var_C0)
  loc_16D5807:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_16D5837:   If (var_160 = Ucase("comp_name")) Then
  loc_16D585B:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5863:     Call 0.Method_arg_20 (var_AC)
  loc_16D586B:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_16D5881:   Else
  loc_16D58A3:     If (var_160 = Ucase("comp_add1")) Then
  loc_16D58C7:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D58CF:       Call 0.Method_arg_20 (var_AC)
  loc_16D58D7:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_16D58ED:     Else
  loc_16D590F:       If (var_160 = Ucase("comp_pin")) Then
  loc_16D5933:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D593B:         Call 0.Method_arg_20 (var_AC)
  loc_16D5943:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_16D5959:       Else
  loc_16D597B:         If (var_160 = Ucase("comp_GSTIN")) Then
  loc_16D5985:           var_C0 = "'" & MemVar_1F95154
  loc_16D599F:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D59A7:           Call 0.Method_arg_20 (var_AC)
  loc_16D59AF:           Call 0.Method_arg_38 (var_C0 & "'")
  loc_16D59C5:         Else
  loc_16D59E7:           If (var_160 = Ucase("Title")) Then
  loc_16D59F3:             Call 0.Method_arg_50 (var_C0)
  loc_16D5A16:             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5A1E:             Call 0.Method_arg_20 (var_AC)
  loc_16D5A26:             Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_16D5A3E:           Else
  loc_16D5A60:             If (var_160 = Ucase("BetweenDate")) Then
  loc_16D5A6D:               Set var_98 = Me.Text1
  loc_16D5A96:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_16D5A9E:               Call 0.Method_arg_20 (var_C4)
  loc_16D5AA6:               Call 0.Method_arg_38 ("'" & var_98.Text & "'")
  loc_16D5AC0:             Else
  loc_16D5AE2:               If (var_160 = Ucase("Dater")) Then
  loc_16D5B06:                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5B0E:                 Call 0.Method_arg_20 (var_AC)
  loc_16D5B16:                 Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_16D5B2C:               Else
  loc_16D5B4E:                 If (var_160 = Ucase("Pager")) Then
  loc_16D5B58:                   var_C0 = "'" & MemVar_1F953C8
  loc_16D5B72:                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5B7A:                   Call 0.Method_arg_20 (var_AC)
  loc_16D5B82:                   Call 0.Method_arg_38 (var_C0 & "'")
  loc_16D5B95:                 End If
  loc_16D5B95:               End If
  loc_16D5B95:             End If
  loc_16D5B95:           End If
  loc_16D5B95:         End If
  loc_16D5B95:       End If
  loc_16D5B95:     End If
  loc_16D5B95:   End If
  loc_16D5B98: Next var_150 'Integer
  loc_16D5BA1: Set var_98 = Me.FGrid1
  loc_16D5BAF: var_168 = CStr(var_98.Tag)
  loc_16D5BC0: If (var_168 = "MemSalesRegister") Then
  loc_16D5BD4:   Call 0.Method_arg_90 (var_98, var_14C)
  loc_16D5BDC:   Call 0.Method_arg_24 (var_8A)
  loc_16D5BE8:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_16D5C01:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5C09:     Call 0.Method_arg_20 (var_AC)
  loc_16D5C11:     Call 0.Method_arg_30 (var_C0)
  loc_16D5C27:     var_17C = Ucase(CVar(var_C0)) 'Variant
  loc_16D5C57:     If (var_17C = Ucase("ForCategory")) Then
  loc_16D5C61:       Set var_98 = Me.Text2
  loc_16D5C90:       var_128 = "'" & Left(CVar(var_98.Text), &H96) & "'" 
  loc_16D5CA8:       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_16D5CB0:       Call 0.Method_arg_20 (var_C4)
  loc_16D5CB8:       Call 0.Method_arg_38 (CStr(var_128))
  loc_16D5CD7:     Else
  loc_16D5CF9:       If (var_17C = Ucase("ShortNameDetail")) Then
  loc_16D5D3D:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5D45:         Call 0.Method_arg_20 (var_AC)
  loc_16D5D4D:         Call 0.Method_arg_38 (CStr("'" & Left(global_220, &HFE) & "'"))
  loc_16D5D68:       Else
  loc_16D5D8A:         If (var_17C = Ucase("Tax1")) Then
  loc_16D5DD5:           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5DDD:           Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5DE5:           Call 0.Method_arg_38 ("'")
  loc_16D5E02:         Else
  loc_16D5E24:           If (var_17C = Ucase("Tax2")) Then
  loc_16D5E6F:             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5E77:             Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5E7F:             Call 0.Method_arg_38 ("'")
  loc_16D5E9C:           Else
  loc_16D5EBE:             If (var_17C = Ucase("Tax3")) Then
  loc_16D5F09:               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5F11:               Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5F19:               Call 0.Method_arg_38 ("'")
  loc_16D5F36:             Else
  loc_16D5F58:               If (var_17C = Ucase("Tax4")) Then
  loc_16D5FA3:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5FAB:                 Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5FB3:                 Call 0.Method_arg_38 ("'")
  loc_16D5FD0:               Else
  loc_16D5FF2:                 If (var_17C = Ucase("Tax5")) Then
  loc_16D603D:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D6045:                   Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D604D:                   Call 0.Method_arg_38 ("'")
  loc_16D606A:                 Else
  loc_16D608C:                   If (var_17C = Ucase("Tax6")) Then
  loc_16D60D7:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D60DF:                     Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D60E7:                     Call 0.Method_arg_38 ("'")
  loc_16D6104:                   Else
  loc_16D6126:                     If (var_17C = Ucase("Tax7")) Then
  loc_16D6171:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D6179:                       Call 0.Method_arg_20 (&HF & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6181:                       Call 0.Method_arg_38 ("'")
  loc_16D619E:                     Else
  loc_16D61C0:                       If (var_17C = Ucase("Tax8")) Then
  loc_16D620B:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D6213:                         Call 0.Method_arg_20 (&H10 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D621B:                         Call 0.Method_arg_38 ("'")
  loc_16D6235:                       End If
  loc_16D6235:                     End If
  loc_16D6235:                   End If
  loc_16D6235:                 End If
  loc_16D6235:               End If
  loc_16D6235:             End If
  loc_16D6235:           End If
  loc_16D6235:         End If
  loc_16D6235:       End If
  loc_16D6235:     End If
  loc_16D6238:   Next var_16C 'Integer
  loc_16D6243:   If (Cancel = 1) Then
  loc_16D6253:     ReDim Preserve var_90(0 To 1)
  loc_16D6288:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_16D629F:     Set var_98 = Me.Text2
  loc_16D62A5:     var_C0 = var_98.Text
  loc_16D62C0:     var_90(1) = vbNullString & var_C0 & vbNullString
  loc_16D62CD:   End If
  loc_16D62D0: Else
  loc_16D62D8:   If (var_168 = "MemTaxReport") Then
  loc_16D62EC:     Call 0.Method_arg_90 (var_98, var_14C)
  loc_16D62F4:     Call 0.Method_arg_24 (var_8A)
  loc_16D6300:     For var_180 =  To CInt(var_14C):   1 = var_180 'Integer
  loc_16D6319:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D6321:       Call 0.Method_arg_20 (var_AC)
  loc_16D6329:       Call 0.Method_arg_30 (var_C0)
  loc_16D633F:       var_190 = Ucase(CVar(var_C0)) 'Variant
  loc_16D636F:       If (var_190 = Ucase("ForTax")) Then
  loc_16D637C:         Set var_98 = Me.Text2
  loc_16D63A5:         Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_16D63AD:         Call 0.Method_arg_20 (var_C4)
  loc_16D63B5:         Call 0.Method_arg_38 ("'" & var_98.Text & "'")
  loc_16D63CF:       Else
  loc_16D63F1:         If (var_190 = Ucase("ShortNameDetail")) Then
  loc_16D641D:           var_118 = "'" & Left(global_220, &HFE) & "'" 
  loc_16D6435:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D643D:           Call 0.Method_arg_20 (var_AC)
  loc_16D6445:           Call 0.Method_arg_38 (CStr(var_118))
  loc_16D6460:         Else
  loc_16D6482:           If (var_190 = Ucase("Chrg1")) Then
  loc_16D64CD:             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D64D5:             Call 0.Method_arg_20 (4 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D64DD:             Call 0.Method_arg_38 ("'")
  loc_16D64FA:           Else
  loc_16D651C:             If (var_190 = Ucase("Chrg2")) Then
  loc_16D6567:               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D656F:               Call 0.Method_arg_20 (5 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6577:               Call 0.Method_arg_38 ("'")
  loc_16D6594:             Else
  loc_16D65B6:               If (var_190 = Ucase("Chrg3")) Then
  loc_16D6601:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D6609:                 Call 0.Method_arg_20 (6 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6611:                 Call 0.Method_arg_38 ("'")
  loc_16D662E:               Else
  loc_16D6650:                 If (var_190 = Ucase("Chrg4")) Then
  loc_16D669B:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D66A3:                   Call 0.Method_arg_20 (7 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D66AB:                   Call 0.Method_arg_38 ("'")
  loc_16D66C8:                 Else
  loc_16D66EA:                   If (var_190 = Ucase("Chrg5")) Then
  loc_16D6735:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D673D:                     Call 0.Method_arg_20 (8 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6745:                     Call 0.Method_arg_38 ("'")
  loc_16D6762:                   Else
  loc_16D6784:                     If (var_190 = Ucase("Chrg6")) Then
  loc_16D67CF:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D67D7:                       Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D67DF:                       Call 0.Method_arg_38 ("'")
  loc_16D67FC:                     Else
  loc_16D681E:                       If (var_190 = Ucase("Chrg7")) Then
  loc_16D6869:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D6871:                         Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6879:                         Call 0.Method_arg_38 ("'")
  loc_16D6896:                       Else
  loc_16D68B8:                         If (var_190 = Ucase("Chrg8")) Then
  loc_16D6903:                           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D690B:                           Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6913:                           Call 0.Method_arg_38 ("'")
  loc_16D6930:                         Else
  loc_16D6952:                           If (var_190 = Ucase("Chrg9")) Then
  loc_16D699D:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D69A5:                             Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D69AD:                             Call 0.Method_arg_38 ("'")
  loc_16D69CA:                           Else
  loc_16D69EC:                             If (var_190 = Ucase("Chrg10")) Then
  loc_16D6A37:                               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D6A3F:                               Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6A47:                               Call 0.Method_arg_38 ("'")
  loc_16D6A64:                             Else
  loc_16D6A86:                               If (var_190 = Ucase("ChrgOther")) Then
  loc_16D6AD1:                                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D6AD9:                                 Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D6AE1:                                 Call 0.Method_arg_38 ("'")
  loc_16D6AFB:                               End If
  loc_16D6AFB:                             End If
  loc_16D6AFB:                           End If
  loc_16D6AFB:                         End If
  loc_16D6AFB:                       End If
  loc_16D6AFB:                     End If
  loc_16D6AFB:                   End If
  loc_16D6AFB:                 End If
  loc_16D6AFB:               End If
  loc_16D6AFB:             End If
  loc_16D6AFB:           End If
  loc_16D6AFB:         End If
  loc_16D6AFB:       End If
  loc_16D6AFE:     Next var_180 'Integer
  loc_16D6B09:     If (Cancel = 1) Then
  loc_16D6B19:       ReDim Preserve var_90(0 To 1)
  loc_16D6B4E:       var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_16D6B86:       var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_16D6B93:     End If
  loc_16D6B93:   End If
  loc_16D6B93: End If
  loc_16D6B99: If (Cancel = 1) Then
  loc_16D6BBF:   If (CStr(Me.FGrid1.Tag) = "MemSalesRegister") Then
  loc_16D6BDD:     var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_16D6BF9:     If (MsgBox(var_A8, &H41, "Paper Setting", var_118, var_128) = 2) Then
  loc_16D6BFC:       Exit Sub
  loc_16D6BFD:     End If
  loc_16D6C09:     var_13C = 0
  loc_16D6C12:     var_C0 = "C"
  loc_16D6C2D:     Proc_34_0_14D9290(var_A8, Me.FGrid1, global_120)
  loc_16D6C46:   Else
  loc_16D6C61:     var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_16D6C7D:     If (MsgBox(var_A8, &H41, "Paper Setting", var_118, var_128) = 2) Then
  loc_16D6C80:       Exit Sub
  loc_16D6C81:     End If
  loc_16D6C8D:     var_13C = 0
  loc_16D6CB1:     Proc_34_0_14D9290(var_A8, Me.FGrid1, global_120, var_90, "N")
  loc_16D6CC7:   End If
  loc_16D6CCA: Else
  loc_16D6CE6:   Set var_98 = MemVar_1F951E8 
  loc_16D6CF2:   Proc_6_99_1484404(var_98, Cancel, global_120, &HFF, Nothing)
  loc_16D6CFD:   MemVar_1F951E8 = var_98
  loc_16D6D08: End If
  loc_16D6D0D: global_226 = 0
  loc_16D6D15: MemVar_1F951E8 = Nothing
  loc_16D6D19: Exit Sub
  loc_16D6D1A: ' Referenced from: 16D52E4
  loc_16D6D1A: Proc_6_60_E63754(global_226, var_13C, var_90)
  loc_16D6D1F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 'E1C1F4
  'Data Table: 563044
  loc_E1C1E0: Set var_88 = Me.FGrid1
  loc_E1C1F1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'DFBFA0
  'Data Table: 563044
  loc_DFBF9C: Exit Sub
  loc_DFBF9D: Exit Sub
End Sub

Private Sub txtSite_GotFocus(Index As Integer) 'FCBF64
  'Data Table: 563044
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  loc_FCBDC4: On Error Goto loc_FCBF39
  loc_FCBDCA: var_8A = Index
  loc_FCBDD5: If (var_8A = CInt(0)) Then
  loc_FCBE26:   Set var_98 = Me.txtSite
  loc_FCBE2C:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FCBE34:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FCBE4C:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FCBE4F:     Exit Sub
  loc_FCBE50:   End If
  loc_FCBE5D:   Set var_98 = Me.txtSite
  loc_FCBE63:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FCBE6B:   var_A0 = var_9C.Text
  loc_FCBE73:   var_D8 = CVar(var_A0) 'String
  loc_FCBEB8:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FCBEC1:     Me.MoveFirst
  loc_FCBEE6:     Set var_98 = Me.txtSite
  loc_FCBEEC:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FCBEF4:     0 = var_9C.Text
  loc_FCBF02:     Proc_6_17_EAAE40(var_D8, CVar(var_A0))
  loc_FCBF18:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FCBF30:   End If
  loc_FCBF30: End If
  loc_FCBF35: Set var_88 = Nothing
  loc_FCBF38: Exit Sub
  loc_FCBF39: ' Referenced from: FCBDC4
  loc_FCBF3F: Call 0.Method_arg_50 (var_A0)
  loc_FCBF47: var_100 = "txtSite_GotFocus"
  loc_FCBF54: Proc_6_152_10790A8(var_A0)
  loc_FCBF60: Exit Sub
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EFE344
  'Data Table: 563044
  loc_EFE280: On Error Goto loc_EFE319
  loc_EFE289: If (Shift = &HD) Then
  loc_EFE294:   var_88 = "	"
  loc_EFE29A:   Proc_303_0_FBACC8(var_88)
  loc_EFE2A2: End If
  loc_EFE2B0: If (KeyCode = CInt(0)) Then
  loc_EFE2CB:   Set var_A0 = Nothing
  loc_EFE2D6:   Set var_9C = Nothing
  loc_EFE304:   Proc_6_69_134A630(Me.DGSite, Me.txtSite, KeyCode, global_204, Shift, &HFF)
  loc_EFE318: End If
  loc_EFE318: Exit Sub
  loc_EFE319: ' Referenced from: EFE280
  loc_EFE31F: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EFE334: Proc_6_152_10790A8(var_88, "txtSite_KeyDown", 0)
  loc_EFE340: Exit Sub
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EC739C
  'Data Table: 563044
  loc_EC7304: On Error Goto loc_EC7371
  loc_EC7315: If (KeyAscii = CInt(0)) Then
  loc_EC7334:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EC7346:     var_A0 = "Name"
  loc_EC7361:     Proc_6_89_1470B00(Me.txtSite, KeyAscii, global_204, arg_10)
  loc_EC7370:   End If
  loc_EC7370: End If
  loc_EC7370: Exit Sub
  loc_EC7371: ' Referenced from: EC7304
  loc_EC7377: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EC738C: Proc_6_152_10790A8(var_A0, "txtSite_KeyPress")
  loc_EC7398: Exit Sub
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDFB40
  'Data Table: 563044
  loc_EDFA90: On Error Goto loc_EDFB17
  loc_EDFAA1: If (KeyCode = CInt(0)) Then
  loc_EDFAC7:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDFAD8:     Call txtSite_KeyDown(KeyCode, global_156)
  loc_EDFAEC:     var_A4 = "Name"
  loc_EDFB07:     Proc_6_89_1470B00(Me.txtSite, KeyCode, global_204, Shift)
  loc_EDFB16:   End If
  loc_EDFB16: End If
  loc_EDFB16: Exit Sub
  loc_EDFB17: ' Referenced from: EDFA90
  loc_EDFB1D: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDFB32: Proc_6_152_10790A8(var_A4, "txtSite_KeyUp")
  loc_EDFB3E: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E898C4
  'Data Table: 563044
  loc_E89858: On Error Goto loc_E8989B
  loc_E89863: Call txtSite_Validate(Index)
  loc_E89883: If (Me.FrmList.Visible = &HFF) Then
  loc_E89892:   Me.FrmList.Visible = False
  loc_E8989A: End If
  loc_E8989A: Exit Sub
  loc_E8989B: ' Referenced from: E89858
  loc_E898A1: Call 0.Method_arg_50 (var_90)
  loc_E898B6: Proc_6_152_10790A8(var_90, "txtSite_LostFocus")
  loc_E898C2: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FDADDC
  'Data Table: 563044
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FDAC14: On Error Goto loc_FDADB3
  loc_FDAC1A: var_86 = Cancel
  loc_FDAC25: If (var_86 = CInt(0)) Then
  loc_FDAC76:   Set var_94 = Me.txtSite
  loc_FDAC7C:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FDAC84:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FDAC9C:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FDACAD:     Set var_94 = Me.txtSite
  loc_FDACB3:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FDACBB:     var_98.Tag = vbNullString
  loc_FDACD5:     Set var_94 = Me.txtSite
  loc_FDACDB:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FDACE3:     var_98.Text = vbNullString
  loc_FDACF2:   Else
  loc_FDAD2E:     Set var_B0 = Me.txtSite
  loc_FDAD34:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FDAD3C:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FDAD80:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FDAD8E:     Set var_B0 = Me.txtSite
  loc_FDAD94:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FDAD9C:     var_B4.Tag = var_9C
  loc_FDADB2:   End If
  loc_FDADB2: End If
  loc_FDADB2: Exit Sub
  loc_FDADB3: ' Referenced from: FDAC14
  loc_FDADB9: Call 0.Method_arg_50 (var_9C)
  loc_FDADC1: var_CC = "txtSite_Validate"
  loc_FDADCE: Proc_6_152_10790A8(var_9C)
  loc_FDADDA: Exit Sub
End Sub

Private Sub LblRefresh_UnknownEvent_9 'F1BAB4
  'Data Table: 563044
  Dim var_A8 As Variant
  loc_F1B9C2: Me.FGrid1.Visible = True
  loc_F1B9D7: Set var_A8 = Me.BtnPrint
  loc_F1B9DD: Call 0.Method_LblRefresh_UnknownEvent_90 (3, var_AC)
  loc_F1B9E5: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000D(True)
  loc_F1B9FE: Set var_A8 = Me.BtnPrint
  loc_F1BA04: Call 0.Method_LblRefresh_UnknownEvent_90 (2, var_AC)
  loc_F1BA0C: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000D(True)
  loc_F1BA1C: Set var_A8 = Me.LblRefresh
  loc_F1BA22: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_69()
  loc_F1BA37: If (CLng(CInt()) = 1) Then
  loc_F1BA44:   Set var_A8 = Me.LblRefresh
  loc_F1BA4A:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_FFFFFDFA("Paramater")
  loc_F1BA5F:   Me.LblProcess.Caption = "Please Wait..."
  loc_F1BA71:   Me.LblProcess.Refresh
  loc_F1BA79:   Call Proc_292_83_1689778()
  loc_F1BA81: Else
  loc_F1BA8B:   Set var_A8 = Me.LblRefresh
  loc_F1BA91:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_FFFFFDFA("Refresh")
  loc_F1BAA6:   Me.LblProcess.Caption = " "
  loc_F1BAAE:   Call Proc_292_93_E24154()
  loc_F1BAB3: End If
  loc_F1BAB3: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '124F350
  'Data Table: 563044
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  loc_124EE2B: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124EE69: Set var_108 = Me.TxtGrid
  loc_124EE6F: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_124EE77: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_124EEB8: If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_124EEC1:   var_118 = global_52
  loc_124EECC:   If (var_118 = "MemMalingLabels") Then
  loc_124EEDC:     ReDim var_11C(0 To 2)
  loc_124EEF3:     var_11C(0) = "Residential Address"
  loc_124EF02:     var_11C(1) = "Workplace Address"
  loc_124EF11:     var_11C(2) = "Abroad Address"
  loc_124EF68:     Set global_200 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_124EF7C:   Else
  loc_124EF84:     If Not (var_118 = "MemSalesRegister") Then
  loc_124EF8F:       If (var_118 = "MemVisitDetail") Then
  loc_124EF92:       End If
  loc_124EF9F:       ReDim var_11C(0 To 1)
  loc_124EFB6:       var_11C(0) = "Yes"
  loc_124EFC5:       var_11C(1) = "No"
  loc_124F01C:       Set global_200 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_124F030:     Else
  loc_124F038:       If (var_118 = "PaymentDueLetterReport") Then
  loc_124F048:         ReDim var_11C(0 To 2)
  loc_124F05F:         var_11C(0) = "Article_26(a)"
  loc_124F06E:         var_11C(1) = "Article_26(b)"
  loc_124F07D:         var_11C(2) = "Article_23"
  loc_124F0D4:         Set global_200 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 3, Array(var_11C))
  loc_124F0E8:       Else
  loc_124F0F0:         If (var_118 = "MemBirthAnnvDtls") Then
  loc_124F100:           ReDim var_11C(0 To 1)
  loc_124F117:           var_11C(0) = "Report"
  loc_124F126:           var_11C(1) = "Mailing Label"
  loc_124F13D:           global_164 = Array(var_11C)
  loc_124F148:           Set var_108 = Me.ListView
  loc_124F163:           Set var_A0 = Me.TxtGrid
  loc_124F17D:           Set global_200 = Proc_6_66_F0048C(var_108, var_A0, Index, global_164, 2, global_164)
  loc_124F191:         Else
  loc_124F199:           If (var_118 = "MemTaxReport") Then
  loc_124F1A8:             Set var_8C = Me.TxtGrid
  loc_124F1AE:             Call 0.Method_TxtGrid_GotFocus0 (0, var_A0, var_124, global_164)
  loc_124F1B6:             3 = var_A0.Left
  loc_124F1CD:             Me.DGTax.Left = CVar(var_124)
  loc_124F1E7:             Set var_F4 = Me.TxtGrid
  loc_124F1ED:             Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_128)
  loc_124F1F5:             global_164 = var_108.Height
  loc_124F206:             Set var_8C = Me.TxtGrid
  loc_124F20C:             Call 0.Method_TxtGrid_GotFocus0 (0, var_A0, var_124)
  loc_124F214:             var_114 = var_A0.Top
  loc_124F220:             var_C0 = CVar((var_124 + var_128)) 'Single
  loc_124F22F:             Me.DGTax.Top = CVar(var_124)
  loc_124F24F:             Me.DGTax.Visible = True
  loc_124F257:           End If
  loc_124F257:         End If
  loc_124F257:       End If
  loc_124F257:     End If
  loc_124F257:   End If
  loc_124F25A: Else
  loc_124F261:   If (var_114 = CLng(3)) Then
  loc_124F275:     If (global_52 = "MemMalingLabels") Then
  loc_124F285:       ReDim var_11C(0 To 3)
  loc_124F29C:       var_11C(0) = "ConPerson"
  loc_124F2AB:       var_11C(1) = "City"
  loc_124F2BA:       var_11C(2) = "Name"
  loc_124F2C9:       var_11C(3) = "Pincode"
  loc_124F320:       Set global_200 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_124F331:     End If
  loc_124F334:   Else
  loc_124F33B:     If (var_114 = CLng(4)) Then
  loc_124F344:       var_130 = global_52
  loc_124F347:     End If
  loc_124F347:   End If
  loc_124F347: End If
  loc_124F34C: Set var_88 = Nothing
  loc_124F34F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '124FE94
  'Data Table: 563044
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_E8 As TextBox
  Dim var_F8 As TextBox
  loc_124F972: If (CLng(Shift) = &H1B) Then
  loc_124F981:   Set var_8C = Me.TxtGrid
  loc_124F987:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_124F9A0:   Set var_98 = Me.TxtGrid
  loc_124F9A6:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_124F9AE:   var_9C.Text = var_90.Tag
  loc_124F9CA:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_124F9D3:   Set var_8C = Me.FGrid
  loc_124F9EF:   Set var_8C = Me.TxtGrid
  loc_124F9F5:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_124F9FD:   var_90.Visible = FGrid.DispID_8001
  loc_124FA09:   Call Proc_292_86_EB754C(arg_14)
  loc_124FA0E:   Exit Sub
  loc_124FA0F: End If
  loc_124FA22: var_B0 = CLng(Me.FGrid.Row)
  loc_124FA32: If (var_B0 = CLng(2)) Then
  loc_124FA3B:   var_B4 = global_52
  loc_124FA46:   If (var_B4 = "MemTaxReport") Then
  loc_124FA52:     var_B8 = Me.RecordCount
  loc_124FA60:     If (var_B8 > 0) Then
  loc_124FA6D:       If (CLng(Shift) = &H1B) Then
  loc_124FA8C:         If (CBool(Me.DGTax.Visible) = &HFF) Then
  loc_124FA9E:           Me.DGTax.Visible = False
  loc_124FAA6:         End If
  loc_124FAA6:         Exit Sub
  loc_124FAA7:       End If
  loc_124FAB2:       Set var_E8 = Me.TxtGrid
  loc_124FABF:       Set var_9C = Nothing
  loc_124FAEB:       Set var_90 = var_E8
  loc_124FAFA:       Proc_6_69_134A630(Me.DGTax, var_90, 0, global_216, Shift, &HFF)
  loc_124FB31:       If ((Shift = &HD) And (CBool(Me.DGTax.Visible) = 0)) Then
  loc_124FB41:         Call Proc_292_84_125D7DC(0, 0, var_DE, 1)
  loc_124FB4C:         If (var_DE = &HFF) Then
  loc_124FB4F:           Call Proc_292_88_F00D7C(Nothing, var_9C)
  loc_124FB54:         End If
  loc_124FB54:       End If
  loc_124FB54:     End If
  loc_124FB57:   Else
  loc_124FB5F:     If Not (var_B4 = "MemSalesRegister") Then
  loc_124FB6A:       If Not (var_B4 = "MemVisitDetail") Then
  loc_124FB75:         If Not (var_B4 = "MemMalingLabels") Then
  loc_124FB80:           If Not (var_B4 = "PaymentDueLetterReport") Then
  loc_124FB8B:             If (var_B4 = "MemBirthAnnvDtls") Then
  loc_124FB8E:             End If
  loc_124FB8E:           End If
  loc_124FB8E:         End If
  loc_124FB8E:       End If
  loc_124FBAF:       Set var_8C = Me.TxtGrid
  loc_124FBB5:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_124FBBD:       0 = var_90.Left
  loc_124FBCE:       Set var_98 = Me.TxtGrid
  loc_124FBD4:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_124FBED:       Set var_E4 = Me.TxtGrid
  loc_124FBF3:       Call 0.Method_TxtGrid_KeyDown0 (0, var_E8)
  loc_124FC0C:       Set var_F4 = Me.TxtGrid
  loc_124FC12:       Call 0.Method_TxtGrid_KeyDown0 (0, var_F8)
  loc_124FC67:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_124FC95:       If (CLng(Shift) = &HD) Then
  loc_124FCA5:         Call Proc_292_84_125D7DC(0, 0, var_DE, CInt(var_B8))
  loc_124FCB0:         If (var_DE = &HFF) Then
  loc_124FCB3:           Call Proc_292_88_F00D7C(CInt(((var_9C.Top + var_E8.Height) + CDbl(&H19))), CInt(var_F8.Width))
  loc_124FCB8:         End If
  loc_124FCB8:       End If
  loc_124FCB8:     End If
  loc_124FCB8:   End If
  loc_124FCBB: Else
  loc_124FCC2:   If (var_B0 = CLng(3)) Then
  loc_124FCD6:     If (global_52 = "MemMalingLabels") Then
  loc_124FCFA:       Set var_8C = Me.TxtGrid
  loc_124FD00:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_124FD08:       0 = var_90.Left
  loc_124FD19:       Set var_98 = Me.TxtGrid
  loc_124FD1F:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_124FD38:       Set var_E4 = Me.TxtGrid
  loc_124FD3E:       Call 0.Method_TxtGrid_KeyDown0 (0, var_E8)
  loc_124FD57:       Set var_F4 = Me.TxtGrid
  loc_124FD5D:       Call 0.Method_TxtGrid_KeyDown0 (0, var_F8)
  loc_124FDB2:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_124FDE0:       If (CLng(Shift) = &HD) Then
  loc_124FDF0:         Call Proc_292_84_125D7DC(0, 0, var_DE, CInt(var_B8))
  loc_124FDFB:         If (var_DE = &HFF) Then
  loc_124FDFE:           Call Proc_292_88_F00D7C(CInt(((var_9C.Top + var_E8.Height) + CDbl(&H19))), CInt(var_F8.Width))
  loc_124FE03:         End If
  loc_124FE03:       End If
  loc_124FE03:     End If
  loc_124FE06:   Else
  loc_124FE0D:     If (var_B0 = CLng(4)) Then
  loc_124FE16:       var_120 = global_52
  loc_124FE1C:     Else
  loc_124FE23:       If Not (var_B0 = CLng(0)) Then
  loc_124FE2D:         If (var_B0 = CLng(1)) Then
  loc_124FE30:         End If
  loc_124FE70:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_124FE80:           Call Proc_292_84_125D7DC(0, 0, var_DE)
  loc_124FE8B:           If (var_DE = &HFF) Then
  loc_124FE8E:             Call Proc_292_88_F00D7C(0)
  loc_124FE93:           End If
  loc_124FE93:         End If
  loc_124FE93:       End If
  loc_124FE93:     End If
  loc_124FE93:   End If
  loc_124FE93: End If
  loc_124FE93: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F27364
  'Data Table: 563044
  loc_F27263: Proc_6_58_E06050(arg_10)
  loc_F2728B: If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_F27294:   var_A0 = global_52
  loc_F2729F:   If (var_A0 = "MemMalingLabels") Then
  loc_F272BE:     If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_F272D0:       var_A4 = "Name"
  loc_F272EB:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_212, arg_10)
  loc_F272FA:     End If
  loc_F272FD:   Else
  loc_F27305:     If (var_A0 = "MemTaxReport") Then
  loc_F27324:       If (CBool(Me.DGTax.Visible) = &HFF) Then
  loc_F27351:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_216, arg_10, "Name")
  loc_F27360:       End If
  loc_F27360:     End If
  loc_F27360:   End If
  loc_F27360: End If
  loc_F27360: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F93E4C
  'Data Table: 563044
  Dim var_C8 As String
  loc_F93D0F: If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_F93D18:   var_A0 = global_52
  loc_F93D23:   If Not (var_A0 = "MemSalesRegister") Then
  loc_F93D2E:     If Not (var_A0 = "MemVisitDetail") Then
  loc_F93D39:       If Not (var_A0 = "MemMalingLabels") Then
  loc_F93D44:         If Not (var_A0 = "PaymentDueLetterReport") Then
  loc_F93D4F:           If (var_A0 = "MemBirthAnnvDtls") Then
  loc_F93D52:           End If
  loc_F93D52:         End If
  loc_F93D52:       End If
  loc_F93D52:     End If
  loc_F93D80:     Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0)
  loc_F93DB2:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F93DC3:       Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F93DC8:     End If
  loc_F93DCB:   Else
  loc_F93DD3:     If (var_A0 = "MemTaxReport") Then
  loc_F93DF9:       If ((Shift <> &HD) And (CBool(Me.DGTax.Visible) = 0)) Then
  loc_F93E0A:         Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F93E39:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_216, Shift, "Name", &HFF)
  loc_F93E48:       End If
  loc_F93E48:     End If
  loc_F93E48:   End If
  loc_F93E48: End If
  loc_F93E48: Exit Sub
  loc_F93E49: var_C8 = 0
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E247E8
  'Data Table: 563044
  Dim arg_10 As Integer
  loc_E247C4: On Error Goto loc_E247DF
  loc_E247D2: Call Proc_292_84_125D7DC(Cancel, &HFF)
  loc_E247DB: arg_10 = Not(var_88)
  loc_E247DE: Exit Sub
  loc_E247DF: ' Referenced from: E247C4
  loc_E247DF: Proc_6_60_E63754(arg_10)
  loc_E247E4: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E1B874
  'Data Table: 563044
  Dim var_3386 As Integer
  loc_E1B869: Me.Global.Unload Me
  loc_E1B871: Exit Sub
  loc_E1B872: var_3386 = 
End Sub

Private Sub FGrid_UnknownEvent_0 'E4628C
  'Data Table: 563044
  Dim var_8C As TextBox
  loc_E46260: Call Proc_292_86_EB754C()
  loc_E46270: Set var_88 = Me.TxtGrid
  loc_E46276: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E4627E: var_8C.Visible = False
  loc_E4628A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'DFDD48
  'Data Table: 563044
  loc_DFDD44: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1074EF0
  'Data Table: 563044
  Dim var_9C As String
  Dim Cancel As Integer
  Dim var_C4 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_1074C9B: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_134))) Then
  loc_1074CA6:   var_9C = "+{Tab}"
  loc_1074CAC:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag))
  loc_1074CB6:   Cancel = 0
  loc_1074CBC: Else
  loc_1074CF3:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_132))) Then
  loc_1074D04:     Proc_303_0_FBACC8("	", 0)
  loc_1074D0E:     Cancel = 0
  loc_1074D11:   End If
  loc_1074D11: End If
  loc_1074D17: global_156 = Cancel
  loc_1074D3D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1074D61: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1074D77:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1074D8F:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1074D94:   var_104 = vbNullString
  loc_1074D9E:   Set var_118 = Me.FGrid
  loc_1074DA4:   LateIdCallSt
  loc_1074DCF:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1074DD4:   var_E4 = 2
  loc_1074DDD:   var_104 = vbNullString
  loc_1074DE7:   Set var_C4 = Me.FGrid
  loc_1074DED:   LateIdCallSt
  loc_1074DFF: End If
  loc_1074E09: If (CLng(Cancel) = &HD) Then
  loc_1074E1F:   var_11C = CLng(Me.FGrid.Row)
  loc_1074E2F:   If Not (var_11C = CLng(0)) Then
  loc_1074E39:     If Not (var_11C = CLng(1)) Then
  loc_1074E43:       If Not (var_11C = CLng(2)) Then
  loc_1074E4D:         If Not (var_11C = CLng(3)) Then
  loc_1074E57:           If Not (var_11C = CLng(4)) Then
  loc_1074E61:             If Not (var_11C = CLng(5)) Then
  loc_1074E6B:               If Not (var_11C = CLng(6)) Then
  loc_1074E75:                 If Not (var_11C = CLng(7)) Then
  loc_1074E7F:                   If Not (var_11C = CLng(8)) Then
  loc_1074E89:                     If (var_11C = CLng(9)) Then
  loc_1074E8C:                     End If
  loc_1074E8C:                   End If
  loc_1074E8C:                 End If
  loc_1074E8C:               End If
  loc_1074E8C:             End If
  loc_1074E8C:           End If
  loc_1074E8C:         End If
  loc_1074E8C:       End If
  loc_1074E8C:     End If
  loc_1074ECD:     Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_1074EE7:     global_158 = 0
  loc_1074EEA:   End If
  loc_1074EEA: End If
  loc_1074EEC: Cancel = 0
  loc_1074EEF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0A824
  'Data Table: 563044
  Dim var_9C As Long
  loc_F0A757: var_9C = CLng(Me.FGrid.Row)
  loc_F0A767: If Not (var_9C = CLng(0)) Then
  loc_F0A771:   If Not (var_9C = CLng(1)) Then
  loc_F0A77B:     If Not (var_9C = CLng(2)) Then
  loc_F0A785:       If Not (var_9C = CLng(3)) Then
  loc_F0A78F:         If Not (var_9C = CLng(4)) Then
  loc_F0A799:           If Not (var_9C = CLng(5)) Then
  loc_F0A7A3:             If Not (var_9C = CLng(6)) Then
  loc_F0A7AD:               If Not (var_9C = CLng(7)) Then
  loc_F0A7B7:                 If Not (var_9C = CLng(8)) Then
  loc_F0A7C1:                   If (var_9C = CLng(9)) Then
  loc_F0A7C4:                   End If
  loc_F0A7C4:                 End If
  loc_F0A7C4:               End If
  loc_F0A7C4:             End If
  loc_F0A7C4:           End If
  loc_F0A7C4:         End If
  loc_F0A7C4:       End If
  loc_F0A7C4:     End If
  loc_F0A7C4:   End If
  loc_F0A7DC:   var_AC = 0
  loc_F0A805:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0A81A: End If
  loc_F0A81F: global_158 = 0
  loc_F0A822: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F723DC
  'Data Table: 563044
  Dim var_9C As Long
  loc_F722B3: var_9C = CLng(Me.FGrid.Row)
  loc_F722C3: If Not (var_9C = CLng(5)) Then
  loc_F722CD:   If Not (var_9C = CLng(6)) Then
  loc_F722D7:     If Not (var_9C = CLng(7)) Then
  loc_F722E1:       If Not (var_9C = CLng(8)) Then
  loc_F722EB:         If (var_9C = CLng(9)) Then
  loc_F722EE:         End If
  loc_F722EE:       End If
  loc_F722EE:     End If
  loc_F722EE:   End If
  loc_F7232C:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F72341: Else
  loc_F72348:   If Not (var_9C = CLng(0)) Then
  loc_F72352:     If Not (var_9C = CLng(1)) Then
  loc_F7235C:       If Not (var_9C = CLng(2)) Then
  loc_F72366:         If Not (var_9C = CLng(3)) Then
  loc_F72370:           If (var_9C = CLng(4)) Then
  loc_F72373:           End If
  loc_F72373:         End If
  loc_F72373:       End If
  loc_F72373:     End If
  loc_F723B1:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_F723C3:   End If
  loc_F723C3: End If
  loc_F723CD: If (CLng(Cancel) <> &HD) Then
  loc_F723D5:   global_158 = &HFF
  loc_F723D8: End If
  loc_F723D8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'DFDCE0
  'Data Table: 563044
  Dim arg_7FFF As Integer
  loc_DFDCDC: Exit Sub
  loc_DFDCDD: arg_7FFF = 
End Sub

Private Sub FGrid_UnknownEvent_14 'DFD590
  'Data Table: 563044
  Dim var_B01 As Integer
  loc_DFD58C: Exit Sub
  loc_DFD58D: var_B01 = 
End Sub

Private Sub FGrid_UnknownEvent_15 'E43154
  'Data Table: 563044
  Dim var_8C As TextBox
  loc_E43133: Set var_88 = Me.TxtGrid
  loc_E43139: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43141: var_8C.Visible = False
  loc_E4314D: Call Proc_292_86_EB754C()
  loc_E43152: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F27220
  'Data Table: 563044
  loc_F27123: If (Proc_6_113_E6DB0C(KeyCode) = &HFF) Then
  loc_F2714E:   Set var_90 = Me.GridSel
  loc_F27154:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F2717C:   Me.TxtSearch.Visible = False
  loc_F27184: End If
  loc_F2718E: If (CLng(KeyCode) = &H2E) Then
  loc_F2719E:   Me.TxtSearch.Text = vbNullString
  loc_F271A6: End If
  loc_F271BB: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F271E6:   Set var_90 = Me.GridSel
  loc_F271EC:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F27214:   Me.TxtSearch.Visible = False
  loc_F2721C: End If
  loc_F2721C: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CD5B4
  'Data Table: 563044
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CD17D: var_90 = Me.TxtSearch.Tag
  loc_11CD192: If (var_90 = CStr(1)) Then
  loc_11CD1E8:   Set var_A0 = Me.GridSel
  loc_11CD1EE:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CD264:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CD28F: Else
  loc_11CD29E:   If (var_90 = CStr(2)) Then
  loc_11CD2C9:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CD2F4:     Set var_A0 = Me.GridSel
  loc_11CD2FA:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CD370:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CD39B:   Else
  loc_11CD3AA:     If (var_90 = CStr(3)) Then
  loc_11CD3D5:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CD400:       Set var_A0 = Me.GridSel
  loc_11CD406:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CD40E:       var_B4 = var_A4.Col
  loc_11CD47C:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_112, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CD4A7:     Else
  loc_11CD4B6:       If (var_90 = CStr(4)) Then
  loc_11CD4E1:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CD50C:         Set var_A0 = Me.GridSel
  loc_11CD512:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CD588:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_116, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CD5B0:       End If
  loc_11CD5B0:     End If
  loc_11CD5B0:   End If
  loc_11CD5B0: End If
  loc_11CD5B0: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'DFD0B0
  'Data Table: 563044
  loc_DFD0AC: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E91998
  'Data Table: 563044
  loc_E91931: Me.TxtSearch.Text = vbNullString
  loc_E91961: Set var_90 = Me.GridSel
  loc_E91967: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E9198F: Me.TxtSearch.Visible = False
  loc_E91997: Exit Sub
End Sub

Private Sub Form_Load() '1298344
  'Data Table: 563044
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1297D4C: On Error Goto loc_129833C
  loc_1297D5D: Me.PictParameter.BackColor = CLng(MemVar_1F951B4)
  loc_1297D73: Me.PictPreview.BackColor = CLng(MemVar_1F951B4)
  loc_1297D8E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1297DA9: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1297DB8: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1297DCF: Set var_88 = Me.GridSel
  loc_1297DD5: Call 0.Method_Form_Load0 (1, var_AC)
  loc_1297DDD: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1297DFB: Set var_88 = Me.GridSel
  loc_1297E01: Call 0.Method_Form_Load0 (2, var_AC)
  loc_1297E09: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1297E27: Set var_88 = Me.GridSel
  loc_1297E2D: Call 0.Method_Form_Load0 (3, var_AC)
  loc_1297E35: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1297E53: Set var_88 = Me.GridSel
  loc_1297E59: Call 0.Method_Form_Load0 (4, var_AC)
  loc_1297E61: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1297E7B: Me.Text1.BackColor = CLng(MemVar_1F951B4)
  loc_1297E91: Me.Text2.BackColor = CLng(MemVar_1F951B4)
  loc_1297EA7: Me.Text3.BackColor = CLng(MemVar_1F951B4)
  loc_1297EB7: Set var_88 = Me.Text4
  loc_1297EBD: var_88.BackColor = CLng(MemVar_1F951B4)
  loc_1297ECE: Call 0.Method_arg_160 (var_88)
  loc_1297EDC: Call 0.Method_arg_164 (var_88)
  loc_1297EE4: var_98 = "Add"
  loc_1297EEE: Set var_88 = Me.POSMas
  loc_1297F04: Set var_88 = Me.LblCompany
  loc_1297F0A: MDIForm1.LblCompany.Left = CDbl(0)
  loc_1297F20: Me.Text2.Left = CDbl(0)
  loc_1297F36: Me.Text3.Left = CDbl(0)
  loc_1297F4C: Me.Text4.Left = CDbl(0)
  loc_1297F57: var_98 = CVar(CDbl(0)) 'Single
  loc_1297F66: Me.FGrid1.Left = var_98
  loc_1297F72: Set var_AC = Me.LblRefresh
  loc_1297F78: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006(POSMas.DispID_68030005)
  loc_1297F85: Set var_88 = Me.LblRefresh
  loc_1297F8B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(var_98)
  loc_1297FA5: Me.Text1.Top = (CDbl() + CDbl(var_CC))
  loc_1297FF0: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_1298034: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_1298078: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_129808D: Set var_AC = Me.Text4
  loc_12980A5: var_D4 = Me.Text4.Top
  loc_12980B1: var_98 = CVar((var_D4 + var_AC.Height)) 'Single
  loc_12980C0: Me.FGrid1.Top = var_98
  loc_12980D4: Call 0.Method_Me0 (var_D4)
  loc_12980EB: Me.Text1.Width = (var_D4 - CDbl(&H32))
  loc_12980F9: Call 0.Method_Me0 (var_D4)
  loc_1298110: Me.Text2.Width = (var_D4 - CDbl(&H32))
  loc_129811E: Call 0.Method_Me0 (var_D4)
  loc_1298135: Me.Text3.Width = (var_D4 - CDbl(&H32))
  loc_1298143: Call 0.Method_Me0 (var_D4)
  loc_129815A: Me.Text4.Width = (var_D4 - CDbl(&H32))
  loc_1298168: Call 0.Method_Me0 (var_D4)
  loc_1298174: var_98 = CVar((var_D4 - CDbl(&H32))) 'Single
  loc_1298183: Me.FGrid1.Width = var_98
  loc_1298191: Call 0.Method_Me8 (var_D4)
  loc_12981A8: Me.FGrid1.Height = CVar(var_D4)
  loc_12981B6: var_DC = global_52
  loc_12981C1: If (var_DC = "MemVisitDetail") Then
  loc_12981CA:   Call 0.Method_arg_54 ("Member Visit Detail")
  loc_12981D2: Else
  loc_12981DA:   If (var_DC = "MemMalingLabels") Then
  loc_12981E3:     Call 0.Method_arg_54 ("Member Mailing Labels")
  loc_12981EB:   Else
  loc_12981F3:     If (var_DC = "MemSalesRegister") Then
  loc_12981FC:       Call 0.Method_arg_54 ("Member Sales Register")
  loc_1298204:     Else
  loc_129820C:       If (var_DC = "MemTaxReport") Then
  loc_1298215:         Call 0.Method_arg_54 ("Member Tax Report")
  loc_129821D:       Else
  loc_1298225:         If (var_DC = "PaymentDueLetterReport") Then
  loc_129822E:           Call 0.Method_arg_54 ("Payment Due Letter Report")
  loc_1298236:         Else
  loc_129823E:           If (var_DC = "MemBirthAnnvDtls") Then
  loc_1298247:             Call 0.Method_arg_54 ("Member Birthday/Anniversary Details")
  loc_129824C:           End If
  loc_129824C:         End If
  loc_129824C:       End If
  loc_129824C:     End If
  loc_129824C:   End If
  loc_129824C: End If
  loc_1298252: Call rMemberRepView.global_88Put(MemVar_1F95078)
  loc_129825D: Call rMemberRepView.global_92Put(MemVar_1F953D8)
  loc_1298268: Call 0.Method_arg_50 (var_E0)
  loc_1298273: Call 0.Method_arg_54 (var_E0)
  loc_1298289: Set var_88 = Me.txtSite
  loc_129828F: Call 0.Method_Form_Load0 (0, var_AC)
  loc_1298297: var_AC.Tag = MemVar_1F95078
  loc_12982B1: Set var_88 = Me.txtSite
  loc_12982B7: Call 0.Method_Form_Load0 (0, var_AC)
  loc_12982BF: var_AC.Text = MemVar_1F953D8
  loc_12982D1: Call 0.Method_arg_50 (var_E0)
  loc_12982E5: Me.LblTitle.Caption = var_E0
  loc_12982F6: Call 0.Method_arg_50 (var_E0)
  loc_1298306: Set var_88 = Me.LblRep
  loc_129830C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar(var_E0))
  loc_129831F: If (MemVar_1F95070 = "HO") Then
  loc_129832E:   Me.BtnParam.Visible = True
  loc_1298336: End If
  loc_1298336: Call Proc_292_85_15BFCD0()
  loc_129833B: Exit Sub
  loc_129833C: ' Referenced from: 1297D4C
  loc_129833C: Proc_6_60_E63754()
  loc_1298341: Exit Sub
End Sub

Private Sub Form_Resize() 'F8407C
  'Data Table: 563044
  Dim var_AC As Variant
  loc_F83F28: On Error Resume Next
  loc_F83F33: Call 0.Method_arg_98 (var_86)
  loc_F83F42: If (CLng(var_86) <> 1) Then
  loc_F83F5D:   Proc_6_23_DFC5B8(Me, 0)
  loc_F83F6F:   Call 0.Method_arg_7C (CDbl(590))
  loc_F83F7D:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_F83F82: End If
  loc_F83F8C: Call 0.Method_arg_100 (var_94)
  loc_F83F98: If (var_94 > CDbl(0)) Then
  loc_F83FB5:   Call 0.Method_arg_100 (var_94)
  loc_F83FCC:   Me.PictPreview.Width = (var_94 - Me.PictParameter.ScaleWidth)
  loc_F83FF3:   var_AC = CVar((Me.PictPreview.ScaleWidth - CDbl(&H4B))) 'Single
  loc_F84002:   Me.FGrid1.Width = var_AC
  loc_F84055:   var_AC = CVar(((Me.PictPreview.ScaleHeight - (Me.Text4.Top + Me.Text4.Height)) - CDbl(&H4B))) 'Single
  loc_F84064:   Me.FGrid1.Height = var_AC
  loc_F84074: End If
  loc_F84078: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7C860
  'Data Table: 563044
  loc_E7C807: Set global_104 = Nothing
  loc_E7C819: Set global_108 = Nothing
  loc_E7C82B: Set global_112 = Nothing
  loc_E7C83D: Set global_116 = Nothing
  loc_E7C84F: Set global_200 = Nothing
  loc_E7C85B: MemVar_1F951E8 = Nothing
  loc_E7C85F: Exit Sub
End Sub

Private Sub Command2_Click() '12EFA1C
  'Data Table: 563044
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_9C As Double
  Dim var_130 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1DC As String
  Dim var_BC As String
  Dim var_120 As Variant
  Dim var_1C4 As Variant
  Dim unk_56304A As Connection15
  Dim var_88 As Recordset15
  Dim var_200 As Variant
  Dim var_218 As String
  Dim var_250 As String
  Dim var_94 As Integer
  Dim var_92 As Integer
  loc_12EF3EB: var_AC = CVar(CLng(1)) 'Long
  loc_12EF3F0: var_CC = 1
  loc_12EF41E: var_120 = "dd/MMM/yyyy"
  loc_12EF438: var_9C = CDate(Format(CVar(CStr(Me.FGrid.TextMatrix))), var_120))
  loc_12EF47A: Proc_6_7_F26918(var_120, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), " M.Vdate Between ", var_9C)
  loc_12EF4A4: Set var_194 = Me.FGrid
  loc_12EF4BB: Proc_6_7_F26918(var_1C4, CVar(CStr(var_194.TextMatrix))), 1, CVar(CLng(1)), 1 & var_120 & " And ")
  loc_12EF4C8: var_8C = CStr(1 & var_1C4)
  loc_12EF4F3: Set var_E0 = Me.Check1
  loc_12EF4F9: Call 0.Method_Command2_Click0 (1, var_194, var_1D6)
  loc_12EF501: var_F0 = var_194.Value
  loc_12EF517: If (CLng(var_1D6) = 0) Then
  loc_12EF532:   var_90 = var_8C & " And M.MemCatCode In (" & global_56 & ") "
  loc_12EF53C: End If
  loc_12EF542: var_AC = CVar(CLng(0)) 'Long
  loc_12EF588: Set var_194 = Me.FGrid
  loc_12EF5AA: Me.Text1.Text = 1 & CStr(var_194.TextMatrix))
  loc_12EF5D8: Set var_E0 = Me.Check1
  loc_12EF5DE: Call 0.Method_Command2_Click0 (1, var_194, var_1D6, CVar(CLng(1)), 1 & CStr(Me.FGrid.TextMatrix)) & " To : ")
  loc_12EF5E6: var_AC = var_194.Value
  loc_12EF5FC: If (CLng(var_1D6) = 0) Then
  loc_12EF617:   var_F0 = Left(global_72, &H73)
  loc_12EF63A:   Me.Text2.Text = CStr("For Category : " & var_F0 & vbNullString)
  loc_12EF651: Else
  loc_12EF658:   Set var_E0 = Me.Text2
  loc_12EF65E:   var_E0.Text = "For Category :   All"
  loc_12EF666: End If
  loc_12EF673: var_BC = "Select M.cardno,S.Name As MemName,M.vno as BillNo,mthyear,L.bal as NetAmount From membill M Inner Join  SubGroup S On M.MemCode=S.SubCode  left Join (select subcode,sum(amtdr)-sum(amtcr) Bal from ledger  where v_date<= "
  loc_12EF683: Proc_6_7_F26918(var_F0, var_9C, "For Category : ", var_200, -1)
  loc_12EF68F: var_CC = " group by subcode) L on L.subcode=M.Memcode Where  L.bal<>0 and"
  loc_12EF694: var_120 = var_E0 & var_F0 & var_CC 
  loc_12EF6B1: var_1A4 = var_120 & CVar(var_8C) & " And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_12EF6D1: var_1DC = CStr(var_1A4 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO')")
  loc_12EF6DB: unk_56304A.Execute var_1DC, "From : ", var_CC
  loc_12EF6E6: Set var_88 = var_E0
  loc_12EF708: Close 1
  loc_12EF711: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_12EF729: If (var_88.RecordCount > 0) Then
  loc_12EF72C:   ' Referenced from: 12EF9A3
  loc_12EF73B:   If Not(var_88.EOF) Then
  loc_12EF7AD:     var_130 = Format(CVar(var_88.Fields.Item("MemName")), var_120)
  loc_12EF7ED:     Proc_6_39_E7D3A0(var_1A4, CVar(var_88.Fields.Item("BillNo")))
  loc_12EF88C:     Proc_6_39_E7D3A0(var_268, CVar(var_88.Fields.Item("NetAmount")))
  loc_12EF8E8:     var_218 = "ICM" & "|" & Proc_6_45_EADFB8(CStr(var_88.Fields.Item("CardNo").Value), 5) & "|" & Proc_6_52_EAE084(CStr(var_130), &H24, 1)
  loc_12EF90A:     var_250 = var_218 & "|" & Proc_6_52_EAE084(CStr(Format(var_1A4, "000")), 5, 1) & "|" & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_88.Fields.Item("MthYear")), 1), 8)
  loc_12EF920:     Print 1, var_250 & "|" & Proc_6_52_EAE084(CStr(Format(var_268, "0.00")), 9, 1)
  loc_12EF98C:     var_88.MoveNext
  loc_12EF997:     var_94 = (var_94 + 1)
  loc_12EF9A0:     var_92 = (var_92 + 1)
  loc_12EF9A3:     GoTo loc_12EF72C
  loc_12EF9A6:   End If
  loc_12EF9A8:   Close 1
  loc_12EF9B0:   Call 0.Method_arg_50 (var_1DC, var_92, var_94)
  loc_12EF9D1:   MsgBox("Printing Completed.", &H40, CVar(var_1DC), var_120, var_130)
  loc_12EF9E4: Else
  loc_12EF9EA:   Call 0.Method_arg_50 (var_1DC, 1)
  loc_12EFA0B:   MsgBox("No Record found to Print.", &H40, CVar(var_1DC), var_120, var_130)
  loc_12EFA1B: End If
  loc_12EFA1B: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB3BE8
  'Data Table: 563044
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB3B74: Set var_9C = Me.ListView.SelectedItem
  loc_EB3B8B: Set var_A4 = Me.TxtGrid
  loc_EB3B91: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB3B99: var_A8.Text = var_9C.Text
  loc_EB3BBB: Me.FrmList.Visible = False
  loc_EB3BCC: Set var_88 = Me.TxtGrid
  loc_EB3BD2: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB3BDA: var_9C.SetFocus
  loc_EB3BE6: Exit Sub
End Sub

Private Sub Command1_Click() 'E9E624
  'Data Table: 563044
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E9E5AC: Me.Frame1.Visible = False
  loc_E9E5C2: Set var_88 = Me.txtSite
  loc_E9E5C8: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9E5DB: global_88 = var_8C.Tag
  loc_E9E5F7: Set var_88 = Me.txtSite
  loc_E9E5FD: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9E610: global_92 = var_8C.Text
  loc_E9E61E: Call Proc_292_90_1550874()
  loc_E9E623: Exit Sub
End Sub

Private Sub BtnParam_Click() 'E9E568
  'Data Table: 563044
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_E9E4EA: Set global_204 = New 
  loc_E9E4FC: Me.Recordset15.CursorLocation = 3
  loc_E9E524: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F95044), 0
  loc_E9E532: CVarUnk
  loc_E9E537: VerifyVarObj
  loc_E9E53D: Set var_88 = Me.DGSite
  loc_E9E543: LateIdStAd
  loc_E9E55D: Me.Frame1.Visible = True
  loc_E9E565: Exit Sub
End Sub

Public Function global_52Get() '5650B4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '5650C3
  global_52 = Value
End Sub

Public Function global_56Get() '5650D2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5650E1
  global_56 = Value
End Sub

Public Function global_60Get() '5650F0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5650FF
  global_60 = Value
End Sub

Public Function global_64Get() '56510E
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '56511D
  global_64 = Value
End Sub

Public Function global_68Get() '56512C
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '56513B
  global_68 = Value
End Sub

Public Function global_72Get() '56514A
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '565159
  global_72 = Value
End Sub

Public Function global_76Get() '565168
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '565177
  global_76 = Value
End Sub

Public Function global_80Get() '565186
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '565195
  global_80 = Value
End Sub

Public Function global_84Get() '5651B8
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '5651C7
  global_84 = Value
End Sub

Public Function global_88Get() '5651D6
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '5651E5
  global_88 = Value
End Sub

Public Function global_92Get() '5651F4
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '565203
  global_92 = Value
End Sub

Public Function global_96Get() '565212
  global_96Get = global_96
End Function

Public Sub global_96Put(Value) '565221
  global_96 = Value
End Sub

Public Function global_100Get() '565230
  global_100Get = global_100
End Function

Public Sub global_100Put(Value) '56523F
  global_100 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '1189B24
  'Data Table: 563044
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_1189779: If ().rows < 1) Then
  loc_118977C:   Exit Sub
  loc_118977D: End If
  loc_1189791: If (Me.RecordCount <= 0) Then
  loc_118979D:   Me.TEXT = vbNullString
  loc_11897A1:   Exit Sub
  loc_11897A2: End If
  loc_11897B7: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11897BA:   Exit Sub
  loc_11897BB: End If
  loc_11897C5: If (CLng(KeyAscii) = 8) Then
  loc_11897DF:   If (Len(Me.SelText) > 1) Then
  loc_11897F3:     var_DC = (Len(Me.SelText) - 1)
  loc_11897FB:     Me.SelLength = var_DC
  loc_118980B:     var_88 = CStr(Me.SelText)
  loc_1189814:   Else
  loc_118981D:     Me.TEXT = vbNullString
  loc_1189837:     Call ).SetFocus
  loc_1189848:     Me.Visible = False
  loc_118984C:     Exit Sub
  loc_118984D:   End If
  loc_1189850: Else
  loc_1189867:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_118986C:   var_88 = CStr(var_DC)
  loc_1189878: End If
  loc_118987B: Me.Recordset15.MoveFirst
  loc_11898B8: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11898FB:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_1189910: Else
  loc_1189940:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_1189950: End If
  loc_1189952: KeyAscii = 0
  loc_118997E: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_118998F:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_11899A8:   ).Row = index
  loc_11899DE:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11899F8:   Me.SelLength = CVar(Len(var_88))
  loc_1189A10:   var_DC = ).CellLeft
  loc_1189A30:   var_138 = (index + ).left)
  loc_1189A38:   Me.left = var_138
  loc_1189A5D:   var_DC = ).CellTop
  loc_1189A7D:   var_138 = (index + ).top)
  loc_1189A85:   Me.top = var_138
  loc_1189AA8:   If (Me.Visible = False) Then
  loc_1189AB2:     Me.Visible = True
  loc_1189AB6:     var_9C = 0
  loc_1189ABF:     Call Me.ZOrder
  loc_1189AC8:     Call Me.SetFocus
  loc_1189AEC:     Me.width = ).CellWidth
  loc_1189B15:     Me.height = ).CellHeight
  loc_1189B20:   End If
  loc_1189B20: End If
  loc_1189B20: Exit Sub
  loc_1189B21: If index Then Exit Sub
  loc_1189B21: End If
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF63E4
  'Data Table: 563044
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF6204: Call Me.ListItems.Clear
  loc_FF6221: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF6224:   ListView_Items_RecordSet_Local = 
  loc_FF622A: End If
  loc_FF6235: If (global_52 <> "HundiPrint") Then
  loc_FF6240:   var_104 = "All"
  loc_FF6249:   var_A0 = Me.ListItems
  loc_FF625A:   Set var_8C = var_A0.add
  loc_FF626C:   var_A0.ListItem.SubItems = 1
  loc_FF6271:   ' Referenced from: FF636C
  loc_FF6271: End If
  loc_FF6277: var_116 = Me.EOF
  loc_FF6280: If Not(var_116) Then
  loc_FF62AD:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF6317:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF6346:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF634E:     Me.ListItems.add.SubItems = 1
  loc_FF6364:   End If
  loc_FF6367:   Me.MoveNext
  loc_FF636C:   GoTo loc_FF6271
  loc_FF636F: End If
  loc_FF6384: var_E4 = 0
  loc_FF63A3: Set var_8C = Me.FindItem
  loc_FF63B4: If (var_8C Is Nothing) Then
  loc_FF63B7:   ListView_Items_RecordSet_Local = 1
  loc_FF63C0: Else
  loc_FF63C6:   var_8C.EnsureVisible var_116
  loc_FF63D0:   var_8C.Selected = True
  loc_FF63D5: End If
  loc_FF63D8: Set var_88 = var_8C 
  loc_FF63DC: ListView_Items_RecordSet_Local = var_104
End Function

Public Sub RetBack(mParamForm) 'F72B7C
  'Data Table: 563044
  loc_F72A41: var_8C = global_52
  loc_F72A4C: If (var_8C = "MemVisitDetail") Then
  loc_F72A5C:   Set var_90 = mParamForm 
  loc_F72A63:   Call MemVisitDetail(var_90, 0, 0)
  loc_F72A6E:   Set var_88 = var_90
  loc_F72A77: Else
  loc_F72A7F:   If (var_8C = "MemMalingLabels") Then
  loc_F72A8F:     Set var_90 = var_88 
  loc_F72A96:     Call MemLabels(var_90, 0, 0)
  loc_F72AA1:     Set var_88 = var_90
  loc_F72AAA:   Else
  loc_F72AB2:     If (var_8C = "MemSalesRegister") Then
  loc_F72AC2:       Set var_90 = var_88 
  loc_F72AC9:       Call MemSalesReg(var_90, 0, 0)
  loc_F72AD4:       Set var_88 = var_90
  loc_F72ADD:     Else
  loc_F72AE5:       If (var_8C = "MemTaxReport") Then
  loc_F72AF5:         Set var_90 = var_88 
  loc_F72AFC:         Call MemTaxReport(var_90, 0, 0)
  loc_F72B07:         Set var_88 = var_90
  loc_F72B10:       Else
  loc_F72B18:         If (var_8C = "PaymentDueLetterReport") Then
  loc_F72B28:           Set var_90 = var_88 
  loc_F72B2F:           Call PaymentDueLetterReport(var_90, 0, 0)
  loc_F72B3A:           Set var_88 = var_90
  loc_F72B43:         Else
  loc_F72B4B:           If (var_8C = "MemBirthAnnvDtls") Then
  loc_F72B5B:             Set var_90 = var_88 
  loc_F72B62:             Call MemBirthAnnvDtls(var_90, 0, 0)
  loc_F72B6D:             Set var_88 = var_90
  loc_F72B73:           End If
  loc_F72B73:         End If
  loc_F72B73:       End If
  loc_F72B73:     End If
  loc_F72B73:   End If
  loc_F72B73: End If
  loc_F72B73: Exit Sub
  loc_F72B74: Proc_6_60_E63754()
  loc_F72B79: Exit Sub
End Sub

Public Sub MemLabels(formName, FRow, Fcol) '129D51C
  'Data Table: 563044
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_100 As String
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_144 As String
  Dim var_148 As String
  Dim var_BC As String
  Dim var_33AC As Variant
  loc_129CF40: Me.FGrid1.Tag = "MemMalingLabels"
  loc_129CF48: var_100 = " M.Name='"
  loc_129CF4D: var_AC = 2
  loc_129CF86: var_AC = 1
  loc_129CFAF: If (Me.Check1.Value = 0) Then
  loc_129CFC8:   var_AC = ") "
  loc_129CFD2:   var_90 = CStr(CVar(CStr(1 & Me.FGrid.TextMatrix & "'") & " And S.ActiveYN=1 And S.companyType In (") & Me.GridString1 & var_AC)
  loc_129CFE0: End If
  loc_129CFE6: Call 0.Method_arg_54 ("Members Mailing Labels Report", var_AC)
  loc_129CFFE: var_F0 = Me.FGrid
  loc_129D018: Set var_C0 = 2(1 & CStr(var_F0.TextMatrix))
  loc_129D01E: var_F0.TextBox.Text = "Address Type : "
  loc_129D034: var_AC = 1
  loc_129D05D: If (Me.Check1.Value = 0) Then
  loc_129D086:   var_BC = vbNullString
  loc_129D097:   Set var_C0 = Me.Text2
  loc_129D09D:   Me.Text2.Text = CStr("For Category : " & Left(Me.FormulaString1, &H73) & var_BC)
  loc_129D0B6: Else
  loc_129D0BD:   Set var_C0 = Me.Text2
  loc_129D0C3:   var_C0.Text = "For Category :   All"
  loc_129D0CB: End If
  loc_129D0CE: var_94 = "MemMalingLabels"
  loc_129D0D7: global_120 = "Members Mailing Labels Report"
  loc_129D0E2: var_144 = " SELECT S.Name AS Name, S.ConPrefix, RTrim(RTrim(LTrim(S.ConPerSon))+' '+RTrim(LTrim(S.ConPerSonMName))+' '+RTrim(LTrim(S.ConPerSonLName))) As ConPerSon,S.CardNo,MCat.Name as MemType, m.Add1, m.Add2, m.Add3, Ltrim(IsNull(m.PinCode,'')) As PinCode, c.CityName,ltrim(IsNull(S.Phone,'')) As Phone,ltrim(IsNull(S.Mobile,'')) As Mobile " & " FROM MemAddRWA m INNER JOIN  SubGroup s ON m.SubCode = s.SubCode INNER JOIN"
  loc_129D0E9: var_148 = CStr("For Category : " & Left(Me.FormulaString1, &H73) & var_BC) & " City c ON m.City = c.CityCode JOIN MemCatMast Mcat on s.companyType=Mcat.code"
  loc_129D101: var_AC = 3
  loc_129D108: var_D0 = 1
  loc_129D111: var_F0 = Me.FGrid
  loc_129D152: var_F0.Connection15.Execute CStr(var_D0 & var_F0.TextMatrix), var_F0, -1
  loc_129D18A: Set var_C0 = var_C0 
  loc_129D191: CreateFieldDefFile(var_C0, MemVar_1F950B4 & "\" & var_94 & ".ttx", &HFF, var_C0, var_AC)
  loc_129D1BF: var_144 = "\" & var_94
  loc_129D1D3: Call 0.Method_arg_1C (MemVar_1F950B4 & var_144 & ".RPT", var_AC, var_C0, CVar(var_144 & ".RPT" & " Where " & var_90 & " Order By MCat.Name,"))
  loc_129D1DE: MemVar_1F951E8 = var_C0
  loc_129D1F9: var_AC = CVar(var_C0) 'Address
  loc_129D207: Call 0.Method_arg_64 (var_C0, var_AC, var_BC, var_D0)
  loc_129D20F: Call 0.Method_arg_2C (var_F0, var_AC)
  loc_129D21D: Call 0.Method_arg_150 (var_AC)
  loc_129D233: Call 0.Method_arg_90 (var_C0, var_154, var_9A)
  loc_129D23B: Call 0.Method_arg_24 (1)
  loc_129D247: For var_158 =  To CInt(var_154): var_100 = var_158 'Integer
  loc_129D260:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D268:   Call 0.Method_arg_20 (var_15C)
  loc_129D270:   Call 0.Method_arg_30 (var_144)
  loc_129D286:   var_16C = Ucase(CVar(var_144)) 'Variant
  loc_129D2B6:   If (var_16C = Ucase("comp_name")) Then
  loc_129D2DA:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D2E2:     Call 0.Method_arg_20 (var_15C)
  loc_129D2EA:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_129D300:   Else
  loc_129D322:     If (var_16C = Ucase("comp_add1")) Then
  loc_129D346:       Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D34E:       Call 0.Method_arg_20 (var_15C)
  loc_129D356:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_129D36C:     Else
  loc_129D38E:       If (var_16C = Ucase("comp_pin")) Then
  loc_129D3B2:         Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D3BA:         Call 0.Method_arg_20 (var_15C)
  loc_129D3C2:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_129D3D8:       Else
  loc_129D3FA:         If (var_16C = Ucase("comp_GSTIN")) Then
  loc_129D404:           var_144 = "'" & MemVar_1F95154
  loc_129D41E:           Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D426:           Call 0.Method_arg_20 (var_15C)
  loc_129D42E:           Call 0.Method_arg_38 (var_144 & "'")
  loc_129D444:         Else
  loc_129D466:           If (var_16C = Ucase("Title")) Then
  loc_129D472:             Call 0.Method_arg_50 (var_144)
  loc_129D495:             Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D49D:             Call 0.Method_arg_20 (var_15C)
  loc_129D4A5:             Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_129D4BA:           End If
  loc_129D4BA:         End If
  loc_129D4BA:       End If
  loc_129D4BA:     End If
  loc_129D4BA:   End If
  loc_129D4BD: Next var_158 'Integer
  loc_129D4C7: Set var_15C = Nothing
  loc_129D4E0: Set var_C0 = MemVar_1F951E8 
  loc_129D4EC: Proc_6_99_1484404(var_C0, 3, global_120)
  loc_129D4F7: MemVar_1F951E8 = var_C0
  loc_129D507: Set var_88 = Nothing
  loc_129D50A: Exit Sub
  loc_129D50B: Proc_6_60_E63754(&HFF)
  loc_129D518: Exit Sub
  loc_129D519: var_33AC = CVar(0) 'Long
End Sub

Public Sub MemVisitDetail(formName, FRow, Fcol) '16036D8
  'Data Table: 563044
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_CC As Variant
  Dim var_1E0 As String
  Dim var_1F0 As String
  Dim var_1F4 As Variant
  Dim var_1FC As String
  Dim var_200 As String
  Dim var_208 As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_90 As Recordset15
  Dim var_22C As Recordset15
  Dim var_230 As Recordset15
  Dim unk_56304A As Connection15
  Dim var_24C As Recordset15
  Dim var_250 As Fields15
  Dim var_254 As Field20
  Dim var_260 As Recordset15
  Dim var_98 As Double
  Dim var_264 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_270 As MSHFlexGrid
  loc_16022EC: var_12C = " Between "
  loc_1602306: VarLateMemCallLdRfVar
  loc_1602311: Proc_6_7_F26918(var_11C, Me.FGrid, 1)
  loc_1602322: var_15C = 0 & var_11C & " And " 
  loc_160233B: VarLateMemCallLdRfVar
  loc_1602346: Proc_6_7_F26918(var_1CC, Me.FGrid, 1)
  loc_1602353: var_A0 = CStr(1 & var_1CC)
  loc_160236B: var_BC = 1
  loc_1602394: If (Me.Check1.Value = 0) Then
  loc_16023B7:   var_A8 = CStr(CVar(var_A0 & " And M.RestCode In (") & Me.GridString1 & ") ")
  loc_16023C5: End If
  loc_16023C5: var_BC = 3
  loc_16023EE: If (Me.Check1.Value = 0) Then
  loc_1602411:   var_AC = CStr(CVar(var_A0 & " And M.FCCode In (") & Me.GridString3 & ") ")
  loc_160241F: End If
  loc_160241F: var_BC = 2
  loc_1602448: If (Me.Check1.Value = 0) Then
  loc_160244B:   var_BC = " And S.CompanyType In ("
  loc_1602466:   var_A4 = CStr(var_BC & Me.GridString2 & ") ")
  loc_1602472: End If
  loc_1602478: Call 0.Method_arg_54 ("Member Visit Detail", var_BC, var_BC)
  loc_1602480: var_BC = 0
  loc_16024AD: var_12C = 1
  loc_16024BD: var_11C = Me.FGrid
  loc_16024D7: Set var_1F4 = var_12C(1 & CStr(var_11C.TextMatrix))
  loc_16024DD: var_11C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_16024FD: var_BC = 2
  loc_1602526: If (Me.Check1.Value = 0) Then
  loc_160252C:   var_FC = Me.FormulaString2
  loc_1602533:   var_BC = "For Category : "
  loc_160254F:   var_CC = vbNullString
  loc_1602554:   var_13C = var_BC & Left(var_FC, &H73) & var_CC 
  loc_1602560:   Set var_1F4 = Me.Text2
  loc_1602566:   Me.Text2.Text = CStr(var_13C)
  loc_160257F: Else
  loc_1602586:   Set var_1F4 = Me.Text2
  loc_160258C:   var_1F4.Text = "For Category :   All"
  loc_1602594: End If
  loc_16025A1: Call Proc_292_94_FC4EF8(New, var_1F4, var_FC, var_BC, var_BC)
  loc_16025A9: Set var_8C = var_1F4
  loc_16025C0: var_1E0 = "Select R.* From (Select M.EntryDate As Vdate,'' As Vno,MC.Name As MemCatName,S.CompanyType As MemCatCode,S.Name As MemName,S.CardNo,MF.Name As Discription,M.MemCode,M.Amount,M.U_Name From MemFacilityBilling M Left Join MemFacilityMast MF On MF.Code=M.FCCode Left Join SubGroup S On M.MemCode=S.SubCode Left Join MemCatMast MC On MC.Code=S.CompanyType Where M.EntryDate" & var_AC
  loc_16025EA: var_1FC = var_1E0 & var_A4 & " And M.Site_Code='" & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078 & "' Or M.LogSite_Code='HO') Union All "
  loc_16025F1: var_200 = var_1FC & "Select M.Vdate As Vdate,M.Vno As Vno,MC.Name As MemCatName,S.CompanyType As MemCatCode,S.Name As MemName,S.CardNo,M.Comments As Discription,M.CompCode As MemCode,M.AmtCr As Amount,M.U_Name From PayCharge M Left Join SubGroup S On M.CompCode=S.SubCode Left Join MemCatMast MC On MC.Code=S.CompanyType Where M.Vdate"
  loc_160261B: var_218 = var_200 & var_A8 & var_A4 & " And M.PayType='Member' And M.Site_Code='" & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078
  loc_160262B: Me.Connection15.Execute var_218 & "' Or M.LogSite_Code='HO')) R Order By R.MemCatName,R.MemName,R.Vdate,R.Vno", var_FC, -1
  loc_1602636: Set var_90 = var_1F4
  loc_1602663: var_88 = vbNullString
  loc_160267A: If (var_90.RecordCount > 0) Then
  loc_1602680:   var_90.MoveFirst
  loc_1602685:   ' Referenced from: 1602FE7
  loc_1602694:   If Not(var_90.EOF) Then
  loc_160269D:     var_BC = "MemCatName"
  loc_16026A9:     var_1F4 = var_90.Fields
  loc_16026D0:     If (var_BC <> Proc_6_38_E69628(CVar(var_1F4.Item(var_BC)), var_9C, var_1F4, "From : ")) Then
  loc_16026D6:       var_BC = "MemCatName"
  loc_1602707:       Set var_22C = var_8C 
  loc_1602716:       var_22C.AddNew var_BC, var_CC
  loc_1602740:       var_22C.Fields.Item("MLine").Value = "GF"
  loc_1602772:       var_22C.Fields.Item("Facility").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MLine")), var_15C))
  loc_160277E:       var_CC = "*"
  loc_1602787:       var_BC = "Mark"
  loc_16027A3:       var_22C.Fields.Item(var_BC).Value = var_CC
  loc_16027BA:       var_22C.Update var_BC, var_CC
  loc_16027C1:       Set var_22C = Nothing 
  loc_16027C5:     End If
  loc_16027FE:     If (var_12C <> Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCode")), var_88)) Then
  loc_1602804:       var_BC = "MemCode"
  loc_1602829:       var_88 = Proc_6_38_E69628(CVar(var_90.Fields.Item(var_BC)))
  loc_1602835:       Set var_230 = var_8C 
  loc_1602844:       var_230.AddNew var_BC, var_CC
  loc_1602849:       var_BC = 2
  loc_1602850:       var_DC = 1
  loc_1602859:       var_FC = Me.FGrid
  loc_160287A:       If (CStr(var_FC.TextMatrix) = "Yes") Then
  loc_16028A2:         var_FC.Recordset15.Fields.Item("MLine").Value = "GF"
  loc_16028B1:       Else
  loc_16028D6:         var_230.Fields.Item("MLine").Value = vbNullString
  loc_16028E2:       End If
  loc_160291B:       var_11C = Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CardNo")), var_DC)), &H19)
  loc_1602943:       var_230.Fields.Item("DATE").Value = var_11C
  loc_16029A8:       var_230.Fields.Item("Code").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCode"))))
  loc_1602A19:       var_230.Fields.Item("Facility").Value = CVar(Proc_6_45_EADFB8(CStr(var_90.Fields.Item("MemName").Value), &H32))
  loc_1602A7E:       var_230.Fields.Item("CatCode").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCatcode"))))
  loc_1602AB5:       var_BC = "MemCode"
  loc_1602ADA:       var_1E0 = Proc_6_38_E69628(CVar(var_90.Fields.Item(var_BC)), "Select count(Distinct R.Vdate) From (Select M.EntryDate As Vdate From MemFacilityBilling M Where M.MemCode='", var_11C, -1, var_24C)
  loc_1602AF3:       var_1F0 = var_250 & Proc_6_38_E69628(CVar(var_90.Fields.Item("CardNo")), var_DC) & "' And M.EntryDate" & var_AC & " And M.Site_Code='"
  loc_1602B16:       var_208 = var_1F0 & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078 & "' Or M.LogSite_Code='HO') Union All " & "Select M.Vdate As Vdate From PayCharge M Where M.CompCode='"
  loc_1602B5A:       var_21C = var_254 & Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCode")), var_208, 0) & "' And M.Vdate" & var_A8 & " And M.PayType='Member' And M.Site_Code='"
  loc_1602B7F:       unk_56304A.Execute var_21C & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078 & "' Or M.LogSite_Code='HO')) R", var_13C, var_BC
  loc_1602B87:        = var_24C.Fields
  loc_1602B8F:        = var_250.Item()
  loc_1602B97:        = var_254.Value
  loc_1602BA2:       Proc_6_39_E7D3A0(var_15C)
  loc_1602BCA:       var_230.Fields.Item("Total").Value = var_15C
  loc_1602C16:       var_CC = "*"
  loc_1602C1F:       var_BC = "Mark"
  loc_1602C3B:       var_230.Fields.Item(var_BC).Value = var_CC
  loc_1602C52:       var_230.Update var_BC, var_CC
  loc_1602C59:       Set var_230 = Nothing 
  loc_1602C5D:     End If
  loc_1602C64:     var_DC = 1
  loc_1602C6D:     var_FC = Me.FGrid
  loc_1602C8E:     If (CStr(var_FC.TextMatrix) = "Yes") Then
  loc_1602C94:       Set var_260 = var_8C 
  loc_1602CA3:       var_FC.Recordset15.AddNew 2, var_CC
  loc_1602CCD:       var_260.Fields.Item("MLine").Value = vbNullString
  loc_1602D20:       var_DC = "DATE"
  loc_1602D3C:       var_260.Fields.Item(var_DC).Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_1602D9E:       var_260.Fields.Item("Code").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCode")), 1, 1))
  loc_1602DEC:       var_10C = CVar(Proc_6_45_EADFB8(CStr(var_90.Fields.Item("Discription").Value), &H4B, var_DC)) 'String
  loc_1602E0F:       var_260.Fields.Item("Facility").Value = var_10C
  loc_1602E4F:       Proc_6_47_EF6560(var_10C, CVar(var_90.Fields.Item("Amount")))
  loc_1602E77:       var_260.Fields.Item("Total").Value = var_10C
  loc_1602EB2:       Proc_6_47_EF6560(var_10C, CVar(var_90.Fields.Item("U_Name")))
  loc_1602EDA:       var_260.Fields.Item("User").Value = var_10C
  loc_1602F14:       var_260.Fields.Item("Mark").Value = "*"
  loc_1602F23:       var_BC = "MemCatcode"
  loc_1602F48:       var_10C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_BC)), var_BC)) 'String
  loc_1602F4F:       var_CC = "CatCode"
  loc_1602F6B:       var_260.Fields.Item(var_CC).Value = var_10C
  loc_1602F8B:       var_260.Update var_BC, var_CC
  loc_1602F92:       Set var_260 = Nothing 
  loc_1602F99:       var_CC = CVar(var_98) 'Double
  loc_1602FC3:       Proc_6_39_E7D3A0(var_10C, CVar(var_90.Fields.Item("Amount")))
  loc_1602FCB:       var_11C = (var_CC + var_10C)
  loc_1602FD0:       var_98 = CSng(Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1602FDF:     End If
  loc_1602FE2:     var_90.MoveNext
  loc_1602FE7:     GoTo loc_1602685
  loc_1602FEA:   End If
  loc_1602FFA:   var_FC = Me.FGrid
  loc_160301B:   If (CStr(var_FC.TextMatrix) = "Yes") Then
  loc_1603021:     Set var_264 = var_8C 
  loc_1603030:     var_FC.Recordset15.AddNew 2, var_CC
  loc_160305A:     var_264.Fields.Item("MLine").Value = "GF"
  loc_160308B:     var_264.Fields.Item("DATE").Value = vbNullString
  loc_16030BC:     var_264.Fields.Item("Code").Value = vbNullString
  loc_16030C8:     var_CC = "AMOUNT GRAND TOTAL :-"
  loc_16030ED:     var_264.Fields.Item("Facility").Value = vbNullString
  loc_1603104:     Proc_6_47_EF6560(var_FC, var_98, 1)
  loc_160312C:     var_264.Fields.Item("Total").Value = var_FC
  loc_1603160:     var_264.Fields.Item("User").Value = vbNullString
  loc_1603191:     var_264.Fields.Item("Mark").Value = "*"
  loc_160319D:     var_CC = vbNullString
  loc_16031A6:     var_BC = "CatCode"
  loc_16031C2:     var_264.Fields.Item(var_BC).Value = var_CC
  loc_16031D9:     var_264.Update var_BC, var_CC
  loc_16031E0:     Set var_264 = Nothing 
  loc_16031E4:   End If
  loc_16031E4: End If
  loc_16031EE: arg_2C = Me.FGrid1.Text
  loc_160320C: Me.FGrid1.Rows = 2
  loc_1603228: If (var_8C.RecordCount > 0) Then
  loc_1603231:   CVarUnk
  loc_1603236:   VerifyVarObj
  loc_160323C:   Set var_1F4 = Me.FGrid1
  loc_1603242:   LateIdStAd
  loc_1603272:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_8C)
  loc_160327D: End If
  loc_1603281: Set var_270 = Me.FGrid1
  loc_160328D: var_270.Tag = "MemVisitDetail"
  loc_160329E: var_270.Cols = 8
  loc_16032A3: var_BC = 0
  loc_16032AC: var_DC = 0
  loc_16032B5: var_12C = "mLine"
  loc_16032BE: LateIdCallSt
  loc_16032C6: var_BC = 0
  loc_16032CF: var_DC = 0
  loc_16032DB: LateIdCallSt
  loc_16032E3: var_BC = 0
  loc_16032EC: var_DC = 1
  loc_16032F5: var_12C = "CardNo/Date"
  loc_16032FE: LateIdCallSt
  loc_1603306: var_BC = 1
  loc_160330F: var_DC = &H708
  loc_160331B: LateIdCallSt
  loc_1603323: var_BC = 0
  loc_160332C: var_DC = 2
  loc_1603335: var_12C = "Code"
  loc_160333E: LateIdCallSt
  loc_1603346: var_BC = 2
  loc_160334F: var_DC = 0
  loc_160335B: LateIdCallSt
  loc_1603363: var_BC = 0
  loc_160336C: var_DC = 3
  loc_1603375: var_12C = "Category/Member/Charges"
  loc_160337E: LateIdCallSt
  loc_1603386: var_BC = 3
  loc_1603395: var_DC = CVar(CInt(1)) 'Integer
  loc_160339C: LateIdCallSt
  loc_16033A4: var_BC = 3
  loc_16033B3: var_DC = CVar(CInt(1)) 'Integer
  loc_16033BA: LateIdCallSt
  loc_16033C2: var_BC = 3
  loc_16033CB: var_DC = &H1068
  loc_16033D7: LateIdCallSt
  loc_16033DF: var_BC = 0
  loc_16033E8: var_DC = 4
  loc_16033F1: var_12C = "Visit/Amount"
  loc_16033FA: LateIdCallSt
  loc_1603402: var_BC = 4
  loc_1603411: var_DC = CVar(CInt(7)) 'Integer
  loc_1603418: LateIdCallSt
  loc_1603420: var_BC = 4
  loc_160342F: var_DC = CVar(CInt(7)) 'Integer
  loc_1603436: LateIdCallSt
  loc_160343E: var_BC = 4
  loc_1603447: var_DC = &H640
  loc_1603453: LateIdCallSt
  loc_160345B: var_BC = 0
  loc_1603464: var_DC = 5
  loc_160346D: var_12C = "User"
  loc_1603476: LateIdCallSt
  loc_160347E: var_BC = 5
  loc_1603487: var_DC = &H640
  loc_1603493: LateIdCallSt
  loc_160349B: var_BC = 0
  loc_16034A4: var_DC = 6
  loc_16034AD: var_12C = "MARK"
  loc_16034B6: LateIdCallSt
  loc_16034BE: var_BC = 6
  loc_16034C7: var_DC = 0
  loc_16034D3: LateIdCallSt
  loc_16034DB: var_BC = 0
  loc_16034E4: var_DC = 7
  loc_16034ED: var_12C = "CatCode"
  loc_16034F6: LateIdCallSt
  loc_16034FE: var_BC = 7
  loc_1603507: var_DC = 0
  loc_1603513: LateIdCallSt
  loc_160351B: var_BC = 2
  loc_1603522: var_DC = 1
  loc_160354C: If (CStr(Me.FGrid.TextMatrix) <> "Yes") Then
  loc_160354F:   var_BC = 5
  loc_1603558:   var_DC = 0
  loc_1603564:   LateIdCallSt
  loc_160356C: End If
  loc_160356E: Set var_270 = Nothing 
  loc_1603586: If (var_90.RecordCount <= 0) Then
  loc_160358E:   global_160 = 0
  loc_1603591:   Exit Sub
  loc_1603592: End If
  loc_1603596: Set var_1F4 = Me.FGrid1
  loc_16035C6: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_16035C9:   var_BC = vbNullString
  loc_16035D3:   Set var_1F4 = Me.FGrid1
  loc_16035E4: End If
  loc_160361B: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_160363B: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_1603689: var_BC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_16036A9: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_16036C5: Set var_8C = Nothing
  loc_16036CD: Set var_90 = Nothing
  loc_16036D2: IStAd
  loc_16036D6: Exit Sub
End Sub

Public Sub MemBirthAnnvDtls(formName, FRow, Fcol) '17BBE08
  'Data Table: 563044
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C4 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim var_1D0 As String
  Dim var_1D8 As String
  Dim var_1DC As Variant
  Dim unk_56304A As Connection15
  Dim var_90 As Recordset15
  Dim var_1F8 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_20C As MSHFlexGrid
  Dim var_210 As Recordset15
  Dim var_214 As MSHFlexGrid
  loc_17B9EB2: var_164 = IIf((Me.GridString1 = vbNullString), CVar(var_A4 & " And S.CompanyType In ('')"), CVar(var_A4 & " And S.CompanyType In (") & Me.GridString1 & ") ")
  loc_17B9F1B: var_164 = IIf((Me.GridString2 = vbNullString), CVar(var_A4 & " And S.Subcode In ('') "), CVar(var_A4 & " And S.Subcode In (") & Me.GridString2 & ") ")
  loc_17B9F24: var_B0 = CStr(var_164)
  loc_17B9F44: var_124 = " And MCG.Subcode+cast(MCG.SNo as Varchar)+'C' In ("
  loc_17B9F5E: var_184 = " And MCG.Subcode+cast(MCG.SNo as Varchar)+'C' In ('') "
  loc_17B9F89: var_A8 = CStr(IIf((Me.GridString3 = vbNullString), var_184, ") " & Me.GridString3 & ") "))
  loc_17B9FA7: var_124 = " And MSG.Subcode+'S' In ("
  loc_17B9FC1: var_184 = " And MSG.Subcode+'S' In ('') "
  loc_17B9FEC: var_B4 = CStr(IIf((Me.GridString4 = vbNullString), var_184, ") " & Me.GridString4 & ") "))
  loc_17BA008: If (CStr(var_164) = vbNullString) Then
  loc_17BA00E:   var_AC = "''"
  loc_17BA011: End If
  loc_17BA019: If (var_B0 = vbNullString) Then
  loc_17BA01F:   var_B0 = "''"
  loc_17BA022: End If
  loc_17BA02A: If (var_A8 = vbNullString) Then
  loc_17BA030:   var_A8 = "''"
  loc_17BA033: End If
  loc_17BA03B: If (var_B4 = vbNullString) Then
  loc_17BA041:   var_B4 = "''"
  loc_17BA044: End If
  loc_17BA054: var_D4 = Me.FGrid
  loc_17BA070: If (var_D4.TextMatrix = "Report") Then
  loc_17BA079:   Call 0.Method_arg_54 ("Member Birthday/Anniversary Details", 1, 2, var_D4)
  loc_17BA081:   var_C4 = 0
  loc_17BA0AB:   var_1D0 = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_17BA0BE:   var_F4 = Me.FGrid
  loc_17BA0D8:   Set var_1DC = 1(1 & CStr(var_F4.TextMatrix))
  loc_17BA0DE:   var_F4.TextBox.Text = var_1D0
  loc_17BA0FE:   var_C4 = 2
  loc_17BA127:   If (Me.Check1.Value = 0) Then
  loc_17BA12D:     var_D4 = Me.FormulaString2
  loc_17BA134:     var_C4 = "For Category : "
  loc_17BA150:     var_124 = vbNullString
  loc_17BA161:     Set var_1DC = Me.Text2
  loc_17BA167:     Me.Text2.Text = CStr(var_C4 & Left(var_D4, &H73) & var_124)
  loc_17BA180:   Else
  loc_17BA187:     Set var_1DC = Me.Text2
  loc_17BA18D:     var_1DC.Text = "For Category :   All"
  loc_17BA195:   End If
  loc_17BA1A2:   Call Proc_292_96_115F0A0(New, var_1DC, var_D4, var_C4, var_C4)
  loc_17BA1AA:   Set var_8C = var_1DC
  loc_17BA1B0:   var_C4 = CVar(CLng(0)) 'Long
  loc_17BA1B5:   var_174 = 1
  loc_17BA1C8:   var_D4 = Me.FGrid.TextMatrix)
  loc_17BA20E:   Call Proc_292_100_11417CC(CStr(var_D4), CStr(Me.FGrid.TextMatrix)), var_1D0, Me.FGrid.TextMatrix), 1, CVar(CLng(1)), var_D4)
  loc_17BA242:   var_198 = "Select Case When M.SNo<>1 Then M.ConPrefix + ' ' + M.Name + ' C/0 ' Else '' End + (S.ConPrefix + ' ' + S.ConPerson + Case When IsNull(S.ConPersonMName,'')<>'' Then ' '+S.ConPersonMName Else '' End + Case When IsNull(S.ConPersonLName,'')<>'' Then ' '+S.ConPersonLName Else '' End) As Name, S.Name As AcName, S.CardNo as CardNo, Mcat.NAme as CompanyType,M.DOB As Birthday,M.WedDate As AnniversaryDay,S.Phone as Phone,S.Mobile as Mobile,(Substring(LTrim(IsNull(S.AddName,'')),1,4)+'.- '+IsNull(S.Add1,'')+IsNull(S.Add2,'')+IsNull(S.Add3,'')) as Address,C.CityName As City,CO.Name As Country,ST.Name As State,S.Pin As PinCode, S.EMail as EMail,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Father' And SubCode=S.SubCode),'') Father,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Mother' And SubCode=S.SubCode),'') Mother,SCR.CurrBal as CurrBal,SCR.CurBalType as CurBalType, '1' as mType From " & " (((((Subgroup S Left Join MemberFamily M On S.Subcode=M.Subcode)Left Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType FROM SUBGROUPCURRBAL GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode where ActiveYN=1 and substring(convert(char,M.DOB,106),1,LEN(convert(char,M.DOB,106))-5) in ( "
  loc_17BA25E:   var_1D8 = CStr(var_C4 & Left(var_D4, &H73) & var_124) & CStr(var_C4 & Left(var_D4, &H73) & var_124) & var_1D0 & " ) " & " ) " & var_AC & " "
  loc_17BA27C:   unk_56304A.Execute var_1D8 & var_B0 & vbNullString & " Order By CardNo,mType", var_D4, -1
  loc_17BA287:   Set var_90 = Me.FGrid
  loc_17BA2A6:   var_88 = vbNullString
  loc_17BA2BD:   If (var_90.RecordCount > 0) Then
  loc_17BA2C3:     var_90.MoveFirst
  loc_17BA2C8:     ' Referenced from: 17BAA96
  loc_17BA2D7:     If Not(var_90.EOF) Then
  loc_17BA2DD:       Set var_1F8 = var_8C 
  loc_17BA2EC:       var_1F8.AddNew var_C4, var_124
  loc_17BA316:       var_1F8.Fields.Item("mLine").Value = "GF"
  loc_17BA325:       var_C4 = "Name"
  loc_17BA331:       var_1DC = var_90.Fields
  loc_17BA383:       var_1F8.Fields.Item("Name").Value = Left(CVar(Proc_6_38_E69628(CVar(var_1DC.Item(var_C4)), var_1DC, var_174, var_C4)), &H4B)
  loc_17BA3FE:       var_1F8.Fields.Item("AcName").Value = Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("AcName")), "From : ", CVar(var_90.Fields.Item("AcName")))), &H4B)
  loc_17BA463:       var_1F8.Fields.Item("CardNo").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CardNo")), CVar(var_90.Fields.Item("CardNo"))))
  loc_17BA4C3:       var_1F8.Fields.Item("CompanyType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CompanyType"))))
  loc_17BA523:       var_1F8.Fields.Item("Birthday").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Birthday"))))
  loc_17BA583:       var_1F8.Fields.Item("AnniversaryDay").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("AnniversaryDay"))))
  loc_17BA5E3:       var_1F8.Fields.Item("Phone").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Phone"))))
  loc_17BA643:       var_1F8.Fields.Item("Mobile").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Mobile"))))
  loc_17BA6A3:       var_1F8.Fields.Item("Address").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Address"))))
  loc_17BA703:       var_1F8.Fields.Item("City").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("City"))))
  loc_17BA763:       var_1F8.Fields.Item("Country").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Country"))))
  loc_17BA7C3:       var_1F8.Fields.Item("State").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("State"))))
  loc_17BA823:       var_1F8.Fields.Item("PinCode").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PinCode"))))
  loc_17BA883:       var_1F8.Fields.Item("EMail").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Email"))))
  loc_17BA8E3:       var_1F8.Fields.Item("Father").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Father"))))
  loc_17BA943:       var_1F8.Fields.Item("Mother").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("mOther"))))
  loc_17BA9A3:       var_1F8.Fields.Item("CurrBal").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CurrBal"))))
  loc_17BAA03:       var_1F8.Fields.Item("CurrBalType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CurBalType"))))
  loc_17BAA1B:       var_C4 = "mType"
  loc_17BAA47:       var_124 = "mType"
  loc_17BAA63:       var_1F8.Fields.Item(var_124).Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_C4))))
  loc_17BAA83:       var_1F8.Update var_C4, var_124
  loc_17BAA8A:       Set var_1F8 = Nothing 
  loc_17BAA91:       var_90.MoveNext
  loc_17BAA96:       GoTo loc_17BA2C8
  loc_17BAA99:     End If
  loc_17BAA99:   End If
  loc_17BAAA3:   arg_2C = Me.FGrid1.Text
  loc_17BAAC1:   Me.FGrid1.Rows = 2
  loc_17BAADD:   If (var_8C.RecordCount > 0) Then
  loc_17BAAE6:     CVarUnk
  loc_17BAAEB:     VerifyVarObj
  loc_17BAAF1:     Set var_1DC = Me.FGrid1
  loc_17BAAF7:     LateIdStAd
  loc_17BAB27:     Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_17BAB32:   End If
  loc_17BAB36:   Set var_20C = Me.FGrid1
  loc_17BAB42:   var_20C.Tag = "MemBirthAnnvDtls"
  loc_17BAB53:   var_20C.Cols = &H14
  loc_17BAB58:   var_C4 = 0
  loc_17BAB61:   var_174 = 0
  loc_17BAB6A:   var_194 = "mLine"
  loc_17BAB73:   LateIdCallSt
  loc_17BAB7B:   var_C4 = 0
  loc_17BAB84:   var_174 = 0
  loc_17BAB90:   LateIdCallSt
  loc_17BAB98:   var_C4 = 0
  loc_17BABA1:   var_174 = 1
  loc_17BABAA:   var_194 = "Name"
  loc_17BABB3:   LateIdCallSt
  loc_17BABBB:   var_C4 = 1
  loc_17BABC4:   var_174 = &H1194
  loc_17BABD0:   LateIdCallSt
  loc_17BABD8:   var_C4 = 0
  loc_17BABE1:   var_174 = 2
  loc_17BABEA:   var_194 = "AcName"
  loc_17BABF3:   LateIdCallSt
  loc_17BABFB:   var_C4 = 2
  loc_17BAC04:   var_174 = &HBB8
  loc_17BAC10:   LateIdCallSt
  loc_17BAC18:   var_C4 = 0
  loc_17BAC21:   var_174 = 3
  loc_17BAC2A:   var_194 = "Card No."
  loc_17BAC33:   LateIdCallSt
  loc_17BAC3B:   var_C4 = 3
  loc_17BAC44:   var_174 = &H3E8
  loc_17BAC50:   LateIdCallSt
  loc_17BAC58:   var_C4 = 0
  loc_17BAC61:   var_174 = 4
  loc_17BAC6A:   var_194 = "Company Type"
  loc_17BAC73:   LateIdCallSt
  loc_17BAC7B:   var_C4 = 4
  loc_17BAC84:   var_174 = &H708
  loc_17BAC90:   LateIdCallSt
  loc_17BAC98:   var_C4 = 0
  loc_17BACA1:   var_174 = 5
  loc_17BACAA:   var_194 = "Birthday"
  loc_17BACB3:   LateIdCallSt
  loc_17BACBB:   var_C4 = 5
  loc_17BACC4:   var_174 = &H4B0
  loc_17BACD0:   LateIdCallSt
  loc_17BACD8:   var_C4 = 0
  loc_17BACE1:   var_174 = 6
  loc_17BACEA:   var_194 = "Anniversary"
  loc_17BACF3:   LateIdCallSt
  loc_17BACFB:   var_C4 = 6
  loc_17BAD04:   var_174 = &H4B0
  loc_17BAD10:   LateIdCallSt
  loc_17BAD18:   var_C4 = 0
  loc_17BAD21:   var_174 = 7
  loc_17BAD2A:   var_194 = "Phone"
  loc_17BAD33:   LateIdCallSt
  loc_17BAD3B:   var_C4 = 7
  loc_17BAD44:   var_174 = &H4B0
  loc_17BAD50:   LateIdCallSt
  loc_17BAD58:   var_C4 = 0
  loc_17BAD61:   var_174 = 8
  loc_17BAD6A:   var_194 = "Mobile"
  loc_17BAD73:   LateIdCallSt
  loc_17BAD7B:   var_C4 = 8
  loc_17BAD84:   var_174 = &H4B0
  loc_17BAD90:   LateIdCallSt
  loc_17BAD98:   var_C4 = 0
  loc_17BADA1:   var_174 = 9
  loc_17BADAA:   var_194 = "Address"
  loc_17BADB3:   LateIdCallSt
  loc_17BADBB:   var_C4 = 9
  loc_17BADC4:   var_174 = &HFA0
  loc_17BADD0:   LateIdCallSt
  loc_17BADD8:   var_C4 = 0
  loc_17BADE1:   var_174 = &HA
  loc_17BADEA:   var_194 = "City"
  loc_17BADF3:   LateIdCallSt
  loc_17BADFB:   var_C4 = &HA
  loc_17BAE04:   var_174 = &H708
  loc_17BAE10:   LateIdCallSt
  loc_17BAE18:   var_C4 = 0
  loc_17BAE21:   var_174 = &HB
  loc_17BAE2A:   var_194 = "Country"
  loc_17BAE33:   LateIdCallSt
  loc_17BAE3B:   var_C4 = &HB
  loc_17BAE44:   var_174 = &H708
  loc_17BAE50:   LateIdCallSt
  loc_17BAE58:   var_C4 = 0
  loc_17BAE61:   var_174 = &HC
  loc_17BAE6A:   var_194 = "State"
  loc_17BAE73:   LateIdCallSt
  loc_17BAE7B:   var_C4 = &HC
  loc_17BAE84:   var_174 = &H708
  loc_17BAE90:   LateIdCallSt
  loc_17BAE98:   var_C4 = 0
  loc_17BAEA1:   var_174 = &HD
  loc_17BAEAA:   var_194 = "PinCode"
  loc_17BAEB3:   LateIdCallSt
  loc_17BAEBB:   var_C4 = &HD
  loc_17BAEC4:   var_174 = &H5DC
  loc_17BAED0:   LateIdCallSt
  loc_17BAED8:   var_C4 = 0
  loc_17BAEE1:   var_174 = &HE
  loc_17BAEEA:   var_194 = "EMail"
  loc_17BAEF3:   LateIdCallSt
  loc_17BAEFB:   var_C4 = &HE
  loc_17BAF04:   var_174 = &H5DC
  loc_17BAF10:   LateIdCallSt
  loc_17BAF18:   var_C4 = 0
  loc_17BAF21:   var_174 = &HF
  loc_17BAF2A:   var_194 = "Father"
  loc_17BAF33:   LateIdCallSt
  loc_17BAF3B:   var_C4 = &HF
  loc_17BAF44:   var_174 = 0
  loc_17BAF50:   LateIdCallSt
  loc_17BAF58:   var_C4 = 0
  loc_17BAF61:   var_174 = &H10
  loc_17BAF6A:   var_194 = "Mother"
  loc_17BAF73:   LateIdCallSt
  loc_17BAF7B:   var_C4 = &H10
  loc_17BAF84:   var_174 = 0
  loc_17BAF90:   LateIdCallSt
  loc_17BAF98:   var_C4 = 0
  loc_17BAFA1:   var_174 = &H11
  loc_17BAFAA:   var_194 = "CurrBal"
  loc_17BAFB3:   LateIdCallSt
  loc_17BAFBB:   var_C4 = &H11
  loc_17BAFCA:   var_174 = CVar(CInt(7)) 'Integer
  loc_17BAFD1:   LateIdCallSt
  loc_17BAFD9:   var_C4 = &H11
  loc_17BAFE2:   var_174 = 0
  loc_17BAFEE:   LateIdCallSt
  loc_17BAFF6:   var_C4 = 0
  loc_17BAFFF:   var_174 = &H12
  loc_17BB008:   var_194 = "CurrBalType"
  loc_17BB011:   LateIdCallSt
  loc_17BB019:   var_C4 = &H12
  loc_17BB022:   var_174 = 0
  loc_17BB02E:   LateIdCallSt
  loc_17BB036:   var_C4 = 0
  loc_17BB03F:   var_174 = &H13
  loc_17BB048:   var_194 = "mType"
  loc_17BB051:   LateIdCallSt
  loc_17BB059:   var_C4 = &H13
  loc_17BB062:   var_174 = 0
  loc_17BB06E:   LateIdCallSt
  loc_17BB078:   Set var_20C = Nothing 
  loc_17BB07F: Else
  loc_17BB09C:   var_194 = "Mailing Label"
  loc_17BB0AB:   If (Me.FGrid.TextMatrix = var_194) Then
  loc_17BB0B4:     Call 0.Method_arg_54 ("Member Birthday/Anniversary Details", 1, 2, var_20C, 1, 2, var_20C, var_194)
  loc_17BB0BC:     var_C4 = 0
  loc_17BB0E6:     var_1D0 = 1 & CStr(Me.FGrid.TextMatrix) & " To :   "
  loc_17BB0F9:     var_F4 = Me.FGrid
  loc_17BB113:     Set var_1DC = 1(1 & CStr(var_F4.TextMatrix))
  loc_17BB119:     var_F4.TextBox.Text = var_1D0
  loc_17BB139:     var_C4 = 2
  loc_17BB150:     var_174 = 0
  loc_17BB162:     If (Me.Check1.Value = var_174) Then
  loc_17BB168:       var_D4 = Me.FormulaString2
  loc_17BB16F:       var_C4 = "For Category :   "
  loc_17BB18B:       var_124 = vbNullString
  loc_17BB19C:       Set var_1DC = Me.Text2
  loc_17BB1A2:       Me.Text2.Text = CStr(var_C4 & Left(var_D4, &H73) & var_124)
  loc_17BB1BB:     Else
  loc_17BB1C2:       Set var_1DC = Me.Text2
  loc_17BB1C8:       var_1DC.Text = "For Category :     All"
  loc_17BB1D0:     End If
  loc_17BB1DD:     Call Proc_292_95_1093F08(New, var_1DC, var_D4, var_C4, var_C4, "From :   ", var_174)
  loc_17BB1E5:     Set var_8C = var_1DC
  loc_17BB1EB:     var_C4 = CVar(CLng(0)) 'Long
  loc_17BB1F0:     var_174 = 1
  loc_17BB203:     var_D4 = Me.FGrid.TextMatrix)
  loc_17BB249:     Call Proc_292_100_11417CC(CStr(var_D4), CStr(Me.FGrid.TextMatrix)), var_1D0, Me.FGrid.TextMatrix), 1, CVar(CLng(1)), var_D4, var_174)
  loc_17BB27D:     var_198 = "SELECT S.Name AS Name, S.ConPrefix, RTrim(RTrim(LTrim(S.ConPerSon))+' '+RTrim(LTrim(S.ConPerSonMName))+' '+RTrim(LTrim(S.ConPerSonLName))) As ConPerSon,S.CardNo as CardNo,MCat.Name as MemType, S.Add1, S.Add2, S.Add3, Ltrim(IsNull(S.Pin,'')) As PinCode, c.CityName,ltrim(IsNull(S.Phone,'')) As Phone,ltrim(IsNull(S.Mobile,'')) As Mobile, '1' as mType From " & " (((((Subgroup S Left Join MemberFamily M On S.Subcode=M.Subcode) Left Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) where ActiveYN=1 and substring(convert(char,M.DOB,106),1,LEN(convert(char,M.DOB,106))-5) in ( "
  loc_17BB299:     var_1D8 = CStr(var_C4 & Left(var_D4, &H73) & var_124) & CStr(var_C4 & Left(var_D4, &H73) & var_124) & var_1D0 & " ) " & " ) " & var_AC & " "
  loc_17BB2B7:     unk_56304A.Execute var_1D8 & var_B0 & vbNullString & " Order By CardNo,mType ", var_D4, -1
  loc_17BB2C2:     Set var_90 = Me.FGrid
  loc_17BB2E1:     var_88 = vbNullString
  loc_17BB2F8:     If (var_90.RecordCount > 0) Then
  loc_17BB2FE:       var_90.MoveFirst
  loc_17BB303:       ' Referenced from:   17BB85B
  loc_17BB312:       If Not(var_90.EOF) Then
  loc_17BB318:         Set var_210 = var_8C 
  loc_17BB327:         var_210.AddNew var_C4, var_124
  loc_17BB351:         var_210.Fields.Item("mLine").Value = "GF"
  loc_17BB360:         var_C4 = "Name"
  loc_17BB36C:         var_1DC = var_90.Fields
  loc_17BB3A8:         var_210.Fields.Item("Name").Value = CVar(Proc_6_38_E69628(CVar(var_1DC.Item(var_C4)), var_1DC, var_C4, var_C4, var_20C))
  loc_17BB3C0:         var_C4 = "ConPrefix"
  loc_17BB408:         var_210.Fields.Item("ConPrefix").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_C4)), var_174, var_C4))
  loc_17BB468:         var_210.Fields.Item("ConPerSon").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ConPerson")), var_20C))
  loc_17BB4C8:         var_210.Fields.Item("CardNo").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CardNo"))))
  loc_17BB528:         var_210.Fields.Item("MemType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemType"))))
  loc_17BB588:         var_210.Fields.Item("Add1").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Add1"))))
  loc_17BB5E8:         var_210.Fields.Item("Add2").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Add2"))))
  loc_17BB648:         var_210.Fields.Item("Add3").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Add3"))))
  loc_17BB6A8:         var_210.Fields.Item("PinCode").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("PinCode"))))
  loc_17BB708:         var_210.Fields.Item("CityName").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("CityName"))))
  loc_17BB768:         var_210.Fields.Item("Phone").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Phone"))))
  loc_17BB7C8:         var_210.Fields.Item("Mobile").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Mobile"))))
  loc_17BB7E0:         var_C4 = "mType"
  loc_17BB80C:         var_124 = "mType"
  loc_17BB828:         var_210.Fields.Item(var_124).Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_C4))))
  loc_17BB848:         var_210.Update var_C4, var_124
  loc_17BB84F:         Set var_210 = Nothing 
  loc_17BB856:         var_90.MoveNext
  loc_17BB85B:         GoTo loc_17BB303
  loc_17BB85E:       End If
  loc_17BB85E:     End If
  loc_17BB868:     arg_2C = Me.FGrid1.Text
  loc_17BB886:     Me.FGrid1.Rows = 2
  loc_17BB8A2:     If (var_8C.RecordCount > 0) Then
  loc_17BB8AB:       CVarUnk
  loc_17BB8B0:       VerifyVarObj
  loc_17BB8B6:       Set var_1DC = Me.FGrid1
  loc_17BB8BC:       LateIdStAd
  loc_17BB8EC:       Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_17BB8F7:     End If
  loc_17BB8FB:     Set var_214 = Me.FGrid1
  loc_17BB907:     var_214.Tag = "MemBirthMailLabel"
  loc_17BB918:     var_214.Cols = &HE
  loc_17BB91D:     var_C4 = 0
  loc_17BB926:     var_174 = 0
  loc_17BB92F:     var_194 = "mLine"
  loc_17BB938:     LateIdCallSt
  loc_17BB940:     var_C4 = 0
  loc_17BB949:     var_174 = 0
  loc_17BB955:     LateIdCallSt
  loc_17BB95D:     var_C4 = 0
  loc_17BB966:     var_174 = 1
  loc_17BB96F:     var_194 = "Name"
  loc_17BB978:     LateIdCallSt
  loc_17BB980:     var_C4 = 1
  loc_17BB989:     var_174 = &HBB8
  loc_17BB995:     LateIdCallSt
  loc_17BB99D:     var_C4 = 0
  loc_17BB9A6:     var_174 = 2
  loc_17BB9AF:     var_194 = "Con Prefix"
  loc_17BB9B8:     LateIdCallSt
  loc_17BB9C0:     var_C4 = 2
  loc_17BB9C9:     var_174 = &H5DC
  loc_17BB9D5:     LateIdCallSt
  loc_17BB9DD:     var_C4 = 0
  loc_17BB9E6:     var_174 = 3
  loc_17BB9EF:     var_194 = "Con PerSon"
  loc_17BB9F8:     LateIdCallSt
  loc_17BBA00:     var_C4 = 3
  loc_17BBA09:     var_174 = &H7D0
  loc_17BBA15:     LateIdCallSt
  loc_17BBA1D:     var_C4 = 0
  loc_17BBA26:     var_174 = 4
  loc_17BBA2F:     var_194 = "Card No."
  loc_17BBA38:     LateIdCallSt
  loc_17BBA40:     var_C4 = 4
  loc_17BBA49:     var_174 = &H708
  loc_17BBA55:     LateIdCallSt
  loc_17BBA5D:     var_C4 = 0
  loc_17BBA66:     var_174 = 5
  loc_17BBA6F:     var_194 = "Mem Type"
  loc_17BBA78:     LateIdCallSt
  loc_17BBA80:     var_C4 = 5
  loc_17BBA89:     var_174 = &H7D0
  loc_17BBA95:     LateIdCallSt
  loc_17BBA9D:     var_C4 = 0
  loc_17BBAA6:     var_174 = 6
  loc_17BBAAF:     var_194 = "Add1"
  loc_17BBAB8:     LateIdCallSt
  loc_17BBAC0:     var_C4 = 6
  loc_17BBAC9:     var_174 = &H7D0
  loc_17BBAD5:     LateIdCallSt
  loc_17BBADD:     var_C4 = 0
  loc_17BBAE6:     var_174 = 7
  loc_17BBAEF:     var_194 = "Add2"
  loc_17BBAF8:     LateIdCallSt
  loc_17BBB00:     var_C4 = 7
  loc_17BBB09:     var_174 = &H7D0
  loc_17BBB15:     LateIdCallSt
  loc_17BBB1D:     var_C4 = 0
  loc_17BBB26:     var_174 = 8
  loc_17BBB2F:     var_194 = "Add3"
  loc_17BBB38:     LateIdCallSt
  loc_17BBB40:     var_C4 = 8
  loc_17BBB49:     var_174 = &H7D0
  loc_17BBB55:     LateIdCallSt
  loc_17BBB5D:     var_C4 = 0
  loc_17BBB66:     var_174 = 9
  loc_17BBB6F:     var_194 = "PinCode"
  loc_17BBB78:     LateIdCallSt
  loc_17BBB80:     var_C4 = 9
  loc_17BBB89:     var_174 = &HFA0
  loc_17BBB95:     LateIdCallSt
  loc_17BBB9D:     var_C4 = 0
  loc_17BBBA6:     var_174 = &HA
  loc_17BBBAF:     var_194 = "City Name"
  loc_17BBBB8:     LateIdCallSt
  loc_17BBBC0:     var_C4 = &HA
  loc_17BBBC9:     var_174 = &H708
  loc_17BBBD5:     LateIdCallSt
  loc_17BBBDD:     var_C4 = 0
  loc_17BBBE6:     var_174 = &HB
  loc_17BBBEF:     var_194 = "Phone"
  loc_17BBBF8:     LateIdCallSt
  loc_17BBC00:     var_C4 = &HB
  loc_17BBC09:     var_174 = &H708
  loc_17BBC15:     LateIdCallSt
  loc_17BBC1D:     var_C4 = 0
  loc_17BBC26:     var_174 = &HC
  loc_17BBC2F:     var_194 = "Mobile"
  loc_17BBC38:     LateIdCallSt
  loc_17BBC40:     var_C4 = &HC
  loc_17BBC49:     var_174 = &H708
  loc_17BBC55:     LateIdCallSt
  loc_17BBC5D:     var_C4 = 0
  loc_17BBC66:     var_174 = &HD
  loc_17BBC6F:     var_194 = "mType"
  loc_17BBC78:     LateIdCallSt
  loc_17BBC80:     var_C4 = &HD
  loc_17BBC89:     var_174 = 0
  loc_17BBC95:     LateIdCallSt
  loc_17BBC9F:     Set var_214 = Nothing 
  loc_17BBCA3:   End If
  loc_17BBCA3: End If
  loc_17BBCB7: If (var_90.RecordCount <= 0) Then
  loc_17BBCBF:   global_160 = 0
  loc_17BBCC2:   Exit Sub
  loc_17BBCC3: End If
  loc_17BBCC7: Set var_1DC = Me.FGrid1
  loc_17BBCF7: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_17BBCFA:   var_C4 = vbNullString
  loc_17BBD04:   Set var_1DC = Me.FGrid1
  loc_17BBD15: End If
  loc_17BBD4C: var_C4 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_17BBD6C: Me.FGrid1.Row = CVar(CLng(IIf(var_C4, FRow, 1)))
  loc_17BBDBA: var_C4 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_17BBDDA: Me.FGrid1.Col = CVar(CLng(IIf(var_C4, Fcol, 1)))
  loc_17BBDF6: Set var_8C = Nothing
  loc_17BBDFE: Set var_90 = Nothing
  loc_17BBE03: IStAd
  loc_17BBE07: Exit Sub
End Sub

Public Sub MemTaxReport(formName, FRow, Fcol) '19CAADC
  'Data Table: 563044
  Dim var_1B4 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As String
  Dim var_1E4 As Variant
  Dim var_234 As Variant
  Dim var_264 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_154 As Variant
  Dim var_268 As String
  Dim var_270 As String
  Dim var_254 As Variant
  Dim var_29C As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_224 As String
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_134 As Double
  Dim var_AA As Integer
  Dim var_348 As Recordset15
  Dim var_27C As Variant
  Dim var_90 As Recordset15
  Dim var_B2 As Integer
  Dim unk_56304A As Connection15
  Dim var_98 As Recordset15
  Dim var_12C As Double
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_C4 As Double
  Dim var_37C As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_388 As MSHFlexGrid
  loc_19C79F8: var_1B4 = " Between "
  loc_19C7A12: VarLateMemCallLdRfVar
  loc_19C7A1D: Proc_6_7_F26918(var_1A4, Me.FGrid, 1)
  loc_19C7A2E: var_1E4 = 0 & var_1A4 & " And " 
  loc_19C7A47: VarLateMemCallLdRfVar
  loc_19C7A52: Proc_6_7_F26918(var_254, Me.FGrid, 1)
  loc_19C7A5F: var_9C = CStr(1 & var_254)
  loc_19C7A77: var_144 = 1
  loc_19C7AA0: If (Me.Check1.Value = 0) Then
  loc_19C7AAA:   var_184 = CVar(var_9C & " And SubString(M1.Type,1,1) + M1.FacilityCode In (") 'String
  loc_19C7AC3:   var_A4 = CStr(Me.Check1 & Me.GridString1 & ") ")
  loc_19C7AD1: End If
  loc_19C7AD1: var_144 = 2
  loc_19C7AFA: If (Me.Check1.Value = 0) Then
  loc_19C7AFD:   var_144 = " And M.MemCatCode In ("
  loc_19C7B18:   var_A0 = CStr(var_144 & Me.GridString2 & ") ")
  loc_19C7B24: End If
  loc_19C7B33: var_B0 = CStr(Me.FGrid.Tag)
  loc_19C7B43: Call 0.Method_arg_54 ("Member Tax Report", var_144, var_144)
  loc_19C7B4B: var_144 = 0
  loc_19C7B88: var_1A4 = Me.FGrid
  loc_19C7BA2: Set var_27C = 1(1 & CStr(var_1A4.TextMatrix))
  loc_19C7BA8: var_1A4.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_19C7BCB: var_144 = 2
  loc_19C7BDB: var_184 = Me.FGrid
  loc_19C7BF5: Set var_27C = var_144(1 & CStr(var_184.TextMatrix))
  loc_19C7BFB: var_184.TextBox.Text = "Tax Name : "
  loc_19C7C1E: Call Proc_292_97_10FF844(New, var_27C, var_144)
  loc_19C7C26: Set var_8C = var_27C
  loc_19C7C4B: var_270 = "Select Name As MemCat, Code As MemCatCode From MemCatMast Where Site_Code='" & MemVar_1F95070 & "' And (LogSite_Code='" & MemVar_1F95078
  loc_19C7C74: Me.Connection15.Execute CStr(CVar(var_270 & "' Or LogSite_Code='HO') And Code In (") & Me.GridString2 & ") Order By Name"), var_1E4, -1
  loc_19C7C7F: Set var_94 = var_27C
  loc_19C7CB1: var_268 = "SELECT Description,'R'+Code As ChrgCode,Substring(Description,1,5) As SName FROM MembershipRevMast where Site_Code='" & MemVar_1F95070
  loc_19C7CBF: var_270 = "Select Name As MemCat, Code As MemCatCode From MemCatMast Where Site_Code='" & MemVar_1F95070 & "' And (LogSite_Code='" & MemVar_1F95078
  loc_19C7CC6: var_184 = CVar(var_270 & "' Or LogSite_Code='HO') And 'R'+Code In (") 'String
  loc_19C7CD5: var_144 = ") Union All Select Name As Description,'F'+Code As ChrgCode,SName From MemFacilityMast where Site_Code='"
  loc_19C7CE1: var_154 = CVar(MemVar_1F95070) 'String
  loc_19C7CED: var_234 = CVar(var_270 & "' Or LogSite_Code='HO') And Code In (") & Me.GridString1 & ") Order By Name" & var_154 & "' And (LogSite_Code='" 
  loc_19C7CFB: var_1B4 = "' Or LogSite_Code='HO') And 'F'+Code In ("
  loc_19C7D10: var_1D4 = ") Union All Select Name As Description,'O'+Code As ChrgCode,ShortName As SName From Depart where Site_Code='"
  loc_19C7D1F: var_2AC = var_234 & CVar(MemVar_1F95078) & 1 & Me.GridString1 & " And " & CVar(MemVar_1F95070) 
  loc_19C7D36: var_224 = "' Or LogSite_Code='HO') And 'O'+Code In ("
  loc_19C7D42: var_2EC = Me.GridString1
  loc_19C7D5E: Me.Connection15.Execute CStr(var_2AC & "' And (LogSite_Code='" & CVar(MemVar_1F95078) & var_224 & var_2EC & ") Order By Description"), var_33C, -1
  loc_19C7D69: Set var_90 = var_27C
  loc_19C7DB7: If (var_94.RecordCount > 0) Then
  loc_19C7DBD:   var_94.MoveFirst
  loc_19C7DC2:   ' Referenced from: 19C9D19
  loc_19C7DD1:   If Not(var_94.EOF) Then
  loc_19C7DD7:     var_BC = CDbl(0)
  loc_19C7DDD:     var_11C = CDbl(0)
  loc_19C7DF2:     var_AA = (var_AA + 1)
  loc_19C7DF8:     Set var_348 = var_8C 
  loc_19C7E07:     var_348.AddNew ") Order By Name", var_154
  loc_19C7E31:     var_348.Fields.Item("MLine").Value = vbNullString
  loc_19C7E65:     var_348.Fields.Item("Sno").Value = CVar(CStr(var_AA))
  loc_19C7EBF:     var_348.Fields.Item("MemCat").Value = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("MemCat")), var_AA, CDbl(0), CDbl(0), var_11C, var_BC))
  loc_19C7EE3:     var_27C = var_94.Fields
  loc_19C7F1F:     var_348.Fields.Item("MemCatCode").Value = CVar(Proc_6_38_E69628(CVar(var_27C.Item("MemCatcode")), var_27C, var_27C))
  loc_19C7F37:     var_90.MoveFirst
  loc_19C7F3C:     ' Referenced from: 19C9BE0
  loc_19C7F4D:     If (var_90.EOF = 0) Then
  loc_19C7F58:       If (MemVar_1F95078 = "LL") Then
  loc_19C7FB8:         If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")), 1) = "F") Then
  loc_19C7FCF:           var_268 = "Select IsNull(Max(M2.SNo1),0) SNo1,Sum(M2.TaxAmt) As TaxAmt From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Left Join RevMast R On R.Code=M2.TaxCode Where M.Vdate" & var_9C
  loc_19C7FD6:           var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C800C:           var_1C4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C8056:           var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" 
  loc_19C8069:           var_29C = var_264 & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And R.ShortName='SWC' Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C8077:           unk_56304A.Execute CStr(var_29C), var_2AC, -1
  loc_19C8082:           Set var_98 = var_358
  loc_19C80C8:           If (var_98.RecordCount > 0) Then
  loc_19C80F6:             var_B2 = CInt(var_98.Fields.Item("Sno1").Value)
  loc_19C8129:             Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")), CVar(var_98.Fields.Item("TaxAmt")), var_B2)
  loc_19C8132:             var_134 = CSng(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")))
  loc_19C8153:             var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C815A:             var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C8187:             var_1A4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C81D1:             var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_19C81ED:             var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And M2.TaxCode='" 
  loc_19C81F7:             var_2AC = var_29C & CVar(var_B0) 
  loc_19C8221:             unk_56304A.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 And M2.Sno1>" & CVar(var_B2) & " Group By M.MemCatCode,M2.FacilityCode"), var_2EC, -1
  loc_19C822C:             Set var_98 = var_358
  loc_19C8266:           End If
  loc_19C8269:         Else
  loc_19C82C1:           If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), 1) = "R") Then
  loc_19C82D8:             var_268 = "Select IsNull(Max(M2.SNo1),0) SNo1,Sum(M2.TaxAmt) As TaxAmt From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Left Join RevMast R On R.Code=M2.TaxCode Where M.Vdate" & var_9C
  loc_19C82DF:             var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C830C:             var_1A4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C8356:             var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_19C8372:             var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And R.ShortName='SWC' Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C8380:             unk_56304A.Execute CStr(var_29C), var_2AC, -1
  loc_19C838B:             Set var_98 = var_358
  loc_19C83D1:             If (var_98.RecordCount > 0) Then
  loc_19C83FF:               var_B2 = CInt(var_98.Fields.Item("Sno1").Value)
  loc_19C8432:               Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), CVar(var_98.Fields.Item("TaxAmt")), var_B2, var_358)
  loc_19C843B:               var_134 = CSng(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)))
  loc_19C845C:               var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C8463:               var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C8490:               var_1A4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C84DA:               var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_19C84F6:               var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Revenue' And M2.TaxCode='" 
  loc_19C8500:               var_2AC = var_29C & CVar(var_B0) 
  loc_19C852A:               unk_56304A.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 And M2.Sno1>" & CVar(var_B2) & " Group By M.MemCatCode,M2.FacilityCode"), var_2EC, -1
  loc_19C8535:               Set var_98 = var_358
  loc_19C856F:             End If
  loc_19C8572:           Else
  loc_19C85CA:             If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), 1) = "O") Then
  loc_19C85E1:               var_268 = "Select IsNull(Max(M2.SNo1),0) SNo1,Sum(M2.TaxAmt) As TaxAmt From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Left Join RevMast R On R.Code=M2.TaxCode Where M.Vdate" & var_9C
  loc_19C85E8:               var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C8615:               var_1A4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C865F:               var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_19C867B:               var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And R.ShortName='SWC' Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C8689:               unk_56304A.Execute CStr(var_29C), var_2AC, -1
  loc_19C8694:               Set var_98 = var_358
  loc_19C86DA:               If (var_98.RecordCount > 0) Then
  loc_19C8708:                 var_B2 = CInt(var_98.Fields.Item("Sno1").Value)
  loc_19C873B:                 Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), CVar(var_98.Fields.Item("TaxAmt")), var_B2, var_358)
  loc_19C8744:                 var_134 = CSng(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)))
  loc_19C8765:                 var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.OutletCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C876C:                 var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C8799:                 var_1A4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C87E3:                 var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_19C87FF:                 var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And M2.TaxCode='" 
  loc_19C8825:                 var_2DC = var_29C & CVar(var_B0) & "' And M2.TaxAmt<>0 And M2.Sno1>" & CVar(var_B2) & " Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C8833:                 unk_56304A.Execute CStr(var_2DC), var_2EC, -1
  loc_19C883E:                 Set var_98 = var_358
  loc_19C8878:               End If
  loc_19C8878:             End If
  loc_19C8878:           End If
  loc_19C8878:         End If
  loc_19C888C:         If (var_98.RecordCount > 0) Then
  loc_19C8896:           var_124 = (var_124 + var_134)
  loc_19C88A0:           var_12C = (var_12C + var_134)
  loc_19C88D0:           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), CVar(var_98.Fields.Item("TaxAmt")), CVar(var_BC), var_12C, CDbl(0))
  loc_19C88D8:           var_1A4 = (var_358 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)))
  loc_19C88DD:           var_BC = CSng(var_1A4)
  loc_19C88EC:         End If
  loc_19C8944:         If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_BC, var_134)), 1) = "F") Then
  loc_19C89D5:           var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C89DC:           var_194 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_BC, var_134) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C89E2:           var_1A4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_BC, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C8A05:           var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_19C8A21:           var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And M2.TaxCode='" 
  loc_19C8A3B:           var_2FC = var_29C & CVar(var_B0) & "' And M2.TaxAmt<>0" & IIf((var_B2 = 0), vbNullString, CVar(" And M2.Sno1<=" & CStr(var_B2))) 
  loc_19C8A52:           unk_56304A.Execute CStr(var_2FC & " Group By M.MemCatCode,M2.FacilityCode"), var_33C, -1
  loc_19C8A5D:           Set var_98 = var_358
  loc_19C8AA4:         Else
  loc_19C8AFC:           If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_358)), 1) = "R") Then
  loc_19C8B8D:             var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C8B94:             var_194 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_358) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C8B9A:             var_1A4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_358)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C8BBD:             var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) 
  loc_19C8BD9:             var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Revenue' And M2.TaxCode='" 
  loc_19C8BF3:             var_2FC = var_29C & CVar(var_B0) & "' And M2.TaxAmt<>0" & IIf((var_B2 = 0), vbNullString, CVar(" And M2.Sno1<=" & CStr(var_B2))) 
  loc_19C8C0A:             unk_56304A.Execute CStr(var_2FC & " Group By M.MemCatCode,M2.FacilityCode"), var_33C, -1
  loc_19C8C15:             Set var_98 = var_358
  loc_19C8C5C:           Else
  loc_19C8CB4:             If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "O") Then
  loc_19C8D19:               var_2CC = vbNullString
  loc_19C8D45:               var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.OutletCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C8D4C:               var_194 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C8D5B:               var_1C4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C8D7E:               var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" 
  loc_19C8D9B:               var_2AC = var_264 & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And M2.TaxCode='" & CVar(var_B0) 
  loc_19C8DB4:               var_31C = var_2AC & "' And M2.TaxAmt<>0" & IIf((var_B2 = 0), var_2CC, CVar(" And M2.Sno1<=" & CStr(var_B2))) & " Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C8DC2:               unk_56304A.Execute CStr(var_31C), var_33C, -1
  loc_19C8DCD:               Set var_98 = var_358
  loc_19C8E11:             End If
  loc_19C8E11:           End If
  loc_19C8E11:         End If
  loc_19C8E14:       Else
  loc_19C8E6C:         If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "F") Then
  loc_19C8E83:           var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C8E8A:           var_194 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C8EC0:           var_1C4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C8F0A:           var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" 
  loc_19C8F27:           var_2AC = var_264 & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And M2.TaxCode='" & CVar(var_B0) 
  loc_19C8F3E:           unk_56304A.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 Group By M.MemCatCode,M2.FacilityCode"), var_2CC, -1
  loc_19C8F49:           Set var_98 = var_358
  loc_19C8F82:         Else
  loc_19C8FDA:           If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "R") Then
  loc_19C8FF1:             var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C8FF8:             var_194 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C902E:             var_1C4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C9078:             var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" 
  loc_19C9095:             var_2AC = var_264 & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Revenue' And M2.TaxCode='" & CVar(var_B0) 
  loc_19C90AC:             unk_56304A.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 Group By M.MemCatCode,M2.FacilityCode"), var_2CC, -1
  loc_19C90B7:             Set var_98 = var_358
  loc_19C90F0:           Else
  loc_19C9148:             If (Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "O") Then
  loc_19C915F:               var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.OutletCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C9166:               var_194 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C919C:               var_1C4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C91E6:               var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F95070) & "' And (M.LogSite_Code='" 
  loc_19C9203:               var_2AC = var_264 & CVar(MemVar_1F95078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And M2.TaxCode='" & CVar(var_B0) 
  loc_19C921A:               unk_56304A.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 Group By M.MemCatCode,M2.FacilityCode"), var_2CC, -1
  loc_19C9225:               Set var_98 = var_358
  loc_19C925B:             End If
  loc_19C925B:           End If
  loc_19C925B:         End If
  loc_19C925B:       End If
  loc_19C926F:       If (var_98.RecordCount > 0) Then
  loc_19C9286:         If (var_90.AbsolutePosition = 1) Then
  loc_19C92AF:           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_358)
  loc_19C92FC:           var_348.Fields.Item("Chrg1").Value = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19C9346:           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_CC), 1)
  loc_19C934E:           var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9353:           var_CC = CSng("0.00")
  loc_19C9365:         Else
  loc_19C9379:           If (var_90.AbsolutePosition = 2) Then
  loc_19C93A2:             Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_CC)
  loc_19C93EF:             var_348.Fields.Item("Chrg2").Value = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19C9439:             Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_D4), 1)
  loc_19C9441:             var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9446:             var_D4 = CSng("0.00")
  loc_19C9458:           Else
  loc_19C946C:             If (var_90.AbsolutePosition = 3) Then
  loc_19C9495:               Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_D4)
  loc_19C94E2:               var_348.Fields.Item("Chrg3").Value = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19C952C:               Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_DC), 1)
  loc_19C9534:               var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9539:               var_DC = CSng("0.00")
  loc_19C954B:             Else
  loc_19C955F:               If (var_90.AbsolutePosition = 4) Then
  loc_19C9588:                 Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_DC)
  loc_19C95D5:                 var_348.Fields.Item("Chrg4").Value = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19C961F:                 Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_E4), 1)
  loc_19C9627:                 var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C962C:                 var_E4 = CSng("0.00")
  loc_19C963E:               Else
  loc_19C9652:                 If (var_90.AbsolutePosition = 5) Then
  loc_19C967B:                   Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_E4)
  loc_19C96C8:                   var_348.Fields.Item("Chrg5").Value = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19C9712:                   Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_EC), 1)
  loc_19C971A:                   var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C971F:                   var_EC = CSng("0.00")
  loc_19C9731:                 Else
  loc_19C9745:                   If (var_90.AbsolutePosition = 6) Then
  loc_19C976E:                     Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_EC)
  loc_19C9798:                     var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19C97BB:                     var_348.Fields.Item("Chrg6").Value = var_1E4
  loc_19C9805:                     Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_F4), 1)
  loc_19C980D:                     var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9812:                     var_F4 = CSng("0.00")
  loc_19C9824:                   Else
  loc_19C9838:                     If (var_90.AbsolutePosition = 7) Then
  loc_19C9861:                       Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_F4)
  loc_19C988B:                       var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19C98AE:                       var_348.Fields.Item("Chrg7").Value = var_1E4
  loc_19C98F8:                       Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_FC), 1)
  loc_19C9900:                       var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9905:                       var_FC = CSng("0.00")
  loc_19C9917:                     Else
  loc_19C992B:                       If (var_90.AbsolutePosition = 8) Then
  loc_19C9954:                         Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_FC)
  loc_19C997E:                         var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19C99A1:                         var_348.Fields.Item("Chrg8").Value = var_1E4
  loc_19C99EB:                         Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_104), 1)
  loc_19C99F3:                         var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C99F8:                         var_104 = CSng("0.00")
  loc_19C9A0A:                       Else
  loc_19C9A1E:                         If (var_90.AbsolutePosition = 9) Then
  loc_19C9A47:                           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_104)
  loc_19C9A71:                           var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19C9A94:                           var_348.Fields.Item("Chrg9").Value = var_1E4
  loc_19C9ADE:                           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_10C), 1)
  loc_19C9AE6:                           var_1A4 = (1 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9AEB:                           var_10C = CSng("0.00")
  loc_19C9AFD:                         Else
  loc_19C9B2A:                           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_11C))
  loc_19C9B32:                           var_1A4 = (var_10C + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9B37:                           var_11C = CSng("0.00")
  loc_19C9B73:                           Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_114))
  loc_19C9B7B:                           var_1A4 = (var_11C + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9B80:                           var_114 = CSng("0.00")
  loc_19C9B8F:                         End If
  loc_19C9B8F:                       End If
  loc_19C9B8F:                     End If
  loc_19C9B8F:                   End If
  loc_19C9B8F:                 End If
  loc_19C9B8F:               End If
  loc_19C9B8F:             End If
  loc_19C9B8F:           End If
  loc_19C9B8F:         End If
  loc_19C9BB5:         var_184 = CVar(var_98.Fields.Item("TaxAmt")) 'Address
  loc_19C9BBC:         Proc_6_39_E7D3A0(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)), var_184, CVar(var_BC))
  loc_19C9BC4:         var_1A4 = (var_114 + CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19C9BC9:         var_BC = CSng("0.00")
  loc_19C9BD8:       End If
  loc_19C9BDB:       var_90.MoveNext
  loc_19C9BE0:       GoTo loc_19C7F3C
  loc_19C9BE3:     End If
  loc_19C9BEA:     var_C4 = (var_C4 + var_BC)
  loc_19C9BF8:     Proc_6_47_EF6560(var_184, var_BC, var_C4)
  loc_19C9C20:     var_348.Fields.Item("TaxAmt").Value = var_184
  loc_19C9C3A:     Proc_6_47_EF6560(var_184, CDbl(0), var_BC)
  loc_19C9C62:     var_348.Fields.Item("ChrgSTWLF").Value = var_184
  loc_19C9C7C:     Proc_6_47_EF6560(var_184, var_11C)
  loc_19C9CA4:     var_348.Fields.Item("ChrgOther").Value = var_184
  loc_19C9CB3:     var_154 = "*"
  loc_19C9CBC:     var_144 = "Mark"
  loc_19C9CD8:     var_348.Fields.Item(var_144).Value = var_154
  loc_19C9CEF:     var_348.Update var_144, var_154
  loc_19C9CF6:     Set var_348 = Nothing 
  loc_19C9CFD:     var_94.MoveNext
  loc_19C9D13:     If (var_94.EOF = &HFF) Then
  loc_19C9D16:       GoTo loc_19C9D1C
  loc_19C9D19:     End If
  loc_19C9D19:     GoTo loc_19C7DC2
  loc_19C9D1C:     ' Referenced from: 19C9D16
  loc_19C9D1C:   End If
  loc_19C9D1F:   Set var_37C = var_8C 
  loc_19C9D2E:   var_37C.AddNew var_144, var_154
  loc_19C9D58:   var_37C.Fields.Item("mLine").Value = "GF"
  loc_19C9D64:   var_154 = "Total ->"
  loc_19C9D89:   var_37C.Fields.Item("MemCat").Value = "GF"
  loc_19C9DA0:   Proc_6_47_EF6560(var_184, var_C4)
  loc_19C9DC8:   var_37C.Fields.Item("TaxAmt").Value = var_184
  loc_19C9DE2:   Proc_6_47_EF6560(var_184, var_CC)
  loc_19C9E0A:   var_37C.Fields.Item("Chrg1").Value = var_184
  loc_19C9E24:   Proc_6_47_EF6560(var_184, var_D4)
  loc_19C9E4C:   var_37C.Fields.Item("Chrg2").Value = var_184
  loc_19C9E66:   Proc_6_47_EF6560(var_184, var_DC)
  loc_19C9E8E:   var_37C.Fields.Item("Chrg3").Value = var_184
  loc_19C9EA8:   Proc_6_47_EF6560(var_184, var_E4)
  loc_19C9ED0:   var_37C.Fields.Item("Chrg4").Value = var_184
  loc_19C9EEA:   Proc_6_47_EF6560(var_184, var_EC)
  loc_19C9F12:   var_37C.Fields.Item("Chrg5").Value = var_184
  loc_19C9F2C:   Proc_6_47_EF6560(var_184, var_F4)
  loc_19C9F54:   var_37C.Fields.Item("Chrg6").Value = var_184
  loc_19C9F6E:   Proc_6_47_EF6560(var_184, var_FC)
  loc_19C9F96:   var_37C.Fields.Item("Chrg7").Value = var_184
  loc_19C9FB0:   Proc_6_47_EF6560(var_184, var_104)
  loc_19C9FD8:   var_37C.Fields.Item("Chrg8").Value = var_184
  loc_19C9FF2:   Proc_6_47_EF6560(var_184, var_10C)
  loc_19CA01A:   var_37C.Fields.Item("Chrg9").Value = var_184
  loc_19CA034:   Proc_6_47_EF6560(var_184, var_12C)
  loc_19CA05C:   var_37C.Fields.Item("ChrgSTWLF").Value = var_184
  loc_19CA076:   Proc_6_47_EF6560(var_184, var_114)
  loc_19CA09E:   var_37C.Fields.Item("ChrgOther").Value = var_184
  loc_19CA0D2:   var_37C.Fields.Item("Mark").Value = "*"
  loc_19CA0DE:   var_154 = vbNullString
  loc_19CA0E7:   var_144 = "MemCatCode"
  loc_19CA103:   var_37C.Fields.Item(var_144).Value = var_154
  loc_19CA11A:   var_37C.Update var_144, var_154
  loc_19CA121:   Set var_37C = Nothing 
  loc_19CA125: End If
  loc_19CA12F: arg_2C = Me.FGrid1.Text
  loc_19CA14D: Me.FGrid1.Rows = 2
  loc_19CA169: If (var_8C.RecordCount > 0) Then
  loc_19CA172:   CVarUnk
  loc_19CA177:   VerifyVarObj
  loc_19CA17D:   Set var_27C = Me.FGrid1
  loc_19CA183:   LateIdStAd
  loc_19CA1B3:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_19CA1BE: End If
  loc_19CA1C2: Set var_388 = Me.FGrid1
  loc_19CA1CE: var_388.Tag = "MemTaxReport"
  loc_19CA1DF: var_388.Cols = &H11
  loc_19CA1E4: var_144 = 0
  loc_19CA1ED: var_164 = 0
  loc_19CA1F6: var_1B4 = "mLine"
  loc_19CA1FF: LateIdCallSt
  loc_19CA207: var_144 = 0
  loc_19CA210: var_164 = 0
  loc_19CA21C: LateIdCallSt
  loc_19CA224: var_144 = 0
  loc_19CA22D: var_164 = 1
  loc_19CA236: var_1B4 = "SNo"
  loc_19CA23F: LateIdCallSt
  loc_19CA247: var_144 = 1
  loc_19CA256: var_164 = CVar(CInt(1)) 'Integer
  loc_19CA25D: LateIdCallSt
  loc_19CA265: var_144 = 1
  loc_19CA274: var_164 = CVar(CInt(1)) 'Integer
  loc_19CA27B: LateIdCallSt
  loc_19CA283: var_144 = 1
  loc_19CA28C: var_164 = &H1F4
  loc_19CA298: LateIdCallSt
  loc_19CA2A0: var_144 = 0
  loc_19CA2A9: var_164 = 2
  loc_19CA2B2: var_1B4 = "Member Category"
  loc_19CA2BB: LateIdCallSt
  loc_19CA2C3: var_144 = 2
  loc_19CA2D2: var_164 = CVar(CInt(1)) 'Integer
  loc_19CA2D9: LateIdCallSt
  loc_19CA2E1: var_144 = 2
  loc_19CA2F0: var_164 = CVar(CInt(1)) 'Integer
  loc_19CA2F7: LateIdCallSt
  loc_19CA2FF: var_144 = 2
  loc_19CA308: var_164 = &H1068
  loc_19CA314: LateIdCallSt
  loc_19CA31C: var_144 = 0
  loc_19CA325: var_164 = 3
  loc_19CA32E: var_1B4 = "Tax Amount"
  loc_19CA337: LateIdCallSt
  loc_19CA33F: var_144 = 3
  loc_19CA34E: var_164 = CVar(CInt(7)) 'Integer
  loc_19CA355: LateIdCallSt
  loc_19CA35D: var_144 = 3
  loc_19CA36C: var_164 = CVar(CInt(7)) 'Integer
  loc_19CA373: LateIdCallSt
  loc_19CA37B: var_144 = 3
  loc_19CA384: var_164 = &H578
  loc_19CA390: LateIdCallSt
  loc_19CA398: var_144 = 0
  loc_19CA3A1: var_164 = 4
  loc_19CA3AA: var_1B4 = vbNullString
  loc_19CA3B3: LateIdCallSt
  loc_19CA3BB: var_144 = 4
  loc_19CA3C4: var_164 = 0
  loc_19CA3D0: LateIdCallSt
  loc_19CA3D8: var_144 = 0
  loc_19CA3E1: var_164 = 5
  loc_19CA3EA: var_1B4 = vbNullString
  loc_19CA3F3: LateIdCallSt
  loc_19CA3FB: var_144 = 5
  loc_19CA404: var_164 = 0
  loc_19CA410: LateIdCallSt
  loc_19CA418: var_144 = 0
  loc_19CA421: var_164 = 6
  loc_19CA42A: var_1B4 = vbNullString
  loc_19CA433: LateIdCallSt
  loc_19CA43B: var_144 = 6
  loc_19CA444: var_164 = 0
  loc_19CA450: LateIdCallSt
  loc_19CA458: var_144 = 0
  loc_19CA461: var_164 = 7
  loc_19CA46A: var_1B4 = vbNullString
  loc_19CA473: LateIdCallSt
  loc_19CA47B: var_144 = 7
  loc_19CA484: var_164 = 0
  loc_19CA490: LateIdCallSt
  loc_19CA498: var_144 = 0
  loc_19CA4A1: var_164 = 8
  loc_19CA4AA: var_1B4 = vbNullString
  loc_19CA4B3: LateIdCallSt
  loc_19CA4BB: var_144 = 8
  loc_19CA4C4: var_164 = 0
  loc_19CA4D0: LateIdCallSt
  loc_19CA4D8: var_144 = 0
  loc_19CA4E1: var_164 = 9
  loc_19CA4EA: var_1B4 = vbNullString
  loc_19CA4F3: LateIdCallSt
  loc_19CA4FB: var_144 = 9
  loc_19CA504: var_164 = 0
  loc_19CA510: LateIdCallSt
  loc_19CA518: var_144 = 0
  loc_19CA521: var_164 = &HA
  loc_19CA52A: var_1B4 = vbNullString
  loc_19CA533: LateIdCallSt
  loc_19CA53B: var_144 = &HA
  loc_19CA544: var_164 = 0
  loc_19CA550: LateIdCallSt
  loc_19CA558: var_144 = 0
  loc_19CA561: var_164 = &HB
  loc_19CA56A: var_1B4 = vbNullString
  loc_19CA573: LateIdCallSt
  loc_19CA57B: var_144 = &HB
  loc_19CA584: var_164 = 0
  loc_19CA590: LateIdCallSt
  loc_19CA598: var_144 = 0
  loc_19CA5A1: var_164 = &HC
  loc_19CA5AA: var_1B4 = vbNullString
  loc_19CA5B3: LateIdCallSt
  loc_19CA5BB: var_144 = &HC
  loc_19CA5C4: var_164 = 0
  loc_19CA5D0: LateIdCallSt
  loc_19CA5D8: var_144 = 0
  loc_19CA5E1: var_164 = &HD
  loc_19CA5EA: var_1B4 = vbNullString
  loc_19CA5F3: LateIdCallSt
  loc_19CA5FB: var_144 = &HD
  loc_19CA604: var_164 = 0
  loc_19CA610: LateIdCallSt
  loc_19CA618: var_144 = 0
  loc_19CA621: var_164 = &HE
  loc_19CA62A: var_1B4 = vbNullString
  loc_19CA633: LateIdCallSt
  loc_19CA63B: var_144 = &HE
  loc_19CA644: var_164 = 0
  loc_19CA650: LateIdCallSt
  loc_19CA65E: global_220 = vbNullString
  loc_19CA664: var_AA = 4
  loc_19CA66A: var_90.MoveFirst
  loc_19CA66F: ' Referenced from: 19CA7DD
  loc_19CA67E: If Not(var_90.EOF) Then
  loc_19CA687:   If (var_AA < &HD) Then
  loc_19CA69F:     var_144 = "SName"
  loc_19CA6C4:     var_194 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_144)), CVar(CLng(var_AA)), 0, var_AA, var_388, var_164, var_144)) 'String
  loc_19CA6CB:     LateIdCallSt
  loc_19CA6E6:     var_144 = "SName"
  loc_19CA716:     var_270 = var_1B4 & Proc_6_38_E69628(CVar(var_90.Fields.Item(var_144)), global_220, var_388, var_194, var_388) & " -> "
  loc_19CA752:     global_220 = var_144 & Proc_6_38_E69628(CVar(var_90.Fields.Item("Description")), CStr(var_31C), var_164) & ";  "
  loc_19CA777:     var_144 = CVar(CLng(var_AA)) 'Long
  loc_19CA782:     var_164 = CVar(CInt(7)) 'Integer
  loc_19CA789:     LateIdCallSt
  loc_19CA795:     var_144 = CVar(CLng(var_AA)) 'Long
  loc_19CA7A0:     var_164 = CVar(CInt(7)) 'Integer
  loc_19CA7A7:     LateIdCallSt
  loc_19CA7B3:     var_144 = CVar(CLng(var_AA)) 'Long
  loc_19CA7B8:     var_164 = &H578
  loc_19CA7C4:     LateIdCallSt
  loc_19CA7CC:   End If
  loc_19CA7D2:   var_AA = (var_AA + 1)
  loc_19CA7D8:   var_90.MoveNext
  loc_19CA7DD:   GoTo loc_19CA66F
  loc_19CA7E0: End If
  loc_19CA7E0: var_144 = &HD
  loc_19CA7EF: var_164 = CVar(CInt(7)) 'Integer
  loc_19CA7F6: LateIdCallSt
  loc_19CA7FE: var_144 = &HD
  loc_19CA80D: var_164 = CVar(CInt(7)) 'Integer
  loc_19CA814: LateIdCallSt
  loc_19CA81C: var_144 = 0
  loc_19CA825: var_164 = &HD
  loc_19CA82E: var_1B4 = "STWLF"
  loc_19CA837: LateIdCallSt
  loc_19CA83F: var_144 = &HD
  loc_19CA848: var_164 = &H578
  loc_19CA854: LateIdCallSt
  loc_19CA85C: var_144 = &HE
  loc_19CA86B: var_164 = CVar(CInt(7)) 'Integer
  loc_19CA872: LateIdCallSt
  loc_19CA87A: var_144 = &HE
  loc_19CA889: var_164 = CVar(CInt(7)) 'Integer
  loc_19CA890: LateIdCallSt
  loc_19CA8AC: If (var_90.RecordCount > 9) Then
  loc_19CA8AF:   var_144 = 0
  loc_19CA8B8:   var_164 = &HE
  loc_19CA8C1:   var_1B4 = "Other"
  loc_19CA8CA:   LateIdCallSt
  loc_19CA8D2:   var_144 = &HE
  loc_19CA8DB:   var_164 = &H578
  loc_19CA8E7:   LateIdCallSt
  loc_19CA8EF: End If
  loc_19CA8EF: var_144 = 0
  loc_19CA8F8: var_164 = &HF
  loc_19CA901: var_1B4 = "MARK"
  loc_19CA90A: LateIdCallSt
  loc_19CA912: var_144 = &HF
  loc_19CA91B: var_164 = 0
  loc_19CA927: LateIdCallSt
  loc_19CA92F: var_144 = 0
  loc_19CA938: var_164 = &H10
  loc_19CA941: var_1B4 = "CatCode"
  loc_19CA94A: LateIdCallSt
  loc_19CA952: var_144 = &H10
  loc_19CA95B: var_164 = 0
  loc_19CA967: LateIdCallSt
  loc_19CA971: Set var_388 = Nothing 
  loc_19CA989: If (var_90.RecordCount <= 0) Then
  loc_19CA991:   global_160 = 0
  loc_19CA994:   Exit Sub
  loc_19CA995: End If
  loc_19CA999: Set var_27C = Me.FGrid1
  loc_19CA9C9: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_19CA9CC:   var_144 = vbNullString
  loc_19CA9D6:   Set var_27C = Me.FGrid1
  loc_19CA9E7: End If
  loc_19CAA1E: var_144 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_19CAA3E: Me.FGrid1.Row = CVar(CLng(IIf(var_144, FRow, 1)))
  loc_19CAA8C: var_144 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_19CAAAC: Me.FGrid1.Col = CVar(CLng(IIf(var_144, Fcol, 1)))
  loc_19CAAC8: Set var_8C = Nothing
  loc_19CAAD0: Set var_90 = Nothing
  loc_19CAAD5: IStAd
  loc_19CAAD9: Exit Sub
End Sub

Public Sub MemSalesReg(formName, FRow, Fcol) '19D0E9C
  'Data Table: 563044
  Dim var_210 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_2C4 As String
  Dim var_2C8 As String
  Dim var_2CC As String
  Dim var_2D0 As String
  Dim var_EC As Double
  Dim var_1B0 As Variant
  Dim var_2D8 As Variant
  Dim var_2E4 As String
  Dim var_2F4 As String
  Dim var_30C As String
  Dim var_F4 As Double
  Dim var_158 As Double
  Dim var_160 As Double
  Dim var_168 As Double
  Dim var_170 As Double
  Dim var_178 As Double
  Dim var_180 As Double
  Dim var_188 As Double
  Dim var_190 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_90 As Recordset15
  Dim var_AC As Double
  Dim var_C0 As Double
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_150 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_31C As Recordset15
  Dim var_320 As Recordset15
  Dim var_324 As Fields15
  Dim var_A0 As Recordset15
  Dim unk_56304A As Connection15
  Dim var_9C As Recordset15
  Dim var_2A0 As Variant
  Dim var_110 As Double
  Dim var_E4 As Double
  Dim var_DC As Double
  Dim var_330 As Recordset15
  Dim var_334 As Recordset15
  Dim var_338 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_344 As MSHFlexGrid
  Dim var_346 As Integer
  loc_19CDD88: var_210 = " M.Vdate Between "
  loc_19CDDA2: VarLateMemCallLdRfVar
  loc_19CDDAD: Proc_6_7_F26918(var_200, Me.FGrid, 1)
  loc_19CDDBE: var_240 = 0 & var_200 & " And " 
  loc_19CDDD7: VarLateMemCallLdRfVar
  loc_19CDDE2: Proc_6_7_F26918(var_2B0, Me.FGrid, 1)
  loc_19CDDEF: var_94 = CStr(1 & var_2B0)
  loc_19CDE21: VarLateMemCallLdRfVar
  loc_19CDE2C: Proc_6_7_F26918(var_200, Me.FGrid, 1, 0)
  loc_19CDE56: VarLateMemCallLdRfVar
  loc_19CDE61: Proc_6_7_F26918(var_2B0, Me.FGrid, 1, 1)
  loc_19CDE6E: var_94 = CStr(" M.Vdate Between " & var_200 & " And " & var_2B0)
  loc_19CDE86: var_1A0 = 1
  loc_19CDEAF: If (Me.Check1.Value = 0) Then
  loc_19CDEC8:   var_1A0 = ") "
  loc_19CDED2:   var_98 = CStr(CVar(var_94 & " And M.MemCatCode In (") & Me.GridString1 & var_1A0)
  loc_19CDEE0: End If
  loc_19CDEE6: Call 0.Method_arg_54 ("Member Sales Register", var_1A0)
  loc_19CDEEE: var_1A0 = 0
  loc_19CDF03: var_1F0 = Me.FGrid.TextMatrix
  loc_19CDF2B: var_200 = Me.FGrid
  loc_19CDF45: Set var_2D8 = 1(1 & CStr(var_200.TextMatrix))
  loc_19CDF4B: var_200.TextBox.Text = 1 & CStr(var_1F0) & " To : "
  loc_19CDF6B: var_1A0 = 0
  loc_19CDF72: var_1C0 = 1
  loc_19CDF7B: var_1E0 = Me.FGrid
  loc_19CDF80: VarLateMemCallLdRfVar
  loc_19CDFAF: var_EC = CDate(Format(var_1F0, "dd/MMM/yyyy"))
  loc_19CDFBD: var_1A0 = 1
  loc_19CDFD4: var_1C0 = 0
  loc_19CDFE6: If (Me.Check1.Value = var_1C0) Then
  loc_19CDFEC:   var_1E0 = Me.FormulaString1
  loc_19CDFF3:   var_1A0 = "For Category : "
  loc_19CE003:   var_1F0 = Left(var_1E0, &H73)
  loc_19CE00F:   var_1B0 = vbNullString
  loc_19CE020:   Set var_2D8 = Me.Text2
  loc_19CE026:   Me.Text2.Text = CStr(var_1A0 & var_1F0 & var_1B0)
  loc_19CE03F: Else
  loc_19CE046:   Set var_2D8 = Me.Text2
  loc_19CE04C:   var_2D8.Text = "For Category :   All"
  loc_19CE054: End If
  loc_19CE061: Call Proc_292_98_119DCF8(New, var_2D8, var_1E0, var_1A0, var_EC, 1, 1)
  loc_19CE069: Set var_8C = var_2D8
  loc_19CE080: var_2C4 = "Select MC.Name As MemCatName,S.Name As MemName,M.*,Q.DocId RDocId,Q.Sno,Q.Type,Q.Facility,Q.FacilityCode,Q.BaseAmt,Q.TaxAmt From membill M Inner Join MemCatMast MC On M.MemCatCode=MC.Code Left Join SubGroup S On M.MemCode=S.SubCode Left Join (Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.Type='Facility' And M1.Site_Code='" & MemVar_1F95070
  loc_19CE095: var_2D0 = var_2C4 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') union Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.Type='Revenue' And M1.Site_Code='"
  loc_19CE0B1: var_2E4 = var_2D0 & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO') union Select D.Name As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.Type='Outlet' And M1.Site_Code='"
  loc_19CE0CD: var_2F4 = var_2E4 & MemVar_1F95070 & "' And (M1.LogSite_Code='" & MemVar_1F95078 & "' Or M1.LogSite_Code='HO')) Q On M.DocId=Q.DocId Where "
  loc_19CE0F7: var_30C = var_2F4 & var_98 & " And M.Site_Code='" & MemVar_1F95070 & "' And (M.LogSite_Code='" & MemVar_1F95078 & "' Or M.LogSite_Code='HO') Order By MC.Name,S.Name,M.Vdate,M.Vno,Q.DocId,Q.Sno"
  loc_19CE100: Me.Connection15.Execute var_30C, var_1E0, -1
  loc_19CE10B: Set var_90 = var_2D8
  loc_19CE171: var_2CC = "SELECT DISTINCT RevMast.Code, RevMast.ShortName, RevMast.Name FROM (MemBill2 AS M INNER JOIN RevMast ON M.TaxCode = RevMast.Code) where M.lOGSITE_CODE='" & Proc_6_45_EADFB8(CStr(Me.LoginSite), 2, Me.LoginSite, var_2D8, Me.LoginSite, var_1C0)
  loc_19CE18F: Me.Connection15.Execute var_2CC & "' And " & var_94 & " Order by RevMast.Name", var_1F0, -1
  loc_19CE19A: Set var_A0 = var_2D8
  loc_19CE1BB: var_F4 = CDbl(0)
  loc_19CE1C1: var_158 = CDbl(0)
  loc_19CE1C7: var_160 = CDbl(0)
  loc_19CE1CD: var_168 = CDbl(0)
  loc_19CE1D3: var_170 = CDbl(0)
  loc_19CE1D9: var_178 = CDbl(0)
  loc_19CE1DF: var_180 = CDbl(0)
  loc_19CE1E5: var_188 = CDbl(0)
  loc_19CE1EB: var_190 = CDbl(0)
  loc_19CE1F1: var_FC = CDbl(0)
  loc_19CE1F7: var_104 = CDbl(0)
  loc_19CE1FD: var_88 = vbNullString
  loc_19CE214: If (var_90.RecordCount > 0) Then
  loc_19CE21A:   var_90.MoveFirst
  loc_19CE24B:   var_AC = CDate(var_90.Fields.Item("VDate").Value)
  loc_19CE258:   ' Referenced from: 19CFFA3
  loc_19CE267:   If Not(var_90.EOF) Then
  loc_19CE2A3:     If (var_180 <> Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCatName")), var_A4, var_AC, var_104, var_FC, var_190, var_188)) Then
  loc_19CE2E2:       var_1A0 = "MemCatName"
  loc_19CE307:       var_A4 = Proc_6_38_E69628(CVar(var_90.Fields.Item(var_1A0)), CDate(var_90.Fields.Item("VDate").Value), var_178, var_170)
  loc_19CE313:       var_C0 = CDbl(0)
  loc_19CE319:       var_118 = CDbl(0)
  loc_19CE31F:       var_120 = CDbl(0)
  loc_19CE325:       var_128 = CDbl(0)
  loc_19CE32B:       var_130 = CDbl(0)
  loc_19CE331:       var_138 = CDbl(0)
  loc_19CE337:       var_140 = CDbl(0)
  loc_19CE33D:       var_148 = CDbl(0)
  loc_19CE343:       var_150 = CDbl(0)
  loc_19CE349:       var_C8 = CDbl(0)
  loc_19CE34F:       var_D0 = CDbl(0)
  loc_19CE355:       Set var_31C = var_8C 
  loc_19CE364:       var_31C.AddNew var_1A0, var_1B0
  loc_19CE38E:       var_31C.Fields.Item("MLine").Value = "GF"
  loc_19CE3C0:       var_31C.Fields.Item("Facility").Value = CVar(var_A4)
  loc_19CE3CC:       var_1B0 = "*"
  loc_19CE3D5:       var_1A0 = "Mark"
  loc_19CE3F1:       var_31C.Fields.Item(var_1A0).Value = var_1B0
  loc_19CE408:       var_31C.Update var_1A0, var_1B0
  loc_19CE40F:       Set var_31C = Nothing 
  loc_19CE413:     End If
  loc_19CE44C:     If (var_138 <> Proc_6_38_E69628(CVar(var_90.Fields.Item("DocID")), var_88, var_D0, var_C8, var_150, var_148, var_140)) Then
  loc_19CE452:       var_1A0 = "DocID"
  loc_19CE477:       var_88 = Proc_6_38_E69628(CVar(var_90.Fields.Item(var_1A0)), var_130, var_128)
  loc_19CE483:       Set var_320 = var_8C 
  loc_19CE492:       var_320.AddNew var_1A0, var_1B0
  loc_19CE497:       var_1A0 = 2
  loc_19CE49E:       var_1C0 = 1
  loc_19CE4A7:       var_1E0 = Me.FGrid
  loc_19CE4C8:       If (CStr(var_1E0.TextMatrix) = "Yes") Then
  loc_19CE4F0:         var_1E0.Recordset15.Fields.Item("MLine").Value = "GF"
  loc_19CE4FF:       Else
  loc_19CE524:         var_320.Fields.Item("MLine").Value = vbNullString
  loc_19CE530:       End If
  loc_19CE577:       var_1C0 = "DATE"
  loc_19CE593:       var_320.Fields.Item(var_1C0).Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_19CE606:       var_320.Fields.Item("BillNo").Value = CVar(Proc_6_45_EADFB8(CStr(var_90.Fields.Item("VNo").Value), 9, 1, 1, var_1C0))
  loc_19CE626:       var_1A0 = "CardNo"
  loc_19CE67C:       var_320.Fields.Item("CardNo").Value = CVar(Proc_6_45_EADFB8(CStr(var_90.Fields.Item(var_1A0).Value), &H19, var_1A0))
  loc_19CE6F2:       var_320.Fields.Item("Facility").Value = CVar(Proc_6_45_EADFB8(CStr(var_90.Fields.Item("MemName").Value), &H4B, var_120))
  loc_19CE756:       var_320.Fields.Item("DocId").Value = var_90.Fields.Item("DocID").Value
  loc_19CE7CC:       var_320.Fields.Item("DATE1").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_19CE82E:       var_320.Fields.Item("CatCode").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCatcode")), 1, 1))
  loc_19CE857:       If (var_A0.RecordCount > 0) Then
  loc_19CE85D:         var_A0.MoveFirst
  loc_19CE862:         ' Referenced from: 19CF1C3
  loc_19CE862:       End If
  loc_19CE873:       If (var_A0.EOF = 0) Then
  loc_19CE8B2:         var_1F0 = "Select sum(TaxAmt) as TaxAmt from MemBill2 where TaxCode in ('" & var_A0.Fields.Item("Code").Value 
  loc_19CE8E1:         var_220 = var_90.Fields.Item("DocID").Value
  loc_19CE900:         unk_56304A.Execute CStr(var_1F0 & "') And DocId='" & var_220 & "'"), var_2A0, -1
  loc_19CE90B:         Set var_9C = var_32C
  loc_19CE943:         If (var_9C.RecordCount > 0) Then
  loc_19CE95A:           If (var_A0.AbsolutePosition = 1) Then
  loc_19CE983:             Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), var_32C)
  loc_19CE9AB:             var_320.Fields.Item("Tax1").Value = var_1F0
  loc_19CE9ED:             Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_118))
  loc_19CE9F5:             var_200 = (var_118 + var_1F0)
  loc_19CE9FA:             var_118 = CSng(var_1F0 & "') And DocId='")
  loc_19CEA36:             Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_158))
  loc_19CEA3E:             var_200 = (var_118 + var_1F0)
  loc_19CEA43:             var_158 = CSng(var_1F0 & "') And DocId='")
  loc_19CEA55:           Else
  loc_19CEA69:             If (var_A0.AbsolutePosition = 2) Then
  loc_19CEA92:               Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CEABA:               var_320.Fields.Item("Tax2").Value = var_1F0
  loc_19CEAFC:               Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_120))
  loc_19CEB04:               var_200 = (var_158 + var_1F0)
  loc_19CEB09:               var_120 = CSng(var_1F0 & "') And DocId='")
  loc_19CEB45:               Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_160))
  loc_19CEB4D:               var_200 = (var_120 + var_1F0)
  loc_19CEB52:               var_160 = CSng(var_1F0 & "') And DocId='")
  loc_19CEB64:             Else
  loc_19CEB78:               If (var_A0.AbsolutePosition = 3) Then
  loc_19CEBA1:                 Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CEBC9:                 var_320.Fields.Item("Tax3").Value = var_1F0
  loc_19CEC0B:                 Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_128))
  loc_19CEC13:                 var_200 = (var_160 + var_1F0)
  loc_19CEC18:                 var_128 = CSng(var_1F0 & "') And DocId='")
  loc_19CEC54:                 Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_168))
  loc_19CEC5C:                 var_200 = (var_128 + var_1F0)
  loc_19CEC61:                 var_168 = CSng(var_1F0 & "') And DocId='")
  loc_19CEC73:               Else
  loc_19CEC87:                 If (var_A0.AbsolutePosition = 4) Then
  loc_19CECB0:                   Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CECD8:                   var_320.Fields.Item("Tax4").Value = var_1F0
  loc_19CED1A:                   Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_130))
  loc_19CED22:                   var_200 = (var_168 + var_1F0)
  loc_19CED27:                   var_130 = CSng(var_1F0 & "') And DocId='")
  loc_19CED63:                   Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_170))
  loc_19CED6B:                   var_200 = (var_130 + var_1F0)
  loc_19CED70:                   var_170 = CSng(var_1F0 & "') And DocId='")
  loc_19CED82:                 Else
  loc_19CED96:                   If (var_A0.AbsolutePosition = 5) Then
  loc_19CEDBF:                     Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CEDE7:                     var_320.Fields.Item("Tax5").Value = var_1F0
  loc_19CEE29:                     Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_138))
  loc_19CEE31:                     var_200 = (var_170 + var_1F0)
  loc_19CEE36:                     var_138 = CSng(var_1F0 & "') And DocId='")
  loc_19CEE72:                     Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_178))
  loc_19CEE7A:                     var_200 = (var_138 + var_1F0)
  loc_19CEE7F:                     var_178 = CSng(var_1F0 & "') And DocId='")
  loc_19CEE91:                   Else
  loc_19CEEA5:                     If (var_A0.AbsolutePosition = 6) Then
  loc_19CEECE:                       Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CEEF6:                       var_320.Fields.Item("Tax6").Value = var_1F0
  loc_19CEF38:                       Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_140))
  loc_19CEF40:                       var_200 = (var_178 + var_1F0)
  loc_19CEF45:                       var_140 = CSng(var_1F0 & "') And DocId='")
  loc_19CEF81:                       Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_180))
  loc_19CEF89:                       var_200 = (var_140 + var_1F0)
  loc_19CEF8E:                       var_180 = CSng(var_1F0 & "') And DocId='")
  loc_19CEFA0:                     Else
  loc_19CEFB4:                       If (var_A0.AbsolutePosition = 7) Then
  loc_19CEFDD:                         Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CF005:                         var_320.Fields.Item("Tax7").Value = var_1F0
  loc_19CF047:                         Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_148))
  loc_19CF04F:                         var_200 = (var_180 + var_1F0)
  loc_19CF054:                         var_148 = CSng(var_1F0 & "') And DocId='")
  loc_19CF090:                         Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_188))
  loc_19CF098:                         var_200 = (var_148 + var_1F0)
  loc_19CF09D:                         var_188 = CSng(var_1F0 & "') And DocId='")
  loc_19CF0AF:                       Else
  loc_19CF0C3:                         If (var_A0.AbsolutePosition = 8) Then
  loc_19CF0EC:                           Proc_6_47_EF6560(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CF104:                           var_324 = var_320.Fields
  loc_19CF114:                           var_324.Item("Tax8").Value = var_1F0
  loc_19CF156:                           Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_150))
  loc_19CF15E:                           var_200 = (var_188 + var_1F0)
  loc_19CF163:                           var_150 = CSng(var_1F0 & "') And DocId='")
  loc_19CF19F:                           Proc_6_39_E7D3A0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_190))
  loc_19CF1A7:                           var_200 = (var_150 + var_1F0)
  loc_19CF1AC:                           var_190 = CSng(var_1F0 & "') And DocId='")
  loc_19CF1BB:                         End If
  loc_19CF1BB:                       End If
  loc_19CF1BB:                     End If
  loc_19CF1BB:                   End If
  loc_19CF1BB:                 End If
  loc_19CF1BB:               End If
  loc_19CF1BB:             End If
  loc_19CF1BB:           End If
  loc_19CF1BB:         End If
  loc_19CF1BE:         var_A0.MoveNext
  loc_19CF1C3:         GoTo loc_19CE862
  loc_19CF1C6:       End If
  loc_19CF1F3:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("Amount")), CVar(var_C0))
  loc_19CF1FB:       var_200 = (var_190 + var_1F0)
  loc_19CF200:       var_C0 = CSng(var_1F0 & "') And DocId='")
  loc_19CF23C:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("Amount")), CVar(var_F4))
  loc_19CF244:       var_200 = (var_C0 + var_1F0)
  loc_19CF249:       var_F4 = CSng(var_1F0 & "') And DocId='")
  loc_19CF285:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_C8))
  loc_19CF28D:       var_200 = (var_F4 + var_1F0)
  loc_19CF292:       var_C8 = CSng(var_1F0 & "') And DocId='")
  loc_19CF2CE:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_FC))
  loc_19CF2D6:       var_200 = (var_C8 + var_1F0)
  loc_19CF2DB:       var_FC = CSng(var_1F0 & "') And DocId='")
  loc_19CF317:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("NetAmount")), CVar(var_D0))
  loc_19CF31F:       var_200 = (var_FC + var_1F0)
  loc_19CF324:       var_D0 = CSng(var_1F0 & "') And DocId='")
  loc_19CF360:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("NetAmount")), CVar(var_104))
  loc_19CF368:       var_200 = (var_D0 + var_1F0)
  loc_19CF36D:       var_104 = CSng(var_1F0 & "') And DocId='")
  loc_19CF389:       var_1B0 = "Select (sum(amtdr)-sum(amtcr)) as OPBal1 from Ledger where subcode='"
  loc_19CF3D0:       Proc_6_7_F26918(var_220, var_EC, CVar(var_104) & var_90.Fields.Item("MemCode").Value & " ' and V_date<", var_2A0)
  loc_19CF3D8:       var_240 = -1 & var_220 
  loc_19CF3EF:       unk_56304A.Execute CStr(CVar(var_104) & var_90.Fields.Item("MemCode").Value & "') And DocId='" & var_220 & vbNullString), var_324, var_104
  loc_19CF452:       var_2C4 = Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCode")), "Select isnull(Sum(AmtCr),0) as OPBal2 From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='", var_2B0)
  loc_19CF456:       var_2C8 = -1 & var_2C4
  loc_19CF45D:       var_240 = CVar(Proc_6_45_EADFB8(CStr(Me.LoginSite), 2, Me.LoginSite, var_90.Fields, Me.LoginSite, " ' and V_date<") & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19CF47F:       var_1F0 = CVar(var_90.Fields.Item("MthYear")) 'Address
  loc_19CF48E:       var_220 = Trim(CVar(Proc_6_38_E69628(var_1F0, var_1F0 & "') And DocId='" & var_220)))
  loc_19CF4AD:       unk_56304A.Execute CStr(var_32C & var_220 & "')"), var_C0, 
  loc_19CF4FF:       var_1E0 = CVar(var_90.Fields.Fields.Item("OpBal1")) 'Address
  loc_19CF506:       Proc_6_39_E7D3A0(var_1F0)
  loc_19CF534:       Proc_6_39_E7D3A0(var_220, CVar(var_32C.Fields.Item("Opbal2")))
  loc_19CF53C:       var_240 = (var_1F0 - var_220)
  loc_19CF541:       var_110 = CSng(var_1F0 & "') And DocId='" & var_220)
  loc_19CF561:       Proc_6_39_E7D3A0(var_1E0, var_E4)
  loc_19CF574:       Proc_6_39_E7D3A0(var_1F0, var_110, var_1E0)
  loc_19CF57C:       var_200 = (var_110 + var_1F0)
  loc_19CF598:       Proc_6_39_E7D3A0(var_1E0, var_DC)
  loc_19CF5AB:       Proc_6_39_E7D3A0(var_1F0, var_110, var_1E0)
  loc_19CF5B3:       var_200 = (CSng(CVar(var_32C.Fields.Item("Opbal2"))) + var_1F0)
  loc_19CF5B8:       var_DC = CSng(CVar(var_32C.Fields.Item("Opbal2")))
  loc_19CF5EA:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("Amount")))
  loc_19CF632:       var_320.Fields.Item("Total").Value = Format(var_1F0, "0.00")
  loc_19CF671:       Proc_6_39_E7D3A0(var_1F0, CVar(var_90.Fields.Item("RoundOff")), 1)
  loc_19CF6B9:       var_320.Fields.Item("RoundOff").Value = Format(var_1F0, "0.00")
  loc_19CF6F1:       var_1E0 = CVar(var_90.Fields.Item("NetAmount")) 'Address
  loc_19CF6F8:       Proc_6_39_E7D3A0(var_1F0, var_1E0, 1, 1)
  loc_19CF740:       var_320.Fields.Item("NetTotal").Value = Format(var_1F0, "0.00")
  loc_19CF764:       Proc_6_39_E7D3A0(var_1E0, var_110, 1, 1)
  loc_19CF7AC:       var_320.Fields.Item("OpBal").Value = Format(var_1E0, "0.00")
  loc_19CF7C1:       var_1B0 = "*"
  loc_19CF7CA:       var_1A0 = "Mark"
  loc_19CF7E6:       var_320.Fields.Item(var_1A0).Value = var_1B0
  loc_19CF7FD:       var_320.Update var_1A0, var_1B0
  loc_19CF804:       Set var_320 = Nothing 
  loc_19CF808:     End If
  loc_19CF80B:     var_1B0 = CVar(var_88) 'String
  loc_19CF845:     If (var_1B0 = var_90.Fields.Item("DocID").Value) Then
  loc_19CF84F:       var_1C0 = 1
  loc_19CF858:       var_1E0 = Me.FGrid
  loc_19CF879:       If (CStr(var_1E0.TextMatrix) = "Yes") Then
  loc_19CF87F:         Set var_330 = var_8C 
  loc_19CF88E:         var_1E0.Recordset15.AddNew 2, var_1B0
  loc_19CF8B8:         var_330.Fields.Item("mLine").Value = vbNullString
  loc_19CF927:         var_330.Fields.Item("DATE1").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_19CF981:         var_330.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_19CF9D9:         var_1C0 = "SrNo"
  loc_19CF9F5:         var_330.Fields.Item(var_1C0).Value = Format(CVar(var_90.Fields.Item("SNo")), "0")
  loc_19CFA0F:         var_1A0 = "Facility"
  loc_19CFA48:         var_1F0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_1A0)), 1, 1, 1, 1, var_1C0), &H4B, var_1A0, 1)) 'String
  loc_19CFA6B:         var_330.Fields.Item("Facility").Value = var_1F0
  loc_19CFAAD:         Proc_6_47_EF6560(var_1F0, CVar(var_90.Fields.Item("BaseAmt")), 1)
  loc_19CFAD5:         var_330.Fields.Item("Total").Value = var_1F0
  loc_19CFB35:         var_330.Fields.Item("CatCode").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("MemCatcode")), 1))
  loc_19CFB4A:         var_1B0 = "*"
  loc_19CFB53:         var_1A0 = "Mark"
  loc_19CFB6F:         var_330.Fields.Item(var_1A0).Value = var_1B0
  loc_19CFB86:         var_330.Update var_1A0, var_1B0
  loc_19CFB8D:         Set var_330 = Nothing 
  loc_19CFB91:       End If
  loc_19CFB91:     End If
  loc_19CFB94:     var_90.MoveNext
  loc_19CFBA7:     If var_90.EOF Then
  loc_19CFBAA:       GoTo loc_19CFBE9
  loc_19CFBAD:     End If
  loc_19CFBB0:     var_1A0 = "MemCatName"
  loc_19CFBCC:     var_1E0 = CVar(var_90.Fields.Item(var_1A0)) 'Address
  loc_19CFBE6:     If (Proc_6_38_E69628(var_1E0, var_DC) <> var_A4) Then
  loc_19CFBE9:       ' Referenced from: 19CFBAA
  loc_19CFBEC:       Set var_334 = var_8C 
  loc_19CFC25:       var_334.Fields.Item("mLine").Value = "GF"
  loc_19CFC31:       var_1B0 = "Total ->"
  loc_19CFC56:       var_334.Fields.Item("Facility").Value = "GF"
  loc_19CFC6D:       Proc_6_47_EF6560(var_1E0, var_C0)
  loc_19CFC95:       var_334.Fields.Item("Total").Value = var_1E0
  loc_19CFCAF:       Proc_6_47_EF6560(var_1E0, var_118)
  loc_19CFCD7:       var_334.Fields.Item("Tax1").Value = var_1E0
  loc_19CFCF1:       Proc_6_47_EF6560(var_1E0, var_120)
  loc_19CFD19:       var_334.Fields.Item("Tax2").Value = var_1E0
  loc_19CFD33:       Proc_6_47_EF6560(var_1E0, var_128)
  loc_19CFD5B:       var_334.Fields.Item("Tax3").Value = var_1E0
  loc_19CFD75:       Proc_6_47_EF6560(var_1E0, var_130)
  loc_19CFD9D:       var_334.Fields.Item("Tax4").Value = var_1E0
  loc_19CFDB7:       Proc_6_47_EF6560(var_1E0, var_138)
  loc_19CFDDF:       var_334.Fields.Item("Tax5").Value = var_1E0
  loc_19CFDF9:       Proc_6_47_EF6560(var_1E0, var_140)
  loc_19CFE21:       var_334.Fields.Item("Tax6").Value = var_1E0
  loc_19CFE3B:       Proc_6_47_EF6560(var_1E0, var_148)
  loc_19CFE63:       var_334.Fields.Item("Tax7").Value = var_1E0
  loc_19CFE7D:       Proc_6_47_EF6560(var_1E0, var_150)
  loc_19CFEA5:       var_334.Fields.Item("Tax7").Value = var_1E0
  loc_19CFEBF:       Proc_6_47_EF6560(var_1E0, var_C8)
  loc_19CFEE7:       var_334.Fields.Item("RoundOff").Value = var_1E0
  loc_19CFF01:       Proc_6_47_EF6560(var_1E0, var_D0)
  loc_19CFF29:       var_334.Fields.Item("NetTotal").Value = var_1E0
  loc_19CFF38:       var_1B0 = vbNullString
  loc_19CFF41:       var_1A0 = "Mark"
  loc_19CFF5D:       var_334.Fields.Item(var_1A0).Value = var_1B0
  loc_19CFF74:       r_1A0, var_1B0 var_1A0, var_1B0
  loc_19CFF84:       var_334.Update var_1A0, var_1B0
  loc_19CFF8B:       Set var_334 = Nothing 
  loc_19CFF8F:     End If
  loc_19CFF9D:     If var_90.EOF Then
  loc_19CFFA0:       GoTo loc_19CFFA6
  loc_19CFFA3:     End If
  loc_19CFFA3:     GoTo loc_19CE258
  loc_19CFFA6:     ' Referenced from: 19CFFA0
  loc_19CFFA6:   End If
  loc_19CFFA9:   Set var_338 = var_8C 
  loc_19CFFE2:   var_338.Fields.Item("mLine").Value = "GF"
  loc_19CFFEE:   var_1B0 = "Grand Total ->"
  loc_19D0013:   var_338.Fields.Item("Facility").Value = "GF"
  loc_19D002A:   Proc_6_47_EF6560(var_1E0, var_F4)
  loc_19D0052:   var_338.Fields.Item("Total").Value = var_1E0
  loc_19D006C:   Proc_6_47_EF6560(var_1E0, var_158)
  loc_19D0094:   var_338.Fields.Item("Tax1").Value = var_1E0
  loc_19D00AE:   Proc_6_47_EF6560(var_1E0, var_160)
  loc_19D00D6:   var_338.Fields.Item("Tax2").Value = var_1E0
  loc_19D00F0:   Proc_6_47_EF6560(var_1E0, var_168)
  loc_19D0118:   var_338.Fields.Item("Tax3").Value = var_1E0
  loc_19D0132:   Proc_6_47_EF6560(var_1E0, var_170)
  loc_19D015A:   var_338.Fields.Item("Tax4").Value = var_1E0
  loc_19D0174:   Proc_6_47_EF6560(var_1E0, var_178)
  loc_19D019C:   var_338.Fields.Item("Tax5").Value = var_1E0
  loc_19D01B6:   Proc_6_47_EF6560(var_1E0, var_180)
  loc_19D01DE:   var_338.Fields.Item("Tax6").Value = var_1E0
  loc_19D01F8:   Proc_6_47_EF6560(var_1E0, var_188)
  loc_19D0220:   var_338.Fields.Item("Tax7").Value = var_1E0
  loc_19D023A:   Proc_6_47_EF6560(var_1E0, var_190)
  loc_19D0262:   var_338.Fields.Item("Tax7").Value = var_1E0
  loc_19D027C:   Proc_6_47_EF6560(var_1E0, var_FC)
  loc_19D02A4:   var_338.Fields.Item("RoundOff").Value = var_1E0
  loc_19D02BE:   Proc_6_47_EF6560(var_1E0, var_104)
  loc_19D02E6:   var_338.Fields.Item("NetTotal").Value = var_1E0
  loc_19D0300:   Proc_6_47_EF6560(var_1E0, var_DC)
  loc_19D0328:   var_338.Fields.Item("OpBal").Value = var_1E0
  loc_19D0337:   var_1B0 = vbNullString
  loc_19D0340:   var_1A0 = "Mark"
  loc_19D035C:   var_338.Fields.Item(var_1A0).Value = var_1B0
  loc_19D0373:   r_1A0, var_1B0 var_1A0, var_1B0
  loc_19D0383:   var_338.Update var_1A0, var_1B0
  loc_19D038A:   Set var_338 = Nothing 
  loc_19D038E: End If
  loc_19D0398: arg_2C = Me.FGrid1.Text
  loc_19D03B6: Me.FGrid1.Rows = 2
  loc_19D03D2: If (var_8C.RecordCount > 0) Then
  loc_19D03DB:   CVarUnk
  loc_19D03E0:   VerifyVarObj
  loc_19D03E6:   Set var_2D8 = Me.FGrid1
  loc_19D03EC:   LateIdStAd
  loc_19D041C:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_19D0427: End If
  loc_19D042B: Set var_344 = Me.FGrid1
  loc_19D0437: var_344.Tag = "MemSalesRegister"
  loc_19D0448: var_344.Cols = &H16
  loc_19D044D: var_1A0 = 0
  loc_19D0456: var_1C0 = 0
  loc_19D045F: var_210 = "mLine"
  loc_19D0468: LateIdCallSt
  loc_19D0470: var_1A0 = 0
  loc_19D0479: var_1C0 = 0
  loc_19D0485: LateIdCallSt
  loc_19D048D: var_1A0 = 0
  loc_19D0496: var_1C0 = 1
  loc_19D049F: var_210 = "Date"
  loc_19D04A8: LateIdCallSt
  loc_19D04B0: var_1A0 = 1
  loc_19D04B9: var_1C0 = &H578
  loc_19D04C5: LateIdCallSt
  loc_19D04CD: var_1A0 = 0
  loc_19D04D6: var_1C0 = 2
  loc_19D04DF: var_210 = "Date1"
  loc_19D04E8: LateIdCallSt
  loc_19D04F0: var_1A0 = 2
  loc_19D04F9: var_1C0 = 0
  loc_19D0505: LateIdCallSt
  loc_19D050D: var_1A0 = 0
  loc_19D0516: var_1C0 = 3
  loc_19D051F: var_210 = "Bill No."
  loc_19D0528: LateIdCallSt
  loc_19D0530: var_1A0 = 3
  loc_19D053F: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D0546: LateIdCallSt
  loc_19D054E: var_1A0 = 3
  loc_19D0557: var_1C0 = &H4B0
  loc_19D0563: LateIdCallSt
  loc_19D056B: var_1A0 = 0
  loc_19D0574: var_1C0 = 4
  loc_19D057D: var_210 = "CardNo"
  loc_19D0586: LateIdCallSt
  loc_19D058E: var_1A0 = 4
  loc_19D059D: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D05A4: LateIdCallSt
  loc_19D05AC: var_1A0 = 4
  loc_19D05B5: var_1C0 = &H578
  loc_19D05C1: LateIdCallSt
  loc_19D05C9: var_1A0 = 0
  loc_19D05D2: var_1C0 = 5
  loc_19D05DB: var_210 = "DocId"
  loc_19D05E4: LateIdCallSt
  loc_19D05EC: var_1A0 = 5
  loc_19D05F5: var_1C0 = 0
  loc_19D0601: LateIdCallSt
  loc_19D0609: var_1A0 = 0
  loc_19D0612: var_1C0 = 6
  loc_19D061B: var_210 = "SRNo"
  loc_19D0624: LateIdCallSt
  loc_19D062C: var_1A0 = 6
  loc_19D0635: var_1C0 = 0
  loc_19D0641: LateIdCallSt
  loc_19D0649: var_1A0 = 0
  loc_19D0652: var_1C0 = 7
  loc_19D065B: var_210 = "Category/Member/Charges"
  loc_19D0664: LateIdCallSt
  loc_19D066C: var_1A0 = 7
  loc_19D067B: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D0682: LateIdCallSt
  loc_19D068A: var_1A0 = 7
  loc_19D0699: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D06A0: LateIdCallSt
  loc_19D06A8: var_1A0 = 7
  loc_19D06B1: var_1C0 = &H1068
  loc_19D06BD: LateIdCallSt
  loc_19D06C5: var_1A0 = 0
  loc_19D06CE: var_1C0 = 8
  loc_19D06D7: var_210 = "Amount"
  loc_19D06E0: LateIdCallSt
  loc_19D06E8: var_1A0 = 8
  loc_19D06F7: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D06FE: LateIdCallSt
  loc_19D0706: var_1A0 = 8
  loc_19D0715: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D071C: LateIdCallSt
  loc_19D0724: var_1A0 = 8
  loc_19D072D: var_1C0 = &H578
  loc_19D0739: LateIdCallSt
  loc_19D0741: var_1A0 = 2
  loc_19D0748: var_1C0 = 1
  loc_19D0772: If (CStr(Me.FGrid.TextMatrix) = "Yes") Then
  loc_19D0775:   var_1A0 = 6
  loc_19D077E:   var_1C0 = &H12C
  loc_19D078A:   LateIdCallSt
  loc_19D0792: End If
  loc_19D0792: var_1A0 = 0
  loc_19D079B: var_1C0 = 9
  loc_19D07A4: var_210 = vbNullString
  loc_19D07AD: LateIdCallSt
  loc_19D07B5: var_1A0 = 9
  loc_19D07BE: var_1C0 = 0
  loc_19D07CA: LateIdCallSt
  loc_19D07D2: var_1A0 = 0
  loc_19D07DB: var_1C0 = &HA
  loc_19D07E4: var_210 = vbNullString
  loc_19D07ED: LateIdCallSt
  loc_19D07F5: var_1A0 = &HA
  loc_19D07FE: var_1C0 = 0
  loc_19D080A: LateIdCallSt
  loc_19D0812: var_1A0 = 0
  loc_19D081B: var_1C0 = &HB
  loc_19D0824: var_210 = vbNullString
  loc_19D082D: LateIdCallSt
  loc_19D0835: var_1A0 = &HB
  loc_19D083E: var_1C0 = 0
  loc_19D084A: LateIdCallSt
  loc_19D0852: var_1A0 = 0
  loc_19D085B: var_1C0 = &HC
  loc_19D0864: var_210 = vbNullString
  loc_19D086D: LateIdCallSt
  loc_19D0875: var_1A0 = &HC
  loc_19D087E: var_1C0 = 0
  loc_19D088A: LateIdCallSt
  loc_19D0892: var_1A0 = 0
  loc_19D089B: var_1C0 = &HD
  loc_19D08A4: var_210 = vbNullString
  loc_19D08AD: LateIdCallSt
  loc_19D08B5: var_1A0 = &HD
  loc_19D08BE: var_1C0 = 0
  loc_19D08CA: LateIdCallSt
  loc_19D08D2: var_1A0 = 0
  loc_19D08DB: var_1C0 = &HE
  loc_19D08E4: var_210 = vbNullString
  loc_19D08ED: LateIdCallSt
  loc_19D08F5: var_1A0 = &HE
  loc_19D08FE: var_1C0 = 0
  loc_19D090A: LateIdCallSt
  loc_19D0912: var_1A0 = 0
  loc_19D091B: var_1C0 = &HF
  loc_19D0924: var_210 = vbNullString
  loc_19D092D: LateIdCallSt
  loc_19D0935: var_1A0 = &HF
  loc_19D093E: var_1C0 = 0
  loc_19D094A: LateIdCallSt
  loc_19D0952: var_1A0 = 0
  loc_19D095B: var_1C0 = &H10
  loc_19D0964: var_210 = vbNullString
  loc_19D096D: LateIdCallSt
  loc_19D0975: var_1A0 = &H10
  loc_19D097E: var_1C0 = 0
  loc_19D098A: LateIdCallSt
  loc_19D0998: global_220 = vbNullString
  loc_19D09B0: If (var_A0.RecordCount > 0) Then
  loc_19D09B6:   var_A0.MoveFirst
  loc_19D09BB:   ' Referenced from: 19D0B38
  loc_19D09BB: End If
  loc_19D09D3: If ((var_A0.EOF = 0) Or (var_346 > &H10)) Then
  loc_19D09EB:   var_346 = CInt((8 + var_A0.AbsolutePosition))
  loc_19D0A03:   var_1A0 = "ShortName"
  loc_19D0A28:   var_1F0 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item(var_1A0)), CVar(CLng(var_346)), 0, var_346, var_344, var_1C0, var_1A0)) 'String
  loc_19D0A2F:   LateIdCallSt
  loc_19D0A4A:   var_1A0 = "ShortName"
  loc_19D0A7A:   var_2CC = var_210 & Proc_6_38_E69628(CVar(var_A0.Fields.Item(var_1A0)), global_220, var_344, var_1F0, var_344) & " -> "
  loc_19D0AA5:   var_2D0 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("Name")), CStr(var_32C & Format(CVar(var_A0.Fields.Item("Name")), "0.00") & "')"), var_1C0)
  loc_19D0AB6:   global_220 = var_1A0 & var_2D0 & ";  "
  loc_19D0ADB:   var_1A0 = CVar(CLng(var_346)) 'Long
  loc_19D0AE6:   var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0AED:   LateIdCallSt
  loc_19D0AF9:   var_1A0 = CVar(CLng(var_346)) 'Long
  loc_19D0B04:   var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0B0B:   LateIdCallSt
  loc_19D0B17:   var_1A0 = CVar(CLng(var_346)) 'Long
  loc_19D0B1C:   var_1C0 = &H578
  loc_19D0B28:   LateIdCallSt
  loc_19D0B33:   var_A0.MoveNext
  loc_19D0B38:   GoTo loc_19D09BB
  loc_19D0B3B: End If
  loc_19D0B3B: var_1A0 = 0
  loc_19D0B44: var_1C0 = &H11
  loc_19D0B4D: var_210 = "Roundoff"
  loc_19D0B56: LateIdCallSt
  loc_19D0B5E: var_1A0 = &H11
  loc_19D0B6D: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0B74: LateIdCallSt
  loc_19D0B7C: var_1A0 = &H11
  loc_19D0B8B: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0B92: LateIdCallSt
  loc_19D0B9A: var_1A0 = &H11
  loc_19D0BA3: var_1C0 = &H578
  loc_19D0BAF: LateIdCallSt
  loc_19D0BB7: var_1A0 = 0
  loc_19D0BC0: var_1C0 = &H12
  loc_19D0BC9: var_210 = "NetAmount"
  loc_19D0BD2: LateIdCallSt
  loc_19D0BDA: var_1A0 = &H12
  loc_19D0BE9: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0BF0: LateIdCallSt
  loc_19D0BF8: var_1A0 = &H12
  loc_19D0C07: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0C0E: LateIdCallSt
  loc_19D0C16: var_1A0 = &H12
  loc_19D0C1F: var_1C0 = &H578
  loc_19D0C2B: LateIdCallSt
  loc_19D0C33: var_1A0 = 0
  loc_19D0C3C: var_1C0 = &H13
  loc_19D0C45: var_210 = "OpBal"
  loc_19D0C4E: LateIdCallSt
  loc_19D0C56: var_1A0 = &H13
  loc_19D0C65: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0C6C: LateIdCallSt
  loc_19D0C74: var_1A0 = &H13
  loc_19D0C83: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D0C8A: LateIdCallSt
  loc_19D0C92: var_1A0 = &H13
  loc_19D0C9B: var_1C0 = &H578
  loc_19D0CA7: LateIdCallSt
  loc_19D0CAF: var_1A0 = 0
  loc_19D0CB8: var_1C0 = &H14
  loc_19D0CC1: var_210 = "MARK"
  loc_19D0CCA: LateIdCallSt
  loc_19D0CD2: var_1A0 = &H14
  loc_19D0CDB: var_1C0 = 0
  loc_19D0CE7: LateIdCallSt
  loc_19D0CEF: var_1A0 = 0
  loc_19D0CF8: var_1C0 = &H15
  loc_19D0D01: var_210 = "CatCode"
  loc_19D0D0A: LateIdCallSt
  loc_19D0D12: var_1A0 = &H15
  loc_19D0D1B: var_1C0 = 0
  loc_19D0D27: LateIdCallSt
  loc_19D0D31: Set var_344 = Nothing 
  loc_19D0D49: If (var_90.RecordCount <= 0) Then
  loc_19D0D51:   global_160 = 0
  loc_19D0D54:   Exit Sub
  loc_19D0D55: End If
  loc_19D0D59: Set var_2D8 = Me.FGrid1
  loc_19D0D89: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_19D0D8C:   var_1A0 = vbNullString
  loc_19D0D96:   Set var_2D8 = Me.FGrid1
  loc_19D0DA7: End If
  loc_19D0DDE: var_1A0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_19D0DFE: Me.FGrid1.Row = CVar(CLng(IIf(var_1A0, FRow, 1)))
  loc_19D0E4C: var_1A0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_19D0E6C: Me.FGrid1.Col = CVar(CLng(IIf(var_1A0, Fcol, 1)))
  loc_19D0E88: Set var_8C = Nothing
  loc_19D0E90: Set var_90 = Nothing
  loc_19D0E95: IStAd
  loc_19D0E99: Exit Sub
End Sub

Public Sub PaymentDueLetterReport(formName, FRow, Fcol) '130F8AC
  'Data Table: 563044
  Dim var_AC As Variant
  Dim var_CC As Integer
  Dim var_EC As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_25C As String
  loc_130F1A8: On Error Goto loc_130F89D
  loc_130F1B0: global_160 = &HFF
  loc_130F1E7: 1(CVar(CStr(Me.FGrid.TextMatrix) & "Report")).Tag = 2
  loc_130F240: VarLateMemCallLdRfVar
  loc_130F24B: Proc_6_7_F26918(var_178, Me.FGrid, 1, 0)
  loc_130F253: var_198 = (CVar(1 & CStr(Me.FGrid.TextMatrix) & "' And MTL.VDate Between") + var_178)
  loc_130F25C: var_1B8 = (var_198 + " And ")
  loc_130F275: VarLateMemCallLdRfVar
  loc_130F280: Proc_6_7_F26918(var_228, Me.FGrid, 1, 1)
  loc_130F288: var_238 = (var_1B8 + var_228)
  loc_130F291: var_258 = (var_238 + " ")
  loc_130F2C3: Call 0.Method_arg_54 ("Payment Due Letter Report", 2)
  loc_130F2CB: var_AC = 0
  loc_130F308: var_110 = Me.FGrid
  loc_130F322: Set var_124 = 1(1 & CStr(var_110.TextMatrix))
  loc_130F328: var_110.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_130F35B: var_EC = Me.FGrid
  loc_130F37B: var_EC.TextBox.Text = "Letter Type : "
  loc_130F394: var_AC = 0
  loc_130F3BE: var_25C = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_130F3E4: var_90 = 1 & CStr(Me.FGrid.TextMatrix)
  loc_130F3FD: var_AC = 2
  loc_130F404: var_CC = 1
  loc_130F40D: var_EC = Me.FGrid
  loc_130F423: var_94 = CStr(var_EC.TextMatrix) & "Report"
  loc_130F436: global_120 = "Payment Due Letter Report"
  loc_130F441: var_100 = "SELECT MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where " & CStr(var_258)
  loc_130F478: var_EC.Connection15.Execute var_100 & " And (MTL.LOGSITE_CODE='" & MemVar_1F95078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY Cast(MTL.Code As Integer)", var_EC, -1
  loc_130F4B0: Set var_124 = 2(1 & CStr(var_EC.TextMatrix)) 
  loc_130F4B7: CreateFieldDefFile(var_124, MemVar_1F950B4 & "\" & var_94 & ".ttx", &HFF, var_124, var_CC, var_AC, 1)
  loc_130F4E5: var_100 = "\" & var_94
  loc_130F4F9: Call 0.Method_arg_1C (MemVar_1F950B4 & var_100 & ".RPT", var_AC, var_124, MemVar_1F950B4 & var_100 & ".RPT", var_AC)
  loc_130F504: MemVar_1F951E8 = var_124
  loc_130F51F: var_AC = CVar(var_124) 'Address
  loc_130F52D: Call 0.Method_arg_64 (var_124, var_AC, var_BC, var_CC, "From : ")
  loc_130F535: Call 0.Method_arg_2C (var_AC, "From : ")
  loc_130F543: Call 0.Method_arg_150 (" MTL.Type='")
  loc_130F559: Call 0.Method_arg_90 (var_124, var_268, var_9A)
  loc_130F561: Call 0.Method_arg_24 (1)
  loc_130F56D: For var_26C =  To CInt(var_268): global_160 = var_26C 'Integer
  loc_130F586:   Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F58E:   Call 0.Method_arg_20 (var_270)
  loc_130F596:   Call 0.Method_arg_30 (var_100)
  loc_130F5AC:   var_280 = Ucase(CVar(var_100)) 'Variant
  loc_130F5DC:   If (var_280 = Ucase("comp_name")) Then
  loc_130F600:     Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F608:     Call 0.Method_arg_20 (var_270)
  loc_130F610:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_130F626:   Else
  loc_130F648:     If (var_280 = Ucase("comp_add1")) Then
  loc_130F66C:       Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F674:       Call 0.Method_arg_20 (var_270)
  loc_130F67C:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_130F692:     Else
  loc_130F6B4:       If (var_280 = Ucase("comp_pin")) Then
  loc_130F6D8:         Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F6E0:         Call 0.Method_arg_20 (var_270)
  loc_130F6E8:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_130F6FE:       Else
  loc_130F720:         If (var_280 = Ucase("comp_GSTIN")) Then
  loc_130F72A:           var_100 = "'" & MemVar_1F95154
  loc_130F744:           Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F74C:           Call 0.Method_arg_20 (var_270)
  loc_130F754:           Call 0.Method_arg_38 (var_100 & "'")
  loc_130F76A:         Else
  loc_130F78C:           If (var_280 = Ucase("Title")) Then
  loc_130F798:             Call 0.Method_arg_50 (var_100)
  loc_130F7BB:             Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F7C3:             Call 0.Method_arg_20 (var_270)
  loc_130F7CB:             Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_130F7E3:           Else
  loc_130F805:             If (var_280 = Ucase("BetweenDate")) Then
  loc_130F829:               Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F831:               Call 0.Method_arg_20 (var_270)
  loc_130F839:               Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_130F84C:             End If
  loc_130F84C:           End If
  loc_130F84C:         End If
  loc_130F84C:       End If
  loc_130F84C:     End If
  loc_130F84C:   End If
  loc_130F84F: Next var_26C 'Integer
  loc_130F859: Set var_270 = Nothing
  loc_130F872: Set var_124 = MemVar_1F951E8 
  loc_130F87E: Proc_6_99_1484404(var_124, 3, global_120)
  loc_130F889: MemVar_1F951E8 = var_124
  loc_130F899: Set var_88 = Nothing
  loc_130F89C: Exit Sub
  loc_130F89D: ' Referenced from: 130F1A8
  loc_130F89D: Proc_6_60_E63754(&HFF)
  loc_130F8A7: global_160 = 0
  loc_130F8AA: Exit Sub
End Sub

Public Sub Proc_292_83_1689778
  'Data Table: 563044
  Dim var_A0 As Variant
  Dim unk_56304A As Connection15
  Dim var_B0 As Variant
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_DC As String
  Dim var_CC As Fields15
  Dim var_110 As String
  Dim var_C8 As String
  Dim var_100 As Variant
  Dim var_158 As Variant
  Dim var_140 As Variant
  Dim var_188 As Variant
  Dim var_1C8 As Variant
  Dim var_C4 As Variant
  Dim var_E0 As MSHFlexGrid
  loc_1687F74: On Error Goto loc_1689771
  loc_1687F8C: Me.LblProcess.Caption = "Please Wait..."
  loc_1687F98: Set var_A0 = Me.LblProcess
  loc_1687F9E: var_A0.Refresh
  loc_1687FBC: unk_56304A.Execute "Select * From FAEnviro", var_C0, -1
  loc_1687FC7: Set var_88 = var_A0
  loc_1687FDF: var_A0 = var_88.Fields
  loc_1688043: var_140 = IIf((Proc_6_38_E69628(CVar(var_A0.Item("daterfill")), var_A0) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("daterfill")))))
  loc_16880E0: var_140 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("pagenofill")), CStr(var_140)) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("pagenofill")))))
  loc_168817D: var_140 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("titlerfill")), CStr(var_140)) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("titlerfill")))))
  loc_16881BE: var_C4 = var_88.Fields.Item("linefiller")
  loc_16881D5: var_DC = "linefiller"
  loc_16881E9: var_E0 = var_88.Fields.Item(var_DC)
  loc_16881FD: var_110 = "-"
  loc_168824A: var_148 = global_52
  loc_1688255: If (var_148 = "MemBillMissingReport") Then
  loc_168825B:   var_8C = "MemBillMissingReport"
  loc_1688261:   var_90 = "Member Bill Missing Report"
  loc_1688264:   var_158 = "Select S.Name As MemberName,S.CardNo As MemCardNo,M.Name As MemCategory from subGroup S Inner Join MemCatMast M On S.CompanyType=M.Code Where S.ActiveYN=1 And S.SubCode Not in (Select Distinct MemCode From MemBill Where MthYear='"
  loc_1688271:   var_100 = 1
  loc_168827E:   Set var_A0 = Me.FGrid
  loc_1688284:   var_C0 = var_A0.TextMatrix)
  loc_16882C2:   var_1C8 = var_100 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or S.LogSite_Code='HO') Order by M.Name,S.Name" 
  loc_16882F6:   unk_56304A.Execute CStr(var_1C8), var_C0, -1
  loc_168832E:   Set var_A0 = var_A0 
  loc_1688335:   CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_8C & ".ttx", &HFF, var_A0)
  loc_1688363:   var_C8 = "\" & var_8C
  loc_1688377:   Call 0.Method_arg_1C (MemVar_1F950B4 & var_C8 & ".RPT", CVar(CLng(0)), var_A0, CVar(CLng(0)))
  loc_1688382:   MemVar_1F951E8 = var_A0
  loc_16883AB:   Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_DC, var_100)
  loc_16883B3:   Call 0.Method_arg_2C (var_158, CStr(IIf((Proc_6_38_E69628(CVar(var_C4), CStr(var_140)) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_E0))))))
  loc_16883C1:   Call 0.Method_arg_150 (&HFF)
  loc_16883D7:   Call 0.Method_arg_90 (var_A0, var_1D4)
  loc_16883DF:   Call 0.Method_arg_24 (var_9A)
  loc_16883EB:   For var_1D8 =  To CInt(var_1D4): 1 = var_1D8 'Integer
  loc_1688404:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_168840C:     Call 0.Method_arg_20 (var_C4)
  loc_1688414:     Call 0.Method_arg_30 (var_C8)
  loc_168842A:     var_1E8 = Ucase(CVar(var_C8)) 'Variant
  loc_168845A:     If (var_1E8 = Ucase("comp_name")) Then
  loc_168847E:       Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1688486:       Call 0.Method_arg_20 (var_C4)
  loc_168848E:       Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_16884A4:     Else
  loc_16884C6:       If (var_1E8 = Ucase("comp_add1")) Then
  loc_16884EA:         Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_16884F2:         Call 0.Method_arg_20 (var_C4)
  loc_16884FA:         Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1688510:       Else
  loc_1688532:         If (var_1E8 = Ucase("comp_pin")) Then
  loc_1688556:           Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_168855E:           Call 0.Method_arg_20 (var_C4)
  loc_1688566:           Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_168857C:         Else
  loc_168859E:           If (var_1E8 = Ucase("comp_GSTIN")) Then
  loc_16885A8:             var_C8 = "'" & MemVar_1F95154
  loc_16885C2:             Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_16885CA:             Call 0.Method_arg_20 (var_C4)
  loc_16885D2:             Call 0.Method_arg_38 (var_C8 & "'")
  loc_16885E8:           Else
  loc_168860A:             If (var_1E8 = Ucase("Title")) Then
  loc_1688616:               Call 0.Method_arg_50 (var_C8)
  loc_1688639:               Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1688641:               Call 0.Method_arg_20 (var_C4)
  loc_1688649:               Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_168865E:             End If
  loc_168865E:           End If
  loc_168865E:         End If
  loc_168865E:       End If
  loc_168865E:     End If
  loc_1688661:   Next var_1D8 'Integer
  loc_168866B:   Set var_C4 = Nothing
  loc_1688681:   Set var_A0 = MemVar_1F951E8 
  loc_168868D:   Proc_6_99_1484404(var_A0, 3, var_90)
  loc_1688698:   MemVar_1F951E8 = var_A0
  loc_16886B0:   Me.LblProcess.Caption = vbNullString
  loc_16886C2:   Me.LblProcess.Refresh
  loc_16886D7:   Me.Global.Unload Me
  loc_16886DF:   Exit Sub
  loc_16886E3: Else
  loc_16886EB:   If (var_148 = "MemVisitDetail") Then
  loc_16886F1:     var_B0 = CVar(CLng(0)) 'Long
  loc_16886F6:     var_100 = 0
  loc_1688727:     Call Proc_292_91_EF9184(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix))
  loc_168873B:     If (var_1EC = 0) Then
  loc_1688743:       global_160 = 0
  loc_1688746:       Exit Sub
  loc_1688747:     End If
  loc_1688780:     Call Proc_292_91_EF9184(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1688794:     If (var_1EC = 0) Then
  loc_168879C:       global_160 = 0
  loc_168879F:       Exit Sub
  loc_16887A0:     End If
  loc_16887A8:     var_100 = 0
  loc_16887D9:     Call Proc_292_91_EF9184(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), var_100, CVar(CLng(2)))
  loc_16887ED:     If (var_1EC = 0) Then
  loc_16887F5:       global_160 = 0
  loc_16887F8:       Exit Sub
  loc_16887F9:     End If
  loc_1688805:     Set var_A0 = Me.Check1
  loc_168880B:     Call 0.Method_Proc_292_83_16897780 (1, var_C4, var_1EA, global_160, global_160)
  loc_1688813:     global_160 = var_C4.Value
  loc_1688829:     If (CLng(var_1EA) = 0) Then
  loc_1688847:       Call Proc_292_87_12822A0(global_180, 1, CByte(1), var_C8)
  loc_1688852:       global_56 = var_C8
  loc_1688862:       If (global_160 = 0) Then
  loc_1688865:         Exit Sub
  loc_1688866:       End If
  loc_1688866:     End If
  loc_1688872:     Set var_A0 = Me.Check1
  loc_1688878:     Call 0.Method_Proc_292_83_16897780 (2, var_C4, var_1EA, var_100)
  loc_1688880:     var_B0 = var_C4.Value
  loc_1688896:     If (CLng(var_1EA) = 0) Then
  loc_16888B4:       Call Proc_292_87_12822A0(global_184, 2, CByte(1))
  loc_16888BF:       global_60 = var_C8
  loc_16888CF:       If (global_160 = 0) Then
  loc_16888D2:         Exit Sub
  loc_16888D3:       End If
  loc_16888D3:     End If
  loc_16888DF:     Set var_A0 = Me.Check1
  loc_16888E5:     Call 0.Method_Proc_292_83_16897780 (3, var_C4, var_1EA)
  loc_16888ED:     var_C8 = var_C4.Value
  loc_1688903:     If (CLng(var_1EA) = 0) Then
  loc_1688921:       Call Proc_292_87_12822A0(global_188, 3, CByte(1))
  loc_168892C:       global_64 = var_C8
  loc_168893C:       If (global_160 = 0) Then
  loc_168893F:         Exit Sub
  loc_1688940:       End If
  loc_1688940:     End If
  loc_1688943:   Else
  loc_168894B:     If (var_148 = "MemMalingLabels") Then
  loc_1688951:       var_B0 = CVar(CLng(2)) 'Long
  loc_1688987:       Call Proc_292_91_EF9184(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_168899B:       If (var_1EC = 0) Then
  loc_16889A3:         global_160 = 0
  loc_16889A6:         Exit Sub
  loc_16889A7:       End If
  loc_16889E0:       Call Proc_292_91_EF9184(CInt(3), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(3)))
  loc_16889F4:       If (var_1EC = 0) Then
  loc_16889FC:         global_160 = 0
  loc_16889FF:         Exit Sub
  loc_1688A00:       End If
  loc_1688A0C:       Set var_A0 = Me.Check1
  loc_1688A12:       Call 0.Method_Proc_292_83_16897780 (1, var_C4, var_1EA, global_160, global_160)
  loc_1688A1A:       var_B0 = var_C4.Value
  loc_1688A30:       If (CLng(var_1EA) = 0) Then
  loc_1688A4E:         Call Proc_292_87_12822A0(global_180, 1, CByte(1), var_C8)
  loc_1688A59:         global_56 = var_C8
  loc_1688A69:         If (global_160 = 0) Then
  loc_1688A6C:           Exit Sub
  loc_1688A6D:         End If
  loc_1688A6D:       End If
  loc_1688A70:     Else
  loc_1688A78:       If (var_148 = "MemSalesRegister") Then
  loc_1688A7E:         var_B0 = CVar(CLng(0)) 'Long
  loc_1688AB4:         Call Proc_292_91_EF9184(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_1688AC8:         If (var_1EC = 0) Then
  loc_1688AD0:           global_160 = 0
  loc_1688AD3:           Exit Sub
  loc_1688AD4:         End If
  loc_1688B0D:         Call Proc_292_91_EF9184(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1688B21:         If (var_1EC = 0) Then
  loc_1688B29:           global_160 = 0
  loc_1688B2C:           Exit Sub
  loc_1688B2D:         End If
  loc_1688B66:         Call Proc_292_91_EF9184(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_1688B7A:         If (var_1EC = 0) Then
  loc_1688B82:           global_160 = 0
  loc_1688B85:           Exit Sub
  loc_1688B86:         End If
  loc_1688B92:         Set var_A0 = Me.Check1
  loc_1688B98:         Call 0.Method_Proc_292_83_16897780 (1, var_C4, var_1EA, global_160, global_160)
  loc_1688BB6:         If (CLng(var_1EA) = 0) Then
  loc_1688BD4:           Call Proc_292_87_12822A0(global_180, 1, CByte(1), var_C8)
  loc_1688BDF:           global_56 = var_C8
  loc_1688BEF:           If (var_C4.Value = 0) Then
  loc_1688BF2:             Exit Sub
  loc_1688BF3:           End If
  loc_1688BF3:         End If
  loc_1688BF6:       Else
  loc_1688BFE:         If (var_148 = "MemTaxReport") Then
  loc_1688C04:           var_B0 = CVar(CLng(0)) 'Long
  loc_1688C3A:           Call Proc_292_91_EF9184(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_1688C4E:           If (var_1EC = 0) Then
  loc_1688C56:             global_160 = 0
  loc_1688C59:             Exit Sub
  loc_1688C5A:           End If
  loc_1688C93:           Call Proc_292_91_EF9184(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1688CA7:           If (var_1EC = 0) Then
  loc_1688CAF:             global_160 = 0
  loc_1688CB2:             Exit Sub
  loc_1688CB3:           End If
  loc_1688CEC:           Call Proc_292_91_EF9184(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(2)), global_160)
  loc_1688D00:           If (var_1EC = 0) Then
  loc_1688D08:             global_160 = 0
  loc_1688D0B:             Exit Sub
  loc_1688D0C:           End If
  loc_1688D18:           Set var_A0 = Me.Check1
  loc_1688D1E:           Call 0.Method_Proc_292_83_16897780 (1, var_C4, var_1EA, global_160, global_160)
  loc_1688D26:           var_B0 = var_C4.Value
  loc_1688D3C:           If (CLng(var_1EA) = 0) Then
  loc_1688D55:             var_B0 = global_180
  loc_1688D5A:             Call Proc_292_87_12822A0(var_B0, 1, CByte(1), var_C8)
  loc_1688D65:             global_56 = var_C8
  loc_1688D75:             If (global_160 = 0) Then
  loc_1688D78:               Exit Sub
  loc_1688D79:             End If
  loc_1688D79:           End If
  loc_1688D85:           Set var_A0 = Me.Check1
  loc_1688D8B:           Call 0.Method_Proc_292_83_16897780 (2, var_C4, var_1EA, var_B0)
  loc_1688DA9:           If (CLng(var_1EA) = 0) Then
  loc_1688DC7:             Call Proc_292_87_12822A0(global_184, 2, CByte(1))
  loc_1688DD2:             global_60 = var_C4.Value
  loc_1688DE2:             If (global_160 = 0) Then
  loc_1688DE5:               Exit Sub
  loc_1688DE6:             End If
  loc_1688DE6:           End If
  loc_1688DE9:         Else
  loc_1688DF1:           If (var_148 = "PaymentDueLetterReport") Then
  loc_1688DF7:             var_B0 = CVar(CLng(0)) 'Long
  loc_1688E2D:             Call Proc_292_91_EF9184(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_1688E41:             If (var_1EC = 0) Then
  loc_1688E49:               global_160 = 0
  loc_1688E4C:               Exit Sub
  loc_1688E4D:             End If
  loc_1688E86:             Call Proc_292_91_EF9184(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1688E9A:             If (var_1EC = 0) Then
  loc_1688EA2:               global_160 = 0
  loc_1688EA5:               Exit Sub
  loc_1688EA6:             End If
  loc_1688EDF:             Call Proc_292_91_EF9184(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_1688EF3:             If (var_1EC = 0) Then
  loc_1688EFB:               global_160 = 0
  loc_1688EFE:               Exit Sub
  loc_1688EFF:             End If
  loc_1688F02:           Else
  loc_1688F0A:             If (var_148 = "MemBirthAnnvDtls") Then
  loc_1688F46:               Call Proc_292_91_EF9184(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_160)
  loc_1688F5A:               If (var_1EC = 0) Then
  loc_1688F62:                 global_160 = 0
  loc_1688F65:                 Exit Sub
  loc_1688F66:               End If
  loc_1688F9F:               Call Proc_292_91_EF9184(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_160)
  loc_1688FB3:               If (var_1EC = 0) Then
  loc_1688FBB:                 global_160 = 0
  loc_1688FBE:                 Exit Sub
  loc_1688FBF:               End If
  loc_1688FC2:               var_B0 = CVar(CLng(2)) 'Long
  loc_1688FF8:               Call Proc_292_91_EF9184(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, var_B0, global_160)
  loc_168900C:               If (var_1EC = 0) Then
  loc_1689014:                 global_160 = 0
  loc_1689017:                 Exit Sub
  loc_1689018:               End If
  loc_1689026:               Set var_A0 = Me.GridSel
  loc_168902C:               Call 0.Method_Proc_292_83_16897780 (1, var_C4, var_1EE, 1, global_160, global_160)
  loc_168904E:               For var_1F2 = var_B0 To CInt((CLng(var_C4.Rows) - 1)):             global_160 = var_1F2 'Integer
  loc_168906F:                 Set var_A0 = Me.GridSel
  loc_1689075:                 Call 0.Method_Proc_292_83_16897780 (1, var_C4, 0, CVar(CLng(var_1EE)))
  loc_168909D:                 If (CStr(var_C4.TextMatrix)) = "¸") Then
  loc_16890A4:                   var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_16890BB:                   Set var_A0 = Me.GridSel
  loc_16890C1:                   Call 0.Method_Proc_292_83_16897780 (1, var_C4, 2, var_B0)
  loc_16890C9:                   var_C0 = var_C4.TextMatrix)
  loc_1689103:                   Set var_CC = Me.GridSel
  loc_1689109:                   Call 0.Method_Proc_292_83_16897780 (1, var_E0, 2, CVar(CLng(var_1EE)), "," & "'", CVar(global_56))
  loc_1689151:                   var_140 = IIf((global_56 = vbNullString), CVar("'" & CStr(var_C0) & "'"), CVar(var_C0 & CStr(var_E0.TextMatrix)) & "'"))
  loc_1689159:                   var_188 = (var_B0 + var_140)
  loc_1689164:                   global_56 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_1689193:                 End If
  loc_1689196:               Next var_1F2 'Integer
  loc_16891A9:               Set var_A0 = Me.GridSel
  loc_16891AF:               Call 0.Method_Proc_292_83_16897780 (2, var_C4)
  loc_16891D1:               For var_210 = 1 To CInt((CLng(var_C4.Rows) - 1)):             var_1EE = var_210 'Integer
  loc_16891DB:                 var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_16891F2:                 Set var_A0 = Me.GridSel
  loc_16891F8:                 Call 0.Method_Proc_292_83_16897780 (2, var_C4, 0)
  loc_1689220:                 If (CStr(var_C4.TextMatrix)) = "¸") Then
  loc_1689227:                   var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_168923E:                   Set var_A0 = Me.GridSel
  loc_1689244:                   Call 0.Method_Proc_292_83_16897780 (2, var_C4, 4)
  loc_168926C:                   If (CStr(var_C4.TextMatrix)) = "1") Then
  loc_168928A:                     Set var_A0 = Me.GridSel
  loc_1689290:                     Call 0.Method_Proc_292_83_16897780 (2, var_C4, 2, CVar(CLng(var_1EE)))
  loc_1689298:                     var_C0 = var_C4.TextMatrix)
  loc_16892D2:                     Set var_CC = Me.GridSel
  loc_16892D8:                     Call 0.Method_Proc_292_83_16897780 (2, var_E0, 2, CVar(CLng(var_1EE)), "," & "'")
  loc_1689320:                     var_140 = IIf((global_60 = vbNullString), CVar("'" & CStr(var_C0) & "'"), CVar(CVar(global_60) & CStr(var_E0.TextMatrix)) & "'"))
  loc_1689328:                     var_188 = (var_C0 + var_140)
  loc_1689333:                     global_60 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_1689366:                     var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_1689383:                     Set var_A0 = Me.GridSel
  loc_1689389:                     Call 0.Method_Proc_292_83_16897780 (2, var_C4, vbNullString, 0)
  loc_1689391:                     LateIdCallSt
  loc_16893A3:                   Else
  loc_16893BE:                     Set var_A0 = Me.GridSel
  loc_16893C4:                     Call 0.Method_Proc_292_83_16897780 (2, var_C4, 4, CVar(CLng(var_1EE)), var_C4)
  loc_16893EC:                     If (CStr(var_C4.TextMatrix)) = "2") Then
  loc_16893F3:                       var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_168940A:                       Set var_A0 = Me.GridSel
  loc_1689410:                       Call 0.Method_Proc_292_83_16897780 (2, var_C4, 2, var_B0)
  loc_1689418:                       var_C0 = var_C4.TextMatrix)
  loc_1689452:                       Set var_CC = Me.GridSel
  loc_1689458:                       Call 0.Method_Proc_292_83_16897780 (2, var_E0, 2, CVar(CLng(var_1EE)), "," & "'", CVar(global_64))
  loc_16894A0:                       var_140 = IIf((global_64 = vbNullString), CVar("'" & CStr(var_C0) & "C'"), CVar(var_C0 & CStr(var_E0.TextMatrix)) & "C'"))
  loc_16894A8:                       var_188 = (var_B0 + var_140)
  loc_16894B3:                       global_64 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_16894E6:                       var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_1689503:                       Set var_A0 = Me.GridSel
  loc_1689509:                       Call 0.Method_Proc_292_83_16897780 (2, var_C4, vbNullString, 0)
  loc_1689511:                       LateIdCallSt
  loc_1689523:                     Else
  loc_168953E:                       Set var_A0 = Me.GridSel
  loc_1689544:                       Call 0.Method_Proc_292_83_16897780 (2, var_C4, 4, CVar(CLng(var_1EE)), var_C4)
  loc_168956C:                       If (CStr(var_C4.TextMatrix)) = "3") Then
  loc_1689573:                         var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_168958A:                         Set var_A0 = Me.GridSel
  loc_1689590:                         Call 0.Method_Proc_292_83_16897780 (2, var_C4, 2, var_B0)
  loc_1689598:                         var_C0 = var_C4.TextMatrix)
  loc_16895D2:                         Set var_CC = Me.GridSel
  loc_16895D8:                         Call 0.Method_Proc_292_83_16897780 (2, var_E0, 2, CVar(CLng(var_1EE)), "," & "'", CVar(global_68))
  loc_1689620:                         var_140 = IIf((global_68 = vbNullString), CVar("'" & CStr(var_C0) & "S'"), CVar(var_C0 & CStr(var_E0.TextMatrix)) & "S'"))
  loc_1689628:                         var_188 = (var_B0 + var_140)
  loc_1689633:                         global_68 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_1689666:                         var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_1689683:                         Set var_A0 = Me.GridSel
  loc_1689689:                         Call 0.Method_Proc_292_83_16897780 (2, var_C4, vbNullString, 0)
  loc_1689691:                         LateIdCallSt
  loc_16896A0:                       End If
  loc_16896A0:                     End If
  loc_16896A0:                   End If
  loc_16896A0:                 End If
  loc_16896A3:               Next var_210 'Integer
  loc_16896A8:             End If
  loc_16896A8:           End If
  loc_16896A8:         End If
  loc_16896A8:       End If
  loc_16896A8:     End If
  loc_16896A8:   End If
  loc_16896A8: End If
  loc_16896B5: Me.LblProcess.Caption = "Please Wait..............."
  loc_16896C7: Me.LblProcess.Refresh
  loc_16896D8: Call RetBack(Me)
  loc_16896EE: Me.PictParameter.Width = CDbl(0)
  loc_1689703: Me.LblProcess.Caption = "Please Wait....................."
  loc_1689715: Me.LblProcess.Refresh
  loc_168972A: Set var_A0 = Me.BtnPrint
  loc_1689730: Call 0.Method_Proc_292_83_16897780 (3, var_C4)
  loc_1689738: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000D(True)
  loc_1689751: Set var_A0 = Me.BtnPrint
  loc_1689757: Call 0.Method_Proc_292_83_16897780 (2, var_C4)
  loc_168975F: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000D(True)
  loc_168976B: Call Form_Resize()
  loc_1689770: Exit Sub
  loc_1689771: ' Referenced from: 1687F74
  loc_1689771: Proc_6_60_E63754()
  loc_1689776: Exit Sub
End Sub

Public Sub Proc_292_84_125D7DC
  'Data Table: 563044
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_148 As MSHFlexGrid
  loc_125D2AF: var_B0 = CLng(Me.FGrid.Row)
  loc_125D2BF: If (var_B0 = CLng(2)) Then
  loc_125D2C8:   var_B4 = global_52
  loc_125D2D3:   If Not (var_B4 = "MemSalesRegister") Then
  loc_125D2DE:     If Not (var_B4 = "MemVisitDetail") Then
  loc_125D2E9:       If Not (var_B4 = "MemMalingLabels") Then
  loc_125D2F4:         If Not (var_B4 = "PaymentDueLetterReport") Then
  loc_125D2FF:           If (var_B4 = "MemBirthAnnvDtls") Then
  loc_125D302:           End If
  loc_125D302:         End If
  loc_125D302:       End If
  loc_125D302:     End If
  loc_125D30E:     Set var_9C = Me.TxtGrid
  loc_125D314:     Call 0.Method_Proc_292_84_125D7DC0 (0, var_B8)
  loc_125D333:     If (var_B8.Text <> vbNullString) Then
  loc_125D349:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125D361:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_125D384:       var_BC = Me.ListView.SelectedItem.Text
  loc_125D38C:       var_134 = CVar(var_BC) 'String
  loc_125D394:       Set var_148 = Me.FGrid
  loc_125D39A:       LateIdCallSt
  loc_125D3BA:     End If
  loc_125D3BD:   Else
  loc_125D3C5:     If (var_B4 = "MemTaxReport") Then
  loc_125D3F1:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_125D3F7:         var_104 = CVar(CLng(2)) 'Long
  loc_125D3FC:         var_124 = 1
  loc_125D433:         var_D0 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_125D43B:         Set var_C0 = Me.FGrid
  loc_125D441:         LateIdCallSt
  loc_125D476:         var_B8 = Me.Fields.Item("Code")
  loc_125D487:         var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_125D48F:         Set var_C0 = Me.FGrid
  loc_125D495:         var_C0.Tag = var_D0
  loc_125D4AA:       End If
  loc_125D4AA:     End If
  loc_125D4AA:   End If
  loc_125D4AD: Else
  loc_125D4B4:   If (var_B0 = CLng(3)) Then
  loc_125D4C8:     If (global_52 = "MemMalingLabels") Then
  loc_125D4D7:       Set var_9C = Me.TxtGrid
  loc_125D4DD:       Call 0.Method_Proc_292_84_125D7DC0 (0, var_B8, var_BC, var_C0, var_D0, var_124)
  loc_125D4E5:       var_104 = var_B8.Text
  loc_125D4FC:       If (var_BC <> vbNullString) Then
  loc_125D512:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125D52A:         var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_125D547:         Set var_B8 = Me.ListView.SelectedItem
  loc_125D555:         var_134 = CVar(var_B8.Text) 'String
  loc_125D55D:         Set var_148 = Me.FGrid
  loc_125D563:         LateIdCallSt
  loc_125D583:       End If
  loc_125D583:     End If
  loc_125D586:   Else
  loc_125D58D:     If (var_B0 = CLng(4)) Then
  loc_125D596:       var_164 = global_52
  loc_125D59C:     Else
  loc_125D5A3:       If Not (var_B0 = CLng(0)) Then
  loc_125D5AD:         If (var_B0 = CLng(1)) Then
  loc_125D5B0:         End If
  loc_125D5B6:         var_168 = global_52
  loc_125D5C1:         If (var_168 = "MemBillMissingReport") Then
  loc_125D5D7:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125D5E0:           Set var_148 = Me.FGrid
  loc_125D5EF:           var_114 = CVar(CLng(var_148.Col)) 'Long
  loc_125D5FD:           Set var_9C = Me.TxtGrid
  loc_125D603:           Call 0.Method_Proc_292_84_125D7DC0 (0, var_B8, var_114, var_F4, var_148, var_134, var_114)
  loc_125D616:           var_E4 = CVar(Proc_6_120_133AEC8(var_B8, var_F4, var_148, var_134)) 'String
  loc_125D61E:           Set var_16C = Me.FGrid
  loc_125D624:           LateIdCallSt
  loc_125D645:         Else
  loc_125D64D:           If (var_168 = "MemBirthAnnvDtls") Then
  loc_125D659:             Set var_9C = Me.TxtGrid
  loc_125D65F:             Call 0.Method_Proc_292_84_125D7DC0 (0, var_B8, var_16C, var_E4)
  loc_125D688:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125D6A0:             var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_125D6BD:             var_AC = CVar(Proc_6_33_15125B8(var_B8, var_114)) 'String
  loc_125D6DA:             LateIdCallSt
  loc_125D704:             Call Proc_292_99_1159884(var_AC, Me.FGrid, CVar(CStr(Format(var_AC, "dd/MMM"))), 1, 1)
  loc_125D70F:           Else
  loc_125D748:             Set var_9C = Me.TxtGrid
  loc_125D74E:             Call 0.Method_Proc_292_84_125D7DC0 (0, var_B8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_125D761:             var_E4 = CVar(Proc_6_33_15125B8(var_B8, var_124, var_104)) 'String
  loc_125D769:             Set var_16C = Me.FGrid
  loc_125D76F:             LateIdCallSt
  loc_125D78D:           End If
  loc_125D78D:         End If
  loc_125D78D:       End If
  loc_125D78D:     End If
  loc_125D78D:   End If
  loc_125D78D: End If
  loc_125D798: If (arg_10 = 0) Then
  loc_125D79F:   Set var_9C = Me.FGrid
  loc_125D7BB:   Set var_9C = Me.TxtGrid
  loc_125D7C1:   Call 0.Method_Proc_292_84_125D7DC0 (0, var_B8, 0, FGrid.DispID_8001, &HFF)
  loc_125D7C9:   var_B8.Visible = var_16C
  loc_125D7D5: End If
  loc_125D7D5: Proc_292_84_125D7DC = var_E4
End Sub

Public Sub Proc_292_85_15BFCD0
  'Data Table: 563044
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_E8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_114 As PictureBox
  Dim var_118 As MSHFlexGrid
  loc_15BE9D7: Me.Pic.Top = CDbl(8300)
  loc_15BE9F1: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_15BEA0B: Me.FGrid.Top = CVar(CDbl(&H64))
  loc_15BEA26: Me.FGrid.Rows = &HA
  loc_15BEA41: Me.FGrid.Cols = 3
  loc_15BEA5C: Me.FGrid.FixedCols = 1
  loc_15BEA64: var_9C = 0
  loc_15BEA6D: var_BC = &H898
  loc_15BEA7A: Set var_8C = Me.FGrid
  loc_15BEA80: LateIdCallSt
  loc_15BEA8B: var_9C = 1
  loc_15BEA94: var_BC = &H7B7
  loc_15BEAA1: Set var_8C = Me.FGrid
  loc_15BEAA7: LateIdCallSt
  loc_15BEAB2: var_9C = 2
  loc_15BEABB: var_BC = 0
  loc_15BEAC8: Set var_8C = Me.FGrid
  loc_15BEACE: LateIdCallSt
  loc_15BEAD9: var_9C = 1
  loc_15BEAE8: var_BC = CVar(CInt(1)) 'Integer
  loc_15BEAF0: Set var_8C = Me.FGrid
  loc_15BEAF6: LateIdCallSt
  loc_15BEB26: For var_E0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E0 'Integer
  loc_15BEB30:   var_9C = CVar(CLng(var_86)) 'Long
  loc_15BEB35:   var_BC = 0
  loc_15BEB42:   Set var_8C = Me.FGrid
  loc_15BEB48:   LateIdCallSt
  loc_15BEB56: Next var_E0 'Integer
  loc_15BEB5B: Call Proc_292_90_1550874()
  loc_15BEB67: For var_E4 = 1 To 4: var_86 = var_E4 'Integer
  loc_15BEB77:   Set var_8C = Me.GridSel
  loc_15BEB7D:   Call 0.Method_Proc_292_85_15BFCD00 (var_86, var_E8)
  loc_15BEB9B:   If (CBool(var_E8.Visible) = &HFF) Then
  loc_15BEBA4:     var_88 = (var_88 + 1)
  loc_15BEBA7:   End If
  loc_15BEBAA: Next var_E4 'Integer
  loc_15BEBCA: var_9C = CVar(CDbl(((((global_132 - global_134) + 1) * CInt(220)) + 500))) 'Single
  loc_15BEBD9: Me.FGrid.Height = var_9C
  loc_15BEBE7: var_F8 = global_136 'Variant
  loc_15BEBF6: If (var_F8 = 0) Then
  loc_15BEC0C:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_15BEC30:   Set var_E8 = Me.PictParameter
  loc_15BEC36:   var_E8.Width = (CDbl(Me.FGrid.Width) + CDbl(&H7D))
  loc_15BEC48: Else
  loc_15BEC53:   If (var_F8 = 1) Then
  loc_15BEC67:     Set var_8C = Me.GridSel
  loc_15BEC6D:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BEC75:     var_E8.Left = CVar(CDbl(&H4B))
  loc_15BEC85:     Set var_E8 = Me.FGrid
  loc_15BECB2:     var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_E8.Height)) + CDbl(600))) 'Single
  loc_15BECC0:     Set var_10C = Me.GridSel
  loc_15BECC6:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BECCE:     var_110.Top = CVar(CDbl(&H4B))
  loc_15BECEE:     Set var_8C = Me.GridSel
  loc_15BECF4:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BED13:     Set var_10C = Me.Check1
  loc_15BED19:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BED21:     var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BED3D:     Set var_8C = Me.GridSel
  loc_15BED43:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BED62:     Set var_10C = Me.Check1
  loc_15BED68:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BED70:     var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BED8C:     Set var_10C = Me.GridSel
  loc_15BED92:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BED9A:     var_108 = var_110.Width
  loc_15BEDAC:     Set var_8C = Me.GridSel
  loc_15BEDB2:     Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BEDD8:     Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H4B))
  loc_15BEDF4:   Else
  loc_15BEDFF:     If (var_F8 = 2) Then
  loc_15BEE13:       Set var_8C = Me.GridSel
  loc_15BEE19:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15BEE21:       var_E8.Left = var_108
  loc_15BEE31:       Set var_E8 = Me.FGrid
  loc_15BEE37:       var_108 = var_E8.Height
  loc_15BEE5E:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15BEE6C:       Set var_10C = Me.GridSel
  loc_15BEE72:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_110, CVar(CDbl(&H4B)))
  loc_15BEE7A:       var_110.Top = var_108
  loc_15BEE9A:       Set var_8C = Me.GridSel
  loc_15BEEA0:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BEEBF:       Set var_10C = Me.Check1
  loc_15BEEC5:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BEECD:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BEEE9:       Set var_8C = Me.GridSel
  loc_15BEEEF:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BEF0E:       Set var_10C = Me.Check1
  loc_15BEF14:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BEF1C:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BEF38:       Set var_10C = Me.GridSel
  loc_15BEF3E:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BEF46:       var_108 = var_110.Width
  loc_15BEF58:       Set var_8C = Me.GridSel
  loc_15BEF5E:       Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BEF79:       var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15BEF87:       Set var_114 = Me.GridSel
  loc_15BEF8D:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_118, CVar(CDbl(&H4B)))
  loc_15BEF95:       var_118.Left = var_108
  loc_15BEFB4:       Set var_E8 = Me.FGrid
  loc_15BEFBA:       var_108 = var_E8.Height
  loc_15BEFE1:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15BEFEF:       Set var_10C = Me.GridSel
  loc_15BEFF5:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_110, CVar(CDbl(&H4B)))
  loc_15BEFFD:       var_110.Top = var_108
  loc_15BF01D:       Set var_8C = Me.GridSel
  loc_15BF023:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF042:       Set var_10C = Me.Check1
  loc_15BF048:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF050:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BF06C:       Set var_8C = Me.GridSel
  loc_15BF072:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF091:       Set var_10C = Me.Check1
  loc_15BF097:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF09F:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BF0BB:       Set var_10C = Me.GridSel
  loc_15BF0C1:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF0DB:       Set var_8C = Me.GridSel
  loc_15BF0E1:       Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF107:       Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_110.Width)) + CDbl(&H32))
  loc_15BF12B:       If (global_52 = "NCKOTDetails(Room Service)") Then
  loc_15BF12E:         var_9C = 1
  loc_15BF149:         Set var_8C = Me.GridSel
  loc_15BF14F:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8, &H320)
  loc_15BF157:         LateIdCallSt
  loc_15BF181:         Set var_8C = Me.GridSel
  loc_15BF187:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8, &H898, 2)
  loc_15BF18F:         LateIdCallSt
  loc_15BF1B9:         Set var_8C = Me.GridSel
  loc_15BF1BF:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8, &H4B0, 3, var_E8)
  loc_15BF1C7:         LateIdCallSt
  loc_15BF1D6:       End If
  loc_15BF1D9:     Else
  loc_15BF1E4:       If (var_F8 = 3) Then
  loc_15BF1F8:         Set var_8C = Me.GridSel
  loc_15BF1FE:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8, CVar(CDbl(&H4B)), var_E8)
  loc_15BF206:         var_E8.Left = var_E8
  loc_15BF216:         Set var_E8 = Me.FGrid
  loc_15BF21C:         var_108 = var_E8.Height
  loc_15BF243:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15BF251:         Set var_10C = Me.GridSel
  loc_15BF257:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_110, CVar(CDbl(&H4B)), var_108)
  loc_15BF25F:         var_110.Top = CVar(CDbl(&H4B))
  loc_15BF27F:         Set var_8C = Me.GridSel
  loc_15BF285:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF2A4:         Set var_10C = Me.Check1
  loc_15BF2AA:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_110, (CDbl(var_E8.Top) + CDbl(&H14)))
  loc_15BF2B2:         var_110.Top = var_108
  loc_15BF2CE:         Set var_8C = Me.GridSel
  loc_15BF2D4:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF2F3:         Set var_10C = Me.Check1
  loc_15BF2F9:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BF301:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BF31D:         Set var_8C = Me.GridSel
  loc_15BF323:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF342:         Set var_10C = Me.GridSel
  loc_15BF348:         Call 0.Method_Proc_292_85_15BFCD00 (3, var_110)
  loc_15BF350:         var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15BF36C:         Set var_10C = Me.GridSel
  loc_15BF372:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BF37A:         var_108 = var_110.Height
  loc_15BF38C:         Set var_8C = Me.GridSel
  loc_15BF392:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF3AD:         var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15BF3BB:         Set var_114 = Me.GridSel
  loc_15BF3C1:         Call 0.Method_Proc_292_85_15BFCD00 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15BF3C9:         var_118.Top = var_108
  loc_15BF3ED:         Set var_8C = Me.GridSel
  loc_15BF3F3:         Call 0.Method_Proc_292_85_15BFCD00 (3, var_E8)
  loc_15BF412:         Set var_10C = Me.Check1
  loc_15BF418:         Call 0.Method_Proc_292_85_15BFCD00 (3, var_110)
  loc_15BF420:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BF43C:         Set var_8C = Me.GridSel
  loc_15BF442:         Call 0.Method_Proc_292_85_15BFCD00 (3, var_E8)
  loc_15BF461:         Set var_10C = Me.Check1
  loc_15BF467:         Call 0.Method_Proc_292_85_15BFCD00 (3, var_110)
  loc_15BF46F:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BF48B:         Set var_10C = Me.GridSel
  loc_15BF491:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BF499:         var_108 = var_110.Width
  loc_15BF4AB:         Set var_8C = Me.GridSel
  loc_15BF4B1:         Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF4CC:         var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15BF4DA:         Set var_114 = Me.GridSel
  loc_15BF4E0:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_118, CVar(CDbl(var_E8.Left)))
  loc_15BF4E8:         var_118.Left = var_108
  loc_15BF507:         Set var_E8 = Me.FGrid
  loc_15BF50D:         var_108 = var_E8.Height
  loc_15BF534:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15BF542:         Set var_10C = Me.GridSel
  loc_15BF548:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_110, CVar(CDbl(var_E8.Left)))
  loc_15BF550:         var_110.Top = var_108
  loc_15BF570:         Set var_8C = Me.GridSel
  loc_15BF576:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF595:         Set var_10C = Me.Check1
  loc_15BF59B:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF5A3:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BF5BF:         Set var_8C = Me.GridSel
  loc_15BF5C5:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF5E4:         Set var_10C = Me.Check1
  loc_15BF5EA:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF5F2:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BF60E:         Set var_10C = Me.GridSel
  loc_15BF614:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF61C:         var_108 = var_110.Width
  loc_15BF62E:         Set var_8C = Me.GridSel
  loc_15BF634:         Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF65A:         Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H32))
  loc_15BF676:       Else
  loc_15BF681:         If (var_F8 = 4) Then
  loc_15BF695:           Set var_8C = Me.GridSel
  loc_15BF69B:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15BF6A3:           var_E8.Left = var_108
  loc_15BF6B3:           Set var_E8 = Me.FGrid
  loc_15BF6B9:           var_108 = var_E8.Height
  loc_15BF6E0:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15BF6EE:           Set var_10C = Me.GridSel
  loc_15BF6F4:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_110, CVar(CDbl(&H4B)))
  loc_15BF6FC:           var_110.Top = var_108
  loc_15BF71C:           Set var_8C = Me.GridSel
  loc_15BF722:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF741:           Set var_10C = Me.Check1
  loc_15BF747:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BF74F:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BF76B:           Set var_8C = Me.GridSel
  loc_15BF771:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF790:           Set var_10C = Me.Check1
  loc_15BF796:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BF79E:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BF7BA:           Set var_10C = Me.GridSel
  loc_15BF7C0:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BF7C8:           var_108 = var_110.Width
  loc_15BF7DA:           Set var_8C = Me.GridSel
  loc_15BF7E0:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF7FB:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H19))) 'Single
  loc_15BF809:           Set var_114 = Me.GridSel
  loc_15BF80F:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_118, CVar(CDbl(&H4B)))
  loc_15BF817:           var_118.Left = var_108
  loc_15BF836:           Set var_E8 = Me.FGrid
  loc_15BF83C:           var_108 = var_E8.Height
  loc_15BF863:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15BF871:           Set var_10C = Me.GridSel
  loc_15BF877:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_110, CVar(CDbl(&H4B)))
  loc_15BF87F:           var_110.Top = var_108
  loc_15BF89F:           Set var_8C = Me.GridSel
  loc_15BF8A5:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF8C4:           Set var_10C = Me.Check1
  loc_15BF8CA:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF8D2:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BF8EE:           Set var_8C = Me.GridSel
  loc_15BF8F4:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BF913:           Set var_10C = Me.Check1
  loc_15BF919:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BF921:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BF93D:           Set var_8C = Me.GridSel
  loc_15BF943:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF962:           Set var_10C = Me.GridSel
  loc_15BF968:           Call 0.Method_Proc_292_85_15BFCD00 (3, var_110)
  loc_15BF970:           var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15BF98C:           Set var_10C = Me.GridSel
  loc_15BF992:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BF99A:           var_108 = var_110.Height
  loc_15BF9AC:           Set var_8C = Me.GridSel
  loc_15BF9B2:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BF9CD:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15BF9DB:           Set var_114 = Me.GridSel
  loc_15BF9E1:           Call 0.Method_Proc_292_85_15BFCD00 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15BF9E9:           var_118.Top = var_108
  loc_15BFA0D:           Set var_8C = Me.GridSel
  loc_15BFA13:           Call 0.Method_Proc_292_85_15BFCD00 (3, var_E8)
  loc_15BFA32:           Set var_10C = Me.Check1
  loc_15BFA38:           Call 0.Method_Proc_292_85_15BFCD00 (3, var_110)
  loc_15BFA40:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BFA5C:           Set var_8C = Me.GridSel
  loc_15BFA62:           Call 0.Method_Proc_292_85_15BFCD00 (3, var_E8)
  loc_15BFA81:           Set var_10C = Me.Check1
  loc_15BFA87:           Call 0.Method_Proc_292_85_15BFCD00 (3, var_110)
  loc_15BFA8F:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BFAAB:           Set var_10C = Me.GridSel
  loc_15BFAB1:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BFAB9:           var_108 = var_110.Width
  loc_15BFACB:           Set var_8C = Me.GridSel
  loc_15BFAD1:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BFAEC:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15BFAFA:           Set var_114 = Me.GridSel
  loc_15BFB00:           Call 0.Method_Proc_292_85_15BFCD00 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15BFB08:           var_118.Left = var_108
  loc_15BFB2C:           Set var_10C = Me.GridSel
  loc_15BFB32:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_110)
  loc_15BFB3A:           var_108 = var_110.Height
  loc_15BFB4C:           Set var_8C = Me.GridSel
  loc_15BFB52:           Call 0.Method_Proc_292_85_15BFCD00 (1, var_E8)
  loc_15BFB6D:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15BFB7B:           Set var_114 = Me.GridSel
  loc_15BFB81:           Call 0.Method_Proc_292_85_15BFCD00 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15BFB89:           var_118.Top = var_108
  loc_15BFBAD:           Set var_8C = Me.GridSel
  loc_15BFBB3:           Call 0.Method_Proc_292_85_15BFCD00 (4, var_E8)
  loc_15BFBD2:           Set var_10C = Me.Check1
  loc_15BFBD8:           Call 0.Method_Proc_292_85_15BFCD00 (4, var_110)
  loc_15BFBE0:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15BFBFC:           Set var_8C = Me.GridSel
  loc_15BFC02:           Call 0.Method_Proc_292_85_15BFCD00 (4, var_E8)
  loc_15BFC21:           Set var_10C = Me.Check1
  loc_15BFC27:           Call 0.Method_Proc_292_85_15BFCD00 (4, var_110)
  loc_15BFC2F:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15BFC4B:           Set var_10C = Me.GridSel
  loc_15BFC51:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_110)
  loc_15BFC6B:           Set var_8C = Me.GridSel
  loc_15BFC71:           Call 0.Method_Proc_292_85_15BFCD00 (2, var_E8)
  loc_15BFC97:           Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_110.Width)) + CDbl(&H32))
  loc_15BFCB0:         End If
  loc_15BFCB0:       End If
  loc_15BFCB0:     End If
  loc_15BFCB0:   End If
  loc_15BFCB0: End If
  loc_15BFCC9: global_152 = CLng(Me.PictParameter.Width)
  loc_15BFCCF: Exit Sub
End Sub

Public Sub Proc_292_86_EB754C
  'Data Table: 563044
  loc_EB74C7: If (Me.FrmList.Visible = &HFF) Then
  loc_EB74D6:   Me.FrmList.Visible = False
  loc_EB74DE: End If
  loc_EB74FA: If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_EB750C:   Me.DGMemType.Visible = False
  loc_EB7514: End If
  loc_EB7530: If (CBool(Me.DGTax.Visible) = &HFF) Then
  loc_EB7542:   Me.DGTax.Visible = False
  loc_EB754A: End If
  loc_EB754A: Exit Sub
End Sub

Public Sub Proc_292_87_12822A0(arg_C, arg_10, arg_14) '12822A0
  'Data Table: 563044
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_1281D06: On Error Goto loc_128228A
  loc_1281D0C: var_8C = vbNullString
  loc_1281D17: CRefVarAry
  loc_1281D1F: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_1281D40:   If (arg_C(var_8E) = 0) Then
  loc_1281D43:     GoTo loc_12820DB
  loc_1281D46:   End If
  loc_1281D57:   var_90 = CInt(arg_C(var_8E))
  loc_1281D61:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_1281D79:   Set var_DC = Me.GridSel
  loc_1281D7F:   Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, 0)
  loc_1281DA7:   If (CStr(var_E0.TextMatrix)) = "¸") Then
  loc_1281DB3:     If (CInt(arg_14) = 0) Then
  loc_1281DD2:       Set var_DC = Me.GridSel
  loc_1281DD8:       Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1281DE0:       var_C8 = var_E0.TextMatrix)
  loc_1281E11:       Set var_108 = Me.GridSel
  loc_1281E17:       Call 0.Method_Proc_292_87_12822A00 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_1281E4F:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_1281E54:       var_8C = CStr(var_1AC)
  loc_1281E79:     Else
  loc_1281E82:       If (CInt(arg_14) = 1) Then
  loc_1281EA1:         Set var_DC = Me.GridSel
  loc_1281EA7:         Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1281EAF:         var_C8 = var_E0.TextMatrix)
  loc_1281EE7:         Set var_108 = Me.GridSel
  loc_1281EED:         Call 0.Method_Proc_292_87_12822A00 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_1281F3A:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1281F3F:         var_8C = CStr(var_1AC)
  loc_1281F6B:       End If
  loc_1281F6B:     End If
  loc_1281F8A:     Set var_DC = Me.GridSel
  loc_1281F90:     Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1281FC2:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_1281FE1:       Set var_DC = Me.GridSel
  loc_1281FE7:       Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1281FEF:       var_C8 = var_E0.TextMatrix)
  loc_1282020:       Set var_108 = Me.GridSel
  loc_1282026:       Call 0.Method_Proc_292_87_12822A00 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_128203D:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1282044:       var_16C = CVar(CStr(var_C8)) 'String
  loc_1282056:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_128205E:       var_1AC = (var_C8 + var_18C)
  loc_1282063:       var_94 = CStr(var_1AC)
  loc_1282085:     End If
  loc_1282089:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_12820A7:     Set var_DC = Me.GridSel
  loc_12820AD:     Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, vbNullString, 0)
  loc_12820B5:     LateIdCallSt
  loc_12820C7:   Else
  loc_12820CE:     var_B8 = 0
  loc_12820D7:     VarIndexSt
  loc_12820DB:   End If
  loc_12820DB:   ' Referenced from: 1281D43
  loc_12820DE: Next var_98 'Integer
  loc_12820EB: CRefVarAry
  loc_12820F3: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_128212B:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1282132:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1282150:     Set var_DC = Me.GridSel
  loc_1282156:     Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, "¸", 0)
  loc_128215E:     LateIdCallSt
  loc_128216D:   End If
  loc_1282170: Next var_1C0 'Integer
  loc_128217D: If (var_8C = vbNullString) Then
  loc_1282180:   var_A8 = 0
  loc_1282189:   var_F0 = 1
  loc_128219C:   Set var_DC = Me.GridSel
  loc_12821A2:   Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0)
  loc_12821AA:   var_C8 = var_E0.TextMatrix)
  loc_12821D2:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_12821F8:   Set var_DC = Me.GridSel
  loc_12821FE:   Call 0.Method_Proc_292_87_12822A00 (arg_10, var_E0, var_C8)
  loc_128221D:   Proc_292_87_12822A0 = 0
  loc_1282223: End If
  loc_1282226: var_88 = var_8C
  loc_128222C: var_1C2 = arg_10
  loc_1282235: If (var_1C2 = 1) Then
  loc_128223E:   global_72 = var_94
  loc_1282245: Else
  loc_128224B:   If (var_1C2 = 2) Then
  loc_1282254:     global_76 = var_94
  loc_128225B:   Else
  loc_1282261:     If (var_1C2 = 3) Then
  loc_128226A:       global_80 = var_94
  loc_1282271:     Else
  loc_1282277:       If (var_1C2 = 4) Then
  loc_1282280:         global_84 = var_94
  loc_1282284:       End If
  loc_1282284:     End If
  loc_1282284:   End If
  loc_1282284: End If
  loc_1282284: Proc_292_87_12822A0 = var_1C2
  loc_128228A: ' Referenced from: 1281D06
  loc_1282292: Proc_6_60_E63754(0, GridSel.DispID_8001)
  loc_1282297: Proc_292_87_12822A0 = var_F0
End Sub

Public Sub Proc_292_88_F00D7C
  'Data Table: 563044
  Dim var_CC As Variant
  loc_F00CC1: If (CLng(Me.FGrid.Row) = CLng(global_132)) Then
  loc_F00CD2:   Proc_303_0_FBACC8("	")
  loc_F00CDA:   Exit Sub
  loc_F00CDB: End If
  loc_F00D1A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F00D27:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F00D4E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F00D58:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F00D67:     Me.FGrid.Row = var_CC
  loc_F00D6F:     Exit For
  loc_F00D72:   End If
  loc_F00D75: Next var_BC 'Integer
  loc_F00D7A: ' Referenced from: F00D6F
  loc_F00D7A: Exit Sub
End Sub

Public Sub Proc_292_89_1214548(arg_C, arg_10) '1214548
  'Data Table: 563044
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_121406B: var_86 = arg_C
  loc_1214074: If (var_86 = 1) Then
  loc_1214093:   Me.Recordset15.CursorLocation = 3
  loc_12140BC:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_12140CA:   CVarUnk
  loc_12140CF:   VerifyVarObj
  loc_12140DB:   Set var_8C = Me.GridSel
  loc_12140E1:   Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, New)
  loc_12140E9:   LateIdStAd
  loc_121410B:   ReDim Preserve global_180(0 To 0)
  loc_1214122:   global_180(0) = 0
  loc_1214123: End If
  loc_1214129: If (var_86 = 2) Then
  loc_1214148:   Me.Recordset15.CursorLocation = 3
  loc_1214171:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_121417F:   CVarUnk
  loc_1214184:   VerifyVarObj
  loc_1214190:   Set var_8C = Me.GridSel
  loc_1214196:   Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, New, 1, -1)
  loc_121419E:   LateIdStAd
  loc_12141C0:   ReDim Preserve global_184(0 To 0)
  loc_12141D7:   global_184(0) = 0
  loc_12141D8: End If
  loc_12141DE: If (var_86 = 3) Then
  loc_12141FD:   Me.Recordset15.CursorLocation = 3
  loc_1214226:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1214234:   CVarUnk
  loc_1214239:   VerifyVarObj
  loc_1214245:   Set var_8C = Me.GridSel
  loc_121424B:   Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, New, 1, -1)
  loc_1214253:   LateIdStAd
  loc_1214275:   ReDim Preserve global_188(0 To 0)
  loc_121428C:   global_188(0) = 0
  loc_121428D: End If
  loc_1214293: If (var_86 = 4) Then
  loc_12142B2:   Me.Recordset15.CursorLocation = 3
  loc_12142DB:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_12142E9:   CVarUnk
  loc_12142EE:   VerifyVarObj
  loc_12142FA:   Set var_8C = Me.GridSel
  loc_1214300:   Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1214308:   LateIdStAd
  loc_121432A:   ReDim Preserve global_192(0 To 0)
  loc_1214341:   global_192(0) = 0
  loc_1214342: End If
  loc_1214350: Set var_8C = Me.GridSel
  loc_1214356: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, True, var_B0, var_B0)
  loc_121435E: var_B0.Visible = var_B0
  loc_1214379: Set var_8C = Me.GridSel
  loc_121437F: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, False)
  loc_1214387: var_B0.Enabled = 1
  loc_121439F: Set var_8C = Me.Check1
  loc_12143A5: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, &HFF)
  loc_12143AD: var_B0.Visible = True
  loc_12143CC: Set var_8C = Me.GridSel
  loc_12143D2: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0)
  loc_12143DA: var_B0.Width = CVar(CDbl(4500))
  loc_12143E6: var_9C = 0
  loc_1214402: Set var_8C = Me.GridSel
  loc_1214408: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, &H258)
  loc_1214410: LateIdCallSt
  loc_121443B: Set var_8C = Me.GridSel
  loc_1214441: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, 0, 2)
  loc_1214449: LateIdCallSt
  loc_1214474: Set var_8C = Me.GridSel
  loc_121447A: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, &HE10, 1)
  loc_1214482: LateIdCallSt
  loc_12144A0: Set var_8C = Me.Check1
  loc_12144A6: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, CDbl(550), var_B0)
  loc_12144AE: var_B0.Width = var_B0
  loc_12144BA: var_9C = 0
  loc_12144CD: Set var_8C = Me.GridSel
  loc_12144D3: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, var_9C)
  loc_12144F9: Set var_E4 = Me.Check1
  loc_12144FF: Call 0.Method_Proc_292_89_12145480 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1214507: var_E8.Height = var_B0
  loc_121452A: Set var_8C = Me.Check1
  loc_1214530: Call 0.Method_Proc_292_89_12145480 (var_86, var_B0, CInt(1))
  loc_1214538: var_B0.Value = var_9C
  loc_1214544: Exit Sub
End Sub

Public Sub Proc_292_90_1550874
  'Data Table: 563044
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim var_11C As Variant
  Dim var_144 As Variant
  Dim Me As Recordset15
  Dim var_160 As String
  Dim var_168 As String
  loc_154F876: var_98 = global_52
  loc_154F881: If (var_98 = "MemVisitDetail") Then
  loc_154F888:   Set var_9C = Me.FGrid
  loc_154F88E:   var_AC = CVar(CLng(0)) 'Long
  loc_154F893:   var_CC = 0
  loc_154F89C:   var_EC = "From Date"
  loc_154F8A5:   LateIdCallSt
  loc_154F8B0:   var_AC = CVar(CLng(0)) 'Long
  loc_154F8B5:   var_CC = &H10E
  loc_154F8C1:   LateIdCallSt
  loc_154F8CC:   var_AC = CVar(CLng(1)) 'Long
  loc_154F8D1:   var_CC = 0
  loc_154F8DA:   var_EC = "To Date"
  loc_154F8E3:   LateIdCallSt
  loc_154F8EE:   var_AC = CVar(CLng(1)) 'Long
  loc_154F8F3:   var_CC = &H10E
  loc_154F8FF:   LateIdCallSt
  loc_154F90A:   var_AC = CVar(CLng(2)) 'Long
  loc_154F90F:   var_CC = 0
  loc_154F918:   var_EC = "Detailed"
  loc_154F921:   LateIdCallSt
  loc_154F92C:   var_AC = CVar(CLng(2)) 'Long
  loc_154F931:   var_CC = &H10E
  loc_154F93D:   LateIdCallSt
  loc_154F948:   var_AC = CVar(CLng(0)) 'Long
  loc_154F94D:   var_CC = 1
  loc_154F95B:   var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_154F962:   LateIdCallSt
  loc_154F970:   var_AC = CVar(CLng(1)) 'Long
  loc_154F975:   var_CC = 1
  loc_154F98A:   LateIdCallSt
  loc_154F998:   var_AC = CVar(CLng(2)) 'Long
  loc_154F99D:   var_CC = 1
  loc_154F9AF:   LateIdCallSt
  loc_154F9B9:   Set var_9C = Nothing 
  loc_154F9C4:   global_134 = CInt(0)
  loc_154F9DD:   Me.FGrid.Row = CVar(CLng(global_134))
  loc_154F9EF:   var_AC = 3
  loc_154FA0C:   var_88 = "Select '' As Opt,Name As Department,Code From Depart Where Logsite_Code='" & global_88 & "' and RestType in('Outlet','Room Service') Order By Name"
  loc_154FA1A:   Call Proc_292_89_1214548(1, var_88)
  loc_154FA30:   var_8C = "Select '' as Opt,Name As Category,Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88 & "' Order By Name"
  loc_154FA3E:   Call Proc_292_89_1214548(2, var_8C)
  loc_154FA62:   Call Proc_292_89_1214548(3, "Select '' As Opt,Name As Facility,Code From MemFacilityMast where LOGSITE_CODE='" & global_88 & "' Order By Name")
  loc_154FA72:   Set var_110 = Me.Check1
  loc_154FA78:   Call 0.Method_Proc_292_90_15508740 (1, var_11C, 0, var_AC, CInt(2), global_134, var_9C)
  loc_154FA80:   var_11C.Visible = "No"
  loc_154FA9B:   Set var_110 = Me.Check1
  loc_154FAA1:   Call 0.Method_Proc_292_90_15508740 (1, var_11C, CInt(0), var_CC, var_AC)
  loc_154FAA9:   var_11C.Value = var_9C
  loc_154FAC0:   Set var_110 = Me.Check1
  loc_154FAC6:   Call 0.Method_Proc_292_90_15508740 (2, var_11C, 0)
  loc_154FACE:   var_11C.Visible = CVar(CStr(MemVar_1F950EC))
  loc_154FAE9:   Set var_110 = Me.Check1
  loc_154FAEF:   Call 0.Method_Proc_292_90_15508740 (2, var_11C, CInt(0))
  loc_154FAF7:   var_11C.Value = var_CC
  loc_154FB0E:   Set var_110 = Me.Check1
  loc_154FB14:   Call 0.Method_Proc_292_90_15508740 (3, var_11C)
  loc_154FB1C:   var_11C.Visible = False
  loc_154FB37:   Set var_110 = Me.Check1
  loc_154FB3D:   Call 0.Method_Proc_292_90_15508740 (3, var_11C)
  loc_154FB45:   var_11C.Value = CInt(0)
  loc_154FB54: Else
  loc_154FB5C:   If (var_98 = "MemMalingLabels") Then
  loc_154FB63:     Set var_120 = Me.FGrid
  loc_154FB69:     var_AC = CVar(CLng(2)) 'Long
  loc_154FB6E:     var_CC = 0
  loc_154FB77:     var_EC = "Address "
  loc_154FB80:     LateIdCallSt
  loc_154FB8B:     var_AC = CVar(CLng(2)) 'Long
  loc_154FB90:     var_CC = &H10E
  loc_154FB9C:     LateIdCallSt
  loc_154FBA7:     var_AC = CVar(CLng(3)) 'Long
  loc_154FBAC:     var_CC = 0
  loc_154FBB5:     var_EC = "Order By "
  loc_154FBBE:     LateIdCallSt
  loc_154FBC9:     var_AC = CVar(CLng(3)) 'Long
  loc_154FBCE:     var_CC = &H10E
  loc_154FBDA:     LateIdCallSt
  loc_154FBE5:     var_AC = CVar(CLng(2)) 'Long
  loc_154FBEA:     var_CC = 1
  loc_154FBF3:     var_EC = "Residential Address"
  loc_154FBFC:     LateIdCallSt
  loc_154FC07:     var_AC = CVar(CLng(3)) 'Long
  loc_154FC1E:     LateIdCallSt
  loc_154FC28:     Set var_120 = Nothing 
  loc_154FC33:     global_134 = CInt(2)
  loc_154FC4C:     Me.FGrid.Row = CVar(CLng(global_134))
  loc_154FC5E:     var_AC = 1
  loc_154FC74:     var_114 = "Select '' as Opt,Name As Category,Code As Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_154FC89:     Call Proc_292_89_1214548(1, var_114 & "' Order By Name")
  loc_154FC99:     Set var_110 = Me.Check1
  loc_154FC9F:     Call 0.Method_Proc_292_90_15508740 (1, var_11C, 0, var_AC, CInt(3), global_134, var_120)
  loc_154FCA7:     var_11C.Visible = "ConPerson"
  loc_154FCC2:     Set var_110 = Me.Check1
  loc_154FCC8:     Call 0.Method_Proc_292_90_15508740 (1, var_11C, CInt(0), 1, var_AC)
  loc_154FCD0:     var_11C.Value = var_120
  loc_154FCDF:   Else
  loc_154FCE7:     If (var_98 = "MemBillMissingReport") Then
  loc_154FCEE:       Set var_124 = Me.FGrid
  loc_154FCF4:       var_AC = CVar(CLng(0)) 'Long
  loc_154FCF9:       var_CC = 0
  loc_154FD02:       var_EC = "For Month"
  loc_154FD0B:       LateIdCallSt
  loc_154FD16:       var_AC = CVar(CLng(0)) 'Long
  loc_154FD1B:       var_CC = &H10E
  loc_154FD27:       LateIdCallSt
  loc_154FD32:       var_CC = CVar(CLng(0)) 'Long
  loc_154FD37:       var_EC = 1
  loc_154FD69:       var_144 = CVar(CStr(Format(MemVar_1F950EC, "MMM/yyyy"))) 'String
  loc_154FD70:       LateIdCallSt
  loc_154FD83:       Set var_124 = Nothing 
  loc_154FDA7:       Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_154FDB6:       global_132 = CInt(0)
  loc_154FDC1:       global_136 = 0
  loc_154FDC8:     Else
  loc_154FDD0:       If (var_98 = "MemSalesRegister") Then
  loc_154FDD7:         Set var_158 = Me.FGrid
  loc_154FDDD:         var_AC = CVar(CLng(0)) 'Long
  loc_154FDE2:         var_CC = 0
  loc_154FDEB:         var_EC = "From Date"
  loc_154FDF4:         LateIdCallSt
  loc_154FDFF:         var_AC = CVar(CLng(0)) 'Long
  loc_154FE04:         var_CC = &H10E
  loc_154FE10:         LateIdCallSt
  loc_154FE1B:         var_AC = CVar(CLng(1)) 'Long
  loc_154FE20:         var_CC = 0
  loc_154FE29:         var_EC = "To Date"
  loc_154FE32:         LateIdCallSt
  loc_154FE3D:         var_AC = CVar(CLng(1)) 'Long
  loc_154FE42:         var_CC = &H10E
  loc_154FE4E:         LateIdCallSt
  loc_154FE59:         var_AC = CVar(CLng(2)) 'Long
  loc_154FE5E:         var_CC = 0
  loc_154FE67:         var_EC = "Detailed"
  loc_154FE70:         LateIdCallSt
  loc_154FE7B:         var_AC = CVar(CLng(2)) 'Long
  loc_154FE80:         var_CC = &H10E
  loc_154FE8C:         LateIdCallSt
  loc_154FE97:         var_AC = CVar(CLng(0)) 'Long
  loc_154FE9C:         var_CC = 1
  loc_154FEAA:         var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_154FEB1:         LateIdCallSt
  loc_154FEBF:         var_AC = CVar(CLng(1)) 'Long
  loc_154FEC4:         var_CC = 1
  loc_154FED2:         var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_154FED9:         LateIdCallSt
  loc_154FEE7:         var_AC = CVar(CLng(2)) 'Long
  loc_154FEFE:         LateIdCallSt
  loc_154FF12:         Me.Command2.Visible = True
  loc_154FF1C:         Set var_158 = Nothing 
  loc_154FF27:         global_134 = CInt(0)
  loc_154FF40:         Me.FGrid.Row = CVar(CLng(global_134))
  loc_154FF52:         var_AC = 1
  loc_154FF68:         var_114 = "Select '' as Opt,Name As Category,Code As Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_154FF7D:         Call Proc_292_89_1214548(1, var_114 & "' Order By Name")
  loc_154FF8D:         Set var_110 = Me.Check1
  loc_154FF93:         Call 0.Method_Proc_292_90_15508740 (1, var_11C, 0, var_AC, CInt(2), global_134, var_158)
  loc_154FF9B:         var_11C.Visible = "No"
  loc_154FFB6:         Set var_110 = Me.Check1
  loc_154FFBC:         Call 0.Method_Proc_292_90_15508740 (1, var_11C, CInt(0), 1, var_AC)
  loc_154FFC4:         var_11C.Value = var_158
  loc_154FFD3:       Else
  loc_154FFDB:         If (var_98 = "MemTaxReport") Then
  loc_154FFE2:           Set var_15C = Me.FGrid
  loc_154FFE8:           var_AC = CVar(CLng(0)) 'Long
  loc_154FFED:           var_CC = 0
  loc_154FFF6:           var_EC = "From Date"
  loc_154FFFF:           LateIdCallSt
  loc_155000A:           var_AC = CVar(CLng(0)) 'Long
  loc_155000F:           var_CC = &H10E
  loc_155001B:           LateIdCallSt
  loc_1550026:           var_AC = CVar(CLng(1)) 'Long
  loc_155002B:           var_CC = 0
  loc_1550034:           var_EC = "To Date"
  loc_155003D:           LateIdCallSt
  loc_1550048:           var_AC = CVar(CLng(1)) 'Long
  loc_155004D:           var_CC = &H10E
  loc_1550059:           LateIdCallSt
  loc_1550064:           var_AC = CVar(CLng(2)) 'Long
  loc_1550069:           var_CC = 0
  loc_1550072:           var_EC = "Tax Detail"
  loc_155007B:           LateIdCallSt
  loc_1550086:           var_AC = CVar(CLng(2)) 'Long
  loc_155008B:           var_CC = &H10E
  loc_1550097:           LateIdCallSt
  loc_15500A2:           var_AC = CVar(CLng(0)) 'Long
  loc_15500A7:           var_CC = 1
  loc_15500B5:           var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_15500BC:           LateIdCallSt
  loc_15500CA:           var_AC = CVar(CLng(1)) 'Long
  loc_15500CF:           var_CC = 1
  loc_15500DD:           var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_15500E4:           LateIdCallSt
  loc_15500F2:           var_AC = CVar(CLng(2)) 'Long
  loc_1550109:           LateIdCallSt
  loc_1550133:           Me.FGrid.CursorLocation = 3
  loc_1550156:           var_114 = "Select Distinct Membill2.TaxCode As Code, RevMast.Name From ((MemBill1 Left Join MemBill2 On MemBill1.FacilityCode=MemBill2.FacilityCode) Left Join RevMast On RevMast.Code=MemBill2.TaxCode) WHERE IsNull(Membill2.TaxCode,'')<>'' And (RevMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_1550167:           Me.Open CVar(var_114 & "' or RevMast.LOGSITE_CODE='HO') Order by RevMast.Name"), CVar(MemVar_1F951E0), 2
  loc_155017B:           CVarUnk
  loc_1550180:           VerifyVarObj
  loc_1550186:           Set var_110 = Me.DGTax
  loc_155018C:           LateIdStAd
  loc_15501A1:           global_134 = CInt(0)
  loc_15501BA:           Me.FGrid.Row = CVar(CLng(global_134))
  loc_15501E2:           var_114 = "SELECT '' as Opt,Description as Charges,'R'+Code As Code FROM MembershipRevMast WHERE LOGSITE_CODE='" & global_88
  loc_15501E9:           var_160 = var_114 & "' Union All Select '' As Opt,Name As Charges,'F'+Code As Code From MemFacilityMast where LOGSITE_CODE='"
  loc_15501FA:           var_168 = var_160 & global_88 & "' Union All Select '' As Opt,Name+' - POS' As Charges,'O'+Code As Code From Depart where OutletYN='Y' And RestType IN ('Room Service','Outlet') And LOGSITE_CODE='"
  loc_1550223:           Call Proc_292_89_1214548(1, var_168 & global_88 & "' ORDER BY Charges")
  loc_1550232:           var_114 = "Select '' as Opt,Name As Category,Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_1550247:           Call Proc_292_89_1214548(2, var_114 & "' Order By Name")
  loc_155025D:           Call 0.Method_Proc_292_90_15508740 (1, var_11C, 0, 2, CInt(2), global_134, Me.Check1)
  loc_1550265:           var_11C.Visible = New
  loc_1550280:           Set var_110 = Me.Check1
  loc_1550286:           Call 0.Method_Proc_292_90_15508740 (1, var_11C, CInt(0), 3, -1)
  loc_155028E:           var_11C.Value = Nothing
  loc_15502A5:           Set var_110 = Me.Check1
  loc_15502AB:           Call 0.Method_Proc_292_90_15508740 (2, var_11C, 0)
  loc_15502B3:           var_11C.Visible = vbNullString
  loc_15502CE:           Set var_110 = Me.Check1
  loc_15502D4:           Call 0.Method_Proc_292_90_15508740 (2, var_11C, CInt(0))
  loc_15502DC:           var_11C.Value = 1
  loc_15502EB:         Else
  loc_15502F3:           If (var_98 = "PaymentDueLetterReport") Then
  loc_15502FA:             Set var_170 = Me.FGrid
  loc_1550300:             var_AC = CVar(CLng(0)) 'Long
  loc_1550305:             var_CC = 0
  loc_155030E:             var_EC = "From Date"
  loc_1550317:             LateIdCallSt
  loc_1550322:             var_AC = CVar(CLng(0)) 'Long
  loc_1550327:             var_CC = &H10E
  loc_1550333:             LateIdCallSt
  loc_155033E:             var_AC = CVar(CLng(1)) 'Long
  loc_1550343:             var_CC = 0
  loc_155034C:             var_EC = "To Date "
  loc_1550355:             LateIdCallSt
  loc_1550360:             var_AC = CVar(CLng(1)) 'Long
  loc_1550365:             var_CC = &H10E
  loc_1550371:             LateIdCallSt
  loc_155037C:             var_AC = CVar(CLng(2)) 'Long
  loc_1550381:             var_CC = 0
  loc_155038A:             var_EC = "Letter Type "
  loc_1550393:             LateIdCallSt
  loc_155039E:             var_AC = CVar(CLng(2)) 'Long
  loc_15503A3:             var_CC = &H10E
  loc_15503AF:             LateIdCallSt
  loc_15503BA:             var_AC = CVar(CLng(0)) 'Long
  loc_15503BF:             var_CC = 1
  loc_15503CD:             var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_15503D4:             LateIdCallSt
  loc_15503E2:             var_AC = CVar(CLng(1)) 'Long
  loc_15503E7:             var_CC = 1
  loc_15503F5:             var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_15503FC:             LateIdCallSt
  loc_155040A:             var_AC = CVar(CLng(2)) 'Long
  loc_155040F:             var_CC = 1
  loc_1550418:             var_EC = "Article_26(a)"
  loc_1550421:             LateIdCallSt
  loc_155042B:             Set var_170 = Nothing 
  loc_155044F:             Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_155045E:             global_132 = CInt(2)
  loc_1550469:             global_136 = 0
  loc_1550470:           Else
  loc_1550478:             If (var_98 = "MemBirthAnnvDtls") Then
  loc_155047F:               Set var_174 = Me.FGrid
  loc_1550485:               var_AC = CVar(CLng(0)) 'Long
  loc_155048A:               var_CC = 0
  loc_1550493:               var_EC = "From Date"
  loc_155049C:               LateIdCallSt
  loc_15504A7:               var_AC = CVar(CLng(0)) 'Long
  loc_15504AC:               var_CC = &H10E
  loc_15504B8:               LateIdCallSt
  loc_15504C3:               var_AC = CVar(CLng(1)) 'Long
  loc_15504C8:               var_CC = 0
  loc_15504D1:               var_EC = "To Date "
  loc_15504DA:               LateIdCallSt
  loc_15504E5:               var_AC = CVar(CLng(1)) 'Long
  loc_15504EA:               var_CC = &H10E
  loc_15504F6:               LateIdCallSt
  loc_1550501:               var_AC = CVar(CLng(2)) 'Long
  loc_1550506:               var_CC = 0
  loc_155050F:               var_EC = "List Type "
  loc_1550518:               LateIdCallSt
  loc_1550523:               var_AC = CVar(CLng(2)) 'Long
  loc_1550528:               var_CC = &H10E
  loc_1550534:               LateIdCallSt
  loc_155053F:               var_CC = CVar(CLng(0)) 'Long
  loc_1550544:               var_EC = 1
  loc_1550576:               var_144 = CVar(CStr(Format(MemVar_1F950F4, "dd/MMM"))) 'String
  loc_155057D:               LateIdCallSt
  loc_1550591:               var_CC = CVar(CLng(1)) 'Long
  loc_1550596:               var_EC = 1
  loc_15505CF:               LateIdCallSt
  loc_15505E3:               var_AC = CVar(CLng(2)) 'Long
  loc_15505E8:               var_CC = 1
  loc_15505F1:               var_EC = "Report"
  loc_15505FA:               LateIdCallSt
  loc_1550604:               Set var_174 = Nothing 
  loc_155060F:               global_134 = CInt(0)
  loc_1550628:               Me.FGrid.Row = CVar(CLng(global_134))
  loc_1550650:               var_114 = "Select '' as Opt,Name As Category,Code,Shortname From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_1550665:               Call Proc_292_89_1214548(1, var_114 & "' Order By Name")
  loc_1550673:               var_CC = 0
  loc_1550685:               Set var_110 = Me.GridSel
  loc_155068B:               Call 0.Method_Proc_292_90_15508740 (1, var_11C, var_CC, 3, 2, CInt(2), global_134)
  loc_1550693:               LateIdCallSt
  loc_15506B0:               Set var_110 = Me.GridSel
  loc_15506B6:               Call 0.Method_Proc_292_90_15508740 (1, var_11C, var_176, 1, var_11C, var_174)
  loc_15506BE:               var_10C = var_11C.Rows
  loc_15506D8:               For var_17A = var_CC To CInt((CLng(var_10C) - 1)):             var_EC = var_17A 'Integer
  loc_15506E2:                 var_AC = CVar(CLng(var_176)) 'Long
  loc_15506F0:                 Set var_110 = Me.GridSel
  loc_15506F6:                 Call 0.Method_Proc_292_90_15508740 (1, var_11C, var_AC, var_CC)
  loc_15506FE:                 var_11C.Row = var_AC
  loc_155071C:                 Set var_110 = Me.GridSel
  loc_1550722:                 Call 0.Method_Proc_292_90_15508740 (1, var_11C, 0)
  loc_155072A:                 var_11C.Col = var_174
  loc_1550745:                 Set var_110 = Me.GridSel
  loc_155074B:                 Call 0.Method_Proc_292_90_15508740 (1, var_11C, "WINGDINGS")
  loc_1550753:                 var_11C.CellFontName = CVar(CStr(Format(MemVar_1F950EC, "dd/MMM")))
  loc_1550770:                 Set var_110 = Me.GridSel
  loc_1550776:                 Call 0.Method_Proc_292_90_15508740 (1, var_11C)
  loc_155077E:                 var_11C.CellFontSize = CVar(CDbl(&HE))
  loc_155078E:                 var_AC = CVar(CLng(var_176)) 'Long
  loc_1550793:                 var_CC = 0
  loc_15507AB:                 Set var_110 = Me.GridSel
  loc_15507B1:                 Call 0.Method_Proc_292_90_15508740 (1, var_11C, "¸")
  loc_15507B9:                 LateIdCallSt
  loc_15507CB:               Next var_17A 'Integer
  loc_15507D3:               Call Proc_292_99_1159884(var_10C)
  loc_15507E6:               Set var_110 = Me.Check1
  loc_15507EC:               Call 0.Method_Proc_292_90_15508740 (1, var_11C)
  loc_15507F4:               var_11C.Visible = False
  loc_155080B:               Set var_110 = Me.Check1
  loc_1550811:               Call 0.Method_Proc_292_90_15508740 (2, var_11C)
  loc_1550819:               var_11C.Visible = False
  loc_1550832:               Set var_110 = Me.GridSel
  loc_1550838:               Call 0.Method_Proc_292_90_15508740 (1, var_11C)
  loc_1550840:               var_11C.Enabled = True
  loc_1550859:               Set var_110 = Me.GridSel
  loc_155085F:               Call 0.Method_Proc_292_90_15508740 (2, var_11C)
  loc_1550867:               var_11C.Enabled = True
  loc_1550873:             End If
  loc_1550873:           End If
  loc_1550873:         End If
  loc_1550873:       End If
  loc_1550873:     End If
  loc_1550873:   End If
  loc_1550873: End If
  loc_1550873: Exit Sub
End Sub

Public Sub Proc_292_91_EF9184(arg_C, arg_10) 'EF9184
  'Data Table: 563044
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_EF90BC: var_98 = CVar(CLng(arg_C)) 'Long
  loc_EF90C1: var_B8 = 1
  loc_EF90F0: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EF9113:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_EF9127:   Set var_CC = Me.FGrid
  loc_EF914B:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_EF9166:   Me.FGrid.Col = 1
  loc_EF9170:   var_86 = 0
  loc_EF9176: Else
  loc_EF9178:   var_86 = &HFF
  loc_EF917B: End If
  loc_EF917B: Proc_292_91_EF9184 = var_86
End Sub

Public Sub Proc_292_92_E1C36C
  'Data Table: 563044
  loc_E1C358: On Error Goto loc_E1C35C
  loc_E1C35B: Exit Sub
  loc_E1C35C: ' Referenced from: E1C358
  loc_E1C364: Proc_6_60_E63754(0)
  loc_E1C369: Exit Sub
End Sub

Public Sub Proc_292_93_E24154
  'Data Table: 563044
  loc_E24146: Me.PictParameter.Width = CDbl(global_152)
  loc_E2414E: Call Form_Resize()
  loc_E24153: Exit Sub
End Sub

Public Sub Proc_292_94_FC4EF8(arg_C) 'FC4EF8
  'Data Table: 563044
  Dim var_8C As Recordset15
  loc_FC4D45: Set var_8C = arg_C 
  loc_FC4D6D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FC4D99: var_8C.Fields.Append "Date", &HC8, &H19
  loc_FC4DC5: var_8C.Fields.Append "Code", &HC8, &H19
  loc_FC4DF1: var_8C.Fields.Append "Facility", &HC8, &H4B
  loc_FC4E1D: var_8C.Fields.Append "Total", &HC8, &HE
  loc_FC4E49: var_8C.Fields.Append "User", &HC8, &HF
  loc_FC4E75: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FC4EA1: var_8C.Fields.Append "CatCode", &HC8, 6
  loc_FC4EB1: var_8C.CursorType = 3
  loc_FC4EBE: var_8C.LockType = 3
  loc_FC4EDD: var_8C.Open var_A0, var_B0, -1
  loc_FC4EE4: Set var_8C = Nothing 
  loc_FC4EEB: Set var_88 = arg_C 
  loc_FC4EEF: Proc_292_94_FC4EF8 = -1
  loc_FC4EF6: DOC
End Sub

Public Sub Proc_292_95_1093F08(arg_C) '1093F08
  'Data Table: 563044
  Dim var_8C As Recordset15
  loc_1093C4D: Set var_8C = arg_C 
  loc_1093C75: var_8C.Fields.Append "mLine", &HC8, &H32
  loc_1093CA1: var_8C.Fields.Append "Name", &HC8, &H32
  loc_1093CCD: var_8C.Fields.Append "ConPrefix", &HC8, &H32
  loc_1093CF9: var_8C.Fields.Append "ConPerSon", &HC8, &H32
  loc_1093D25: var_8C.Fields.Append "CardNo", &HC8, &H32
  loc_1093D51: var_8C.Fields.Append "MemType", &HC8, &H32
  loc_1093D7D: var_8C.Fields.Append "Add1", &HC8, &H32
  loc_1093DA9: var_8C.Fields.Append "Add2", &HC8, &H32
  loc_1093DD5: var_8C.Fields.Append "Add3", &HC8, &H32
  loc_1093E01: var_8C.Fields.Append "PinCode", &HC8, &H32
  loc_1093E2D: var_8C.Fields.Append "CityName", &HC8, &H32
  loc_1093E59: var_8C.Fields.Append "Phone", &HC8, &H32
  loc_1093E85: var_8C.Fields.Append "Mobile", &HC8, &H32
  loc_1093EB1: var_8C.Fields.Append "mType", &HC8, &H32
  loc_1093EC1: var_8C.CursorType = 3
  loc_1093ECE: var_8C.LockType = 3
  loc_1093EED: var_8C.Open var_A0, var_B0, -1
  loc_1093EF4: Set var_8C = Nothing 
  loc_1093EFB: Set var_88 = arg_C 
  loc_1093EFF: Proc_292_95_1093F08 = -1
End Sub

Public Sub Proc_292_96_115F0A0(arg_C) '115F0A0
  'Data Table: 563044
  Dim var_8C As Recordset15
  loc_115ECDD: Set var_8C = arg_C 
  loc_115ED05: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_115ED31: var_8C.Fields.Append "Name", &HC8, &H4B
  loc_115ED5D: var_8C.Fields.Append "AcName", &HC8, &H4B
  loc_115ED89: var_8C.Fields.Append "CardNo", &HC8, &H32
  loc_115EDB5: var_8C.Fields.Append "CompanyType", &HC8, &H32
  loc_115EDE1: var_8C.Fields.Append "Birthday", &HC8, &HF
  loc_115EE0D: var_8C.Fields.Append "AnniversaryDay", &HC8, &HF
  loc_115EE39: var_8C.Fields.Append "Phone", &HC8, &H32
  loc_115EE65: var_8C.Fields.Append "Mobile", &HC8, &H32
  loc_115EE91: var_8C.Fields.Append "Address", &HC8, &HC8
  loc_115EEBD: var_8C.Fields.Append "City", &HC8, &H32
  loc_115EEE9: var_8C.Fields.Append "Country", &HC8, &H32
  loc_115EF15: var_8C.Fields.Append "State", &HC8, &H32
  loc_115EF41: var_8C.Fields.Append "PinCode", &HC8, &H32
  loc_115EF6D: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_115EF99: var_8C.Fields.Append "Father", &HC8, &H32
  loc_115EFC5: var_8C.Fields.Append "Mother", &HC8, &H32
  loc_115EFF1: var_8C.Fields.Append "CurrBal", &HC8, &H32
  loc_115F01D: var_8C.Fields.Append "CurrBalType", &HC8, &H32
  loc_115F049: var_8C.Fields.Append "mType", &HC8, 6
  loc_115F059: var_8C.CursorType = 3
  loc_115F066: var_8C.LockType = 3
  loc_115F085: var_8C.Open var_A0, var_B0, -1
  loc_115F08C: Set var_8C = Nothing 
  loc_115F093: Set var_88 = arg_C 
  loc_115F097: Proc_292_96_115F0A0 = -1
End Sub

Public Sub Proc_292_97_10FF844(arg_C) '10FF844
  'Data Table: 563044
  Dim var_8C As Recordset15
  loc_10FF505: Set var_8C = arg_C 
  loc_10FF52D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10FF559: var_8C.Fields.Append "Sno", &HC8, 4
  loc_10FF585: var_8C.Fields.Append "MemCat", &HC8, &H4B
  loc_10FF5B1: var_8C.Fields.Append "TaxAmt", &HC8, &HC
  loc_10FF5DD: var_8C.Fields.Append "Chrg1", &HC8, &HC
  loc_10FF609: var_8C.Fields.Append "Chrg2", &HC8, &HC
  loc_10FF635: var_8C.Fields.Append "Chrg3", &HC8, &HC
  loc_10FF661: var_8C.Fields.Append "Chrg4", &HC8, &HC
  loc_10FF68D: var_8C.Fields.Append "Chrg5", &HC8, &HC
  loc_10FF6B9: var_8C.Fields.Append "Chrg6", &HC8, &HC
  loc_10FF6E5: var_8C.Fields.Append "Chrg7", &HC8, &HC
  loc_10FF711: var_8C.Fields.Append "Chrg8", &HC8, &HC
  loc_10FF73D: var_8C.Fields.Append "Chrg9", &HC8, &HC
  loc_10FF769: var_8C.Fields.Append "ChrgSTWLF", &HC8, &HC
  loc_10FF795: var_8C.Fields.Append "ChrgOther", &HC8, &HC
  loc_10FF7C1: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10FF7ED: var_8C.Fields.Append "MemCatCode", &HC8, 6
  loc_10FF7FD: var_8C.CursorType = 3
  loc_10FF80A: var_8C.LockType = 3
  loc_10FF829: var_8C.Open var_A0, var_B0, -1
  loc_10FF830: Set var_8C = Nothing 
  loc_10FF837: Set var_88 = arg_C 
  loc_10FF83B: Proc_292_97_10FF844 = -1
End Sub

Public Sub Proc_292_98_119DCF8(arg_C) '119DCF8
  'Data Table: 563044
  Dim var_8C As Recordset15
  loc_119D8DD: Set var_8C = arg_C 
  loc_119D905: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_119D931: var_8C.Fields.Append "Date", &HC8, &H14
  loc_119D95D: var_8C.Fields.Append "Date1", &HC8, &H14
  loc_119D989: var_8C.Fields.Append "BillNo", &HC8, 9
  loc_119D9B5: var_8C.Fields.Append "CardNo", &HC8, &H19
  loc_119D9E1: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_119DA0D: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_119DA39: var_8C.Fields.Append "Facility", &HC8, &H4B
  loc_119DA65: var_8C.Fields.Append "Total", &HC8, &HE
  loc_119DA91: var_8C.Fields.Append "Tax1", &HC8, &HE
  loc_119DABD: var_8C.Fields.Append "Tax2", &HC8, &HE
  loc_119DAE9: var_8C.Fields.Append "Tax3", &HC8, &HE
  loc_119DB15: var_8C.Fields.Append "Tax4", &HC8, &HE
  loc_119DB41: var_8C.Fields.Append "Tax5", &HC8, &HE
  loc_119DB6D: var_8C.Fields.Append "Tax6", &HC8, &HE
  loc_119DB99: var_8C.Fields.Append "Tax7", &HC8, &HE
  loc_119DBC5: var_8C.Fields.Append "Tax8", &HC8, &HE
  loc_119DBF1: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_119DC1D: var_8C.Fields.Append "NetTotal", &HC8, &HE
  loc_119DC49: var_8C.Fields.Append "OpBal", &HC8, &HE
  loc_119DC75: var_8C.Fields.Append "Mark", &HC8, 1
  loc_119DCA1: var_8C.Fields.Append "CatCode", &HC8, 6
  loc_119DCB1: var_8C.CursorType = 3
  loc_119DCBE: var_8C.LockType = 3
  loc_119DCDD: var_8C.Open var_A0, var_B0, -1
  loc_119DCE4: Set var_8C = Nothing 
  loc_119DCEB: Set var_88 = arg_C 
  loc_119DCEF: Proc_292_98_119DCF8 = -1
End Sub

Public Sub Proc_292_99_1159884
  'Data Table: 563044
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Long
  Dim var_104 As String
  Dim var_108 As String
  Dim var_10C As String
  Dim var_A8 As MSHFlexGrid
  Dim var_170 As MSHFlexGrid
  loc_1159504: Set var_A8 = Me.GridSel
  loc_115950A: Call 0.Method_Proc_292_99_11598840 (1, var_AC)
  loc_115952C: For var_C0 = 1 To CInt((CLng(var_AC.Rows) - 1)): var_9A = var_C0 'Integer
  loc_1159536:   var_D0 = CVar(CLng(var_9A)) 'Long
  loc_115954D:   Set var_A8 = Me.GridSel
  loc_1159553:   Call 0.Method_Proc_292_99_11598840 (1, var_AC, 0)
  loc_115957B:   If (CStr(var_AC.TextMatrix)) = "¸") Then
  loc_11595A3:     Set var_A8 = Me.GridSel
  loc_11595A9:     Call 0.Method_Proc_292_99_11598840 (1, var_AC, 2, CVar(CLng(var_9A)))
  loc_11595C0:     var_10C = var_A0 & "'" & CStr(var_AC.TextMatrix))
  loc_11595C7:     var_A0 = var_10C & "', "
  loc_11595DD:   End If
  loc_11595E0: Next var_C0 'Integer
  loc_11595ED: If (var_A0 <> vbNullString) Then
  loc_11595FA:   var_BC = CVar((Len(var_A0) - 2)) 'Long
  loc_115962F:   var_A0 = " and S.CompanyType in (" & CStr(Mid(var_A0, 1, var_AC.TextMatrix))) & ")"
  loc_1159638: Else
  loc_115963B:   var_A0 = " and S.CompanyType in ('')"
  loc_115963E: End If
  loc_1159641: var_D0 = CVar(CLng(0)) 'Long
  loc_1159646: var_F0 = 1
  loc_115967A: Set var_AC = Me.FGrid
  loc_115969F: Call Proc_292_100_11417CC(CStr(Me.FGrid.TextMatrix)), CStr(var_AC.TextMatrix)), var_10C, var_AC.TextMatrix), 1)
  loc_11596C9: var_104 = "Select '' as Opt, Name, Subcode, CardNo, mType from ( Select M.Subcode as Subcode, S.Name as Name, '1' as mType, S.CardNo as CardNo from MemberFamily M Inner Join SubGroup S On M.Subcode=S.SubCode where M.Logsite_Code='" & global_88
  loc_11596D0: var_108 = var_104 & "' and S.ActiveYN='1' and substring(convert(char,M.DOB,106),1,LEN(convert(char,M.DOB,106))-5) in ( "
  loc_1159704: Call Proc_292_89_1214548(2, CStr(var_AC.TextMatrix)) & var_10C & " ) " & var_A0 & " ) tab Order By tab.CardNo, Tab.mType, tab.Name")
  loc_1159712: Set var_A8 = Me.GridSel
  loc_1159718: Call 0.Method_Proc_292_99_11598840 (1, var_AC, CVar(CLng(1)))
  loc_1159720: var_BC = var_AC.Height
  loc_1159737: Set var_16C = Me.GridSel
  loc_115973D: Call 0.Method_Proc_292_99_11598840 (2, var_170, CVar(CDbl(var_BC)))
  loc_1159745: var_170.Height = var_BC
  loc_1159761: var_F0 = 0
  loc_1159773: Set var_A8 = Me.GridSel
  loc_1159779: Call 0.Method_Proc_292_99_11598840 (2, var_AC, var_F0)
  loc_1159781: LateIdCallSt
  loc_115979B: Set var_A8 = Me.Check1
  loc_11597A1: Call 0.Method_Proc_292_99_11598840 (1, var_AC, 0, var_AC)
  loc_11597A9: var_AC.Visible = 4
  loc_11597C0: Set var_A8 = Me.Check1
  loc_11597C6: Call 0.Method_Proc_292_99_11598840 (2, var_AC, 0)
  loc_11597CE: var_AC.Visible = var_F0
  loc_11597E7: Set var_A8 = Me.GridSel
  loc_11597ED: Call 0.Method_Proc_292_99_11598840 (1, var_AC)
  loc_11597F5: var_AC.Enabled = True
  loc_115980E: Set var_A8 = Me.GridSel
  loc_1159814: Call 0.Method_Proc_292_99_11598840 (2, var_AC)
  loc_115981C: var_AC.Enabled = True
  loc_1159831: Set var_A8 = Me.GridSel
  loc_1159837: Call 0.Method_Proc_292_99_11598840 (2, var_AC)
  loc_115984E: var_D0 = CVar((CLng(var_AC.Rows) - 1)) 'Long
  loc_115985C: Set var_16C = Me.GridSel
  loc_1159862: Call 0.Method_Proc_292_99_11598840 (2, var_170)
  loc_115986A: var_170.RowSel = True
  loc_115987D: Proc_292_99_1159884 = True
End Sub

Public Sub Proc_292_100_11417CC(arg_C, arg_10) '11417CC
  'Data Table: 563044
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_A6 As Integer
  Dim var_188 As String
  Dim var_228 As Variant
  loc_11414A8: var_90 = CStr(Year(CVar(Proc_6_15_EF37AC(CVar(arg_C & "/")))))
  loc_11414D8: var_94 = CStr(Year(CVar(Proc_6_15_EF37AC(CVar(arg_10 & "/")))))
  loc_11414F1: If (CDate(var_90) > CDate(var_94)) Then
  loc_11414F7:   var_98 = var_90
  loc_1141542:   var_E8 = (Year(CVar(Proc_6_15_EF37AC(CVar(CStr(Me.FGrid.TextMatrix)) & "/"), 1))) + 1)
  loc_114154B:   var_9C = CStr(CVar(CLng(1)) & Year(CVar(Proc_6_15_EF37AC(CVar(arg_10 & "/")))))
  loc_1141566: Else
  loc_1141569:   var_98 = var_90
  loc_114156F:   var_9C = var_94
  loc_1141572: End If
  loc_11415A1: var_E8 = (DateDiff("m", CDate(CDate(var_98)), CDate(CDate(var_9C)), 1, 1) + 1)
  loc_11415BF: For var_164 = 0 To (CInt(Year(CVar(Proc_6_15_EF37AC(CVar(arg_10 & "/"))))) - 1): var_9E = var_164 'Integer
  loc_11415E6:   For var_168 = CInt(Day(CDate(CDate(var_98)))) To &H1F: var_A0 = var_168 'Integer
  loc_114161A:     var_A6 = CInt(Month(CDate(CDate(DateAdd("m", CDbl(var_9E), CDate(CDate(var_98)))))))
  loc_114162A:     var_188 = "01/"
  loc_1141699:     var_D8 = CVar(var_A4 & "'") 'String
  loc_11416E7:     var_228 = 1 & Format(var_A0, "00") & " " & Left(CVar(MonthName(CLng(Month(1 & Format(var_A6, "00") & "/" & Year(MemVar_1F950EC))), 0)), 3) 
  loc_11416F5:     var_A4 = CStr(var_228 & "', ")
  loc_114176D:     If CBool((CVar(var_A0) = Day(CDate(CDate(var_9C)))) And (CVar(var_A6) = Month(CDate(CDate(var_9C))))) Then
  loc_1141770:       GoTo loc_114177B
  loc_1141773:     End If
  loc_1141776:   Next var_168 'Integer
  loc_114177B:   ' Referenced from: 1141770
  loc_114177E: Next var_164 'Integer
  loc_114178B: If (var_A4 <> vbNullString) Then
  loc_1141798:   var_B8 = CVar((Len(var_A4) - 2)) 'Long
  loc_11417B5:   var_A4 = CStr(Mid(var_A4, 1, CDate(CDate(var_9C))))
  loc_11417BF: End If
  loc_11417C2: var_88 = var_A4
  loc_11417C5: Proc_292_100_11417CC = 
End Sub
