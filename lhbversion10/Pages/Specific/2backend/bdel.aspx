<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/Site4.Master" AutoEventWireup="true" CodeBehind="bdel.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bdel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    BACK-END DELETE DATA
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Panel ID="Panel2" runat="server" BorderColor="#3333FF" BorderStyle="Dashed" BorderWidth="5px">
        <center><asp:Label ID="Label2" runat="server" Text="Delete a Product From Database" Font-Italic="True" ForeColor="Red"></asp:Label></center>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:BoundField DataField="batchno" HeaderText="batchno" SortExpression="batchno" />
                <asp:BoundField DataField="serialno" HeaderText="serialno" SortExpression="serialno" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="costprice" HeaderText="costprice" SortExpression="costprice" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select a Id to Delete" ForeColor="#FF3300" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <Center><b><font color="red">Note: To Delete a Item From DB Key is Required Again</font></b></Center>
        <br />
        Enter Key.&nbsp:&nbsp<asp:TextBox ID="pass" runat="server" TextMode="Password"/><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Key" ControlToValidate="pass" ForeColor="Red"/>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="DELETE" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Notice" runat="server"></asp:Label>
    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [ProdList]"></asp:SqlDataSource>
</asp:Content>
