<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WelcomePage.aspx.vb" Inherits="PicCells.WelcomePage" %>

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
        
        .LoadImages {
           /* display:flex;     
            border:1px solid red;
            justify-content:center*/
           display: flex;
          flex-flow: row wrap;
          justify-content:center;
          margin-left:10%;
          margin-right:10%;
        }
        img{
            background-color:white;
        }
        .MainContainer{
            background-image:radial-gradient(white,#808080)    /*(#e3bf71,#e99431)*/
        }
        
        .LoadImages div{
            display:flex;
            justify-content:center;
            width:20%;            
            padding:0 10px 10px 0;
        }
        
        .LoadImages img{  
            object-fit:contain;
            width:100%;
            height:auto;
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
        <div class="MainContainer">
        <div class="LoadImages" id="LoadImages" runat="server">
            <%--<div><img src="..\UploadedImages\Saree1.jpg" /></div>
            <div><img src="../UploadedImages/Saree2.jpg" /></div>
            <div><img src="../UploadedImages/Saree3.jpg" /></div>
            <div><img src="../UploadedImages/Shirt1.jpg" /></div>
            <div><img src="../UploadedImages/Shirt2.jpg" /></div>
            <div><img src="../UploadedImages/Shirt3.jpg" /></div>
            <div><img src="../UploadedImages/Shoes1.jpg" /></div>
            <div><img src="../UploadedImages/Shoes2.jpg" /></div>
            <div><img src="../UploadedImages/Shoes3.jpg" /></div>
            <div><img src="../UploadedImages/Jacket1.jpg" /></div>--%>
        </div></div>
    </form>
    
</body>
</html>
