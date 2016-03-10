using System.Data.Entity.ModelConfiguration;
using Giusti.Guia.Model;

namespace Giusti.Guia.Data.Configuration
{
    public partial class MotelQuartoPeriodoConfiguration : EntityTypeConfiguration<MotelQuartoPeriodo>
    {
        public MotelQuartoPeriodoConfiguration()
        {
            string Schema = System.Configuration.ConfigurationManager.AppSettings["Schema"];
            if (string.IsNullOrEmpty(Schema))

                this.ToTable("MotelQuartoPeriodo");
            else
                this.ToTable("MotelQuartoPeriodo", Schema);
            this.HasKey(i => new { i.Id });
            this.Property(i => i.Id).HasColumnName("Id");
            this.Property(i => i.MotelQuartoId).HasColumnName("MotelQuartoId");
            this.Property(i => i.Descricao).HasColumnName("Descricao");
        }
    }
}
