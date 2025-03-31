using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using static System.Runtime.InteropServices.JavaScript.JSType;
using System;

namespace ProjectAngular.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        IBLL.InterfaceBll_Filter<DTO.Dto_Product> p;
        public ProductController(IBLL.InterfaceBll_Filter<DTO.Dto_Product> p)
        {
            this.p = p;
        }
        [HttpGet]
        public async Task<List<DTO.Dto_Product>> GetAsync()
        {
            return await p.SelectAll();
        }
        [HttpPost]
        public async Task<DTO.Dto_Product> PostAsync(DTO.Dto_Product product)
        {
            await p.Add(product);
            return product;
        }
        [HttpDelete]
        public async Task<bool> Del(DTO.Dto_Product Product)
        {
            return await p.Del(Product);
        }
        [HttpPut]
        public async Task<DTO.Dto_Product>Put(DTO.Dto_Product Product)
        {
            return await p.Put(Product);
        }
        [HttpGet("filter")]
        public async Task<List<DTO.Dto_Product>> FilterAsync(string? nameCategory, string? nameCampany,int? price)
        {
            return await p.FilterAsync(nameCategory,nameCampany,price);

        }

    }
}
