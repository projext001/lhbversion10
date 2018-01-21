<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/Site4.Master" AutoEventWireup="true" CodeBehind="bhome.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    BACK-END HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <br />
    <asp:RadioButton ID="ap" runat="server" AutoPostBack="True" GroupName="product" OnCheckedChanged="ap_CheckedChanged" Text="Add a Product" />
    <br />

    <asp:Panel ID="Panel1" runat="server" BorderColor="#0066FF" BorderStyle="Dashed" BorderWidth="5px">
        <center><asp:Label ID="Label1" runat="server" Text="Add a Product in database" Font-Bold="True" ForeColor="#CC0000" /></center>
        <br />
        <table>
            <tr>
                <td>Enter Batch No.</td><td><asp:TextBox ID="batchno" runat="server" ValidationGroup="prod"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Batch No." ForeColor="Red" ValidationGroup="prod" ControlToValidate="batchno" >**</asp:RequiredFieldValidator></td><td>Enter Serial No.</td><td>
                <asp:TextBox ID="serialno" runat="server" ValidationGroup="prod"/><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Serial No." ForeColor="Red" ValidationGroup="prod" ControlToValidate="serialno">**</asp:RequiredFieldValidator>
                </td><td>Select Product Id.</td><td><asp:DropDownList ID="prodid" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductId" DataValueField="ProductId" ValidationGroup="prod"/><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Select a ID." ControlToValidate="prodid" ForeColor="Red" ValidationGroup="prod">**</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Enter Description</td><td>
                    <asp:TextBox ID="proddesc" runat="server"/><asp:RequiredFieldValidator runat="server" ErrorMessage="Enter valid Product Description" ControlToValidate="proddesc" ForeColor="Red" ValidationGroup="prod">**</asp:RequiredFieldValidator></td><td>Enter Cost Price</td><td>
                        <asp:TextBox ID="prodcp" runat="server" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Product Cost Price" ForeColor="Red" ValidationGroup="prod" ControlToValidate="prodcp">**</asp:RequiredFieldValidator></td><td>Enter Selling Price</td><td>
                            <asp:TextBox ID="prodsp" runat="server" TextMode="Number" ValidationGroup="prod"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Selling Price" ControlToValidate="prodsp" ForeColor="Red" ValidationGroup="prod">**</asp:RequiredFieldValidator></td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" DisplayMode="List" Font-Bold="False" Font-Italic="True" ForeColor="Red" HeaderText="Please Solve above Errors" ValidationGroup="prod" />
        <br />
        <br />
        <center><asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/Pages/Specific/2backend/play.png" OnClick="Execute_Click1" ValidationGroup="prod" Width="50px" /></center>
        <br />
    </asp:Panel>
    <br />
    <center><asp:Label ID="Notice0" runat="server"></asp:Label></center>

    <asp:RadioButton ID="apt" runat="server" AutoPostBack="True" GroupName="product" OnCheckedChanged="apt_CheckedChanged" Text="Add Product Type" />

    <br /><br />

    <asp:Panel ID="Panel2" runat="server" BorderColor="#0066FF" BorderStyle="Dashed" BorderWidth="5px">
        <center><asp:Label ID="Label2" runat="server" Text="Add a Product type in database" Font-Bold="True" ForeColor="#CC0000" /></center>
        <table>
            <tr>
                <td style="height: 46px">
                    <asp:Label ID="Label3" runat="server" Text="Enter Name of the Product type"/></td><td style="height: 46px">&nbsp<asp:TextBox ID="Name" runat="server" ValidationGroup="prodtype"/><td style="height: 46px">&nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name field cannot be left blank" Text="**" ControlToValidate="Name"  Font-Italic="True" ForeColor="Red" ValidationGroup="prodtype" /></td>
        </tr>
        <tr>
            <td style="height: 46px">
                <asp:Label ID="Label4" runat="server" Text="Enter cgst value of the product"/></td>
            <td style="height: 46px">&nbsp<asp:TextBox ID="cgst" runat="server" MaxLength="3" ValidationGroup="prodtype"/><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter a cgst value" ControlToValidate="cgst" ForeColor="#FF3300" ValidationGroup="prodtype">*</asp:RequiredFieldValidator></td>
            <td style="height: 46px">&nbsp<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid value between 5 and 100" ControlToValidate="cgst" Text="**"  Font-Italic="True" ForeColor="Red" ValidationExpression="^[1-9][0-9]?$|^100$" ValidationGroup="prodtype" /></td>
        </tr>
        </tr>
            <tr>
                <td style="height: 46px">
                    <asp:Label ID="Label5" runat="server" Text="Enter sgst value of the product" />
                </td>
                <td style="height: 46px">&nbsp;<asp:TextBox ID="sgst" runat="server" MaxLength="3" ValidationGroup="prodtype" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="sgst" ErrorMessage="Enter SGST Value" ForeColor="Red" ValidationGroup="prodtype">*</asp:RequiredFieldValidator>
                </td>
                <td style="height: 46px">&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="sgst" ErrorMessage="Enter a valid value between 5 and 100" Font-Italic="True" ForeColor="Red" Text="**" ValidationExpression="^[1-9][0-9]?$|^100$" ValidationGroup="prodtype" />
                </td>
            </tr>
        </table>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" Font-Italic="True" ForeColor="#CC0000" HeaderText="Please solve above error" ValidationGroup="prodtype" />
        <br />
        <center><asp:ImageButton runat="server" OnClick="Execute_Click" Height="50px" ImageUrl="~/Pages/Specific/2backend/play.png" Width="50px" ValidationGroup="prodtype"/></center>
    </asp:Panel>
    <br />
    <Center>
        <asp:Label ID="Notice" runat="server"></asp:Label>
    </Center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [ProductId] FROM [Products] ORDER BY [ProductId]"></asp:SqlDataSource>
</asp:Content>
