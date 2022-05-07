<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="PicCells.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/solid.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        .img-background img{
            width:100%;
            background-size:cover;
            height:100%;
        }
       
        body{
          margin: 0;
          max-width: 100%;
          overflow-x: hidden;
          font-family:Calibri;
        }
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
        @media only screen and (max-width: 1300px) {
          header img{
              display:none;
          }
          .topnav{
              width:0%
          }
          header{              /*#D6EFFF;*/
              text-align:center;
              background-color:white;
          }
          .img-background img,input{
              display:none;
          }
          .Navigation{
              width:100%;
              justify-content:left;
              margin-right:50%
          }
          ul{
            flex-direction: column;     
            position:relative;
          } 
          ol li{
            margin: 0;
            font-size:large;
          }
          a{
            display: block;
          }
          a:hover{
              background-color: #C6E9FF;
          }
          .topnav input{
              display:none;
          }   
          .topnav{
              display:none;
          }
          .dogs-inner{
              flex-direction:column;
          }
          .kids-inner{
              flex-direction:column;
          }
          .Birds-inner{
              flex-direction:column;
          }
          .logo-text{
              display:none;
          }
          .dogs .dogs-inner img{
              margin-top:40%;
              width:100%;
              background-size:cover;
          }
          .kids .kids-inner img{
              width:100%;
              background-size:cover;
          }
          .Birds .Birds-inner img{
              width:100%;
              background-size:cover;
          }
          .kids .kids-inner h1{
              font-size:large;
          }        
        }
        
        .img-background{
          position: relative;
                }
        .search-wrapper {
          position: absolute;
          top: 50%;
          left:50%;
          transform:translate(-50%,-50%);
          justify-content:center;
          width: 100%;
          height: 100%;
          display: flex;
          align-items: center;
        }
        .img-background .search-wrapper input{
          width:700px;
          height:50px;          
          border-radius:5px;
          border:none;
        }
        .search-wrapper input:focus{
            outline:none;
        }
        .dogs{
            margin-left:100px;
            margin-right:100px;            
        }
        .dogs img{
            width:40%;
            height:auto;
        }
        ol li{
            padding:10px;
            font-size:20px;
        }
        .SearchDogs{
            background-color:antiquewhite;
            width:200px;
            height:50px;            
        }
        .SearchDogs:hover{
            background-color:burlywood;
            cursor:pointer;
        }
        .dogs-inner{
            display: flex; 
            position: relative
        }
        .kids{
            margin-left:100px;
            margin-right:100px;  
            padding:5px
        }
        .kids img{
            height:auto;
            width:40%;
            float:right;
        }
        .kids-inner{
            display: flex; 
            position: relative;
            padding-left: 20px; 
            font-family: 'Calisto MT';
        }
        .Birds{
            margin-left:100px;
            margin-right:100px;  
            padding:5px
        }
        .Birds img{
            height:auto;
            width:40%;
            float:right;
        }
        .Birds-inner{
            display: flex; 
            position: relative;
            padding-left: 20px; 
            font-family: 'Calisto MT';
        }
        header.sticky {
          font-size: 24px;
          line-height: 48px;
          height: 48px;
          background: #efc47D;
          text-align: left;
          padding-left: 20px;
          z-index:+1;
        }
        .ReadMoreBtndiv{
            text-align:center;
            padding:20px;
        }
        footer{
            background-color:#151B54;            
        }
        .bottom{
            display:flex;
        }
        .bottom p{
            font-weight:300;
            color:white;
            padding-right:20px
        }
    </style>
</head>
<body runat="server">
    <form runat="server">
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
    <div class="img-background" id="Image">
        <img src="../Images/Nature2.jpg" />
        <div class="search-wrapper">
            <input type="search" placeholder="Search for free photos" />
        </div>
    </div>
    <div class="container">
        <div class="dogs">
            <div class="dogs-inner" id="dog">
                <img src="../Images/Puppies.jpg" />
                <div style="padding-left: 20px; font-family: 'Calisto MT';">
                    <h1 style="color: chocolate">5 amazing facts about dogs</h1>
                    <ol>
                        <li>Their sense of smell is at least 40x better than ours</li>
                        <li>Some have such good noses they can sniff out medical problems</li>
                        <li>Dogs can sniff at the same time as breathing</li>
                        <li>Some dogs are incredible swimmers</li>
                        <li>Some are fast and could even beat a cheetah!</li>
                    </ol>
                    <div class="searchdogsdiv">
                        <asp:Button class="SearchDogs" Text="Search for Dogs Images" runat="server"   />
                    </div>
                </div>
            </div>
        </div>
        <div class="kids">
            <div class="kids-inner" id="kid">
                <div>
                    <h1 style="color: chocolate">5 amazing facts about Kids</h1>
                    <ol>
                        <li>Babies can distinguish cats from dogs, something that is extremely difficult to program into a computer</li>
                        <li>Children can’t remember much before the age of 3 due to what psychologists call “infantile amnesia.”</li>
                        <li>Babies see in two dimensions until 2–4 months old. After this, an infant’s cerebral cortex matures enough to merge input from both eyes, which results in 3D vision.</li>
                        <li>A child’s sense of privacy usually begins around 8–9 years old.</li>
                        <li>Children can begin to organize information in their memory starting at about age 7</li>
                    </ol>
                    <div class="searchdogsdiv">
                        <asp:Button class="SearchDogs" Text="Search for Kids Images" runat="server"   />
                    </div>
                </div>
                <img src="../Images/Kid.jpg" />
            </div>
        </div>
        <div class="ReadMoreBtndiv">
            <input type="Button" name="toggleText" id="ReadMorebtn" value="Read More" class="SearchDogs" runat="server" onclick="toggleText1()" />
         </div>
        <div id="moreText" style="display:none">
            <div class="Birds">
                <div class="Birds-inner">
                    <img src="../Images/Bird.jpg" />
                    <div style="padding-left: 20px; font-family: 'Calisto MT';">
                        <h1 style="color: chocolate">Do you know about Birds?</h1>
                        <ol>
                            <li>The smallest bird is a Bee Hummingbird.</li>
                            <li>A group of birds is called a flock</li>
                            <li>Some birds can mimic humans!</li>
                            <li>Ostriches have the largest eyes in any mammal on land.</li>
                            <li>Birds don’t have teeth which means they have to swallow food whole.They have an organ called a gizzard which grinds up their food.</li>
                        </ol>
                        <div class="searchdogsdiv">
                            <asp:Button class="SearchDogs" Text="Search for Birds Images" runat="server"   />
                        </div>
                    </div>

                </div>

            </div>
            <div class="ReadMoreBtndiv">
            <input type="Button" name="toggleText" id="ReadLessbtn" value="Read Less" class="SearchDogs" runat="server" onclick="toggleText2()" />
         </div>
        </div>
    </div>
    <footer style="padding-top:200px">
        <div class="bottom">
            <p style="padding-left:1200px">AboutUs</p>
            <p>Follow</p>
            <p>Popular Searches</p>
        </div>        
    </footer>
        </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js"></script>
    <script>
        const dogs = document.querySelector("#dog");
        const kids = document.querySelector("#kid");
        const Img = document.querySelector("#Image");
        const t1 = new TimelineMax();
        t1.fromTo(Img, 2, { opacity: 0, y: "-100%" }, { opacity: 1, y: "0%", ease: Power2.easeInOut })
            .fromTo(dogs, 2, { opacity: 0, x: "-100%" }, { opacity: 1, x: "0%", ease: Power2.easeInOut }, "-=1.25")
            .fromTo(kids, 2, { opacity: 0, x: "100%" }, { opacity: 1, x: "0%", ease: Power2.easeInOut }, "-=2");

            
        //$(window).scroll(function () {
        //    if ($(this).scrollTop() > 1) {
        //        $('header').addClass("sticky");
        //    }
        //    else {
        //        $('header').removeClass("sticky");
        //    }
        //});  

        function toggleText1() {
            var showMoreText = document.getElementById("moreText");
            var ReadMorebtn = document.getElementById("ReadMorebtn");
                showMoreText.style.display = "inline";
                ReadMorebtn.style.display = "none";
        }      
        function toggleText2() {
            var showMoreText = document.getElementById("moreText");
            var ReadMorebtn = document.getElementById("ReadMorebtn");
            showMoreText.style.display = "none";
            ReadMorebtn.style.display = "inline";
        }      
    </script>
</body>
</html>