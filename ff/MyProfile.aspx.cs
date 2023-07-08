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
    public partial class MyProfile : System.Web.UI.Page
    {
		string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
        {
			if (Session["username"] == null)
			{
				Response.Redirect("Login.aspx");
			}



            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Fname,Lname,Phone,Gender,Address from Registration where Email =  '" + Session["username"] + "'", con);
            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                first_name.Text = da["Fname"].ToString();
                last_name.Text = da["Lname"].ToString();
                phone.Text = da["Phone"].ToString();
                gender.Text = da["Gender"].ToString();
                email.Text = Session["username"].ToString();
                location.Text = da["Address"].ToString();
                gender.Enabled = false;
            }

            con.Close();


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
			String updatepass = "update Registration set Fname='" + first_name.Text + "', Lname='" + last_name.Text + "', Phone='" + phone.Text + "', Email='" + email.Text + "', Address='" + location.Text + "' where Email='" + Session["username"] + "'";

			SqlConnection s = new SqlConnection(str);
			s.Open();
			SqlCommand cmd1 = new SqlCommand();
			cmd1.CommandText = updatepass;
			cmd1.Connection = s;
			cmd1.ExecuteNonQuery();
			//Session.Abandon();
			s.Close();
			ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
		

		}
	}
}