using Coffee.Client.Shared;

namespace Coffee.Server.Data
{
    public static class MockData
    {
        public static List<Drink> GetDrinks()
        {
            return new List<Drink>
            {
                // Сезонные напитки
                new Drink
                {
                    Id = 1,
                    Name = "Тыквенный латте",
                    Description = "Осенний фаворит с тыквенным сиропом",
                    Ingredients = "Эспрессо, молоко, тыквенный сироп, корица, мускатный орех",
                    Category = DrinkCategory.Seasonal,
                    ImageUrl = "images/pumpkin-latte.jpg",
                    Sizes = new List<DrinkSize>
                    {
                        new() {
                            SizeName = "Маленький",
                            Price = 4.50m,
                            VolumeMl = 300,
                            Nutrition = new() { Calories = 250, Proteins = 6, Fats = 8, Carbohydrates = 35 }
                        },
                        new() {
                            SizeName = "Большой",
                            Price = 5.75m,
                            VolumeMl = 450,
                            Nutrition = new() { Calories = 380, Proteins = 9, Fats = 12, Carbohydrates = 55 }
                        }
                    }
                },

                // Фирменные напитки
                new Drink
                {
                    Id = 2,
                    Name = "Кофейный миндальный раф",
                    Description = "Авторский рецепт с миндальным сиропом",
                    Ingredients = "Эспрессо, сливки, миндальный сироп, ваниль",
                    Category = DrinkCategory.Signature,
                    ImageUrl = "images/signature-raf.jpg",
                    Sizes = new List<DrinkSize>
                    {
                        new() {
                            SizeName = "Стандарт",
                            Price = 5.20m,
                            VolumeMl = 350,
                            Nutrition = new() { Calories = 320, Proteins = 5, Fats = 15, Carbohydrates = 40 }
                        }
                    }
                },

                // Авторские чаи
                new Drink
                {
                    Id = 3,
                    Name = "Цитрусовый чай с имбирём",
                    Description = "Свежий микс апельсина, лимона и имбиря",
                    Ingredients = "Чёрный чай, апельсин, лимон, имбирь, мёд",
                    Category = DrinkCategory.AuthorTeas,
                    ImageUrl = "images/citrus-tea.jpg",
                    Sizes = new List<DrinkSize>
                    {
                        new() {
                            SizeName = "Чайник",
                            Price = 6.00m,
                            VolumeMl = 500,
                            Nutrition = new() { Calories = 120, Proteins = 1, Fats = 0, Carbohydrates = 28 }
                        }
                    }
                },

                // Классические напитки
                new Drink
                {
                    Id = 4,
                    Name = "Капучино",
                    Description = "Классика с идеальной пенкой",
                    Ingredients = "Эспрессо, молоко, сахар по желанию",
                    Category = DrinkCategory.Classic,
                    ImageUrl = "images/cappuccino.jpg",
                    Sizes = new List<DrinkSize>
                    {
                        new() {
                            SizeName = "Маленький",
                            Price = 3.80m,
                            VolumeMl = 200,
                            Nutrition = new() { Calories = 150, Proteins = 6, Fats = 5, Carbohydrates = 18 }
                        },
                        new() {
                            SizeName = "Большой",
                            Price = 4.90m,
                            VolumeMl = 350,
                            Nutrition = new() { Calories = 220, Proteins = 9, Fats = 8, Carbohydrates = 25 }
                        }
                    }
                },

                // Холодные напитки
                new Drink
                {
                    Id = 5,
                    Name = "Айс-латте с карамелью",
                    Description = "Ледяной латте с карамельным топпингом",
                    Ingredients = "Эспрессо, молоко, лёд, карамельный сироп",
                    Category = DrinkCategory.Cold,
                    ImageUrl = "images/ice-latte.jpg",
                    Sizes = new List<DrinkSize>
                    {
                        new() {
                            SizeName = "Стандарт",
                            Price = 4.95m,
                            VolumeMl = 400,
                            Nutrition = new() { Calories = 280, Proteins = 7, Fats = 9, Carbohydrates = 42 }
                        }
                    }
                }
            };
        }
    }
}
