<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="ff.blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/footer.css" type="text/css">
<link rel="stylesheet" href="assets/css/Logo.css" type="text/css">
	
  
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
                    <td style="width:220px; text-align:right; padding-right:60px; padding-bottom:35px;">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" Width="50px" style="text-align:left; margin-top:35px;" PostBackUrl="" ImageUrl="~/img/icons8-facebook.png" />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" Width="50px" style="text-align:left" PostBackUrl="" ImageUrl="~/img/instagram.png" />
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" Width="50px" style="text-align:left" PostBackUrl="" ImageUrl="~/img/icons8-delivery-48.png" CausesValidation="false"/>
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" Width="50px" CausesValidation="False" style="text-align:left" ImageUrl="~/img/shopping-cart.png" PostBackUrl="~/AddtoCart.aspx" />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#5F98F3"></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="20px" ForeColor="#7DCEA0">Login</asp:HyperLink>
                        <asp:Label ID="Label5" runat="server" style="text-align:left;" Font-Bold="True" Font-Size="20px"></asp:Label>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" Font-Bold="True" Font-Size="18px" style="border-radius:5px; margin:20px;"/>
           
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
<li><a href="Shop.aspx">Shop</a></li>
<li><a href="#">Collection</a>
<ul class="dropdown">
<li><a href="#">Men's</a></li>
<li><a href="#">Women's</a></li>
<li><a href="#">Kid's</a></li>
</ul>
</li>
<li class="active"><a href="blogdetails.aspx">Blog</a></li>
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
<div class="col-lg-12">
<div class="breadcrumb-text">
<a href="#"><i class="fa fa-home"></i> Home</a>
<span>Blog</span>
</div>
</div>
</div>
</div>
</div>


<section class="blog-section spad">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
<div class="blog-sidebar">
<div class="search-form">
<h4>Search</h4>
<form action="#">
<input type="text" placeholder="Search . . .  ">
<button type="submit"><i class="fa fa-search"></i></button>
</form>
</div>
<div class="blog-catagory">
<h4>Categories</h4>
<ul>
<li><a href="#">Fashion</a></li>
<li><a href="#">Travel</a></li>
<li><a href="#">Picnic</a></li>
<li><a href="#">Model</a></li>
</ul>
</div>
<div class="recent-post">
<h4>Recent Post</h4>
<div class="recent-blog">
<a href="#" class="rb-item">
<div class="rb-pic">
<img src="img/blog/recent-1.jpg" alt="">
</div>
<div class="rb-text">
<h6>The Personality Trait That Makes...</h6>
<p>Fashion <span>- May 19, 2019</span></p>
</div>
</a>
<a href="#" class="rb-item">
<div class="rb-pic">
<img src="img/blog/recent-2.jpg" alt="">
</div>
<div class="rb-text">
<h6>The Personality Trait That Makes...</h6>
<p>Fashion <span>- May 19, 2019</span></p>
</div>
</a>
<a href="#" class="rb-item">
<div class="rb-pic">
<img src="img/blog/recent-3.jpg" alt="">
</div>
<div class="rb-text">
<h6>The Personality Trait That Makes...</h6>
<p>Fashion <span>- May 19, 2019</span></p>
 </div>
</a>
<a href="#" class="rb-item">
<div class="rb-pic">
<img src="img/blog/recent-4.jpg" alt="">
</div>
<div class="rb-text">
<h6>The Personality Trait That Makes...</h6>
<p>Fashion <span>- May 19, 2019</span></p>
</div>
</a>
</div>
</div>
<div class="blog-tags">
<h4>Product Tags</h4>
<div class="tag-item">
<a href="#">Towel</a>
<a href="#">Shoes</a>
<a href="#">Coat</a>
<a href="#">Dresses</a>
<a href="#">Trousers</a>
<a href="#">Men's hats</a>
<a href="#">Backpack</a>
</div>
</div>
</div>
</div>
<div class="col-lg-9 order-1 order-lg-2">
<div class="row">
<div class="col-lg-6 col-sm-6">
<div class="blog-item">
<div class="bi-pic">
<img src="img/blog/blog-1.jpg" alt="">
</div>
<div class="bi-text">
<a href="blog-details.html">
<h4>The Personality Trait That Makes People Happier</h4>
</a>
<p>travel <span>- May 19, 2019</span></p>
</div>
</div>
</div>
<div class="col-lg-6 col-sm-6">
<div class="blog-item">
<div class="bi-pic">
<img src="img/blog/blog-2.jpg" alt="">
</div>
<div class="bi-text">
<a href="blog-details.html">
<h4>This was one of our first days in Hawaii last week.</h4>
 </a>
<p>Fashion <span>- May 19, 2019</span></p>
</div>
</div>
</div>
<div class="col-lg-6 col-sm-6">
<div class="blog-item">
<div class="bi-pic">
<img src="img/blog/blog-3.jpg" alt="">
</div>
<div class="bi-text">
<a href="blog-details.html">
<h4>Last week I had my first work trip of the year to Sonoma Valley</h4>
</a>
<p>travel <span>- May 19, 2019</span></p>
</div>
</div>
</div>
<div class="col-lg-6 col-sm-6">
<div class="blog-item">
<div class="bi-pic">
<img src="img/blog/blog-4.jpg" alt="">
</div>
<div class="bi-text">
<a href="blog-details.html">
<h4>Happppppy New Year! I know I am a little late on this post</h4>
</a>
<p>Fashion <span>- May 19, 2019</span></p>
</div>
</div>
</div>
<div class="col-lg-6 col-sm-6">
<div class="blog-item">
<div class="bi-pic">
<img src="img/blog/blog-5.jpg" alt="">
</div>
<div class="bi-text">
<a href="blog-details.html">
<h4>Absolue collection. The Lancome team has been one…</h4>
</a>
<p>Model <span>- May 19, 2019</span></p>
</div>
</div>
</div>
<div class="col-lg-6 col-sm-6">
<div class="blog-item">
<div class="bi-pic">
<img src="img/blog/blog-6.jpg" alt="">
</div>
<div class="bi-text">
<a href="blog-details.html">
<h4>Writing has always been kind of therapeutic for me</h4>
</a>
<p>Fashion <span>- May 19, 2019</span></p>
</div>
</div>
</div>
<div class="col-lg-12">
<div class="loading-more">
<i class="icon_loading"></i>
<a href="#">
Loading More
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

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
