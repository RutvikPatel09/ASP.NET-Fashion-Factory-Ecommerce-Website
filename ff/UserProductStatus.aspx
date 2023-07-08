<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProductStatus.aspx.cs" Inherits="ff.UserProductStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link rel="stylesheet" href="assets/css/RecentOrder.css"/>

    <style>
        .progress{
            /*margin:300px auto;*/
        }
        ul{
            text-align:center;
        }

        ul li{
            display:inline-block;
            width:200px;
            position:relative;
        }
        ul li .fa{
            background:#ccc;
            width:16px;
            height:16px;
            color:white;
            border-radius:50%;
            padding:5px;
        }
        ul li .fa::after{
            content:'';
            background:#ccc;
            height:5px;
            width:205px;
            display:block;
            position:absolute;
            left:0;
            top:10px;
            z-index:-1;
        }
        ul li:nth-child(1) .fa{
            background:#148e14;
        }
        ul li:nth-child(1) .fa::after{
            background:#148e14;
        }
        ul li:first-child .fa::after{
            width:105px;
            left:100px;
        }
        ul li:last-child .fa:after{
            width:105px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
      <%--  <div align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <marquee direction="left" scrollamount='<%# val %>' runat="server">
                <center>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Delivery.png"></asp:Image>
                </center>
            </marquee>
            <hr style="color:#fdb801; border:solid;"/>
            &nbsp;&nbsp;&nbsp;<h1 style="color:#fdb801;">Recent Delivery Status</h1>
            <b>Order Id :</b><asp:Label ID="lblOrderID" runat="server" Text="Label" ForeColor="#9933FF" Font-Bold="true"></asp:Label>
        </div>
        <br />

        <div class="progress">
            <ul>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Dispatched</b></p>
                </li>
                  <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Delivered</b></p>
                </li>
             
            </ul>
        </div>

      <br /><br /><br />
        
        <div align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="White" ForeColor="White" NavigateUrl="~/UserProductList.aspx" BackColor="#009900" Font-Bold="true" Font-Size="Large">Want To Check All Ordered Products?</asp:HyperLink>
        </div>
        <br />

        <div align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" BackColor="DarkOrchid" Font-Bold="true" Font-Size="Large" ForeColor="WhiteSmoke" BorderColor="White">Back To Home Page</asp:HyperLink>
        </div>--%>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                  <div class="card">
    <div class="title">My Orders</div>
    <div class="info">
        <div class="row">
            <div class="col-7"> <span id="heading">Date</span><br> <span id="details"><asp:Label ID="Label4" runat="server" Text='<%# Eval("orderdate") %>'></asp:Label></span> </div>
            <div class="col-5 pull-right"> <span id="heading">Order No.</span><br> <span id="details"><asp:Label ID="Label3" runat="server" Text='<%# Eval("orderid") %>'></asp:Label></span> </div>
        </div>
    </div>
    <div class="pricing">
        <div class="row">
            <div class="col-9"> <span id="name"><asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label></span> </div>
            <div class="col-3"> <span id="price">&#8377; <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label></span> </div>
        </div>
        <div class="row">
            <div class="col-9"> <span id="name">Shipping</span> </div>
            <div class="col-3"> <span id="price">£33.00</span> </div>
        </div>
    </div>

    <div class="total">
        <div class="row">
            <div class="col-9"></div>
            <div class="col-3"><big>&#8377; <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label></big></div>
        </div>
    </div>
    <div class="tracking">
        <div class="title">Tracking Order</div>
        
    </div>
              <div class="check_status">
                  <asp:Label ID="Label6" runat="server" Text='<%# Eval("status") %>'></asp:Label>
              </div>
    <%--<div class="progress-track">
        <ul id="progressbar">
            <li class="step0 active " id="step1">Ordered</li>
            <li class="step0 active text-center" id="step2">Shipped</li>
            <li class="step0 active text-right" id="step3">On the way</li>
            <li class="step0 text-right" id="step4">Delivered</li>
            
        </ul>
    </div>--%>

           <%--                   <div class="progress">
            <ul>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Dispatched</b></p>
                </li>
                  <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Delivered</b></p>
                </li>
             
            </ul>
        </div>--%>


    <div class="footer">
        <div class="row">
            <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/YBWc55P.png"></div>
            <div class="col-10">Want any help? Please &nbsp;<a> contact us</a></div>
        </div>
    </div>
</div>
            </ItemTemplate>
        </asp:DataList>
      
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RutvikConnectionString %>" SelectCommand="SELECT [orderid], [productname], [price], [orderdate], [status] FROM [OrderDetails] WHERE ([email] = @email)">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>
