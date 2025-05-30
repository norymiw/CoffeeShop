using CoffeeShop.Api.DataBase;
using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.Dto;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Services
{
    public class UserService(AppDbContext dbContext) : IUserService
    {
        public async Task<List<UserDto>> GetUserList(CancellationToken cancellationToken)
        {
            var res = await dbContext.Users
                .Select(x => new UserDto { Id = x.Id, Name = x.Name, Email = x.Email, PasswordHash = x.PasswordHash, Phone = x.Phone, CreatedAt = x.CreatedAt })
                .ToListAsync(cancellationToken);
            return res;
        }

        public async Task<UserDto> CreateAsync(UserDto userDto, CancellationToken cancellationToken)
        {
            var user = new User
            {
                Id = userDto.Id,
                Name = userDto.Name,
                Email = userDto.Email,
                PasswordHash = userDto.PasswordHash,
                Phone = userDto.Phone,
                CreatedAt = userDto.CreatedAt
            };

            await dbContext.Users.AddAsync(user, cancellationToken);
            await dbContext.SaveChangesAsync(cancellationToken);

            return MapToDto(user);
        }

        public async Task DeleteAsync(int id, CancellationToken cancellationToken)
        {
            var user = await dbContext.Users.FindAsync([id], cancellationToken);
            if (user == null)
                throw new KeyNotFoundException($"OrderItem with id {id} not found");

            dbContext.Users.Remove(user);
            await dbContext.SaveChangesAsync(cancellationToken);
        }

        private static UserDto MapToDto(User user) => new()
        {
            Id = user.Id,
            Name = user.Name,
            Email = user.Email,
            PasswordHash = user.PasswordHash,
            Phone = user.Phone,
            CreatedAt = user.CreatedAt
        };
    }
}