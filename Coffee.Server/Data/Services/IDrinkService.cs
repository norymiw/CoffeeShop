using Coffee.Client.Shared;

namespace Coffee.Server.Data.Services
{
    public interface IDrinkService
    {
        Task<List<Drink>> GetAllDrinksAsync();
        Task<List<Drink>> GetDrinksByCategoryAsync(DrinkCategory category);
        Task<Drink?> GetDrinkByIdAsync(int id);
    }
}
