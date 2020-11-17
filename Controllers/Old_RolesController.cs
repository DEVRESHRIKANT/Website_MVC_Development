using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
//using System.Data.DataTable;
using System.Data.SqlClient;
using DEVRE.Models;
using System.Web.WebPages;

//namespace DEVRE.Controllers
//{
    //public class RolesController : Controller
    //{
        //public ActionResult GetAllUserRoles()
        //{

        //    UserRolesRepository RoleRepo = new UserRolesRepository();
        //    ModelState.Clear();
        //    return View(RoleRepo.GetAllUserRoles());
        //}
        // GET: Roles
        //public ActionResult Index()
        //{
        //    APIRolesModel model = new APIRolesModel();
        //    DataTable dt = model.GetAllUserRoles();
        //    return View("Home", dt);
        //}
        //public ActionResult Insert()
        //{
        //    return View("Insert");
        //}
        //public ActionResult Home()
        //{
        //    return View("Home");
        //}

        //public ActionResult InsertRecord(FormCollection frm, string action)
        //{
        //    if (action == "Submit")
        //    {
        //        APIRolesModel model = new APIRolesModel();
        //        string RoleName = frm["txtRoleName"];
        //        int status = model.InsertRole(RoleName);
        //        return RedirectToAction("Index");
        //    }
        //    else
        //    {
        //        return RedirectToAction("Index");
        //    }
        //}

        /// <summary>  
        /// Action method called when the user click "Edit" Link  
        /// </summary>  
        /// <param name="StudentID">Student ID</param>  
        /// <returns>Edit View</returns>  
        /// 
        //public ActionResult EditRoleDetails(int id)
        //{
        //    UserRolesRepository RoleRepo = new UserRolesRepository();



        //    return View(RoleRepo.GetAllUserRoles().Find(Role => Role.RoleId == id));

        //}

        // POST: Employee/EditEmpDetails/5    
        //[HttpPost]

        //public ActionResult EditRoleDetails(int id, APIRolesModel obj)
        //{
        //    try
        //    {
        //        UserRolesRepository RoleRepo = new UserRolesRepository();
        //        RoleRepo.UpdateUserRole(obj);
        //        return RedirectToAction("GetAllRoleDetails");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}
        //public ActionResult Edit(int RoleID)
        //{
        //    APIRolesModel model = new APIRolesModel();
        //    DataTable dt = model.GetRoleByID(RoleID);
        //    return View("Edit", dt);
        //}

        /// <summary>  
        /// Actin method, called when user update the record or cancel the update.  
        /// </summary>  
        /// <param name="frm">Form Collection</param>  
        /// <param name="action">Denotes the action</param>  
        /// <returns>Home view</returns>  
        //public ActionResult UpdateRecord(FormCollection frm, string action)
        //{
        //    if (action == "Submit")
        //    {
        //        APIRolesModel model = new APIRolesModel();
        //        string RoleName = frm["strRoleName"];
        //        int RoleID = Convert.ToInt32(frm["intRoleId"]);
        //        int status = model.UpdateRole(RoleID, RoleName);
        //        return RedirectToAction("Index");
        //    }
        //    else
        //    {
        //        return RedirectToAction("Index");
        //    }
        //}
                  
        //public ActionResult Delete(int RoleID)
        //{
        //    APIRolesModel model = new APIRolesModel();
        //    model.DeleteRole(RoleID);
        //    return RedirectToAction("Index");
        //}
 //   }
//}