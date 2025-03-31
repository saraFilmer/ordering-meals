using DAL.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ProjectAngular.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CampanyController : ControllerBase
    {

        IBLL.InterfaceBll_Basic<DTO.Dto_Campany> c;
        public CampanyController(IBLL.InterfaceBll_Basic<DTO.Dto_Campany> campany)
        {
            this.c = campany;
        }
        [HttpGet]
        public async Task<List<DTO.Dto_Campany>> GetAsync()
        {
            return await c.SelectAll();
        }

        [HttpPost]
            public async Task<DTO.Dto_Campany> Post(DTO.Dto_Campany campany)
        {
             await c.Add(campany);
            return campany;
        }
        [HttpDelete]
        public async Task<bool> Del(DTO.Dto_Campany campany)
        {
            return await c.Del(campany);
        }
    
        [HttpPatch]
        public async Task<DTO.Dto_Campany> Put(DTO.Dto_Campany campany)
        {
            return await c.Put(campany);
        }

    }
}
