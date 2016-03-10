using System.Data.Entity.ModelConfiguration;
using Giusti.Guia.Model;

namespace Giusti.Guia.Data.Configuration
{
    public partial class MotelQuartoConfiguration : EntityTypeConfiguration<MotelQuarto>
    {
        public MotelQuartoConfiguration()
        {
            string Schema = System.Configuration.ConfigurationManager.AppSettings["Schema"];
            if (string.IsNullOrEmpty(Schema))

                this.ToTable("MotelQuarto");
            else
                this.ToTable("MotelQuarto", Schema);
            this.HasKey(i => new { i.Id });
            this.Property(i => i.Id).HasColumnName("Id");
            this.Property(i => i.MotelId).HasColumnName("MotelId");
            this.Property(i => i.Nome).HasColumnName("Nome");
        }
    }
}
