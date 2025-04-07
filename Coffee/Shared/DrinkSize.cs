namespace Coffee.Client.Shared
{

    public class DrinkSize
    {
        public required string SizeName { get; set; }
        public decimal Price { get; set; }
        public int VolumeMl { get; set; }
        public NutritionInfo Nutrition { get; set; } = new();
    }


}
