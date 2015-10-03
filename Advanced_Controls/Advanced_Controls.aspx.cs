using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advanced_Controls_Advanced_Controls : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e) {
        //extract the date being rendered
        DateTime renderedDay = e.Day.Date;

        //check to see if the day and the month of the renderedDay maatch my birthday
        if (e.Day.Date.Month == 3 && e.Day.Date.Day == 28) {
            //instantiate a new label
            Label l = new Label();
            //set the text of the label
            l.Text = "<br />Happy Birthday Travis!";
            //Happy birthday to me!
            e.Cell.Controls.Add(l);
        }

        //check to see if the day and the month of the renderedDay maatch my birthday
        if (e.Day.Date.Month == 1 && e.Day.Date.Day == 25) {
            //instantiate a new label
            Label l = new Label();
            //set the text of the label
            l.Text = "<br />Happy Birthday Andrew!";
            //Happy birthday to me!
            e.Cell.Controls.Add(l);
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e) {
        //figure out which date was selected
        DateTime SelectedDate = Calendar1.SelectedDate;

        //Report to the user which date they selected
        lbl.Text = "You selected " + SelectedDate.ToLongDateString();

        //call the compare dates method passing in the values required
        CompareDates("Travis", 3, 28, SelectedDate);
        //don't forget Andy
        CompareDates("Andy", 1, 25, SelectedDate);


    }

    private void CompareDates(string name, int month, int day, DateTime SelectedDate) {
        //create a DateTime object that is my birthday in the year selected
        DateTime myBirthDay = new DateTime(SelectedDate.Year, 3, 28);


        if (SelectedDate < myBirthDay) {
            lbl.Text += "<br />This date is before " + name + "Travis's Birthday";

        }
        else if (SelectedDate > myBirthDay) {
            lbl.Text += "<br />This date is after Travis's Birthday";

        }
        else {
            lbl.Text += "<br />Party Time";
        }

        if (SelectedDate < myBirthDay) {
            lbl.Text += "<br />This date is before " + name + "Travis's Birthday";

        }
        else if (SelectedDate > myBirthDay) {
            lbl.Text += "<br />This date is after Travis's Birthday";

        }
        else {
            lbl.Text += "<br />Party Time";
        }
    }
}
