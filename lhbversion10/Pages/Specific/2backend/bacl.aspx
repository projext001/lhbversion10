<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/NestedMasterPageBudgetAccoumting.master" AutoEventWireup="true" CodeBehind="bacl.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bacl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction_Date" SortExpression="Transaction_Date" />
            <asp:BoundField DataField="Transaction_Id" HeaderText="Transaction_Id" SortExpression="Transaction_Id" />
            <asp:BoundField DataField="Credited_To" HeaderText="Credited_To" SortExpression="Credited_To" />
            <asp:BoundField DataField="Transaction_Description" HeaderText="Transaction_Description" SortExpression="Transaction_Description" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [Accounting]"></asp:SqlDataSource>
</asp:Content>
