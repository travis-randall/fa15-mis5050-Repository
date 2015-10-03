<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advanced_Controls.aspx.cs" Inherits="Advanced_Controls_Advanced_Controls" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="Ads" runat="server" AdvertisementFile="~/Advanced_Controls/ads/MyAds.xml" Target="_blank" KeywordFilter="" OnAdCreated="Ads_AdCreated"/>
        <asp:HyperLink ID="lnkBanner" runat="server"></asp:HyperLink>
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </div>
        <asp:Label ID="lbl" runat="server"></asp:Label>
    </form>
</body>
</html>
