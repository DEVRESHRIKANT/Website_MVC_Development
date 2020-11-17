using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace DEVRE
{
    public partial class TopBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["UserName"] == null)
            //{
            //    Response.Redirect("login_Shree.aspx");
            //}

            //if (Session["UserId"] == null || Convert.ToInt32(Session["UserId"]) == 0)
            //{
            //    Response.Redirect("login_Shree.aspx");
            //}
            //else
            //{
            //    //		string returnUrl = Request.QueryString["ReturnUrl"];
                //		Response.Redirect(returnUrl);
                //		Response.Redirect("SunbeltHome.aspx");
                //		FormsAuthentication.RedirectFromLoginPage("SunbeltHome.aspx",false);

                //		FormsAuthentication.RedirectFromLoginPage(returnUrl,false);
            
            //if (Session["UserName"] != null)
            //{
            //    //divUserName.InnerText = "User Name: " + Session["UserName"].ToString();
            //    //divPhoneNumber.InnerText = "Phone Number: " + Session["PhoneNumber"].ToString();
            //    //divEmailAddress.InnerText = "EmailAddress:" + Session["EmailAddress"].ToString();
                
            //}
            //else
            //{
            //    //divUserName.InnerText = "User Name: "; 
            //    //divPhoneNumber.InnerText = "Phone Number: ";
            //    //divEmailAddress.InnerText = "EmailAddress:";
                
            //}        

    }
        protected void btnLogOut_Click(object sender, System.EventArgs e)
        {
            //Session["UserName"] = null;
            //Session["PhoneNumber"] = null;
            //Session["EmailAddress"] = null;
            //divUserName.InnerText = "User Name: ";
            //divPhoneNumber.InnerText = "Phone Number: ";
            //divEmailAddress.InnerText = "EmailAddress:";
            //Session.Abandon();
            //FormsAuthentication.SignOut();
        }  
    }
}