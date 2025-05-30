using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoffeeShop.Api.DataBase.Entities
{
    [Table("MENU_ITEM")]
    public class MenuItem
    {
        [Key, Column("id")]
        public int Id { get; set; }

        [Column("name")]
        public string Name { get; set; }

        [Column("description")]
        public string Description { get; set; }

        [Column("price")]
        public decimal Price { get; set; }

        [Column("category")]
        public string Category { get; set; }

        [Column("calories")]
        public int Calories { get; set; }
    }
}
