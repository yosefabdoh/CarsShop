<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="addCarAds.ascx.cs" Inherits="CarsShop.ads.addCarAds" %>

This is the <span style="color: Red">first</span> UserControl.

<div class="contact-clean">
    <section method="post">
        <h2 class="text-center">ادخل بيانات السيارة</h2>
        <div class="form-group" dir="rtl">
            <asp:DropDownList ID="dropbrand" CssClass="form-control" runat="server"></asp:DropDownList>
            <small class="form-text text-secondary">ادخل ماركة السيارة.</small>
        </div>

        <div class="form-group" dir="rtl">
            <asp:DropDownList ID="dropcartype" CssClass="form-control" runat="server"></asp:DropDownList>


            <small class="form-text text-secondary">ادخل نوع السيارة.</small>

        </div>
        <div class="form-group" dir="rtl" aria-multiline="True">
            <asp:TextBox CssClass="form-control" Rows="14" ID="CarSepecefic" runat="server" TextMode="MultiLine"></asp:TextBox>
            <small class="form-text text-secondary">التفاصيل اضافية.</small>
        </div>
        <div class="form-group">
            <asp:Button ID="btnbrand" CssClass="btn btn-primary" runat="server" Text="تأكيد" />

        </div>
    </section>
</div>
