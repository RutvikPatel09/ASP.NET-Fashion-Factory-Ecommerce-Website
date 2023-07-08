<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="ff.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" style="margin-top:50px; width:531px; height:685px; background-color:darkcyan;">
                <tr>
                    <td colspan="2" align="center" style="vertical-align:top;">
                        <asp:Label ID="Label1" runat="server" Text="Card Details" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center" style="vertical-align:top;">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Empty!!!" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="The first name must be characters!!!" ControlToValidate="TextBox1" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                    <td align="center" style="vertical-align:top;">
                     <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Empty!!!" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="The last name must be characters!!!" ControlToValidate="TextBox2" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="2px" Height="170px" ImageUrl="img/cards.jpg" Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label2" runat="server" Text="Card Number" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="vertical-align:top;">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="16 Digits" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="442px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Card Number is empty!!!" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Card Number  must be of 16 digits!!!" ControlToValidate="TextBox3" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td align="center">
                         <asp:Label ID="Label3" runat="server" Text="Expiry Date" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                    <td align="center">
                         <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="vertical-align:top;">
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="MM/YY(Eg:061996)" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Expity Date is empty!!!" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
                        
                    </td>
                    <td align="center" style="vertical-align:top;">
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="3 Digits" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CVV is empty!!!" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="CVV  must be of 16 digits!!!" ControlToValidate="TextBox5" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="vertical-align:top;">
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Billing Address" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="442px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is empty!!!" ControlToValidate="TextBox6" ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="vertical-align:top;">
                        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" BorderColor="White" BorderWidth="2px" Font-Size="Large" ForeColor="White" Height="44px" Width="188px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" HeaderText="Fix the following error :" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/AddtoCart.aspx">Previous Page</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/Default.aspx">Home Page</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
