using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ff
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String password;
            String myquery = "Select * from Registration where Fname ='" + Name.Text + "' and Email='" + Email.Text + "'";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";

                password = ds.Tables[0].Rows[0]["Password"].ToString();
                sendpassword(password, Email.Text);
                Label1.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";
                Label1.ForeColor = System.Drawing.Color.Green;
                Name.Text = "";
                Email.Text = "";

            }
            else
            {
                Label1.Text = "Your Username is Not Valid or Email Not Registered";

            }
            con.Close();

        }
        private void sendpassword(String password, String email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("fashiofactory5708@gmail.com", "Patel@@9421");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( Fashion Factory )";
            msg.Body = "Dear " + Name.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\nFashion Factory Team";
            string toaddress = Email.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Fashion Factory <fashiofactory5708@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }
    }
}