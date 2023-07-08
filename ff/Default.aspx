<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ff.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1580px;
            height: 30px;
        }
      
    </style>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
    <link href="ProductCSS.css" rel="stylesheet" type="text/css"/>
    <link href="style100.css" rel="stylesheet"/>

    <%--<link href="Slider.css" rel="stylesheet"/>--%>



    	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
   <%-- <table class="auto-style1">
        <tr>
           
            <td style="padding-left:550px;">
                     
                <asp:TextBox ID="TextBox1" runat="server"  Height="50px" Width="400px" style="border-radius:10px; border-color:black; text-align:center;" placeholder="Search a product..." Font-Bold="True" Font-Size="22px"></asp:TextBox>
                  
                <asp:ImageButton ID="ImageButton2" runat="server" style="padding-top:15px; right:auto;" Width="30px" Height="40px" ImageUrl="~/img/search.png" OnClick="ImageButton2_Click" />
                  
             </td>
          
            <td colspan="2" style="text-align:right;">
                <asp:DropDownList ID="ProductCategories" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ProductCategories_SelectedIndexChanged" style="padding:10px; margin:50px; margin-right:350px; border-radius:10px;" BackColor="#000000" Font-Bold="true" Font-Size="15px" ForeColor="White"></asp:DropDownList>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" style="text-align:left;" Font-Bold="True" Font-Size="20px"></asp:Label>
                
             </td>
            
        </tr>
    </table>
    <br/><br/>
    <u><asp:Label ID="Label4" runat="server" Text="Top Recommended Products" Font-Size="40px" style="padding-left:550px; font-family:'Roboto Slab', serif;" Font-Bold="True"></asp:Label></u>
   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1" Height="303px" Width="200px" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
       
        <ItemTemplate>
           <%---<table>
                <br/>
                           
                 <tr>
                    <td style="text-align:center;">
                        <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BorderWidth="1px" Height="370px" Width="312px" ImageUrl='<%# Eval("Pimage") %>'/>
                        <asp:ImageButton ID="ImageButton3" runat="server"  Height="300px" Width="300px" ImageUrl='<%# Eval("Pimage") %>' 
                            CommandName="ViewPrdtDetail" CommandArgument='<%# Eval("ProductId") %>'/>
                        <div class="stock">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("Pquantity") %>' BackColor='<%# (int)Eval("Pquantity") <=10 ? System.Drawing.Color.Red : System.Drawing.Color.Green  %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </td>
                </tr>
                   <tr height="40px">
                    <td style="height:40px; border-radius:10px;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("Pname") %>' Font-Names="Arial" Font-Size="X-Large" ForeColor="#fdb801"></asp:Label>       
                    </td>
                </tr>
             
                 <tr>
                    <td style="text-align:right; background-color:#D3D3D3; height:30px; padding:10px; font-size:20px;" >
                    
                        <asp:Label ID="Label2" runat="server" Text="&#8377;" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Style="text-align:center;"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black" Style="text-align:center;"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td align="center">Quantity
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td style="text-align:center;">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" Width="160px" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart" ImageUrl="~/img/add-to-cart-button-green-3.png" />
                    </td>
                </tr>
            </table>
          --%>
         
            <br/>
            <br/>

           <%--     <div class="container">
  <div class="card">
    <div class="card-head">
           <asp:ImageButton ID="ImageButton4" runat="server" Height="260px" Width="370px" ImageUrl='<%# Eval("Pimage") %>' 
                            CommandName="ViewPrdtDetail" CommandArgument='<%# Eval("ProductId") %>'/>
                   <div class="product-detail">
             </div>
      
    </div>
    <div class="card-body">
      <div class="product-desc">
        <span class="product-title">
                <b><asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("Pname") %>' Font-Names="Arial" Font-Size="X-Large"></asp:Label>       
                  </b>
                <span class="badge">
                  New
                </span>
        </span>
        <span class="product-rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star grey"></i>
              </span>

          <span style="padding:20px;">
              <asp:Label ID="Label12" runat="server" Text="In Stock" Font-Bold="true" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="White" Text='<%# Eval("Pquantity") %>' BackColor='<%# (int)Eval("Pquantity") <=10 ? System.Drawing.Color.Red : System.Drawing.Color.Green  %>'></asp:Label>
                     &nbsp;&nbsp;&nbsp;<b>Quantity</b>
                        <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="true" Font-Size="Medium">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
          </span>

      </div>
      <div class="product-properties">
        <span class="product-size">
                <h4>Size</h4>
                <ul class="ul-size">
                  <li><a href="#">7</a></li>
                  <li><a href="#">8</a></li>
                  <li><a href="#">9</a></li>
                  <li><a href="#" class="active">10</a></li>
                  <li><a href="#">11</a></li>
                </ul>
              </span>
        <span class="product-color">
                <h4>Colour</h4>
                <ul class="ul-color" style="margin-top:-20px; padding-bottom:-10px; margin-left:30px;">
                  <li><a href="#" class="orange active"></a></li>
                  <li><a href="#" class="green"></a></li>
                  <li><a href="#" class="yellow"></a></li>
                </ul>
              </span>
        <span class="product-price">
                <asp:Label ID="Label9" runat="server" Text="&#8377;" Font-Bold="True"></asp:Label>
                      <b> <asp:Label ID="Label10" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True"></asp:Label>
                   <asp:ImageButton ID="ImageButton5" runat="server" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart" ImageUrl="~/img/addshoppingcart.png" />
           
            </b>
             
              </span>

      </div>
    </div>
  </div>
</div>--%>


      <%--  </ItemTemplate>
        
    </asp:DataList>--%>
     <%--    <section class="counters">
			<div class="container1">
                
                
				<div>
					<div class="icon"><i class="fa fa-product-hunt" aria-hidden="true"></i></div>
					<div class="counter" data-target="5000">0</div>
					<h3>Products</h3>
				</div>
                	<div>
					<div class="icon"><i class="fa fa-smile-o" aria-hidden="true"></i></div>
					<div class="counter" data-target="10000">0</div>
					<h3>Happy Customers</h3>
				</div>
            	<div>
					<div class="icon"><i class="fa fa-commenting" aria-hidden="true"></i></div>
					<div class="counter" data-target="4000">0</div>
					<h3>Feedback+</h3>
				</div>
                
            
			</div>
		</section>
     --%>   <div class="additional">
			<h2><u>Our Services</u></h2>
		</div>

		<div class="services">
			<div class="division">
				<i class="fab fa-facebook-f"></i>

				<div class="title">
				    Social Media buttons<br />
				</div>

				<div class="desc">
					<h3>Social Media Buttons</h3>
				</div>
			</div>

			<div class="division">
				<i class="fas fa-search-location"></i>

				<div class="title">
					    Order Traking</div>

				<div class="desc">
					<h3>Order Traking</h3>
				</div>
			</div>

			<div class="division">
				<i class="fas fa-money-bill-wave"></i>

				<div class="title">
					Various Payment Methods
				</div>

				<div class="desc">
					<h3>Various Payment Methods</h3>
				</div>
			</div>

			<div class="division">
				<i class="fas fa-tags"></i>

				<div class="title">
				    Best Offers</div>

				<div class="desc">
					<h3>Best Offers</h3>
				</div>
			</div>

			<div class="division">
				<i class="fas fa-video"></i>

				<div class="title">
				    Demo Videos</div>

				<div class="desc">
					<h3>Demo Videos</h3>
				</div>
			</div>

			<div class="division">
				<i class="fas fa-comment-dots"></i>

				<div class="title">
						    Review Box</div>

				<div class="desc">
					<h3>Review Box<h3>
				</div>
			</div>
		</div>

  <script src="Slider.js"></script>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RutvikConnectionString %>" SelectCommand="SELECT [ProductId], [Pname], [PImage], [Pprice], [Pquantity], [Pcategory] FROM [Product1]"></asp:SqlDataSource>
    </asp:Content>
