using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
using System.Security.Policy;
using System.Web;

namespace CarsShop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)

            {
                 
                if (Request.Cookies["userName"] != null)

                    inputEmail.Text = Request.Cookies["userName"].Value;

                if (Request.Cookies["Password"] != null)

                    inputPassword.Attributes.Add("value", Request.Cookies["Password"].Value);

                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    rememberme.Checked = true;
                    Response.Redirect("/Cpanal");

                }
            }
        }
        protected void btnLogin_Click(Object sender, EventArgs e)
        {

            Loginclass user = new Loginclass();

               DataTable data =  user.dologin(inputEmail.Text, inputPassword.Text);

         

            //String passwordHash = BCrypt.Net.BCrypt.HashPassword(inputPassword.Text);
      
            ///storedPassword from Database, etc.
          
            if (data.Rows.Count == 1)
            {
              
                if (rememberme.Checked == true)
                {
                    Response.Cookies["userName"].Value = inputEmail.Text;
                    Response.Cookies["Password"].Value = inputEmail.Text;
                    Response.Cookies["userName"].Expires = DateTime.Now.AddMinutes(2);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(2);

                }
                else
                {
                    Response.Cookies["userName"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["userid"] = data.Rows[0]["user_id"];
                Session["uname"] = data.Rows[0]["user_name"];
                Session["FN"] = data.Rows[0]["full_name"];

              
                Session.Timeout = 1;
                Response.Redirect("~/Cpanal");

            }
            else
            {

                ErrorLabel.Text = "wrong Password ";
                ErrorLabel.Visible = true;
            }
          




        }

    }
}