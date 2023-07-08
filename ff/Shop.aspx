<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="ff.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charsetname="viewport" content="width=device-width", "initial-scale=1"/>
    <meta ="UTF-8">
<meta name="description" content="Fashi Template"/>
<meta name="keywords" content="Fashi, unica, creative, html"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="ie=edge"/>

      <link rel="stylesheet" href="FormDesign.css" type="text/css"/>  
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"/>
<link rel="stylesheet" href="css/themify-icons.css" type="text/css"/>
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css"/>
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css"/>
<link rel="stylesheet" href="css/nice-select.css" type="text/css"/>
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css"/>
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css"/>
<link rel="stylesheet" href="css/style.css" type="text/css"/>
<link rel="stylesheet" href="css/footer.css" type="text/css"/>
<link rel="stylesheet" href="assets/css/Logo.css" type="text/css">
	  

    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
	  

</head>
<body>
    <form id="form1" runat="server">
       
		  <div>
             <table style="width:1500px; margin:0 auto;">
                <tr style="width:1100px; height:40px; border-color:#5f98f3; ">
                    <td style="width:100px;">
                        <asp:Image ID="Image1" runat="server" style="padding-left:15px;"  Height="150px" ImageUrl="~/img/facebook.png" Width="160px" /></td>
                    <td style="width:780px" align="center">
                        <asp:Label ID="Label1" runat="server" style="padding-left:150px;" Text="FASHION FACTORY" Font-Bold="True" Font-Names="Corbel" ForeColor="Black" Font-Size="55px"></asp:Label>
                        <br/><br/><b style="padding-left:150px; padding-bottom:20px;">For Those Who Love Shopping...!</b>
                    </td>
                    <td style="width:270px; text-align:right; padding-right:60px; padding-bottom:35px;">
						<asp:ImageButton ID="ImageButton5" runat="server" Height="50px" Width="50px" CausesValidation="False" style="text-align:left" ImageUrl="~/img/icons8-life-cycle.gif" PostBackUrl="~/MyProfile.aspx" />
                    
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" Width="50px" style="text-align:left; margin-top:35px;" PostBackUrl="" ImageUrl="~/img/icons8-facebook.png" />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" Width="50px" style="text-align:left" PostBackUrl="" ImageUrl="~/img/instagram.png" />
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" Width="50px" style="text-align:left" PostBackUrl="" ImageUrl="~/img/icons8-delivery-48.png" CausesValidation="false"/>
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" Width="50px" CausesValidation="False" style="text-align:left" ImageUrl="~/img/shopping-cart.png" PostBackUrl="~/AddtoCart.aspx" />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#5F98F3"></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="20px" ForeColor="#7DCEA0">Login</asp:HyperLink>
                        <asp:Label ID="Label5" runat="server" style="text-align:left;" Font-Bold="True" Font-Size="20px"></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="Log Out" Font-Bold="True" Font-Size="18px" style="border-radius:5px; margin:20px;"/>
           
                   </td>
                </tr>
        
                  </table>
		</div>
<header class="header-section">


<div class="nav-item">
<div class="container3">
<div class="nav-depart">
<div class="depart-btn">
<%--<i class="ti-menu"></i>--%>

<span>All departments</span>
<ul class="depart-hover">
<li class="active"><a href="#">Women’s Clothing</a></li>
<li><a href="#">Men’s Clothing</a></li>
<li><a href="#">Underwear</a></li>
<li><a href="#">Kid's Clothing</a></li>
<li><a href="#">Brand Fashion</a></li>
<li><a href="#">Accessories/Shoes</a></li>
 <li><a href="#">Luxury Brands</a></li>
<li><a href="#">Brand Outdoor Apparel</a></li>
</ul>
</div>
</div>
<nav class="nav-menu mobile-menu">
<ul>
<li><a href="Default.aspx">Home</a></li>
<li class="active"><a href="Shop.aspx">Shop</a></li>
<li><a href="#">Collection</a>
<ul class="dropdown">
<li><a href="#">Men's</a></li>
<li><a href="#">Women's</a></li>
<li><a href="#">Kid's</a></li>
</ul>
</li>
<li><a href="blogdetails.aspx">Blog</a></li>
<li><a href="ContactUs.aspx">Contact</a></li>
<li><a href="#">Pages</a>
<ul class="dropdown">
<li><a href="Feedback.aspx">Feedback</a></li>
<li><a href="FAQ.aspx">Faq</a></li>
<li><a href="Register.aspx">Register</a></li>
<li><a href="Login.aspx">Login</a></li>
</ul>
</li>
</ul>
</nav>
<div id="mobile-menu-wrap"></div>
</div>
</div>
	    
</header>

<div class="breacrumb-section">
<div class="container">
<div class="row">
<div class="auto-style1">
<div class="breadcrumb-text">
<a href="Default.aspx"><i class="fa fa-home"></i> Home</a>
<span>Shop</span>
</div>
</div>
</div>
</div>
</div>
    
  <asp:TextBox ID="TextBox1" runat="server" placeholder="Search for..." Width="400px" style="margin-left:600px;"></asp:TextBox>
    <asp:ImageButton ID="ImageButton6" runat="server" style="width:27px;" ImageUrl="~/img/icons8-search.gif" OnClick="btnsearch_Click1"/>
  <br />

	 <asp:DropDownList ID="ProductCategories" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ProductCategories_SelectedIndexChanged" style="padding:10px; margin:50px; margin-right:200px; margin-left:700px; border-radius:10px;" BackColor="#000000" Font-Bold="true" Font-Size="15px" ForeColor="White"></asp:DropDownList>&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label6" runat="server" style="text-align:left;" Font-Bold="True" Font-Size="20px"></asp:Label>
         

		<section class="product-shop spad">
			<div class="container">
				<div class="row">
			
					<div class="col-lg-9 order-1 order-lg-2">
			
						<div class="product-list">
							<div class="row">
				
								<div class="col-lg-4 col-sm-6">
									<div class="product-item">
					 <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" style="margin-left:-50px; margin-top:-70px;" CellPadding="40" Height="303px" Width="200px"  RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
						<ItemTemplate>

									<div class="pi-pic">
								<%--	<img src="img/products/product-1.jpg" alt="">--%>
									<asp:ImageButton ID="ImageButton4" runat="server" BackColor="#DCDCDC" width="250px" Height="286px" ImageUrl='<%# Eval("Pimage") %>' 
										 CommandName="ViewPrdtDetail" CommandArgument='<%# Eval("ProductId") %>'/>
									<div class="sale pp-sale">Sale</div>
									<div class="icon">
									<i class="icon_heart_alt"></i>
									</div>
									<ul>
									<li class="w-icon active"><a>
										    <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="true" Font-Size="Medium">
												<asp:ListItem>1</asp:ListItem>
												<asp:ListItem>2</asp:ListItem>
												<asp:ListItem>3</asp:ListItem>
												<asp:ListItem>4</asp:ListItem>
												<asp:ListItem>5</asp:ListItem>
											</asp:DropDownList>
         
									</i></a></li>
									<li class="quick-view"><a>
									 <asp:Button ID="Button1" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart" Font-Bold="true" ForeColor="White" BorderColor="#e7ab3c" BackColor="#e7ab3c"/>
    								</a></li>
									<li class="w-icon">
										<a href="#">
								 <asp:Label ID="Label11" runat="server" Font-Bold="true" Font-Size="Medium" Text='<%# Eval("Pquantity") %>' ForeColor="White" BackColor='<%# (int)Eval("Pquantity") <=10 ? System.Drawing.Color.Red : System.Drawing.Color.Green %>'></asp:Label>
                        			
								    </a></li>
									</ul>
									</div>
									<div class="pi-text">
									<div class="catagory-name">
											<asp:Label ID="Label3" runat="server" Text='<%# Eval("Pcategory") %>'></asp:Label>
									</div>
									<a href="#">
									<h5>
										<asp:Label ID="Label7" runat="server" Text='<%# Eval("Pname") %>' Font-Size="X-Large"></asp:Label>
									</h5>
									</a>
										<asp:Label ID="Label4" runat="server" Text="&#8377" ForeColor="#e7ab3c" Font-Size="20px"></asp:Label>
										<asp:Label ID="Label10" runat="server" Text='<%# Eval("Pprice") %>' ForeColor="#e7ab3c" Font-Size="20px"></asp:Label>
									
									</div>
				</ItemTemplate>
    </asp:DataList>

									</div>
									</div>
		
							</div>
			
						</div>
			
					</div>
				</div>
			</div>
		</section>
		

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RutvikConnectionString %>" SelectCommand="SELECT [ProductId], [Pname], [Pimage], [Pprice], [Pquantity], [Pcategory] FROM [Product1]"></asp:SqlDataSource>
    </form>

<footer>
	<div class="footer-wrap">
	<div class="con first_class">
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<h3>BE THE FIRST TO KNOW</h3>
					<p>Get all the latest information on  Triedge Services, Events, Jobs
						and Fairs. Sign up for our newsletter today.</p>
				</div>
				<div class="col-md-4 col-sm-6">
				<form class="newsletter">
					 <input type="text" placeholder="Email Address"> 
                                                        <button class="newsletter_submit_btn" type="submit"><i class="fa fa-paper-plane"></i></button>	
				</form>
				
				</div>
				<div class="col-md-4 col-sm-6">
				<div class="col-md-12">
					<div class="standard_social_links">
				<div>
					<li class="round-btn btn-facebook"><a href="#"><i class="fab fa-facebook-f"></i></a>

					</li>
					<li class="round-btn btn-linkedin"><a href="#"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a>

					</li>
					<li class="round-btn btn-twitter"><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>

					</li>
					<li class="round-btn btn-instagram"><a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a>

					</li>
					<li class="round-btn btn-whatsapp"><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a>

					</li>
					<li class="round-btn btn-envelop"><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>

					</li>
				</div>
			</div>	
				</div>
					<div class="clearfix"></div>
				<div class="col-md-12"><h3 style="text-align: right;">Stay Connected</h3></div>
				</div>
			</div>
	</div>
		<div class="second_class">
			<div class="con second_class_bdr">
			<div class="row">
				<div class="col-md-4 col-sm-6">

					<div class="footer-logo" style="padding:18px;">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/img/facebook.png" Height="150px" Width="150px"/>
					</div>
					<p>Your one-stop career platform to find Jobs, Internships, Professional Trainings, Projects, and Volunteering Opportunities.</p>
				</div>
				<div class="col-md-2 col-sm-6">
					<h3>Quick  LInks</h3>
					<ul class="footer-links">
						<li><a href="#">Home</a>
						</li>
						<li><a href="#">About us</a>
						</li>
						<li><a href="FAQ.aspx">FAQ's</a>
						</li>
						<li><a href="#">Contact Us</a>
						</li>
						<li><a href="#" target="_blank">Terms &amp; Conditions</a>
						</li>
						<li><a href="#" target="_blank">Privacy Policy</a>
						</li>
						<li><a href="#">Sitemap</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6">
					<h3>OUR SERVICES</h3>
					<ul class="footer-category">
						<li><a href="#">Fresher Jobs</a>
						</li>
						<li><a href="#">InternEdge - Internships &amp; Projects </a>
						</li>
						<li><a href="#">Resume Edge - Resume Writing Services</a>
						</li>
						<li><a href="#">Readers Galleria - Curated Library</a>
						</li>
						<li><a href="#">Trideus - Campus Ambassadors</a>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-3 col-sm-6">
					<h3>triedge Events</h3>
					<ul class="footer-links">
						<li><a href="#">Triedge Events</a>
						</li>

						<li><a href="#">Jobs &AMP; Internship Fair 2019</a>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
		</div>
		
		<div class="row">
			
			<div class="container-fluid">
			<div class="copyright"> Copyright 2021 | All Rights Reserved by Fashion Factory Pvt. Ltd.</div>
			</div>
			
		</div>
	</div>



	</footer>
		<!--footer end-->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	<!-- Font Awesome 5 links-->
	<script src="https://kit.fontawesome.com/fddf5c0916.js" crossorigin="anonymous"></script>

              
   <script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/jquery.dd.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
