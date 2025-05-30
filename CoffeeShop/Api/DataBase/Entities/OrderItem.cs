using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoffeeShop.Api.DataBase.Entities
{
    [Table("ORDER_ITEM")]
    public class OrderItem
    {
        [Key, Column("id")]
        public int Id { get; set; }

        [Column("order_id")]
        public int OrderId { get; set; }

        [Column("menu_item_id")]
        public int MenuItemId { get; set; }

        [Column("quantity")]
        public int Quantity { get; set; }

        [Column("item_price")]
        public decimal ItemPrice { get; set; }

        public Order Order { get; set; }
        public MenuItem MenuItem { get; set; }
    }
}
