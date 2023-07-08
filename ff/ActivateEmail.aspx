<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ActivateEmail.aspx.cs" Inherits="ff.ActivateEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            height: 131px;
            text-align:center;
        }
        .auto-style2 {
            width: 718px;
            font-size: 20px;
        }
        .auto-style3 {
            width: 549px;
        }
    </style>
    <link rel="stylesheet" href="FormDesign.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br />
        <div style="text-align:center;">
            <asp:Label ID="Label1" runat="server" Font-Size="50px" Text="Fashion Factory" Font-Bold="True"></asp:Label>
        </div><br /><br /><br /><br /><br />
        
        <div align="center">
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Activate Your Email Address "  Font-Size="Medium"></asp:Label>
        
        <br /><br /><br /><br />
            </div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Activation Code :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" CssClass="lgnbtn" OnClick="Button1_Click" Text="Verify Email"/>
                </td>
            </tr>
        </table>

        <br />

        <asp:Label ID="Label4" runat="server"></asp:Label>
    </form>
</body>
</html>
