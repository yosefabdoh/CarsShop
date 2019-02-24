<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CarsShop.WebForm1" %>

<%@ Register Src="~/Slider.ascx" TagPrefix="uc1" TagName="Slider" %>
<%@ Register Src="~/Navbar.ascx" TagPrefix="uc1" TagName="Navbar" %>
<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:header runat="server" id="header" />
            <uc1:Navbar runat="server" id="Navbar" />
            <uc1:Slider runat="server" ID="Slider" />
      
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS and Holder-->
        <script src="/assets/js/jquery.min.js"></script>
        <script src="/assets/js/popper.min.js"></script>
        <script src="/assets/js/bootstrap.min.js"></script>
        <script src="/assets/js/holder.js"></script>
    </form>
</body>
</html>
