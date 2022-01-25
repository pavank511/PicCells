Imports System.Data.SqlClient
Namespace Dal
    Public Class UserLogin : Inherits BaseDAL
        Public Sub CheckUser(UserName As String, Password As String)
            'establish connection
            Dim cmd As SqlCommand = New SqlCommand("Select UserId from Shopping.dbo.UserDetails where Username=@Uname and Password=@Pwd", Cn)
            Dim UserID As Integer
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Uname", UserName)
            cmd.Parameters.AddWithValue("@Pwd", Password)
            Open()
            UserID = cmd.ExecuteScalar()
            FinallyClose()
            If UserID <= 0 Then
                Throw New Exception("UserName Or Password is incorrect")
            End If
        End Sub

        Public Function GetUserId(UserName As String) As Integer
            Dim cmd As SqlCommand = New SqlCommand("Select UserId from Shopping.dbo.UserDetails where Username=@Uname", Cn)
            Dim UserID As Integer
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Uname", UserName)
            Open()
            UserID = cmd.ExecuteScalar()
            FinallyClose()
            Return UserID
        End Function
        'Save User Data into the UserDetails table from Registration Page
        Public Sub SaveUserDetails(UserName As String, Password As String, MobileNuber As String, FullName As String, EmailID As String)
            'establish connection
            Dim spName As String = "[dbo].[SP_SaveUserDetails]"
            Dim cmd As SqlCommand = New SqlCommand(spName, Cn) With {
        .CommandType = CommandType.StoredProcedure
    }
            cmd.Parameters.AddWithValue("@Uname", UserName)
            cmd.Parameters.AddWithValue("@Pwd", Password)
            cmd.Parameters.AddWithValue("@MobileNo", MobileNuber)
            cmd.Parameters.AddWithValue("@Fname", FullName)
            cmd.Parameters.AddWithValue("@EmailID", EmailID)
            Open()
            cmd.ExecuteNonQuery()
            FinallyClose()
        End Sub
        'Checks UserName While Registring user
        Public Sub CheckUserName(UserName As String)
            'establish connection
            Dim cmd As SqlCommand = New SqlCommand("Select count(*) from Shopping.dbo.UserDetails where Username=@Uname", Cn)
            Dim UserCount As Integer
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Uname", UserName)
            Open()
            UserCount = cmd.ExecuteScalar()
            FinallyClose()
            If UserCount > 0 Then
                Throw New Exception("UserName already exists")
            End If
        End Sub
        'to check if mobile is already registered or not
        Public Sub CheckMobileNumber(MobileNumber As String)
            Dim cmd As SqlCommand = New SqlCommand("Select count(*) from Shopping.dbo.UserDetails where MobileNumber=@Mobile", Cn)
            Dim MobileNo As Integer
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Mobile", MobileNumber)
            Open()
            MobileNo = cmd.ExecuteScalar()
            FinallyClose()
            If MobileNo > 0 Then
                Throw New Exception("Mobile Number is already registered")
            End If
        End Sub
        Public Sub CheckEmailID(EmailID As String)
            Dim cmd As SqlCommand = New SqlCommand("Select count(*) from Shopping.dbo.UserDetails where EmailID=@EmailID", Cn)
            Dim MobileNo As Integer
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@EmailID", EmailID)
            Open()
            MobileNo = cmd.ExecuteScalar()
            FinallyClose()
            If MobileNo > 0 Then
                Throw New Exception("EmailID is already registered")
            End If
        End Sub

        Public Function LoadUserDetails(UserName As String) As DataRow
            Dim cmd As New SqlClient.SqlCommand
            With cmd
                .Connection = Cn
                .CommandType = CommandType.Text
                .CommandText = "Select * from Shopping.dbo.UserDetails where UserName=@Uname"
                .Parameters.AddWithValue("@Uname", UserName)
                Try
                    Open()
                    Return DRReturn(cmd)
                Catch ex As Exception
                    Throw New Exception("UserLogin|DAL :: LoadUserDetails")
                Finally
                    FinallyClose()
                End Try
            End With
        End Function

    End Class
End Namespace