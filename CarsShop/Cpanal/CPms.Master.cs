﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarsShop.Cpanal
{
    public partial class CPms : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FN"] == null)
                Response.Redirect("~/Login.aspx");
        }
       
    }
}