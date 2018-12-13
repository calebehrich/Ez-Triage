using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EzTriage.Controllers
{
    public class PatientLookUpController : Controller
    {
        // GET: PatientLookUp
        public RedirectResult PatientLookUp()
        {
            return Redirect("~/PatientLookUp.aspx");
        }
    }
}