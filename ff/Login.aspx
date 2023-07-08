<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ff.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width", "initial-scale=1"/>
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
<link rel="stylesheet" href="~/Content/StyleSheet2.css" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css"/>
    <link rel="stylesheet" href="assets/css/Logo.css" type="text/css">

    

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #FFD300;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            font-weight:bold;
            cursor: pointer;
            width: 49%;
            border-radius:12px
        }
        .lgnbtn {
            background-color: #fdb801;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            font-weight:bold;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius:12px 
        }
       .lb{
            color: black;
        }
        .lb:hover{
            color:#fdb801;
        }
        .cnbtn:hover{
            color:#fff;
        }
        .lgnbtn:hover{
            color:#fff;
        }
        .txt{
            border-radius:10px;

        }
        .txt:hover{
            border-color:#fdb801;
        }
        .txt:focus{
            outline:none;
            border-color:#fdb801;
            box-shadow:0 0 10px #fdb801;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;

        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        
    </style>
</head>
<body>
    
    
    <form id="form1" runat="server" method="post">

       <%-- <div class="container">
           
                <center><h3>Login</h3></center>
            <label for="Email"><b>Email ID : </b></label>
            <asp:TextBox runat="server" ID="email" CssClass="txt" placeholder="Enter Email"></asp:TextBox>
            <label for="Password"><b>Password</b></label>
            <asp:TextBox runat="server" ID="pass" CssClass="txt" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login"  OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" /><br /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lb" PostBackUrl="~/Register.aspx" Font-Size="Large" Font-Bold="True">New User Register Here...</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="lb" Font-Size="Large" Font-Bold="True" PostBackUrl="~/ForgotPassword.aspx">Forgot Password</asp:LinkButton>
        </div>--%>


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
<li><a href="Shop.aspx">Shop</a></li>
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
<li class="active"><a href="Login.aspx">Login</a></li>
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
<a href="Default.aspx"><i class="fa fa-home"></i> Home</a>
<span>Login</span>
</div>
</div>
</div>
</div>
</div>

        <div class="register-login-section spad">
<div class="container">
<div class="row">
<div class="col-lg-6 offset-lg-3">
<div class="login-form">
<h2>Login</h2>
<form action="#">
<div class="group-input">
<label for="username">Email address *</label>
      <asp:TextBox runat="server" ID="email" CssClass="txt" placeholder="Enter Email"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is empty" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>    
<%--<input type="text" id="username">--%>
</div>
<div class="group-input">
<label for="pass">Password *</label>
       <asp:TextBox runat="server" ID="pass" CssClass="txt" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is empty" ForeColor="Red" ControlToValidate="pass"></asp:RequiredFieldValidator>


          <br />


          <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
<%--<input type="text" id="pass">--%>
</div>
<div class="group-input gi-check">
<div class="gi-more">
<label for="save-pass">
Save Password
<input type="checkbox" id="save-pass">
<span class="checkmark"></span>
</label>

<a href="ForgotPassword.aspx" class="forget-pass">Forgot your Password</a>

</div>
</div>
     <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login"  OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" /><br /><br />
           
<%--<button type="submit" class="site-btn login-btn">Sign In</button>--%>
</form>
<div class="switch-login">
<a href="Register.aspx" class="or-login">Or Create An Account</a>
</div>
</div>
</div>
</div>
</div>
</div>

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
