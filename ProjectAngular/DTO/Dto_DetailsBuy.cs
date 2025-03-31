using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Dto_DetailsBuy
    {
        public int Id { get; set; }

        public int IdBuy { get; set; }
         public int Idproduct { get; set; }
        
        public int CountBuy { get; set; }
        
        //שדה חדש שהוספנו
        public string NameProduct { get; set; }
        public int PriceProduct { get; set; }
        public string? DescriptionProduct { get; set; }

     

    }
}
