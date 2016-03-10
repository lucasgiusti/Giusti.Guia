using System;
using System.Data.Entity;
using Giusti.Guia.Model;
using Giusti.Guia.Data.Configuration;

namespace Giusti.Guia.Data
{
    public class EntityContext : DbContext, IDisposable
    {
        public EntityContext(string connectionName)
            : base(connectionName)
        {
            this.Configuration.AutoDetectChangesEnabled = true;
            this.Configuration.LazyLoadingEnabled = true;
            this.Configuration.ProxyCreationEnabled = true;
            this.Configuration.ValidateOnSaveEnabled = false;

        }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Log> Logs { get; set; }
        public DbSet<Email> Emails { get; set; }
        public DbSet<Funcionalidade> Funcionalidades { get; set; }
        public DbSet<Perfil> Perfis { get; set; }
        public DbSet<PerfilFuncionalidade> PerfilFuncionalidades { get; set; }
        public DbSet<PerfilUsuario> PerfilUsuarios { get; set; }
        public DbSet<Motel> Moteis { get; set; }
        public DbSet<MotelQuarto> MotelQuartos { get; set; }
        public DbSet<MotelQuartoPeriodo> MotelQuartoPeriodos { get; set; }
        public DbSet<MotelQuartoImagem> MotelQuartoImagens { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<EntityContext>(null);
            modelBuilder.Configurations.Add(new UsuarioConfiguration());
            modelBuilder.Configurations.Add(new LogConfiguration());
            modelBuilder.Configurations.Add(new EmailConfiguration());
            modelBuilder.Configurations.Add(new FuncionalidadeConfiguration());
            modelBuilder.Configurations.Add(new PerfilConfiguration());
            modelBuilder.Configurations.Add(new PerfilFuncionalidadeConfiguration());
            modelBuilder.Configurations.Add(new PerfilUsuarioConfiguration());
            modelBuilder.Configurations.Add(new MotelConfiguration());
            modelBuilder.Configurations.Add(new MotelQuartoConfiguration());
            modelBuilder.Configurations.Add(new MotelQuartoPeriodoConfiguration());
            modelBuilder.Configurations.Add(new MotelQuartoImagemConfiguration());
            base.OnModelCreating(modelBuilder);
        }
    }
}