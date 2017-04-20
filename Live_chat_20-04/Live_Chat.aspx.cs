using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Live_Chat : System.Web.UI.Page
{
    public string email=null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (String.IsNullOrEmpty( email))
        
            
            try
            {
                MailMessage mail = new MailMessage();
               // mail.To.Add(email);
                mail.To.Add("gummadiharika58@gmail.com");
                mail.From = new MailAddress("120kbm@gmail.com");
                mail.Subject = "sub";

                mail.Body = "body";

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                smtp.Credentials = new System.Net.NetworkCredential
                     ("120kbm@gmail.com",TextBox1.Text); // ***use valid credentials***
                smtp.Port = 587;

                //Or your Smtp Email ID and Password
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
              Label2.Text=   ex.Message;
            }
        }
    }
