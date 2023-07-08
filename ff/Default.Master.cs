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
    public partial class Default : System.Web.UI.MasterPage
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


            //Counting no. of products in cart
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label2.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label2.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
            Label5.Text = "You have logged out successfully";

        }


        //protected void Timer1_Tick1(object sender, EventArgs e)
        //{

        //    Random ran = new Random();
        //    int i = ran.Next(0, 5);
        //    Image2.ImageUrl = "~/img/" + i.ToString() + ".jpg";
        //}


        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddtoCart.aspx");
        }


        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {
            if (Session["username"] != null)
            {
                string userId = Session["username"].ToString();
                SqlConnection con = new SqlConnection(str);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from OrderDetails where email='" + userId + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("UserProductStatus.aspx");
                }
               
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}