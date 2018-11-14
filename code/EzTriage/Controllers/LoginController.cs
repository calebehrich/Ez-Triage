using EzTriage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EzTriage.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Authorize(EzTriage.Models.UserValidation user)
        {
            using(EZTriageDBEntities dataBase = new EZTriageDBEntities())
            {
                var userDetails = dataBase.UserValidations.Where(x => x.Username == user.Username
                                                                && x.Password == user.Password)
                                                                .FirstOrDefault();
                if(userDetails == null)
                {
                    user.LoginErrorMessage = "Wrong username or password";
                    return View("Index", user);
                }
                else
                {
                    Session["EmployeeID"] = userDetails.EmployeeID;
                    Session["Username"] = userDetails.Username;
                    return RedirectToAction("Index", "Home");
                }
            }
        }

        public ActionResult LogOut()
        {
            int userId = (int)Session["EmployeeID"];
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }
    }
}