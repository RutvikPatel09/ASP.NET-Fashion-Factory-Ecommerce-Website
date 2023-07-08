<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="ff.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head runat="server">
  <title>My Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="Message.js"></script>
    <script type="text/javascript">
        function alertme() {
            Swal.fire(
                'Profile Updated Successfully!',
                '',
                'success'
            )
        }
    </script>
  
</head>
<body>
    <form id="form1" runat="server">
    <hr>
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-2"></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload">
      </div></hr><br>

               
               
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Account Details</a></li>
              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                        <%--      <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                        --%>       <asp:TextBox ID="first_name" runat="server" CssClass="form-control" placeholder="first name"></asp:TextBox>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                    <%--          <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                    --%>       <asp:TextBox ID="last_name" runat="server" CssClass="form-control" placeholder="last name"></asp:TextBox>
                              </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                  <%--            <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                  --%>       <asp:TextBox ID="phone" runat="server" CssClass="form-control" placeholder="enter phone"></asp:TextBox>
                              </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="gender"><h4>Gender</h4></label>
                      <%--        <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="enter your mobile number if any.">
                      --%>       <asp:TextBox ID="gender" runat="server" CssClass="form-control" placeholder="gender"></asp:TextBox>
                              </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                   <%--           <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                   --%>       <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="you@email.com"></asp:TextBox>
                              </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                       <%--       <input type="email" class="form-control" id="location" placeholder="somewhere" title="enter a location">
                       --%>  <asp:TextBox ID="location" runat="server" CssClass="form-control" placeholder="somewhere"></asp:TextBox>
                              </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br/>
               <%--               	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Edit</button>
               --%>  
                     <%--          <asp:Button ID="Button1" runat="server" Text="Edit" 
                                    OnClick="Button1_Click" CssClass="btn btn-lg btn-success"/>
                     --%>        <asp:Button runat="server" id="btnTest" Text="Edit" OnClick="Button1_Click" CssClass="btn btn-lg btn-success"/>
                               </div>
                          </div>
              	</form>
    
        </div><!--/col-9-->
    </div><!--/row-->
     </form>                                                 
</body>
</html>
