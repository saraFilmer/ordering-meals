using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{//לסינון 
    public interface InterfaceDal_Filter<T> : IDAL.InterfaceDal_Basic<T>
    {
        Task<List<T>> FilterAsync(string? nameCategory,string? nameCampany,  int? price);
    }
}