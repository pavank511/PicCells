Namespace Model
    Public Class Images
        Private _ImageList As ListItem
        Private _ImageName As String
        Private _AuthorName As String
        Private _ImageCatogery As String
        Private _UploadedDate As String
        Private _ImageId As Integer
        Public Sub New()
            MyBase.New()
            _ImageId = -1
            _ImageName = String.Empty
            _AuthorName = String.Empty
            _ImageCatogery = String.Empty
            _UploadedDate = DateTime.MinValue
        End Sub

        Public Sub New(ByVal DT As DataTable)
            Me.New
            InitFromDT(DT)
        End Sub

        Private Sub InitFromDT(ByVal DT As DataTable)
            For Each row In DT.Rows
                _ImageName = row("ImageName")
            Next
        End Sub
        Public Property ImageName As String
            Get
                Return _ImageName
            End Get
            Set(value As String)
                If value IsNot String.Empty Then
                    _ImageName = value
                End If
            End Set
        End Property
        Public Property AuthorName As String
            Get
                Return _AuthorName
            End Get
            Set(value As String)
                _AuthorName = value
            End Set
        End Property

        Public Property ImageCatogery As String
            Get
                Return _ImageCatogery
            End Get
            Set(value As String)
                _ImageCatogery = value
            End Set
        End Property

        Public Property UploadedDate As DateTime
            Get
                Return _UploadedDate
            End Get
            Set(value As DateTime)
                _UploadedDate = value
            End Set
        End Property

        Public Property ImageId As Integer
            Get
                Return _ImageId
            End Get
            Set(value As Integer)
                _ImageId = value
            End Set
        End Property
    End Class
End Namespace

