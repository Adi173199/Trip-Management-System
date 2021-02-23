<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="TripManagement_System.Report1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 635px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Run the following queries to see output</h2>
            <table class="auto-style1">
                <tr>
                    <td>
                        Find User Wise Trip Details In Ascending Order
                    </td>
                    <td>
                        <asp:Button ID="btn0" runat="server" Text="RunQuery" class="btn btn-md btn-primary" OnClick="btn0_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        View All users data
                    </td>
                    <td>
                        <asp:Button ID="btn1" runat="server" Text="Run Query" class="btn btn-md btn-primary" OnClick="btn1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                    View All trip's data
                        </td>
                    <td>
                        <asp:Button ID="btn2" runat="server" Text="RunQuery" class="btn btn-md btn-primary" OnClick="btn2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Find Total Amount Spent By All Users
                    </td>
                    <td>
                       <asp:Button ID="btn3" runat="server" Text="RunQuery" class="btn btn-md btn-primary" OnClick="btn3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Find Expense Details For All Users
                    </td>
                    <td>
                        <asp:Button ID="btn4" runat="server" Text="RunQuery" class="btn btn-md btn-primary" OnClick="btn4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Find Total Amount Spend By All Users For Expense Category="Food"
                    </td>
                    <td>
                       <asp:Button ID="btn5" runat="server" Text="RunQuery" class="btn btn-md btn-primary" OnClick="btn5_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Find Total Amount Spend By All Users For Expense Category="Travelling"

                    </td>
                    <td>
                       <asp:Button ID="btn6" runat="server" Text="RunQuery" class="btn btn-md btn-primary" OnClick="btn6_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
        <asp:GridView ID="gv1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn btn-md btn-danger" OnClick="btnLogout_Click" />
    </form>
</body>
</html>
