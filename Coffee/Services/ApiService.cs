using Coffee.Client.Shared;
using System.Net.Http.Json;

namespace Coffee.Client.Services
{
    public class ApiService
    {
        private readonly HttpClient _http;

        public ApiService(HttpClient http)
        {
            _http = http;
        }

        public async Task<List<Drink>> GetDrinks()
        {
            try
            {
                var response = await _http.GetAsync("api/drinks");
                response.EnsureSuccessStatusCode(); // Выбросит исключение при ошибке HTTP
                return await response.Content.ReadFromJsonAsync<List<Drink>>();
            }
            catch (HttpRequestException e)
            {
                Console.WriteLine($"Ошибка API: {e.Message}");
                return new List<Drink>(); // Или null, в зависимости от логики
            }
        }

        public async Task<List<Drink>?> GetDrinksByCategory(DrinkCategory category)
        {
            try
            {
                var response = await _http.GetAsync($"/api/drinks/category/{(int)category}");

                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadFromJsonAsync<List<Drink>>();

                Console.WriteLine($"Ошибка: {response.StatusCode}");
                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Исключение: {ex.Message}");
                return null;
            }
        }

        public async Task<Drink?> GetDrinkById(int id)
        {
            return await _http.GetFromJsonAsync<Drink>($"api/drinks/details/{id}");
        }
    }
}
