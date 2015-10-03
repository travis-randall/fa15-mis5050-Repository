<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FooterHost.aspx.cs" Inherits="UCMP_FooterHost" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src ="Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Footer Host</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>A Page With a Footer</h1><hr />
        Static Page with Text<br /><br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true">
            <asp:ListItem>Short Time</asp:ListItem>
            <asp:ListItem>Long Date</asp:ListItem>
        </asp:RadioButtonList><br />
        <uc1:Footer ID="Footer1" runat="server" />
    </div>
    </form>
</body>
</html>
