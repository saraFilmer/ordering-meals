using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface InterfaceBll_SumPrice<T> : IBLL.InterfaceBll_Details<DTO.Dto_DetailsBuy>
{
        public Task<double> sum(List<T> t);
    }

}
