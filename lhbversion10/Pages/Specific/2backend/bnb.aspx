<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/NestedMasterPageBudgetAccoumting.master" AutoEventWireup="true" CodeBehind="bnb.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bnb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    <table>
        <tr>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ExpenditureName" HeaderText="ExpenditureName" SortExpression="ExpenditureName" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
                </td>
            <td>
                <asp:TextBox ID="ename" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Expenditure" ValidationGroup="el" ControlToValidate="ename" ForeColor="Red"></asp:RequiredFieldValidator><br /><asp:Button ID="addexp" runat="server" Text="Add Expenditure to Budget" ValidationGroup="el" OnClick="addexp_Click" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Warning" runat="server" Text="Select from table before deleting" ForeColor="Red"></asp:Label><br />
                <asp:Label ID="Label1" runat="server" BackColor="Blue" ForeColor="White"></asp:Label>
                <asp:Button ID="remexp" runat="server" Text="Delete Expenditure" OnClick="remexp_Click" ValidationGroup="del" />
            </td>
            </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="ExpenditureName" HeaderText="ExpenditureName" SortExpression="ExpenditureName" />
                        <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                        <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
                        <asp:BoundField DataField=" TotalCost" HeaderText=" TotalCost" SortExpression=" TotalCost" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ExpenditureName" DataValueField="Id">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Budget Type" ForeColor="Red" ValidationGroup="be"></asp:RequiredFieldValidator>
                <br />
                From Date<asp:TextBox ID="fromdate" runat="server" ValidationGroup="be"  CausesValidation="True" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;
                To Date<asp:TextBox ID="todate" runat="server" ValidationGroup="be"  CausesValidation="True" TextMode="Date"></asp:TextBox>
&nbsp;<br />
                Amount<asp:TextBox ID="amt" runat="server" ValidationGroup="be" CausesValidation="True" TextMode="Number"></asp:TextBox>
                <br />
                <asp:Button ID="addbudget" runat="server" Text="Add Budget" ValidationGroup="be" OnClick="addbudget_Click" />
                <br />
                <br />
                <br />
                <asp:Label ID="warning1" runat="server" ForeColor="Red" Text="Select From table before delete Budget"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" BackColor="#CC00FF" ForeColor="White"></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Budget" ValidationGroup="dbe" />
            </td>
        </tr>
        </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [ExpenditureName] FROM [Expenditure_List]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT * FROM [BudgetingList]"></asp:SqlDataSource>
</asp:Content>
