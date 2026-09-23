'==========================================
' Login Module for HMS (VB.NET Port)
' Reads Analysis.ini and handles authentication
'==========================================

Imports System.IO
Imports System.Data.SqlClient

Public Module modLogin

    '==========================================
    ' Login Configuration Type
    '==========================================
    Public Structure LoginConfig
        Public Server As String
        Public Database As String
        Public CompanyCode As String
        Public CompanyName As String
        Public ReportsPath As String
        Public TempPath As String
        Public ImagePath As String
        Public BackupPath As String
        Public UserID As String
        Public Password As String
    End Structure

    Public gLoginConfig As LoginConfig
    Public gLoggedInUser As String
    Public gLoggedInCompany As String
    Public gConnectionString As String

    '==========================================
    ' Read Analysis.ini file
    '==========================================
    Public Function ReadAnalysisIni() As Boolean
        Dim sFilePath As String
        Dim sLine As String

        Try
            sFilePath = AppDomain.CurrentDomain.BaseDirectory & "HMS2425\Analysis.ini"

            If Not File.Exists(sFilePath) Then
                MsgBox("Analysis.ini not found!", vbExclamation)
                Return False
            End If

            Using sr As New StreamReader(sFilePath)
                Do While Not sr.EndOfStream
                    sLine = Trim(sr.ReadLine())
                    If Left(sLine, 1) = "[" Then GoTo NextLine

                    If InStr(sLine, "=") > 0 Then
                        Dim arrParts() As String = Split(sLine, "=")
                        Dim key As String = Trim(arrParts(0))
                        Dim value As String = Trim(arrParts(1))

                        Select Case key
                            Case "1"
                                gLoginConfig.Server = value
                            Case "2"
                                gLoginConfig.ReportsPath = value
                            Case "3"
                                gLoginConfig.TempPath = value
                            Case "5"
                                gLoginConfig.BackupPath = value
                            Case "6"
                                gLoginConfig.Database = value
                            Case "7"
                                gLoginConfig.CompanyCode = value
                            Case "8"
                                gLoginConfig.CompanyName = value
                            Case "10"
                                gLoginConfig.ImagePath = value
                        End Select
                    End If
NextLine:
                Loop
            End Using

            Return True

        Catch ex As Exception
            MsgBox("Error reading Analysis.ini: " & ex.Message, vbExclamation)
            Return False
        End Try
    End Function

    '==========================================
    ' Get Company List from Database
    '==========================================
    Public Function GetCompanyList() As String
        Dim sCon As String = GetConnectionString()
        Dim sList As String = ""

        Try
            Using conn As New SqlConnection(sCon)
                conn.Open()

                Using cmd As New SqlCommand("SELECT SubCode, Name FROM SubGroup WHERE GroupCode='C' ORDER BY Name", conn)
                    Using dr As SqlDataReader = cmd.ExecuteReader()
                        Do While dr.Read()
                            sList = sList & dr("SubCode").ToString() & "|" & dr("Name").ToString() & ","
                        Loop
                    End Using
                End Using
            End Using

            If Right(sList, 1) = "," Then
                sList = Left(sList, Len(sList) - 1)
            End If

            Return sList

        Catch ex As Exception
            Return ""
        End Try
    End Function

    '==========================================
    ' Get Connection String
    '==========================================
    Public Function GetConnectionString() As String
        Dim sCon As String

        'Use SQL Server authentication
        sCon = "Provider=SQLOLEDB;Data Source=" & gLoginConfig.Server & _
              ";Initial Catalog=" & gLoginConfig.Database & _
              ";User ID=sa;Password=sql2005;"

        gConnectionString = sCon
        Return sCon
    End Function

    '==========================================
    ' Get Company Code from Name
    '==========================================
    Public Function GetCompanyCode(sCompanyName As String) As String
        Dim sCode As String = sCompanyName

        If InStr(sCompanyName, "|") > 0 Then
            Dim arrTemp() As String = Split(sCompanyName, "|")
            If UBound(arrTemp) >= 0 Then
                sCode = arrTemp(0)
            End If
        End If

        Return sCode
    End Function

    '==========================================
    ' Authenticate User
    '==========================================
    Public Function AuthenticateUser(sUserCode As String, sPassword As String) As Boolean
        Dim sCon As String = GetConnectionString()

        Try
            Using conn As New SqlConnection(sCon)
                conn.Open()

                Using cmd As New SqlCommand("SELECT UserName, Password FROM UserMast WHERE UserCode=@UserCode", conn)
                    cmd.Parameters.AddWithValue("@UserCode", sUserCode)

                    Using dr As SqlDataReader = cmd.ExecuteReader()
                        If dr.Read() Then
                            Dim dbPassword As String = dr("Password").ToString().Trim()

                            'Compare password (plain text or encrypted based on system)
                            If dbPassword = sPassword Then
                                gLoggedInUser = dr("UserName").ToString()
                                Return True
                            End If
                        End If
                    End Using
                End Using
            End Using

        Catch ex As Exception
            MsgBox("Error authenticating user: " & ex.Message, vbExclamation)
        End Try

        Return False
    End Function

    '==========================================
    ' Validate Login
    '==========================================
    Public Function ValidateLogin(sUserCode As String, sPassword As String, ByRef sMessage As String) As Boolean
        sMessage = ""

        'Check empty fields
        If Trim(sUserCode) = "" Then
            sMessage = "Please enter User Code"
            Return False
        End If

        If Trim(sPassword) = "" Then
            sMessage = "Please enter Password"
            Return False
        End If

        'Authenticate
        If Not AuthenticateUser(sUserCode, sPassword) Then
            sMessage = "Invalid User or Password"
            Return False
        End If

        Return True
    End Function

    '==========================================
    ' Get User Rights
    '==========================================
    Public Function GetUserRights(sUserCode As String) As DataTable
        Dim dt As New DataTable()
        Dim sCon As String = GetConnectionString()

        Try
            Using conn As New SqlConnection(sCon)
                conn.Open()

                Using cmd As New SqlCommand("SELECT ModuleName, Rights FROM UserRights WHERE UserCode=@UserCode", conn)
                    cmd.Parameters.AddWithValue("@UserCode", sUserCode)

                    Using da As New SqlDataAdapter(cmd)
                        da.Fill(dt)
                    End Using
                End Using
            End Using

        Catch ex As Exception
            MsgBox("Error loading user rights: " & ex.Message, vbExclamation)
        End Try

        Return dt
    End Function

End Module