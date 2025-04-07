using Coffee.Client.Shared;
using Coffee.Server.Data.Services;
using Microsoft.AspNetCore.Mvc;

namespace Coffee.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class DrinksController : ControllerBase
    {
        private readonly IDrinkService _drinkService;

        public DrinksController(IDrinkService drinkService)
        {
            _drinkService = drinkService;
        }

        [HttpGet("category/{categoryId}")]
        public async Task<ActionResult<List<Drink>>> GetByCategory(int categoryId)
        {
            try
            {
                var category = (DrinkCategory)categoryId;
                var drinks = await _drinkService.GetDrinksByCategoryAsync(category);
                return Ok(drinks);
            }
            catch
            {
                return BadRequest("Invalid category");
            }
        }
    }
}
