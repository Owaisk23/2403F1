using CRUD.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
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
        //[HttpGet]
        //public IActionResult AddProduct()
        //{
        //    return View();
        //}
        //[HttpPost]
        //public IActionResult AddProduct(Item item)
        //{
        //    db.Items.Add(item);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        public IActionResult Create()
        {
            ViewBag.CatId = new SelectList(db.Categories, "CatId", "CatName");


            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Item item, IFormFile file)
        {
            var imageName = DateTime.Now.ToString("yymmddhhmmss");//25070855454454
            imageName += Path.GetFileName(file.FileName);//24074455454454apple.png

            string imagepath = Path.Combine(HttpContext.Request.PathBase.Value, "wwwroot/Uploads");
            var imagevalue = Path.Combine(imagepath, imageName);

            using (var stream = new FileStream(imagevalue, FileMode.Create))
            {

                file.CopyTo(stream);

            }

            var dbimage = Path.Combine("/Uploads", imageName);//   /uploads/240715343434apple.png
            item.Image = dbimage;

            db.Items.Add(item);
            db.SaveChanges();


            ViewBag.CatId = new SelectList(db.Categories, "CatId", "CatName");
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
