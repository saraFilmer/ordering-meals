using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface InterfaceBll_Login<T> : IBLL.InterfaceBll_Basic<T>
    {
        public Task<T> login(string Name, string Amail);

    }
}
