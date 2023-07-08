using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace ff
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
                if(Page.IsValid)
                { 
                        MailMessage mailMessage = new MailMessage();
                        mailMessage.From = new MailAddress("fashiofactory5708@gmail.com");
                        mailMessage.To.Add("fashiofactory5708@gmail.com");
                        //mailMessage.Subject = txtSubject.Text;
                        mailMessage.Body = "<b>Sender Name : </b>" + txtName.Text + "<br/>"
                            + "<b>Sender Email : </b>" + txtEmail.Text + "<br/>" 
                            + "<b>Comments : </b>" + txtComments.Text;
                        mailMessage.IsBodyHtml = true;

                        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com",587);
                        smtpClient.EnableSsl = true;
                        smtpClient.Credentials = new System.Net.NetworkCredential("fashiofactory5708@gmail.com", "Patel@@9421");
                        smtpClient.Send(mailMessage);

                        Label3.ForeColor = System.Drawing.Color.Green;
                        Label3.Text = "Thank You For Contacting Us";


                    //txtName.Enabled = false;
                    //txtSubject.Enabled = false;
                    //txtEmail.Enabled = false;
                    //txtComments.Enabled = false;
                    //Button1.Enabled = false;
                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtComments.Text = "";
                        

                 }
            }
            catch(Exception ex)
            {
                Label3.ForeColor = System.Drawing.Color.Green;
                Label3.ForeColor = System.Drawing.Color.Red;

                Label3.Text = "There is an unkhown problem. Please try later";

            }
        }
    }
}