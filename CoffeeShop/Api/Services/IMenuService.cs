using CoffeeShop.Api.Dto;

public interface IMenuService
{
    Task<MenuDto> CreateAsync(MenuDto menuDto, CancellationToken cancellationToken);
    Task DeleteAsync(int id, CancellationToken cancellationToken);
    Task<List<MenuDto>> GetMenuList(CancellationToken cancellationToken);
    Task<List<MenuDto>> GetCategoryList(string category, CancellationToken cancellationToken);
}