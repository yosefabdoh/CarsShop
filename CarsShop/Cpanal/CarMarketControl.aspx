<%@ Page Title="" Language="C#" MasterPageFile="~/Cpanal/CPms.Master" AutoEventWireup="true" CodeBehind="CarMarketControl.aspx.cs" Inherits="CarsShop.Cpanal.CarMarketControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10" dir="rtl">


                <div class="jumbotron" dir="rtl">
                    <h1 class="display-5">قائمة حسابات المستخدمين </h1>
                    <p class="lead">مرحبا بك في لوحة  التحكم الخاصة  بالمستخدمين المسجلين في الموقع .</p>
                    <hr class="my-4">
                    <p>في حال اردت اضافة مستخدم جديد يمكن الضغط على الزر ادناه.</p>
                    <p class="lead">
                        <a class="btn btn-primary btn-lg" href="CreateAccount.aspx" role="button">إنشاء مستخدم</a>
                        <a class="btn btn-primary btn-lg" href="AccountShow.aspx" role="button">عرض المستخدمين</a>
                    </p>
                </div>
                <br />
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active align-content-center" aria-current="page">Home</li>
                    </ol>
                </nav>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="UserDataSummery" CssClass="table table-bordered table-hover text-center " AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" InsertVisible="False" SortExpression="user_id"></asp:BoundField>
                        <asp:BoundField DataField="user_name" HeaderText="اسم المستخدم" SortExpression="user_name"></asp:BoundField>
                        <asp:BoundField HeaderStyle-CssClass="align-content-center" DataField="password" HeaderText="كلمة السر" SortExpression="password">
<HeaderStyle CssClass="align-content-center"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderStyle-CssClass="align-content-center" DataField="Email" HeaderText="البريد" SortExpression="Email">
<HeaderStyle CssClass="align-content-center"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="phone_user" HeaderText="رقم التلفون" SortExpression="phone_user"></asp:BoundField>
                        <asp:BoundField DataField="full_name" HeaderText="الاسم بالكامل" SortExpression="full_name"></asp:BoundField>
                        <asp:BoundField DataField="datatime_user" HeaderText="تاريخ التسجيل" SortExpression="datatime_user"></asp:BoundField>
                        <asp:BoundField DataField="location" HeaderText="العنوان" SortExpression="location" />
                        <asp:BoundField DataField="adderss" HeaderText="العنوان 2" SortExpression="adderss" />
                        <asp:TemplateField HeaderText="نوع المستخدم" SortExpression="user_type_id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("user_type_id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form form-control" DataSourceID="Sqldatausertype" DataTextField="user_typy_name" DataValueField="user_type_id" Enabled="False">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Sqldatausertype" runat="server" ConnectionString="<%$ ConnectionStrings:CarDatabaseConnectionString %>" SelectCommand="SELECT [acount_user].user_type_id, usertype.user_typy_name FROM [acount_user] INNER JOIN usertype ON [acount_user].user_type_id = usertype.user_type_id"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="حالة المستخدم" SortExpression="sta    tus_id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("status_id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="userStatusDataSource" DataTextField="status_name" DataValueField="status_id" Enabled="False">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="userStatusDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CarDatabaseConnectionString %>" SelectCommand="SELECT [acount_user].status_id, userstatus.status_name FROM [acount_user] INNER JOIN userstatus ON [acount_user].status_id = userstatus.status_id"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="UserDataSummery" ConnectionString='<%$ ConnectionStrings:CarDatabaseConnectionString %>' SelectCommand="SELECT * FROM [acount_user]"></asp:SqlDataSource>
                <br />
            </div>
            <div class="col-md-3">
            </div>
        </div>

    </div>
</asp:Content>
