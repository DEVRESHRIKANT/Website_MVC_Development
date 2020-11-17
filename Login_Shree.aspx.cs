using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Configuration;
using System.Linq;

namespace DEVRE
{
    public partial class Login_Shree : System.Web.UI.Page
    {
#pragma warning disable CS0414 // The field 'Login_Shree.blnLoggedIn' is assigned but its value is never used
        Boolean blnLoggedIn = false;
#pragma warning restore CS0414 // The field 'Login_Shree.blnLoggedIn' is assigned but its value is never used
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //ShreeLibrary LoggedProc = new ShreeLibrary();
          //  string mRoleName = LoggedProc.GetRoleName(pRoleId);
            //if (Request.IsAuthenticated)
            //{
            //    divErrorMsg.InnerText = "Good Loged In -  for user" + txtLogin.Text;
            //    Response.Redirect("default.aspx", true);
            //}
            //else
            //{
            //    //          Response.Redirect("login.aspx", false);
            //}

        }
        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {

        }
        #endregion

        protected void btnCheckLogin_Click(object sender, System.EventArgs e)
        {
            //txtLogin.Text = "devreshrikant8@gmail.com";
            //txtPassword.Text = "kHUSHI2002";

            SqlConnection sqlConn = new SqlConnection();
            sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();        
        //    sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();        
            string sSQL = "SELECT  EmailAddress, LastName, RoleId, (select RoleName from tbl_UserRole AS Roles where Roles.RoleId = Users.RoleId) as rolename FROM tbl_Users Users WHERE Status='1' AND EmailAddress = '" + txtLogin.Text.ToLower().Trim() + "' AND UserPassword='" + txtPassword.Text + "'";
            //SELECT  EmailAddress, RoleId, (select RoleName from tbl_UserRole AS Roles where Roles.RoleId = Users. RoleId) as rolename FROM tbl_Users Users WHERE EmailAddress = 'guest@guest.com' AND UserPassword='guest'
            SqlCommand sqlComm = new SqlCommand(sSQL, sqlConn);
            sqlConn.Open();
            DataSet ds =new DataSet();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComm);         
            sqlDataAdapter.Fill(ds);
            
            //DbContext obj = new DbContext(System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString());
           // DataClasses1DataContext objdata = new DataClasses1DataContext(System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString());
          //  objdata.tbl_Userss.Select(x => x.UserName == txtLogin.Text.ToLower().Trim()).FirstOrDefault();
           
    //        if (ds.Tables.Count!=0 && ds.Tables[0].Rows.Count!=0)
            if (ds.Tables.Count != 0)
            {
                //if (ds.Tables[0].Rows[0]["RoleName"].ToString() == "Client")
                //{
                //    // Client Logged-In only able to see Consultants Details
                //    RedirectUser(ds);
                //}
                //else if (ds.Tables[0].Rows[0]["RoleName"].ToString() == "Consultant")
                //{
                //    // Consultant Logged-In only able to see Clients Details
                //    RedirectUser(ds);
                //}

                divErrorMsg.InnerText = "Login Successful! for user " + txtLogin.Text;
                Session["LoggedIn"] = true;
                //FormsAuthentication.SetAuthCookie(
                // this.txtLogin.Text.Trim(), false);

               // FormsAuthenticationTicket ticket1 =
               //    new FormsAuthenticationTicket(
               //         1,                                   // version
               //         this.txtLogin.Text.Trim(),   // get username  from the form
               //         DateTime.Now,                        // issue time is now
               //         DateTime.Now.AddMinutes(30),         // expires in 30 minutes
               //         false,      // cookie is not persistent
               //       "Client"                              // role assignment is stored
               //     // in userData
               //         );
               // HttpCookie cookie1 = new HttpCookie(
               //   FormsAuthentication.FormsCookieName,
               //   FormsAuthentication.Encrypt(ticket1));
               //HttpContext.Current.Response.Cookies.Add(cookie1);             
                
               

               // divErrorMsg.InnerText = "Good Loged In -  for user" + txtLogin.Text;
               //string sSQL = "SELECT  UserName, EmailAddress, RoleId, (select RoleName from tbl_UserRole AS Roles where Roles.RoleId = Users.RoleId) as rolename FROM tbl_Users Users WHERE EmailAddress = '" + txtLogin.Text.ToLower().Trim() + "' AND UserPassword='" + txtPassword.Text + "'";
                //SqlCommand sqlComm = new SqlCommand(sSQL, sqlConn);
                SqlDataReader myReader;
                

               // SqlCommand sqlComm = new SqlCommand(sSQL, sqlConn);
                myReader = sqlComm.ExecuteReader();
                myReader.Read();
              //  myReader.GetInt32(1); //  txtLogin.Text;
                
     //           Session["UserId"] = myReader.GetInt32(0);              
                //if (myReader.GetInt32(0) != null)
                //{
                //    Session["UserId"] = myReader.GetInt32(0);
                //}
                //Session["LoggedIn"] = true;

                if (Page.Title != null)
                {
                    Session["CurrentPage"] = Page.Title;
                }
                if (myReader.GetString(0) != null)
                {
                    Session["EmailAddress"] = myReader.GetString(0);
                }

                if (myReader.GetString(1) != null)
                {
                    Session["LastName"] = myReader.GetString(1);
                }


               
                //string mRoleName = LoggedProc.GetRoleName(pRoleId);
                //if (myReader.IsDBNull(17) != null)
                //{ 
                //    Session["RoleId"] = (myReader.GetInt32(2));
                //}
                //Session["RoleName"] = myReader.GetString(3);
                //if (myReader.GetString(3) != null)
                //{
                //    Session["RoleName"] = myReader.GetString(3);
                //}
                
                //+ myReader.GetString(4) + myReader.GetString(5);
               // //	string returnUrl = Request.QueryString["ReturnUrl"];
               // //Response.Redirect(returnUrl);


                myReader.Close();
                Response.Redirect("Devre_Home_Web.aspx");

                //FormsAuthentication.RedirectFromLoginPage("default.aspx",false);
                //FormsAuthentication.RedirectFromLoginPage(returnUrl,false);

               // RedirectUser(ds);               
            }
            else
            {
                divErrorMsg.InnerText = "Login failed! for user " + txtLogin.Text;
                Session["LoggedIn"] = false;
                FormsAuthentication.RedirectFromLoginPage("/",false);
                RedirectUser(ds);  

            }
        }
        private void RedirectUser(DataSet ds)
        {
            if (ds.Tables[0].Rows[0]["RoleName"].ToString() == "Client") 
            {
                Response.Redirect("Examples.aspx");
            }
            else if (ds.Tables[0].Rows[0]["RoleName"].ToString() == "Consultant")
            {
                FormsAuthentication.SetAuthCookie(
                 this.txtLogin.Text.Trim(), false);

                FormsAuthenticationTicket ticket1 =
                   new FormsAuthenticationTicket(
                        1,                                   // version
                        this.txtLogin.Text.Trim(),   // get username  from the form
                        DateTime.Now,                        // issue time is now
                        DateTime.Now.AddMinutes(30),         // expires in 10 minutes
                        false,      // cookie is not persistent
                        "Consultant"                              // role assignment is stored
                    // in userData
                        );
                HttpCookie cookie1 = new HttpCookie(
                  FormsAuthentication.FormsCookieName,
                  FormsAuthentication.Encrypt(ticket1));
                Response.Cookies.Add(cookie1);
                
                Response.Redirect("Client.aspx");
            }
            else if(ds.Tables[0].Rows[0]["RoleName"].ToString() == "Administrator")
            {
                Response.Redirect("Devre_Home_Web.aspx");
            }
        }
        private void lbForgotPassword_OnClick(object sender, System.EventArgs e)
        {
            Response.Redirect("Devre_Home_Web.aspx");
        }

        protected void lbCreateNewAccount_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("UserRegistration.aspx");
        }
        //[return: Parameter(DbType="string")]
        //public string GetRoleName[Parameter(Name="pRoleId", DbType="bitint")], Paramter(Name=pRoleName, DbType="string")]
        //{
        //    IExecuteResult result = ();
        //    return ((string)(result.ReturnValue));
        //}
    }
}