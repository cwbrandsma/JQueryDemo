using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using JQueryDemo.Models;

namespace JQueryDemo.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Introduction to JQuery";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Materials()
        {
            return View();
        }

        public ActionResult FormTricks()
        {
            var vm = new FormTricksPost();
            return View(vm);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult FormTricks(FormTricksPost data)
        {
            ViewData["Message"] = "Saved";
            return Json(data);
        }

        public ActionResult Selectors()
        {
            return View();
        }

        public ActionResult Events()
        {
            return View();
        }

        public ActionResult Introduction()
        {
            return View();
        }

        public ActionResult DomFun()
        {
            return View();
        }
    }
}
