using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;

namespace ChickFilAMSIS4003
{
    public partial class HomePage : System.Web.UI.Page
    {

        Hashtable HolidayList;

        protected void Page_Load(object sender, EventArgs e)
        {
            HolidayList = Getholiday();
            Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
            Calendar1.NextPrevFormat = NextPrevFormat.FullMonth;
            Calendar1.TitleFormat = TitleFormat.MonthYear;
            Calendar1.ShowGridLines = true;
            Calendar1.DayStyle.Height = new Unit(50);
            Calendar1.DayStyle.Width = new Unit(50);
            Calendar1.DayStyle.HorizontalAlign = HorizontalAlign.Center;
            Calendar1.DayStyle.VerticalAlign = VerticalAlign.Middle;
            Calendar1.OtherMonthDayStyle.BackColor = System.Drawing.Color.AliceBlue;
        }


        private Hashtable Getholiday()
        {
            Hashtable holiday = new Hashtable();
            holiday["1/1/2021"] = "Happy New Year!";
            holiday["3/26/2021"] = "BancFirst in Stillwater";
            holiday["4/1/2021"] = "Ponca City, Oklahoma!";
            holiday["5/1/2021"] = "BancFirst, Stillwater OK";
            holiday["5/6/2021"] = "Oklahoma State University";
            holiday["5/11/2021"] = "Ponca City, Oklahoma at Central Fare";
            holiday["5/15/2021"] = "Perry at 848 Elm St";
            holiday["5/24/2021"] = "Cushing in the Atwood’s parking lot";
            holiday["5/26/2021"] = "Perkins at Stroud National Bank";
            return holiday;
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {


            lblCalendar.Text = "Date changed to :" + Calendar1.SelectedDate.ToShortDateString();

        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            lblCalendar.Text = "Month changed to :" + e.NewDate.ToShortDateString();
        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (HolidayList[e.Day.Date.ToShortDateString()] != null)
            {
                Literal literal1 = new Literal();
                literal1.Text = "<br/>";
                e.Cell.Controls.Add(literal1);
                Label label1 = new Label();
                label1.Text = (string)HolidayList[e.Day.Date.ToShortDateString()];
                label1.Font.Size = new FontUnit(FontSize.XXSmall);
                e.Cell.Controls.Add(label1);
            }
        }
    }
}