<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/Site4.Master" AutoEventWireup="true" CodeBehind="bdel.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bdel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    BACK-END DELETE DATA
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Panel ID="Panel3" runat="server" BorderColor="#3333FF" BorderStyle="Dashed" BorderWidth="5px">
        <Center><b><font color="red">Note: To Delete a Item From DB Key is Required Again<br /> </font></b></Center>
        <br />
        <br />
        <br />
        Enter ID.&nbsp:&nbsp<asp:TextBox ID="user" runat="server"/><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Key" ControlToValidate="user" ForeColor="Red"/>
        <br />
        <br />
        Enter Key.&nbsp:&nbsp<asp:TextBox ID="pass" runat="server" TextMode="Password"/><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Key" ControlToValidate="pass" ForeColor="Red"/>
    </asp:Panel>
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server" BorderColor="#3333FF" BorderStyle="Dashed" BorderWidth="5px">
        <center><asp:Label ID="Label2" runat="server" Text="Delete a Product From Database" Font-Italic="True" ForeColor="Red"></asp:Label></center>
        <br />
        <br />
        Enter the Product Id&nbsp:&nbsp<asp:TextBox ID="proid" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="proid" ErrorMessage="Enter the Id to be deleted" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="DELETE" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Notice" runat="server"></asp:Label>
    </asp:Panel>

</asp:Content>
