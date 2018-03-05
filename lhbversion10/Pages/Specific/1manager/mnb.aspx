<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Specific/1manager/NestedMasterPageBill.master" AutoEventWireup="true" CodeBehind="mnb.aspx.cs" Inherits="lhbversion10.Pages.Specific._1manager.mnb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="innerbody" runat="server">
    <center>
        <asp:Label ID="Notice" runat="server" ForeColor="Red"></asp:Label>
    </center>
    <div>
        To<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Customer Id Required" ControlToValidate="DropDownList1" ForeColor="Red" ValidationGroup="cbill"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="ADD0" runat="server" Text="Create Bill" OnClick="ADD_Click" ValidationGroup="cbill" />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Button ID="ADD1" runat="server" Text="ADD ITEM" OnClick="ADD1_Click" ValidationGroup="additem" style="height: 26px" />
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Product Id"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product Id Required" ValidationGroup="additem" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="de" runat="server" OnClick="de_Click" Text="DELETE" />
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="RowNoToDelete"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="36px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Row No to delete" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <div class="bill">
            <div class="billto">
                <center>
                    <p>
                        <asp:Label ID="FromCompany" runat="server"></asp:Label>
                        <br />ADDRESS :<asp:Label ID="Address" runat="server" Text=""></asp:Label>
                        <br />Contact No.<asp:Label ID="Contact" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    GST NO<asp:Label ID="GNo" runat="server" Text=""></asp:Label>
                    </p>
                </center>
            </div>
            <div class="billto">
                <center>
                    <p>
                    Bill To:
                        <asp:Label ID="ToCustomer" runat="server" Text=""></asp:Label>
                        <br />ADDRESS : 
                        <asp:Label ID="custadd" runat="server" Text=""></asp:Label>
                        <br />Contact No. : 
                        <asp:Label ID="custmob" runat="server" Text=""></asp:Label>
                    </p>
                </center>
            </div>
            <table style="width:100%;font-family:Times New Roman;font-size:20px;font-weight:bolder;">
                <tr>
                    <TD>
                        <center>
                Invoice No :<asp:Label ID="Invoice" runat="server" Text=""></asp:Label>
                        </center>
                    </TD>
                    <TD>
                        <center>
                            Invoice Date<asp:Label ID="InvoiceDate" runat="server" Text=""></asp:Label>
                        </center>
                    </TD>
                </tr>
            </table>
            <div class="billBody">
                <asp:GridView ID="GridView1" runat="server" style="text-align:center;width:100%;" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:BoundField DataField="ProductId" HeaderText="ProductId"/>
                        <asp:BoundField DataField="Description" HeaderText="Description"/>
                        <asp:BoundField DataField="Batch" HeaderText="Batch"/>
                        <asp:BoundField DataField="Serial" HeaderText="Serial"/>
                        <asp:BoundField DataField="Type" HeaderText="Type"/>
                        <asp:BoundField DataField="TAX" HeaderText="TAX"/>
                        <asp:BoundField DataField="Cost" HeaderText="Cost"/>
                    </Columns>
                </asp:GridView>
                <br />
            </div>
            <div class="billfoot">
                <table cellspacing="1" cellpadding="1" style="font-size:20px;font-weight:bold;float:right;">
                    <tr>
                        <td>Total :</td>
                        <td>
                            <asp:Label ID="Total" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <asp:Button ID="calctotal" runat="server" Text="CalculateTotal" OnClick="calctotal_Click" ValidationGroup="calctotal" />
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save And Print" ValidationGroup="sp" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDBConnectionString %>" SelectCommand="SELECT [Id] FROM [CustN]"></asp:SqlDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="6000">
    </asp:Timer>
</asp:Content>
