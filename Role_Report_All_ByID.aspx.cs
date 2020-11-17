using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace DEVRE
{
    public partial class Role_Report_All_ByID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRoleById_Click(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "ssp_GetRoleNameByID";
            cmd.Parameters.Add("@pRoleId", SqlDbType.Int).Value = txtRoleID.Text.Trim() == string.Empty ? null : txtRoleID.Text.Trim();
            cmd.Connection = con;
            try
            {
                con.Open();
                grdRole.EmptyDataText = "No Records Found";
                grdRole.DataSource = cmd.ExecuteReader();
                grdRole.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }

        }
        protected void btnRoleByName_Click(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "ssp_GetRoleIDByName";
            cmd.Parameters.Add("@pRoleName", SqlDbType.VarChar).Value = txtRoleID.Text.Trim() == string.Empty ? null : txtRoleID.Text.Trim();
            cmd.Connection = con;
            try
            {
                con.Open();
                grdRole.EmptyDataText = "No Records Found";
                grdRole.DataSource = cmd.ExecuteReader();
                grdRole.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }

        }
  
        protected void btnAllRoles_Click(object sender, EventArgs e)
        {
            if (txtRoleID.Text == string.Empty)
            {
                //      String strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                String strConnString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
                SqlConnection con = new SqlConnection(strConnString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ssp_ListRoles";
                cmd.Connection = con;
                try
                {
                    con.Open();
                    grdRole.EmptyDataText = "No Records Found";
                    grdRole.DataSource = cmd.ExecuteReader();
                    grdRole.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
            else
            {
                //   String strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                String strConnString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
                SqlConnection con = new SqlConnection(strConnString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ssp_GetRoleNameByID";
                cmd.Parameters.Add("@pRoleId", SqlDbType.Int).Value = txtRoleID.Text.Trim() == string.Empty ? null : txtRoleID.Text.Trim();
                cmd.Connection = con;
                try
                {
                    con.Open();
                    grdRole.EmptyDataText = "No Records Found";
                    grdRole.DataSource = cmd.ExecuteReader();
                    grdRole.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }

        }

    }
}