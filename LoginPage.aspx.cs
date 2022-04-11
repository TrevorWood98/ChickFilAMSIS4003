using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ChickFilAMSIS4003
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonSubmitbtn_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //System.Data, System.Data.SQLClient, System.Configuration
                string strConn = ConfigurationManager.ConnectionStrings["Chick-Fil-A Class ProjectConnectionString"].ToString();
                using (SqlConnection sqlConn = new SqlConnection(strConn))
                {
                    SqlDataAdapter sqlDA = new SqlDataAdapter("spSelectUserByCredentials", sqlConn);
                    sqlDA.SelectCommand.CommandType = CommandType.StoredProcedure;

                    //USERNAME
                    SqlParameter LoginUsername = new SqlParameter("@username", tboxUsername.Text);
                    LoginUsername.Direction = ParameterDirection.Input;
                    LoginUsername.DbType = DbType.String;
                    sqlDA.SelectCommand.Parameters.Add(LoginUsername);

                    //PASSWORD
                    SqlParameter LoginPassword = new SqlParameter("@userpassword", tboxPassword.Text);
                    LoginPassword.Direction = ParameterDirection.Input;
                    LoginPassword.DbType = DbType.String;
                    sqlDA.SelectCommand.Parameters.Add(LoginPassword);

                    //Dataset for results of stored procedure
                    DataSet ds = new DataSet();

                    sqlDA.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        User currentuser = new User();

                        currentuser.UserID = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);
                        Session["UserID"] = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"]);
                        currentuser.Username = ds.Tables[0].Rows[0]["UserName"].ToString();
                        currentuser.FirstName = ds.Tables[0].Rows[0]["FirstName"].ToString();
                        currentuser.LastName = ds.Tables[0].Rows[0]["LastName"].ToString();
                        currentuser.Address1 = ds.Tables[0].Rows[0]["Address1"].ToString();
                        currentuser.Address2 = ds.Tables[0].Rows[0]["Address2"].ToString();
                        currentuser.City = ds.Tables[0].Rows[0]["City"].ToString();
                        currentuser.StateID = Convert.ToInt32(ds.Tables[0].Rows[0]["StateID"].ToString());
                        currentuser.Zipcode = ds.Tables[0].Rows[0]["Zipcode"].ToString();
                        currentuser.RecoveryEmail = ds.Tables[0].Rows[0]["RecoveryEmail"].ToString();


                        Session["CurrentUser"] = currentuser;

                        if (Session["LoginStatus"] != null)
                        {
                            Response.Redirect("Modify.aspx");
                        }

                        else
                        {
                            Response.Redirect("Login.aspx");
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Login credentials are invalid, Please try again.";
                    }
                }
            }
        }
    }
}