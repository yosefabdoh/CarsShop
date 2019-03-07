using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarsShop.ads
{
    public partial class AddAds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //AddUserControlInPage(); 


        }
        //public void AddUserControlInPage()
        //{
        //    this.PlaceHolderUserControl.Controls.Clear();
        //    string path = string.Empty;
        //    if (ViewState["UC"] == null)
        //    {
        //        // Please change the path as your own to load the WebUserControl dynamically.
        //        path = "~/ads/addCarAds.ascx";
        //    }
        //    else
        //    {
        //        switch (ViewState["UC"].ToString())
        //        {
        //            case "first":

        //                // Please change the path as your own to load the WebUserControl dynamically.
        //                path = "~/ads/addCarAds.ascx";
        //                break;
        //            case "second":

        //                // Please change the path as your own to load the WebUserControl dynamically.
        //                path = "~/ads/addCarDetails.ascx";
        //                break;
        //        }
        //    }
        //    Page p = new Page();
        //    Control uc = p.LoadControl(path);
        //    this.PlaceHolderUserControl.Controls.Add(uc);
        //}


      
    }
}