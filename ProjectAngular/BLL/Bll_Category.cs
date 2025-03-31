using System;

namespace BLL
{
    public class Bll_Category : IBLL.InterfaceBll_Basic<DTO.Dto_Category>
       
    {
        //הגדרת מאפין סטטי והכנסתו בבנאי
        IDAL.InterfaceDal_Basic<DTO.Dto_Category> c;

        public Bll_Category(IDAL.InterfaceDal_Basic<DTO.Dto_Category> category)
            {
                this.c = category;
            }
            public async Task<List<DTO.Dto_Category>> SelectAll()
            {
                return await c.SelectAll();
        }
            public async Task<DTO.Dto_Category> Add(DTO.Dto_Category category)
            {
                return await c.Add(category);
            }
        public async Task<bool> Del(DTO.Dto_Category category)
        {          
          return  await c.Del(category);
           
        }
        public async Task<DTO.Dto_Category> Put(DTO.Dto_Category category) { 
        return  await c.Put(category);
        }
         
        }
    }

