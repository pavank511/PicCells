<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Test.aspx.vb" Inherits="PicCells.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin:0;
            padding:0;        
            font-family:Calibri;
        }
        /*header{
            display:flex;            
            justify-content:center;        
            background-color:#271463;
            color:white;
            flex-basis:100%;
            align-items:center;
            height:50px;
        }*/
        header{
            display:flex;            
            justify-content:center;        
            background-color:rgb(35,42,52);
            color:white;
            flex-basis:100%;
            align-items:center;
            height:50px;
            position:fixed;
          transition: all 0.4s ease;
          width:100vw;
          z-index:+1; 
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
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
