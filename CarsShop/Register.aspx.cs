using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;
namespace CarsShop
{
    public partial class Register : System.Web.UI.Page
    {
        public DataSet ds = new DataSet();
        SqlDataAdapter da;
        void load_data()
        {

          

            ds.Clear();
            SqlConnection con = new SqlConnection(@"Data Source=ANDROID2W4356\MSSQLSERVER2017;Initial Catalog=DB_A45C5E_cars;Integrated Security=True");



            da = new SqlDataAdapter("select * from usertype", con);
            da.Fill(ds, "usertype");
            DropUserKind.DataSource = ds.Tables["usertype"];
            DropUserKind.DataTextField = "user_typy_name";
            DropUserKind.DataValueField = "user_type_id";
            DropUserKind.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data();
        }
        // SqlConnection con = new SqlConnection(@"Data Source=(localdb)\Projects;Initial Catalog=DB_A45C5E_cars;Integrated Security=True");




        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (Page.IsValid)
            {
                string CS = ConfigurationManager.ConnectionStrings["CarDatabaseConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {   // التسجيل والتحقق من اسم المستخدم في نفس الوقت 
                    SqlCommand cmd = new SqlCommand("Vacountusers", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    string EnPassord = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassw.Text, "SHA1");
                    SqlParameter username = new SqlParameter("@user_name", txtUserName.Text);
                    SqlParameter password = new SqlParameter("@password", EnPassord);
                    SqlParameter Email = new SqlParameter("@Email", txtEmail.Text);
                    SqlParameter phoneuser = new SqlParameter("@phoneuser", txtPhone.Text);
                    SqlParameter fullname = new SqlParameter("@fullname", txtFullname.Text);
                    SqlParameter location = new SqlParameter("@location", DrowbCitiesOfYemenChangeRegester.Text);
                    SqlParameter adderss = new SqlParameter("@adderss", txtAdreess.Text);
                    SqlParameter usertypeid = new SqlParameter("@usertypeid", DropUserKind.Text);
                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(Email);
                    cmd.Parameters.Add(phoneuser);
                    cmd.Parameters.Add(fullname);
                    cmd.Parameters.Add(location);
                    cmd.Parameters.Add(adderss);
                    cmd.Parameters.Add(usertypeid);
                    con.Open();
                    int ReturnCode = (int)cmd.ExecuteScalar();


                    if (ReturnCode == -1)
                    {

                        Labmes.Text = "هذا المستخدم موجود من قبل الرجاء ادخال اسم اخر";
                    }

                    else
                    {

                        Response.Redirect("~/login.aspx");
                    }

                }
            }



            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //        SqlCommand cmd = new SqlCommand("insert into  acount_user (user_name,password,Email,phone_user,full_name,location,adderss,user_type_id) values(@p1,@P2,@p3,@p4,@P5,@p6,@p7,@P8)", con);
            //        cmd.Parameters.AddWithValue("@p1", txtUserName.Text);
            //        cmd.Parameters.AddWithValue("@p2", txtpassw.Text);
            //        cmd.Parameters.AddWithValue("@p3", txtEmail.Text);
            //        cmd.Parameters.AddWithValue("@p4", txtPhone.Text);
            //        cmd.Parameters.AddWithValue("@p5", txtFullname.Text);
            //        cmd.Parameters.AddWithValue("@p6", DrowbCitiesOfYemenChangeRegester.Text);
            //        cmd.Parameters.AddWithValue("@p7", txtAdreess.Text);
            //        cmd.Parameters.AddWithValue("@p8", DropUserKind.Text);
            //        cmd.ExecuteNonQuery();
            //        con.Close();

            //        Label1.Text = "تم الحفظ";

            //    }
        }


    }
}