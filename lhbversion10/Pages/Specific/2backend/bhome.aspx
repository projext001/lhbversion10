<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/Site4.Master" AutoEventWireup="true" CodeBehind="bhome.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    BACK-END HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <asp:Panel ID="Panel1" runat="server" BorderColor="#0066FF" BorderStyle="Dashed" BorderWidth="5px">
        <center><asp:Label ID="Label1" runat="server" Text="Add a Product in database" Font-Bold="True" ForeColor="#CC0000" /></center>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductId" DataValueField="ProductId">
        </asp:DropDownList>
        <br />

    </asp:Panel>

    <br /><br />

    <asp:Panel ID="Panel2" runat="server" BorderColor="#0066FF" BorderStyle="Dashed" BorderWidth="5px">
        <center><asp:Label ID="Label2" runat="server" Text="Add a Product type in database" Font-Bold="True" ForeColor="#CC0000" /></center>
        <table>
            <tr>
                <td style="height: 46px">
                    <asp:Label ID="Label3" runat="server" Text="Enter Name of the Product type"/></td><td style="height: 46px">&nbsp<asp:TextBox ID="Name" runat="server"/><td style="height: 46px">&nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name field cannot be left blank" Text="**" ControlToValidate="Name"  Font-Italic="True" ForeColor="Red" /></td>
        </tr>
        <tr>
            <td style="height: 46px">
                <asp:Label ID="Label4" runat="server" Text="Enter cgst value of the product"/></td>
            <td style="height: 46px">&nbsp<asp:TextBox ID="cgst" runat="server" MaxLength="3"/></td>
            <td style="height: 46px">&nbsp<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid value between 5 and 100" ControlToValidate="cgst" Text="**"  Font-Italic="True" ForeColor="Red" ValidationExpression="^[1-9][0-9]?$|^100$" /></td>
        </tr>
        </tr>
            <tr>
                <td style="height: 46px">
                    <asp:Label ID="Label5" runat="server" Text="Enter sgst value of the product" />
                </td>
                <td style="height: 46px">&nbsp;<asp:TextBox ID="sgst" runat="server" MaxLength="3" />
                </td>
                <td style="height: 46px">&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="sgst" ErrorMessage="Enter a valid value between 5 and 100" Font-Italic="True" ForeColor="Red" Text="**" ValidationExpression="^[1-9][0-9]?$|^100$" />
                </td>
            </tr>
        </table>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" Font-Italic="True" ForeColor="#CC0000" HeaderText="Please solve above error" />
        <br />
        <center><asp:ImageButton runat="server" OnClick="Execute_Click" Height="50px" ImageUrl="~/Pages/Specific/2backend/play.png" Width="50px"/></center>
    </asp:Panel>
    <br />
    <Center>
        <asp:Label ID="Notice" runat="server"></asp:Label>
    </Center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [ProductId] FROM [Products] ORDER BY [ProductId]"></asp:SqlDataSource>
</asp:Content>
