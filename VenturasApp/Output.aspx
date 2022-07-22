<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="VenturasApp.Output" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div>
            <h2>Output Page</h2>
            <asp:Button ID="btnFilter" runat="server" Text="Click to Filter by Category" Width="173px" OnClick="btnFilter_Click" />
            <br />
            <br />
            <br />
            <asp:GridView ID="gvDT" runat="server" AutoGenerateColumns ="false" Width="391px" AllowPaging="True" OnPageIndexChanging="gvDT_PageIndexChanging">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="itemName" HeaderText="Item" SortExpression="itemName" />
                    <asp:BoundField DataField="itemExpDate" HeaderText="Expiry Date" SortExpression="itemExpDate" />
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
        </div>
</div>
</asp:Content>
