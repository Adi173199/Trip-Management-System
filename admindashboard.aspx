<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindashboard.aspx.cs" Inherits="TripManagement_System.admindashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <style>
        body{
            background-color:#6ddccf;
            font-family: 'Lato', sans-serif;
            text-align:center;
        }
       
        .btn{
            margin:20px;
            padding:20px;
        }
        .btn-col{
              background-color:#94ebcd;
        }
        .auto-style1 {
            width: 330px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Admin Dashboard</h1>
        <br />
        <table>
            <tr>
                <td class="btn-col">
                    <asp:Button ID="btnReport" runat="server" Text="Reports" class="btn btn-lg btn-light" Width="180px" OnClick="btnReport_Click" />
                  
                </td>
                <td rowspan="3">
                    <asp:Image ID="Image1" runat="server" src="images/back.PNG" ImageAlign="Middle"/>   
                </td>
            </tr>
            <tr>
                <td class="btn-col">
                     <asp:Button ID="btnTrip" runat="server" Text="Manage Trips" class="btn btn-lg btn-light" Width="180px" OnClick="btnTrip_Click" />
                </td>
                <td>

                </td>
               
            </tr>
            <tr>
                <td class="btn-col">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn btn-lg btn-light" Width="180px" OnClick="btnLogout_Click"/>
                </td>
                <td>

                </td>

                          
            </tr>
        </table>
        
                    
                   
                

            
    </form>
</body>
</html>
