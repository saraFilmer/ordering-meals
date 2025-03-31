using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{//לסינון 
    public interface InterfaceDal_Details<T> : IDAL.InterfaceDal_Basic<T>
    {
        public  Task< List<T>> AddList(List<T> t);
    }
}