using System.Collections.Generic;
using System.Linq;
using System.Data;
using Giusti.Guia.Model;
using Giusti.Guia.Data.Library;

namespace Giusti.Guia.Data
{
    public class MotelData : DataBase
    {
        public IList<Motel> RetornaMoteis()
        {
            IQueryable<Motel> query = Context.Moteis.Include("MotelQuartos").Include("MotelQuartos.MotelQuartoPeriodos").Include("MotelQuartos.MotelQuartoImagens");

            return query.ToList();
        }
    }
}
