<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="ff.ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .card:hover{
            -webkit-box-shadow:-1px 9px 40px -12px rgba(0,0,0,0.75);
            -moz-box-shadow:-1px 9px 40px -12px rgba(0,0,0,0.75);
            box-shadow:-1px 9px 40px -12px rgba(0,0,0,0.75);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">  
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                     <div class="container">
                        <div class="row">
                            <div class="col-12-lg mt-2">
                                <div class="card" style="width:28rem;">
                                    <asp:Image ID="Image1" runat="server" Height="540px" CssClass="card-img-top" ImageUrl='<%# Eval("Pimage") %>' AlternateText="Product Image"/>
                                    <div class="card-body bg-dark">
                                        <h5 class="card-title text-white"><%# Eval("Pname") %></h5>
                                        <h6 class="card-title text-white">Price: &#8377;<%# Eval("Pprice") %></h6>
                                        <p class="card-text text-white">Description : <br /><%# Eval("Pdesc") %></p>
                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Add To Cart"  CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RutvikConnectionString %>" SelectCommand="SELECT [ProductId], [Pname], [Pdesc], [Pimage], [Pprice] FROM [Product1] WHERE ([ProductId] = @ProductId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductId" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>