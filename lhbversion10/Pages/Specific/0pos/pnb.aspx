<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/0pos/Site2.Master" AutoEventWireup="true" CodeBehind="pnb.aspx.cs" Inherits="lhbversion10.Pages.Specific._0pos.pnb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    NEW BILL
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
        To<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Customer Id Required" ControlToValidate="DropDownList1" ForeColor="Red" ValidationGroup="cbill"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="ADD0" runat="server" Text="Create Bill" OnClick="ADD_Click" ValidationGroup="cbill" />
        <asp:Label ID="Label8" runat="server" Text="Product Id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product Id Required" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="cbill"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="ADD1" runat="server" Text="ADD ITEM" OnClick="ADD1_Click" ValidationGroup="additem" />
        <asp:Label ID="Label9" runat="server" Text="Product Id"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product Id Required" ValidationGroup="additem" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="bill">
            <div class="billto">
                <center><p>
                    <asp:Label ID="FromCompany" runat="server"></asp:Label><br />
                    ADDRESS :<asp:Label ID="Address" runat="server" Text=""></asp:Label><br />
                    Contact No.<asp:Label ID="Contact" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    GST NO<asp:Label ID="GNo" runat="server" Text=""></asp:Label>
                        </p>
                </center>
            </div>
            <div class="billto">
                <center><p>
                    Bill To:
                    <asp:Label ID="ToCustomer" runat="server" Text=""></asp:Label><br />
                    ADDRESS : <asp:Label ID="custadd" runat="server" Text=""></asp:Label><br />
                    Contact No. : <asp:Label ID="custmob" runat="server" Text=""></asp:Label>
                        </p>
                </center>
            </div>
            <div class="billBody">
        <asp:GridView ID="GridView1" runat="server" style="text-align:center;width:210mm;" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" >
            <Columns>
                <asp:BoundField DataField="SrNo" HeaderText="SrNo" />
                <asp:TemplateField HeaderText="ProductId">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text="ASTl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Batch">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Serial">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TAX">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cost">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
                </div>
            <div class="billfoot">

                Total :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Total" runat="server"></asp:Label>

            </div>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id] FROM [CustN]"></asp:SqlDataSource>
    </div>
    
    
</asp:Content>
