<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advanced_Controls.aspx.cs" Inherits="Advanced_Controls_Advanced_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </div>
        <asp:Label ID="lbl" runat="server"></asp:Label>
    </form>
</body>
</html>
