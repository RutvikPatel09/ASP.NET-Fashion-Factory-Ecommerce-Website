<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaytmCallBack.aspx.cs" Inherits="ff.PaytmCallBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; padding-top:200px; font-size:30px;">
            <h1 runat="server" id="h1Message"></h1>
            <p runat="server" id="pTxnId"></p>
            <p>Your Payment Has been Successful</p>
            <p><a href="Default.aspx">Home</a></p>
            <p><a href="pdf_generate.aspx">Generate Invoice</a></p>
            
        </div>
    </form>
</body>
</html>
