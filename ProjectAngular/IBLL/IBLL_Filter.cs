using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface InterfaceBll_Filter<T> : IBLL.InterfaceBll_Basic<DTO.Dto_Product>
{
        //סינון לפי ערכים מסוימים (לא חובה שיזומנו כולם ) והחזרתם 
        Task<List<T>> FilterAsync(string? nameCategory, string?  nameCampany,  int? price);
}
   
}
