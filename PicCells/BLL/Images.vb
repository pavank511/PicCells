Namespace Bll
    Public Class Images
        Dim _DB As New Dal.Images
        Public Function GetImagesByCategory(Category As String) As DataTable
            Dim ImagesByCategory As DataTable = _DB.LoadImagesByCatogery(Category)
            Return ImagesByCategory
        End Function
    End Class
End Namespace
