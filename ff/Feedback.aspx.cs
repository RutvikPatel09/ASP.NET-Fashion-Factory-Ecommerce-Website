using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ff
{
    public partial class Feedback1 : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label5.Text = Session["username"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
                Label5.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label5.Text = "You can login here...";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Feedback.aspx");
            Label5.Text = "You have logged out successfully";

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Feedback" + "(FirstName,LastName,Email,Message) values(@Fname,@Lname,@Email,@Message)", con);
            cmd.Parameters.AddWithValue("@Fname", Fname.Text);
            cmd.Parameters.AddWithValue("@Lname", Lname.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@Message", msg.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            //Label1.Text = "Feedback Submited Successfully.";
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
            Fname.Text = "";
            Lname.Text = "";
            email.Text = "";
            msg.Text = "";
        }
    }
}