using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Configuration;

namespace ff
{
    public partial class Register : System.Web.UI.Page
    {
        static String activationcode;
        string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkemail() == true)
            {
                Label3.Text = "Your Email Already Registered with Us";


            }
            else
            {
                Random random = new Random();
                activationcode = random.Next(1001, 9999).ToString();

                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Registration" + "(Fname,Lname,Email,Gender,Address,Phone,Password,Status,activationcode) values(@Fname,@Lname,@Email,@Gender,@Address,@Phone,@Password,@Status,@activationcode)", con);
                cmd.Parameters.AddWithValue("@Fname", Fname.Text);
                cmd.Parameters.AddWithValue("@Lname", Lname.Text);
                cmd.Parameters.AddWithValue("@Email", Email.Text);
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Address", Address.Text);
                cmd.Parameters.AddWithValue("@Phone", Phone.Text);
                cmd.Parameters.AddWithValue("@Password", pass.Text);
                cmd.Parameters.AddWithValue("@Status", "Unverified");
                cmd.Parameters.AddWithValue("@activationcode", activationcode);
                cmd.ExecuteNonQuery();
                con.Close();
                sendcode();
                Response.Redirect("ActivateEmail.aspx?emailadd=" + Email.Text);
                //Label1.Text = "Registered Successfully!!!";
            }
        }

        private void sendcode()
        {

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;

            smtp.Credentials = new System.Net.NetworkCredential("fashiofactory5708@gmail.com", "Patel@@9421");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Activation Code To Verify Email Address";
            msg.Body = "Dear " + Fname.Text + ",Your Activation Code is " + activationcode + "\n\n\nThanks & Regards\nFashion Factory Team";
            string toaddress = Email.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Fashion Factory<fashiofactory5708@gmail.com>";
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

        private Boolean checkemail()
        {
            Boolean emailavailable = false;
            String myquery = "Select * from Registration where Email='" + Email.Text + "'";
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
                emailavailable = true;

            }
            con.Close();

            return emailavailable;
        }


        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}