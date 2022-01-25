Namespace Model
    Public Class UserData
        Private _UId As Integer
        Private _UName As String
        Private _IsUserLogged As Boolean
        Public Sub New()
            MyBase.New()
            _UId = -1
            _UName = String.Empty
            _IsUserLogged = False
        End Sub
        Public Sub New(ByVal DR As DataRow)
            Me.New
            InitFromDR(DR)
        End Sub
        Private Sub InitFromDR(ByVal DR As DataRow)
            If DR.Table.Columns.Contains("UserName") Then
                If DBNull.Value IsNot DR("UserName") Then UserName = DR("UserName")
                If DBNull.Value IsNot DR("UserId") Then UserId = DR("UserId")
            End If
        End Sub
        Public Property UserId() As Integer
            Get
                Return _UId
            End Get
            Set(values As Integer)
                If values > -1 Then
                    _UId = values
                Else
                    Throw New Exception("UserData::UserId() Invalid UserId")
                End If
            End Set
        End Property
        Public Property UserName() As String
            Get
                Return _UName
            End Get
            Set(values As String)
                If values IsNot String.Empty Then
                    _UName = values
                Else
                    Throw New Exception("UserData::UserName() Invalid UserName")
                End If
            End Set
        End Property
        Public ReadOnly Property IsUserLoggedIn() As Boolean
            Get
                If UserId < 0 Then
                    _IsUserLogged = False
                    Return _IsUserLogged
                Else
                    _IsUserLogged = True
                    Return _IsUserLogged
                End If
            End Get
        End Property
    End Class
End Namespace
