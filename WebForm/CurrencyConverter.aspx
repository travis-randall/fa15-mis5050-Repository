<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrencyConverter.aspx.cs" Inherits="CurrencyConverter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
 "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Currency Converter</title>
  </head>
  <body>
    <form runat="server">
      <div>
          <div style="border-right: thin ridge; padding-right: 20px; border-top: thin ridge;
                padding-left: 20px; padding-bottom: 20px; border-left: thin ridge; width: 531px;
                padding-top: 20px; border-bottom: thin ridge; font-family: Verdana; height: 211px;
                background-color: #FFFFE8">
            Convert:&nbsp;
            <input type="text" ID="US" runat="server" />
              U.S. Dollars to 
            <select id="Currency" runat="server" />
            <br /><br />
            <input type="submit" value="OK" ID="Convert" runat="server" onserverclick="Convert_ServerClick"/>
            <input type="submit" value="Show Graph" id="ShowGraph" runat="server" onserverclick="ShowGraph_ServerClick" />
            <br /><br />
            <img id="Graph" src="" alt="Currency Graph" runat="server" />
              <br /><br />
            <p style="font-weight: bold" ID="Result" runat="server"></p>
          </div>
          <p>
              <a href="SecondPage.aspx" target="_blank">Link to Second Page.aspx</a>
              <input type="submit" value="Response.Redirect to SecondPage.aspx" runat="server" id="RedirBtn" onserverclick="Redirect_ServerClick" />
              <input type="submit" value="Server.Transfer to SecondPage.aspx" runat="server" id="xferBtn" onserverclick="Transfer_ServerClick" />
          </p>
      </div>
    </form>
  </body>
</html>
