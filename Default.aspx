<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
   
   
   
   <!-- Headers and links to repository pages go here -->
   <h2>Sample</h2>
    <a href="Sample/Page1.aspx" target="_blank">Sample/Page1.aspx</a>
    <a href="Sample/Page2.aspx" target="_blank">Sample/Page2.aspx</a>

   <h2>C#</h2>
    <a href="C-Sharp/ProductCatalogTest.aspx" target="_blank">Product Catalog Test</a>
   
   <h2>Web Form Fundamentals</h2>
    <a href="WebForm/CurrencyConverter.aspx" target="_blank">Currency Converter</a>

   <h2>Web Controls</h2>
    <a href="WebControls/GreetingCardMaker.aspx" target="_blank">New Greeting Card Maker</a>
</asp:Content>
