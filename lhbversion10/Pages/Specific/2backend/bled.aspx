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
                <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        TOTAL:
                        <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td><td align="right">
                <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource4">
                    <ItemTemplate>
                        TOTAL:
                        <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [date], [gdesc], [amt] FROM [acbusiness] WHERE ([gto] = @gto) AND (date &gt;= @FromD AND date &lt;= @ToD)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="gto" PropertyName="SelectedValue" Type="Int32" DefaultValue="1000" />
                        <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Calendar2" Name="ToD" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [date], [gdesc], [amt] FROM [acbusiness] WHERE ([gfrom] = @gfrom) AND (date &gt;= @FromD AND date &lt;= @ToD)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="gfrom" PropertyName="SelectedValue" Type="Int32" DefaultValue="1000" />
                        <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
                        <asp:ControlParameter ControlID="Calendar2" Name="ToD" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id], [CompanyName] FROM [CustB]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS TOTAL FROM Accounting1 WHERE (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD) AND ([F_ROM] = @gto)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="gto" PropertyName="SelectedValue" DefaultValue="1000" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS TOTAL FROM Accounting WHERE (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD) AND ([T_O] = @gfrom)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="gfrom" PropertyName="SelectedValue" DefaultValue="1000" />
                </SelectParameters>
            </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS CARRIED_FORWARD FROM Accounting1 WHERE (Transaction_Date &lt; @FromD) AND ([F_ROM] = @gto)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="DropDownList1" Name="gto" PropertyName="SelectedValue" DefaultValue="1000" />
        </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS CARRIED_FORWARD FROM Accounting WHERE (Transaction_Date &lt; @FromD) AND ([T_O] = @gfrom)">
    <SelectParameters>
        <asp:ControlParameter ControlID="Calendar1" Name="FromD" PropertyName="SelectedDate" />
        <asp:ControlParameter ControlID="DropDownList1" Name="gfrom" PropertyName="SelectedValue" DefaultValue="1000" />
    </SelectParameters>
</asp:SqlDataSource>
    </asp:Content>
