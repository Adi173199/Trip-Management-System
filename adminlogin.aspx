<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="TripManagement_System.Report" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <style>
                body{
                    text-align:center;
                    font-family: 'Lato', sans-serif;
                    background-color:#95e1d3;
                }
                table{
                    border:1px solid #808080;
                    text-align:center;
                    padding:30px;
                }
            
                
                </style>
            <br />
            <h1>Admin Login</h1>
            <br />
            <center>
            <table>
                <tr>
                    <td>
                        Username:  
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        Password:
                    </td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                         <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                         <br />
                         <asp:Button ID="btnLogin" runat="server" class="btn btn-primary" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                </tr>
            </table>
            </center>
            <br />
           
           
        </div>
    </form>
</body>
</html>

