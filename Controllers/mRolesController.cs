using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
//using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using DEVRE.Models;
using DEVRE.Repository;
using Microsoft.Ajax.Utilities;
using org.apache.commons.collections4;
using org.apache.poi.ss.formula.functions;

namespace DEVRE.Controllers
{
    public class mRolesController : ApiController
    {

        public static List<RoleModel> blogList = new List<RoleModel>()
            {
                //new RoleModel { RoleId = 1, RoleName="C-SharpCorner", ModifiedDate = DateTime.Now},
                //new RoleModel { RoleId = 2, RoleName="CodeProject", ModifiedDate=DateTime.Now},
                //new RoleModel { RoleId = 3, RoleName="StackOverflow", ModifiedDate=DateTime.Now},
            };      


        public SqlConnection conn = new SqlConnection();
        //POST: /api/products
        public HttpResponseMessage PostUserRole([FromBody] RoleModel UserRole_TB)
        {
            conn.ConnectionString = @"Data Source=DEVRE; Database=Shree_Database; Integrated Security=True;'";

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
            conn.ConnectionString = @"Data Source=DEVRE; Database=Shree_Database; Integrated Security=True;'";
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
            myConnection.ConnectionString = @"Data Source=SHRIKANT; Database=Shree_Database; Integrated Security=True;'";
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

        [HttpPost]
        [ActionName("DeleteUserRole")]
        public void DeleteUserRoleByID(int id)
        {
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source=DEVRE; Database=Shree_Database; Integrated Security=True;'";

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.CommandText = "delete from tbl_UserRole where UserRoleId=" + id + "";
            sqlCmd.Connection = myConnection;
            myConnection.Open();
            int rowDeleted = sqlCmd.ExecuteNonQuery();
            myConnection.Close();
        }

        //// GET api/default1
        public List<RoleModel> Get()
        {
            return blogList;
        }


        // GET api/mRoles/7
        //public RoleModel Get(int id)
        //{
        //    RoleModel blogObject = (from blog in blogList
        //                       where blog.RoleId == id
        //                       select blog).SingleOrDefault();
        //    return blogObject;
        //}

        // POST api/mRoles
        public List<RoleModel> Post(RoleModel blogObj)
        {
            blogList.Add(blogObj);

            return blogList;
        }

        // PUT api/mRoles/7
        public void Put(RoleModel blogObj)
        {
            RoleModel blogOrignalObject = (from blog in blogList
                                           where blog.RoleId == blogObj.RoleId
                                           select blog).SingleOrDefault();

            blogOrignalObject.RoleName = blogObj.RoleName;
            blogOrignalObject.ModifiedDate = blogObj.ModifiedDate;
        }

        // DELETE api/mRoles/7
        public void Delete(int id)
        {
            blogList.RemoveAll(temp => temp.RoleId == id);
        }
    }
}