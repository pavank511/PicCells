Namespace Bll
    Public Class UserLogin
        Dim _dalUserReg As New Dal.UserLogin
        Public Sub CheckUserExists(Uname As String, MobileNo As String, EmailID As String)
            _dalUserReg.CheckUserName(Uname)
            _dalUserReg.CheckMobileNumber(MobileNo)
            _dalUserReg.CheckEmailID(EmailID)
        End Sub
        Public Sub SaveUserDetails(Uname As String, Pwd As String, MobileNo As String, Fname As String, EmailID As String)
            _dalUserReg.SaveUserDetails(Uname, Pwd, MobileNo, Fname, EmailID)
        End Sub
    End Class
End Namespace