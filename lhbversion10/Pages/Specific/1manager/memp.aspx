<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/1manager/Site3.Master" AutoEventWireup="true" CodeBehind="memp.aspx.cs" Inherits="lhbversion10.Pages.Specific._1manager.memp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    EMPLOYEE MANAGEMENT
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Panel ID="Panel3" runat="server" BorderColor="Black" BorderStyle="Outset" BorderWidth="3px">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="acl" HeaderText="acl" SortExpression="acl" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
                <asp:BoundField DataField="National_Id_Type" HeaderText="National_Id_Type" SortExpression="National_Id_Type" />
                <asp:BoundField DataField="National_Id_No" HeaderText="National_Id_No" SortExpression="National_Id_No" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </asp:Panel>
    <br />
    <br />
    <table><tr style="width: 100%;"><td style="width:50%; vertical-align:top">
    <asp:Panel ID="Panel1" runat="server">
        <b><center>Add Employee</center></b>
        <table>
            <tr><td style="align-items:baseline">
        Password</td><td><asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please add Password" ForeColor="Red" ValidationGroup="addemp">*</asp:RequiredFieldValidator></td></tr>
            <caption>
                <br />
                <tr>
                    <td>Access Level</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <caption>
                    <br />
                    <tr>
                        <td>Name</td>
                        <td>
                            <asp:TextBox ID="name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="name" ErrorMessage="Enter Name of the Employee" ForeColor="Red" ValidationGroup="addemp">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td style="height: 30px">Address</td>
                            <td style="height: 30px">
                                <asp:TextBox ID="adl1" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="adl1" ErrorMessage="Atleast one Address line to be filled" ForeColor="Red" ValidationGroup="addemp">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                                <caption>
                                    <br />
                                    <tr>
                                        <td>Mobile No.</td>
                                        <td>
                                            <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="mobile" ErrorMessage="Enter mobile no" ForeColor="Red" ValidationGroup="addemp">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobile" ErrorMessage="Enter a valid Mobile no" ForeColor="Red" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" ValidationGroup="addemp">*</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <caption>
                                        <br />
                                        <tr>
                                            <td>National Id. Type</td>
                                            <td>
                                                <asp:DropDownList ID="nidt" runat="server">
                                                    <asp:ListItem>PAN</asp:ListItem>
                                                    <asp:ListItem>DRIVING LICENSE</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <caption>
                                            <br />
                                            <tr>
                                                <td>National Id. No.</td>
                                                <td>
                                                    <asp:TextBox ID="nidn" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="nidn" ErrorMessage="Enter National Id no." ForeColor="Red" ValidationGroup="addemp">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <caption>
                                                <br />
                                            </caption>
                                        </caption>
                                    </caption>
                                </caption>
                            </caption>
                        </caption>
                    </caption>
            </caption>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" ValidationGroup="addemp" />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Pages/Specific/1manager/play.png" OnClick="ImageButton1_Click" ValidationGroup="addemp" Width="20px" />
    </asp:Panel></td><td style="width:50%;vertical-align:top">
    <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Right" float="right" Direction="RightToLeft">
        <b><center>Remove/Promote/Demote Employee</center></b>
        <asp:DropDownList ID="DropDownList2" runat="server" >
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select an Id from List" ForeColor="Red" ValidationGroup="rdpemp"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Please Select your Choice" ForeColor="Red" ValidationGroup="rdpemp"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove" ValidationGroup="rdpemp" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Demote/Promote" ValidationGroup="rdpemp" />
        <br />
    </asp:Panel>
        </td></tr></table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [acl], [Name], [Address1], [Mobile_No], [National_Id_Type], [National_Id_No] FROM [User]"></asp:SqlDataSource>
    <br />
    </asp:Content>
