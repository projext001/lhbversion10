<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/1manager/NestedMasterPageCustomer.master" AutoEventWireup="true" CodeBehind="mdc.aspx.cs" Inherits="lhbversion10.Pages.Specific._1manager.mdc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Dashed">
    <p>
        Normal Customers</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a Id to Delete" ForeColor="#FF3300" ValidationGroup="nc"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Notice" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="DELETE" ValidationGroup="nc" style="height: 26px" />
        </p>
        </asp:Panel>
    <br />
    <br /><br />
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Dashed">
    <p>
        Business Customers</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                <asp:BoundField DataField="gstno" HeaderText="gstno" SortExpression="gstno" />
                <asp:BoundField DataField="HName" HeaderText="HName" SortExpression="HName" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </p>
        <p>
            <asp:Label ID="Label1" runat="server" BackColor="Red" ForeColor="White"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Notice0" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="DELETE" ValidationGroup="bc" />
        </p>
        </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [CustB]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [CustN]"></asp:SqlDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick">
    </asp:Timer>
</asp:Content>
