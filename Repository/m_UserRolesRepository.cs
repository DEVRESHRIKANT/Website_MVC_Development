using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using DEVRE.Models;
using System.Linq;
using System.Globalization;
using System.Threading;
using System.EnterpriseServices;


namespace DEVRE.Repository
{
    public class m_UserRolesRepository
    {
        private SqlConnection con;
        //string ConnString = "Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID = khushi; Password = kHUSHI2002;";

        //private SqlCommand com;

        private void connection()
        {
            string ConnString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            con = new SqlConnection(ConnString);
            //con.ConnectionString = "Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002;";
            //string sqlText = "Select * from tbl_UserRole";   //  values(@RoleId,@roleName,@ModifiedDate,@Status)";
            //SqlCommand sqlCmd = new SqlCommand(sqlText, con);
 //           con = new SqlConnection(constr);

        }
        //To Add Employee details    
        public bool AddUserRole(RoleModel obj)
        {
            connection();
            SqlCommand com = new SqlCommand("ssp_AddNewRoleDetails", con);
            com.CommandType = CommandType.StoredProcedure;
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
                
        //To view employee details with generic list     
        public List<RoleModel> GetAllUserRoles()
        {
            connection();
            List<RoleModel> RoleList = new List<RoleModel>();

            SqlCommand com = new SqlCommand("ssp_GetUserRoles", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            //            string strConString = @"Data Source=DEVRE;Database=Shree_Database; Integrated Security=True;";
            //            using (SqlConnection con = new SqlConnection(strConString))

            //               DataTable dt = new DataTable();
            con.Open();
            //                SqlCommand com = new SqlCommand("ssp_GetUserRoles", con);
            //                com.CommandType = CommandType.StoredProcedure;
            //                SqlDataAdapter da = new SqlDataAdapter(com);
            //                com.Connection = con;
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
            SqlCommand com = new SqlCommand("UpdateRoleDetails", con);
            com.CommandType = CommandType.StoredProcedure;
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
        //To delete Employee details    
        public bool DeleteUserRole(int Id)
        {
            connection();
            SqlCommand com = new SqlCommand("DeleteRoleById", con);
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