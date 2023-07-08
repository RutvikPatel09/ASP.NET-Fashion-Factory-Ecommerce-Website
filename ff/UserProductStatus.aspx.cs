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
    public partial class UserProductStatus : System.Web.UI.Page
    {
        public int val;

        public void Page_Init(object sender,EventArgs e)
        {
            if(!IsPostBack)
            {
                //Status();
                //DataBind(); //To Bind the Marquee repetation value
            }
        }

        SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Rutvik; Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Status()
        {
        //    if(Session["username"] == null)
        //    {
        //        Response.Redirect("Login.aspx");
        //    }
        //    else
        //    {
                string status = "";
            //        string orderId = "";
            //        string userid = Session["username"].ToString();
            //SqlDataAdapter sda = new SqlDataAdapter("Select * from OrderDetails inner join (Select max(orderdate) as LatestDate,email as userid from OrderDetails Group by email) SubMax on OrderDetails.orderdate = SubMax.LatestDate and OrderDetails.email = SubMax.userid where email = '" + userid + "'",con);
            SqlDataAdapter sda = new SqlDataAdapter("select status from OrderDetails where email='" + Session["username"] + "'",con);    
            DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count > 1)
                {
        //            orderId = dt.Rows[0][0].ToString();
                    status = dt.Rows[0][7].ToString();
        //            lblOrderID.Text = orderId;
        //            val = 25;
        //            SqlDataAdapter sda1 = new SqlDataAdapter("Select * from OrderDetails where email = '" + userid + "'",con);
        //            DataTable dt1 = new DataTable();
        //            sda1.Fill(dt1);
        //            if(dt.Rows.Count > 1)
        //            {
        //                //HyperLink1.Visible = true;
        //            }
        //            else
        //            {
        //                //HyperLink1.Visible = false;
        //            }
                 }
        //        else
        //        {
        //            Response.Redirect("Default.aspx");
        //        }
               if(status == "Completed")
                {
                    //val = 0;
                    Page.Header.Controls.Add(new System.Web.UI.LiteralControl("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + ResolveUrl("~/StatusStyle.css") + "\" />"));
                    
                }
            }
        }

    //}
}