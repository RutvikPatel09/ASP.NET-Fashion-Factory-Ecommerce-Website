using paytm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ff
{
    public partial class PaytmPayment : System.Web.UI.Page
    {
		bool isTrue = false;

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

			if (Session["Orderid"] != null)
			{
				//string number = GenerateRandomeNumber(10);
				orderid.Text = Session["Orderid"].ToString();
				orderid.Enabled = false;
		    }
			if(Session["TotalPrice"] != null)
            {
				amount.Text = Session["TotalPrice"].ToString();
				amount.Enabled = false;
            }
			string cust_id = Get8Digits();
			customerid.Text = cust_id;
		    customerid.Enabled = false;

			SqlConnection con = new SqlConnection(str);
			con.Open();
			SqlCommand cmd = new SqlCommand("Select Fname,Address,Phone from Registration where Email =  '" + Session["username"] + "'",con);
			SqlDataReader da = cmd.ExecuteReader();
			while(da.Read())
            {
					Name.Text = da["Fname"].ToString();
					Address.Text = da["Address"].ToString();
					Phone.Text = da["Phone"].ToString();
					Email.Text = Session["username"].ToString();
				    Session["address"]  = Address.Text;
					Name.Enabled = false;
					Phone.Enabled = false;
					Email.Enabled = false;
			}
			
			con.Close();



		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("PaytmPayment.aspx");
			Label5.Text = "You have logged out successfully";

		}

		private string Get8Digits()
        {
			var bytes = new byte[4];
			var rng = RandomNumberGenerator.Create();
			rng.GetBytes(bytes);
			uint random = BitConverter.ToUInt32(bytes, 0) % 100000000;
			return String.Format("{0:D4}", random);
            throw new NotImplementedException();
        }

        
        protected void btn_Register_Click(object sender, EventArgs e)
        {
			if (Session["buyitems"] != null && Session["Orderid"] != null)
			{
				DataTable dt = (DataTable)Session["buyitems"];
				for (int i = 0; i <= dt.Rows.Count - 1; i++)
				{
					SqlConnection con = new SqlConnection(str);

					string pId = dt.Rows[i]["pid"].ToString();
					int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
					SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity from Product1 where ProductId='" + pId + "'", con);
					DataTable dtble = new DataTable();
					sda.Fill(dtble);
					int quantity = Convert.ToInt16(dtble.Rows[0][0]);
					if (quantity > 0)
					{
						//SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = Rutvik; Integrated Security = True");
						
						con.Open();
						SqlCommand cmd = new SqlCommand("insert into OrderDetails(orderid,sno,productid,productname,price,quantity,orderdate,status,email) values('" + Session["Orderid"] + "','" + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["pid"] + "','" + dt.Rows[i]["pname"] + "','" + dt.Rows[i]["pprice"] + "','" + dt.Rows[i]["pquantity"] + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "','pending','" + Session["username"].ToString() + "')", con);
						cmd.ExecuteNonQuery();
						con.Close();
					}
				}
				decreaseQuantity();
				clearCart();
				Session["buytems"] = null;
				//Response.Redirect("Pdf_generate.aspx");
			}
			else
			{
				Response.Redirect("AddtoCart.aspx");
			}

			

			String merchantKey = "&XxR9v4PC@hh0jsq";
			Dictionary<string, string> parameters = new Dictionary<string, string>();
			parameters.Add("MID", "GYNgvk31896355375344");
			parameters.Add("CHANNEL_ID", "WEB");
			parameters.Add("INDUSTRY_TYPE_ID", "Retail");
			parameters.Add("WEBSITE", "WEBSTAGING");
			parameters.Add("EMAIL", Email.Text);
			parameters.Add("MOBILE_NO", Phone.Text);
			parameters.Add("CUST_ID", customerid.Text);
			parameters.Add("ORDER_ID", orderid.Text);
			parameters.Add("TXN_AMOUNT", amount.Text);
			parameters.Add("CALLBACK_URL", "http://localhost:52122/PaytmCallBack.aspx"); //This parameter is not mandatory. Use this to pass the callback url dynamically.
			string checksum = CheckSum.generateCheckSum(merchantKey, parameters);
			string paytmURL = "https://securegw-stage.paytm.in/order/process?orderid=" + orderid.Text;
			string outputHTML = "<html>";
			outputHTML += "<head>";
			outputHTML += "<title>Merchant Check Out Page</title>";
			outputHTML += "</head>";
			outputHTML += "<body>";
			outputHTML += "<center>Please do not refresh this page...</center>"; //you can put h1 tag here
			outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
			outputHTML += "<table border='1'>";
			outputHTML += "<tbody>";
			foreach (string key in parameters.Keys)
			{
				outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
			}
			outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
			outputHTML += "</tbody>";
			outputHTML += "</table>";
			outputHTML += "<script type='text/javascript'>";
			outputHTML += "document.f1.submit();";
			outputHTML += "</script>";
			outputHTML += "</form>";
			outputHTML += "</body>";
			outputHTML += "</html>";
			Response.Write(outputHTML);
			
		}
		public void decreaseQuantity()
		{
			DataTable dt = (DataTable)Session["buyitems"];
			for (int i = 0; i <= dt.Rows.Count - 1; i++)
			{
				SqlConnection con = new SqlConnection(str);

				int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
				int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
				SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity from Product1 where ProductId='" + pId + "'", con);
				DataTable dtble = new DataTable();
				sda.Fill(dtble);
				int quantity = Convert.ToInt16(dtble.Rows[0][0]);

				if (quantity > 0)
				{
					int reducedQuantity = quantity - pQuantity;
					con.Open();
					SqlCommand cmd = new SqlCommand("Update Product1 set Pquantity='" + reducedQuantity + "' where ProductId='" + pId + "'", con);
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
			if (Session["username"] != null)
			{
				DataTable dt = (DataTable)Session["buyitems"];
				for (int i = 0; i <= dt.Rows.Count - 1; i++)
				{
					SqlConnection con = new SqlConnection(str);

					int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
					con.Open();
					SqlCommand cmd = new SqlCommand("Delete from CartDetails where ProductId='" + pId + "' and Email='" + Session["username"] + "'", con);
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