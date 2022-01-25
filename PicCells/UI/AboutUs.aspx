<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AboutUs.aspx.vb" Inherits="PicCells.AboutUs" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            padding:0;
            margin:0;
            font-family:Calibri;
            max-width: 100%;
            overflow-x: hidden;
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
        .InnerContainer{            
            padding: 3%;
            display: flex;
            background-image:linear-gradient(white,lightgrey);
            margin-top:5px;
        }
        .InnerContainer:hover{
            border: 0.5px solid black;
            cursor:pointer;
        }
        .InnerContainer img{
            width:15%;
            padding-right:3%;             
        }
        .About-Us span{
            font-size:xx-large;
            color:blue;
            font-weight:bold;
        }
        .About-Us p{
            font-size:large;
        }
    </style>
</head>
<body>
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
    <div class="OuterContainer">
        <div class="InnerContainer" id="InnerContainer1" onclick="createPopupWin('Pavan.aspx','AboutMe',1200,650)">
            <img src="../Images/Pavan.jpeg" alt="Pavan" />
            <div class="About-Us">
                <span>About Us</span>
                <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Hello this is Pavan, Welcome to PicCells. PicCells offers wide range of Photos for free.</p>            
            </div>
        </div>
        <div class="InnerContainer" id="InnerContainer2" onclick="createPopupWin('Pavan2.aspx','AboutMe',1200,650)">
            <img src="../Images/Pavan2.jpeg" alt="Pavan2" />
            <div class="About-Us">
                <span>About Us</span>
                <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Hello this is Pavan, Welcome to PicCells. PicCells offers wide range of Photos for free.</p>            
            </div>
        </div>
    </div> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js"></script>
    <script>
        function createPopupWin(pageURL, pageTitle,
            popupWinWidth, popupWinHeight) {
            var left = (screen.width - popupWinWidth) / 2;
            var top = (screen.height - popupWinHeight) / 4;

            var myWindow = window.open(pageURL, pageTitle,
                'resizable=yes, width=' + popupWinWidth
                + ', height=' + popupWinHeight + ', top='
                + top + ', left=' + left);
        }
        const InnerContainer1 = document.querySelector("#InnerContainer1");
        const InnerContainer2 = document.querySelector("#InnerContainer2");
        const Paragraph = document.querySelector("#Paragraph");
        const t1 = new TimelineMax();
        t1.fromTo(InnerContainer1, 1.25, { opacity: 0, x: "-100%" }, { opacity: 1, x: "0%" })
        .fromTo(InnerContainer2, 1.25, { opacity: 0, x: "100%" }, { opacity: 1, x: "0%" }, "-=1.25")
    </script>
</body>
</html>
