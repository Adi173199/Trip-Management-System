<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTrips.aspx.cs" Inherits="TripManagement_System.ViewTrips" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View All Trips</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

<style>
    body{
        font-family: 'Montserrat', sans-serif;
        background-color:azure;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvViewTrip" runat="server" AutoGenerateColumns="False" DataKeyNames="Tid" Height="466px" Width="1518px" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                       <asp:BoundField DataField="Tid" HeaderText="Trip Id" InsertVisible="False" ReadOnly="True" SortExpression="Tid"/>
                       <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                       <asp:BoundField DataField="Tname" HeaderText="Trip Name" SortExpression="Tname" />
                       <asp:BoundField DataField="Tstartdate" HeaderText="Start Date" SortExpression="Tstartdate" />
                      
                       <asp:BoundField DataField="Tenddate" HeaderText="End Date" SortExpression="Tenddate" />
                     <asp:BoundField DataField="Ttype" HeaderText="Trip type" SortExpression="Ttype" />
                    <asp:BoundField DataField="Persons" HeaderText="Number of Persons" SortExpression="Persons" />
                    <asp:BoundField DataField="Food" HeaderText="Food Expenses" SortExpression="Persons" />
                    
                       <asp:BoundField DataField="Hotel" HeaderText="Hotel Expenses" SortExpression="Hotel" />
                       <asp:BoundField DataField="Travelling" HeaderText="Travelling Expenses" SortExpression="Travelling" />
                       <asp:BoundField DataField="Other" HeaderText="Other Expenses" SortExpression="Other" />
                       <asp:BoundField DataField="Expense" HeaderText="Total Expenses" SortExpression="Expense" />
                       
                       
                       
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
