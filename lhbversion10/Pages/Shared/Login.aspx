<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="lhbversion10.Pages.Shared.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border:dashed 5px solid">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="USER-I.D."/></td>
                <td class="auto-style1"><asp:TextBox ID="user" runat="server"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" ErrorMessage="Enter Your I.D." ForeColor="#FF3300">**</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="USER-KEY"/></td>
                <td><asp:TextBox ID="pass" runat="server" TextMode="Password"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Enter Your Key" ForeColor="#FF3300">**</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" Font-Bold="True" ForeColor="Red" HeaderText="Please Solve these Problems" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Login_btn" runat="server" Text="LOGIN" style="align-self:center" OnClick="Login_btn_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>
