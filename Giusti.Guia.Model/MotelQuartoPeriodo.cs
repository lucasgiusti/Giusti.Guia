using Microsoft.Practices.EnterpriseLibrary.Validation.Validators;
using System;
using System.Collections.Generic;

namespace Giusti.Guia.Model
{
    [HasSelfValidation()]
    public class MotelQuartoPeriodo
    {
        public MotelQuartoPeriodo()
        {

        }

        public int? Id { get; set; }
        public int? MotelQuartoId { get; set; }
        public string Descricao { get; set; }
        public Usuario Clone()
        {
            return (Usuario)this.MemberwiseClone();
        }
    }
}
