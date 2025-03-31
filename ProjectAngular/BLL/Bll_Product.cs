
namespace BLL
{
    public class Bll_Product : IBLL.InterfaceBll_Filter<DTO.Dto_Product>

    {
        //הגדרת מאפין סטטי והכנסתו בבנאי
        IDAL.InterfaceDal_Filter<DTO.Dto_Product> p;
        
        public Bll_Product(IDAL.InterfaceDal_Filter<DTO.Dto_Product> product)
        {
            this.p = product;
        }
        public async Task<List<DTO.Dto_Product>> SelectAll()
        {
            return await p.SelectAll();
        }
        public async Task<DTO.Dto_Product> Add(DTO.Dto_Product product)
        {
            return await p.Add(product);
        }
        public async Task<bool> Del(DTO.Dto_Product product)
        {
            return await p.Del(product);

        }
        public async Task<DTO.Dto_Product> Put(DTO.Dto_Product product)
        {
            return await p.Put(product);
        }

        public async Task<List<DTO.Dto_Product>> FilterAsync(string? nameCategory, string? nameCampany, int? price)
        { 
            return await p.FilterAsync(nameCategory, nameCampany, price);
        }

    }
}

