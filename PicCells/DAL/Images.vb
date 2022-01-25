Namespace Dal
    Public Class Images : Inherits BaseDAL
        Public Function LoadImagesByCatogery(Category) As DataTable
            Dim cmd As New SqlClient.SqlCommand
            With cmd
                .Connection = Cn
                .CommandType = CommandType.Text
                .CommandText = "Select Name,Category,ImgId,LabelName,Path,description,AuthorName,Uploadeddate from Shopping.dbo.ImagesTable where Category=@Category"
                .Parameters.AddWithValue("@Category", Category)
                Try
                    Open()
                    Return DTReturn(cmd)
                Catch ex As Exception
                    Throw New Exception("Images|DAL :: LoadImagesByCategory")
                Finally
                    FinallyClose()
                End Try
            End With
        End Function
    End Class
End Namespace