Imports System.Drawing

Public Class Login
    Inherits System.Web.UI.Page
    Dim _dalUserLogin As New Dal.UserLogin
    Public Shared uName As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Public Sub ValidateLoginUI()
        If txtUserName.Value Is String.Empty Then
            SetFocus(txtUserName)
            Throw New Exception("Please Enter UserName")
        End If
        If txtPwd.Value Is String.Empty Then
            SetFocus(txtPwd)
            Throw New Exception("Please Enter Password")
        End If
    End Sub

    Protected Sub button_Click(sender As Object, e As EventArgs) Handles button.Click
        Try
            ValidateLoginUI()
            uName = txtUserName.Value
            _dalUserLogin.CheckUser(txtUserName.Value, txtPwd.Value)

            'If UI is correct and user is valid then allow to welcome page
            Dim User As New Bll.UserData
            Dim NewUser As Model.UserData = User.LoadUser(txtUserName.Value)
            If NewUser.IsUserLoggedIn Then
                Response.Redirect("WelcomePage.aspx")
            End If
        Catch ex As Exception
            lblErrorMsg.Visible = True
            lblErrorMsg.Text = ex.Message
            lblErrorMsg.ForeColor = Color.Red
        End Try
    End Sub
End Class