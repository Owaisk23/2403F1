using CRUD.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace CRUD.Controllers
{
    public class HomeController : Controller
    {
        private readonly ItemContext db;

        public HomeController(ItemContext _db)
        {
            db = _db;
        }

        public IActionResult Index()
        {
            return View(db.Items.ToList());
        }
        [HttpGet]
        public IActionResult AddProduct()
        {
            return View();
        }
        [HttpPost]
        public IActionResult AddProduct(Item item)
        {
            db.Items.Add(item);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult EditProduct(int id)
        {
            var product = db.Items.FirstOrDefault(x => x.Id == id);
            return View(product);
        }
        
        [HttpPost]
        public IActionResult EditProduct(Item item)
        {
            db.Items.Update(item);
            db.SaveChanges();
            return RedirectToAction("Index");
        } 
        
        [HttpGet]
        public IActionResult DeleteProduct(int id)
        {
            var product = db.Items.FirstOrDefault(x => x.Id == id);
            return View(product);
        }
        
        [HttpPost]
        public IActionResult DeleteProduct(Item item)
        {
            db.Items.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult DetailProduct(int id)
        {
            var product = db.Items.FirstOrDefault(x => x.Id == id);
            return View(product);
        }


    }
}
