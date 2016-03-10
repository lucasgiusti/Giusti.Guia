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
    public class LogBusiness : BusinessBase
    {
        public IList<Log> RetornaLogs()
        {
            LimpaValidacao();
            IList<Log> RetornoAcao = new List<Log>();
            if (IsValid())
            {
                using (LogData data = new LogData())
                {
                    RetornoAcao = data.RetornaLogs();
                }
            }

            return RetornoAcao;
        }
        public bool ExisteLog_UsuarioId(int id)
        {
            LimpaValidacao();
            bool RetornoAcao = false;
            if (IsValid())
            {
                using (LogData data = new LogData())
                {
                    RetornoAcao = data.ExisteLog_UsuarioId(id);
                }
            }

            return RetornoAcao;
        }

        public void SalvaLog(Log itemGravar)
        {
            ValidateService(itemGravar);
            ValidaRegrasNegocioLog(itemGravar);
            if (IsValid())
            {
                using (LogData data = new LogData())
                {
                    data.SalvaLog(itemGravar);
                }
            }
        }

        private void ValidaRegrasNegocioLog(Log itemGravar)
        {
        }
    }
}
