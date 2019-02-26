<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Products.ascx.cs" Inherits="CarsShop.Products" %>


<style>
    #CarImage {
        height: 225px !important;
        width: 100%;
        display: block;
    }

    .list_grid_details_lft {
        padding: 0 0 15px 10px
    }

    .list_grid_details_rit {
        padding: 0 10px 15px 0
    }

    .list_grid li .list_grid_details_txt {
        background: #ecf0f1;
        height: 120px;
        clear: both
    }

    .list_grid li:hover .list_grid_details_txt {
        background: #f4f6f6
    }

    body {
        font-family: Arial;
        font-size: 14px;
        line-height: 1.42857143;
        color: #272b33;
    }

    .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2,
    .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5,
    .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7,
    .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10,
    .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
        position: relative;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
    }

    ul ul, ul li, ol ul, ul ol, ol ol {
        margin-bottom: 0;
        list-style: none;
    }
</style>


<div class="container-fluid">
    <div class="container">



        <%--            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top"
                        data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
                        alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;"
                        data-holder-rendered="true">
                    <div class="card-body">
                        <p class="card-text">
                            This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                            </div>
                            <small class="text-muted">9 mins</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top"
                        data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
                        alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;"
                        src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1691272e122%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1691272e122%22%3E%3Crect%20width%3D%22348%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.45000076293945%22%20y%3D%22120.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                        data-holder-rendered="true">
                    <div class="card-body">
                        <p class="card-text">
                            This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                            </div>
                            <small class="text-muted">9 mins</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top"
                        data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
                        alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;"
                        src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22225%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20225%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1691272e12f%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1691272e12f%22%3E%3Crect%20width%3D%22348%22%20height%3D%22225%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.45000076293945%22%20y%3D%22120.3%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                        data-holder-rendered="true">
                    <div class="card-body">
                        <p class="card-text" dir="rtl">
                            This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <small class="text-muted">9 mins</small>
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        --%>
        <div class="row " dir="rtl">
            <asp:ListView ID="CarList" runat="server" DataSourceID="CarListDS">





                <ItemTemplate>


                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">

                            <asp:ImageButton ID="CarImage" ImageUrl='<%# Eval("imagepath") %>' CssClass="card-img-top" Height="225" Width="100%" runat="server" />
                            <asp:Label Text='<%# Eval("imagepath") %>' runat="server" ID="imagepathLabel" />
                            <div class="card-body">
                                <p class="card-text" dir="rtl">
                                    <asp:Label Text='<%# Eval("ad_title") %>' runat="server" ID="ad_titleLabel" />
                                </p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <asp:Label Text='<%# Eval("price")  %>' CssClass="btn btn-sm btn-outline-secondary" runat="server" ID="priceLabel" />

                                        <asp:Label Text='<%# Eval("model_number") %>' CssClass="btn btn-sm btn-outline-secondary" runat="server" ID="model_numberLabel" />

                                    </div>
                                    <small class="text-muted">
                                        <asp:Label Text='<%# Eval("ad_date") %>' runat="server" ID="ad_dateLabel" /></small>


                                </div>
                </ItemTemplate>


            </asp:ListView>


            <asp:SqlDataSource ID="CarListDS" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A45C5E_carsConStrLocal %>' SelectCommand="SELECT carImage.imagepath, adverisement.ad_title, car.price, carModel.model_number, adverisement.ad_date FROM adverisement INNER JOIN car ON adverisement.car_id = car.car_id INNER JOIN carImage ON car.car_id = carImage.car_id INNER JOIN carModel ON car.model_id = carModel.model_id"></asp:SqlDataSource>
        </div>
    </div>
</div>
</div> </div>