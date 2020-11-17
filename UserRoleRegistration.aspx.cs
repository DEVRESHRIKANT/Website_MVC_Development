using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Drawing.Imaging;
using Microsoft.CSharp;
using System.Text;
//using System.Object;
//using System.Exception;
//using System.SystemException;
//using System.NullReferenceException;

namespace DEVRE
{
    //public class NullReferenceException : SystemException { }
    public partial class UserRoleRegistration : System.Web.UI.Page
    {
        public string Message = string.Empty;           // To store the Error or Message        
        object Unknown = Type.Missing;                   // For passing Empty values
        public enum StatusType { SUCCESS, FAILED };     // To Specify Success or Failure Types
        public StatusType Status;                       // To know the Current Status

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // User Name List
                ShreeLibrary shreeProc = new ShreeLibrary();

                // Buttons Visible / Disabled
                btnRoleSave.Visible = true;
                btnUpdate.Visible = true;
                btnDelete.Visible = true;
            }
        }
               
        protected void btnRoleSave_Click(object sender, System.EventArgs e)
        {

            try
            {
                if (txtRoleName.Text != null)
                {
                    SqlConnection sqlConn = new SqlConnection();
                    // Local Database Connection String    
                //    sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString();
                    sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;

                    // Production Database Connection String
                    //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();

                    string sqlUserExist = "SELECT Count(*) FROM tbl_UserRole WHERE Status='1' AND RoleName = '" + txtRoleName.Text + "'";
                    SqlCommand sqlComm = new SqlCommand(sqlUserExist, sqlConn);
                    sqlConn.Open();
                    int UserCount = (int)sqlComm.ExecuteScalar();
                    if (UserCount == 1)
                    {
                        lblOutput.Text = "User Role already Exist, Select another Role Name";
                        return;
                    }
                    else
                    {
                        //   btnDisplay_Click();
                    }

                    string strYourIp = HttpContext.Current.Request.UserHostAddress;
                    byte byteStatus = 1;
                    DateTime txtModifiedDate = DateTime.Today;

                    sqlComm.CommandText = "INSERT INTO tbl_UserRole(RoleName, Status, ModifiedDate)" +
                                "VALUES('" + txtRoleName.Text + "', '" + byteStatus + "','" + txtModifiedDate.Date + "')";
                    sqlComm.ExecuteNonQuery();
                    sqlConn.Close();
                    lblOutput.Text = "User Role has Added Successfully";
                    return;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Exception Occre while inserting data:" + ex.Message + "\t" + ex.GetType());
            }
        }

        protected void btnUpdate_Click(object sender, System.EventArgs e)
        {
        }

        protected void btnTest_Click(object sender, System.EventArgs e)
        {
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtRoleName.Text != null)
            {

            }
        }
        public static void myInsert()
        { }
        
        protected void btnCancel_Click(object sender, System.EventArgs e)
        {
            // Fill blank values for all fields.....			
            txtRoleName.Text = null;           
        }               
    }
}