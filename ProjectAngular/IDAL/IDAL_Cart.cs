using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{ //login
    public interface InterfaceCart<T> : IDAL.InterfaceDal_Basic<T>
    {
     
       public Task<T> cart(int sumPrice ,int id);
    }
}