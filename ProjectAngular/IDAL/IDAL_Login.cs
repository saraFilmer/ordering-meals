using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{ //login
    public interface Interface_Login<T> : IDAL.InterfaceDal_Basic<T>
    {
       public Task<T> login(string Name,string Amail);
    }
}