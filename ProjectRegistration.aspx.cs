using System;
using System.IO;
using System.Collections.Generic;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Drawing.Imaging;
using Microsoft.CSharp;
using System.Text;

namespace DEVRE
{
    public partial class ProjectRegistration : System.Web.UI.Page
    {

        //public string Message = string.Empty;           // To store the Error or Message       
        //object Unknown = Type.Missing;                   // For passing Empty values
        //public enum StatusType { SUCCESS, FAILED };     // To Specify Success or Failure Types
        //public StatusType Status;                       // To know the Current Status

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Client Role Selection
                ShreeLibrary infoProc = new ShreeLibrary();
                //ddlUserRole.DataTextField = "EmailAddress";
                //ddlUserRole.DataValueField = "UserId";
                //ddlUserRole.DataSource = infoProc.GetUserId();
                //ddlUserRole.DataBind();
                //ddlUserRole.Items.Insert(0, "Select User");                
               }
            }
        

       // public string ImageName;
        protected void btnUserSave_Click(object sender, System.EventArgs e)
        {
            SqlConnection sqlConn = new SqlConnection();
            // Local Database Connection String    
            sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString();

            // Production Database Connection String
            //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                        
            string sqlUserExist = "SELECT Count(*) FROM tbl_Projects WHERE ProjectName = '" + txtProjectName.Text + "'";
            SqlCommand sqlComm = new SqlCommand(sqlUserExist, sqlConn);
            //SqlCommand sqlComm1 = new SqlCommand(sqlUserExist, sqlConn);
            sqlConn.Open();
            int UserCount = (int)sqlComm.ExecuteScalar();
            if (UserCount == 1)
            {
                lblOutput.Text = "Project already Exist, Select another project";
                return;
            }
            else
            {
             //   btnDisplay_Click();
            }
            
            byte byteStatus = 1;
            DateTime txtStartDate = DateTime.Today;
            DateTime txtEndDate = DateTime.Today;
            DateTime txtModifiedDate = DateTime.Today;
            // Client
            //string intUserRoleId = ddlUserRole.SelectedValue;
            //string txtUserRoleName = ddlUserRole.SelectedItem.ToString();
                        
            
            string strYourIp = HttpContext.Current.Request.UserHostAddress;
            //Declare Projects_TB Table (ProjectID int identity(1,1), YourCol1 varchar(5))

            sqlComm.CommandText = "INSERT INTO tbl_Projects(ProjectName, Domain, Technology, Details, Project_Start_Dt, Project_End_Dt," +                
                "Status, ModifiedDate)"+
                "VALUES('" + txtProjectName.Text + "', '" +  txtDomain.Text +
                "','" + txtTechnology.Text + "','" + txtDetails.Text + "','" + txtStartDate.Date + "','" + txtEndDate.Date +
                "','" + byteStatus + "','" + txtModifiedDate.Date + "')";
            sqlComm.ExecuteNonQuery();

            //sqlComm.Parameters.Clear();
            //sqlComm.CommandText = "SELECT @@IDENTITY";
            //int intProjectId = Convert.ToInt32(sqlComm.ExecuteScalar());

            //sqlComm.CommandText = "INSERT INTO ProjectUser_TB(UserId, ProjectId, Status, ModifiedDate)" +
            //    "VALUES('" + intUserRoleId + "','" + intProjectId + "', '"  + byteStatus + "', '" + txtModifiedDate.Date +"')";
            //sqlComm.ExecuteNonQuery();
                       

            sqlConn.Close();
            lblOutput.Text = "Project Name has Added Successfully";
            
            return;
        }
        
        protected void btnCancel_Click(object sender, System.EventArgs e)
        {
            // Fill blank values for all fields.....			
            txtProjectName.Text = null;          
        }        
    }
}