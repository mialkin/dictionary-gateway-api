using System;
using Microsoft.AspNetCore.Mvc;

namespace Dictionary.Gateway.Api.Controllers;

[ApiController]
[Route("[controller]")]
public class AuthController : ControllerBase
{
    [HttpPost("log-in")]
    public IActionResult LogIn()
    {
        return Ok("You are logged in now " + DateTime.UtcNow);
    }
}
