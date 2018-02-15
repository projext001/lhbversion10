<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/Site4.Master" AutoEventWireup="true" CodeBehind="baccl.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.baccl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Transactio_Date" HeaderText="Transactio_Date" SortExpression="Transactio_Date" />
            <asp:BoundField DataField="Transactio_Id" HeaderText="Transactio_Id" SortExpression="Transactio_Id" />
            <asp:BoundField DataField="Credited_To" HeaderText="Credited_To" SortExpression="Credited_To" />
            <asp:BoundField DataField="Transactio_Description" HeaderText="Transactio_Description" SortExpression="Transactio_Description" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [Accounting] ORDER BY [Type], [Transactio_Date]"></asp:SqlDataSource>
    <br />
    </asp:Content>
