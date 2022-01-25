Namespace Bll
    Public Class UserData
        Dim _DB As New Dal.UserLogin
        Public Function LoadUser(UserName As String) As Model.UserData
            Dim tempDR As DataRow = _DB.LoadUserDetails(UserName)
            If tempDR IsNot Nothing Then
                Return New Model.UserData(tempDR)
            Else
                Return Nothing
            End If
        End Function

    End Class
End Namespace