using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface InterfaceBll_Details<T> : IBLL.InterfaceBll_Basic<DTO.Dto_DetailsBuy>
{
        public Task<List<T>> AddList(List<T> t);
    }

}
