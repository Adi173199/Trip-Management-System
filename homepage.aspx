<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="TripManagement_System.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trip Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">

    <style type="text/css">

        body{
            text-align:center;
            background-color:#a4ebf3;
            font-family:'Lato', sans-serif;
        }
        h1{
            margin-top:20px;
            font-family: 'Cookie', cursive;
            font-size:70px;
            
            color:#413c69;
        }

        .loginbutton{
            margin:0 20px;
            padding:20px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
            <div>
            <h1>Welcome to Trip Management System</h1>
               
       <br /> 
            <asp:Image ID="Image1" runat="server"  Height="485px" ImageAlign="Top" ImageUrl="~/images/Trip.jpg" Width="1536px" />
          <br />
                <br />
                <asp:Button ID="btnAdmin" runat="server" class="loginbutton btn btn-lg btn-outline-dark" OnClick="txtAdmin_Click" Text="Admin Login"  />
                <asp:Button ID="btnUser" runat="server" class="loginbutton btn btn-lg btn-dark"  Text="User Login" OnClick="btnLogin_Click"  />
          
                
        </div>
    </form>
</body>
</html>
