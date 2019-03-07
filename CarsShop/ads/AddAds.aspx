<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="AddAds.aspx.cs" Inherits="CarsShop.ads.AddAds" %>

<%@ Register Src="~/ads/addCarDetails.ascx" TagPrefix="uc1" TagName="addCarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>إضافة سيارة </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="PlaceHolderUserControl" runat="server"></asp:PlaceHolder>
    <br />
    <uc1:addCarDetails runat="server" ID="addCarDetails" />
</asp:Content>
