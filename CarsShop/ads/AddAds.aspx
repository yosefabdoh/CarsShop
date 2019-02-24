<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="AddAds.aspx.cs" Inherits="CarsShop.ads.AddAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>إضافة سيارة </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="PlaceHolderUserControl" runat="server"></asp:PlaceHolder>
    <br />
    <asp:Button ID="btn1" runat="server" Text="ShowfirstUserControl" OnClick="btn1_Click" />
    <asp:Button ID="Button2" runat="server" Text="ShowsecondUserControl" OnClick="Button2_Click" />
</asp:Content>
