<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavCP.ascx.cs" Inherits="CarsShop.Cpanal.NavCP" %>



<!-- navbar  -->
<nav class="navbar navbar-expand-sm navbar-dark bg-dark" dir="rtl">
    <a class="navbar-brand" href="#">السوق اليمني الالكتروني</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav nav-fill w-50">
            <li class="nav-item active">
                <a class="nav-link" href="#">الرئيسية <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">السيارات</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">المستخدمين</a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <a class="dropdown-item" href="#">حسابات المستخدمين</a>
                    <a class="dropdown-item" href="#">حسابات البائعين</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">الإدارة</a>
            </li>
        </ul>

    </div>
</nav>
<!-- ------------------------------- -->
