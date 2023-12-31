﻿using System;
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
    public partial class AddtoCart : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RutvikConnectionString"].ConnectionString;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("Login.aspx");    
                }
               

                //Adding product to Gridview
                Session["addproduct"] = "false";
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



                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        SqlConnection conn = new SqlConnection(str);

                        dr = dt.NewRow();

                        SqlDataAdapter da = new SqlDataAdapter("select * from Product1 where ProductId=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];
                        dr["pcategory"] = ds.Tables[0].Rows[0]["Pcategory"].ToString();


                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);

                        conn.Open();
                        SqlCommand cmd = new SqlCommand("Insert into CartDetails values('" + dr["sno"] + "','" + dr["pid"] + "','" + dr["pname"] + "','" + dr["pdesc"] + "','" + dr["pimage"] + "','" + dr["pprice"] + "','" + dr["pquantity"] + "','" + dr["pcategory"] + "','" + Session["username"].ToString() + "')",conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("AddtoCart.aspx");
                    }
                    else
                    {
                        SqlConnection conn = new SqlConnection(str);

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                  

                        SqlDataAdapter da = new SqlDataAdapter("select * from Product1 where ProductId=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];
                        dr["pcategory"] = ds.Tables[0].Rows[0]["Pcategory"].ToString();

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);

                        conn.Open();
                        SqlCommand cmd = new SqlCommand("Insert into CartDetails values('" + dr["sno"] + "','" + dr["pid"] + "','" + dr["pname"] + "','" + dr["pdesc"] + "','" + dr["pimage"] + "','" + dr["pprice"] + "','" + dr["pquantity"] + "','" + dr["pcategory"] + "','" + Session["username"].ToString() + "')",conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("AddtoCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();

                    }
                }
            }
            if(GridView1.Rows.Count.ToString() == "0")
            {
                LinkButton1.Enabled = false;
                LinkButton1.ForeColor = System.Drawing.Color.White;
                Button1.Enabled = false;
                Button1.Text = "Oops";
            }
            else
            {
                LinkButton1.Enabled = true;
                Button1.Enabled = true;
            }
            orderid();

            int grandtotal()
            { 
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                int nrow = dt.Rows.Count;
                int i = 0;
                int totalprice = 0;
                while (i < nrow)
                {
                    int val = Convert.ToInt32(dt.Rows[i]["ptotalprice"].ToString()); ;
                    totalprice = totalprice + val;//Convert.ToInt32(dt.Rows[i]["ptotalprice"].ToString());

                    i = i + 1;
                    Session["TotalPrice"] = totalprice;
                }
                return totalprice;
            }

            void orderid()
            {
                String alpha = "abCdefghIjklmNopqrStuvwXyz123456789";
                Random r = new Random();
                char[] myArray = new char[5];
                for (int i = 0; i < 5; i++)
                {
                    myArray[i] = alpha[(int)(35 * r.NextDouble())];

                }
                String order_id;
                order_id =  DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                    + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                Session["Orderid"] = order_id;
            }



        }

      
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                TableCell prID = GridView1.Rows[e.RowIndex].Cells[1];

                if (sr == sr1)
                {
                    SqlConnection conn = new SqlConnection(str);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Delete from CartDetails where ProductId='" + prID.Text + "' and Email='" + Session["username"] + "' ", conn);
                    cmd.ExecuteNonQuery();
                    //dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    
                    conn.Close();
                    //Item Has Been Deleted From Shopping Cart
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("AddtoCart.aspx");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool isTrue = true;
            SqlConnection conn = new SqlConnection(str);

            DataTable dt = (DataTable)Session["buyitems"];
            for(int i = 0 ; i <= dt.Rows.Count - 1; i++)
            {

                int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
                int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
                SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity,Pname from Product1 where ProductId='" + pId + "'",conn);
                DataTable dtble = new DataTable();
                sda.Fill(dtble);
                int quantity = Convert.ToInt16(dtble.Rows[0][0]);
                Session["pid"] = pId;
                
                if(quantity == 0)
                {
                    string pName = dtble.Rows[0][1].ToString();
                    string msg = pName + "is not in Stock";
                    Response.Write("<script>alert('" + msg + "');</script>");
                    isTrue = false;
                }
          
            }
            if(GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('Your Cart is Empty. You cannot Place an Order');</script>");
            }
          
            else
            {
                
                if (isTrue ==  true)
                {
                
                    Response.Redirect("PaytmPayment.aspx");
                }
            }
        }

        public void clearCart()
        {
            SqlConnection conn = new SqlConnection(str);

            conn.Open();
            SqlCommand cmd = new SqlCommand("Delete from CartDetails where Email='" + Session["username"] + "'",conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("AddtoCart.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["buyitems"] = null;
            clearCart();
        }

    
    }


}