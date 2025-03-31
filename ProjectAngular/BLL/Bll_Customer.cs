using DAL.Models;

namespace BLL
{
    public class Bll_Customer :IBLL.InterfaceBll_Login<DTO.Dto_Customer>

    {
        //הגדרת מאפין סטטי והכנסתו בבנאי
        IDAL.Interface_Login<DTO.Dto_Customer> c;

        public Bll_Customer(IDAL.Interface_Login<DTO.Dto_Customer> customer)
            {
                this.c = customer;
            }
            public async Task<List<DTO.Dto_Customer>> SelectAll()
            {
                return await c.SelectAll();
            }
            public async Task<DTO.Dto_Customer> Add(DTO.Dto_Customer customer)
            {// Id -identity מחזיר את האוביקט לאחר ההוספה-עם 
               var x= await c.Add(customer);
            return x;
            }
        public async Task<bool> Del(DTO.Dto_Customer customer)
        {          
          return  await c.Del(customer);
           
        }
        public async Task<DTO.Dto_Customer> Put(DTO.Dto_Customer customer) { 
        return  await c.Put(customer);
        }

        public async Task<DTO.Dto_Customer> login(string Name, string Amail)
        {
            return await c.login(Name, Amail);
        }

    }
    }

