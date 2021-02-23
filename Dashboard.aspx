<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TripManagement_System.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <style>
        body{
            background-color:#6ddccf;
            font-family: 'Lato', sans-serif;
        }
        h1{
          
        }
        .btn-col{
            background-color:#94ebcd;
        }
    </style>
    <title></title>
    <style type="text/css">
        .auto-style12 {
            margin-left: 0px;
            margin-top: 0px;
        }
        </style>
</head>
<body style="height: 406px">
    <form id="form1" runat="server">
    <div>
         <h1 style="text-align:center">User Dashboard</h1>
    </div>
   
        <table class="table">
            <tr>
                <td class="btn-col">
                  <asp:Button ID="btnCreateTrip" runat="server" class="btn btn-md btn-outline-primary"  Height="50px" OnClick="btnCreateTrip_Click" Text="Create Trip" Width="144px" />
                </td>
                <td rowspan="4">
                            <asp:Image ID="Image1" runat="server" Height="324px" ImageUrl="~/images/bg.jpg" Width="1350px" CssClass="auto-style12" ImageAlign="Middle" />

                </td>

            </tr>
            <tr>
                <td class="btn-col">
                    <asp:Button ID="btnViewTrip" runat="server" class="btn btn-md btn-outline-primary" Height="50px" OnClick="btnViewTrip_Click" Text="View Trips" Width="144px" />
                </td>
            </tr>
            <tr>
                <td class="btn-col">
                        <asp:Button ID="btnReport" runat="server" class="btn btn-md btn-outline-primary"  Height="50px" OnClick="btnReport_Click" Text="Reports" Width="144px" />
                </td>
        
            </tr>
            <tr>
                <td class="btn-col">
                        <asp:Button ID="btnLogout" runat="server" class="btn btn-md btn-outline-primary"   Height="50px" OnClick="btnLogout_Click" Text="LogOut" Width="144px" />
                </td>
              
            </tr>
        </table>                        
        


    </form>
</body>
</html>
