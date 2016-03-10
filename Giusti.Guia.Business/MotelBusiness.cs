using System.Collections.Generic;
using System.Linq;
using Giusti.Guia.Model.Results;
using Giusti.Guia.Business.Library;
using Giusti.Guia.Data;
using Giusti.Guia.Model;
using System;
using Giusti.Guia.Model.Dominio;
using System.Web.Security;

namespace Giusti.Guia.Business
{
    public class MotelBusiness : BusinessBase
    {
        public IList<Motel> RetornaMoteis()
        {
            LimpaValidacao();
            IList<Motel> RetornoAcao = new List<Motel>();
            if (IsValid())
            {
                using (MotelData data = new MotelData())
                {
                    RetornoAcao = data.RetornaMoteis();
                }
            }

            return RetornoAcao;
        }
    }
}
