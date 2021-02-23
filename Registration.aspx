<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TripManagement_System.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
            <style>
                body{
                    background-color:#ffefa1;
                    text-align:center;
                    font-family:'Lato',sans-serif;
                }
               table{
                   border:1px solid;
                   margin:10px;
                   padding:10px;
               }
                .auto-style1 {
                    width: 189px;
                }
               
            </style>
    <title>Registration</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>New Registration</h1>
            <center>
                <br />
            <table>
                <tr>
                    <td class="auto-style1">
                        <br />
                        UserName
                    </td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                         <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        Mobile No.
                    </td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        Email address
                    </td>
                    <td>
                          <br />
                          <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                     <td class="auto-style1">
                         <br />
                    Password
                </td>
                <td>
                      <br />
                      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                </tr>
               <tr>
                   <td colspan="2" style="text-align:center">
                       <br />
                    <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-md btn-outline-success"  OnClick="btnRegister_Click" />
                       </td>
               </tr>
            </table>
                </center>
            <br />
            
        </div>
       
    </form>
</body>
</html>
