using FirstProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace FirstProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MyController : Controller
    {
        private readonly BikeContext db;

        public MyController(BikeContext _db) {
            db = _db;
        }
        [HttpGet]
        public IActionResult GetBike()
        {
            return Ok(db.Bikes.ToList());
        }

        [HttpGet("{id}")]
        public IActionResult GetBike(int id)
        {
            return Ok(db.Bikes.Find(id));
        }

        [HttpPost]
        public IActionResult AddBike(Bike bike)
        {
            db.Bikes.Add(bike);
            db.SaveChanges();
            return StatusCode(201);
        }

        [HttpDelete]
        public IActionResult DeleteBike(int id)
        {
            var bike = db.Bikes.Find(id);
            db.Bikes.Remove(bike);
            db.SaveChanges();
            return StatusCode(201);
        }

        [HttpPut("{id}")]
        public IActionResult UpdateBike(int id, Bike updateBike)
        {
            var bike = db.Bikes.Find(id);
            bike.Name = updateBike.Name;
            bike.Brand = updateBike.Brand;
            bike.Price = updateBike.Price;
            db.Bikes.Update(bike);
            db.SaveChanges();
            return StatusCode(201);
        }

        [HttpGet("Search/{query}")]
        public IActionResult SearchProduct(string query)
        {
            // For partial match search
            var products = db.Bikes
                                   .Where(o => o.Name.Contains(query)
                                           || o.Brand.Contains(query)
                                          )
                                   .ToList(); // Partial Match

            return Ok(products);
        }

        [HttpGet("Pagination/{pageNo}/{pageSize}")]
        public IActionResult Pagination(int pageNo = 1, int pageSize = 2)
        {
            int pageno = pageNo;
            if (pageno < 1) pageno = 1;
            int pagesize = pageSize;
            if (pagesize < 1) pagesize = 1;

            var getEvents = db.Bikes.Skip((pageno - 1) * pagesize).Take(pagesize);

            if (getEvents != null)
            {
                return Ok(getEvents);
            }
            else
            {
                return Ok("End of list");
            }

        }
    }
}
