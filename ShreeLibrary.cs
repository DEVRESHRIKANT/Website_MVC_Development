using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Linq;
using System.Data.Linq;
using System.Data.Linq.Mapping;
//using Microsoft.Reporting.WebForms;

namespace DEVRE
{
    public class ShreeLibrary
    {
        //public const string ConnString = @"Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002;";
        public const string ConnString = @"Data Source=SHRIKANT; Database=Shree_Database; Integrated Security=True;";

        public ShreeLibrary()
        { }
        public DataSet GetClients()
        {
            DataSet dsClient = new DataSet();
            string sSQL = "SELECT UserName, UserId FROM tbl_Users and Role_Name='Client' and Status='1'  ORDER BY UserName ";
            //SqlDataAdapter sda = new SqlDataAdapter(sSQL, System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());            
            SqlDataAdapter sda = new SqlDataAdapter(sSQL, System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString());
            sda.Fill(dsClient);
            return dsClient;
        }
        public DataSet GetConsultants()
        {
            DataSet dsConsultant = new DataSet();
            string sSQL = "SELECT UserName, UserId FROM tbl_Users WHERE Role_Name='Consultant' and Status='1'  ORDER BY UserName ";
            //SqlDataAdapter sda = new SqlDataAdapter(sSQL, System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlDataAdapter sda = new SqlDataAdapter(sSQL, System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString());
            sda.Fill(dsConsultant);
            return dsConsultant;
        }
        public DataSet GetRoleId()
        {
            DataSet dsRole = new DataSet();
            string SQLRole = "SELECT RoleId, RoleName FROM tbl_UserRole WHERE Status='1' ORDER BY RoleName";
            //SqlDataAdapter sdaRole = new SqlDataAdapter(SQLRole, System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlDataAdapter sdaRole = new SqlDataAdapter(SQLRole, System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString());
            sdaRole.Fill(dsRole);
            return dsRole;
        }

        public DataSet GetProjectId()
        {
            DataSet dsRole = new DataSet();
            string SQLRole = "SELECT ProjectId, ProjectName FROM tbl_Projects WHERE Status='1' ORDER BY ProjectName";
            //SqlDataAdapter sdaRole = new SqlDataAdapter(SQLRole, System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlDataAdapter sdaRole = new SqlDataAdapter(SQLRole, System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString());
            sdaRole.Fill(dsRole);
            return dsRole;
        }

        public DataSet GetUserId()
        {
            DataSet dsUser = new DataSet();
            string SQLUser = "SELECT UserId, EmailAddress FROM tbl_Users WHERE Status='1' ORDER BY EmailAddress";
            //SqlDataAdapter sdaUser = new SqlDataAdapter(SQLUser, System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlDataAdapter sdaUser = new SqlDataAdapter(SQLUser, System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString());
            sdaUser.Fill(dsUser);
            return dsUser;
        }
        public DataSet GetImageId()
        {
            DataSet dsImage = new DataSet();
            string SQLImage = "";
            //string SQLImage = "SELECT Role_Id, Role_Name FROM tbl_UserImage ORDER BY Image_Name";
            //SqlDataAdapter sdaImage = new SqlDataAdapter(SQLImage, System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlDataAdapter sdaImage = new SqlDataAdapter(SQLImage, System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString());
            sdaImage.Fill(dsImage);
            return dsImage;
        }
        public DataSet GetProfile()
        {
            DataSet dsProfile = new DataSet();
            string SQLProfile = "";
            //string SQLProfile = "SELECT Role_Id, Role_Name FROM tbl_UserImage ORDER BY Profile_Name";
            //SqlDataAdapter sdaProfile = new SqlDataAdapter(SQLProfile, System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlDataAdapter sdaProfile = new SqlDataAdapter(SQLProfile, System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString());
            sdaProfile.Fill(dsProfile);
            return dsProfile;
        }
        public DataSet GetRoleName(int pRoleId)
        {
            //string infoRoleName;
            DataSet dsRoleName = new DataSet();
            string SQLRoleName = "SELECT RoleId, RoleName FROM tbl_UserRole WHERE Status='1' AND RoleId = " + pRoleId + " ORDER BY RoleName";
            //SqlDataAdapter sdaRoleName = new SqlDataAdapter(SQLRoleName, System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlDataAdapter sdaRoleName = new SqlDataAdapter(SQLRoleName, System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString());
            sdaRoleName.Fill(dsRoleName);
            //  infoRoleName = sdaRoleName.GetFillParameters("RoleName");
            return dsRoleName;
        }


        //public DataSet GetUserId(string pUserName)
        //{
        //    int shriUserId;
        //    DataSet dsUserId = new DataSet();
        //    string SQLUserId = "SELECT User_Id, User_Name FROM tbl_User WHERE UserName = " + pUserName + " ORDER BY UserName";
        //    SqlDataAdapter sdaUserId = new SqlDataAdapter(SQLUserId, System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
        //    SqlDataAdapter sdaUserId = new SqlDataAdapter(SQLUserId, System.Configuration.ConfigurationManager.AppSettings["ConnString"].ToString());
        //    sdaUserId.Fill(dsUserId);
        //    shriUserId = sdaUserId.GetFillParameters("User_Id");            
        //    return dsUserId;
        //}

        public DataSet GetUserId(string pUserName)
        {
            int shriUserId;
            SqlConnection sqlConn = new SqlConnection();
            //sqlConn.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
            sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ToString();
            DataSet dsUserId = new DataSet();
            string SQLUserId = "SELECT UserId, UserName FROM tbl_Users WHERE Status='1' AND EmailAddress = " + pUserName + " ORDER BY UserName";
            SqlCommand comSelect = new SqlCommand(SQLUserId, sqlConn);
            SqlDataReader rdr = comSelect.ExecuteReader();
            shriUserId = rdr.GetOrdinal("UserId");
            return dsUserId;

        }
        public class SSRSReport
        {


            public SSRSReport()
            {
                //
                // TODO: Add constructor logic here
                //
            }
            //public bool CreateReport(String ConnectionString, string StoreProcedureName, SqlParameter[] Parameter, ref  Microsoft.Reporting.WebForms.ReportViewer ReportViewer, string ReportDataSource)
            //{
            //    bool reportbind = false;
            //    using (SqlConnection sqlConn = new SqlConnection(ConnectionString))
            //    {
            //        SqlCommand com = new SqlCommand();
            //        com.Connection = sqlConn;
            //        com.CommandType = CommandType.StoredProcedure;
            //        com.CommandText = StoreProcedureName;
            //        com.Parameters.AddRange(Parameter);
            //        DataSet ds = new DataSet();
            //        SqlDataAdapter da = new SqlDataAdapter(com);
            //        da.Fill(ds);
            //        ReportDataSource datasource = new ReportDataSource(ReportDataSource, ds.Tables[0]);
            //        if (ds.Tables[0].Rows.Count > 0)
            //        {
            //            ReportViewer.LocalReport.DataSources.Clear();
            //            ReportViewer.LocalReport.DataSources.Add(datasource);
            //            reportbind = true;
            //        }
            //    }
            //    return reportbind;
            //}
        }
    }
}