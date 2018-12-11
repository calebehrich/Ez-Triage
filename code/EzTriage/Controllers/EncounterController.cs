using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EzTriage.Controllers
{
    public class EncounterController : Controller
    {
        // GET: Encounter
        public RedirectResult NewEncounter()
        {
            return Redirect("~/PatientEncounter.aspx");
        }
    }
}