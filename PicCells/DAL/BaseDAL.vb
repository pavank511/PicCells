Imports System.Data.SqlClient
Namespace Dal
    Public Class BaseDAL
        Dim _Cn As SqlClient.SqlConnection = New SqlConnection With {
        .ConnectionString = "Data Source=LAPTOP-E75P4J7M\MSSQLSERVER01;Initial Catalog=Shopping;Integrated Security=True"
    }
        Public ReadOnly Property Cn()
            Get
                Return _Cn
            End Get
        End Property
        Protected Function DTReturn(ByVal cmd As SqlClient.SqlCommand, Optional ByVal AllowNoRecordsAsValid As Boolean = True) As DataTable
            Try
                Dim retDT As New DataTable
                Dim DA As New SqlClient.SqlDataAdapter(cmd)
                DA.Fill(retDT)
                If retDT.Rows.Count = 0 AndAlso Not AllowNoRecordsAsValid Then
                    Throw New Exception("DALBase|DTReturn returned no records")
                Else
                    Return retDT
                End If
            Finally
                FinallyClose()
            End Try
        End Function

        Protected Function DRReturn(ByVal cmd As SqlClient.SqlCommand, Optional ByVal AllowNoRecordsAsValid As Boolean = True) As DataRow
            Try
                Dim retDT As New DataTable
                Dim DA As New SqlClient.SqlDataAdapter(cmd)
                DA.Fill(retDT)
                If retDT.Rows.Count = 1 Then
                    Return retDT.Rows(0)
                ElseIf retDT.Rows.Count = 0 AndAlso AllowNoRecordsAsValid Then
                    Return Nothing
                ElseIf retDT.Rows.Count = 0 AndAlso Not AllowNoRecordsAsValid Then
                    Throw New Exception("DALBase|DRReturn returned no records")
                Else
                    Throw New Exception("DALBase|DRReturn returned more than one record")
                End If
            Finally
                FinallyClose()
            End Try
        End Function
        Public Sub FinallyClose()
            If _Cn.State = ConnectionState.Open Then
                _Cn.Close()
            End If
        End Sub

        Public Sub Open()
            If _Cn.State = ConnectionState.Closed Then
                _Cn.Open()
            End If
        End Sub
    End Class
End Namespace