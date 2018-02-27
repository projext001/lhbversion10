<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/NestedMasterPageBudgetAccoumting.master" AutoEventWireup="true" CodeBehind="bled.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bled" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    BUSINESS LEDGER
    <table>
        <tr>
            <td align="right"><asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource5">
                    <ItemTemplate>
                        CARRIED_FORWARD:
                        <asp:Label ID="CARRIED_FORWARDLabel" runat="server" Text='<%# Eval("CARRIED_FORWARD") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList></td>
            <td align="right">
                <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource6">
                    <ItemTemplate>
                        CARRIED_FORWARD:
                        <asp:Label ID="CARRIED_FORWARDLabel" runat="server" Text='<%# Eval("CARRIED_FORWARD") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="gdesc" HeaderText="gdesc" SortExpression="gdesc" />
                        <asp:BoundField DataField="amt" HeaderText="amt" SortExpression="amt" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="Id">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="gdesc" HeaderText="gdesc" SortExpression="gdesc" />
                        <asp:BoundField DataField="amt" HeaderText="amt" SortExpression="amt" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        Column1:
                        <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td><td align="right">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4">
                    <ItemTemplate>
                        Column1:
                        <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                 </td>
        </tr>
    </table>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource7" DataTextField="CompanyName" DataValueField="Id" AutoPostBack="True"></asp:DropDownList>
<table>
    <tr><td>
        FROM DATE
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" SelectedDate="2000-01-01">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar></td><td>
        TO DATE
    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" SelectedDate="2031-01-01">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
        </td></tr>
    </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [date], [gdesc], [amt] FROM [acbusiness] WHERE ([gto] = @gto) AND (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="gto" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Calendar2" Name="ToD" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [date], [gdesc], [amt] FROM [acbusiness] WHERE ([gfrom] = @gfrom) AND (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="gfrom" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Calendar2" Name="ToD" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [CompanyName] FROM [CustB]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) FROM Accounting1 WHERE (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD) AND ([gto] = @gto)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="DataList1" Name="gto" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) FROM Accounting WHERE (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD) AND ([gfrom] = @gfrom)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="DataList1" Name="gfrom" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS CARRIED_FORWARD FROM Accounting1 WHERE (Transaction_Date &lt; @FromD) AND ([gto] = @gto)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="DataList1" Name="gto" PropertyName="SelectedValue" />
        </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS CARRIED_FORWARD FROM Accounting WHERE (Transaction_Date &lt; @FromD) AND ([gfrom] = @gfrom)">
    <SelectParameters>
        <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
        <asp:ControlParameter ControlID="DataList1" Name="gfrom" PropertyName="SelectedValue" />
    </SelectParameters>
</asp:SqlDataSource>
    </asp:Content>
