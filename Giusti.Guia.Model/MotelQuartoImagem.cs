using Microsoft.Practices.EnterpriseLibrary.Validation.Validators;
using System;
using System.Collections.Generic;

namespace Giusti.Guia.Model
{
    [HasSelfValidation()]
    public class MotelQuartoImagem
    {
        public MotelQuartoImagem()
        {

        }

        public int? Id { get; set; }
        public int? MotelQuartoId { get; set; }
        public string Imagem { get; set; }
        public Usuario Clone()
        {
            return (Usuario)this.MemberwiseClone();
        }
    }
}
