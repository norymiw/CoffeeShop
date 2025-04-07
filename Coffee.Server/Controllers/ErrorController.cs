using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Coffee.Server.Controllers
{
    [ApiController]
    public class ErrorController : ControllerBase
    {
        [Route("/error/{code}")]
        public IActionResult Error(int code) => Problem(statusCode: code);
    }
}
