<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ff.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
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
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <form id="form2" runat="server" class="frmalg" method="post">

        <div class="container">
           
                <center><h3>Forgot Password</h3></center>
           
            <label for="Name"><b>Name : </b></label>
            <asp:TextBox runat="server" ID="Name" CssClass="txt" placeholder="Enter Name"></asp:TextBox>
            <label for="Email"><b>Email</b></label>
            <asp:TextBox runat="server" ID="Email" CssClass="txt" placeholder="Enter Email"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Submit"  OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" /><br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           
        </div>
    </form>
</body>
</html>
