<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Products.ascx.cs" Inherits="CarsShop.Products" %>

<style>

.banner img {
    width: 100%;
    bottom: -30px;
    position: absolute;
}

.banner {
    position: absolute;
    width: 100%;
    left: 0;
    z-index: -1;
    margin-top: -30px;
    height: 500px;
    overflow: hidden;
}

.banner-fix {
    height: 370px;
    color: white;
    padding: 100px 0px;
    font-size: 38px;
    margin-top: 0px;
}
.banner-fix span {
    display: block;
}
section#main_container > div.inside-container {
    position: initial;
    padding: 0;
}
.banner_darkener {
    height: 500px;
    position: absolute;
    width: 100%;
    left: 0;
    z-index: -1;
    background: #0000005c;
    margin-top: -30px;
}

@media screen and (min-width: 768px) and (max-width: 991px) {
    .banner {
        height: 400px;
    }
    
    .banner_darkener {
        height: 400px;
    }
    
    .banner-fix {
        height: 270px;
    }
}
@media screen and (max-width: 767px) {
    .banner {
        height: 300px;
        margin: 0;
        margin-top: -20px;
    }
    
    .banner img {
        width: 140%;
        margin: auto;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
    }
    
    .banner_darkener {
        height: 300px;
        margin: 0;
        margin-top: -20px;
    }
    
    .banner-fix {
        height: 220px;
        margin: 0;
        padding: 0;
        padding-top: 70px;
        font-size: 22px;
        margin-top: -20px;
    }
}

</style>
<style>

.search-body-cont {
    overflow: hidden;
}

.search-body-type {
    width: 25%;
    float: right;
    padding: 10px;
    margin-bottom: 10px;
    position: relative;
}

search-body-type span {}

.search-body-type .car_body_text {
    color: #e74c3c;
    text-align: center;
    width: 100%;
    margin-top: -10px;
    font-size: 16px;
    font-weight: bold;
}

.search-body-type img {
    width: 100%;
}

search-body-type.hidden_body_button {}

.search-body-type .hidden_body_button {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    padding: 0px;
    margin: 0px;
    opacity: 0;
}
@media screen and (max-width: 767px) {
    .search-body-type {
        width: 50%;
    }
}

</style>
<!-- listing box grid-view box styles -->

<style>


ul.lb-box-grid li.item .photo {
    width: 60px;
    height: 60px;
    float: left;
    margin-right: 10px;
}
ul.lb-box-grid li.item .photo img {
    width: 100%;
    height: 100%;
    border: 0px;
}
/* craigslist fallback */
ul.lb-box-grid > li div.picture.no-picture img {
    background-size: cover;
}
/* craigslist fallback end */
ul.lb-box-grid li.item ul {
    padding: 0!important;
    margin: 0!important;
    overflow: hidden;
    background: transparent;
    box-shadow: none;
    width: auto!important;
}
ul.lb-box-grid li.item ul > li.title {
    margin: -2px 0 5px 0;
    text-overflow: ellipsis;
    padding: 0px;

    position: static;
    background: transparent;

    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
ul.lb-box-grid li.item ul > li.title > a {
    white-space: normal;
}
ul.lb-box-grid li.item span.price-tag {
    font-weight: normal;
}

/* rlt option */
body[dir=rtl]  ul.lb-box-grid li.item .photo {
    float: right;
    margin-right: 0;
    margin-left: 10px;
}

/*** ALL DESKTOPS VIEW ***/
@media screen and (min-width: 992px) {
    .side_block ul.lb-box-grid li.col-md-12:not(:last-child) {
        margin-bottom: 10px;
    }
}
/*** MIDDLE DESKTOP VIEW ***/
@media screen and (min-width: 992px) and (max-width: 1199px) {
    .two-middle ul.lb-box-grid li.col-md-12:not(:last-child) {
        margin-bottom: 10px;
    }
}
/*** LARGE DESKTOP VIEW ***/
@media screen and (min-width: 1200px) {
    .two-middle ul.lb-box-grid li.col-md-12:not(.col-lg-6):not(:last-child) {
        margin-bottom: 10px;
    }
}
/*** MOBILE VIEW ***/
@media screen and (max-width: 767px) {
    ul.lb-box-grid li.item {
        max-width: none;
    }
    ul.lb-box-grid li.item:not(:last-child) {
        margin-bottom: 10px;
    }
}


</style>

<!-- listing box grid-view box styles end -->
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

    <section class="home-content row">
        <div class="search-form col-md-12 col-sm-12">
            <!-- side bar search form -->

            <section class="side_block_search light-inputs">
                <!-- tabs -->
                <ul class="tabs tabs-hash search_tabs">
                    <li id="tab_listings_tab1" class="active">
                        <a href="#listings_tab1" data-target="listings_tab1">البحث بماركة السيارة</a>
                    </li>
                </ul>
                <!-- tabs end -->


                <div class="search-block-content">

                    <div id="area_listings_tab1" class="search_tab_area">

                        <form method="post" >
                            <input type="hidden" name="action" value="search">
                            <input type="hidden" name="post_form_key" value="listings_tab1">

                            <div class="scroller mCustomScrollbar _mCS_1 mCS-dir-rtl mCS_no_scrollbar">
                                <!--input type="hidden" name="f[condition]" value="1" /-->
                                <!--input type="hidden" name="f[condition]" value="0" / -->
                                <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
                                    <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position: relative; top: 0; left: 0;" dir="rtl">
                                <!-- fields block ( for search ) -->
                                <div class="search-item	single-field">
                                    <div class="field">ماركة السيارة</div>
                                    <input type="hidden" id="listings_tab1_Category_ID_listings_value" name="f[Category_ID]" value="">
                                    <asp:DropDownList ID="listings_tab1_Category_ID_listings_level0" CssClass="multicat" runat="server">
                                
                                        <asp:ListItem Value="0">- أي -</asp:ListItem>
                                        <asp:ListItem value="51">اودي</asp:ListItem>
                                        <asp:ListItem value="79">BMW</asp:ListItem>
                                        <asp:ListItem value="160">شيري</asp:ListItem>
                                        <asp:ListItem value="169">شفروليه</asp:ListItem>
                                        <asp:ListItem value="246">ستيروين</asp:ListItem>
                                        <asp:ListItem value="273">دايو</asp:ListItem>
                                        <asp:ListItem Value="286">دايهاتسو</asp:ListItem>
                                        <asp:ListItem value="305">دودج</asp:ListItem>
                                        <asp:ListItem value="395">فيات</asp:ListItem>
                                        <asp:ListItem value="439">فورد</asp:ListItem>
                                        <asp:ListItem value="504">GMC</asp:ListItem>
                                        <asp:ListItem value="535">همر</asp:ListItem>
                                        <asp:ListItem value="544">هوندا</asp:ListItem>
                                        <asp:ListItem value="570">هونداي</asp:ListItem>
                                        <asp:ListItem value="607">انفنتي</asp:ListItem>
                                        <asp:ListItem value="624">ايسوزو</asp:ListItem>
                                        <asp:ListItem value="647">جاغوار</asp:ListItem>
                                        <asp:ListItem value="669">جيب</asp:ListItem>
                                        <asp:ListItem value="683">كيا</asp:ListItem>
                                        <asp:ListItem value="747">لاند روفر</asp:ListItem>
                                        <asp:ListItem value="759">لكزس</asp:ListItem>
                                        <asp:ListItem value="789">لينكولن</asp:ListItem>
                                        <asp:ListItem value="814">مازيراتي</asp:ListItem>
                                        <asp:ListItem value="837">ميني</asp:ListItem>
                                        <asp:ListItem value="844">مازدا</asp:ListItem>
                                        <asp:ListItem value="883">مرسيدس</asp:ListItem>
                                        <asp:ListItem value="969">MG</asp:ListItem>
                                        <asp:ListItem value="980">ميتسوبيشي</asp:ListItem>
                                        <asp:ListItem value="1018">نيسان</asp:ListItem>
                                        <asp:ListItem value="1138">بيجو</asp:ListItem>
                                        <asp:ListItem value="1218">بورش</asp:ListItem>
                                        <asp:ListItem value="1236">رينو</asp:ListItem>
                                        <asp:ListItem value="1326">سيات</asp:ListItem>
                                        <asp:ListItem value="1340">سكودا</asp:ListItem>
                                        <asp:ListItem value="1356">سمارت</asp:ListItem>
                                        <asp:ListItem value="1371">سوبارو</asp:ListItem>
                                        <asp:ListItem value="1392">سوزوكي</asp:ListItem>
                                        <asp:ListItem value="1420">تويوتا</asp:ListItem>
                                        <asp:ListItem value="1473">فولكس فاجن</asp:ListItem>
                                        <asp:ListItem value="1526">فولفو</asp:ListItem>
                                        <asp:ListItem value="1591">اخرى</asp:ListItem>
                                        <asp:ListItem value="1592">جيلي</asp:ListItem>
                                        <asp:ListItem value="1600">شانجان</asp:ListItem>
                                    
                                    </asp:DropDownList>


                                </div>
                                <div class="search-item single-field">
                                    <div class="field">النوع</div>
                                    <asp:DropDownList ID="listings_tab1_Category_ID_listings_level1" CssClass="multicat  last" disabled="disabled" runat="server">
                                        <asp:ListItem Value="0">- أي -</asp:ListItem>
                                    </asp:DropDownList>
                                <%--    <select id=""  class="multicat  last">
                                        <option value="0">- أي -</option>
                                    </select>--%>

                                </div>
                                <!-- fields block ( for search ) end -->
                                <!-- fields block ( for search ) -->
                                <div class="search-item	three-field">
                                    <div class="field">السعر</div>
                                    <input id="ConverterFrom" placeholder="من" class="numeric" type="text" name="f[price][from]" maxlength="15"><input id="ConverterTo" placeholder="إلى" class="numeric" type="text" name="f[price][to]" maxlength="15">
                                    <select id="ConverterCurrency" title="عملة" name="f[price][currency]"><!--option value="0"> أي </option--><option value="dollar">$</option>
                                        <option value="currency_sar">ريال سعودي</option>
                                        <option value="currency_yer" selected="selected">ريال يمني</option>
                                    </select><div id="currncyConverter">
                                        <input id="ConverterFromSpy" type="hidden" name="f[price][from]" value="0"><input id="ConverterToSpy" type="hidden" name="f[price][to]" value="0"><input type="hidden" name="f[price][currency]" value="currency_yer"></div>
                                </div>
                                <!-- fields block ( for search ) end -->
                                <!-- fields block ( for search ) -->
                                <div class="search-item	two-fields">
                                    <div class="field">الموديل</div>
                                    
                                    <select name="f[built][to]"><option value="0">إلى</option>
                                        <option value="2020">2020</option>
                                        <option value="2019">2019</option>
                                        <option value="2018">2018</option>
                                        <option value="2017">2017</option>
                                        <option value="2016">2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2010">2010</option>
                                        <option value="2009">2009</option>
                                        <option value="2008">2008</option>
                                        <option value="2007">2007</option>
                                        <option value="2006">2006</option>
                                        <option value="2005">2005</option>
                                        <option value="2004">2004</option>
                                        <option value="2003">2003</option>
                                        <option value="2002">2002</option>
                                        <option value="2001">2001</option>
                                        <option value="2000">2000</option>
                                        <option value="1999">1999</option>
                                        <option value="1998">1998</option>
                                        <option value="1997">1997</option>
                                        <option value="1996">1996</option>
                                        <option value="1995">1995</option>
                                        <option value="1994">1994</option>
                                        <option value="1993">1993</option>
                                        <option value="1992">1992</option>
                                        <option value="1991">1991</option>
                                        <option value="1990">1990</option>
                                        <option value="1989">1989</option>
                                        <option value="1988">1988</option>
                                        <option value="1987">1987</option>
                                        <option value="1986">1986</option>
                                        <option value="1985">1985</option>
                                        <option value="1984">1984</option>
                                        <option value="1983">1983</option>
                                        <option value="1982">1982</option>
                                        <option value="1981">1981</option>
                                        <option value="1980">1980</option>
                                        <option value="1979">1979</option>
                                        <option value="1978">1978</option>
                                        <option value="1977">1977</option>
                                        <option value="1976">1976</option>
                                        <option value="1975">1975</option>
                                        <option value="1974">1974</option>
                                        <option value="1973">1973</option>
                                        <option value="1972">1972</option>
                                        <option value="1971">1971</option>
                                        <option value="1970">1970</option>
                                        <option value="1969">1969</option>
                                        <option value="1968">1968</option>
                                        <option value="1967">1967</option>
                                        <option value="1966">1966</option>
                                        <option value="1965">1965</option>
                                        <option value="1964">1964</option>
                                        <option value="1963">1963</option>
                                        <option value="1962">1962</option>
                                        <option value="1961">1961</option>
                                        <option value="1960">1960</option>
                                        <option value="1959">1959</option>
                                        <option value="1958">1958</option>
                                        <option value="1957">1957</option>
                                        <option value="1956">1956</option>
                                        <option value="1955">1955</option>
                                        <option value="1954">1954</option>
                                        <option value="1953">1953</option>
                                        <option value="1952">1952</option>
                                        <option value="1951">1951</option>
                                        <option value="1950">1950</option>
                                        <option value="1949">1949</option>
                                        <option value="1948">1948</option>
                                        <option value="1947">1947</option>
                                        <option value="1946">1946</option>
                                        <option value="1945">1945</option>
                                        <option value="1944">1944</option>
                                        <option value="1943">1943</option>
                                        <option value="1942">1942</option>
                                        <option value="1941">1941</option>
                                        <option value="1940">1940</option>
                                    </select>

                                </div>

                                <!-- fields block ( for search ) end -->
                                <!-- fields block ( for search ) -->
                                <div class="search-item	single-field">
                                    <div class="field">المدينة</div>
                                    <select name="f[b_states]">
                                        <option value="0">- أي -</option>
                                        <option value="us_states_abian">أبين</option>
                                        <option value="us_states_aab">إب</option>
                                        <option value="us_states_albida">البيضاء</option>
                                        <option value="us_states_aljof">الجوف</option>
                                        <option value="us_states_alhudida">الحديدة</option>
                                        <option value="us_states_aldalia">الضالع</option>
                                        <option value="us_states_almahwit">المحويت</option>
                                        <option value="us_states_almukala">المكلاء</option>
                                        <option value="us_states_almahrah">المهرة</option>
                                        <option value="us_states_taiz">تعز</option>
                                        <option value="us_states_hajah">حجة</option>
                                        <option value="us_states_thamar">ذمار</option>
                                        <option value="us_states_raima">ريمة</option>
                                        <option value="us_states_sucatra">سقطرى</option>
                                        <option value="us_states_seiyun">سيئون</option>
                                        <option value="us_states_shabwah">شبوة</option>
                                        <option value="us_states_saada">صعدة</option>
                                        <option value="us_states_sanaa">صنعاء</option>
                                        <option value="us_states_aden">عدن</option>
                                        <option value="us_states_amran">عمران</option>
                                        <option value="us_states_lahej">لحج</option>
                                        <option value="us_states_mareb">مأرب</option>
                                    </select></div>
                                <!-- fields block ( for search ) end -->

                            </div>
                                   </div></div>
                            <div class="search-button">
                                <input type="submit" name="search" value="بحث"></div>

                        </form>



                    </div>

                   

                </div>
            </section>

            <script type="text/javascript">
		flynax.multiCatsHandler();
	</script>

            <!-- side bar search form end -->
        </div>
        <!-- why choose us starts -->
        <div class="why_us col-md-12 col-sm-12">
            <div class="why_us_background"></div>
            <div class="why_us_cont">
                <div class="why_us_in" id="whyus1">أضف سيارتك مجاناً</div>
                <div class="why_us_in" id="whyus2">جد السيارة المناسبة</div>
                <div class="why_us_in" id="whyus3">توفير الوقت والجهد</div>
            </div>
        </div>
        <!-- why choose us ends -->

    </section>


   
    <!-- listings boxes -->


    <ul id="listing_box_30" class="row featured with-pictures normal-listing">

<%--        <li id="fli_634" class="col-md-4 col-sm-4"><a title="ابو عزام " href="http://yemencar.com/autos/mitsubishi/canter/bw-zm-634.html">
            <img alt="ابو عزام " src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/09-2018/ad634/Abw-Azam--1eed871de19b8aa168a6d720bfd0ddd6.jpg" data-2x="http://yemencar.com/files/09-2018/ad634/Abw-Azam--1eed871de19b8aa168a6d720bfd0ddd6_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/09-2018/ad634/Abw-Azam--1eed871de19b8aa168a6d720bfd0ddd6.jpg&quot;);" width="4
                5"
                height="19"></a><ul class="no-price">
                    <li title="ابو عزام " class="" id="flf_634_title"><a href="http://yemencar.com/autos/mitsubishi/canter/bw-zm-634.html">ابو عزام </a></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">9,600,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                        <div class="list-tag tag-built">2006</div>
                        <div class="list-tag tag-mileage">40000 كم</div>
                        <div class="list-tag tag-trans">عادي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_74" class="col-md-4 col-sm-4"><a title="كامري للبيع موديل 2007" href="http://yemencar.com/autos/toyota/camry/kmry-llby-mwdyl-2007-74.html">
            <img alt="كامري للبيع موديل 2007" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/07-2018/ad74/kmry-llby-mwdyl-1353710825.jpg" data-2x="http://yemencar.com/files/07-2018/ad74/kmry-llby-mwdyl-405446240_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/07-2018/ad74/kmry-llby-mwdyl-1353710825.jpg&quot;);" width="1
                45"
                height="19"></a><ul class="no-price">
                    <li title="كامري للبيع موديل 2007" class="" id="flf_74_title"><a href="http://yemencar.com/autos/toyota/camry/kmry-llby-mwdyl-2007-74.html">كامري للبيع موديل 2007</a></li>
                    <li title="سيدان" class="" id="flf_74_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">1,360,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                        <div class="list-tag tag-built">2007</div>
                        <div class="list-tag tag-mileage">300 ميل</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_73" class="col-md-4 col-sm-4"><a title="فورشنر 2011 للبيع" href="http://yemencar.com/autos/toyota/fwrshnr-2011-llby-73.html">
            <img alt="فورشنر 2011 للبيع" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/07-2018/ad73/fwrshnr-1676009730.jpg" data-2x="http://yemencar.com/files/07-2018/ad73/fwrshnr-1603526322_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/07-2018/ad73/fwrshnr-1676009730.jpg&quot;);" width="1
                09"
                height="19"></a><ul class="no-price">
                    <li title="فورشنر 2011 للبيع" class="" id="flf_73_title"><a href="http://yemencar.com/autos/toyota/fwrshnr-2011-llby-73.html">فورشنر 2011 للبيع</a></li>
                    <li title="دفع الرباعي" class="" id="flf_73_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">7,360,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                        <div class="list-tag tag-built">2011</div>
                        <div class="list-tag tag-mileage">120000 كم</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_75" class="col-md-4 col-sm-4"><a title="سيارة ازيرا نضيف 2006" href="http://yemencar.com/autos/hyundai/azera/syr-zyr-ndyf-2006-75.html">
            <img alt="سيارة ازيرا نضيف 2006" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/07-2018/ad75/syr-zyr-ndyf-2140691327.jpg" data-2x="http://yemencar.com/files/07-2018/ad75/syr-zyr-ndyf-1914400898_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/07-2018/ad75/syr-zyr-ndyf-2140691327.jpg&quot;);" width="1
                36"
                height="19"></a><ul class="no-price">
                    <li title="سيارة ازيرا نضيف 2006" class="" id="flf_75_title"><a href="http://yemencar.com/autos/hyundai/azera/syr-zyr-ndyf-2006-75.html">سيارة ازيرا نضيف 2006</a></li>
                    <li title="عايلية" class="" id="flf_75_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">1,200,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                        <div class="list-tag tag-built">2006</div>
                        <div class="list-tag tag-mileage">122469 ميل</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_751" class="col-md-4 col-sm-4"><a title="هيونداي توسان 2011 للبيع" href="http://yemencar.com/autos/hyundai/tucson/hywndy-twsn-2011-llby-751.html">
            <img alt="هيونداي توسان 2011 للبيع" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/10-2018/ad751/Hywnday-Twsan-2011-Llby-3faa82d5e6b425ab904731517edbf661.jpg" data-2x="http://yemencar.com/files/10-2018/ad751/Hywnday-Twsan-2011-Llby-3faa82d5e6b425ab904731517edbf661_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/10-2018/ad751/Hywnday-Twsan-2011-Llby-3faa82d5e6b425ab904731517edbf661.jpg&quot;);" width="1
                57"
                height="19"></a><ul class="no-price">
                    <li title="هيونداي توسان 2011 للبيع" class="" id="flf_751_title"><a href="http://yemencar.com/autos/hyundai/tucson/hywndy-twsn-2011-llby-751.html">هيونداي توسان 2011 للبيع</a></li>
                    <li title="دفع الرباعي" class="" id="flf_751_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">5,100,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                        <div class="list-tag tag-built">2011</div>
                        <div class="list-tag tag-mileage">89000 كم</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city"></div>
                    </div>
                </ul>
        </li>
        <li id="fli_71" class="col-md-4 col-sm-4"><a title="يارس 2011 تماتيك" href="http://yemencar.com/autos/toyota/yaris/yrs-2011-tmtyk-71.html">
            <img alt="يارس 2011 تماتيك" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/07-2018/ad71/yrs-526687134.jpg" data-2x="http://yemencar.com/files/07-2018/ad71/yrs-608658616_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/07-2018/ad71/yrs-526687134.jpg&quot;);" width="1
                05"
                height="19"></a><ul class="no-price">
                    <li title="يارس 2011 تماتيك" class="" id="flf_71_title"><a href="http://yemencar.com/autos/toyota/yaris/yrs-2011-tmtyk-71.html">يارس 2011 تماتيك</a></li>
                    <li title="سيدان" class="" id="flf_71_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">2,000,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                        <div class="list-tag tag-built">2011</div>
                        <div class="list-tag tag-mileage">138000 كم</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_699" class="col-md-4 col-sm-4"><a title="سياره نيسان اكسترا فل كامل" href="http://yemencar.com/autos/nissan/almera/syrh-nysn-kstr-fl-kml-699.html">
            <img alt="سياره نيسان اكسترا فل كامل" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/10-2018/ad699/Syarh-Nysan-Akstra-Fl-Kaml-d47bbf2fccb03ab2b10af19aac12ceac.jpg" data-2x="http://yemencar.com/files/10-2018/ad699/Syarh-Nysan-Akstra-Fl-Kaml-d47bbf2fccb03ab2b10af19aac12ceac_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/10-2018/ad699/Syarh-Nysan-Akstra-Fl-Kaml-d47bbf2fccb03ab2b10af19aac12ceac.jpg&quot;);" width="1
                65"
                height="19"></a><ul class="no-price">
                    <li title="سياره نيسان اكسترا فل كامل" class="" id="flf_699_title"><a href="http://yemencar.com/autos/nissan/almera/syrh-nysn-kstr-fl-kml-699.html">سياره نيسان اكسترا فل كامل</a></li>
                    <li title="عايلية" class="" id="flf_699_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">1,300,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                        <div class="list-tag tag-built">2005</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_806" class="col-md-4 col-sm-4"><a title="دايهاتسو سيريون للبيع " href="http://yemencar.com/autos/daihatsu/sirion/dyhtsw-syrywn-llby-806.html">
            <img alt="دايهاتسو سيريون للبيع " src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/12-2018/ad806/Dayhatsw-Syrywn-Llby--8d9e3479349911c95c30521a6841ca9c.jpg" data-2x="http://yemencar.com/files/12-2018/ad806/Dayhatsw-Syrywn-Llby--8d9e3479349911c95c30521a6841ca9c_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/12-2018/ad806/Dayhatsw-Syrywn-Llby--8d9e3479349911c95c30521a6841ca9c.jpg&quot;);" width="1
                31"
                height="19"></a><ul class="no-price">
                    <li title="دايهاتسو سيريون للبيع " class="" id="flf_806_title"><a href="http://yemencar.com/autos/daihatsu/sirion/dyhtsw-syrywn-llby-806.html">دايهاتسو سيريون للبيع </a></li>
                    <li title="عايلية" class="" id="flf_806_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">1,000,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                        <div class="list-tag tag-built">2005</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_225" class="col-md-4 col-sm-4"><a title="سيارة لكزس" href="http://yemencar.com/autos/lexus/lx-470/syr-lkzs-225.html">
            <img alt="سيارة لكزس" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/08-2018/ad225/syr-801576882.jpg" data-2x="http://yemencar.com/files/08-2018/ad225/syr-60160846_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/08-2018/ad225/syr-801576882.jpg&quot;);" width="6
                8"
                height="19"></a><ul class="no-price">
                    <li title="سيارة لكزس" class="" id="flf_225_title"><a href="http://yemencar.com/autos/lexus/lx-470/syr-lkzs-225.html">سيارة لكزس</a></li>
                    <li title="دفع الرباعي" class="" id="flf_225_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">13,800,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                        <div class="list-tag tag-built">2006</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                    </div>
                </ul>
        </li>
        <li id="fli_343" class="col-md-4 col-sm-4"><a title="سياره الننرا 2005" href="http://yemencar.com/autos/hyundai/elantra/syrh-lnnr-2005-343.html">
            <img alt="سياره الننرا 2005" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/08-2018/ad343/Syarh-An-Nnra-2005-9354a78a14e96b089b8c802227f0b336.jpg" data-2x="http://yemencar.com/files/08-2018/ad343/Syarh-An-Nnra-2005-9354a78a14e96b089b8c802227f0b336_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/08-2018/ad343/Syarh-An-Nnra-2005-9354a78a14e96b089b8c802227f0b336.jpg&quot;);" width="9
                6"
                height="19"></a><ul class="no-price">
                    <li title="سياره الننرا 2005" class="" id="flf_343_title"><a href="http://yemencar.com/autos/hyundai/elantra/syrh-lnnr-2005-343.html">سياره الننرا 2005</a></li>
                    <li title="عايلية" class="" id="flf_343_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">1,120,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                        <div class="list-tag tag-built">2005</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city"></div>
                    </div>
                </ul>
        </li>
        <li id="fli_76" class="col-md-4 col-sm-4"><a title="هوندا اكورد 2004 عدن" href="http://yemencar.com/autos/honda/accord/hwnd-kwrd-2004-dn-76.html">
            <img alt="هوندا اكورد 2004 عدن" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/07-2018/ad76/hwnd-kwrd-2074232994.jpg" data-2x="http://yemencar.com/files/07-2018/ad76/hwnd-kwrd-985309769_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/07-2018/ad76/hwnd-kwrd-2074232994.jpg&quot;);" width="134" height="19"></a>
            <ul class="no-price">
                <li title="هوندا اكورد 2004 عدن" class="" id="flf_76_title"><a href="http://yemencar.com/autos/honda/accord/hwnd-kwrd-2004-dn-76.html">هوندا اكورد 2004 عدن</a></li>
                <li title="سيدان" class="" id="flf_76_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">1,650,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                    <div class="list-tag tag-built">2004</div>
                    <div class="list-tag tag-mileage">170000 كم</div>
                    <div class="list-tag tag-trans">أوتوماتيكي</div>
                    <div class="list-tag tag-city">صنعاء</div>
                </div>
            </ul>
        </li>
        <li id="fli_221" class="col-md-4 col-sm-4"><a title="اكسنت 2004 أمريكي " href="http://yemencar.com/autos/hyundai/accent/ksnt-2004-mryky-221.html">
            <img alt="اكسنت 2004 أمريكي " src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/08-2018/ad221/ksnt-2004-mryky-1676423178.jpg" data-2x="http://yemencar.com/files/08-2018/ad221/ksnt-2004-mryky-218487627_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/08-2018/ad221/ksnt-2004-mryky-1676423178.jpg&quot;);" width="124" height="19"></a>
            <ul class="no-price">
                <li title="اكسنت 2004 أمريكي " class="" id="flf_221_title"><a href="http://yemencar.com/autos/hyundai/accent/ksnt-2004-mryky-221.html">اكسنت 2004 أمريكي </a></li>
                <li title="سيدان" class="" id="flf_221_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">900,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                    <div class="list-tag tag-built">2004</div>
                    <div class="list-tag tag-mileage">150000 ميل</div>
                    <div class="list-tag tag-trans">أوتوماتيكي</div>
                </div>
            </ul>
        </li>
        <li id="fli_861" class="col-md-4 col-sm-4"><a title="باص ديهاتسو نظيف جدا جدا" href="http://yemencar.com/autos/daihatsu/gran-move/bs-dyhtsw-nzyf-jd-jd-861.html">
            <img alt="باص ديهاتسو نظيف جدا جدا" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/02-2019/ad861/Bas-Dyhatsw-Nzyf-Jda-Jda-ec47aa73f32ebbefd78b6333eef0f69b.jpg" data-2x="http://yemencar.com/files/02-2019/ad861/Bas-Dyhatsw-Nzyf-Jda-Jda-ec47aa73f32ebbefd78b6333eef0f69b_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/02-2019/ad861/Bas-Dyhatsw-Nzyf-Jda-Jda-ec47aa73f32ebbefd78b6333eef0f69b.jpg&quot;);" width="164" height="19"></a>
            <ul class="no-price">
                <li title="باص ديهاتسو نظيف جدا جدا" class="" id="flf_861_title"><a href="http://yemencar.com/autos/daihatsu/gran-move/bs-dyhtsw-nzyf-jd-jd-861.html">باص ديهاتسو نظيف جدا جدا</a></li>
                <li title="باص" class="" id="flf_861_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">3,680,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                    <div class="list-tag tag-built">2012</div>
                    <div class="list-tag tag-trans">عادي</div>
                    <div class="list-tag tag-city">صنعاء</div>
                </div>
            </ul>
        </li>
        <li id="fli_913" class="col-md-4 col-sm-4"><a title="فيراكروز2012 جديد" href="http://yemencar.com/autos/hyundai/veracruz/fyrkrwz2012-jdyd-913.html">
            <img alt="فيراكروز2012 جديد" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/03-2019/ad913/Fyrakrwz2012-Jdyd-b30bedd669bbd0765ad43a26ae9580ea.jpg" data-2x="http://yemencar.com/files/03-2019/ad913/Fyrakrwz2012-Jdyd-b30bedd669bbd0765ad43a26ae9580ea_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/03-2019/ad913/Fyrakrwz2012-Jdyd-b30bedd669bbd0765ad43a26ae9580ea.jpg&quot;);" width="110" height="19"></a>
            <ul class="no-price">
                <li title="فيراكروز2012 جديد" class="" id="flf_913_title"><a href="http://yemencar.com/autos/hyundai/veracruz/fyrkrwz2012-jdyd-913.html">فيراكروز2012 جديد</a></li>
                <li title="عايلية" class="" id="flf_913_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">5,600</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                    <div class="list-tag tag-built">2012</div>
                    <div class="list-tag tag-trans">أوتوماتيكي</div>
                    <div class="list-tag tag-city">صنعاء</div>
                </div>
            </ul>
        </li>
        <li id="fli_237" class="col-md-4 col-sm-4"><a title="سيارة صيني 2007 بترول نظيف مكينة تويوتا 3واي مجمرك" href="http://yemencar.com/autos/others/syr-syny-2007-btrwl-nzyf-mkyn-twywt-3wy-mjmrk-237.html">
            <img alt="سيارة صيني 2007 بترول نظيف مكينة تويوتا 3واي مجمرك" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/08-2018/ad237/syr-syny-2007-btrwl-nzyf-523552028.jpg" data-2x="http://yemencar.com/files/08-2018/ad237/syr-syny-2007-btrwl-nzyf-42428041_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/08-2018/ad237/syr-syny-2007-btrwl-nzyf-523552028.jpg&quot;);" width="290" height="39"></a>
            <ul class="no-price">
                <li title="سيارة صيني 2007 بترول نظيف مكينة تويوتا 3واي مجمرك" class="" id="flf_237_title"><a href="http://yemencar.com/autos/others/syr-syny-2007-btrwl-nzyf-mkyn-twywt-3wy-mjmrk-237.html">سيارة صيني 2007 بترول نظيف مكينة تويوتا 3واي مجمرك</a></li>
                <li title="عايلية" class="" id="flf_237_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">1,440,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                    <div class="list-tag tag-built">2007</div>
                    <div class="list-tag tag-trans">عادي</div>
                </div>
            </ul>
        </li>
        <li id="fli_141" class="col-md-4 col-sm-4"><a title="صنعاء" href="http://yemencar.com/autos/daihatsu/terios/sn-141.html">
            <img alt="صنعاء" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/07-2018/ad141/sn-2087482389.jpg" data-2x="http://yemencar.com/files/07-2018/ad141/sn-321166464_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/07-2018/ad141/sn-2087482389.jpg&quot;);" width="37" height="19"></a>
            <ul class="no-price">
                <li title="صنعاء" class="" id="flf_141_title"><a href="http://yemencar.com/autos/daihatsu/terios/sn-141.html">صنعاء</a></li>
                <li title="عايلية" class="" id="flf_141_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">2,000,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                    <div class="list-tag tag-built">2010</div>
                    <div class="list-tag tag-mileage">88 ميل</div>
                    <div class="list-tag tag-trans">عادي</div>
                    <div class="list-tag tag-city">صنعاء</div>
                </div>
            </ul>
        </li>
        <li id="fli_788" class="col-md-4 col-sm-4"><a title="اكسنت 2006 نضيف" href="http://yemencar.com/autos/hyundai/accent/ksnt-2006-ndyf-788.html">
            <img alt="اكسنت 2006 نضيف" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/12-2018/ad788/Aksnt-2006-Ndyf-9911261b39a4848707cca5547e88f149.jpg" data-2x="http://yemencar.com/files/12-2018/ad788/Aksnt-2006-Ndyf-9911261b39a4848707cca5547e88f149_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/12-2018/ad788/Aksnt-2006-Ndyf-9911261b39a4848707cca5547e88f149.jpg&quot;);" width="1
                19"
                height="19"></a><ul class="no-price">
                    <li title="اكسنت 2006 نضيف" class="" id="flf_788_title"><a href="http://yemencar.com/autos/hyundai/accent/ksnt-2006-ndyf-788.html">اكسنت 2006 نضيف</a></li>
                    <li title="عايلية" class="" id="flf_788_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">1,300,000 </span><span class="currency-toggle" currency-data="currency_yer">ريال يمني</span></div>
                        <div class="list-tag tag-built">2006</div>
                        <div class="list-tag tag-trans">أوتوماتيكي</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_715" class="col-md-4 col-sm-4"><a title="للبيع كياسول 2013 زيرو" href="http://yemencar.com/autos/kia/soul/llby-kyswl-2013-zyrw-715.html">
            <img alt="للبيع كياسول 2013 زيرو" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/10-2018/ad715/Llby-Kyaswl-2013-Zyrw-df07ef44a649e2094720875e2d50e67c.jpg" data-2x="http://yemencar.com/files/10-2018/ad715/Llby-Kyaswl-2013-Zyrw-df07ef44a649e2094720875e2d50e67c_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/10-2018/ad715/Llby-Kyaswl-2013-Zyrw-df07ef44a649e2094720875e2d50e67c.jpg&quot;);" width="1
                39"
                height="19"></a><ul class="no-price">
                    <li title="للبيع كياسول 2013 زيرو" class="" id="flf_715_title"><a href="http://yemencar.com/autos/kia/soul/llby-kyswl-2013-zyrw-715.html">للبيع كياسول 2013 زيرو</a></li>
                    <li title="عايلية" class="" id="flf_715_body_style"></li>
                    <div class="tag-cont">
                        <div class="list-tag tag-price"><span class="price-toggle">3,900,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                        <div class="list-tag tag-built">2013</div>
                        <div class="list-tag tag-city">صنعاء</div>
                    </div>
                </ul>
        </li>
        <li id="fli_800" class="col-md-4 col-sm-4"><a title="هوندا اوديسي 2012 فل اللون اسود&nbsp;وداخل فتحة سقف&nbsp;
"
            href="http://yemencar.com/autos/honda/odyssey/hwnd-wdysy-2012-fl-llwn-swd-wdkhl-fth-sqf-800.html">
            <img alt="هوندا اوديسي 2012 فل اللون اسود&nbsp;وداخل فتحة سقف&nbsp;
"
                src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/12-2018/ad800/             hwnda-Awdysy-2012-Fl-Al-Lwn-Aswd&nbsp;
                        Wdakhl-Ftht-Sq-22889d9412690541b874b26fa752edf5.jpg"
                data-2x="http://yemencar.com/files/12-2018/ad800/hwnda-Awdysy-2012-Fl-Al-Lwn-Aswd&nbsp;Wdakhl-Ftht-Sq-22889d9412690541b874b26fa752edf5_x2.jpg"
                style="background-image: url(http://yemencar.com/files/12-2018/ad800/hwnda-Awdysy-2012-Fl-Al-Lwn-Aswd&nbsp;Wdakhl-Ftht-Sq-22889d9412690541b874b26fa752edf5.jpg);"
                width="286" height="39"></a>
            <ul class="no-price">
                <li title="هوندا اوديسي 2012 فل اللون اسود&nbsp;وداخل فتحة سقف&nbsp;"
                    class="" id="flf_800_title"><a href="http://yemencar.com/autos/honda/odyssey/hwnd-wdysy-2012-fl-llwn-swd-wdkhl-fth-sqf-800.html">هوندا اوديسي 2012 فل اللون اسود&nbsp;وداخل فتحة سقف&nbsp;</a></li>
                <li title="عايلية" class="" id="flf_800_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">6,400,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                    <div class="list-tag tag-built">2012</div>
                    <div class="list-tag tag-mileage">130000 كم</div>
                    <div class="list-tag tag-trans">أوتوماتيكي</div>
                    <div class="list-tag tag-city">صنعاء</div>
                </div>
            </ul>
        </li>
        <li id="fli_609" class="col-md-4 col-sm-4"><a title="اريد سيااره حلووه وعررطه بسعر 3000 سعودي او 3500سع" href="http://yemencar.com/autos/hyundai/accent/ryd-syrh-hlwwh-w-rrth-bs-r-3000-s-wdy-w-3500s-609.html">
            <img alt="اريد سيااره حلووه وعررطه بسعر 3000 سعودي او 3500سع" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/09-2018/ad609/Aryd-Syaarh-Hlwwh-Wrrth-Bsr-3000-Swdy-Aw-3500swdy-.jpg" data-2x="http://yemencar.com/files/09-2018/ad609/Aryd-Syaarh-Hlwwh-Wrrth-Bsr-3000-Swdy-Aw-3500swdy-.jpg" style="background-image: url(&quot;http://yemencar.com/files/09-2018/ad609/Aryd-Syaarh-Hlwwh-Wrrth-Bsr-3000-Swdy-Aw-3500swdy-.jpg&quot;);" width="289" height="39"></a>
            <ul class="no-price">
                <li title="اريد سيااره حلووه وعررطه بسعر 3000 سعودي او 3500سع" class="" id="flf_609_title"><a href="http://yemencar.com/autos/hyundai/accent/ryd-syrh-hlwwh-w-rrth-bs-r-3000-s-wdy-w-3500s-609.html">اريد سيااره حلووه وعررطه بسعر 3000 سعودي او 3500سع</a></li>
                <li title="سيدان" class="" id="flf_609_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">640,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                    <div class="list-tag tag-built">2006</div>
                    <div class="list-tag tag-trans">أوتوماتيكي</div>
                    <div class="list-tag tag-city"></div>
                </div>
            </ul>
        </li>
        <li id="fli_901" class="col-md-4 col-sm-4"><a title="تم تنزيل السعر لسبب السفر" href="http://yemencar.com/autos/hyundai/elantra/tm-tnzyl-ls-r-lsbb-lsfr-901.html">
            <img alt="تم تنزيل السعر لسبب السفر" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/02-2019/ad901/Tm-Tnzyl-As-Sr-Lsbb-As-Sfr-54eaf942f7fdfd08183338ee616c8b57.jpg" data-2x="http://yemencar.com/files/02-2019/ad901/Tm-Tnzyl-As-Sr-Lsbb-As-Sfr-54eaf942f7fdfd08183338ee616c8b57_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/02-2019/ad901/Tm-Tnzyl-As-Sr-Lsbb-As-Sfr-54eaf942f7fdfd08183338ee616c8b57.jpg&quot;);" width="161" height="19"></a>
            <ul class="no-price">
                <li title="تم تنزيل السعر لسبب السفر" class="" id="flf_901_title"><a href="http://yemencar.com/autos/hyundai/elantra/tm-tnzyl-ls-r-lsbb-lsfr-901.html">تم تنزيل السعر لسبب السفر</a></li>
                <li title="سيدان" class="" id="flf_901_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">1,920,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                    <div class="list-tag tag-built">2011</div>
                    <div class="list-tag tag-mileage">240 كم</div>
                    <div class="list-tag tag-trans">عادي</div>
                    <div class="list-tag tag-city"></div>
                </div>
            </ul>
        </li>
        <li id="fli_714" class="col-md-4 col-sm-4"><a title="للبيع كيا سول 2015 جديد">
            <img alt="للبيع كيا سول 2015 جديد" src="http://yemencar.com/templates/yemencar/img/blank_10x7.gif" data-1x="http://yemencar.com/files/10-2018/ad714/Llby-Kya-Swl-2015-Jdyd-af41cc9ef572d5f4052e908c50a69210.jpg" data-2x="http://yemencar.com/files/10-2018/ad714/Llby-Kya-Swl-2015-Jdyd-af41cc9ef572d5f4052e908c50a69210_x2.jpg" style="background-image: url(&quot;http://yemencar.com/files/10-2018/ad714/Llby-Kya-Swl-2015-Jdyd-af41cc9ef572d5f4052e908c50a69210.jpg&quot;);" width="148" height="19"></a>
            <ul class="no-price">
                <li title="للبيع كيا سول 2015 جديد" class="" id="flf_714_title"><a href="http://yemencar.com/autos/kia/soul/llby-ky-swl-2015-jdyd-714.html">للبيع كيا سول 2015 جديد</a></li>
                <li title="عايلية" class="" id="flf_714_body_style"></li>
                <div class="tag-cont">
                    <div class="list-tag tag-price"><span class="price-toggle">3,900,000</span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                    <div class="list-tag tag-built">2015</div>
                    <div class="list-tag tag-mileage">60000 كم</div>
                    <div class="list-tag tag-trans">أوتوماتيكي</div>
                    <div class="list-tag tag-city">صنعاء</div>
                </div>
            </ul>
        </li>

       --%>


        <%-- ############################ --%>


        <!-- #######################################################################  --!> 

<!--
<asp:ListView ID="CarList" runat="server" DataSourceID="CarListDS">





           <%--   <AlternatingItemTemplate>
                  <li style="">imagepath:
                      <asp:Label Text='<%# Eval("imagepath") %>' runat="server" ID="imagepathLabel" /><br />
                      ad_title:
                      <asp:Label Text='<%# Eval("ad_title") %>' runat="server" ID="ad_titleLabel" /><br />
                      price:
                      <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                      model_number:
                      <asp:Label Text='<%# Eval("model_number") %>' runat="server" ID="model_numberLabel" /><br />
                      ad_date:
                      <asp:Label Text='<%# Eval("ad_date") %>' runat="server" ID="ad_dateLabel" /><br />
                  </li>
              </AlternatingItemTemplate>
              <EditItemTemplate>
                  <li style="">imagepath:
                      <asp:TextBox Text='<%# Bind("imagepath") %>' runat="server" ID="imagepathTextBox" /><br />
                      ad_title:
                      <asp:TextBox Text='<%# Bind("ad_title") %>' runat="server" ID="ad_titleTextBox" /><br />
                      price:
                      <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br />
                      model_number:
                      <asp:TextBox Text='<%# Bind("model_number") %>' runat="server" ID="model_numberTextBox" /><br />
                      ad_date:
                      <asp:TextBox Text='<%# Bind("ad_date") %>' runat="server" ID="ad_dateTextBox" /><br />
                      <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /></li>
              </EditItemTemplate>
              <EmptyDataTemplate>
                  No data was returned.
              </EmptyDataTemplate>
              <InsertItemTemplate>
                  <li style="">imagepath:
                      <asp:TextBox Text='<%# Bind("imagepath") %>' runat="server" ID="imagepathTextBox" /><br />
                      ad_title:
                      <asp:TextBox Text='<%# Bind("ad_title") %>' runat="server" ID="ad_titleTextBox" /><br />
                      price:
                      <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br />
                      model_number:
                      <asp:TextBox Text='<%# Bind("model_number") %>' runat="server" ID="model_numberTextBox" /><br />
                      ad_date:
                      <asp:TextBox Text='<%# Bind("ad_date") %>' runat="server" ID="ad_dateTextBox" /><br />
                      <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /></li>
              </InsertItemTemplate>
              <ItemSeparatorTemplate>
                  <br />
              </ItemSeparatorTemplate>--%>

              <ItemTemplate>

                  <li id="fli_714" class="col-md-4 col-sm-4"><a href="#" title="<%# Eval("ad_title") %>">
                      <asp:ImageButton ID="CarImage" ImageUrl='<%# Eval("imagepath") %>' data-1x='<%# Eval("imagepath") %>' data-2x='<%# Eval("imagepath") %>' CssClass="card-img-top" Width="100%" Height="231" runat="server" />
                     
                      <ul class="no-price">

                          <li title="" class="" id="flf_714_title"><a href="#"><%# Eval("ad_title") %></a></li>
                     
                          <div class="tag-cont">
                              <div class="list-tag tag-price"><span class="price-toggle">
                                  <asp:Label ID="lblprice" CssClass="price-toggle" Text='<%# Eval("price") %>' runat="server" />
                              </span><span class="currency-toggle" currency-data="currency_yer"> ريال يمني</span></div>
                              <div class="list-tag tag-built"><%# Eval("model_number") %></div>
                              <div class="list-tag tag-mileage"><%# Eval("walkway") %> كم</div>
                              <div class="list-tag tag-trans">أوتوماتيكي</div>
                              <div class="list-tag tag-city">صنعاء</div>
                          </div>
                      </ul>
                  </li>
                
<%--                  <li style="">imagepath:
                      <asp:Label Text='<%# Eval("imagepath") %>' runat="server" ID="imagepathLabel" /><br />
                      ad_title:
                      <asp:Label Text='<%# Eval("ad_title") %>' runat="server" ID="ad_titleLabel" /><br />
                      price:
                      <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                      model_number:
                      <asp:Label Text='<%# Eval("model_number") %>' runat="server" ID="model_numberLabel" /><br />
                      ad_date:
                      <asp:Label Text='<%# Eval("ad_date") %>' runat="server" ID="ad_dateLabel" /><br />
                  </li>--%>


              </ItemTemplate>


<%--              <LayoutTemplate>
                  <ul runat="server" id="itemPlaceholderContainer" style="">
                      <li runat="server" id="itemPlaceholder" />
                  </ul>
                  <div style="">
                  </div>
              </LayoutTemplate>
              <SelectedItemTemplate>
                  <li style="">imagepath:
                      <asp:Label Text='<%# Eval("imagepath") %>' runat="server" ID="imagepathLabel" /><br />
                      ad_title:
                      <asp:Label Text='<%# Eval("ad_title") %>' runat="server" ID="ad_titleLabel" /><br />
                      price:
                      <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                      model_number:
                      <asp:Label Text='<%# Eval("model_number") %>' runat="server" ID="model_numberLabel" /><br />
                      ad_date:
                      <asp:Label Text='<%# Eval("ad_date") %>' runat="server" ID="ad_dateLabel" /><br />
                  </li>
              </SelectedItemTemplate>--%>
          </asp:ListView>
       -->

    </ul>

    <!-- listings boxes end -->

</div>


          
                        


        <asp:SqlDataSource ID="CarListDS" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A45C5E_carsConStrLocal %>' SelectCommand="SELECT carImage.imagepath, adverisement.ad_title, car.price ,car.walkway, carModel.model_number, adverisement.ad_date FROM adverisement INNER JOIN car ON adverisement.car_id = car.car_id INNER JOIN carImage ON car.car_id = carImage.car_id INNER JOIN carModel ON car.model_id = carModel.model_id"></asp:SqlDataSource>

<script>flUtil.init();</script>
