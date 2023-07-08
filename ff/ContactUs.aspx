<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ff.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

          <meta name="viewport" content="width=device-width", "initial-scale=1"/>
    <meta charset="UTF-8">
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

    <style>
        input[type=text]{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .cnbtn {
            background-color: #7DCEA0;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            font-weight:bold;
            border: none;
            cursor: pointer;
            width: 49%;
            border-radius:12px;   
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
            border-radius:12px;
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
         .frmalg {
            margin: auto;
            width: 45%;
            margin-top:150px;
            margin-right:350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <%--   <div style="font-family:Arial;">
            <fieldset style="width:350px">
                <legend>Contact Us</legend>
                <table style="text-align:center; width:500px; height:350px;">
                    <tr>
                        <td>
                            <b>Name :</b> 
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                          <tr>
                        <td>
                            <b>Email :</b> 
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Email is required" ControlToValidate="txtEmail" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Subject :</b> 
                        </td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is required" ControlToValidate="txtSubject" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <b>Comments :</b> 
                        </td>
                        <td style="vertical-align:top">
                            <asp:TextBox ID="txtComments" runat="server" CssClass="txt" Width="200px" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Comments is required" ControlToValidate="txtComments" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
              
                    <tr>
                        <td colspan="3">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please Fix the Following error"/>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server"  CssClass="lgnbtn" Text="Submit" OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" />
                        </td>
                    </tr>
                </table>
            </fieldset> 
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
                    <td style="width:260px; text-align:right; padding-right:60px; padding-bottom:35px;">
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
<li class="active"><a href="ContactUs.aspx">Contact</a></li>
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
<a href="Default.aspx"><i class="fa fa-home"></i> Home</a>
<span>Contact</span>
</div>
</div>
</div>
</div>
</div>


<div class="map spad">
<div class="container">
<div class="map-inner">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29374.883807799077!2d72.44939417339577!3d23.02889458247182!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e9b98caee7edf%3A0x4d638447ee504496!2sBopal%2C%20Ahmedabad%2C%20Gujarat%20380058!5e0!3m2!1sen!2sin!4v1618289343669!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy">
    </iframe>
<div class="icon">
<i class="fa fa-map-marker"></i>
</div>
</div>
</div>
</div>


<section class="contact-section spad">
<div class="container">
<div class="row">
<div class="col-lg-5">
<div class="contact-title">
<h4>Contacts Us</h4>
<p>Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of
classical Latin literature from 45 BC, maki years old.</p>
</div>
<div class="contact-widget">
<div class="cw-item">
<div class="ci-icon">
<i class="ti-location-pin"></i>
</div>
<div class="ci-text">
<span>Address:</span>
<p>60-49 Road 11378 New York</p>
</div>
</div>
<div class="cw-item">
<div class="ci-icon">
<i class="ti-mobile"></i>
</div>
<div class="ci-text">
<span>Phone:</span>
<p>+65 11.188.888</p>
</div>
</div>
<div class="cw-item">
<div class="ci-icon">
<i class="ti-email"></i>
</div>
<div class="ci-text">
<span>Email:</span>
<p><a href="https://preview.colorlib.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="731b161f1f1c101c1f1c011f1a1133141e121a1f5d101c1e">[email&#160;protected]</a></p>
</div>
</div>
</div>
</div>
<div class="col-lg-6 offset-lg-1">
<div class="contact-form">
<div class="leave-comment">
<h4>Leave A Comment</h4>
<p>Our staff will call back later and answer your questions.</p>
<form action="#" class="comment-form">
<div class="row">
<div class="col-lg-6">
           <asp:TextBox ID="txtName" runat="server" CssClass="txt" Width="200px" placeholder="Your name"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                     
<%--<input type="text" placeholder="Your name">--%>
</div>
<div class="col-lg-6">
         <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" Width="200px"  placeholder="Your email"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Email is required" ControlToValidate="txtEmail" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                       
<%--<input type="text" placeholder="Your email">--%>
</div>
<div class="col-lg-12">
            <asp:TextBox ID="txtComments" runat="server" CssClass="txt" Width="200px" Height="130px" placeholder="Your message"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Comment is required" ControlToValidate="txtComments" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
<%--<textarea placeholder="Your message"></textarea>--%>
   <br/><br/><br/>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please Fix the Following error"/>
            <asp:Label ID="Label3" runat="server" Font-Bold="true"></asp:Label>
                    
        <asp:Button ID="Button2" runat="server"  CssClass="site-btn" Text="Submit" OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" />
               
<%--<button type="submit" class="site-btn">Send message</button>--%>
</div>
</div>
 </form>
</div>
</div>
</div>
</div>
</div>
</section>


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


    </form>
</body>
</html>
