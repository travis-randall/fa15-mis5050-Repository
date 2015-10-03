using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CurrencyConverter : System.Web.UI.Page {
    protected void Page_Load(Object sender, EventArgs e) {
        if (this.IsPostBack == false) {
            Currency.Items.Add(new ListItem("Euro", "0.85"));
            Currency.Items.Add(new ListItem("Japanese Yen", "110.33"));
            Currency.Items.Add(new ListItem("Canadian Dollar", "1.2"));

            Graph.Visible = false;
        }
    }

    protected void ShowGraph_ServerClick(Object sender, EventArgs e) {
        Graph.Src = "Pic" + Currency.SelectedIndex.ToString() + ".png";
        Graph.Visible = true;
    }

    protected void Convert_ServerClick(object sender, EventArgs e) {
        decimal USAmount;

        //Attempt the conversion
        bool success = Decimal.TryParse(US.Value, out USAmount);

        if (success) {
            // The conversion succeeded.
            decimal convertAmount = USAmount * Decimal.Parse(Currency.Items[Currency.SelectedIndex].Value);
            Result.InnerText = USAmount.ToString() + " U.S. Dollars = ";
            Result.InnerText += convertAmount.ToString() + " " + Currency.Items[Currency.SelectedIndex].ToString();
        } else {
            // The conversion failed.
            Result.InnerText = "The number you typed in was not in the " +
                "correct format. Use only numbers.";
        }
    }

    protected void Redirect_ServerClick(object sender, EventArgs e) {
        Response.Redirect("SecondPage.aspx");
    }

    protected void Transfer_ServerClick(object sender, EventArgs e) {
        Server.Transfer("SecondPage.aspx");
    }
}