using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Configuration;
namespace CarsShop.ads
{
    public partial class addCarDetails : System.Web.UI.UserControl
    {
        public DataSet ds = new DataSet();
        SqlDataAdapter da;
        void load_data()
        {



            ds.Clear();
            SqlConnection con = new SqlConnection(@"Data Source=ANDROID2W4356\MSSQLSERVER2017;Initial Catalog=DB_A45C5E_cars;Integrated Security=True");


            da = new SqlDataAdapter("select * from carstatus", con);
            da.Fill(ds, "carstatus");
            DropCarState.DataSource = ds.Tables["carstatus"];
            DropCarState.DataTextField = "status_car_name";
            DropCarState.DataValueField = "status_car_id";
            DropCarState.DataBind();
            da = new SqlDataAdapter("select * from gearboxType", con);
            da.Fill(ds, "gearboxType");
            dropGearBox.DataSource = ds.Tables["gearboxType"];
            dropGearBox.DataTextField = "lime_name";
            dropGearBox.DataValueField = "lime_id";
            dropGearBox.DataBind();
            da = new SqlDataAdapter("select * from carcolore", con);
            da.Fill(ds, "carcolore");
            DropColor.DataSource = ds.Tables["carcolore"];
            DropColor.DataTextField = "colore_name";
            DropColor.DataValueField = "colore_id";
            DropColor.DataBind();
            da = new SqlDataAdapter("select * from fuelsType", con);
            da.Fill(ds, "fuelsType");
            DropFuelsType.DataSource = ds.Tables["fuelsType"];
            DropFuelsType.DataTextField = "Fuel_type_name";
            DropFuelsType.DataValueField = "Fuel_type_id";
            DropFuelsType.DataBind();
            da = new SqlDataAdapter("select * from supplyingtype", con);
            da.Fill(ds, "supplyingtype");
            DropSupply.DataSource = ds.Tables["supplyingtype"];
            DropSupply.DataTextField = "Incoming type_name";
            DropSupply.DataValueField = "Incoming type_id";
            DropSupply.DataBind();
            da = new SqlDataAdapter("select * from Cardoor", con);
            da.Fill(ds, "Cardoor");
            DropDoors.DataSource = ds.Tables["Cardoor"];
            DropDoors.DataTextField = "Emblems-name";
            DropDoors.DataValueField = "Emblems_id";
            DropDoors.DataBind();
            da = new SqlDataAdapter("select * from cylinderNo", con);
            da.Fill(ds, "cylinderNo");
            DropCylender.DataSource = ds.Tables["cylinderNo"];
            DropCylender.DataTextField = "baston_name";
            DropCylender.DataValueField = "baston_id";
            DropCylender.DataBind();


        }
        private DataSet getdata(string SpName, SqlParameter SPParameter)
        {
            string CS = ConfigurationManager.ConnectionStrings["DB_A45C5E_carsConStrLocal"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            SqlDataAdapter dda = new SqlDataAdapter(SpName, conn);
            dda.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SPParameter != null)
            {
                dda.SelectCommand.Parameters.Add(SPParameter);
            }
            DataSet DDs = new DataSet();
            dda.Fill(DDs);
            return DDs;

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

              
                load_data();
            }


        }
        SqlConnection con = new SqlConnection(@"Data Source=ANDROID2W4356\MSSQLSERVER2017;Initial Catalog=DB_A45C5E_cars;Integrated Security=True");

        protected void btnbrand_Click(object sender, EventArgs e)
        {
            // string s = Session["userid"].ToString();
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into  car ([brand_id],[type_id],[model_id],[status_id],lime_id,colore_id,Fuel_type_id,Incoming_type_id,Emblems_id,baston_id,walkway,number_potty,price,specif_name) values(@p1,@P2,@p3,@p4,@p5,@P6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14)", con);
                    cmd.Parameters.AddWithValue("@p1", dropbrand.Text);
                    cmd.Parameters.AddWithValue("@p2", dropcartype.Text);
                    cmd.Parameters.AddWithValue("@p3", DropCarModel.Text);
                    cmd.Parameters.AddWithValue("@p4", DropCarState.Text);
                    cmd.Parameters.AddWithValue("@p5", dropGearBox.Text);
                    cmd.Parameters.AddWithValue("@p6", DropColor.Text);
                    cmd.Parameters.AddWithValue("@p7", DropFuelsType.Text);
                    cmd.Parameters.AddWithValue("@p8", DropSupply.Text);
                    cmd.Parameters.AddWithValue("@p9", DropDoors.Text);
                    cmd.Parameters.AddWithValue("@p10", DropCylender.Text);
                    cmd.Parameters.AddWithValue("@p11", txtMile.Text);
                    cmd.Parameters.AddWithValue("@p12", txtEngineNumber.Text);
                    cmd.Parameters.AddWithValue("@p13", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@p14", DropSpecifcations.Text);
                    cmd.ExecuteNonQuery();
                    string u;
                    cmd = new SqlCommand("select max(car_id) from car ", con);
                    u = cmd.ExecuteScalar().ToString();

                    cmd = new SqlCommand("insert into  adverisement (ad_title,car_id,status_ad_id,specif_detils) values(@p1,@p2,@p3,@p4)", con);
                    cmd.Parameters.AddWithValue("@p1", txtAdsTitle.Text);
                    cmd.Parameters.AddWithValue("@p2", u);
                    cmd.Parameters.AddWithValue("@p3", 1);
                    cmd.Parameters.AddWithValue("@p4", TxtAdsDetails.Text);
                    //  cmd.Parameters.AddWithValue("@p3", datatime);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    load_data();

                }
                Label1.Text = "تم الحفظ";

                //Response.Write("OK");
            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
            }
            //string su;
            //cmd = new SqlCommand("select [adverisement].[status_ad_id],[adverisement].[ad_title] as adverisement, adverisementStatus.status_ad_name as adNamefrom adverisementjoin adverisementStatuson adverisementStatus.status_ad_id=[adverisement].[status_ad_id] where [adverisementStatus].[status_ad_id]= su", Con);

        }

        protected void dropbrand_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (dropbrand.SelectedIndex == 0)
            {
                dropcartype.SelectedIndex = 0;
                dropcartype.Enabled = false;
                DropCarModel.SelectedIndex = 0;
                DropCarModel.Enabled = false;


            }
            else
            {
                dropcartype.Enabled = true;
                SqlParameter parameter = new SqlParameter("@brand_id", dropbrand.SelectedValue);
                DataSet DDs = getdata("CarTypeProc", parameter);
                dropcartype.DataSource = DDs;
                dropcartype.DataTextField = "type_name";
                dropcartype.DataValueField = "type_id";
                dropcartype.DataBind();
                ListItem lictp = new ListItem("اختارنوع", "-1");
                dropcartype.Items.Insert(0, lictp);
                DropCarModel.SelectedIndex = 0;

                DropCarModel.Enabled = false;

            }

        }

        protected void dropcartype_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dropcartype.SelectedIndex == 0)
            {
                DropCarModel.SelectedIndex = 0;
                DropCarModel.Enabled = false;

            }
            else
            {
                DropCarModel.Enabled = true;
                SqlParameter parameter = new SqlParameter("@type_id", dropcartype.SelectedValue);
                DataSet DDs = getdata("CarModelProc", parameter);
                DropCarModel.DataSource = DDs;
                DropCarModel.DataTextField = "model_number";
                DropCarModel.DataValueField = "model_id";
                DropCarModel.DataBind();
                ListItem limo = new ListItem("اختار موديل", "-1");
                DropCarModel.Items.Insert(0, limo);

            }
        }
    }
}