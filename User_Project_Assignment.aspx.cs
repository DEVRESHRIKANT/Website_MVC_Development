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
    public partial class User_Project_Assignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // User Name Selection
                ShreeLibrary infoProc = new ShreeLibrary();
                ddlUserName.DataTextField = "EmailAddress";
                ddlUserName.DataValueField = "UserId";
                ddlUserName.DataSource = infoProc.GetUserId();
                ddlUserName.DataBind();
                ddlUserName.Items.Insert(0, "Select User");
                
                // Project Name Selection
                ddlProjectName.DataTextField = "ProjectName";
                ddlProjectName.DataValueField = "ProjectId";
                ddlProjectName.DataSource = infoProc.GetProjectId();
                ddlProjectName.DataBind();
                ddlProjectName.Items.Insert(0, "Select Project");


            }
        }
        protected void btnProjectSave_Click(object sender, System.EventArgs e)
        {
            SqlConnection sqlConn = new SqlConnection();
            // Local Database Connection String    
            sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString();

            // Production Database Connection String
            //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            string sqlUserExist = "SELECT Count(*) FROM tbl_ProjectUser WHERE ProjectID = '" + (ddlProjectName.SelectedValue) + "' AND UserID = '" + ddlUserName.SelectedValue + "'";
            SqlCommand sqlComm = new SqlCommand(sqlUserExist, sqlConn);
            //SqlCommand sqlComm1 = new SqlCommand(sqlUserExist, sqlConn);
            sqlConn.Open();
            int UserCount = (int)sqlComm.ExecuteScalar();
            if (UserCount == 1)
            {
                lblOutput.Text = "Project already Assigned, Select another project";
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
            int intUserId = Convert.ToInt32(ddlUserName.SelectedValue);
            int intProjectId = Convert.ToInt32(ddlProjectName.SelectedValue);
            //string txtUserRoleName = ddlUserRole.SelectedItem.ToString();


            string strYourIp = HttpContext.Current.Request.UserHostAddress;

            //Declare tbl_Projects Table (ProjectID int identity(1,1), YourCol1 varchar(5))

            //sqlComm.CommandText = "INSERT INTO tbl_ProjectUser(ProjectId, UserId, Status, ModifiedDate)" +
            //    "VALUES('" + intProjectId + "','" + intUserId + "', '" + byteStatus + "', '" + txtModifiedDate.Date + "')";
            //sqlComm.ExecuteNonQuery();

            sqlComm.Parameters.Clear();
            sqlComm.CommandText = "SELECT @@IDENTITY";
            //int intProjectId = Convert.ToInt32(sqlComm.ExecuteScalar());

            sqlComm.CommandText = "INSERT INTO tbl_ProjectUser(UserId, ProjectId, Status, ModifiedDate)" +
                "VALUES('" + intUserId + "','" + intProjectId + "', '" + byteStatus + "', '" + txtModifiedDate.Date + "')";
            sqlComm.ExecuteNonQuery();


            sqlConn.Close();
            lblOutput.Text = "Project Name has Added Successfully";

            return;
        }

        
        protected void btnUpdate_Click(object sender, System.EventArgs e)
        { }

        protected void btnDelete_Click(object sender, System.EventArgs e)
        { }

        protected void btnCancel_Click(object sender, System.EventArgs e)
        { }
    }
}