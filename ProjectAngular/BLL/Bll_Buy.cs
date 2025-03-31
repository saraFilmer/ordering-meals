namespace BLL
{
    public class Bll_Buy : IBLL.InterfaceBll_Basic<DTO.Dto_Buy>
    {
        //הגדרת מאפין סטטי והכנסתו בבנאי
        IDAL.InterfaceDal_Basic<DTO.Dto_Buy> p;

        public Bll_Buy(IDAL.InterfaceDal_Basic<DTO.Dto_Buy> p)
        {
            this.p = p;
        }
        public async Task<List<DTO.Dto_Buy>> SelectAll()
        {
            return await p.SelectAll();
        }
        public async Task<DTO.Dto_Buy> Add(DTO.Dto_Buy product)
        {
            // Id -identity מחזיר את האוביקט לאחר ההוספה-עם 
            var x = await p.Add(product);
            return x;

        }
        public async Task<bool> Del(DTO.Dto_Buy product)
        {
            return await p.Del(product);

        }
        public async Task<DTO.Dto_Buy> Put(DTO.Dto_Buy product)
        {
            return await p.Put(product);
        }       
    
    }
}

