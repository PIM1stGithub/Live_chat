using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Live_Chat_Design : System.Web.UI.Page
{
    private string email1 = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (String.IsNullOrEmpty(email1))


            try
            {
                MailMessage mail = new MailMessage();
                // mail.To.Add(email);
                mail.To.Add(email.Value);
                mail.From = new MailAddress("120kbm@gmail.com");
                mail.Subject = "Live chat registration";

                mail.Body = "Hi, Here you have to submit your details"+"< a href ="+ "Live_chat_Registration.aspx" +"></ a >";

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                smtp.Credentials = new System.Net.NetworkCredential
                     ("120kbm@gmail.com",passwords.Text); // ***use valid credentials***
                smtp.Port = 587;
                smtp.Timeout = 10000;
                //Or your Smtp Email ID and Password
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }
    }
    
}
