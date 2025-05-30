using CoffeeShop.Api.Dto;

namespace CoffeeShop.Api.Services
{
    public interface IUserService
    {
        Task<UserDto> CreateAsync(UserDto userDto, CancellationToken cancellationToken);
        Task DeleteAsync(int id, CancellationToken cancellationToken);
        Task<List<UserDto>> GetUserList(CancellationToken cancellationToken);
    }
}