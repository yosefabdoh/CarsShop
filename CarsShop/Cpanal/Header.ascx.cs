using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarsShop.Cpanal
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            lbl2.Text = Convert.ToString(Session["FN"]);
            Label1.Text = Convert.ToString(Session["FN"]);
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lbldate1.Text = System.DateTime.Now.ToString();
        }

        protected void logout2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("..");
        }
    }
}