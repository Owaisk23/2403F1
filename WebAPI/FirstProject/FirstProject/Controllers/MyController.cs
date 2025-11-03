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
    }
}
