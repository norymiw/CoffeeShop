namespace CoffeeShop.Api.Dto
{
    public class MenuDto
    {
        public int Id { get; init; }
        public string Name { get; init; }
        public string Description { get; init; }
        public decimal Price { get; init; }
        public string Category { get; init; }
        public int Calories { get; init; }
    }
}
