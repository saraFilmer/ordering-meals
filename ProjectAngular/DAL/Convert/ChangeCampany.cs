using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Convert
{
    internal class ChangeCampany
    {
        //להמיר אוביקט יחיד 
        public static DTO.Dto_Campany ToCampanyDto(Models.Company c)
        {
            DTO.Dto_Campany CNew = new DTO.Dto_Campany();
           CNew.NameCompany=c.NameCompany;
            CNew.Id=c.Id;
            return CNew;
        }
        //ממיר רשימה שלמה
        public static List<DTO.Dto_Campany> ToListCampanyDto(List<Models.Company> lc)
        {
            List<DTO.Dto_Campany> lnew = new List<DTO.Dto_Campany>();
            foreach (Models.Company c in lc)
            {
                lnew.Add(ToCampanyDto(c));
            }
            return lnew;
        }
        //ממיר אוביקט אחד בחזרה
        public static Models.Company ToCampany(DTO.Dto_Campany c)
        {
            Models.Company CNew = new Models.Company();
           CNew.NameCompany = c.NameCompany;
            CNew.Id = c.Id;
            return CNew;
        }

    }
}
