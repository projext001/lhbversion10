<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/1manager/NestedMasterPageCustomer.master" AutoEventWireup="true" CodeBehind="mdc.aspx.cs" Inherits="lhbversion10.Pages.Specific._1manager.mdc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Dashed">
    <p>
        Normal Customers</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
        </asp:Panel>
    <br /><br />
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Dashed">
    <p>
        Business Customers</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                <asp:BoundField DataField="gstno" HeaderText="gstno" SortExpression="gstno" />
                <asp:BoundField DataField="HName" HeaderText="HName" SortExpression="HName" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
        </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [CustB]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [CustN]"></asp:SqlDataSource>
</asp:Content>
