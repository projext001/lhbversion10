<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/Site4.Master" AutoEventWireup="true" CodeBehind="bupdate.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
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
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [ProdList]"></asp:SqlDataSource>
    <br />
</asp:Content>
