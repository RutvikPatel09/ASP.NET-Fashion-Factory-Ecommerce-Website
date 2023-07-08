using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ff
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

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
            Response.Redirect("Default.aspx");
            Label5.Text = "You have logged out successfully";

        }

        protected void btn_pass_change_Click(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection(str);
            String myquery = "select * from Registration";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String pass;
            pass = ds.Tables[0].Rows[0]["Password"].ToString();
            scon.Close();
            if (pass == Old_Password.Text)
            {
                if (New_Password.Text == Confirm_Password.Text && New_Password.Text != "")
                {
                    String updatepass = "update Registration set Password='" + New_Password.Text + "' where Email='" + Session["username"] + "'";
                  
                    SqlConnection s = new SqlConnection(str);
                    s.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = updatepass;
                    cmd1.Connection = s;
                    cmd1.ExecuteNonQuery();
                    //Session.Abandon();
                    s.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
                    Old_Password.Text = "";
                    New_Password.Text = "";
                    Confirm_Password.Text = "";
                    //Response.Redirect("ChangePassword.aspx");
                }
                else
                {
                    msg.Text = "New Password and Re-enter Password Not Matched / BlankPassword Not Accepted";
                }
            }
            else
            {
                msg.Text = "Invalid Username or Password - Cannot Change Password with User Authentication";
            }
        }
    }
}