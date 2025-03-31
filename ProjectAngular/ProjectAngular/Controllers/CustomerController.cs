using DAL.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ProjectAngular.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {

        IBLL.InterfaceBll_Login<DTO.Dto_Customer> c;
        public CustomerController(IBLL.InterfaceBll_Login<DTO.Dto_Customer>customer)
        {
            this.c =customer;
        }
        [HttpGet]
        public async Task<List<DTO.Dto_Customer>> GetAsync()
        {
            return await c.SelectAll();
        }
        [HttpPost]
        public async Task<DTO.Dto_Customer> PostAsync(DTO.Dto_Customer customer)
        {
            var x = await c.Add(customer);
            return x;

        }
        [HttpDelete]
        public async Task<bool> Del(DTO.Dto_Customer customer)
        {
            return await c.Del(customer);
        }
        [HttpPatch]
        public async Task<DTO.Dto_Customer> Put(DTO.Dto_Customer customer)
        {
            return await c.Put(customer);
        }
        [HttpGet("{Name}/{Amail}")]
        public async Task<DTO.Dto_Customer>login(string Name, string Amail)
        {
           return await c.login(Name, Amail);
        }
    }
}
