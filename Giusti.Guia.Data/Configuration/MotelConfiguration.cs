using System.Data.Entity.ModelConfiguration;
using Giusti.Guia.Model;

namespace Giusti.Guia.Data.Configuration
{
    public partial class MotelConfiguration : EntityTypeConfiguration<Motel>
    {
        public MotelConfiguration()
        {
            string Schema = System.Configuration.ConfigurationManager.AppSettings["Schema"];
            if (string.IsNullOrEmpty(Schema))

                this.ToTable("Motel");
            else
                this.ToTable("Motel", Schema);
            this.HasKey(i => new { i.Id });
            this.Property(i => i.Id).HasColumnName("Id");
            this.Property(i => i.Nome).HasColumnName("Nome");
            this.Property(i => i.Regiao).HasColumnName("Regiao");
            this.Property(i => i.Logo).HasColumnName("Logo");
            this.Property(i => i.Endereco).HasColumnName("Endereco");
            this.HasMany(i => i.MotelQuartos).WithRequired().HasForeignKey(d => d.MotelId);
        }
    }
}
