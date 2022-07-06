<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="VenturasApp.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lblTitle" runat="server" Text="Add New Category" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">
                <asp:Label ID="lblName" runat="server" Text="Category Name"></asp:Label>
            </td>
            <td style="width: 327px">
                <asp:TextBox ID="txtName" runat="server" Width="211px"></asp:TextBox>
            </td>
            <td colspan="2" rowspan="10">
                <asp:GridView ID="dgViewCat" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="232px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="404px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 305px">
                <asp:Label ID="lblCatID" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="width: 327px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 305px">&nbsp;</td>
            <td style="width: 327px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
