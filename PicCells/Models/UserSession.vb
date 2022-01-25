Namespace Model
    Public Class UserSession
        Dim UserId As Integer = 0
        Dim IsUserLogged As Boolean = False
        Public Sub New()
            Dim User As New Bll.UserData

        End Sub
        Public Property SetOrGetUserId() As Integer
            Get
                Return UserId
            End Get
            Set(value As Integer)
                If UserId <> 0 Then
                    UserId = value
                End If
            End Set
        End Property

        Public ReadOnly Property GetUserLogin() As Boolean
            Get
                If UserId <> 0 Then
                    Return True
                Else
                    Return False
                End If
            End Get
        End Property

    End Class
End Namespace