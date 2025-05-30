using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoffeeShop.Api.DataBase.Entities
{
    [Table("USER")]
    public class User
    {
        [Key, Column("id")]
        public int Id { get; set; }

        [Column("name")]
        public string Name { get; set; }

        [Column("email")]
        public string Email { get; set; }

        [Column("password_hash")]
        public string PasswordHash { get; set; }

        [Column("phone")]
        public string Phone { get; set; }

        [Column("created_at")]
        public DateTime CreatedAt { get; set; }

        public List<Order> Orders { get; set; } = new();
    }
}
