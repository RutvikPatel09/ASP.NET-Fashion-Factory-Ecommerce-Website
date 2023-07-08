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
using System.Threading;

namespace ff
{
    public partial class Login : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{ 
            //    if(Session["username"] != null)
            //    {
            //        Response.Redirect("Default.aspx");
            //    }
            //}

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
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Registration where Email='" + email.Text + "' and Password='" + pass.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
              
                Session["username"] = email.Text;
                Session["buyitems"] = null;
                fillsavedCart();
                Response.Redirect("Default.aspx");
              
                //Label1.Text = "Login Successfull!!!";
                //Label1.ForeColor = System.Drawing.Color.Green;

            }

            else if (email.Text == "Admin" & pass.Text == "123")
            {
                Session["admin"] = email.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else if (dt.Rows.Count == 0)
            {
                Label3.Text = "Please Fill Correct Username & Password!!!";
            }

            else
            {
                //Label1.Text = "Login Unsuccessfull!!!";
                //Label1.ForeColor = System.Drawing.Color.Red;
            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        private void fillsavedCart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("pid");
            dt.Columns.Add("pname");
            dt.Columns.Add("pimage");
            dt.Columns.Add("pdesc");
            dt.Columns.Add("pprice");
            dt.Columns.Add("pquantity");
            dt.Columns.Add("pcategory");
            dt.Columns.Add("ptotalprice");

            SqlConnection scon = new SqlConnection(str);
            String myQuery = "select * from CartDetails where Email='" + Session["username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myQuery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i + 1;
                    dr["pid"] = ds.Tables[0].Rows[i]["ProductId"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[i]["Pname"].ToString();
                    dr["pimage"] = ds.Tables[0].Rows[i]["Pimage"].ToString();
                    dr["pdesc"] = ds.Tables[0].Rows[i]["Pdesc"].ToString();
                    dr["pprice"] = ds.Tables[0].Rows[i]["Pprice"].ToString();
                    dr["pquantity"] = ds.Tables[0].Rows[i]["Pquantity"].ToString();
                    dr["pcategory"] = ds.Tables[0].Rows[i]["Pcategory"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[i]["pprice"].ToString());
                    int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["pquantity"].ToString());
                    int totalprice = price * quantity;
                    dr["ptotalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }
            }
            else
            {
                Session["buyitems"] = null;
            }
            Session["buyitems"] = dt;
        }
    }
}