<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/0pos/Site2.Master" AutoEventWireup="true" CodeBehind="pnb.aspx.cs" Inherits="lhbversion10.Pages.Specific._0pos.pnb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    NEW BILL
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select customer" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id] FROM [CustN]"></asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create File" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div>
        <asp:Button ID="additem" runat="server" Text="add item" OnClick="additem_Click" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    </div>

</asp:Content>
