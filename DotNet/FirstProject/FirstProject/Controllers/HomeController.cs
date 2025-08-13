using FirstProject.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace FirstProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        //public IActionResult Index()
        //{
        //    TempData["address"] = "North Nazimabad";
        //    TempData.Keep();
        //    return View();
        //}

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Index(string email, string pwd)
        {
            if(email == "admin@gmail.com" && pwd == "aptech")
            {
                TempData["email"] = "Hello" + email;
                TempData.Keep();
                return RedirectToAction("Privacy");
            }


            return View();
        }


        public IActionResult About()
        {
            TempData.Keep();

            ViewBag.fname = "Owais Ahmed";
            ViewData["email"] = "owais@gmail.com";
            ViewData["city"] = "Karachi";

            return View();
        }

        public IActionResult Privacy()
        {
            TempData.Keep();
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
