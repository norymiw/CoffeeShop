using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoffeeShop.Api.DataBase.Entities
{
    [Table("DELIVERY_ADDRESS")]
    public class DeliveryAddress
    {
        [Key, Column("id")]
        public int Id { get; set; }

        [Column("user_id")]
        public int UserId { get; set; }

        [Column("address")]
        public string Address { get; set; }

        [Column("is_default")]
        public bool IsDefault { get; set; }
    }
}
