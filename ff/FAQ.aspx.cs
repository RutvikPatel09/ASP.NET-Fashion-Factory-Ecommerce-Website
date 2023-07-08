using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ff
{
    public partial class FAQ : System.Web.UI.Page
    {
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
            Response.Redirect("FAQ.aspx");
            Label5.Text = "You have logged out successfully";

        }
    }
}