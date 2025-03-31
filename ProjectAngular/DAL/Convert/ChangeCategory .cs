using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Convert
{
    internal class ChangeCategory
    {
        //להמיר אוביקט יחיד 
        public static DTO.Dto_Category ToCategoryDto(Models.Category c)
        {
            DTO.Dto_Category CNew = new DTO.Dto_Category();
           CNew.NameCategory=c.NameCategory;
            CNew.Id=c.Id;
            return CNew;
        }
        //ממיר רשימה שלמה
        public static List<DTO.Dto_Category> ToListCategoryDto(List<Models.Category> lc)
        {
            List<DTO.Dto_Category> lnew = new List<DTO.Dto_Category>();
            foreach (Models.Category c in lc)
            {
                lnew.Add(ToCategoryDto(c));
            }
            return lnew;
        }
        //ממיר אוביקט אחד בחזרה
        public static Models.Category ToCategory(DTO.Dto_Category c)
        {
            Models.Category CNew = new Models.Category();
           CNew.NameCategory = c.NameCategory;
            CNew.Id = c.Id;
            return CNew;
        }

    }
}
