<%@ Page Title="" Language="C#" MasterPageFile="~/Cpanal/CPms.Master" AutoEventWireup="true" CodeBehind="AccountShow.aspx.cs" Inherits="CarsShop.Cpanal.AccountShow" %>

<%@ Register Src="~/Cpanal/AccountList.ascx" TagPrefix="uc1" TagName="AccountList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            direction: ltr;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">

            <div class="card mb-3" style="left: 0px; top: 0px">
                <div class="card-header text-center">
                    <i class="fa fa-table"></i>جدول المنتجات
                </div>
                <div class="card-body">




                    <div class="row">
                        <div class="card mb-4">
                            <div class="card-header text-center">
                                <i class="fa fa-table"></i>جدول المستخدمين
                            </div>
                            <div class="card-body">


                                <div class="table table-bordered table-hover text-center">

                                    <div class="auto-style2">

                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" dir="rtl" DataKeyNames="user_id" DataSourceID="UsersDataSource" CssClass="  ">
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" CssClass=" fa fa-eye btn btn-info btn-sm" PostBackUrl='<%# Eval("user_id", "AccountDetails.aspx?id={0}") %>'></asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm ('do you want to delete?')" CssClass="btn btn-danger btn-sm" Text="Delete">
                                                        <i class="fa fa-trash"> </i>
                                                    </asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                                            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" ControlStyle-CssClass="text-center">
                                                <ControlStyle CssClass="text-center" />
                                            <HeaderStyle CssClass="text-center" />
                                            <ItemStyle CssClass="text-center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="phone_user" HeaderText="phone_user" SortExpression="phone_user" />
                                            <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                            <asp:BoundField DataField="datatime_user" HeaderText="datatime_user" SortExpression="datatime_user" />
                                            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                                            <asp:BoundField DataField="adderss" HeaderText="adderss" SortExpression="adderss" />
                                            <asp:BoundField DataField="user_type_id" HeaderText="user_type_id" SortExpression="user_type_id" />
                                            <asp:BoundField DataField="status_id" HeaderText="status_id" SortExpression="status_id" />
                                        </Columns>
                                    </asp:GridView>
                                    </div>
                                    <asp:SqlDataSource ID="UsersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CarDatabaseConnectionString %>" SelectCommand="SELECT * FROM [acount_user]" DeleteCommand="DELETE FROM [acount_user] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [acount_user] ([user_name], [password], [Email], [phone_user], [full_name], [datatime_user], [location], [adderss], [user_type_id], [status_id]) VALUES (@user_name, @password, @Email, @phone_user, @full_name, @datatime_user, @location, @adderss, @user_type_id, @status_id)" UpdateCommand="UPDATE [acount_user] SET [user_name] = @user_name, [password] = @password, [Email] = @Email, [phone_user] = @phone_user, [full_name] = @full_name, [datatime_user] = @datatime_user, [location] = @location, [adderss] = @adderss, [user_type_id] = @user_type_id, [status_id] = @status_id WHERE [user_id] = @user_id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="user_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="user_name" Type="String" />
                                            <asp:Parameter Name="password" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="phone_user" Type="String" />
                                            <asp:Parameter Name="full_name" Type="String" />
                                            <asp:Parameter Name="datatime_user" Type="DateTime" />
                                            <asp:Parameter Name="location" Type="String" />
                                            <asp:Parameter Name="adderss" Type="String" />
                                            <asp:Parameter Name="user_type_id" Type="Int32" />
                                            <asp:Parameter Name="status_id" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="user_name" Type="String" />
                                            <asp:Parameter Name="password" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="phone_user" Type="String" />
                                            <asp:Parameter Name="full_name" Type="String" />
                                            <asp:Parameter Name="datatime_user" Type="DateTime" />
                                            <asp:Parameter Name="location" Type="String" />
                                            <asp:Parameter Name="adderss" Type="String" />
                                            <asp:Parameter Name="user_type_id" Type="Int32" />
                                            <asp:Parameter Name="status_id" Type="Int32" />
                                            <asp:Parameter Name="user_id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>


            </div>
        </div>
    </div>

</asp:Content>
