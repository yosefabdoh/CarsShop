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
    public class AdsClass
    {
        public AdsClass()
        {

        }
        public DataTable AdsSessions(string Adsid, string Carid)
        {
            string constring = WebConfigurationManager.ConnectionStrings["CarDatabaseConnectionString"].ToString();

            using (SqlConnection conn = new SqlConnection(constring))
            {
                string sql = "select * from adverisement where da_id =@adsid and car_id=@carid";
                SqlCommand cmd = new SqlCommand(sql, conn);

                SqlParameter adsid = new SqlParameter("@adsid", Adsid);
                SqlParameter carid = new SqlParameter("@carid", Carid);
                cmd.Parameters.Add(adsid);
                cmd.Parameters.Add(carid);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;

            }

        }
    }
}