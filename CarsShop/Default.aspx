<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarsShop.Default" %>

<%@ Register Src="~/Products.ascx" TagPrefix="uc1" TagName="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>

        <!-- Global site tag (gtag.js) - Google Analytics -->
     <%--   <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
        <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-122598367-1"></script>--%>
        <script>

            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }
            gtag('js', new Date());

            gtag('config', 'UA-122598367-1');

</script>


       
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Flynax Classifieds Software">
        <meta charset="UTF-8">
        <meta http-equiv="x-dns-prefetch-control" content="on">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">

        <meta name="description" content="سوق وحراج سيارات اليمن. يأتيكم موقع سيارة اليمن بآخر عروض السيارات المعروضة للبيع في المعارض وحراجات اليمن مع اسعارها، مواصفاتها،.">
        <meta name="Keywords" content="">


    
    </head>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
        <div id="push-header"></div>
        <section id="main_container">

            <div class="inside-container point1 clearfix">
                <!-- home page content tpl -->

                <uc1:Products runat="server" ID="Products" />

            </div>
        </section>
    </div>

</asp:Content>

