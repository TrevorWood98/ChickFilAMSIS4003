using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;

namespace ChickFilAMSIS4003
{
    public partial class EventSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonSubmit_Click(object sender, EventArgs e)
        {
            //Connection to the database using credentials in web.config file
            string strConn = ConfigurationManager.ConnectionStrings["Chick-Fil-A Class ProjectConnectionString"].ToString();

            using (SqlConnection sqlconn = new SqlConnection(strConn))
            {
                SqlCommand Insertcmd = new SqlCommand("spInsertCaterRequest", sqlconn);
                Insertcmd.CommandType = CommandType.StoredProcedure;

                //Create a parameter for each control in the cater request table. 
                //Insertcmd.Parameters.AddWithValue("@CaterRequestID", Session["CaterRequestID"].ToString());
                Insertcmd.Parameters.AddWithValue("@FirstName", textboxFirstName.Text);
                Insertcmd.Parameters.AddWithValue("@LastName", textboxLastName.Text);
                Insertcmd.Parameters.AddWithValue("@EmailAddress", textboxEmail.Text);
                Insertcmd.Parameters.AddWithValue("@EventDate", textboxDate.Text);
                Insertcmd.Parameters.AddWithValue("@EventTime", textboxTime.Text);
                Insertcmd.Parameters.AddWithValue("@GuestCount", textboxCount.Text);
                Insertcmd.Parameters.AddWithValue("@LocationAddress1", textboxAddress1.Text);
                Insertcmd.Parameters.AddWithValue("@LocationAddress2", textboxAddress2.Text);
                Insertcmd.Parameters.AddWithValue("@City", textboxCity.Text);
                Insertcmd.Parameters.AddWithValue("@RequestStateID", ddlState.SelectedValue);
                Insertcmd.Parameters.AddWithValue("@ZipCode", textboxZip.Text);
                Insertcmd.Parameters.AddWithValue("@EventDetails", textboxDetails.Text);

                //Create an output Parameter to retrieve the assigned CaterRequestID.
                //SqlParameter CRIDOutput = new SqlParameter("CaterRequestID", SqlDbType.Int);
                //CRIDOutput.Direction = ParameterDirection.Output;
                //Insertcmd.Parameters.Add(CRIDOutput);

                sqlconn.Open();
                Insertcmd.ExecuteNonQuery();

                Response.Redirect("~/ConfirmationPage.aspx");
                //lblsubmit.Text = "Thank you for your request to book an event with us. We will review the details and reach out to you shortly.";
            }
        }
    }
}