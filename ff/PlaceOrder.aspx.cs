using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ff
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Rutvik; Integrated Security=True;");
        bool isTrue = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["username"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           if(Session["buyitems"] != null && Session["Orderid"] != null)
            {
                DataTable dt = (DataTable)Session["buyitems"];
                for(int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    string pId = dt.Rows[i]["pid"].ToString();
                    int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
                    SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity from Product1 where ProductId='" + pId + "'",con);
                    DataTable dtble = new DataTable();
                    sda.Fill(dtble);
                    int quantity = Convert.ToInt16(dtble.Rows[0][0]);
                    if(quantity > 0)
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into OrderDetails(orderid,sno,productid,productname,price,quantity,orderdate,status,email) values('" + Session["Orderid"] + "','" + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["pid"] + "','" + dt.Rows[i]["pname"] + "','" + dt.Rows[i]["pprice"] + "','" + dt.Rows[i]["pquantity"] + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "','pending','" + Session["username"].ToString() + "')",con);
                        con.Close();
                    }
                }
                decreaseQuantity();
                Payment();
                clearCart();
                Session["buytems"] = null;
                Response.Redirect("Pdf_generate.aspx");
            }
           else
            {
                Response.Redirect("AddtoCart.aspx");
            }
           
        }

        public void Payment()
        {
            if (isTrue == true)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into CardDetails" + "(Fname,Lname,CardNo,ExpirtDate,CVV,BillingAddr) values(@Fname,@Lname,@CardNo,@ExpiryDate,@CVV,@BillingAddr)", con);
                cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
                cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
                cmd.Parameters.AddWithValue("@CVV", TextBox5.Text);
                cmd.Parameters.AddWithValue("@BillingAddr", TextBox6.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Session["address"] = TextBox6.Text;
        }

        public void decreaseQuantity()
        {
            DataTable dt = (DataTable)Session["buyitems"];
            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
                int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
                SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity from Product1 where ProductId='" + pId + "'", con);
                DataTable dtble = new DataTable();
                sda.Fill(dtble);
                int quantity = Convert.ToInt16(dtble.Rows[0][0]);

                if(quantity > 0)
                {
                    int reducedQuantity = quantity - pQuantity;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update Product1 set Pquantity='" + reducedQuantity + "' where ProductId='" + pId + "'",con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    isTrue = false;
                }
            }
        }

        public void clearCart()
        {
            if(Session["username"] != null)
            {
                DataTable dt = (DataTable)Session["buyitems"];
                for(int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Delete from CartDetails where ProductId='" + pId + "' and Email='" + Session["username"] + "'",con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}