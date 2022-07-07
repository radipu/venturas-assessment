<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calender.aspx.cs" Inherits="VenturasApp.Calender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Calender<br />
            <br />
            <asp:TextBox ID="TextBox1" type="date" runat="server"></asp:TextBox>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>
    </form>
</body>
</html>
