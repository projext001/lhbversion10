<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="lhbversion10.Pages.Shared.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h2>Contact Info</h2>
        <h3>Sales</h3>
        <h3>Support</h3>
    </p>
    <a href="Login.aspx"><asp:Image ID="Image1" CssClass="login" runat="server" ImageUrl="~/Pages/Shared/login.png" AlternateText="LOGIN" BackColor="White" BorderColor="#0066FF" BorderStyle="Dashed" BorderWidth="3px" DescriptionUrl="~/Pages/Shared/Login.aspx"/></a>
</asp:Content>
