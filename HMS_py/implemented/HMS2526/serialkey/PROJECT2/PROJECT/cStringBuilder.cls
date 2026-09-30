VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "cStringBuilder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private global_56 As Long
Private global_60 As Long
Private global_64 As Long

Public Property Get Length() 'E14E00
  'Data Table: 41D15C
  loc_E14DF7: Length = (global_60 / 2)
End Sub

Public Property Get Capacity() 'E14E90
  'Data Table: 41D15C
  loc_E14E87: Capacity = (global_64 / 2)
End Sub

Public Property Get ChunkSize() 'E14ED8
  'Data Table: 41D15C
  loc_E14ECF: ChunkSize = (global_56 / 2)
End Sub

Public Property Let ChunkSize(iChunkSize) 'E06890
  'Data Table: 41D15C
  loc_E0688C: global_56 = (iChunkSize * 2)
  loc_E0688F: Exit Sub
End Sub

Public Property Get toString() 'E4CDEC
  'Data Table: 41D15C
  loc_E4CDC6: If (global_60 > 0) Then
  loc_E4CDE0:   var_88 = Left$(global_52, (global_60 / 2))
  loc_E4CDE3: End If
  loc_E4CDE3: toString = 
End Sub

Public Property Let TheString(sThis) 'EE09FC
  'Data Table: 41D15C
  Dim var_88 As Long
  loc_EE093D: var_88 = LenB(sThis)
  loc_EE0949: If (var_88 = 0) Then
  loc_EE0952:   global_52 = vbNullString
  loc_EE095E:   global_60 = 0
  loc_EE0969:   global_64 = 0
  loc_EE096F: Else
  loc_EE0979:   If (global_64 < var_88) Then
  loc_EE097C:     Do 'loop at:   EE09C5
  loc_EE099D:     global_52 = global_52 & Space$((global_56 / 2))
  loc_EE09B8:     global_64 = (global_64 + global_56)
  loc_EE09C5:     Loop Until Not (global_64 < var_88) 'do at:   EE097C
  loc_EE09C8:   End If
  loc_EE09EA:   CopyMemory(VarPtr(global_52), VarPtr(sThis), var_88)
  loc_EE09F6:   global_60 = var_88
  loc_EE09F9: End If
  loc_EE09F9: Exit Sub
End Sub

Public Sub Clear() 'E219A4
  'Data Table: 41D15C
  loc_E21986: global_52 = vbNullString
  loc_E21992: global_60 = 0
  loc_E2199D: global_64 = 0
  loc_E219A0: Exit Sub
End Sub

Public Sub AppendNL(sThis) 'E1CE80
  'Data Table: 41D15C
  loc_E1CE67: Call Append(sThis)
  loc_E1CE75: Call Append(vbCrLf)
  loc_E1CE7D: Exit Sub
End Sub

Public Sub Append(sThis) 'EE90C4
  'Data Table: 41D15C
  Dim var_88 As Long
  Dim var_8C As Long
  Dim var_90 As Long
  Dim var_94 As String
  loc_EE8FFD: var_88 = LenB(sThis)
  loc_EE900A: var_8C = (var_88 + global_60)
  loc_EE9017: If (var_8C > global_64) Then
  loc_EE9020:   var_90 = global_64
  loc_EE9023:   ' Referenced from: EE903A
  loc_EE902A:   If (var_90 < var_8C) Then
  loc_EE9037:     var_90 = (var_90 + global_56)
  loc_EE903A:     GoTo loc_EE9023
  loc_EE903D:   End If
  loc_EE9058:   var_94 = Space$(((var_90 - global_64) / 2))
  loc_EE9062:   global_52 = global_52 & var_94
  loc_EE9073:   global_64 = var_90
  loc_EE9076: End If
  loc_EE9093: Call Proc_347_15_E697D0(VarPtr(global_52), global_60, var_A0, VarPtr(global_52), global_64)
  loc_EE90AC: CopyMemory(var_A0, VarPtr(sThis), var_88)
  loc_EE90BF: global_60 = (global_60 + var_88)
  loc_EE90C2: Exit Sub
End Sub

Public Sub AppendByVal(sThis) 'E0B55C
  'Data Table: 41D15C
  loc_E0B555: Call Append(sThis)
  loc_E0B55A: Exit Sub
End Sub

Public Sub Insert(iIndex, sThis) 'F69194
  'Data Table: 41D15C
  Dim var_88 As Long
  Dim var_8C As Long
  Dim var_90 As Long
  Dim var_120 As Long
  loc_F69078: If ((iIndex * 2) > global_60) Then
  loc_F69091:   Set var_114 = Err()
  loc_F69097:   Call 0.Method_Insert4 (9, var_B0, var_D0)
  loc_F690AD: Else
  loc_F690B2:   var_88 = LenB(sThis)
  loc_F690C6:   If ((global_60 + var_88) > global_64) Then
  loc_F690EA:     global_52 = global_52 & Space$((global_56 / 2))
  loc_F69105:     global_64 = (global_64 + global_56)
  loc_F69108:   End If
  loc_F6912B:   Call Proc_347_15_E697D0(VarPtr(global_52), (iIndex * 2), var_128, VarPtr(global_52))
  loc_F69133:   var_8C = var_128
  loc_F69146:   var_90 = (global_60 - (iIndex * 2))
  loc_F69152:   Call Proc_347_15_E697D0(var_8C, var_88, var_120, var_90, var_8C)
  loc_F69160:   CopyMemory(var_120, var_8C, var_90)
  loc_F6917A:   CopyMemory(var_8C, VarPtr(sThis), var_88)
  loc_F6918D:   global_60 = (global_60 + var_88)
  loc_F69190: End If
  loc_F69190: Exit Sub
End Sub

Public Sub InsertByVal(iIndex, sThis) 'E14784
  'Data Table: 41D15C
  loc_E1477C: Call Insert(iIndex, sThis)
  loc_E14781: Exit Sub
End Sub

Public Sub Remove(iIndex, lLen) 'F62074
  'Data Table: 41D15C
  Dim var_90 As Long
  loc_F61F58: If ((iIndex * 2) > global_60) Then
  loc_F61F71:   Set var_114 = Err()
  loc_F61F77:   Call 0.Method_Remove4 (9, var_B0, var_D0)
  loc_F61F8D: Else
  loc_F61FA1:   If (((iIndex + lLen) * 2) > global_60) Then
  loc_F61FBA:     Set var_114 = Err()
  loc_F61FC0:     Call 0.Method_Remove4 (9, var_B0, var_D0, var_F0)
  loc_F61FD6:   Else
  loc_F61FFD:     Call Proc_347_15_E697D0(VarPtr(global_52), ((iIndex + lLen) * 2), var_120, VarPtr(global_52))
  loc_F6202B:     Call Proc_347_15_E697D0(VarPtr(global_52), (iIndex * 2), var_120, VarPtr(global_52))
  loc_F6204A:     var_90 = (global_60 - ((iIndex + lLen) * 2))
  loc_F62056:     CopyMemory(var_120, var_120, var_90)
  loc_F6206F:     global_60 = (global_60 - (lLen * 2))
  loc_F62072:   End If
  loc_F62072: End If
  loc_F62072: Exit Sub
End Sub

Public Function Find(sToFind, lStartIndex, compare) 'E81410
  'Data Table: 41D15C
  Dim var_90 As Long
  Dim var_88 As Long
  loc_E813AB: var_8C = sToFind
  loc_E813B7: If (lStartIndex > 0) Then
  loc_E813CB:   var_90 = InStr(lStartIndex, global_52, var_8C, compare)
  loc_E813D1: Else
  loc_E813EA:   var_90 = InStr(CLng(global_52), var_8C, CStr(compare), 0)
  loc_E813F0: End If
  loc_E81400: If (var_90 < (global_60 / 2)) Then
  loc_E81406:   var_88 = var_90
  loc_E81409: End If
  loc_E81409: Find = var_88
  loc_E8140F: var_90 = var_90
End Function

Public Sub HeapMinimize() 'E82040
  'Data Table: 41D15C
  Dim var_88 As Long
  loc_E81FE4: If ((global_64 - global_60) > global_56) Then
  loc_E81FED:   var_88 = global_64
  loc_E81FF0:   ' Referenced from: E82011
  loc_E82001:   If ((var_88 - global_60) > global_56) Then
  loc_E8200E:     var_88 = (var_88 - global_56)
  loc_E82011:     GoTo loc_E81FF0
  loc_E82014:   End If
  loc_E8202E:   global_52 = Left$(global_52, (var_88 / 2))
  loc_E8203B:   global_64 = var_88
  loc_E8203E: End If
  loc_E8203E: Exit Sub
End Sub

Public Sub Proc_347_15_E697D0(arg_C, arg_10) 'E697D0
  'Data Table: 41D15C
  Dim var_88 As Long
  loc_E69783: If CBool((arg_C And -2147483648)) Then
  loc_E6978D:   var_88 = (arg_C + arg_10)
  loc_E69793: Else
  loc_E697A1:   If ((arg_C Or -2147483648) < -arg_10) Then
  loc_E697AB:     var_88 = (arg_C + arg_10)
  loc_E697B1:   Else
  loc_E697C4:     var_88 = ((arg_C + -2147483648) + (arg_10 + -2147483648))
  loc_E697C7:   End If
  loc_E697C7: End If
  loc_E697C7: Proc_347_15_E697D0 = var_88
End Sub

Public Sub Proc_347_16_E02BFC
  'Data Table: 41D15C
  loc_E02BF8: global_56 = &H4000
  loc_E02BFB: Exit Sub
End Sub
