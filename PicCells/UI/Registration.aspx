<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registration.aspx.vb" Inherits="PicCells.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @media only screen and (max-width: 1300px) {
            .textBoxes{
                width:100%;
                margin:0;
            }
            .spanDiv{
                width:100%;
                justify-content:center;
            }
            .MainContainer{
                flex-direction:column;
            }
            .Name{
                flex-direction:column;
            }
        }
        .MainContainer{
            margin-left:33.33%;
            margin-right:33.33%;         
            display: flex;
            flex-direction:column;
            justify-content: center;   
            padding:10px;
            background-image:linear-gradient(white,lightgrey)
        }
        body{
          margin: 0;
          max-width: 100%;
          overflow-x: hidden;
          font-family:Calibri;          
        }
        .textBoxes{
            outline:0;
            border:none;
            width:45%;
            height:27px;
            margin-left:50px;
        }
        .textBoxes:hover{
            
            box-shadow: inset 0 0 0 1px blue;
        }
        .Name{
            width:100%;
            text-align:center;
            padding :10px;
            display:flex;
        }
        span{
            color:darkblue;
            font-weight:bold;
        }
        p{
            font-style:italic;
            font-weight:bolder;
            text-align:center;
            margin-top:3%;
            font-size:x-large;
        }
        #button{
            background-color:darkblue;
            color:white;
            border-radius:5px;
            width:30%
        }
        #button:hover{
            background-color:midnightblue;
            cursor:pointer;            
        }
        .spanDiv{
            width:30%
        }
        .ButtonCls{
            text-align:center;
            padding:10px;
        }
        .ButtonVerifycls{
            margin-left:5px;
            margin-top:5px;
            margin-bottom:5px;
            background-color:darkblue;
            color:white;
            border-radius:5px;
            width:auto;
            height:auto;
        }
        .ButtonVerifycls:hover{
            background-color:midnightblue;
            cursor:pointer;
        }
        .SignUpBtn{
            width:auto;
            height:27px;
            margin-left:50px;
            background-color:darkblue;
            color:white;
            border-radius:5px;
        }
        .SignUpBtn:hover{
            background-color:midnightblue;
            cursor:pointer;
        }
        header{
            display:flex;            
            justify-content:center;        
            background-color:#271463;
            color:white;
            flex-basis:100%;
            align-items:center;
            height:50px;
        }
        .topnav{
            width:65%;           
        }
        .topnav input{
            width:350px;
            height:25px;
          border-radius:5px;
        }
        .logo-text{
            width:13%;
            font-weight:bolder;
            font-family:French Script MT;
            font-size:xx-large;
            text-align:center;
        }
        ul{
            display:flex;
            list-style:none;
            margin: 0;
            padding: 0; 
        }
        li{
            padding:10px;
        }
       li:hover{
           background-color:white;
           border-radius:5px;
       }
       a:hover{
           color:#271463
       }
        a,a:active{
          color:white;
          padding: 0 18px 18px 0;
          text-decoration:none;
        }
    </style>

</head>

<body runat="server">
    <form id="form1" runat="server" autocomplete="off">
        <header>
        <div class="logo-text">PicCells</div>
        <div class="topnav">
            <input type="text" placeholder="Search for free photos" />
        </div>
        <div class="Navigation">
            <ul>
                <li><a href="HomePage.aspx" id="home">Home</a></li>
                <li><a href="AboutUs.aspx">AboutUs</a></li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="Registration.aspx">SignUp</a></li>
            </ul>
        </div>
    </header>
        <asp:Label ID="lblErrorMsg" runat="server" Text="ErrorMsg"></asp:Label>
        <p>
            SignUp
        </p>
        <div class="MainContainer" runat="server" position="relative">
            <div class="ContainerTab">
            <div class="Name" runat="server">
                <div class="spanDiv"><span>UserName*:</span></div>
                <input type="Text" id="Uname" class="textBoxes" name="textbox" value="" runat="server" placeholder="UserName" />
            </div>
            <div class="Name">
                <div class="spanDiv"><span>MobileNumber*:</span></div>
                <input type="Text" id="Mobile" class="textBoxes" name="textbox" value="" runat="server" placeholder="MobileNumber" />
            </div>
            <div class="Name">
                <div class="spanDiv"><span>Email*:</span></div>
                <input type="Text" id="Email" class="textBoxes" name="textbox" value="" runat="server" placeholder="MailId" />
                <asp:Button Text="OTP" ID="SendOTP" CssClass="ButtonVerifycls" runat="server" />
            </div>
            <div class="Name">
                <div class="spanDiv"><span>Enter OTP*:</span></div>
                <input type="Text" id="OTP" class="textBoxes" name="textbox" value="" runat="server" placeholder="OTP" />                
                <asp:Button Text="Verify" ID="VerifyOTP" CssClass="ButtonVerifycls" runat="server" />
            </div>
            <div class="Name">
                <div class="spanDiv"><span>New Password*:</span></div>
                <input type="Password" id="Pwd" class="textBoxes" name="Password" value="" runat="server" placeholder="New Password" />
            </div>
            <div class="Name">
                <div class="spanDiv"><span>Confirm Password*:</span></div>
                <input type="Password" id="CnfPwd" class="textBoxes" name="CnfPassword" value="" runat="server" placeholder="Confirm Password" />
            </div>
            <div class="ButtonCls" runat="server">                
                <asp:Button Text="SignUp" ID="buttonSignUp" CssClass="SignUpBtn" runat="server" />
            </div>
        </div>
            </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js"></script>
    <script src="../js/Login.js"></script>
    </form>
</body>
</html>
