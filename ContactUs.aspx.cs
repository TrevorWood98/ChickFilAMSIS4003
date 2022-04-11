using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace ChickFilAMSIS4003
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonSubmitbtn_Click(object sender, EventArgs e)
        {
            //Chickfilastillwater01!
            string emailFirst = tboxFirstName.Text;
            string emailLast = tboxLastName.Text;
            string emailMessage = tboxComment.Text;
            string emailSenderemail = tboxEmailAddress.Text;
            string toEmail = "chickfilastillwater01@gmail.com";

            MailAddress fromAddress = new MailAddress("chickfilastillwater01@gmail.com");
            MailAddress toAddress = new MailAddress(toEmail);

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("chickfilastillwater01@gmail.com", "Chickfilastillwater01!");

            MailMessage message = new MailMessage(fromAddress, toAddress);

            message.Subject = "Chick-Fil-a Stillwater Guest Comment from " + tboxFirstName.Text + " " + tboxLastName.Text;

            message.Body = tboxComment.Text;

            smtp.Send(message);

            tboxFirstName.Text = "";
            tboxLastName.Text = "";
            tboxComment.Text = "";
            tboxEmailAddress.Text = "";
            lblMessage.Text = "Thank you for your message. It has been successfully sent.";
        }
    }
}