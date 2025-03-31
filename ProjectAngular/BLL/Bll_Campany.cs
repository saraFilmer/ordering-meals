using DAL.Models;
using DAL;

namespace BLL
{
    public class Bll_Campany : IBLL.InterfaceBll_Basic<DTO.Dto_Campany>      
    {
        //הגדרת מאפין סטטי והכנסתו בבנאי
        IDAL.InterfaceDal_Basic<DTO.Dto_Campany> c;

        public Bll_Campany(IDAL.InterfaceDal_Basic<DTO.Dto_Campany> campany)
            {
                this.c = campany;
            }
            public async Task<List<DTO.Dto_Campany>> SelectAll()
            {
               
                return await c.SelectAll();
            }

        public async Task<DTO.Dto_Campany> Add(DTO.Dto_Campany campany)
        {
            return await c.Add(campany);
        }
        public async Task<bool> Del(DTO.Dto_Campany campany)
        {          
          return  await c.Del(campany);
           
        }
        public async Task<DTO.Dto_Campany> Put(DTO.Dto_Campany campany) { 
        return  await c.Put(campany);
        }
         
        }
    }

