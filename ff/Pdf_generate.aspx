<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pdf_generate.aspx.cs" Inherits="ff.Pdf_generate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          .lgnbtn {
            background-color: #fdb801;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            font-weight:bold;
            border: none;
            cursor: pointer;
            border-radius:12px 
        }
        .lgnbtn:hover{
            color:#fff;
        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Panel ID="Panel1" runat="server">
                <table border="1" style="width:100%;">
                    <tr>
                        <td style="text-align:center;">
                            <h2 style="text-align:center;">Retail Invoice</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Order No :
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <br /><br />
                            Order Date :
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        Buyer Address : <br />
                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td style="padding-top:20px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp; Seller Address : <br /><br />
                                        &nbsp;&nbsp;&nbsp; C.P.Talao,Rd.No 27,behind Sion,Garage,Ahemdabad,Gujarat...
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1000px">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="Sno">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productid" HeaderText="Product Id">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productname" HeaderText="Product Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="price" HeaderText="Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Grand Total :
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            This is computer generated invoice....
                        </td>

                    </tr>
                </table>
            </asp:Panel>
            <asp:Button ID="Button1" runat="server"  CssClass="lgnbtn" style="margin-left:500px; margin-top:50px;" Text="Download Invoice" Font-Bold="True" Font-Size="X-Large" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/Default.aspx">Go to Home Page</asp:HyperLink>
           
        
        </div>
    </form>
</body>
</html>
