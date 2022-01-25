Public Class WelcomePage
    Inherits System.Web.UI.Page
    Dim bllItems As New Bll.Images
    Dim ImageName As String
    Enum Category
        Coats
        Jackets
        Lungis
        Sarees
        Shirts
        Shoes
    End Enum
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Row As DataRow
        Dim i As Integer = 0
        Dim ImagesDT As DataTable = bllItems.GetImagesByCategory(Category.Shirts.ToString)
        Dim childdiv As String = String.Empty
        For Each Row In ImagesDT.Rows
            i = i + 1
            Dim div As HtmlGenericControl = New HtmlGenericControl("Div")
            div.ID = "Image" + i.ToString
            div.InnerHtml = "<img src=""" + Row("Path") + """/>"
            LoadImages.Controls.Add(div)
        Next
    End Sub

End Class