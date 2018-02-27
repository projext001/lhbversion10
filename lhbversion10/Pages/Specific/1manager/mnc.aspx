<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/1manager/NestedMasterPageCustomer.master" AutoEventWireup="true" CodeBehind="mnc.aspx.cs" Inherits="lhbversion10.Pages.Specific._1manager.mnc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    <div>
    <center><asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/Pages/Shared/customer.png" Width="220px" ImageAlign="Middle" /></center>
    <br />
    <center>Normal Customer</center>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    <table cellspacing="5" cellpadding="5" class="profiletable" border="0">
        <tr><td class="cola">Name</td><td class="colb"><asp:TextBox ID="Name" runat="server" CssClass="textc"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Please Enter Name" ForeColor="Red" ValidationGroup="ccn">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="cola">Address Line 1</td><td class="colb"><asp:TextBox ID="add1" runat="server" CssClass="textc"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="add1" ErrorMessage="Please Enter your address" ForeColor="Red" ValidationGroup="ccn">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="cola">Address Line 2</td><td class="colb"><asp:TextBox ID="add2" runat="server" CssClass="textc"></asp:TextBox></td></tr>
        <tr><td class="cola">Contact</td><td class="colb"><asp:TextBox ID="Contact" runat="server" CssClass="textc"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Mobile No" ForeColor="Red" CssClass="textc" ValidationGroup="ccn" ControlToValidate="Contact">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Contact" ErrorMessage="Enter a valid Mobile no." ForeColor="Red" ValidationExpression="^[7-9]\d{9}$" ValidationGroup="ccn">*</asp:RegularExpressionValidator>
            </td></tr>
    </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" ValidationGroup="ccn" />
        <br />
    <center><asp:Button ID="cc" runat="server" Text="Create Customer" OnClick="cc_Click" ValidationGroup="ccn" /></center>
        </div>
    <br /><br /><br />
    <div>
        <center>Business Customer</center>
        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        <table cellspacing="5" cellpadding="5" class="profiletable" border="0">
            <tr><td class="cola">Company Name</td><td class="colb">
                <asp:TextBox ID="cname" runat="server" CssClass="textc"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cname" ErrorMessage="Company Name required" ForeColor="Red" ValidationGroup="ccb">*</asp:RequiredFieldValidator>
                </td></tr>
            <tr><td class="cola">Address Line 1</td><td class="colb">
                <asp:TextBox ID="cadd1" runat="server" CssClass="textc"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cadd1" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="ccb">*</asp:RequiredFieldValidator>
                </td></tr>
            <tr><td class="cola">Address Line 2</td><td class="colb">
                <asp:TextBox ID="cadd2" runat="server" CssClass="textc"></asp:TextBox>
                </td></tr>
            <tr><td class="cola">Mobile No</td><td class="colb">
                <asp:TextBox ID="cmob" runat="server" CssClass="textc"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cmob" ErrorMessage="Mobile No. Required" ForeColor="Red" ValidationGroup="ccb">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cmob" ErrorMessage="Enter a valid Mobile No." ForeColor="Red" ValidationGroup="ccb">*</asp:RegularExpressionValidator>
                </td></tr>
            <tr><td class="cola">Owner/CEO Name</td><td class="colb">
                <asp:TextBox ID="coname" runat="server" CssClass="textc"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Owner or CEO Name Required" ForeColor="Red" ValidationGroup="ccb" ControlToValidate="coname">*</asp:RequiredFieldValidator>
                </td></tr>
            <tr><td class="cola">GST No.</td><td class="colb">
                <asp:TextBox ID="gst" runat="server" CssClass="textc"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Gst No. Required" ForeColor="Red" ValidationGroup="ccb" ControlToValidate="gst">*</asp:RequiredFieldValidator>
                </td></tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" DisplayMode="List" ForeColor="Red" ValidationGroup="ccb" />
        <br />
        <center><asp:Button ID="Button1" runat="server" Text="Create Business Customer" OnClick="Button1_Click" ValidationGroup="ccb"></asp:Button></center>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick">
    </asp:Timer>
</asp:Content>
