using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DEVRE.Models;
using DEVRE.Repository;

namespace DEVRE.Controllers
{
    public class RoleController : Controller
    {
        public ActionResult Index()
        {

            UserRolesRepository RoleRepo = new UserRolesRepository();
            ModelState.Clear();
            return View(RoleRepo.GetAllUserRoles());
        }
        // GET: Role/GetAllUserRoles    
        public ActionResult GetAllUserRoles()       
        {
            UserRolesRepository RoleRepo = new UserRolesRepository();
            ModelState.Clear();
            return View(RoleRepo.GetAllUserRoles());
        }
        // GET: Role/AddUserRole    
        public ActionResult AddUserRole()
        {
            return View();
        }

        // POST: Role/AddUserRole    
        [HttpPost]
        public ActionResult AddUserRole(RoleModel oRole)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    UserRolesRepository RoleRepo = new UserRolesRepository();

                    if (RoleRepo.AddUserRole(oRole))
                    {
                        ViewBag.Message = "New Role added successfully";
                    }
                }

                return View();
            }
            catch
            {
                return View();
            }
        }

        // GET: Role/UpdateUserRole/5    
        public ActionResult UpdateUserRole(int id)
        {
            UserRolesRepository RoleRepo = new UserRolesRepository();
            return View(RoleRepo.GetAllUserRoles().Find(oRole => oRole.RoleId == id));
        }

        // POST: Role/UpdateUserRole/5    
        [HttpPost]
        public ActionResult UpdateUserRole(int id, RoleModel obj)
        {
            try
            {
                UserRolesRepository RoleRepo = new UserRolesRepository();
                RoleRepo.UpdateUserRole(obj);
               return RedirectToAction("GetAllUserRoles");
            }
            catch
            {
                return View();
            }
        }

        // GET: Role/DetailUserRole/5    
        public ActionResult DetailUserRole(int id)
        {
            UserRolesRepository RoleRepo = new UserRolesRepository();
            return View(RoleRepo.GetAllUserRoles().Find(oRole => oRole.RoleId == id));
        }

        // POST: Role/DetailUserRole/5    
        [HttpPost]
        public ActionResult DetailUserRole(int id, RoleModel obj)
        {
            try
            {
                UserRolesRepository RoleRepo = new UserRolesRepository();
                RoleRepo.UpdateUserRole(obj);
                return RedirectToAction("GetAllUserRoles");
            }
            catch
            {
                return View();
            }
        }

        // GET: Role/DeleteUserRole/5    
        public ActionResult DeleteUserRole(int id)
        {
            try
            {
                UserRolesRepository RoleRepo = new UserRolesRepository();
                if (RoleRepo.DeleteUserRole(id))
                {
                    ViewBag.AlertMsg = "Role details deleted successfully";
                }
                return RedirectToAction("GetAllUserRoles");
            }
            catch
            {
                return View();
            }
        }

        
    }
}
