<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/2backend/NestedMasterPageBudgetAccoumting.master" AutoEventWireup="true" CodeBehind="bacl.aspx.cs" Inherits="lhbversion10.Pages.Specific._2backend.bacl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    <table>
        <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction_Date" SortExpression="Transaction_Date" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Transaction_Description" HeaderText="Transaction_Description" SortExpression="Transaction_Description" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Credited_To" HeaderText="Credited_To" SortExpression="Credited_To" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT Transaction_Date, Type, Transaction_Description, Amount, Credited_To FROM Accounting WHERE (Credited_To = @Credited_To) AND (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1000" Name="Credited_To" Type="Int32" />
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS Total FROM [Accounting] WHERE ([Credited_To] = 1000)  AND (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td><td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction_Date" SortExpression="Transaction_Date" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Transaction_Description" HeaderText="Transaction_Description" SortExpression="Transaction_Description" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Debited_From" HeaderText="Debited_From" SortExpression="Debited_From" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Transaction_Date], [Type], [Transaction_Description], [Amount], [Debited_From] FROM [Accounting] WHERE ([Debited_From] = @Debited_From) AND (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1000" Name="Debited_From" Type="Int32" />
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT SUM(Amount) AS Total FROM [Accounting] WHERE ([Debited_From] = 1000) AND (Transaction_Date &gt;= @FromD AND Transaction_Date &lt;= @ToD)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DefaultValue="" Name="FromD" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="ToD" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        </tr>
        <tr>
            <td align="right" style="height: 23px">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        Total:
                        <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td><td align="right" style="height: 23px">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4">
                    <ItemTemplate>
                        Total:
                        <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>FROM DATE<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" SelectedDate="2000-01-01" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar></td>
            <td> TO DATE<asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" SelectedDate="2030-12-31" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar></td>
        </tr>
    </table>
    </asp:Content>
