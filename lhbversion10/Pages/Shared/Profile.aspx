<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="lhbversion10.Pages.Shared.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    My Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <center><asp:Image ID="Image4" runat="server" ImageUrl="~/Pages/Shared/user.png" Height="25%" Width="25%" /></center>
            <br />
            <br />
            <br />
            <table cellspacing="5" cellpadding="5" class="profiletable" border="0">
                <tr><td class="cola">Name</td><td class="colb">
                    <asp:TextBox ID="name" runat="server" CssClass="textc"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Name Required to Update" ValidationGroup="upro">*</asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td class="cola">Address</td><td class="colb">
                    <asp:TextBox ID="Address" runat="server" CssClass="textc" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Address" ErrorMessage="Address Field cannot be Blank" ValidationGroup="upro">*</asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td class="cola">Mobile</td><td class="colb">
                    <asp:TextBox ID="Mobile" runat="server" CssClass="textc"></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile No required" ControlToValidate="Mobile" ValidationGroup="upro">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Mobile" ErrorMessage="Enter a valid Mobile No." ValidationGroup="upro">*</asp:RegularExpressionValidator>
                    </td></tr>
                <tr><td class="cola">National Id Type</td><td class="colb">
                    <asp:DropDownList ID="nit" runat="server" CssClass="textc">
                        <asp:ListItem>PAN</asp:ListItem>
                        <asp:ListItem>DRIVING LICENSE</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="nit" ErrorMessage="National Id Type Required" ValidationGroup="upro">*</asp:RegularExpressionValidator>
                    </td></tr>
                <tr><td class="cola">National Id No.</td><td class="colb">
                    <asp:TextBox ID="nin" runat="server" CssClass="textc"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nin" ErrorMessage="National Id No Required" ValidationGroup="upro">*</asp:RequiredFieldValidator>
                    </td></tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="30px" ForeColor="Red" HeaderText="Please solve the errors in *" ValidationGroup="update" />
        </ContentTemplate>
</asp:UpdatePanel>
<center>
    <br />
    <br />
    <asp:Button ID="unlockb" runat="server" Text="Unlock Profile" OnClick="unlockb_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="lockb" runat="server" Text="Lock Profile" OnClick="lockb_Click"></asp:Button>
    <br />
    <asp:Button ID="updatep" runat="server" Text="Update Profile" OnClick="updatep_Click" ValidationGroup="upro"></asp:Button>
</center>
</asp:Content>
