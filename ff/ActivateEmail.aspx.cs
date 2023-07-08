using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ff
{
    public partial class ActivateEmail : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String myquery = "Select * from Registration where Email='" + Request.QueryString["emailadd"] + "'";
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
                String activationcode;
                activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
                if (activationcode == TextBox1.Text)
                {
                    changestatus();
                    Label4.Text = "Your Email Has Been Verified Succesfully";
                    Session["username"] = Request.QueryString["emailadd"];
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label4.Text = "You Have Entered Invalid Activation Code, Kindly Check Your Mail Inbox";
                }
            }
            con.Close();
        }
        private void changestatus()
        {
            String updatedata = "Update Registration set status='Verified' where Email='" + Request.QueryString["emailadd"] + "'";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

    }
}