using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
namespace DEVRE.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public FileStreamResult MyPDF()
        {
            FileStream fs = new FileStream(Server.MapPath(@"~\MyPdf.pdf"), FileMode.Open, FileAccess.Read);
            return File(fs, "application/pdf");
        }               
    }
}