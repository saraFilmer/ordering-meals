using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ProjectAngular.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BuyController : ControllerBase
    {

        IBLL.InterfaceBll_Basic<DTO.Dto_Buy> b;
        public BuyController(IBLL.InterfaceBll_Basic<DTO.Dto_Buy> buy)
        {
            this.b= buy;
        }
        [HttpGet]
        public async Task<List<DTO.Dto_Buy>> GetAsync()
        {
            return await b.SelectAll();
        }
        [HttpPost]

        public async Task<DTO.Dto_Buy> PostAsync(DTO.Dto_Buy buy)
        {
          var x= await b.Add(buy);
            return x;
        }

        [HttpDelete]
        public async Task<bool> Del(DTO.Dto_Buy buy)
        {
            return await b.Del(buy);
        }
        [HttpPut]
        public async Task<DTO.Dto_Buy> Put(DTO.Dto_Buy buy)
        {
            return await b.Put(buy);
        }

}
}
