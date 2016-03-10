using System;
using System.Collections.Generic;
using System.Web.Http;
using System.IO;
using Giusti.Guia.Web.Library;
using System.Net.Http;
using System.Net;
using Giusti.Guia.Model;
using Giusti.Guia.Model.Dominio;
using System.Web;
using Giusti.Guia.Business;

namespace Giusti.Guia.Web.Controllers.Api
{
    /// <summary>
    /// Motel
    /// </summary>
    public class MotelController : ApiBase
    {
        MotelBusiness biz = new MotelBusiness();

        /// <summary>
        /// Retorna todos os motéis
        /// </summary>
        /// <returns></returns>
        public List<Motel> Get()
        {
            List<Motel> ResultadoBusca = new List<Motel>();
            try
            {
                //API
                ResultadoBusca = new List<Motel>(biz.RetornaMoteis());

                if (!biz.IsValid())
                    throw new InvalidDataException();
            }
            catch (InvalidDataException)
            {
                GeraErro(HttpStatusCode.InternalServerError, biz.serviceResult);
            }
            catch (UnauthorizedAccessException)
            {
                GeraErro(HttpStatusCode.Unauthorized, biz.serviceResult);
            }
            catch (Exception ex)
            {
                GeraErro(HttpStatusCode.BadRequest, ex);
            }

            return ResultadoBusca;
        }
    }
}