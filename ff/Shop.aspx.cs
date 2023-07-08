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
    public partial class Product : System.Web.UI.Page
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


            if (!IsPostBack)
            {
                Drp_ProductCategory();
            }
        }
    
        protected void btnsearch_Click1(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where (Pname like '%" + TextBox1.Text + "%')", con);
            DataTable dt = new DataTable();

            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            //Redirect To Product Detail Page
            if (e.CommandName == "ViewPrdtDetail")
            {
                Response.Redirect("ProductDetails.aspx?id=" + e.CommandArgument.ToString());
            }

            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList2"));
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }

        //Display Product based on selected Category
        protected void ProductCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);

            string strQuery = "";
            string seletedProduct = ProductCategories.SelectedItem.Text;
            if (seletedProduct == "Product Category")
            {
                strQuery = "";
            }
            else
            {
                strQuery = "where Pcategory = '" + seletedProduct + "' ";
            }
            SqlDataAdapter sda = new SqlDataAdapter("select * from Product1 " + strQuery + " ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            try
            {
                if (seletedProduct == dt.Rows[0][6].ToString())
                {

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('No Product Found')</script>");
            }
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        //Display Product Categories in DropDownList
        public void Drp_ProductCategory()
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Category", con);
            ProductCategories.DataSource = cmd.ExecuteReader();
            ProductCategories.DataTextField = "CategoryName";
            ProductCategories.DataValueField = "CategoryId";
            ProductCategories.DataBind();
            ProductCategories.Items.Insert(0, "Product Category");
            con.Close();
        }

      
    }
}