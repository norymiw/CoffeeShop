using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoffeeShop.Api.DataBase.Entities
{
    [Table("COFFEE_SHOP")]
    public class Market
    {
        [Key, Column("id")]
        public int Id { get; set; }

        [Column("name")]
        public string Name { get; set; }

        [Column("address")]
        public string Address { get; set; }

        [Column("working_hours")]
        public string Working_hours { get; set; }

        [Column("phone")]
        public string Phone { get; set; }


    }
}
