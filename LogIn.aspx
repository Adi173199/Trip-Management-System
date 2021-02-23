<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TripManagement_System.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
            <style>

                body {
                    text-align: center;
                    font-family: 'Lato', sans-serif;
                    background-color: #95e1d3;
                }
                .btn{
                    padding:0 10px;
                    margin:10px;
                }
                table{
                    border:1px solid #808080;
                    padding:30px;
                }
               
                .auto-style1 {
                    width: 223px;
                }
               
            </style>
    <title>User Login</title>

    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1>User Login</h1>
            <br />
        <center>
            <table>
                   <tr>
                       <td>
                           Username <br />
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                       </td>
                   </tr>
                <tr>
                    <td>
                        <br />
                        Password
                    </td>
                    <td class="auto-style1">
                        <br />
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="txtLogin" runat="server" class="btn btn-lg btn-primary" Text="Login" OnClick="txtLogin_Click" />
             <asp:Button ID="txtSignup" runat="server" class="btn btn-lg btn-outline-primary" OnClick="txtSignup_Click" Text="Sign Up" />
                    </td>
                </tr>
            </table>
            </center>

            <br />
            
        </div>
    </form>
</body>
</html>