<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="lhbversion10.Pages.Shared.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    THIS IS HOME PAGE
    <a href="Login.aspx"><asp:Image ID="Image1" CssClass="login" runat="server" ImageUrl="~/Pages/Shared/login.png" AlternateText="LOGIN" BackColor="White" BorderColor="#0066FF" BorderStyle="Dashed" BorderWidth="3px" DescriptionUrl="~/Pages/Shared/Login.aspx"/></a>
&nbsp;
</asp:Content>
