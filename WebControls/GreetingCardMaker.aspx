<%@ Page language="c#" Inherits="GreetingCardMaker.GreetingCardMaker" CodeFile="GreetingCardMaker.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Greeting Card Maker</title>
    </head>
	<body>
		<form runat="server">
		  <div>
			<div style="BORDER-RIGHT: thin ridge; PADDING-RIGHT: 20px; BORDER-TOP: thin ridge; PADDING-LEFT: 20px; FONT-SIZE: x-small; PADDING-BOTTOM: 20px; BORDER-LEFT: thin ridge; WIDTH: 293px; PADDING-TOP: 20px; BORDER-BOTTOM: thin ridge; FONT-FAMILY: Verdana; HEIGHT: 486px; BACKGROUND-COLOR: lightyellow">Choose 
				a background color:<br />
				<asp:dropdownlist ID="lstBackColor" runat="server" Height="22px" Width="194px" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged">
                    <asp:ListItem Value="White">White</asp:ListItem>
                    <asp:ListItem Value="Red">Red</asp:ListItem>
                    <asp:ListItem Value="Green">Green</asp:ListItem>
                    <asp:ListItem Value="Blue">Blue</asp:ListItem>
                    <asp:ListItem Value="Yellow">Yellow</asp:ListItem>
				</asp:dropdownlist>
				<br /><br />
				Choose a font:<br />
				<asp:dropdownlist ID="lstFontName" runat="server" Height="22px" Width="194px" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:dropdownlist>
				<br /><br />
                From:<br />
                <asp:TextBox ID="senderName" runat="server" Height="22px" Width="200px" AutoPostBack="true" OnTextChanged="ControlChanged"></asp:TextBox>
				<br /><br />
                Specify a numeric font size:<br />
				<asp:textbox ID="txtFontSize" runat="server" AutoPostBack="true" OnTextChanged="ControlChanged"></asp:textbox>
				<br /><br />
				Choose a border style:<br />
				<asp:radiobuttonlist ID="lstBorder" runat="server" Height="59px" Width="177px" Font-Size="X-Small" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:radiobuttonlist>
				<br /><br />
				<asp:checkbox ID="chkPicture" runat="server" Text="Add the Default Picture" OnCheckedChanged="showPicDrop" AutoPostBack="true"></asp:checkbox><br />
                <asp:ListBox ID="PicDrop" runat="server" Height="90px" Width="194px" Visible="false" SelectionMode="multiple" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:ListBox>
				<br /><br />
				Enter the greeting text below:<br />
				<asp:textbox ID="txtGreeting" runat="server" Height="85px" Width="240px" TextMode="MultiLine" AutoPostBack="true" OnTextChanged="ControlChanged"></asp:textbox>
				<br /><br />
				<asp:button ID="cmdUpdate" runat="server" Height="24px" Width="71px" Text="Update" onclick="cmdUpdate_Click"></asp:button>
			</div>
			<asp:panel ID="pnlCard" style="Z-INDEX: 101; LEFT: 350px; POSITION: absolute; TOP: 16px" runat="server" 
			Height="507px" Width="339px" HorizontalAlign="Center"><br />&nbsp; 
			    <asp:Label ID="lblGreeting" runat="server" Height="150px" Width="256px"></asp:Label><br />
                <asp:Label ID="lblSenderName" runat="server" Height="150px" Width="256px"></asp:Label>
			    <br /><br /><br />
			    <!--<asp:Image ID="imgDefault" runat="server" Height="160px" Width="212px" Visible="False"></asp:Image>-->
		    </asp:panel>
	      </div>
		</form>
	</body>
</html>
