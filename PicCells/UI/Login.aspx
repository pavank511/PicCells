<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="PicCells.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @media only screen and (max-width: 1300px) {
            .textBoxes{
                width:auto;
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
            width:40%;
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
            width:50%
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
    <form runat="server" autocomplete="off">
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
        <asp:Label Text="" ID="lblErrorMsg" runat="server" />
        <p id="Paragraph">
            Login
        </p>
        <div class="MainContainer">
            <div class="ContainerTab">
                <div class="Name">
                    <div class="spanDiv"><span>UserName:</span></div>
                    <input type="Text" runat="server" id="txtUserName" class="textBoxes" name="textbox" value="" placeholder="UserName" />
                </div>
                <div class="Name">
                    <div class="spanDiv"><span>Password:</span></div>
                    <input type="Password" runat="server" id="txtPwd" class="textBoxes" name="Password" value="" placeholder="Password" />
                </div>
                <div class="ButtonCls">
                    <asp:Button Text="Login" id="button" class="textBoxes" runat="server" />
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js"></script>
    <script src="../js/Login.js"></script>
</body>
</html>
