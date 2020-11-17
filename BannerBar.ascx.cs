using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Drawing;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.WebPages;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Helpers;

namespace DEVRE
{
    public partial class BannerBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create an AdRotator control.
            AdRotator AdRotator1 = new AdRotator();

            // Set the control's properties.
            // AdRotator1.AdvertisementFile = "HeaderImages.xml";

            // Add the control to the Controls collection of a 
            // PlaceHolder control.  
            //PlaceHolder1.Controls.Add(AdRotator1);
        }
    }
}