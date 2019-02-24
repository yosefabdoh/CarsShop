<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="addCarDetails.ascx.cs" Inherits="CarsShop.ads.addCarDetails" %>

This is the<span style="color: Red"> Second </span>UserControl.

<style>


    .upload-zone {
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	height: 110px;
	background: #f2f7ff;
	border: 1px #b5b5b5 dashed;
	position: relative;
	overflow: hidden;
}
</style>
<div class="contact-clean" >
    <section method="post">
            
        <h2 class="text-center">ادخل تفاصيل السيارة </h2>

        <%--1 Advertisment Title --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">عنوان الاعلان.</small>

            <asp:TextBox ID="txtAdsTitle" CssClass="form-control" runat="server"></asp:TextBox>

        </div>

        <%--2 CarState --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">حالة السيارة .</small>

            <asp:DropDownList ID="DropCarState" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>


        <%--3 brand --%>
        <div class="form-group" dir="rtl">
            <small class="form-text text-secondary"> ماركة السيارة.</small>
            <asp:DropDownList ID="dropbrand" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <%--4 CarType --%>
        <div class="form-group" dir="rtl">
            <small class="form-text text-secondary"> نوع السيارة.</small>
            <asp:DropDownList ID="dropcartype" CssClass="form-control" runat="server"></asp:DropDownList>



        </div>

        <%--5 Price --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">السعر.</small>

            <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                       
        </div>

        <%--6 Model --%>
        <div class="form-group" dir="rtl">
            <small class="form-text text-secondary"> الموديل .</small>
            <asp:DropDownList ID="DropCarModel" CssClass="form-control" runat="server"></asp:DropDownList>



        </div>

        <%--7 GearBox --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">نوع جير .</small>

            <asp:DropDownList ID="dropGearBox" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <%--8 EngineNumber(number_potty) --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">رقم القعادة (المحرك).</small>

            <asp:TextBox ID="txtEngineNumber" CssClass="form-control" runat="server"></asp:TextBox>

        </div>

        <%--9 FuelsType --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">نوع الوقود .</small>

            <asp:DropDownList ID="DropFuelsType" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <%--10 Cylender --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">عدد الاسطوانات (السلندر) .</small>

            <asp:DropDownList ID="DropCylender" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <%--11 CarSepecification {specif_name} --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">مواصفات السيارة .</small>

            <asp:DropDownList ID="DropSpecifcations" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <%--12 CarDoors (Emblembs_id) --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">الابواب .</small>

            <asp:DropDownList ID="DropDoors" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <%--13 Mile --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">عدد الأميال.</small>

            <asp:TextBox ID="txtMile" CssClass="form-control" runat="server"></asp:TextBox>

        </div>

        <%--14 Supplyer Country (incoming) --%>
        <div class="form-group" dir="rtl">
            <small class="form-text text-secondary">الوارد.</small>
            <asp:DropDownList ID="DropSupply" CssClass="form-control" runat="server"></asp:DropDownList>



        </div>
        
        <%--15 CarColor --%>
        <div class="form-group" dir="rtl">

            <small class="form-text text-secondary">لون السيارة .</small>

            <asp:DropDownList ID="DropColor" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <%--16 AddtionDetails --%>
        <div class="form-group" dir="rtl" >
            <textarea class="form-control" rows="14" name="message" placeholder="اضافات اخرى"></textarea>
        </div>
        <div class="form-group">

        
        <form id="fileupload" class="">
            <div class="upload-zone">
                <input type="file" class="custom-file-input" name="files[]" multiple="">
                <span><span>أضف صور</span></span>
            </div>

            <div class="upload-stat"><span><span id="pic_counter">10</span> صور</span></div>

            <div class="upload-files row ui-sortable"></div>

            <div class="fileupload-buttonbar hide">
                <input id="start_upload" type="button" class="start disabled" value="تحميل" data-default-value="تحميل" disabled="disabled">
            </div>
        </form>
      </div>
        <%-- inserting button --%>
        <div class="form-group">
           
            <asp:Button ID="btnbrand" CssClass="btn btn-primary" runat="server" Text="تأكيد"  />

        </div>
    </section>
</div>
