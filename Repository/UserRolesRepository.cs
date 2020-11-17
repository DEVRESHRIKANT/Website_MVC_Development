using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using DEVRE.Models;
using DEVRE.Controllers;
using System.Globalization;
using System.Threading;
//using System.EnterpriseServices;


namespace DEVRE.Repository
{
    public class UserRolesRepository
    {
        private SqlConnection con;
             
        //To Handle connection related activities    
        private void connection()
        {
            
            string ConnString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            con = new SqlConnection(ConnString);
        }
        //To Add Employee details    
        public bool AddUserRole(RoleModel objRole)
        {
            connection();
            //SqlCommand com = new SqlCommand("ssp_AddNewRoleDetails", con);
            SqlCommand com = new SqlCommand("ssp_InsertRole", con);


            com.CommandType = CommandType.StoredProcedure;
            objRole.Status = true;
            objRole.ModifiedDate = DateTime.Now;

            com.Parameters.AddWithValue("@RoleName", objRole.RoleName);
            com.Parameters.AddWithValue("@ModifiedDate", objRole.ModifiedDate);
            com.Parameters.AddWithValue("@Status", objRole.Status);

            con.Open();
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //To view employee details with generic list
        public List<RoleModel> GetAllUserRoles()
        {
            connection();
            List<RoleModel> RoleList = new List<RoleModel>();
            //SqlCommand com = new SqlCommand("ssp_GetUserRoles", con);
            SqlCommand com = new SqlCommand("ssp_ListRoles", con);

            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            con.Open();
            da.Fill(dt);
            con.Close();

            //Bind EmpModel generic list using dataRow     
            foreach (DataRow dr in dt.Rows)
            {
                RoleList.Add(
                    new RoleModel
                    {
                        RoleId = Convert.ToInt32(dr["RoleId"]),
                        RoleName = Convert.ToString(dr["RoleName"]),
                        ModifiedDate = Convert.ToDateTime(dr["ModifiedDate"]),
                        Status = Convert.ToBoolean(dr["Status"])
                    }
                    );
            }
            return RoleList;
        }
        //To Update Employee details    
        public bool UpdateUserRole(RoleModel obj)
        {

            connection();
            //SqlCommand com = new SqlCommand("UpdateRoleDetails", con);
            SqlCommand com = new SqlCommand("ssp_UpdateRole", con);

            com.CommandType = CommandType.StoredProcedure;
            obj.Status = true;
            obj.ModifiedDate = DateTime.Now;
            com.Parameters.AddWithValue("@RoleId", obj.RoleId);
            com.Parameters.AddWithValue("@RoleName", obj.RoleName);
            com.Parameters.AddWithValue("@ModifiedDate", obj.ModifiedDate);
            com.Parameters.AddWithValue("@Status", obj.Status);
            con.Open();
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //To details Role details
        public bool DetailUserRole(RoleModel obj)
        {

            connection();
            //SqlCommand com = new SqlCommand("UpdateRoleDetails", con);
            SqlCommand com = new SqlCommand("ssp_DetailRole", con);

            com.CommandType = CommandType.StoredProcedure;
            //obj.Status = true;
            //obj.ModifiedDate = DateTime.Now;
            com.Parameters.AddWithValue("@RoleId", obj.RoleId);
            com.Parameters.AddWithValue("@RoleName", obj.RoleName);
            com.Parameters.AddWithValue("@ModifiedDate", obj.ModifiedDate);
            com.Parameters.AddWithValue("@Status", obj.Status);
            con.Open();
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //To delete Role details    
        public bool DeleteUserRole(int Id)
        {
            connection();
            //SqlCommand com = new SqlCommand("DeleteRoleById", con);
            SqlCommand com = new SqlCommand("ssp_DeleteRole", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@RoleId", Id);

            con.Open();
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}