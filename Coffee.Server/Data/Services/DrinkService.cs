using Coffee.Client.Shared;

namespace Coffee.Server.Data.Services
{
    public class DrinkService : IDrinkService
    {
        private readonly List<Drink> _drinks;

        public DrinkService()
        {
            _drinks = MockData.GetDrinks(); // Загрузка тестовых данных
        }

        public Task<List<Drink>> GetAllDrinksAsync()
            => Task.FromResult(_drinks);

        public Task<List<Drink>> GetDrinksByCategoryAsync(DrinkCategory category)
            => Task.FromResult(_drinks.Where(d => d.Category == category).ToList());

        public Task<Drink?> GetDrinkByIdAsync(int id)
            => Task.FromResult(_drinks.FirstOrDefault(d => d.Id == id));
    }
}
