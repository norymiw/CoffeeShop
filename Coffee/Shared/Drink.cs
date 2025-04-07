namespace Coffee.Client.Shared
{
    public class Drink
    {
        public int Id { get; set; }
        public required string Name { get; set; }
        public required string Description { get; set; }
        public required string Ingredients { get; set; }
        public DrinkCategory Category { get; set; }
        public required string ImageUrl { get; set; }
        public List<DrinkSize> Sizes { get; set; } = new();
    }

    public enum DrinkCategory
    {
        Seasonal,
        Signature,
        AuthorTeas,
        Classic,
        Cold
    }

}
