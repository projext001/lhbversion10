<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/0pos/Site2.Master" AutoEventWireup="true" CodeBehind="pnb.aspx.cs" Inherits="lhbversion10.Pages.Specific._0pos.pnb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    NEW BILL
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
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
        </asp:GridView>
    </div>
    <asp:Button ID="ADD0" runat="server" Text="ADD ITEM" OnClick="ADD_Click" />
    <asp:Button ID="ADD1" runat="server" Text="ADD ITEM" OnClick="ADD1_Click" />
</asp:Content>
