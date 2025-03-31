using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ProjectAngular.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {

        IBLL.InterfaceBll_Basic<DTO.Dto_Category> c;
        public CategoryController(IBLL.InterfaceBll_Basic<DTO.Dto_Category> category)
        {
            this.c = category;
        }
        [HttpGet]
        public async Task<List<DTO.Dto_Category>> GetAsync()
        {
            return await c.SelectAll();
        }
        [HttpPost]
        public async Task<DTO.Dto_Category> PostAsync(DTO.Dto_Category category)
        {
           //מחזיר את האוביקט לאחר העדכון
             await  c.Add(category);
            return category;
        }
        [HttpDelete]
        public async Task<bool> Del(DTO.Dto_Category category)
        {
            return await c.Del(category);
        }
        [HttpPatch]
        public async Task<DTO.Dto_Category> Put(DTO.Dto_Category category)
        {
            return await c.Put(category);
        }

    }
}
