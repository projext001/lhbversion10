<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/0pos/Site2.Master" AutoEventWireup="true" CodeBehind="pnc.aspx.cs" Inherits="lhbversion10.Pages.Specific._0pos.pnc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    NEW CUSTOMER
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
      <center><asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/Pages/Shared/customer.png" Width="220px" ImageAlign="Middle" /></center>
      <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <center>Normal Customer</center>
    <br />
    <div>
    <table cellspacing="5" cellpadding="5" class="profiletable" border="0">
        <tr><td class="cola">Name</td><td class="colb"><asp:TextBox ID="Name" runat="server" CssClass="textc"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Please Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="cola">Address Line 1</td><td class="colb"><asp:TextBox ID="add1" runat="server" CssClass="textc"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="add1" ErrorMessage="Please Enter your address" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="cola">Address Line 2</td><td class="colb"><asp:TextBox ID="add2" runat="server" CssClass="textc"></asp:TextBox></td></tr>
        <tr><td class="cola">Contact</td><td class="colb"><asp:TextBox ID="Contact" runat="server" CssClass="textc"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Mobile No" ForeColor="Red" CssClass="textc">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Contact" ErrorMessage="Enter a valid Mobile no." ForeColor="Red" ValidationExpression="^[7-9]\d{9}$">*</asp:RegularExpressionValidator>
            </td></tr>
    </table>
    <asp:Button ID="cc" runat="server" Text="Create Customer" OnClick="cc_Click" />
        </div>
</asp:Content>
