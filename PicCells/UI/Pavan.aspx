<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pavan.aspx.vb" Inherits="PicCells.Pavan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            padding:0;
            margin:0;           
            font-family:Calibri;
              background-color:azure;
        }
        img{
            width:20%;
        }
        .content{            
            display:flex;
            justify-content:center;
            padding:20px;
            background-image:radial-gradient(white,lightgrey);
        }
        li{
            list-style: none;
        }
        p{
            font-weight:bold;
            font-style:italic;
        } 
        .AboutMe{
            display:flex;
            justify-content:center;
        }
        table{
            padding-top:10px;
            border:0px;
            display:flex;
        }
        td{
            font-weight:bold;
            text-align:left;
            padding:5px;
            width: auto;
        }
    </style>
</head>
<body>
    <div class="content">
        <img src="../Images/Pavan.Jpeg" />
    </div>
    <div class="AboutMe">
        <table border="1">
            <tr><td>Name:</td><td>KODATALA PAVAN KUMAR REDDY</td></tr>
            <tr><td>Gender:</td><td>MALE</td></tr>
            <tr><td>Age:</td><td>23</td></tr>
            <tr><td>City:</td><td>ANANTAPUR</td></tr>
            <tr><td>Profession:</td><td>NONE</td></tr>
        </table>
    </div>
</body>
</html>
