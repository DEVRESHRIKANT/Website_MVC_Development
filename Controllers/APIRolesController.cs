using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data.SqlClient;
using System.Data;
using DEVRE.Models;
using System.Web.WebPages;

namespace DEVRE.Controllers
{
    public class APIRolesController : ApiController
    {
        public static List<RoleModel> listRole = new List<RoleModel>()
        {
        new RoleModel()
                {
                    RoleId = 005, RoleName="Shubham", ModifiedDate= DateTime.Now, Status= true
                },
        };

        // GET api/default1
        public List<RoleModel> Get()
        {
            return listRole;
        }



        // GET api/blog/5
        //public RoleModel Get(int id)
        //{
        //    RoleModel blogObject = (from tbl_UserRole in listRole
        //                            where tbl_UserRole.RoleId == id
        //                       select tbl_UserRole).SingleOrDefault();
        //    return blogObject;
        //}

        [AcceptVerbs("GET")]
        public RoleModel RPCStyleMethodFetchFirstUserRole()
        {
            return listRole.FirstOrDefault();
        }

        [HttpGet]
        //GET api/tbl_UserRole/2
        [ActionName("GetUserRoleByID")]
        public RoleModel Get(int id)
        {
            return listRole.First(e => e.RoleId == id);  
            SqlDataReader reader = null;
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source=KHUSHU;Database=Shree_Database; Integrated Security=True;";

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.CommandText = "Select * from tbl_UserRole where RoleId=" + id + "";
            sqlCmd.Connection = myConnection;
            myConnection.Open();
            reader = sqlCmd.ExecuteReader();
            RoleModel emp = null;
            while (reader.Read())
            {
                bool isCSharpFun = true;
                emp = new RoleModel();
                emp.RoleId = Convert.ToInt32(reader.GetValue(0));
                emp.RoleName = reader.GetValue(1).ToString();
                emp.ModifiedDate = DateTime.Now;
                emp.Status = isCSharpFun;
            }
            myConnection.Close();
            return emp;
        }


        public SqlConnection conn = new SqlConnection();
        //POST: /api/products
        public HttpResponseMessage PostUserRole([FromBody] RoleModel UserRole_TB)
        {
            conn.ConnectionString = @"Data Source=KHUSHU; Database=Shree_Database; Integrated Security=True;'";

            string sqlText = "Insert into tbl_UserRole values(@RoleId,@RoleName,@ModifiedDate,@Status)";
            SqlCommand sqlCmd = new SqlCommand(sqlText, conn);
            sqlCmd.Parameters.AddWithValue("@RoleId", UserRole_TB.RoleId);
            sqlCmd.Parameters.AddWithValue("@RoleName", UserRole_TB.RoleName);
            sqlCmd.Parameters.AddWithValue("@ModifiedDate", UserRole_TB.ModifiedDate);
            sqlCmd.Parameters.AddWithValue("@Status", UserRole_TB.Status);
            conn.Open();
            int i = sqlCmd.ExecuteNonQuery();
            conn.Close();
            var response = Request.CreateResponse<RoleModel>(HttpStatusCode.Created, UserRole_TB);
            string uri = Url.Link("DefaultApi", new { id = UserRole_TB.RoleId });
            response.Headers.Location = new Uri(uri);
            return response;
        }
        //PUT: /api/products/id
        public void PutUserRole(RoleModel UserRole_TB)
        {
            conn.ConnectionString = @"Data Source=KHUSHU; Database=Shree_Database; Integrated Security=True;'";
            string sqlText = "update tbl_UserRole set RoleId=@RoleId,RoleName=@RoleName,ModifiedDate=@ModifiedDate,Status=@Status";
            SqlCommand sqlCmd = new SqlCommand(sqlText, conn);
            sqlCmd.Parameters.AddWithValue("@RoleId", UserRole_TB.RoleId);
            sqlCmd.Parameters.AddWithValue("@RoleName", UserRole_TB.RoleName);
            sqlCmd.Parameters.AddWithValue("@ModifiedDate", UserRole_TB.ModifiedDate);
            sqlCmd.Parameters.AddWithValue("@Status", UserRole_TB.Status);
            conn.Open();
            int i = sqlCmd.ExecuteNonQuery();
            conn.Close();
        }

        [HttpPost]
        public void AddUserRole(RoleModel UserRole_TB)
        {
            //int maxId = listRole.Max(e => e.RoleId);
            //UserRole_TB.RoleId = maxId + 1;
            //listRole.Add(UserRole_TB);


            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source=KHUSHU; Database=Shree_Database; Integrated Security=True;'";
            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.CommandText = "INSERT INTO tbl_UserRole (RoleId,RoleName,ModifiedDate,Status) Values (@RoleId,@RoleName,@ModifiedDate,@Status)";
            sqlCmd.Connection = myConnection;


            sqlCmd.Parameters.AddWithValue("@RoleId", UserRole_TB.RoleId);
            sqlCmd.Parameters.AddWithValue("@RoleName", UserRole_TB.RoleName);
            sqlCmd.Parameters.AddWithValue("@ModifiedDate", UserRole_TB.ModifiedDate);
            sqlCmd.Parameters.AddWithValue("@Status", UserRole_TB.Status);

            myConnection.Open();
            int rowInserted = sqlCmd.ExecuteNonQuery();
            myConnection.Close();
        }

        [ActionName("DeleteUserRole")]
        public void DeleteUserRoleByID(int id)
        {
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source=KHUSHU; Database=Shree_Database; Integrated Security=True;'";

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.CommandText = "delete from tbl_UserRole where UserRoleId=" + id + "";
            sqlCmd.Connection = myConnection;
            myConnection.Open();
            int rowDeleted = sqlCmd.ExecuteNonQuery();
            myConnection.Close();
        }        
    }
}