<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Venturas._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div>
            <h2>Item Page</h2>
            <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Pages
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a runat="server" href="~/">Category</a></li>
                        <li><a runat="server" href="~/About">Item</a></li>
                        <li><a runat="server" href="~/Contact">Output</a></li>
                    </ul>
                </div><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Save" />
            <asp:Button ID="Button2" runat="server" Text="Update" />
        </div>

</asp:Content>
