using Microsoft.Practices.EnterpriseLibrary.Validation.Validators;
using System;
using System.Collections.Generic;

namespace Giusti.Guia.Model
{
    [HasSelfValidation()]
    public class MotelQuarto
    {
        public MotelQuarto()
        {
            MotelQuartoPeriodos = new List<MotelQuartoPeriodo>();
            MotelQuartoImagens = new List<MotelQuartoImagem>();
        }

        public int? Id { get; set; }
        public int? MotelId { get; set; }
        public string Nome { get; set; }
        public List<MotelQuartoPeriodo> MotelQuartoPeriodos { get; set; }
        public List<MotelQuartoImagem> MotelQuartoImagens { get; set; }
        public Usuario Clone()
        {
            return (Usuario)this.MemberwiseClone();
        }
    }
}
