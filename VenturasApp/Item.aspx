<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="VenturasApp.Item" %>
<% @Import Namespace="System.Globalization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="height: 343px">
        <tr>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblTitle" runat="server" Text="Add Item"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 248px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">
                <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    <asp:ListItem>Choose a category</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="modal-sm" style="width: 248px">&nbsp;</td>
            <td colspan="2" rowspan="11">
                <asp:GridView ID="dgViewItem" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="291px" Width="535px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="itemName" HeaderText="itemName" SortExpression="itemName" />
                        <asp:BoundField DataField="itemCategory" HeaderText="itemCategory" SortExpression="itemCategory" />
                        <asp:BoundField DataField="itemExpDate" HeaderText="itemExpDate" SortExpression="itemExpDate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td class="modal-sm" style="width: 248px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblItemName" runat="server" Text="Item Name"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 248px">
                <asp:TextBox ID="txtName" runat="server" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblCat" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 248px">
                <asp:TextBox ID="txtCat" runat="server" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblDate" runat="server" Text="Expiry Date"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 248px">
                <asp:TextBox ID="txtExp" runat="server" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td class="modal-sm" style="width: 248px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">
                <asp:Label ID="lblItemId" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 248px">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td class="modal-sm" style="width: 248px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td class="modal-sm" style="width: 248px">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td class="modal-sm" style="width: 248px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 215px">&nbsp;</td>
            <td class="modal-sm" style="width: 248px">&nbsp;</td>
        </tr>
    </table>
    <%--<div class="row">
        <div>
            <h2>Item Page</h2>
            <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Pages
                        <span class="caret"></span></button>
                </div><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Save" />
            <asp:Button ID="Button2" runat="server" Text="Update" />
        </div>--%>
        
        <script runat="server">
            public void Page_Load()
            {
                Response.Write("Current culture is "+ CultureInfo.CurrentCulture.EnglishName);
            }
        </script>
</asp:Content>
