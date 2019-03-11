using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;

namespace CarsShop
{
    public class Loginclass
    {
        public Loginclass()
        {

        }
        public DataTable dologin(string username, string password)
        {
            string constring = WebConfigurationManager.ConnectionStrings["CarDatabaseConnectionString"].ToString();

            using (SqlConnection conn = new SqlConnection(constring))
            {
                string sql = "select * from acount_user where user_name =@username and password=@password and user_type_id = 3";
                SqlCommand cmd = new SqlCommand(sql, conn);
                string EnPassord = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                SqlParameter parusername = new SqlParameter("@username", username);
                SqlParameter parpassword = new SqlParameter("@password", EnPassord);
                cmd.Parameters.Add(parusername);
                cmd.Parameters.Add(parpassword);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;


            }

        }


    }
}