using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JQueryDemo.Controllers
{
    public class AjaxController : Controller
    {
        //
        // GET: /Ajax/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult PerformGet()
        {
            return Content( "Hi there");
        }

        public ActionResult PerformGetJson()
        {
            var vm = new {message = "Hi there from Json"};
            return Json(vm, JsonRequestBehavior.AllowGet);
        }

        public ActionResult PerformPost(string firstName, string lastName)
        {
            var vm = new {firstName, lastName};

            return Json(vm);
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult PerformLoad()
        {
            var html = "<span style='border: red 1px solid;'>Hi there from load</span>";

            return Content(html);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult PerformAjax(string data)
        {
//            return new HttpStatusCodeResult(410);

            return Json(new {message = data});
        }


    }
}
