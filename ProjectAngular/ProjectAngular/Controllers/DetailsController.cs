using DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;

namespace ProjectAngular.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DetailsController : ControllerBase
    {

        IBLL.InterfaceBll_SumPrice<DTO.Dto_DetailsBuy> p;
        public DetailsController(IBLL.InterfaceBll_SumPrice<DTO.Dto_DetailsBuy>p)
        {
            this.p = p;
        }
        [HttpGet]
        public async Task<List<DTO.Dto_DetailsBuy>> GetAsync()
        {
            return await p.SelectAll();
        }


        //[HttpPost]
        //public async Task<DTO.Dto_DetailsBuy> PostAsync(DTO.Dto_DetailsBuy details)
        //{
        //    await p.Add(details);
        //    return details;
        //}
        [HttpPost]

        public async Task<DTO.Dto_DetailsBuy> PostAsync(DTO.Dto_DetailsBuy buy)
        {
            var x = await p.Add(buy);
            return x;
        }

        [HttpDelete]
        public async Task<bool> Del(DTO.Dto_DetailsBuy details)
        {
            return await p.Del(details);
        }
        [HttpPatch]
        public async Task<DTO.Dto_DetailsBuy> Put(DTO.Dto_DetailsBuy details)
        {
            return await p.Put(details);
        }

        [HttpPost("SumPrice")]

        public async Task<double> sum(List<DTO.Dto_DetailsBuy> details)
        {
            return await p.sum(details);
        }

        //}
        [HttpPost("AddList")]
        public async Task<List<DTO.Dto_DetailsBuy>> AddList(List<DTO.Dto_DetailsBuy> dl)
        {
            var x = await p.AddList(dl);
            return x;
        }
    }
}
