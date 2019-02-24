<%@ Page Title="" Language="C#" MasterPageFile="~/Cpanal/CPms.Master" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="CarsShop.Cpanal.AccountDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container align-items-lg-center">
        <div class="container-fluid ">

            <h1 class=" py-3"></h1>
            <!-- Breadcrumbs-->
            <div class="breadcrumb ">
                <h3 class="text-capitalize text-center text-muted">
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("user_id","AccountDetails.aspx?user_id={0}") %>' CssClass="text-info" />
                    تفاصيل المستخدم 

                </h3>
            </div>
            <div class="card mb-3 bg-light">

                <div class="card-header text-center ">
                    <i class="fa fa-table "></i>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <div class="container-fluid center" dir="rtl">

                            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" CssClass="table table-sm table-borded bg-secondary text-light text-center" HorizontalAlign="Center" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                                <EmptyDataRowStyle CssClass="alert alert-danger" />
                                <EmptyDataTemplate>
                                    Sorry There is No Data To Show
                                </EmptyDataTemplate>

                                <Fields>
                                    <asp:TemplateField HeaderText="user_id" InsertVisible="False" SortExpression="user_id">
                                        <EditItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("user_id") %>' ID="Label1"></asp:Label>

                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Bind("user_id") %>' ID="Label1"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="اسم المستخدم" SortExpression="user_name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("user_name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("user_name") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("user_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="كلمة السر " SortExpression="password">
                                        <EditItemTemplate>
                                            &nbsp;<asp:TextBox ID="editpass" runat="server" CssClass="form-control" Text='<%# Bind("password") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="editpass" CssClass="alert alert-danger" Display="Dynamic" ErrorMessage="يجب كتابة كلمة سر "></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="insertpass" runat="server" CssClass="form-control" Text='<%# Bind("password") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="insertpass" CssClass="alert alert-danger" Display="Dynamic" ErrorMessage="يجب كتابة كلمة سر "></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="البريد الالكتروني" SortExpression="Email">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="editEmail" runat="server" CssClass="form form-control" Text='<%# Bind("Email") %>'></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="editEmail" CssClass="alert alert-info" Display="Dynamic" ErrorMessage="صيغة البريد غير صحيحة" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="insertEmail" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>'></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="insertEmail" CssClass="alert alert-info" Display="Dynamic" ErrorMessage="صيغة البريد غير صحيحة" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="رقم الجوال" SortExpression="phone_user">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="editphone" runat="server" CssClass="form-control" Text='<%# Bind("phone_user") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="editphone" CssClass="text text-info" Display="Dynamic" ErrorMessage="يجب كتابة رقم الهاتف"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="insertphone" runat="server" CssClass="form-control is-invalid" Text='<%# Bind("phone_user") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="insertphone" CssClass="text text-info" Display="Dynamic" ErrorMessage="يجب كتابة رقم الهاتف"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("phone_user") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="الاسم بالكامل" SortExpression="full_name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="editFN" runat="server" CssClass="form-control" Text='<%# Bind("full_name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="insertFN" runat="server" CssClass="form-control" Text='<%# Bind("full_name") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("full_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="تاريخ التسجيل" SortExpression="datatime_user">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Enabled="False" Text='<%# Bind("datatime_user") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control is-valid" Enabled="False" Text='<%# Bind("datatime_user") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("datatime_user") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="الموقع" SortExpression="location">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="editlocation" runat="server" CssClass="form-control" Text='<%# Bind("location") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="insertLocation" runat="server" CssClass="form-control" Text='<%# Bind("location") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("location") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="adderss" HeaderText="العنوان" SortExpression="adderss" />
                                    <asp:TemplateField HeaderText="نوع المستخدم" SortExpression="user_type_id">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="editdropusertype" runat="server" DataSourceID="editusertypedata" DataTextField="user_typy_name" DataValueField="user_type_id" SelectedValue='<%# Bind("user_type_id") %>'>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="editusertypedata" runat="server" ConnectionString="<%$ ConnectionStrings:CarDatabaseConnectionString %>" SelectCommand="SELECT * FROM [usertype]"></asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="insertdropusertype" runat="server" DataSourceID="editusertypedata" DataTextField="user_typy_name" DataValueField="user_type_id" SelectedValue='<%# Bind("user_type_id") %>'>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="editusertypedata" runat="server" ConnectionString="<%$ ConnectionStrings:CarDatabaseConnectionString %>" SelectCommand="SELECT * FROM [usertype]"></asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:DropDownList ID="usertypeitem" runat="server" CssClass="form-control align-content-center" DataSourceID="editusertypedata" DataTextField="user_typy_name" DataValueField="user_type_id" Enabled="False">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="editusertypedata" runat="server" ConnectionString="<%$ ConnectionStrings:CarDatabaseConnectionString %>" SelectCommand="SELECT * FROM [usertype]"></asp:SqlDataSource>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="حالة المستخدم" SortExpression="status_id">
                                        <EditItemTemplate>
                                            <asp:TextBox runat="server" Text='<%# Bind("status_id") %>' ID="TextBox1"></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox runat="server" Text='<%# Bind("status_id") %>' ID="TextBox1"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Bind("status_id") %>' ID="Label2"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ShowHeader="False">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-success fa fa-do" Text="Update"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger fa fa-undo" Text="Cancel"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary fa fa-database" Text="Insert"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger fa fa-undo" Text="Cancel"></asp:LinkButton>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-secondary fa fa-edit" Text="Edit"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" CssClass="btn btn-primary fa fa-hacker-news" Text="New"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btn btn-danger fa fa-trash" Text="Delete"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Fields>
                            </asp:DetailsView>

                        </div>



                    </div>
                </div>
            </div>


        </div>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:CarDatabaseConnectionString %>' SelectCommand="SELECT * FROM [acount_user] WHERE ([user_id] = @user_id)" DeleteCommand="DELETE FROM [acount_user] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [acount_user] ([user_name], [password], [Email], [phone_user], [full_name], [datatime_user], [location], [adderss], [user_type_id], [status_id]) VALUES (@user_name, @password, @Email, @phone_user, @full_name, @datatime_user, @location, @adderss, @user_type_id, @status_id)" UpdateCommand="UPDATE [acount_user] SET [user_name] = @user_name, [password] = @password, [Email] = @Email, [phone_user] = @phone_user, [full_name] = @full_name, [datatime_user] = @datatime_user, [location] = @location, [adderss] = @adderss, [user_type_id] = @user_type_id, [status_id] = @status_id WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone_user" Type="String"></asp:Parameter>
            <asp:Parameter Name="full_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="datatime_user" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="location" Type="String"></asp:Parameter>
            <asp:Parameter Name="adderss" Type="String"></asp:Parameter>
            <asp:Parameter Name="user_type_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="status_id" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="user_id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone_user" Type="String"></asp:Parameter>
            <asp:Parameter Name="full_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="datatime_user" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="location" Type="String"></asp:Parameter>
            <asp:Parameter Name="adderss" Type="String"></asp:Parameter>
            <asp:Parameter Name="user_type_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="status_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>


<%--
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [users] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [users] ([UserName], [Password], [Email], [Phone], [Age], [Gender], [Address], [FullName], [roles], [reg_date], [state]) VALUES (@UserName, @Password, @Email, @Phone, @Age, @Gender, @Address, @FullName, @roles, @reg_date, @state)" UpdateCommand="UPDATE [users] SET [UserName] = @UserName, [Password] = @Password, [Email] = @Email, [Phone] = @Phone, [Age] = @Age, [Gender] = @Gender, [Address] = @Address, [FullName] = @FullName, [roles] = @roles, [reg_date] = @reg_date, [state] = @state WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
            <asp:Parameter Name="roles" Type="String"></asp:Parameter>
            <asp:Parameter Name="reg_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="state" Type="Boolean"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
            <asp:Parameter Name="roles" Type="String"></asp:Parameter>
            <asp:Parameter Name="reg_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="state" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>--%>

</asp:Content>
