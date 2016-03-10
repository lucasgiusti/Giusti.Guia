using System.Data.Entity.ModelConfiguration;
using Giusti.Guia.Model;

namespace Giusti.Guia.Data.Configuration
{
    public partial class MotelQuartoImagemConfiguration : EntityTypeConfiguration<MotelQuartoImagem>
    {
        public MotelQuartoImagemConfiguration()
        {
            string Schema = System.Configuration.ConfigurationManager.AppSettings["Schema"];
            if (string.IsNullOrEmpty(Schema))

                this.ToTable("MotelQuartoImagem");
            else
                this.ToTable("MotelQuartoImagem", Schema);
            this.HasKey(i => new { i.Id });
            this.Property(i => i.Id).HasColumnName("Id");
            this.Property(i => i.MotelQuartoId).HasColumnName("MotelQuartoId");
            this.Property(i => i.Imagem).HasColumnName("Imagem");
        }
    }
}
