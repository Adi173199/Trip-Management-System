<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTrip.aspx.cs" Inherits="TripManagement_System.CreateTrip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <style type="text/css">
        body{
            background-color:#ccf2f4;
            font-family:'Lato',sans-serif;
            font-weight:500;
        }
        .btn{
            margin:10px;
            padding:10px;
        }
           
        .auto-style1 {
            width: 216px;
        }
        .auto-style2 {
            width: 211px;
        }
           
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;</h1>
            <h1>Create New Trip</h1>
            <table>
                <tr>
                    <td class="auto-style1">
                        <br />
                        Trip Name
                    </td>
                    <td>
                          <br />
                          <asp:TextBox ID="txtTripName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        UserName
                    </td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        Trip Start Date
                    </td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtTripStartDate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        Trip End Date
                    </td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtTripEndDate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        Select Trip Type
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="ddlTripType" runat="server">
                            <asp:ListItem>---No Items Selected---</asp:ListItem>
                            <asp:ListItem>Group</asp:ListItem>
                            <asp:ListItem>Solo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        Number of Person
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="txtNoOfPersons" runat="server" TextMode="Number" Height="26px"></asp:TextBox>
               
                    </td>
                </tr>
        
            </table>
            <h2>&nbsp;</h2>
            <h2>Expense Details</h2>
            <table>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Hotel Expense</td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtHotel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Food Expense</td>
                    <td>
                          <br />
                          <asp:TextBox ID="txtFood" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Travelling Expense</td>
                    <td>
                          <br />
                          <asp:TextBox ID="txtTravelling" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Other Expenses</td>
                    <td>
                         <br />
                         <asp:TextBox ID="txtOther" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Total Expense</td>
                    <td>
                          <br />
                          <asp:TextBox ID="txtTotalAmount" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
              <br />
              <asp:Button ID="btnSaveTrip" runat="server" class="btn btn-md btn-success" Text="Save Trip" OnClick="btnSaveTrip_Click" />
               <asp:Button ID="btnDashboard" runat="server" class="btn btn-md btn-outline-success" OnClick="btnDashboard_Click" Text="Dashboard" />  
             
            
        </div>
    </form>
</body>
</html>
