using Microsoft.Practices.EnterpriseLibrary.Validation.Validators;
using System;
using System.Collections.Generic;

namespace Giusti.Guia.Model
{
    [HasSelfValidation()]
    public class Motel
    {
        public Motel()
        {
            MotelQuartos = new List<MotelQuarto>();
        }

        public int? Id { get; set; }
        public string Nome { get; set; }
        public string Regiao { get; set; }
        public string Logo { get; set; }
        public string Endereco { get; set; }
        public List<MotelQuarto> MotelQuartos { get; set; }
        public Usuario Clone()
        {
            return (Usuario)this.MemberwiseClone();
        }
    }
}
