Imports System.Drawing
Imports System.Net.Mail
Imports System.Web.Services

Public Class Registration
    Inherits System.Web.UI.Page
    Shared EmailVerified As Boolean = False
    Shared EmailID As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblErrorMsg.Visible = False
    End Sub
    Public Sub ValidateRegUI()
        Dim IsUserNameValid As Boolean = System.Text.RegularExpressions.Regex.IsMatch(Uname.Value, "^[A-Za-z0-9]*$")
        Dim IsPasswordValid As Boolean = System.Text.RegularExpressions.Regex.IsMatch(Pwd.Value, "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        If Uname.Value Is String.Empty Then
            SetFocus(Uname)
            Throw New Exception("Please Enter UserName")
        End If
        If Not IsUserNameValid Then
            SetFocus(Uname)
            Throw New Exception("Please Enter UserName in alphabets and numbers only")
        End If
        If Mobile.Value Is String.Empty Then
            SetFocus(Mobile)
            Throw New Exception("Please Enter Mobile Number")
        End If
        If Pwd.Value Is String.Empty Then
            SetFocus(Pwd)
            Throw New Exception("Please Enter Password")
        End If
        If Not IsPasswordValid Then
            SetFocus(Pwd)
            Throw New Exception("Password must contain atleast eight characters, atleast one number and both lower case and upper case letters and special characters")
        End If
        If CnfPwd.Value Is String.Empty Then
            SetFocus(CnfPwd)
            Throw New Exception("Please Enter Confirm Password")
        End If
        If Pwd.Value <> CnfPwd.Value Then
            SetFocus(Pwd)
            Throw New Exception("Password and Confirm Password must match")
        End If
    End Sub

    Protected Sub VerifyOTP_Click(sender As Object, e As EventArgs) Handles VerifyOTP.Click
        Try
            If EmailID = Email.Value.ToString Then
                If ViewState("msgotp") IsNot Nothing AndAlso ViewState("msgotp") = OTP.Value Then
                    EmailVerified = True
                    lblErrorMsg.Visible = True
                    lblErrorMsg.Text = "Email Verified Successfully"
                    lblErrorMsg.ForeColor = Color.Green
                Else
                    Throw New Exception("Incorrect OTP is entered")
                End If
            Else
                Throw New Exception("Please click on OTP")
            End If
        Catch ex As Exception
            lblErrorMsg.Visible = True
            lblErrorMsg.Text = ex.Message
            lblErrorMsg.ForeColor = Color.Red
        End Try
    End Sub

    Protected Sub buttonSignUp_Click(sender As Object, e As EventArgs) Handles buttonSignUp.Click
        Try
            ValidateRegUI()
            '_blllUserReg.CheckUserExists(txtUserName.Text, txtMobileNumber.Text, txtMailID.Text)
            If Not EmailVerified Then
                Throw New Exception("Please verify your mail id")
            End If
            If EmailID <> Email.Value.ToString Then
                Throw New Exception("Please verify new mail id")
            End If
            'need to redirect to login Page
            'remove all data from UI and make EmailVerified as False so the next emailid should be verified
            lblErrorMsg.Visible = False
            EmailVerified = False
            EmailID = ""
        Catch ex As Exception
            lblErrorMsg.Visible = True
            lblErrorMsg.Text = ex.Message
            lblErrorMsg.ForeColor = Color.Red
        End Try
    End Sub

    Protected Sub SendOTP_Click(sender As Object, e As EventArgs) Handles SendOTP.Click
        Try
            ValidateMailID()
            EmailID = Email.Value.ToString
            '_blllUserReg.CheckUserExists(txtUserName.Text, txtMobileNumber.Text, txtMailID.Text)
            Dim rmd As Random = New Random()
            Dim otp As Integer = rmd.Next(100000, 999999)
            ViewState("msgotp") = otp
            Dim msg As String = "Your otp from ShoppingCart for Email Verification is " + otp.ToString
            Dim f As Boolean = sendOTPMail("pavankumarkodathala@gmail.com", Email.Value, "Subjected to OTP", msg)
            If Not f Then
                Throw New Exception("OTP not sent please enter email and click resend")
            Else
                lblErrorMsg.Visible = True
                lblErrorMsg.Text = "OTP sent to your mail ID"
                lblErrorMsg.ForeColor = Color.Green
            End If
        Catch ex As Exception
            lblErrorMsg.Visible = True
            lblErrorMsg.Text = ex.Message
            lblErrorMsg.ForeColor = Color.Red
        End Try
    End Sub
    Public Function sendOTPMail(fromMail As String, toMail As String, subject As String, msg As String) As Boolean
        Dim f As Boolean = False
        Try
            Dim SmtpClient As SmtpClient = New SmtpClient()
            Dim MailMessage As MailMessage = New MailMessage()

            SmtpClient.EnableSsl = "True"
            SmtpClient.UseDefaultCredentials = "False"
            SmtpClient.Credentials = New Net.NetworkCredential("pavankumarkodathala@gmail.com", "pavan511")
            SmtpClient.Host = "smtp.gmail.com"
            SmtpClient.Port = 587
            SmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network
            SmtpClient.Timeout = 30000

            MailMessage.To.Add(toMail)
            MailMessage.From = New MailAddress(fromMail)
            MailMessage.Subject = subject
            MailMessage.Body = msg

            SmtpClient.Send(MailMessage)
            f = True
        Catch ex As Exception
            f = False
        End Try
        Return f
    End Function
    Public Sub ValidateMailID()
        If Email.Value.ToString Is String.Empty Then
            SetFocus(Email)
            Throw New Exception("Please Enter MailID")
        End If
        If Not Email.Value.Contains("@") Then
            SetFocus(Email)
            Throw New Exception("Please Enter Valid MailID")
        End If
    End Sub
End Class